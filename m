Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jskXg-0003Pk-Oi
 for barebox@lists.infradead.org; Tue, 07 Jul 2020 10:09:37 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Tue, 7 Jul 2020 12:09:35 +0200
Message-Id: <1594116575-426763-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] ARM: configs: Update configs to use new Kconfig FASTBOOT_*
 names
To: barebox@lists.infradead.org

Some Kconfig symbols have been moved and renamed in commit
2879373370eb ("fastboot: split generic code from USB gadget")

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
I used `make savedefconfig` to make Kbuild move them to the new place.

 arch/arm/configs/imx23_defconfig         | 2 +-
 arch/arm/configs/imx28_defconfig         | 2 +-
 arch/arm/configs/imx_v7_defconfig        | 2 +-
 arch/arm/configs/imx_v8_defconfig        | 2 +-
 arch/arm/configs/kindle-mx50_defconfig   | 2 +-
 arch/arm/configs/omap_defconfig          | 2 +-
 arch/arm/configs/zii_vf610_dev_defconfig | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/configs/imx23_defconfig b/arch/arm/configs/imx23_defconfig
index bff9c08c4027..48bf14a39006 100644
--- a/arch/arm/configs/imx23_defconfig
+++ b/arch/arm/configs/imx23_defconfig
@@ -22,6 +22,7 @@ CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
+CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -90,7 +91,6 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
-CONFIG_USB_GADGET_FASTBOOT_CMD_OEM=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_STM=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/imx28_defconfig b/arch/arm/configs/imx28_defconfig
index 4442c79cc4d9..beb0bc2f7666 100644
--- a/arch/arm/configs/imx28_defconfig
+++ b/arch/arm/configs/imx28_defconfig
@@ -25,6 +25,7 @@ CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
+CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -105,7 +106,6 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
-CONFIG_USB_GADGET_FASTBOOT_CMD_OEM=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_STM=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index d89ac1e3490c..24bdc0122c6a 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -66,6 +66,7 @@ CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
+CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -159,7 +160,6 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
-CONFIG_USB_GADGET_FASTBOOT_CMD_OEM=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
 CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 06fb4060848b..b96867ad0ce9 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -25,6 +25,7 @@ CONFIG_CONSOLE_RATP=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
+CONFIG_FASTBOOT_SPARSE=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -106,7 +107,6 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
-CONFIG_USB_GADGET_FASTBOOT_SPARSE=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
diff --git a/arch/arm/configs/kindle-mx50_defconfig b/arch/arm/configs/kindle-mx50_defconfig
index 855daef71ad7..552b2d6d331c 100644
--- a/arch/arm/configs/kindle-mx50_defconfig
+++ b/arch/arm/configs/kindle-mx50_defconfig
@@ -20,6 +20,7 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
@@ -50,7 +51,6 @@ CONFIG_USB_EHCI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
-CONFIG_USB_GADGET_FASTBOOT_CMD_OEM=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index 9d71d0274435..59892cb231b6 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -34,6 +34,7 @@ CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
+CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
@@ -121,7 +122,6 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
-CONFIG_USB_GADGET_FASTBOOT_CMD_OEM=y
 CONFIG_USB_MUSB=y
 CONFIG_USB_MUSB_AM335X=y
 CONFIG_USB_MUSB_HOST=y
diff --git a/arch/arm/configs/zii_vf610_dev_defconfig b/arch/arm/configs/zii_vf610_dev_defconfig
index 7161d740ac1c..45c24d6df471 100644
--- a/arch/arm/configs/zii_vf610_dev_defconfig
+++ b/arch/arm/configs/zii_vf610_dev_defconfig
@@ -22,6 +22,7 @@ CONFIG_CONSOLE_RATP=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
+CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -113,7 +114,6 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
-CONFIG_USB_GADGET_FASTBOOT_CMD_OEM=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
