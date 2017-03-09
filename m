Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clz3I-0001KG-Ea
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 14:28:26 +0000
Received: from player795.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 061825E81C
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 15:28:00 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Mar 2017 15:34:10 +0100
Message-Id: <1489070050-16024-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170309143117.GI4120@mail.ovh.net>
 <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] efi: enable sercure boot support
To: barebox@lists.infradead.org

This will ensure that we just start secured binary
without user confirmation

But for now on we only support EFI correctly signed image to start
Later will allow both.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/Kconfig         | 1 +
 common/efi/efi-image.c   | 1 +
 drivers/efi/efi-device.c | 9 +++++++++
 3 files changed, 11 insertions(+)

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
index 7029bfb31..959878e7f 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -26,6 +26,7 @@
 #include <linux/sizes.h>
 #include <wchar.h>
 #include <init.h>
+#include <secure_boot.h>
 #include <efi.h>
 #include <efi/efi.h>
 #include <efi/efi-device.h>
@@ -382,6 +383,14 @@ static int efi_is_setup_mode(void)
 	return ret != 0;
 }
 
+int is_secure_mode(void)
+{
+	int secure_boot = efi_is_secure_boot();
+	int setup_mode = efi_is_setup_mode();
+
+	return secure_boot & !setup_mode;
+}
+
 static int efi_init_devices(void)
 {
 	char *fw_vendor = NULL;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
