Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp43.i.mail.ru ([94.100.177.103])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1We02E-0008Nu-Fo
 for barebox@lists.infradead.org; Sat, 26 Apr 2014 10:40:43 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 26 Apr 2014 14:40:09 +0400
Message-Id: <1398508810-19974-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] commands/mount: Return real error code if "mount" fail
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/mount.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index 691bc29..8629bac 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -31,8 +31,7 @@
 
 static int do_mount(int argc, char *argv[])
 {
-	int opt;
-	int ret = 0, verbose = 0;
+	int opt, verbose = 0;
 	struct driver_d *drv;
 	const char *type = NULL;
 	const char *mountpoint, *dev;
@@ -113,11 +112,7 @@ static int do_mount(int argc, char *argv[])
 		mountpoint = argv[optind + 1];
 	}
 
-	if ((ret = mount(dev, type, mountpoint, fsoptions))) {
-		perror("mount");
-		return 1;
-	}
-	return 0;
+	return mount(dev, type, mountpoint, fsoptions);
 }
 
 BAREBOX_CMD_HELP_START(mount)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
