Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1wVt-0005xC-NK
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 16:36:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1g1wVf-0004Oi-Iv
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 18:36:27 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 17 Sep 2018 18:36:26 +0200
Message-Id: <20180917163627.14746-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: rdu2: config PMIC SW1AB and SW1C rails to 1.375
To: barebox@lists.infradead.org

This is the default out-of-reset voltage, but if only the i.MX6 SoC
got reset, the PMIC might still be stuck at the lower volatge for the
slow operating point.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index f6c908c9f16d..bce221bf8d20 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -137,10 +137,27 @@ late_initcall(rdu2_enable_front_panel_usb);
 
 static int rdu2_devices_init(void)
 {
+	struct i2c_client client;
+
 	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
 	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
 		return 0;
 
+	client.adapter = i2c_get_adapter(1);
+	if (client.adapter) {
+		u8 reg;
+
+		/*
+		 * Reset PMIC SW1AB and SW1C rails to 1.375V. If an event
+		 * caused only the i.MX6 SoC reset, the PMIC might still be
+		 * stuck on the low voltage for the slow operating point.
+		 */
+		client.addr = 0x08; /* PMIC i2c address */
+		reg = 0x2b; /* 1.375V, valid for both rails */
+		i2c_write_reg(&client, 0x20, &reg, 1);
+		i2c_write_reg(&client, 0x2e, &reg, 1);
+	}
+
 	barebox_set_hostname("rdu2");
 
 	imx6_bbu_internal_spi_i2c_register_handler("SPI", "/dev/m25p0.barebox",
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
