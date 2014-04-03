Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVi5x-0003jw-OK
 for barebox@lists.infradead.org; Thu, 03 Apr 2014 13:54:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  3 Apr 2014 15:53:53 +0200
Message-Id: <1396533233-2187-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6 Sabrelite: Fix ethernet
To: barebox@lists.infradead.org

The board code does a phy reset. This implicitly requests the phy reset
gpio. This gpio is also registered in the devicetree as phy reset gpio,
so the fec driver probe can't request the gpio and bails out with -EBUSY.
Fix this by freeing the phy reset gpio in the board code. While at it use
gpio_request_array for the gpios.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c | 64 ++++++++++++++++++-------
 1 file changed, 48 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 85c6151..f42489f 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -78,8 +78,48 @@ static int ksz9021rn_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
+static struct gpio fec_gpios[] = {
+	{
+		.gpio = 87,
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "phy-rst",
+	}, {
+		.gpio = 190,
+		.flags = GPIOF_OUT_INIT_HIGH,
+		.label = "phy-addr2",
+	}, {
+		.gpio = 23,
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "phy-led-mode",
+	}, {
+		/* MODE strap-in pins: advertise all capabilities */
+		.gpio = 185,
+		.flags = GPIOF_OUT_INIT_HIGH,
+		.label = "phy-adv1",
+	}, {
+		.gpio = 187,
+		.flags = GPIOF_OUT_INIT_HIGH,
+		.label = "phy-adv1",
+	}, {
+		.gpio = 188,
+		.flags = GPIOF_OUT_INIT_HIGH,
+		.label = "phy-adv1",
+	}, {
+		.gpio = 189,
+		.flags = GPIOF_OUT_INIT_HIGH,
+		.label = "phy-adv1",
+	}, {
+		/* Enable 125 MHz clock output */
+		.gpio = 184,
+		.flags = GPIOF_OUT_INIT_HIGH,
+		.label = "phy-125MHz",
+	},
+};
+
 static int sabrelite_ksz9021rn_setup(void)
 {
+	int ret;
+
 	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
 	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
 		return 0;
@@ -87,24 +127,16 @@ static int sabrelite_ksz9021rn_setup(void)
 	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet_gpio_pads,
 			ARRAY_SIZE(sabrelite_enet_gpio_pads));
 
-	gpio_direction_output(87, 0);  /* GPIO 3-23 */
-
-	gpio_direction_output(190, 1); /* GPIO 6-30: PHYAD2 */
-
-	/* LED-Mode: Tri-Color Dual LED Mode */
-	gpio_direction_output(23 , 0); /* GPIO 1-23 */
-
-	/* MODE strap-in pins: advertise all capabilities */
-	gpio_direction_output(185, 1); /* GPIO 6-25 */
-	gpio_direction_output(187, 1); /* GPIO 6-27 */
-	gpio_direction_output(188, 1); /* GPIO 6-28*/
-	gpio_direction_output(189, 1); /* GPIO 6-29 */
-
-	/* Enable 125 MHz clock output */
-        gpio_direction_output(184, 1); /* GPIO 6-24 */
+	ret = gpio_request_array(fec_gpios, ARRAY_SIZE(fec_gpios));
+	if (ret) {
+		pr_err("Failed to request fec gpios: %s\n", strerror(-ret));
+		return ret;
+	}
 
 	mdelay(10);
-	gpio_set_value(87, 1);
+
+	/* FEC driver picks up the reset gpio later and releases the phy reset */
+	gpio_free_array(fec_gpios, ARRAY_SIZE(fec_gpios));
 
 	return 0;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
