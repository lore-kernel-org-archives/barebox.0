Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T74Kb-00039y-Oy
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 12:58:48 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 30 Aug 2012 14:58:37 +0200
Message-Id: <1346331518-28175-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346331518-28175-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346331518-28175-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] ARM i.MX6: Add usb-ehci to sabrelite
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c |   20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 13279bc..6490988 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -77,6 +77,11 @@ static iomux_v3_cfg_t sabrelite_pads[] = {
 	MX6Q_PAD_EIM_D17__ECSPI1_MISO,
 	MX6Q_PAD_EIM_D18__ECSPI1_MOSI,
 	MX6Q_PAD_EIM_D19__GPIO_3_19,	/* CS1 */
+
+	/* USB */
+	MX6Q_PAD_GPIO_17__GPIO_7_12,
+	MX6Q_PAD_EIM_D22__GPIO_3_22,
+	MX6Q_PAD_EIM_D30__USBOH3_USBH1_OC,
 };
 
 static iomux_v3_cfg_t sabrelite_enet_pads[] = {
@@ -227,6 +232,19 @@ static struct esdhc_platform_data sabrelite_sd4_data = {
 	.wp_type = ESDHC_WP_NONE,
 };
 
+static void sabrelite_ehci_init(void)
+{
+	imx6_usb_phy1_disable_oc();
+	imx6_usb_phy1_enable();
+
+	/* hub reset */
+	gpio_direction_output(204, 0);
+	udelay(2000);
+	gpio_set_value(204, 1);
+
+	add_generic_usb_ehci_device(1, MX6_USBOH3_USB_BASE_ADDR + 0x200, NULL);
+}
+
 static int sabrelite_devices_init(void)
 {
 	imx6_add_mmc2(&sabrelite_sd3_data);
@@ -237,6 +255,8 @@ static int sabrelite_devices_init(void)
 	imx6_add_fec(&fec_info);
 	mx6_rgmii_rework();
 
+	sabrelite_ehci_init();
+
 	spi_register_board_info(sabrelite_spi_board_info,
 			ARRAY_SIZE(sabrelite_spi_board_info));
 	imx6_add_spi0(&sabrelite_spi_0_data);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
