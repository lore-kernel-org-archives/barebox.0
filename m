Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIHfT-0003qo-EK
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 18:26:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gIHfH-0008Pp-2y
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 19:25:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 Nov 2018 19:25:52 +0100
Message-Id: <20181101182555.18561-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: rdu2: config PMIC SW1AB and SW1C rails to 1.375
To: barebox@lists.infradead.org

This is the default out-of-reset voltage, but if only the i.MX6 SoC
got reset, the PMIC might still be stuck at the lower volatge for the
slow operating point.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index c99f993f02b8..49cc234c020b 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -16,6 +16,7 @@
 #include <common.h>
 #include <envfs.h>
 #include <gpio.h>
+#include <i2c/i2c.h>
 #include <init.h>
 #include <mach/bbu.h>
 #include <mach/imx6.h>
@@ -137,10 +138,27 @@ late_initcall(rdu2_enable_front_panel_usb);
 
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
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
