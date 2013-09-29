Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQDsX-0002ME-Ng
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:05:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 29 Sep 2013 12:05:00 +0200
Message-Id: <1380449100-6295-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] mount: use standard mountpath if path is ommitted
To: barebox@lists.infradead.org

With this a mount <devname> will mount the device to /mnt/<devname>. This
directory is created automatically if it doesn't exist already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/commands/mount.c b/commands/mount.c
index 96a4164..2e9d4be 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -27,6 +27,7 @@
 #include <fs.h>
 #include <errno.h>
 #include <getopt.h>
+#include <linux/err.h>
 
 static int do_mount(int argc, char *argv[])
 {
@@ -70,6 +71,28 @@ static int do_mount(int argc, char *argv[])
 		return 0;
 	}
 
+	if (argc == optind + 1) {
+		struct cdev *cdev;
+		const char *path, *devstr;
+
+		devstr = argv[optind];
+
+		if (!strncmp(devstr, "/dev/", 5))
+			devstr += 5;
+
+		cdev = cdev_by_name(devstr);
+		if (!cdev)
+			return -ENOENT;
+
+		path = cdev_mount_default(cdev);
+		if (IS_ERR(path))
+			return PTR_ERR(path);
+
+		printf("mounted /dev/%s on %s\n", devstr, path);
+
+		return 0;
+	}
+
 	if (argc < optind + 2)
 		return COMMAND_ERROR_USAGE;
 
@@ -93,7 +116,7 @@ static int do_mount(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(mount)
-BAREBOX_CMD_HELP_USAGE("mount [[OPTIONS] <device> <mountpoint>]\n")
+BAREBOX_CMD_HELP_USAGE("mount [[OPTIONS] <device> [mountpoint]]\n")
 BAREBOX_CMD_HELP_OPT("-t <type>", "specify filesystem type\n")
 BAREBOX_CMD_HELP_OPT("-a", "Mount all blockdevices.\n")
 BAREBOX_CMD_HELP_OPT("-v", "be more verbose\n")
@@ -102,6 +125,8 @@ BAREBOX_CMD_HELP_SHORT("If no fstype is specified, try to detect it automaticall
 BAREBOX_CMD_HELP_SHORT("If no argument is given, list mounted filesystems.\n")
 BAREBOX_CMD_HELP_SHORT("With -a the mount command mounts all block devices whose filesystem\n")
 BAREBOX_CMD_HELP_SHORT("can be detected automatically to /mnt/<partname>\n")
+BAREBOX_CMD_HELP_SHORT("If mountpoint is not given a standard mountpoint of /mnt/devname>\n")
+BAREBOX_CMD_HELP_SHORT("is used. This directoy is created automatically if necessary.\n")
 BAREBOX_CMD_HELP_END
 
 /**
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
