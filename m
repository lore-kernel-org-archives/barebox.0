Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUhIe-0003En-6h
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 15:05:23 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0000UE-Ft
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0003xk-BR
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 20 Dec 2010 16:05:09 +0100
Message-Id: <1292857509-13881-11-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
References: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1969491406=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?q?=5BPATCH=2010/10=5D=20ARM=20Chumby-Falconwing=3A=20Add=20a=20user=20for=20video=20graphics=20support=20on=20i=2EMX23?=
To: barebox@lists.infradead.org

--===============1969491406==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c |   88 +++++++++++++++++------
 arch/arm/configs/chumbyone_defconfig           |    3 +
 2 files changed, 68 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 93ce7e2..f5ed133 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -28,6 +28,7 @@
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <mach/mci.h>
+#include <mach/fb.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
@@ -53,6 +54,45 @@ static struct device_d mci_dev = {
 	.platform_data = &mci_pdata,
 };
 
+static struct fb_videomode falconwing_vmode = {
+	/*
+	 * Nanovision NMA35QV65-B2-K01 (directly connected)
+	 * Clock: 6.25 MHz
+	 * Syncs: high active, DE low active
+	 * Display area: 70.08 mm x 52.56 mm
+	 */
+	.name = "NMA35",
+	.refresh = 60,
+	.xres = 320,
+	.yres = 240,
+	.pixclock = KHZ2PICOS(6250),    /* max. 10 MHz */
+	/* line lenght should be 64 �s */
+	.left_margin = 28,
+	.hsync_len = 24,
+	.right_margin = 28,
+	/* frame rate should be 60 Hz */
+	.upper_margin = 8,
+	.vsync_len = 4,
+	.lower_margin = 8,
+	.sync = FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	.vmode = FB_VMODE_NONINTERLACED,
+	.flag = 0,
+};
+
+static struct imx_fb_videomode fb_mode = {
+	.mode_list = &falconwing_vmode,
+	.mode_cnt = 1,
+	/* the NMA35 is a 24 bit display, but only 18 bits are connected */
+	.ld_intf_width = STMLCDIF_18BIT,
+};
+
+static struct device_d ldcif_dev = {
+	.name = "stmfb",
+	.map_base = IMX_FB_BASE,
+	.size = 4096,
+	.platform_data = &fb_mode,
+};
+
 static const uint32_t pad_setup[] = {
 	/* may be not required as already done by the bootlet code */
 #if 0
@@ -113,33 +153,34 @@ static const uint32_t pad_setup[] = {
 	PWM0_DUART_RX | STRENGTH(S4MA),	/*  strength is TBD */
 
 	/* lcd */
-	LCD_VSYNC,	/* kernel tries with 12 mA for all LCD related pins */
-	LCD_HSYNC,
-	LCD_ENABE,
-	LCD_DOTCLOCK,
-	LCD_D17,
-	LCD_D16,
-	LCD_D15,
-	LCD_D14,
-	LCD_D13,
-	LCD_D12,
-	LCD_D11,
-	LCD_D10,
-	LCD_D9,
-	LCD_D8,
-	LCD_D7,
-	LCD_D6,
-	LCD_D5,
-	LCD_D4,
-	LCD_D3,
-	LCD_D2,
-	LCD_D1,
-	LCD_D0,
+	LCD_VSYNC | STRENGTH(S12MA),
+	LCD_HSYNC | STRENGTH(S12MA),
+	LCD_ENABE | STRENGTH(S12MA),
+	LCD_DOTCLOCK | STRENGTH(S12MA),
+	LCD_D17 | STRENGTH(S12MA),
+	LCD_D16 | STRENGTH(S12MA),
+	LCD_D15 | STRENGTH(S12MA),
+	LCD_D14 | STRENGTH(S12MA),
+	LCD_D13 | STRENGTH(S12MA),
+	LCD_D12 | STRENGTH(S12MA),
+	LCD_D11 | STRENGTH(S12MA),
+	LCD_D10 | STRENGTH(S12MA),
+	LCD_D9 | STRENGTH(S12MA),
+	LCD_D8 | STRENGTH(S12MA),
+	LCD_D7 | STRENGTH(S12MA),
+	LCD_D6 | STRENGTH(S12MA),
+	LCD_D5 | STRENGTH(S12MA),
+	LCD_D4 | STRENGTH(S12MA),
+	LCD_D3 | STRENGTH(S12MA),
+	LCD_D2 | STRENGTH(S12MA),
+	LCD_D1 | STRENGTH(S12MA),
+	LCD_D0 | STRENGTH(S12MA),
 
 	/* LCD usage currently unknown */
 	LCD_CS,	/* used as SPI SS */
 	LCD_RS,	/* used as SPI CLK */
-	LCD_RESET,
+	/* keep the display in reset state */
+	LCD_RESET_GPIO | STRENGTH(S4MA) | GPIO_OUT | GPIO_VALUE(0),
 	LCD_WR,	/* used as SPI MOSI */
 
 	/* I2C to the MMA7455L, KXTE9, AT24C08 (DCID), AT24C128B (ID EEPROM) and QN8005B */
@@ -270,6 +311,7 @@ static int falconwing_devices_init(void)
 	/* run the SSP unit clock at 100,000 kHz */
 	imx_set_sspclk(0, 100000000, 1);
 	register_device(&mci_dev);
+	register_device(&ldcif_dev);
 
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void*)(sdram_dev.map_base + 0x100));
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index 595b6a9..6e6623a 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -23,7 +23,10 @@ CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_BMP=y
 # CONFIG_SPI is not set
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_STM=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_STM378X=y
-- 
1.7.2.3



--===============1969491406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1969491406==--
