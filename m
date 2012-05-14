Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.mail.ru ([94.100.176.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STrug-0007Qv-TZ
 for barebox@lists.infradead.org; Mon, 14 May 2012 09:50:00 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 14 May 2012 13:50:03 +0400
Message-Id: <1336989003-1325-1-git-send-email-shc_work@mail.ru>
In-Reply-To: <201205141057.58795.jbe@pengutronix.de>
References: <201205141057.58795.jbe@pengutronix.de>
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
Subject: [PATCH 1/2] PCM038: Move USBH2 initialization to PCM970
To: barebox@lists.infradead.org

Actually ISP1504 ULPI chip are installed on PCM970 development board.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |   40 -------------------------------
 arch/arm/boards/pcm038/pcm970.c |   50 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+), 40 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index c8a6aac..d247edc 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -37,7 +37,6 @@
 #include <mach/imx-pll.h>
 #include <mach/imxfb.h>
 #include <i2c/i2c.h>
-#include <usb/ulpi.h>
 #include <mach/spi.h>
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
@@ -107,27 +106,6 @@ static struct imx_fb_platform_data pcm038_fb_data = {
 	.dmacr	= 0x00020010,
 };
 
-#ifdef CONFIG_USB
-static void pcm038_usbh_init(void)
-{
-	uint32_t temp;
-
-	temp = readl(IMX_OTG_BASE + 0x600);
-	temp &= ~((3 << 21) | 1);
-	temp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20);
-	writel(temp, IMX_OTG_BASE + 0x600);
-
-	temp = readl(IMX_OTG_BASE + 0x584);
-	temp &= ~(3 << 30);
-	temp |= 2 << 30;
-	writel(temp, IMX_OTG_BASE + 0x584);
-
-	mdelay(10);
-
-	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
-}
-#endif
-
 /**
  * The spctl0 register is a beast: Seems you can read it
  * only one times without writing it again.
@@ -260,19 +238,6 @@ static int pcm038_devices_init(void)
 		PA29_PF_VSYNC,
 		PA30_PF_CONTRAST,
 		PA31_PF_OE_ACD,
-		/* USB host 2 */
-		PA0_PF_USBH2_CLK,
-		PA1_PF_USBH2_DIR,
-		PA2_PF_USBH2_DATA7,
-		PA3_PF_USBH2_NXT,
-		PA4_PF_USBH2_STP,
-		PD19_AF_USBH2_DATA4,
-		PD20_AF_USBH2_DATA3,
-		PD21_AF_USBH2_DATA6,
-		PD22_AF_USBH2_DATA0,
-		PD23_AF_USBH2_DATA2,
-		PD24_AF_USBH2_DATA1,
-		PD26_AF_USBH2_DATA5,
 		/* I2C1 */
 		PD17_PF_I2C_DATA | GPIO_PUEN,
 		PD18_PF_I2C_CLK,
@@ -310,11 +275,6 @@ static int pcm038_devices_init(void)
 	imx27_add_i2c0(NULL);
 	imx27_add_i2c1(NULL);
 
-#ifdef CONFIG_USB
-	pcm038_usbh_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
-#endif
-
 	/* Register the fec device after the PLL re-initialisation
 	 * as the fec depends on the (now higher) ipg clock
 	 */
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index cdd68a3..cd80677 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -15,15 +15,65 @@
  * MA 02111-1307 USA
  */
 
+#include <common.h>
 #include <io.h>
 #include <init.h>
 #include <mach/imx-regs.h>
+#include <mach/iomux-mx27.h>
+#include <mach/gpio.h>
+#include <usb/ulpi.h>
+
+#ifdef CONFIG_USB
+static void pcm970_usbh2_init(void)
+{
+	uint32_t temp;
+
+	temp = readl(IMX_OTG_BASE + 0x600);
+	temp &= ~((3 << 21) | 1);
+	temp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20);
+	writel(temp, IMX_OTG_BASE + 0x600);
+
+	temp = readl(IMX_OTG_BASE + 0x584);
+	temp &= ~(3 << 30);
+	temp |= 2 << 30;
+	writel(temp, IMX_OTG_BASE + 0x584);
+
+	mdelay(10);
+
+	if (!ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1))
+		add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+}
+#endif
 
 static int pcm970_init(void)
 {
+	int i;
+	unsigned int mode[] = {
+		/* USB Host 2 */
+		PA0_PF_USBH2_CLK,
+		PA1_PF_USBH2_DIR,
+		PA2_PF_USBH2_DATA7,
+		PA3_PF_USBH2_NXT,
+		PA4_PF_USBH2_STP,
+		PD19_AF_USBH2_DATA4,
+		PD20_AF_USBH2_DATA3,
+		PD21_AF_USBH2_DATA6,
+		PD22_AF_USBH2_DATA0,
+		PD23_AF_USBH2_DATA2,
+		PD24_AF_USBH2_DATA1,
+		PD26_AF_USBH2_DATA5,
+	};
+
+	for (i = 0; i < ARRAY_SIZE(mode); i++)
+		imx_gpio_mode(mode[i]);
+
 	/* Configure SJA1000 on cs4 */
 	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
 
+#ifdef CONFIG_USB
+	pcm970_usbh2_init();
+#endif
+
 	return 0;
 }
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
