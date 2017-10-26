Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e7evH-0003iL-IP
 for barebox@lists.infradead.org; Thu, 26 Oct 2017 09:58:14 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 144DE9880B
 for <barebox@lists.infradead.org>; Thu, 26 Oct 2017 11:57:34 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 26 Oct 2017 11:59:55 +0200
Message-Id: <1509011995-15140-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] EFI: add poweroff support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/configs/efi_defconfig | 1 +
 common/efi/efi.c               | 7 +++++++
 drivers/efi/Kconfig            | 1 +
 3 files changed, 9 insertions(+)

diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 0d9a44a4d..5f11c6c4e 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -55,6 +55,7 @@ CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MM=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
+CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_2048=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
diff --git a/common/efi/efi.c b/common/efi/efi.c
index cd4f5f029..96601cfce 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -289,6 +289,13 @@ static int restart_register_feature(void)
 }
 coredevice_initcall(restart_register_feature);
 
+void __noreturn poweroff(void)
+{
+	RT->reset_system(EFI_RESET_SHUTDOWN, EFI_SUCCESS, 0, NULL);
+
+	hang();
+}
+
 extern char image_base[];
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
index 2cd9dd504..5c988d2e1 100644
--- a/drivers/efi/Kconfig
+++ b/drivers/efi/Kconfig
@@ -1,2 +1,3 @@
 config EFI_BOOTUP
 	bool
+	select HAS_POWEROFF
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
