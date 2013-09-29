Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQDsU-0002MB-08
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:05:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 29 Sep 2013 12:04:59 +0200
Message-Id: <1380449100-6295-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
References: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/9] mount: Allow to mount all available partitions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/commands/mount.c b/commands/mount.c
index 203c4de..96a4164 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -37,7 +37,7 @@ static int do_mount(int argc, char *argv[])
 	const char *type = NULL;
 	const char *mountpoint, *dev;
 
-	while ((opt = getopt(argc, argv, "t:v")) > 0) {
+	while ((opt = getopt(argc, argv, "t:va")) > 0) {
 		switch (opt) {
 		case 't':
 			type = optarg;
@@ -45,6 +45,9 @@ static int do_mount(int argc, char *argv[])
 		case 'v':
 			verbose++;
 			break;
+		case 'a':
+			mount_all();
+			break;
 		}
 	}
 
@@ -92,10 +95,13 @@ static int do_mount(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(mount)
 BAREBOX_CMD_HELP_USAGE("mount [[OPTIONS] <device> <mountpoint>]\n")
 BAREBOX_CMD_HELP_OPT("-t <type>", "specify filesystem type\n")
+BAREBOX_CMD_HELP_OPT("-a", "Mount all blockdevices.\n")
 BAREBOX_CMD_HELP_OPT("-v", "be more verbose\n")
 BAREBOX_CMD_HELP_SHORT("Mount a filesystem of a given type to a mountpoint.\n")
 BAREBOX_CMD_HELP_SHORT("If no fstype is specified, try to detect it automatically.\n")
 BAREBOX_CMD_HELP_SHORT("If no argument is given, list mounted filesystems.\n")
+BAREBOX_CMD_HELP_SHORT("With -a the mount command mounts all block devices whose filesystem\n")
+BAREBOX_CMD_HELP_SHORT("can be detected automatically to /mnt/<partname>\n")
 BAREBOX_CMD_HELP_END
 
 /**
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
