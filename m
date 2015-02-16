Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x236.google.com ([2a00:1450:400c:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YNLKz-0007sD-7c
 for barebox@lists.infradead.org; Mon, 16 Feb 2015 13:03:49 +0000
Received: by mail-wg0-f54.google.com with SMTP id y19so29144439wgg.13
 for <barebox@lists.infradead.org>; Mon, 16 Feb 2015 05:03:22 -0800 (PST)
From: h.feurstein@gmail.com
Date: Mon, 16 Feb 2015 14:03:18 +0100
Message-Id: <1424091798-23393-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] common/bootargs: add blkdevparts variables
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <hubert.feurstein@deto.at>

From: Hubert Feurstein <hubert.feurstein@deto.at>

The kernel command line option blkdevparts works like mtdparts, but for all
block devices. So it can be used for eMMC devices without the need of a
traditional partition table.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 common/bootargs.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/common/bootargs.c b/common/bootargs.c
index 6624f72..803736f 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -38,7 +38,7 @@ static int linux_bootargs_overwritten;
  */
 const char *linux_bootargs_get(void)
 {
-	char *bootargs, *mtdparts;
+	char *bootargs, *parts;
 
 	if (linux_bootargs_overwritten)
 		return linux_bootargs;
@@ -49,14 +49,21 @@ const char *linux_bootargs_get(void)
 	if (!strlen(bootargs))
 		return getenv("bootargs");
 
-	mtdparts = globalvar_get_match("linux.mtdparts.", ";");
+	linux_bootargs = bootargs;
 
-	if (strlen(mtdparts)) {
-		linux_bootargs = asprintf("%s mtdparts=%s", bootargs, mtdparts);
-		free(bootargs);
-		free(mtdparts);
-	} else {
-		free(mtdparts);
+	parts = globalvar_get_match("linux.mtdparts.", ";");
+	if (strlen(parts)) {
+		bootargs = asprintf("%s mtdparts=%s", linux_bootargs, parts);
+		free(linux_bootargs);
+		free(parts);
+		linux_bootargs = bootargs;
+	}
+
+	parts = globalvar_get_match("linux.blkdevparts.", ";");
+	if (strlen(parts)) {
+		bootargs = asprintf("%s blkdevparts=%s", linux_bootargs, parts);
+		free(linux_bootargs);
+		free(parts);
 		linux_bootargs = bootargs;
 	}
 
@@ -78,3 +85,4 @@ int linux_bootargs_overwrite(const char *bootargs)
 
 BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_, global.linux.bootargs.*, "Linux bootargs variables");
 BAREBOX_MAGICVAR_NAMED(global_linux_mtdparts_, global.linux.mtdparts.*, "Linux mtdparts variables");
+BAREBOX_MAGICVAR_NAMED(global_linux_blkdevparts_, global.linux.blkdevparts.*, "Linux blkdevparts variables");
-- 
2.3.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
