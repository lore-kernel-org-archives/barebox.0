Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCEF4-0007fg-Un
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 18:02:12 +0000
Received: by lbol5 with SMTP id l5so4938227lbo.36
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2012 11:02:05 -0700 (PDT)
From: esben.haabendal@gmail.com
Date: Mon, 26 Mar 2012 20:02:02 +0200
Message-Id: <1332784922-4671-1-git-send-email-esben.haabendal@gmail.com>
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
Subject: [PATCH 1/2] mx28-evk: Add LCD support
To: barebox@lists.infradead.org
Cc: Allan Heldgaard <allan.heldgaard@prevas.dk>, Esben Haabendal <esben.haabendal@prevas.dk>

From: Allan Heldgaard <allan.heldgaard@prevas.dk>

Derived from TX28 board code (tx28-stk5.c).

Signed-off-by: Allan Heldgaard <allan.heldgaard@prevas.dk>
Signed-off-by: Esben Haabendal <esben.haabendal@prevas.dk>
---
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   86 +++++++++++++++++++++++++
 1 files changed, 86 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index b80b910..9168ed8 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -31,6 +31,8 @@
 #include <asm/armlinux.h>
 #include <asm/mmu.h>
 
+#include <mach/fb.h>
+
 #include <generated/mach-types.h>
 
 #define MX28EVK_FEC_PHY_RESET_GPIO	141
@@ -73,6 +75,39 @@ static const uint32_t mx28evk_pads[] = {
 	PWM3_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
 	/* MCI write protect 1 = not protected */
 	SSP1_SCK_GPIO | VE_3_3V | GPIO_IN,
+
+	/* lcd */
+	LCD_WR_RWN_LCD_HSYNC | VE_3_3V | STRENGTH(S8MA),
+	LCD_RD_E_LCD_VSYNC | VE_3_3V | STRENGTH(S8MA),
+	LCD_CS_LCD_ENABLE | VE_3_3V | STRENGTH(S8MA),
+	LCD_RS_LCD_DOTCLK | VE_3_3V | STRENGTH(S8MA),
+	LCD_D0 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D1 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D2 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D3 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D4 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D5 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D6 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D7 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D8 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D9 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D10 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D11 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D12 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D13 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D14 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D15 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D16 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D17 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D18 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D19 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D20 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D21 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D22 | VE_3_3V | STRENGTH(S8MA),
+	LCD_D23 | VE_3_3V | STRENGTH(S8MA),
+	LCD_RESET_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
+	/* backlight  */
+	PWM2_GPIO | VE_3_3V | STRENGTH(S4MA) | SE | VE,
 };
 
 static struct mxs_mci_platform_data mci_pdata = {
@@ -95,6 +130,54 @@ static struct fec_platform_data fec_info = {
 	.phy_addr = 0,
 };
 
+/* LCD */
+static struct fb_videomode mx28_evk_vmodes[] = {
+	{
+		.name = "43WVF1G-0",
+		.refresh = 60,
+		.xres = 800,
+		.yres = 480,
+		.pixclock = 29851 /* (33,5 MHz) */,
+		.left_margin = 89,
+		.hsync_len = 10,
+		.right_margin = 164,
+		.upper_margin = 23,
+		.vsync_len = 10,
+		.lower_margin = 10,
+		.sync = FB_SYNC_DE_HIGH_ACT | FB_SYNC_CLK_INVERT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+	}
+};
+
+#define MAX_FB_SIZE SZ_2M
+
+#define GPIO_LCD_RESET	126 /* Reset  */
+#define GPIO_BACKLIGHT	114 /* Backlight active */
+
+static void mx28_evk_fb_enable(int enable)
+{
+	gpio_direction_output(GPIO_LCD_RESET, enable);
+
+	/* Give the display a chance to sync before we enable
+	 * the backlight to avoid flickering
+	 */
+	if (enable)
+		mdelay(200);
+
+	gpio_direction_output(GPIO_BACKLIGHT, enable);
+}
+
+static struct imx_fb_platformdata mx28_evk_fb_pdata = {
+	.mode_list = mx28_evk_vmodes,
+	.mode_cnt = ARRAY_SIZE(mx28_evk_vmodes),
+	.dotclk_delay = 0,			/* no adaption required */
+	.ld_intf_width = STMLCDIF_24BIT,	/* full 24 bit */
+	.bits_per_pixel = 32,
+	.fixed_screen = NULL,
+	.enable = mx28_evk_fb_enable,
+};
+
 static int mx28_evk_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
@@ -122,6 +205,9 @@ static int mx28_evk_devices_init(void)
 	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0,
 			   IORESOURCE_MEM, &mci_pdata);
 
+	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
+			   IORESOURCE_MEM, &mx28_evk_fb_pdata);
+
 	imx_enable_enetclk();
 	mx28_evk_fec_reset();
 	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0,
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
