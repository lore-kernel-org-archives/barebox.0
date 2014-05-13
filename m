Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x231.google.com ([2a00:1450:4013:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80x-0001pK-2e
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:49 +0000
Received: by mail-ee0-f49.google.com with SMTP id e53so123870eek.8
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:25 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:49 +0200
Message-Id: <1399969739-10355-10-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 09/19] commands: move CMD_BOOT_ORDER to commands/Kconfig
To: barebox@lists.infradead.org

* this places the command into the "Boot commands"
  section of Kconfig
* while at it, improve Kconfig documention

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/mach-omap/Kconfig |    7 -------
 commands/Kconfig           |   12 ++++++++++++
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 12b9c1f..201944c 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -107,13 +107,6 @@ config OMAP4_USBBOOT
 	  You need the utility program omap4_usbboot to boot from USB.
 	  Please read omap4_usb_booting.txt for more information.
 
-config CMD_BOOT_ORDER
-	tristate
-	depends on ARCH_OMAP4
-	prompt "boot_order"
-	help
-	  A command to choose the next boot device on a warm reset.
-
 config OMAP_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
diff --git a/commands/Kconfig b/commands/Kconfig
index db091c4..0145f00 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -180,6 +180,18 @@ config FLEXIBLE_BOOTARGS
 	  to replace parts of the bootargs string without reconstructing it
 	  completely.
 
+config CMD_BOOT_ORDER
+	tristate
+	depends on ARCH_OMAP4
+	prompt "boot_order"
+	help
+	  Set warm boot order (the next boot device on a warm reset).
+
+	  Usage: boot_order DEVICE...
+
+	  Each device can be one of:
+	  xip xipwait nand onenand mmc1 mmc2_1 mmc2_2 uart usb_1 usb_ulpi usb_2
+
 config CMD_BOOT
 	tristate
 	select BOOTM
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
