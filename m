Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQg-0008Bx-Tu
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000Z2-HR
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000JO-I5
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:25 +0200
Message-Id: <20200928155041.32649-3-m.felsch@pengutronix.de>
In-Reply-To: <20200928155041.32649-1-m.felsch@pengutronix.de>
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/18] ARM: boards: mx6-sabrelite: [cosmetic] make use of
 IMX_GPIO_NR
To: barebox@lists.infradead.org

Convert the global number to the more readable IMX_GPIO_NR() macro, no
functional changes.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../boards/freescale-mx6-sabrelite/board.c    | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index f4f2994a51..020a44297a 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -70,37 +70,37 @@ static int ksz9021rn_phy_fixup(struct phy_device *dev)
 
 static struct gpio fec_gpios[] = {
 	{
-		.gpio = 87,
+		.gpio = IMX_GPIO_NR(3, 23),
 		.flags = GPIOF_OUT_INIT_LOW,
 		.label = "phy-rst",
 	}, {
-		.gpio = 190,
+		.gpio = IMX_GPIO_NR(6, 30),
 		.flags = GPIOF_OUT_INIT_HIGH,
 		.label = "phy-addr2",
 	}, {
-		.gpio = 23,
+		.gpio = IMX_GPIO_NR(1, 23),
 		.flags = GPIOF_OUT_INIT_LOW,
 		.label = "phy-led-mode",
 	}, {
 		/* MODE strap-in pins: advertise all capabilities */
-		.gpio = 185,
+		.gpio = IMX_GPIO_NR(6, 25),
 		.flags = GPIOF_OUT_INIT_HIGH,
 		.label = "phy-adv1",
 	}, {
-		.gpio = 187,
+		.gpio = IMX_GPIO_NR(6, 27),
 		.flags = GPIOF_OUT_INIT_HIGH,
 		.label = "phy-adv1",
 	}, {
-		.gpio = 188,
+		.gpio = IMX_GPIO_NR(6, 28),
 		.flags = GPIOF_OUT_INIT_HIGH,
 		.label = "phy-adv1",
 	}, {
-		.gpio = 189,
+		.gpio = IMX_GPIO_NR(6, 29),
 		.flags = GPIOF_OUT_INIT_HIGH,
 		.label = "phy-adv1",
 	}, {
 		/* Enable 125 MHz clock output */
-		.gpio = 184,
+		.gpio = IMX_GPIO_NR(6, 24),
 		.flags = GPIOF_OUT_INIT_HIGH,
 		.label = "phy-125MHz",
 	},
@@ -139,9 +139,9 @@ fs_initcall(sabrelite_ksz9021rn_setup);
 static void sabrelite_ehci_init(void)
 {
 	/* hub reset */
-	gpio_direction_output(204, 0);
+	gpio_direction_output(IMX_GPIO_NR(7, 12), 0);
 	udelay(2000);
-	gpio_set_value(204, 1);
+	gpio_set_value(IMX_GPIO_NR(7, 12), 1);
 }
 
 static int sabrelite_devices_init(void)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
