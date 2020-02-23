a:53:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"How to add more pages to the docker container and track what's changed.";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:72;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:72;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"First, run ";}i:2;i:74;}i:6;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:85;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"docker exec -ti dokuwiki /bin/bash";}i:2;i:87;}i:8;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:121;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:" and then do this in that shell:";}i:2;i:123;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:155;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:155;}i:12;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:157;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"find . -type f | xargs md5sum > /tmp/0.dokuwiki";}i:2;i:159;}i:14;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:206;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:208;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:208;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"Make your changes and run this:";}i:2;i:210;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:241;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:241;}i:20;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:243;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"find . -type f | xargs md5sum > /tmp/1.dokuwiki";}i:2;i:245;}i:22;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:292;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:294;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:294;}i:25;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:296;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:"cat /tmp/0.dokuwiki /tmp/0.dokuwiki /tmp/1.dokuwiki | sort | uniq -u";}i:2;i:298;}i:27;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:366;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:368;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:368;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"You can then use ";}i:2;i:370;}i:31;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:387;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"docker cp";}i:2;i:389;}i:33;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:398;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:" to get the files.  It's easier to do this with ";}i:2;i:400;}i:35;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:448;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"tar";}i:2;i:450;}i:37;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:453;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:":";}i:2;i:455;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:456;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:456;}i:41;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:458;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:104:"tar cf stuff.tar $(cat /tmp/0.dokuwiki /tmp/0.dokuwiki /tmp/1.dokuwiki | sort | uniq -u | cut '-d ' -f3)";}i:2;i:460;}i:43;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:564;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:566;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:566;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"And then do ";}i:2;i:568;}i:47;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:580;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"docker cp dokuwiki:/var/www/dokuwiki/stuff.tar .";}i:2;i:582;}i:49;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:630;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:632;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:632;}i:52;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:632;}}