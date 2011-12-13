Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaNXo-0000A0-Lp
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 08:17:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 23CD1BF08A
 for <barebox@lists.infradead.org>; Tue, 13 Dec 2011 09:22:14 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Tue, 13 Dec 2011 09:16:47 +0100
Message-Id: <1323764207-12082-2-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1323764207-12082-1-git-send-email-c.hemp@phytec.de>
References: <1323764207-12082-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 2/2] pca100: Add displays and framebuffer support.
To: barebox@lists.infradead.org

Add displays and framebuffer support for pca100.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phycard-i.MX27/pca100.c |  105 +++++++++++++++++++++++++++++++
 1 files changed, 105 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index babb766..c7af75e 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -35,6 +35,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
+#include <mach/imxfb.h>
 #include <gpio.h>
 #include <asm/mmu.h>
 #include <usb/isp1504.h>
@@ -58,6 +59,82 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt = 1,
 };
 
+static struct imx_fb_videomode imxfb_mode[] = {
+	{
+		.mode = {
+			.name		= "Primeview-PD050VL1",
+			.refresh	= 60,
+			.xres		= 640,
+			.yres		= 480,
+			.pixclock	= 40000, /* in ps (25MHz) */
+			.hsync_len	= 32,
+			.left_margin	= 112,
+			.right_margin	= 36,
+			.vsync_len	= 2,
+			.upper_margin	= 33,
+			.lower_margin	= 33,
+		},
+		.pcr = 0xF0C88080,
+		.bpp = 16,
+	}, {
+		.mode = {
+			.name		= "Primeview-PD035VL1",
+			.refresh	= 60,
+			.xres		= 640,
+			.yres		= 480,
+			.pixclock	= 40000, /* in ps (25 MHz) */
+			.hsync_len	= 30,
+			.left_margin	= 98,
+			.right_margin	= 36,
+			.vsync_len	= 2,
+			.upper_margin	= 15,
+			.lower_margin	= 33,
+		},
+		.pcr = 0xF0C88080,
+		.bpp = 16,
+	}, {
+		.mode = {
+			.name		= "Primeview-PD104SLF",
+			.refresh	= 60,
+			.xres		= 800,
+			.yres		= 600,
+			.pixclock	= 25000, /* in ps (40,0 MHz) */
+			.hsync_len	= 40,
+			.left_margin	= 174,
+			.right_margin	= 174,
+			.vsync_len	= 4,
+			.upper_margin	= 24,
+			.lower_margin	= 23,
+		},
+		.pcr = 0xF0C88080,
+		.bpp = 16,
+	}, {
+		.mode = {
+			.name		= "Primeview-PM070WL4",
+			.refresh	= 60,
+			.xres		= 800,
+			.yres		= 480,
+			.pixclock	= 31250, /* in ps (32 MHz) */
+			.hsync_len	= 40,
+			.left_margin	= 174,
+			.right_margin	= 174,
+			.vsync_len	= 2,
+			.upper_margin	= 33,
+			.lower_margin	= 23,
+		},
+		.pcr = 0xF0C88080,
+		.bpp = 16,
+	},
+};
+
+static struct imx_fb_platform_data pca100_fb_data = {
+	.mode   = imxfb_mode,
+	.num_modes = ARRAY_SIZE(imxfb_mode),
+	.pwmr   = 0x00A903FF,
+	.lscr1  = 0x00120300,
+	.dmacr  = 0x00040060,
+};
+
 #ifdef CONFIG_USB
 static void pca100_usb_register(void)
 {
@@ -182,6 +259,33 @@ static int pca100_devices_init(void)
 		PE2_PF_USBOTG_DIR,
 		PE24_PF_USBOTG_CLK,
 		PE25_PF_USBOTG_DATA7,
+		/* display */
+		PA5_PF_LSCLK,
+		PA6_PF_LD0,
+		PA7_PF_LD1,
+		PA8_PF_LD2,
+		PA9_PF_LD3,
+		PA10_PF_LD4,
+		PA11_PF_LD5,
+		PA12_PF_LD6,
+		PA13_PF_LD7,
+		PA14_PF_LD8,
+		PA15_PF_LD9,
+		PA16_PF_LD10,
+		PA17_PF_LD11,
+		PA18_PF_LD12,
+		PA19_PF_LD13,
+		PA20_PF_LD14,
+		PA21_PF_LD15,
+		PA22_PF_LD16,
+		PA23_PF_LD17,
+		PA26_PF_PS,
+		PA28_PF_HSYNC,
+		PA29_PF_VSYNC,
+		PA31_PF_OE_ACD,
+		/* external I2C */
+		PD17_PF_I2C_DATA,
+		PD18_PF_I2C_CLK,
 	};
 
 	PCCR0 |= PCCR0_SDHC2_EN;
@@ -195,6 +299,7 @@ static int pca100_devices_init(void)
 	imx27_add_nand(&nand_info);
 	imx27_add_fec(&fec_info);
 	imx27_add_mmc0(NULL);
+	imx27_add_fb(&pca100_fb_data);
 
 	PCCR1 |= PCCR1_PERCLK2_EN;
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
