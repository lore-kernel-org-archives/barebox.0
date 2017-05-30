Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFhqj-0004Yb-PR
 for barebox@lists.infradead.org; Tue, 30 May 2017 14:10:19 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 30 May 2017 16:09:44 +0200
Message-Id: <20170530140947.3988-2-p.zabel@pengutronix.de>
In-Reply-To: <20170530140947.3988-1-p.zabel@pengutronix.de>
References: <20170530140947.3988-1-p.zabel@pengutronix.de>
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
Subject: [PATCH 2/5] commands: mount: combine dev and devstr,
 which are the same
To: barebox@lists.infradead.org

Unify the device path used by the default mount and mount with specified
mount point paths.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 commands/mount.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index aa769d46fe..f05e23b227 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -29,7 +29,7 @@ static int do_mount(int argc, char *argv[])
 	int opt, verbose = 0;
 	struct driver_d *drv;
 	const char *type = NULL;
-	const char *mountpoint, *dev;
+	const char *mountpoint, *devstr;
 	const char *fsoptions = NULL;
 
 	while ((opt = getopt(argc, argv, "ao:t:v")) > 0) {
@@ -70,11 +70,11 @@ static int do_mount(int argc, char *argv[])
 		return 0;
 	}
 
+	devstr = argv[optind];
+
 	if (argc == optind + 1) {
 		struct cdev *cdev;
-		const char *path, *devstr;
-
-		devstr = argv[optind];
+		const char *path;
 
 		if (!strncmp(devstr, "/dev/", 5))
 			devstr += 5;
@@ -97,8 +97,6 @@ static int do_mount(int argc, char *argv[])
 	if (argc < optind + 2)
 		return COMMAND_ERROR_USAGE;
 
-	dev = argv[optind];
-
 	if (argc == optind + 3) {
 		/*
 		 * Old behaviour: mount <dev> <type> <mountpoint>
@@ -109,7 +107,7 @@ static int do_mount(int argc, char *argv[])
 		mountpoint = argv[optind + 1];
 	}
 
-	return mount(dev, type, mountpoint, fsoptions);
+	return mount(devstr, type, mountpoint, fsoptions);
 }
 
 BAREBOX_CMD_HELP_START(mount)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
