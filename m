Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5I-00051U-Fb
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:16 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id D32E7B9933
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:49 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:44:59 +0200
Message-Id: <1490496304-30850-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/13] boot_verify: allow to force unsigned image to boot
To: barebox@lists.infradead.org

request confirmation before booting an unsigned image

with a default timeout

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/go.c         |  9 +++++++--
 common/Kconfig        |  8 ++++++++
 common/boot_verify.c  | 47 ++++++++++++++++++++++++++++++++++++++++++++---
 common/bootm.c        |  6 ++++++
 common/image-fit.c    |  1 +
 common/uimage.c       |  1 +
 include/boot_verify.h |  7 +++++++
 7 files changed, 74 insertions(+), 5 deletions(-)

diff --git a/commands/go.c b/commands/go.c
index e0385a977..919bcddc7 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -38,8 +38,13 @@ static int do_go(int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	if (boot_get_verify_mode() < BOOT_VERIFY_AVAILABLE)
-		return -ESECVIOLATION;
+	if (boot_get_verify_mode() < BOOT_VERIFY_AVAILABLE) {
+		int is_sec;
+
+		is_sec = boot_can_start_unsigned();
+		if (is_sec)
+			return is_sec;
+	}
 
 	if (!isdigit(*argv[1])) {
 		fd = open(argv[1], O_RDONLY);
diff --git a/common/Kconfig b/common/Kconfig
index 00e98e859..2588651ae 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -648,6 +648,14 @@ config BOOT_FORCE_SIGNED_IMAGES
 	  are refused to boot. Effectively this means only Signed images can
 	  be booted.
 
+config BOOT_FORCE_USER_SIGNED_IMAGES
+	bool
+	prompt "Force booting of signed images or confirm them"
+	depends on HAS_SECURE_BOOT
+	help
+	  With this option enabled only signed images can be booted, unsigned images
+	  need a user confirmation to boot.
+
 config BLSPEC
 	depends on BLOCK
 	depends on FLEXIBLE_BOOTARGS
diff --git a/common/boot_verify.c b/common/boot_verify.c
index 9cbeb7a65..07ae07e16 100644
--- a/common/boot_verify.c
+++ b/common/boot_verify.c
@@ -1,9 +1,17 @@
+/*
+ * Copyright (c) 2016 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2017 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 Only
+ */
 #include <common.h>
 #include <boot_verify.h>
+#include <console_countdown.h>
 #include <globalvar.h>
 #include <magicvar.h>
 #include <init.h>
 
+static unsigned int boot_verify_confirm_timeout = 10;
 static enum boot_verify boot_verify_mode = BOOT_VERIFY_HASH;
 
 enum boot_verify boot_get_verify_mode(void)
@@ -14,6 +22,7 @@ enum boot_verify boot_get_verify_mode(void)
 /* keep it for the most secure to the less */
 static const char * const boot_verify_names[] = {
 	[BOOT_VERIFY_SIGNATURE] = "signature",
+	[BOOT_VERIFY_SIGNATURE_USER] = "signature-user",
 	[BOOT_VERIFY_AVAILABLE] = "available",
 	[BOOT_VERIFY_HASH] = "hash",
 	[BOOT_VERIFY_NONE] = "none",
@@ -40,6 +49,29 @@ void boot_set_is_secure_mode(int (*fn)(void))
 	__is_secure_mode = fn;
 }
 
+int boot_can_start_unsigned(void)
+{
+	int ret;
+	char c;
+	int timeout = boot_verify_confirm_timeout;
+
+	if (!is_secure_mode())
+		return 0;
+
+	if (boot_verify_mode != BOOT_VERIFY_SIGNATURE_USER)
+		return -ESECVIOLATION;
+
+	printf("Are you sure you wish to run an unsigned binary\n");
+	printf("in a secure environment?\n");
+	printf("press y to confirm\n");
+
+	ret = console_countdown(timeout, CONSOLE_COUNTDOWN_ANYKEY, &c);
+	if (ret != -EINTR)
+		return -ESECVIOLATION;
+
+	return c == 'y' ? 0 : -ESECVIOLATION;
+}
+
 static int init_boot_verify(void)
 {
 	int size;
@@ -47,16 +79,25 @@ static int init_boot_verify(void)
 	if (IS_ENABLED(CONFIG_BOOT_FORCE_SIGNED_IMAGES))
 		boot_verify_mode = BOOT_VERIFY_SIGNATURE;
 
-	if (is_secure_mode())
-		size = 1;
-	else
+	if (is_secure_mode()) {
+		if (IS_ENABLED(CONFIG_BOOT_FORCE_USER_SIGNED_IMAGES))
+			size = 2;
+		else
+			size = 1;
+	} else {
 		size = ARRAY_SIZE(boot_verify_names);
+	}
 
 	globalvar_add_simple_enum("boot.verify", (unsigned int *)&boot_verify_mode,
 				  boot_verify_names, size);
 
+	globalvar_add_simple_int("boot.verify_confirm_timeout",
+				 &boot_verify_confirm_timeout, "%u");
+
 	return 0;
 }
 late_initcall(init_boot_verify);
 
 BAREBOX_MAGICVAR_NAMED(global_boot_verify, global.boot.verify, "boot default verify level");
+BAREBOX_MAGICVAR_NAMED(global_boot_verify_confirm_timeout, global.boot.verify_confirm_timeout,
+		"Secure Boot Comfirm timeout in seconds before booting an unsigned image");
diff --git a/common/bootm.c b/common/bootm.c
index 1558f3c5d..73a3a99dd 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -579,6 +579,12 @@ int bootm_boot(struct bootm_data *bootm_data)
 		printf("Passing control to %s handler\n", handler->name);
 	}
 
+	if (!handler->is_secure_supported && is_secure_mode()) {
+		ret = boot_can_start_unsigned();
+		if (ret)
+			goto err_out;
+	}
+
 	ret = handler->bootm(data);
 	if (data->dryrun)
 		printf("Dryrun. Aborted\n");
diff --git a/common/image-fit.c b/common/image-fit.c
index 53f3173fc..0df735062 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -465,6 +465,7 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 	case BOOT_VERIFY_HASH:
 		return 0;
 	case BOOT_VERIFY_SIGNATURE:
+	case BOOT_VERIFY_SIGNATURE_USER:
 		ret = -EINVAL;
 		break;
 	case BOOT_VERIFY_AVAILABLE:
diff --git a/common/uimage.c b/common/uimage.c
index d1947aa11..f25341c15 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -30,6 +30,7 @@
 #include <rtc.h>
 #include <filetype.h>
 #include <memory.h>
+#include <bootm.h>
 
 static inline int uimage_is_multi_image(struct uimage_handle *handle)
 {
diff --git a/include/boot_verify.h b/include/boot_verify.h
index ee830bf5c..12dcfbfdc 100644
--- a/include/boot_verify.h
+++ b/include/boot_verify.h
@@ -3,6 +3,7 @@
 
 enum boot_verify {
 	BOOT_VERIFY_SIGNATURE,
+	BOOT_VERIFY_SIGNATURE_USER,
 	BOOT_VERIFY_AVAILABLE,
 	BOOT_VERIFY_HASH,
 	BOOT_VERIFY_NONE,
@@ -19,10 +20,16 @@ static int inline is_secure_mode(void)
 	return 0;
 }
 
+static int inline boot_can_start_unsigned(void)
+{
+	return 0;
+}
+
 static void inline boot_set_is_secure_mode(int (*fn)(void)) {}
 #else
 enum boot_verify boot_get_verify_mode(void);
 int is_secure_mode(void);
+int boot_can_start_unsigned(void);
 void boot_set_is_secure_mode(int (*fn)(void));
 #endif
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
