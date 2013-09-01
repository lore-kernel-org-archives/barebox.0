Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VG0lp-000777-Hz
 for barebox@lists.infradead.org; Sun, 01 Sep 2013 06:04:22 +0000
Received: from mail626.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0CFE8DC3272
 for <barebox@lists.infradead.org>; Sun,  1 Sep 2013 08:03:58 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  1 Sep 2013 08:04:47 +0200
Message-Id: <1378015487-26176-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] bootm: add global bootm.{image/initrd}.loadaddr support
To: barebox@lists.infradead.org

To be able to pass the loadaddr of the image and the initrd.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 6ce2ca9..60c2ece 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -241,6 +241,19 @@ static char *bootm_image_name_and_no(const char *name, int *no)
 #define BOOTM_OPTS BOOTM_OPTS_COMMON
 #endif
 
+unsigned long long getenv_loadaddr(const char *name)
+{
+	const char *valstr = getenv(name);
+
+	if (!valstr)
+		return UIMAGE_SOME_ADDRESS;
+
+	if (valstr[0] == '\0')
+		return UIMAGE_SOME_ADDRESS;
+
+	return simple_strtoull(valstr, NULL, 0);
+}
+
 static int do_bootm(int argc, char *argv[])
 {
 	int opt;
@@ -260,6 +273,8 @@ static int do_bootm(int argc, char *argv[])
 
 	oftree = getenv("global.bootm.oftree");
 	os_file = getenv("global.bootm.image");
+	data.os_address = getenv_loadaddr("global.bootm.image.loadaddr");
+	data.initrd_address = getenv_loadaddr("global.bootm.initrd.loadaddr");
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
 		initrd_file = getenv("global.bootm.initrd");
 
@@ -436,9 +451,12 @@ static int bootm_init(void)
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
@@ -470,7 +488,9 @@ BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootargs, "Linux Kernel parameters");
 BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");
+BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr, "bootm default boot image loadaddr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
+BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
 
 static struct binfmt_hook binfmt_uimage_hook = {
 	.type = filetype_uimage,
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
