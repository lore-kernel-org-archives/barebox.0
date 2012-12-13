Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjC9R-0001ne-6j
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 17:00:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 18:00:41 +0100
Message-Id: <1355418044-27452-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
References: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] ARM i.MX pcm038: switch to chipidea support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/pcm970.c   |   34 ++++++++--------------------------
 arch/arm/configs/pcm038_defconfig |    1 +
 2 files changed, 9 insertions(+), 26 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index 93a1839..7b25110 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -21,34 +21,12 @@
 #include <mach/weim.h>
 #include <mach/gpio.h>
 #include <mach/devices-imx27.h>
-#include <usb/ulpi.h>
+#include <usb/chipidea-imx.h>
 
 #define GPIO_IDE_POWER	(GPIO_PORTE + 18)
 #define GPIO_IDE_PCOE	(GPIO_PORTF + 7)
 #define GPIO_IDE_RESET	(GPIO_PORTF + 10)
 
-#ifdef CONFIG_USB
-static void pcm970_usbh2_init(void)
-{
-	uint32_t temp;
-
-	temp = readl(MX27_USB_OTG_BASE_ADDR + 0x600);
-	temp &= ~((3 << 21) | 1);
-	temp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20);
-	writel(temp, MX27_USB_OTG_BASE_ADDR + 0x600);
-
-	temp = readl(MX27_USB_OTG_BASE_ADDR + 0x584);
-	temp &= ~(3 << 30);
-	temp |= 2 << 30;
-	writel(temp, MX27_USB_OTG_BASE_ADDR + 0x584);
-
-	mdelay(10);
-
-	if (!ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x570), 1))
-		add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
-}
-#endif
-
 #ifdef CONFIG_DISK_INTF_PLATFORM_IDE
 static struct resource pcm970_ide_resources[] = {
 	{
@@ -168,6 +146,11 @@ static void pcm970_mmc_init(void)
 	imx27_add_mmc1(NULL);
 }
 
+struct imxusb_platformdata pcm970_usbh2_pdata = {
+	.flags = MXC_EHCI_MODE_ULPI | MXC_EHCI_INTERFACE_DIFF_UNI,
+	.mode = IMX_USB_MODE_HOST,
+};
+
 static int pcm970_init(void)
 {
 	int i;
@@ -193,9 +176,8 @@ static int pcm970_init(void)
 	/* Configure SJA1000 on cs4 */
 	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
 
-#ifdef CONFIG_USB
-	pcm970_usbh2_init();
-#endif
+	if (IS_ENABLED(CONFIG_USB))
+		imx27_add_usbh2(&pcm970_usbh2_pdata);
 
 #ifdef CONFIG_DISK_INTF_PLATFORM_IDE
 	pcm970_ide_init();
diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
index bab4002..13e2451 100644
--- a/arch/arm/configs/pcm038_defconfig
+++ b/arch/arm/configs/pcm038_defconfig
@@ -68,6 +68,7 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 CONFIG_NAND_IMX=y
 CONFIG_USB=y
+CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_VIDEO=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
