Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBRWP-0004AW-4u
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 14:00:49 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 24 Mar 2012 18:00:39 +0400
Message-Id: <1332597640-31268-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1332597640-31268-1-git-send-email-shc_work@mail.ru>
References: <1332597640-31268-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 5/6] Completely migrate option ISP1504 to ULPI
To: barebox@lists.infradead.org

Since we do not have ISP1504-related functions, we migrated to ULPI.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/guf-neso/board.c        |    4 ++--
 arch/arm/boards/pcm037/pcm037.c         |    6 +++---
 arch/arm/boards/pcm038/pcm038.c         |    4 ++--
 arch/arm/boards/phycard-i.MX27/pca100.c |    6 +++---
 arch/arm/configs/neso_defconfig         |    2 +-
 arch/arm/configs/pca100_defconfig       |    2 +-
 arch/arm/configs/pcm038_defconfig       |    2 +-
 arch/arm/mach-imx/Kconfig               |    2 +-
 drivers/usb/otg/Kconfig                 |    8 +++-----
 drivers/usb/otg/Makefile                |    1 -
 drivers/usb/otg/isp1504.c               |   10 ----------
 drivers/usb/otg/ulpi.c                  |   11 +++++++++--
 include/usb/isp1504.h                   |    6 ------
 include/usb/ulpi.h                      |    3 +--
 14 files changed, 27 insertions(+), 40 deletions(-)
 delete mode 100644 drivers/usb/otg/isp1504.c
 delete mode 100644 include/usb/isp1504.h

diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 62d82f2..84ef225 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -30,7 +30,7 @@
 #include <nand.h>
 #include <command.h>
 #include <spi/spi.h>
-#include <usb/isp1504.h>
+#include <usb/ulpi.h>
 
 #include <io.h>
 #include <asm/mmu.h>
@@ -133,7 +133,7 @@ static void neso_usbh_init(void)
 
 	gpio_set_value(USBH2_PHY_CS_GPIO, 0);
 	mdelay(10);
-	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x570), 1);
+	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
 }
 #endif
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index d59612f..46f2ce9 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -27,7 +27,7 @@
 #include <driver.h>
 #include <fs.h>
 #include <environment.h>
-#include <usb/isp1504.h>
+#include <usb/ulpi.h>
 #include <mach/imx-regs.h>
 #include <mach/iomux-mx31.h>
 #include <asm/armlinux.h>
@@ -93,7 +93,7 @@ static void pcm037_usb_init(void)
 	imx_iomux_mode(MX31_PIN_USBOTG_STP__USBOTG_STP);
 
 	mdelay(50);
-	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x170), 1);
+	ulpi_setup((void *)(IMX_OTG_BASE + 0x170), 1);
 
 	/* Host 2 */
 	tmp = readl(IOMUXC_BASE + 0x8);
@@ -138,7 +138,7 @@ static void pcm037_usb_init(void)
 	writel(tmp, IMX_OTG_BASE + 0x584);
 
 	mdelay(50);
-	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x570), 1);
+	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
 
 	/* Set to Host mode */
 	tmp = readl(IMX_OTG_BASE + 0x1a8);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 8dd6521..3bf0e31 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -41,7 +41,7 @@
 #include <mach/imxfb.h>
 #include <asm/mmu.h>
 #include <i2c/i2c.h>
-#include <usb/isp1504.h>
+#include <usb/ulpi.h>
 #include <mach/spi.h>
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
@@ -127,7 +127,7 @@ static void pcm038_usbh_init(void)
 
 	mdelay(10);
 
-	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x570), 1);
+	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
 }
 #endif
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index cfbddcf..a0a9911 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -39,7 +39,7 @@
 #include <mach/imxfb.h>
 #include <gpio.h>
 #include <asm/mmu.h>
-#include <usb/isp1504.h>
+#include <usb/ulpi.h>
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
@@ -140,9 +140,9 @@ static void pca100_usb_register(void)
 
 	mdelay(10);
 
-	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x170), 1);
+	ulpi_setup((void *)(IMX_OTG_BASE + 0x170), 1);
 	add_generic_usb_ehci_device(-1, IMX_OTG_BASE, NULL);
-	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x570), 1);
+	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
 	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 }
 #endif
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 45ffe30..fe5110f 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -68,7 +68,7 @@ CONFIG_NAND_IMX=y
 CONFIG_UBI=y
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
-CONFIG_USB_ISP1504=y
+CONFIG_USB_ULPI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
 CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/pca100_defconfig
