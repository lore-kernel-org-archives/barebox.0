Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTwOp-0007oV-Ez
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 15:09:45 +0000
Received: from mail403.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id CC058104F660
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 16:16:46 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 16:07:21 +0100
Message-Id: <1351782447-32199-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121101143352.GJ29599@game.jcrosoft.org>
References: <20121101143352.GJ29599@game.jcrosoft.org>
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
Subject: [PATCH 1/7] at91sam9x5: add i2c support
To: barebox@lists.infradead.org

use i2c-gpio until we add the hw drivers

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9x5_devices.c |   58 +++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/board.h |    3 ++
 2 files changed, 61 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 26a380d..5a24325 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -19,6 +19,7 @@
 #include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
+#include <i2c/i2c-gpio.h>
 
 #include "generic.h"
 
@@ -169,6 +170,63 @@ void __init at91_add_device_nand(struct atmel_nand_data *data)
 void __init at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+#if defined(CONFIG_I2C_GPIO)
+static struct i2c_gpio_platform_data pdata_i2c0 = {
+	.sda_pin		= AT91_PIN_PA30,
+	.sda_is_open_drain	= 1,
+	.scl_pin		= AT91_PIN_PA31,
+	.scl_is_open_drain	= 1,
+	.udelay			= 5,		/* ~100 kHz */
+};
+
+static struct i2c_gpio_platform_data pdata_i2c1 = {
+	.sda_pin		= AT91_PIN_PC0,
+	.sda_is_open_drain	= 1,
+	.scl_pin		= AT91_PIN_PC1,
+	.scl_is_open_drain	= 1,
+	.udelay			= 5,		/* ~100 kHz */
+};
+
+static struct i2c_gpio_platform_data pdata_i2c2 = {
+	.sda_pin		= AT91_PIN_PB4,
+	.sda_is_open_drain	= 1,
+	.scl_pin		= AT91_PIN_PB5,
+	.scl_is_open_drain	= 1,
+	.udelay			= 5,		/* ~100 kHz */
+};
+
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices)
+{
+	struct i2c_gpio_platform_data *pdata;
+
+	i2c_register_board_info(i2c_id, devices, nr_devices);
+
+	switch (i2c_id) {
+	case 0:
+		pdata = &pdata_i2c0;
+		break;
+	case 1:
+		pdata = &pdata_i2c1;
+		break;
+	case 2:
+		pdata = &pdata_i2c2;
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
 /* --------------------------------------------------------------------
  *  UART
  * -------------------------------------------------------------------- */
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 670c73d..1ce0762 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -21,6 +21,7 @@
 #include <mach/hardware.h>
 #include <sizes.h>
 #include <net.h>
+#include <i2c/i2c.h>
 #include <spi/spi.h>
 #include <linux/mtd/mtd.h>
 
@@ -71,6 +72,8 @@ struct at91_ether_platform_data {
 
 void at91_add_device_eth(int id, struct at91_ether_platform_data *data);
 
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices);
+
 /* SDRAM */
 void at91_add_device_sdram(u32 size);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
