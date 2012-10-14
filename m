Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNK9D-0005Nm-K9
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 09:06:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 14 Oct 2012 11:06:07 +0200
Message-Id: <1350205567-24425-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM AT91: remove unnecessary 128m defconfigs
To: barebox@lists.infradead.org

These configs are present in two variants with the
only different in SDRAM size. Since the SDRAM size is
autodetected now, these are pure duplicates. Remove
them and the unused AT91_HAVE_SRAM_128M option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/qil_a9260_128mib_defconfig |   79 --------------------------
 arch/arm/configs/usb_a9263_128mib_defconfig |   81 ---------------------------
 arch/arm/configs/usb_a9g20_128mib_defconfig |   81 ---------------------------
 arch/arm/mach-at91/Kconfig                  |    6 --
 4 files changed, 247 deletions(-)
 delete mode 100644 arch/arm/configs/qil_a9260_128mib_defconfig
 delete mode 100644 arch/arm/configs/usb_a9263_128mib_defconfig
 delete mode 100644 arch/arm/configs/usb_a9g20_128mib_defconfig

diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
deleted file mode 100644
index 8cd28f4..0000000
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
deleted file mode 100644
index 87f708f..0000000
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
deleted file mode 100644
index 4a6c933..0000000
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 30225fa..509e660 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -348,12 +348,6 @@ config AT91_HAVE_2MMC
 	  with 2 SD/MMC Slots. This is the case for AT91SAM9G20-EK rev. C and
 	  onwards.
 
-config AT91_HAVE_SRAM_128M
-	bool "Have 128 of ram"
-	depends on MACH_USB_A9G20 || MACH_USB_A9263 || MACH_QIL_A9260
-	help
-	  Select this if you board have 128 MiB of Ram (as USB_A9G20 C11)
-
 choice
 	prompt "LCD type"
 	depends on MACH_AT91SAM9M10G45EK
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
