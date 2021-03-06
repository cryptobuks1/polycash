<?php
require_once(dirname(dirname(__FILE__))."/includes/connect.php");

$allowed_params = ['game_id','block_id'];
$app->safe_merge_argv_to_request($argv, $allowed_params);

if ($app->running_as_admin()) {
	$game_id = (int)$_REQUEST['game_id'];
	$db_game = $app->fetch_game_by_id($game_id);
	$blockchain = new Blockchain($app, $db_game['blockchain_id']);
	$game = new Game($blockchain, $db_game['game_id']);
	
	if ($game) {
		if ($_REQUEST['block_id'] > 0) {
			$block_id = (int)$_REQUEST['block_id'];
			$process_lock_name = "load_game";
			
			echo "Waiting for game loading script to finish";
			do {
				echo ". ";
				$app->flush_buffers();
				sleep(1);
				$process_locked = $app->check_process_running($process_lock_name);
			}
			while ($process_locked);
			
			echo "now resetting the game<br/>\n";
			$app->flush_buffers();
			
			$app->set_site_constant($process_lock_name, getmypid());
			$game->reset_blocks_from_block($block_id);
			
			if (!empty($game->db_game['module'])) {
				$db_reset_event = $app->run_query("SELECT * FROM events WHERE game_id=:game_id AND event_starting_block <= :block_id ORDER BY event_index DESC LIMIT 1;", [
					'game_id' => $game->db_game['game_id'],
					'block_id' => $block_id
				])->fetch();
				
				if ($db_reset_event) {
					$game->reset_events_from_index($db_reset_event['event_index']);
				}
			}
			
			echo $game->db_game['name']." has been reset from block ".$block_id."\n";
			$app->set_site_constant($process_lock_name, 0);
		}
		else echo "Invalid block supplied.\n";
	}
	else echo "Failed to load game #".$game_id."\n";
}
else echo "You need admin privileges to run this script.\n";
?>