index 2df7e34..76039e2 100644
--- a/arch/arm/configs/pca100_defconfig
+++ b/arch/arm/configs/pca100_defconfig
@@ -65,6 +65,6 @@ CONFIG_NAND_IMX=y
 CONFIG_UBI=y
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
-CONFIG_USB_ISP1504=y
+CONFIG_USB_ULPI=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
index b63337e..17a5e14 100644
--- a/arch/arm/configs/pcm038_defconfig
+++ b/arch/arm/configs/pcm038_defconfig
@@ -70,7 +70,7 @@ CONFIG_NAND_IMX=y
 CONFIG_UBI=y
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
-CONFIG_USB_ISP1504=y
+CONFIG_USB_ULPI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
 CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 853757b..75e87fe 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -307,7 +307,7 @@ choice
 config MACH_PCM037
 	bool "phyCORE-i.MX31"
 	select MACH_HAS_LOWLEVEL_INIT
-	select USB_ISP1504 if USB
+	select USB_ULPI if USB
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX31 (pcm037) equipped
diff --git a/drivers/usb/otg/Kconfig b/drivers/usb/otg/Kconfig
index de09cf3..2c5b789 100644
--- a/drivers/usb/otg/Kconfig
+++ b/drivers/usb/otg/Kconfig
@@ -1,9 +1,7 @@
 config USB_ULPI
-	bool
-
-config USB_ISP1504
-	select USB_ULPI
-	bool "ISP1504 Tranceiver support"
+	bool "ULPI Tranceiver support"
+	help
+	  Support for tranceivers that conforms ULPI specification.
 
 config USB_TWL4030
 	bool "TWL4030 Tranceiver support"
diff --git a/drivers/usb/otg/Makefile b/drivers/usb/otg/Makefile
index aa95cc9..465a7f0 100644
--- a/drivers/usb/otg/Makefile
+++ b/drivers/usb/otg/Makefile
@@ -1,4 +1,3 @@
 obj-$(CONFIG_USB_ULPI)		+= ulpi.o
-obj-$(CONFIG_USB_ISP1504)	+= isp1504.o
 obj-$(CONFIG_USB_TWL4030)	+= twl4030.o
 
diff --git a/drivers/usb/otg/isp1504.c b/drivers/usb/otg/isp1504.c
deleted file mode 100644
index 568ba72..0000000
--- a/drivers/usb/otg/isp1504.c
+++ /dev/null
@@ -1,10 +0,0 @@
-#include <common.h>
-#include <usb/ulpi.h>
-
-int isp1504_set_vbus_power(void __iomem *view, int on)
-{
-	if (ulpi_init(view))
-		return -1;
-
-	return ulpi_set_vbus(view, on);
-}
diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 6d00ff0..662f78b 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -160,7 +160,6 @@ int ulpi_probe(void __iomem *view)
 
 	return -1;
 }
-EXPORT_SYMBOL(ulpi_probe);
 
 int ulpi_set_vbus(void __iomem *view, int on)
 {
@@ -184,4 +183,12 @@ int ulpi_set_vbus(void __iomem *view, int on)
 
 	return ret;
 }
-EXPORT_SYMBOL(ulpi_set_vbus);
+
+int ulpi_setup(void __iomem *view, int on)
+{
+	if (ulpi_probe(view))
+		return -1;
+
+	return ulpi_set_vbus(view, on);
+}
+EXPORT_SYMBOL(ulpi_setup);
diff --git a/include/usb/isp1504.h b/include/usb/isp1504.h
deleted file mode 100644
index 2eb7665..0000000
--- a/include/usb/isp1504.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __INCLUDE_USB_ISP1504_H
-#define __INCLUDE_USB_ISP1504_H
-
-int isp1504_set_vbus_power(void __iomem *view, int on);
-
-#endif /* __INCLUDE_USB_ISP1504_H */
diff --git a/include/usb/ulpi.h b/include/usb/ulpi.h
index 235d006..542993c 100644
--- a/include/usb/ulpi.h
+++ b/include/usb/ulpi.h
@@ -4,8 +4,7 @@
 int ulpi_set(u8 bits, int reg, void __iomem *view);
 int ulpi_clear(u8 bits, int reg, void __iomem *view);
 int ulpi_read(int reg, void __iomem *view);
-int ulpi_probe(void __iomem *view);
-int ulpi_set_vbus(void __iomem *view, int on);
+int ulpi_setup(void __iomem *view, int on);
 
 /* ULPI register addresses */
 #define ULPI_VID_LOW		0x00	/* Vendor ID low */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
