Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIPsM-00081L-8S
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 19:40:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2012 21:40:05 +0200
Message-Id: <1334259605-21907-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334259605-21907-1-git-send-email-s.hauer@pengutronix.de>
References: <1334259605-21907-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM i.MX53 LOCO: Add USB support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/board.c |   17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 6ae597a..78e8f9a 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -95,6 +95,8 @@ static struct pad_desc loco_pads[] = {
 	/* I2C0 */
 	MX53_PAD_CSI0_DAT8__I2C1_SDA,
 	MX53_PAD_CSI0_DAT9__I2C1_SCL,
+
+	MX53_PAD_PATA_DA_2__GPIO7_8,
 };
 
 static struct i2c_board_info i2c_devices[] = {
@@ -149,6 +151,7 @@ static void loco_fec_reset(void)
 #define LOCO_SD3_CD			IMX_GPIO_NR(3, 11)
 #define LOCO_SD3_WP			IMX_GPIO_NR(3, 12)
 #define LOCO_SD1_CD			IMX_GPIO_NR(3, 13)
+#define MX53_LOCO_USB_PWREN		IMX_GPIO_NR(7, 8)
 
 static struct esdhc_platform_data loco_sd1_data = {
 	.cd_gpio = LOCO_SD1_CD,
@@ -163,8 +166,19 @@ static struct esdhc_platform_data loco_sd3_data = {
 	.wp_type = ESDHC_WP_GPIO,
 };
 
+static void loco_ehci_init(void)
+{
+	/* USB PWR enable */
+	gpio_direction_output(MX53_LOCO_USB_PWREN, 0);
+	gpio_set_value(MX53_LOCO_USB_PWREN, 1);
+
+	writel(0, MX53_OTG_BASE_ADDR + 0x384); /* setup portsc */
+	add_generic_usb_ehci_device(1, MX53_OTG_BASE_ADDR + 0x200, NULL);
+}
+
 static int loco_devices_init(void)
 {
+
 	imx53_iim_register_fec_ethaddr();
 	imx53_add_fec(&fec_info);
 	imx53_add_mmc0(&loco_sd1_data);
@@ -172,6 +186,9 @@ static int loco_devices_init(void)
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	imx53_add_i2c0(NULL);
 
+	if (IS_ENABLED(CONFIG_USB_EHCI))
+		loco_ehci_init();
+
 	loco_fec_reset();
 
 	set_silicon_rev(imx_silicon_revision());
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
