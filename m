Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTwOs-0007q7-F9
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 15:09:45 +0000
Received: from mail403.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1FF1F104F72F
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 16:16:47 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 16:07:26 +0100
Message-Id: <1351782447-32199-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351782447-32199-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121101143352.GJ29599@game.jcrosoft.org>
 <1351782447-32199-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] at91sam9g45: add i2c support
To: barebox@lists.infradead.org

use i2c-gpio as the hw ip is broken

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9g45_devices.c |   50 ++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 22b455e..35cd2e7 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -18,6 +18,7 @@
 #include <mach/board.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
+#include <i2c/i2c-gpio.h>
 
 #include "generic.h"
 
@@ -132,6 +133,55 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+/* --------------------------------------------------------------------
+ *  TWI (i2c)
+ * -------------------------------------------------------------------- */
+#if defined(CONFIG_I2C_GPIO) || defined(CONFIG_I2C_GPIO_MODULE)
+static struct i2c_gpio_platform_data pdata_i2c0 = {
+	.sda_pin		= AT91_PIN_PA20,
+	.sda_is_open_drain	= 1,
+	.scl_pin		= AT91_PIN_PA21,
+	.scl_is_open_drain	= 1,
+	.udelay			= 5,		/* ~100 kHz */
+};
+
+static struct i2c_gpio_platform_data pdata_i2c1 = {
+	.sda_pin		= AT91_PIN_PB10,
+	.sda_is_open_drain	= 1,
+	.scl_pin		= AT91_PIN_PB11,
+	.scl_is_open_drain	= 1,
+	.udelay			= 5,		/* ~100 kHz */
+};
+
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices)
+{
+	struct i2c_gpio_platform_data *pdata = &pdata_i2c;
+
+	i2c_register_board_info(i2c_id, devices, nr_devices);
+
+	switch (i2c_id) {
+	case 0;
+		pdata = &pdata_i2c0;
+		break;
+	case 1;
+		pdata = &pdata_i2c1;
+		break;
+	default:
+		return;
+	}
+
+	at91_set_GPIO_periph(pdata->sda_pin, 1);		/* TWD (SDA) */
+	at91_set_multi_drive(pdata->sda_pin, 1);
+
+	at91_set_GPIO_periph(pdata->scl_pin, 1);		/* TWCK (SCL) */
+	at91_set_multi_drive(pdata->scl_pin, 1);
+
+	add_generic_device_res("i2c-gpio", i2c_id, NULL, 0, pdata);
+}
+#else
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices) {}
+#endif
+
 resource_size_t __init at91_configure_dbgu(void)
 {
 	at91_set_A_periph(AT91_PIN_PB12, 0);		/* DRXD */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
