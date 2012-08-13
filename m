Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ok4-0008DF-UP
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 07:07:14 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 764F51054B15
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2012 09:11:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 13 Aug 2012 09:07:15 +0200
Message-Id: <1344841635-12926-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] bootm: add global bootm.{image/initrd}.loadaddr support
To: barebox@lists.infradead.org

To be able to pass the loadaddr of the image and the initrd.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |   24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 5f858e8..331e777 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -254,6 +254,16 @@ static char *bootm_image_name_and_no(const char *name, int *no)
 #define BOOTM_OPTS BOOTM_OPTS_COMMON
 #endif
 
+unsigned long long getenv_loadaddr(const char *name)
+{
+	const char *valstr = getenv(name);
+
+	if (!valstr)
+		return UIMAGE_SOME_ADDRESS;
+
+	return simple_strtoull(valstr, NULL, 0);
+}
+
 static int do_bootm(int argc, char *argv[])
 {
 	int opt;
@@ -273,8 +283,11 @@ static int do_bootm(int argc, char *argv[])
 
 	oftree = getenv("global.bootm.oftree");
 	os_file = getenv("global.bootm.image");
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
+	data.os_address = getenv_loadaddr("global.bootm.image.loadaddr");
+	data.initrd_address = getenv_loadaddr("global.bootm.initrd.loadaddr");
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD)) {
 		initrd_file = getenv("global.bootm.initrd");
+	}
 
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
@@ -446,9 +459,12 @@ static int bootm_init(void)
 {
 
 	globalvar_add_simple("bootm.image");
+	globalvar_add_simple("bootm.image.loadaddr");
 	globalvar_add_simple("bootm.oftree");
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd");
+		globalvar_add_simple("bootm.initrd.loadaddr");
+	}
 
 	return 0;
 }
@@ -479,8 +495,10 @@ BAREBOX_CMD_START(bootm)
 BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootargs, "Linux Kernel parameters");
-BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");
+BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image, "bootm default boot image");
+BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image.loadaddr, "bootm default boot image loadaadr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
+BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaadr");
 
 static struct binfmt_hook binfmt_uimage_hook = {
 	.type = filetype_uimage,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
