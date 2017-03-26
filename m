Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5C-00051L-MK
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:10 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 87DE0B9B09
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:44:55 +0200
Message-Id: <1490496304-30850-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/13] boot: invert the secure boot forcing support
To: barebox@lists.infradead.org

Add HAS_SECURE_BOOT as we will add other image format that support secure boot

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig | 12 ++++++++----
 common/bootm.c |  6 +++---
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index f7ff04664..895814ee9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -21,6 +21,9 @@ config HAS_KALLSYMS
 config HAS_MODULES
 	bool
 
+config HAS_SECURE_BOOT
+	bool
+
 config HAS_CACHE
 	bool
 	help
@@ -624,6 +627,7 @@ config BOOTM_FITIMAGE_SIGNATURE
 	prompt "support verifying signed FIT images"
 	depends on BOOTM_FITIMAGE
 	select FITIMAGE_SIGNATURE
+	select HAS_SECURE_BOOT
 	help
 	  Support verifying signed FIT images. This requires FIT images
 	  as described in:
@@ -631,14 +635,14 @@ config BOOTM_FITIMAGE_SIGNATURE
 	  Additionally the barebox device tree needs a /signature node with the
 	  public key with which the image has been signed.
 
-config BOOTM_FORCE_SIGNED_IMAGES
+config BOOT_FORCE_SIGNED_IMAGES
 	bool
 	prompt "Force booting of signed images"
-	depends on BOOTM_FITIMAGE_SIGNATURE
+	depends on HAS_SECURE_BOOT
 	help
 	  With this option enabled only signed images can be booted, unsigned images
-	  are refused to boot. Effectively this means only FIT images can be booted
-	  since they are the only supported image type that support signing.
+	  are refused to boot. Effectively this means only Signed images can
+	  be booted.
 
 config BLSPEC
 	depends on BLOCK
diff --git a/common/bootm.c b/common/bootm.c
index 53311ab1c..885b09f81 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -82,7 +82,7 @@ enum bootm_verify bootm_get_verify_mode(void)
 }
 
 static const char * const bootm_verify_names[] = {
-#ifndef CONFIG_BOOTM_FORCE_SIGNED_IMAGES
+#ifndef CONFIG_BOOT_FORCE_SIGNED_IMAGES
 	[BOOTM_VERIFY_NONE] = "none",
 	[BOOTM_VERIFY_HASH] = "hash",
 	[BOOTM_VERIFY_AVAILABLE] = "available",
@@ -531,7 +531,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
+	if (IS_ENABLED(CONFIG_BOOT_FORCE_SIGNED_IMAGES)) {
 		data->verify = BOOTM_VERIFY_SIGNATURE;
 
 		/*
@@ -635,7 +635,7 @@ static int bootm_init(void)
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES))
+	if (IS_ENABLED(CONFIG_BOOT_FORCE_SIGNED_IMAGES))
 		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
 
 	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
