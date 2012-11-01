Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTyGH-00011u-W7
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 17:08:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 18:08:53 +0100
Message-Id: <1351789733-28638-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mount: add compatibility to old mount command
To: barebox@lists.infradead.org

the mount command used to have the syntax 'mount <dev> <type> <mountpoint>'.
This was changed to the more Linux like behaviour which specifies the
type with the -t <type> option. If a newer barebox is run on a device
with an older environment the mount command no longer works. This patch
adds compatibility to the old behaviour.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c |   17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index f339c37..be26af8 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -33,7 +33,8 @@ static int do_mount(int argc, char *argv[])
 	int opt;
 	int ret = 0;
 	struct fs_device_d *fsdev;
-	char *type = NULL;
+	const char *type = NULL;
+	const char *mountpoint, *dev;
 
 	if (argc == 1) {
 		for_each_fs_device(fsdev) {
@@ -56,7 +57,19 @@ static int do_mount(int argc, char *argv[])
 	if (argc < optind + 2)
 		return COMMAND_ERROR_USAGE;
 
-	if ((ret = mount(argv[optind], type, argv[optind + 1]))) {
+	dev = argv[optind];
+
+	if (argc == optind + 3) {
+		/*
+		 * Old behaviour: mount <dev> <type> <mountpoint>
+		 */
+		type = argv[optind + 1];
+		mountpoint = argv[optind + 2];
+	} else {
+		mountpoint = argv[optind + 1];
+	}
+
+	if ((ret = mount(dev, type, mountpoint))) {
 		perror("mount");
 		return 1;
 	}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
