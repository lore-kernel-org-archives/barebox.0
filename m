Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b0NSX-0002jJ-Bs
 for barebox@lists.infradead.org; Wed, 11 May 2016 06:17:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 May 2016 08:16:59 +0200
Message-Id: <1462947420-24562-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] bootm: Move magicvar descriptions to common/bootm.c
To: Barebox List <barebox@lists.infradead.org>

Now that the bootm code can be used without the command, we have to
move the magicvar descriptions from the command code to the common
bootm code aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c | 10 ----------
 common/bootm.c   | 10 ++++++++++
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index a46faae..6bedb00 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -37,7 +37,6 @@
 #include <rtc.h>
 #include <init.h>
 #include <of.h>
-#include <magicvar.h>
 #include <uncompress.h>
 #include <memory.h>
 #include <filetype.h>
@@ -159,15 +158,6 @@ BAREBOX_CMD_START(bootm)
 	BAREBOX_CMD_HELP(cmd_bootm_help)
 BAREBOX_CMD_END
 
-BAREBOX_MAGICVAR(bootargs, "Linux kernel parameters");
-BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");
-BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr, "bootm default boot image loadaddr");
-BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
-BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
-BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
-BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
-BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
-
 static struct binfmt_hook binfmt_uimage_hook = {
 	.type = filetype_uimage,
 	.exec = "bootm",
diff --git a/common/bootm.c b/common/bootm.c
index bf1b344..66a5bf3 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -21,6 +21,7 @@
 #include <globalvar.h>
 #include <init.h>
 #include <linux/stat.h>
+#include <magicvar.h>
 
 static LIST_HEAD(handler_list);
 
@@ -666,3 +667,12 @@ static int bootm_init(void)
 	return 0;
 }
 late_initcall(bootm_init);
+
+BAREBOX_MAGICVAR(bootargs, "Linux kernel parameters");
+BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");
+BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr, "bootm default boot image loadaddr");
+BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
+BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
+BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
+BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
+BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
