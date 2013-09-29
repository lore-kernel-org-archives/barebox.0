Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQDsT-0002M9-W2
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:05:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 29 Sep 2013 12:04:57 +0200
Message-Id: <1380449100-6295-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] mount: implement -v option to print available filesystems
To: barebox@lists.infradead.org

It's useful to know which filesystems a barebox binary supports.
Add a -v option to the mount command to find it out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c | 35 +++++++++++++++++++++++++----------
 include/fs.h     |  1 +
 2 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index 595145a..203c4de 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -31,27 +31,40 @@
 static int do_mount(int argc, char *argv[])
 {
 	int opt;
-	int ret = 0;
+	int ret = 0, verbose = 0;
 	struct fs_device_d *fsdev;
+	struct driver_d *drv;
 	const char *type = NULL;
 	const char *mountpoint, *dev;
 
-	if (argc == 1) {
+	while ((opt = getopt(argc, argv, "t:v")) > 0) {
+		switch (opt) {
+		case 't':
+			type = optarg;
+			break;
+		case 'v':
+			verbose++;
+			break;
+		}
+	}
+
+	if (argc == optind) {
 		for_each_fs_device(fsdev) {
 			printf("%s on %s type %s\n",
 				fsdev->backingstore ? fsdev->backingstore : "none",
 				fsdev->path,
 				fsdev->dev.name);
 		}
-		return 0;
-	}
 
-	while ((opt = getopt(argc, argv, "t:")) > 0) {
-		switch (opt) {
-		case 't':
-			type = optarg;
-			break;
+		if (verbose) {
+			printf("\nSupported filesystems:\n\n");
+			bus_for_each_driver(&fs_bus, drv) {
+				struct fs_driver_d * fsdrv = drv_to_fs_driver(drv);
+				printf("%s\n", fsdrv->drv.name);
+			}
 		}
+
+		return 0;
 	}
 
 	if (argc < optind + 2)
@@ -77,7 +90,9 @@ static int do_mount(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(mount)
-BAREBOX_CMD_HELP_USAGE("mount [[-t <fstype] <device> <mountpoint>]\n")
+BAREBOX_CMD_HELP_USAGE("mount [[OPTIONS] <device> <mountpoint>]\n")
+BAREBOX_CMD_HELP_OPT("-t <type>", "specify filesystem type\n")
+BAREBOX_CMD_HELP_OPT("-v", "be more verbose\n")
 BAREBOX_CMD_HELP_SHORT("Mount a filesystem of a given type to a mountpoint.\n")
 BAREBOX_CMD_HELP_SHORT("If no fstype is specified, try to detect it automatically.\n")
 BAREBOX_CMD_HELP_SHORT("If no argument is given, list mounted filesystems.\n")
diff --git a/include/fs.h b/include/fs.h
index b82c246..5b4ad6f 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -87,6 +87,7 @@ struct fs_driver_d {
 
 extern struct list_head fs_device_list;
 #define for_each_fs_device(f) list_for_each_entry(f, &fs_device_list, list)
+extern struct bus_type fs_bus;
 
 struct fs_device_d {
 	char *backingstore; /* the device we are associated with */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
