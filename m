Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cryEe-0001c2-CS
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:48:54 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 6B5FBBAB14
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:56 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:45:04 +0200
Message-Id: <1490496304-30850-13-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 13/13] efi: enable sercure boot support
To: barebox@lists.infradead.org

This will ensure that we just start secured binary
without user confirmation

But for now on we only support EFI correctly signed image to start
Later will allow both.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/Kconfig         |  1 +
 common/efi/efi-image.c   |  1 +
 drivers/efi/efi-device.c | 13 +++++++++++--
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 52ccf4894..65e4c8b7c 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -78,6 +78,7 @@ choice
 		select EFI_DEVICEPATH
 		select PRINTF_UUID
 		select CLOCKSOURCE_EFI_X86
+		select HAS_SECURE_BOOT
 
 	config X86_BIOS_BRINGUP
 		bool "16 bit BIOS"
diff --git a/common/efi/efi-image.c b/common/efi/efi-image.c
index 885348da4..6552d803d 100644
--- a/common/efi/efi-image.c
+++ b/common/efi/efi-image.c
@@ -270,6 +270,7 @@ static int do_bootm_efi(struct image_data *data)
 static struct image_handler efi_handle_tr = {
 	.name = "EFI Application",
 	.bootm = do_bootm_efi,
+	.is_secure_supported = 1,
 	.filetype = filetype_exe,
 };
 
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 998bda7c6..0a6d7ca4e 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -26,6 +26,7 @@
 #include <linux/sizes.h>
 #include <wchar.h>
 #include <init.h>
+#include <boot_verify.h>
 #include <efi.h>
 #include <efi/efi.h>
 #include <efi/efi-device.h>
@@ -382,13 +383,20 @@ static int efi_is_setup_mode(void)
 	return ret != 0;
 }
 
+static int efi_is_secure_mode(void)
+{
+	int secure_boot = efi_is_secure_boot();
+	int setup_mode = efi_is_setup_mode();
+
+	return secure_boot && !setup_mode;
+}
+
 static int efi_init_devices(void)
 {
 	char *fw_vendor = NULL;
 	u16 sys_major = efi_sys_table->hdr.revision >> 16;
 	u16 sys_minor = efi_sys_table->hdr.revision & 0xffff;
 	int secure_boot = efi_is_secure_boot();
-	int setup_mode = efi_is_setup_mode();
 
 	fw_vendor = strdup_wchar_to_char((const wchar_t *)efi_sys_table->fw_vendor);
 
@@ -406,9 +414,10 @@ static int efi_init_devices(void)
 	dev_add_param_int_ro(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
 	dev_add_param_int_ro(efi_bus.dev, "secure_boot", secure_boot, "%d");
 	dev_add_param_int_ro(efi_bus.dev, "secure_mode",
-			     secure_boot && !setup_mode, "%u");
+			     efi_is_secure_mode(), "%u");
 
 	efi_bus.dev->info = efi_businfo;
+	boot_set_is_secure_mode(efi_is_secure_mode);
 
 	efi_register_devices();
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
