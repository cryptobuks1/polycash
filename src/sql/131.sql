ALTER TABLE `images` ADD `image_identifier` VARCHAR(64) NULL DEFAULT NULL AFTER `height`;
ALTER TABLE `images` ADD UNIQUE (`image_identifier`);
ALTER TABLE `events` CHANGE `event_payout_offset_time` `event_payout_time` DATETIME NULL DEFAULT NULL;
ALTER TABLE `game_defined_events` CHANGE `event_payout_offset_time` `event_payout_time` DATETIME NULL DEFAULT NULL;
UPDATE game_defined_events SET event_payout_time=event_final_time WHERE event_payout_time IS NULL;
UPDATE events SET event_payout_time=event_final_time WHERE event_payout_time IS NULL;

UPDATE images SET image_identifier='92f7182599065abae3d6ce50d44dd844b659b05f4f57c76350f0ab79e84cfd08' WHERE image_id=1;
UPDATE images SET image_identifier='7635d37492b2e09bafdec1f2b20a3d7c742a25cbc8dcb7e2d51160e91296ca1a' WHERE image_id=2;
UPDATE images SET image_identifier='17f9fbfe1de7df896199cb8fdb49865de2b332963a9515eefe03b421aa16d075' WHERE image_id=3;
UPDATE images SET image_identifier='aeb0ef73bb5d59b88a7e821285c5d4d020e7706e32fcb87101b5076d4afce18d' WHERE image_id=4;
UPDATE images SET image_identifier='ac1d4113f721c549a9e72237cdbb8dfa5145644f936c001f4a65c4cb381f1c8a' WHERE image_id=5;
UPDATE images SET image_identifier='5e6b1d60315d05bec8a5e3c22cbe4ebb7f86c4479034dfcc936ce6f7cf3fa05b' WHERE image_id=6;
UPDATE images SET image_identifier='e2ddb40303992da5bd31c659ba03ffd65a6f80b044f68764729a5415f9e7d7ee' WHERE image_id=7;
UPDATE images SET image_identifier='acca0ccea40dba06c5ebc09e596a2a92a5f991e93975fd516e920d049957b69c' WHERE image_id=8;
UPDATE images SET image_identifier='62e36f1a95acd4326b93eccacf41892eee5c9d1d163d22bbdc7b5cf36bf385eb' WHERE image_id=9;
UPDATE images SET image_identifier='ab4d9fc85add936b1dbf0c4df11404d533de3fca7b81129b60a9205639d2c6fb' WHERE image_id=10;
UPDATE images SET image_identifier='2d069a9528453c97da3e3b7da6c6eca06d2e5f6b8d33c204b2bbd28829eac1eb' WHERE image_id=11;
UPDATE images SET image_identifier='bee917f453a475442bbc54561da95b50b9e9befb3c54eb2991741a50f40ca81c' WHERE image_id=12;
UPDATE images SET image_identifier='f1a65324a9d092e88c4b5127e005407a4bd4b0480d6b6a71b44c3e247008ed6f' WHERE image_id=13;
UPDATE images SET image_identifier='10cacf656b06797c2d7aea18e8e2190d478d020886e4118aa7be0a0c1582bfd3' WHERE image_id=14;
UPDATE images SET image_identifier='b0910795bf63b71ac3a8ba60e6077613b7bb88ecb3f2af21c4e7b99f5e12d664' WHERE image_id=15;
UPDATE images SET image_identifier='31faf33cb526763f8ff387d876317c7b56a81122a94587fcc1221aaf5bf5b8c2' WHERE image_id=16;
UPDATE images SET image_identifier='d62842cbb7cd2c2ad47405457c87bd18806fc28e48d6bdad570f6b5f06ffa2d4' WHERE image_id=17;
UPDATE images SET image_identifier='efdba7b533d2bbb8b40eacf38d82f46b2b92a62ad6f9d0755fb17a6513efab59' WHERE image_id=18;
UPDATE images SET image_identifier='98acebb319b2040a3507079147d16a695b551f71929241cb65c03d31966b21b2' WHERE image_id=19;
UPDATE images SET image_identifier='74bb56d1df60fd3cdfdd2e1af4c6be9c3014bd63ea01c9f82f2067590c932975' WHERE image_id=20;
UPDATE images SET image_identifier='f7435c14a7a9308c55036d9b8bac94e30bde44453310ce7d062403e171b43d07' WHERE image_id=21;
UPDATE images SET image_identifier='a1ebac4ad269aa75c05c83830d420be988c2d34cc97390b0b46936ca09046758' WHERE image_id=22;
UPDATE images SET image_identifier='f35916e3d00a3edd04a2c736dee418c0289475858ba448843c79b6c649d98a03' WHERE image_id=23;
UPDATE images SET image_identifier='e29c020001e0d33c1409bde277a3a2574fa1e6bd02dc1393b446bea3a63d16c7' WHERE image_id=24;
UPDATE images SET image_identifier='98d0d0d79917d03e2c01fcacf150bac1117f6ca31f5c9d39f4bbcb0ad7ed5066' WHERE image_id=25;
UPDATE images SET image_identifier='e27c2da61f8ded03d02cd3b3f22816b897c5742ce2cae2a540b15d4becabeeff' WHERE image_id=26;
UPDATE images SET image_identifier='45410d05c1df1b0c474254446d15ca56bb6d3ed00a51a42753ac90bebecbfe11' WHERE image_id=27;
UPDATE images SET image_identifier='36d85e26a0cc4d77a83864f00682754318e08e87561d78580224fc822f4ddab5' WHERE image_id=28;
UPDATE images SET image_identifier='e1de8e32310715836f6774f2714595f4df24aedef689a288f837ce2aaf68eb85' WHERE image_id=29;
UPDATE images SET image_identifier='bd5d7fa5a5a72bd165a0f97ad4a17a220a22141e1bc48d57902938c3761c4cee' WHERE image_id=30;
UPDATE images SET image_identifier='9fc2f7124d524b87d8bf47e6a110ef984caafc5d885c640c5a78f654ec70e3a3' WHERE image_id=31;
UPDATE images SET image_identifier='1d1e2a16e37fb122085b2a4292677fa0dc10c7d8c2a04722b2801bb4dfd636fb' WHERE image_id=32;
UPDATE images SET image_identifier='7c5ddc7d853f212fc0c1699b2a7d5ee95a1e57947c7d6eb32c11412d200e5677' WHERE image_id=33;
UPDATE images SET image_identifier='f8d471c33242aeb559b16ca24ca7a57cdfc3859f659e08c5097e136d15ae8d28' WHERE image_id=34;
UPDATE images SET image_identifier='ce271869e6f41179a5db12e4f978dae4bd98c9d88a5d4434511a35ff6bdf6413' WHERE image_id=35;
UPDATE images SET image_identifier='26507f733bd854b4c4824e61abdc7c4483055762b6ad561bb1f78751440a3ca7' WHERE image_id=36;
UPDATE images SET image_identifier='30a598ad048556e5cb07a6e432cb35f482cc0388c13c43ccde5e193541adf38e' WHERE image_id=37;
UPDATE images SET image_identifier='048800bbfbc5cda7ffdffd7bd49828d4e9e52cd0895f2bf1aaed42cbdc7e2d73' WHERE image_id=38;
UPDATE images SET image_identifier='de821456b108c020dcb11ec7160108bbd583245642267e2aec5c6a4831df2fed' WHERE image_id=39;
UPDATE images SET image_identifier='35267663f551a346fa67edf1426108faf0bfcce9b16a952a6fd148c00084e25c' WHERE image_id=40;
UPDATE images SET image_identifier='6e872978fa26140400ba8778a88932159b2c4370d965bd44bd67fa1654c8319b' WHERE image_id=41;
UPDATE images SET image_identifier='b71002a06ce3ebf9be4bbdf995850473302debbe35a8f1df0d16e3eeb2d59fc6' WHERE image_id=42;
UPDATE images SET image_identifier='5c44533f46ce65540915c9199eb9201bb75b15a85e7c4933058831a69c7a0d93' WHERE image_id=43;
UPDATE images SET image_identifier='2e2a31fe7a912a8c644fd010bcc09e2c259a3b9a32c127d8bae57d2bc7eaa45a' WHERE image_id=44;
UPDATE images SET image_identifier='3580c46acc4045b8e7346d09a1b7fa070cde980dadacd413145659c0ce989b4e' WHERE image_id=45;
UPDATE images SET image_identifier='8f84cf0e2c413065fdefab873e1de54edbfdbb824b8709068b3cafcb98954126' WHERE image_id=46;
UPDATE images SET image_identifier='db0314671fc1b28a27d840184c68d108bf10902fd96f26f57461c4e94d62bb19' WHERE image_id=47;
UPDATE images SET image_identifier='96a7fd766c27eff86f482299906df6d95ce17820e7533303b36dfd70e17706aa' WHERE image_id=48;
UPDATE images SET image_identifier='f0c73966cac3641c10c1ee0eb60c749e2d775d5a4e6c8d7e12de20a45d9cbe16' WHERE image_id=49;
UPDATE images SET image_identifier='bf2a556073fb854d38ed2a40dcfde912e5ba96dd296761c7030674850db3debe' WHERE image_id=50;
UPDATE images SET image_identifier='a7b8e4590b479a67512ce3223ecb5788568508d93663a090b92853de58f14776' WHERE image_id=51;
UPDATE images SET image_identifier='81a60cf0c91c065e613a7e19d738b0bede4f7b9109801322792116b330f51469' WHERE image_id=52;
UPDATE images SET image_identifier='8d6e976bce511a872a6741aab09364a343fac8dfb0040859c29cdc1c3fd02f52' WHERE image_id=53;
UPDATE images SET image_identifier='e2e26ab5f90b11e7bee078ab22e40732791cdcf18d5fa4a1aeb9554470a93d0b' WHERE image_id=54;
UPDATE images SET image_identifier='cbc5de4829b3e6f2b24b983f2a0c62a4ec664926684ec0a4939ff80392e72e27' WHERE image_id=55;
UPDATE images SET image_identifier='d7f3806f6b73685cdbc7478dac6b17e5a23e9998306b6efca9c34695250f3bf4' WHERE image_id=56;
UPDATE images SET image_identifier='1db894cdfaa3bc5fb45e0819f38789e3a60862c183eb22c9563e9f68dccbb83d' WHERE image_id=57;
UPDATE images SET image_identifier='d7c885d320b38f0c55f36cc49ca9cb337581c80c9fbfa9e0ba64df9972430316' WHERE image_id=58;
UPDATE images SET image_identifier='42e7db929c3f420979c94cbf5ab2000029dbc7cc71a8651bbd2cc2e13891729f' WHERE image_id=59;
UPDATE images SET image_identifier='3d30f0bfa4d9edf994787b2a7c97b20cc0132c78d9d246121105e4a258573924' WHERE image_id=60;
UPDATE images SET image_identifier='4a555e68b24fb4d552afcfd339cd53d3eb66c10c9ded6bbd22ae18bcf11fe31e' WHERE image_id=61;
UPDATE images SET image_identifier='ec0fae2bc5546979e2d8006b2cfedd5292556247fde6618f7af1197a8dd4e540' WHERE image_id=62;
UPDATE images SET image_identifier='e3406f6a71355556e104de529da6f48da6dc35cb03575bc887a8705125729372' WHERE image_id=63;
UPDATE images SET image_identifier='15174c688144e4e43e8e2d2f5d5a059acc571be9758988bddd5f7678cfd140b2' WHERE image_id=64;
UPDATE images SET image_identifier='0981c522ca531f6e1a3b306663f36c82a775461e0d365653d9b73638dc7df563' WHERE image_id=65;
UPDATE images SET image_identifier='55e696c29f95ed83ddbcb2a82c45b288ffcf46c483b282c4777d3d7caf73835c' WHERE image_id=66;
UPDATE images SET image_identifier='1b65297675f8d0a5b23868641f2288718f1bebc36fcb634c5b3c3f186afb18f3' WHERE image_id=67;
UPDATE images SET image_identifier='1c25c88078a42bc43571ea5ed3a1cdee71de86db93f346d6ce4a0ae1a27683f9' WHERE image_id=68;
UPDATE images SET image_identifier='0575a2c14d319c721743fd05638384a5ae58a64ec50c1493510854f0b5323261' WHERE image_id=69;
UPDATE images SET image_identifier='0277d5dbd9dba06283ff2a410ad30fdb204ac385f8572e2c9e7cc6e7b2b600b4' WHERE image_id=70;
UPDATE images SET image_identifier='06167df25e5b1538eeb16799586ec8a83363effe0124bfcca51fee3ae92cc4e7' WHERE image_id=71;
UPDATE images SET image_identifier='653ef48ad63b2c5aaae43c42ebddd8366b2b9afc18737f4e1536207cfa6d2cca' WHERE image_id=72;
UPDATE images SET image_identifier='ccd75a0c38ee312007f9d8192470c6ea02fdffd33523bfa90ca9214c87498871' WHERE image_id=73;
UPDATE images SET image_identifier='99d20c2523b98a01f3a1230988c14cff3af136b520b7eddf539c3e3d9bda0845' WHERE image_id=74;
UPDATE images SET image_identifier='edfa72ac1003b46cb6b34178aac7a29022318c60ae1ace528eb65a4c3b954b32' WHERE image_id=75;
UPDATE images SET image_identifier='e8b1f77a9468b068541f0d2a83b2b44216c2118a95cf299eb28317e933db42b9' WHERE image_id=76;
UPDATE images SET image_identifier='cccc42bf198f0aeee390a642bfb691a80343592bbf4e7a3e628b696a0b419659' WHERE image_id=77;
UPDATE images SET image_identifier='419a065902183d9fb33bc9573c60bda9725941575218a5e32c7f6e88dc5dedf7' WHERE image_id=78;
UPDATE images SET image_identifier='25bffbfee6ea6add1c96b01591b6ae9da1895b0b1145de66b1bdae293dc69494' WHERE image_id=79;
UPDATE images SET image_identifier='9cf18cd6cc6efc8b037c03f4318de053ee787fb93acb4a3315b193be3401566c' WHERE image_id=80;
UPDATE images SET image_identifier='2fec779bc8e8a44fab6011d879b78fa4e35bdd4a6f89cb9aae0e39b4f1b888b3' WHERE image_id=81;
