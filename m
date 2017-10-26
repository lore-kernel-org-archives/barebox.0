Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo68.mail-out.ovh.net ([46.105.59.63])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e7f0p-0008DY-Fd
 for barebox@lists.infradead.org; Thu, 26 Oct 2017 10:03:45 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id ABBDD92812
 for <barebox@lists.infradead.org>; Thu, 26 Oct 2017 12:03:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 26 Oct 2017 12:05:50 +0200
Message-Id: <1509012350-15255-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] EFI: add poweroff support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/configs/efi_defconfig |  1 +
 common/efi/efi.c               | 10 ++++++++++
 drivers/efi/Kconfig            |  1 +
 3 files changed, 12 insertions(+)

diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 3e83fd92d..fdf092e9b 100644
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
index 4b42f5d67..561ce4c08 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -25,6 +25,7 @@
 #include <magicvar.h>
 #include <init.h>
 #include <restart.h>
+#include <poweroff.h>
 #include <driver.h>
 #include <platform_data/serial-ns16550.h>
 #include <io.h>
@@ -283,9 +284,18 @@ static void __noreturn efi_restart_system(struct restart_handler *rst)
 	hang();
 }
 
+static void __noreturn efi_poweroff_system(struct poweroff_handler *handler)
+{
+	shutdown_barebox();
+	RT->reset_system(EFI_RESET_SHUTDOWN, EFI_SUCCESS, 0, NULL);
+
+	hang();
+}
+
 static int restart_register_feature(void)
 {
 	restart_handler_register_fn(efi_restart_system);
+	poweroff_handler_register_fn(efi_poweroff_system);
 
 	return 0;
 }
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
