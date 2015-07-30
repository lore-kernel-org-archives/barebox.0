Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([2a01:198:210:70::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKpCM-0005hH-Pp
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 14:52:46 +0000
Received: from polaris.fritz.box (f053152215.adsl.alicedsl.de [78.53.152.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 27CE8C1A2E
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2015 16:52:18 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Thu, 30 Jul 2015 16:52:06 +0200
Message-Id: <1438267931-22374-2-git-send-email-jluebbe@debian.org>
In-Reply-To: <1438267931-22374-1-git-send-email-jluebbe@debian.org>
References: <1438267931-22374-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH v2 1/6] i2c: add bus recovery infrastructure
To: barebox@lists.infradead.org

This is based on the code introduced to the kernel in
5f9296ba21b3c395e53dd84e7ff9578f97f24295.

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/i2c/i2c.c | 130 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/i2c.h |  45 +++++++++++++++++++
 2 files changed, 175 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index ebc7e23..73bbddb 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -23,6 +23,7 @@
 #include <xfuncs.h>
 #include <init.h>
 #include <of.h>
+#include <gpio.h>
 
 #include <i2c/i2c.h>
 
@@ -228,6 +229,135 @@ int i2c_write_reg(struct i2c_client *client, u32 addr, const u8 *buf, u16 count)
 }
 EXPORT_SYMBOL(i2c_write_reg);
 
+/* i2c bus recovery routines */
+int i2c_get_scl_gpio_value(struct i2c_adapter *adap)
+{
+	gpio_direction_input(adap->bus_recovery_info->scl_gpio);
+	return gpio_get_value(adap->bus_recovery_info->scl_gpio);
+}
+
+void i2c_set_scl_gpio_value(struct i2c_adapter *adap, int val)
+{
+	if (val)
+		gpio_direction_input(adap->bus_recovery_info->scl_gpio);
+	else
+		gpio_direction_output(adap->bus_recovery_info->scl_gpio, 0);
+}
+
+int i2c_get_sda_gpio_value(struct i2c_adapter *adap)
+{
+	return gpio_get_value(adap->bus_recovery_info->sda_gpio);
+}
+
+static int i2c_get_gpios_for_recovery(struct i2c_adapter *adap)
+{
+	struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
+	struct device_d *dev = &adap->dev;
+	int ret = 0;
+
+	ret = gpio_request_one(bri->scl_gpio, GPIOF_IN, "i2c-scl");
+	if (ret) {
+		dev_warn(dev, "Can't get SCL gpio: %d\n", bri->scl_gpio);
+		return ret;
+	}
+
+	if (bri->get_sda) {
+		if (gpio_request_one(bri->sda_gpio, GPIOF_IN, "i2c-sda")) {
+			/* work without SDA polling */
+			dev_warn(dev, "Can't get SDA gpio: %d. Not using SDA polling\n",
+					bri->sda_gpio);
+			bri->get_sda = NULL;
+		}
+	}
+
+	return ret;
+}
+
+static void i2c_put_gpios_for_recovery(struct i2c_adapter *adap)
+{
+	struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
+
+	if (bri->get_sda)
+		gpio_free(bri->sda_gpio);
+
+	gpio_free(bri->scl_gpio);
+}
+
+/*
+ * We are generating clock pulses. ndelay() determines durating of clk pulses.
+ * We will generate clock with rate 100 KHz and so duration of both clock levels
+ * is: delay in ns = (10^6 / 100) / 2
+ */
+#define RECOVERY_NDELAY		5000
+#define RECOVERY_CLK_CNT	9
+
+static int i2c_generic_recovery(struct i2c_adapter *adap)
+{
+	struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
+	int i = 0, val = 1, ret = 0;
+
+	if (bri->prepare_recovery)
+		bri->prepare_recovery(adap);
+
+	bri->set_scl(adap, val);
+	ndelay(RECOVERY_NDELAY);
+
+	/*
+	 * By this time SCL is high, as we need to give 9 falling-rising edges
+	 */
+	while (i++ < RECOVERY_CLK_CNT * 2) {
+		if (val) {
+			/* Break if SDA is high */
+			if (bri->get_sda && bri->get_sda(adap))
+					break;
+			/* SCL shouldn't be low here */
+			if (!bri->get_scl(adap)) {
+				dev_err(&adap->dev,
+					"SCL is stuck low, exit recovery\n");
+				ret = -EBUSY;
+				break;
+			}
+		}
+
+		val = !val;
+		bri->set_scl(adap, val);
+		ndelay(RECOVERY_NDELAY);
+	}
+
+	if (bri->unprepare_recovery)
+		bri->unprepare_recovery(adap);
+
+	return ret;
+}
+
+int i2c_generic_scl_recovery(struct i2c_adapter *adap)
+{
+	return i2c_generic_recovery(adap);
+}
+
+int i2c_generic_gpio_recovery(struct i2c_adapter *adap)
+{
+	int ret;
+
+	ret = i2c_get_gpios_for_recovery(adap);
+	if (ret)
+		return ret;
+
+	ret = i2c_generic_recovery(adap);
+	i2c_put_gpios_for_recovery(adap);
+
+	return ret;
+}
+
+int i2c_recover_bus(struct i2c_adapter *adap)
+{
+	if (!adap->bus_recovery_info)
+		return -EOPNOTSUPP;
+
+	dev_dbg(&adap->dev, "Trying i2c bus recovery\n");
+	return adap->bus_recovery_info->recover_bus(adap);
+}
+
 /**
  * i2c_new_device - instantiate one new I2C device
  *
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 4696f43..12e4827 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -19,6 +19,8 @@
 #include <driver.h>
 #include <linux/types.h>
 
+struct i2c_adapter;
+
 /*
  * struct i2c_platform_data - structure of platform data for MXC I2C driver
  * @param	bitrate	Bus speed measured in Hz
@@ -61,6 +63,47 @@ struct i2c_msg {
 	__u16			len;	/**< Number of data bytes in @buf being read from or written to the I2C slave address. */
 };
 
+/**
+ * struct i2c_bus_recovery_info - I2C bus recovery information
+ * @recover_bus: Recover routine. Either pass driver's recover_bus() routine, or
+ *	i2c_generic_scl_recovery() or i2c_generic_gpio_recovery().
+ * @get_scl: This gets current value of SCL line. Mandatory for generic SCL
+ *	recovery. Used internally for generic GPIO recovery.
+ * @set_scl: This sets/clears SCL line. Mandatory for generic SCL recovery. Used
+ *	internally for generic GPIO recovery.
+ * @get_sda: This gets current value of SDA line. Optional for generic SCL
+ *	recovery. Used internally, if sda_gpio is a valid GPIO, for generic GPIO
+ *	recovery.
+ * @prepare_recovery: This will be called before starting recovery. Platform may
+ *	configure padmux here for SDA/SCL line or something else they want.
+ * @unprepare_recovery: This will be called after completing recovery. Platform
+ *	may configure padmux here for SDA/SCL line or something else they want.
+ * @scl_gpio: gpio number of the SCL line. Only required for GPIO recovery.
+ * @sda_gpio: gpio number of the SDA line. Only required for GPIO recovery.
+ */
+struct i2c_bus_recovery_info {
+	int (*recover_bus)(struct i2c_adapter *);
+
+	int (*get_scl)(struct i2c_adapter *);
+	void (*set_scl)(struct i2c_adapter *, int val);
+	int (*get_sda)(struct i2c_adapter *);
+
+	void (*prepare_recovery)(struct i2c_adapter *);
+	void (*unprepare_recovery)(struct i2c_adapter *);
+
+	/* gpio recovery */
+	int scl_gpio;
+	int sda_gpio;
+};
+
+int i2c_recover_bus(struct i2c_adapter *adap);
+
+/* Generic recovery routines */
+int i2c_get_scl_gpio_value(struct i2c_adapter *adap);
+void i2c_set_scl_gpio_value(struct i2c_adapter *adap, int val);
+int i2c_get_sda_gpio_value(struct i2c_adapter *adap);
+int i2c_generic_gpio_recovery(struct i2c_adapter *adap);
+int i2c_generic_scl_recovery(struct i2c_adapter *adap);
 
 /**
  * i2c_adapter is the structure used to identify a physical i2c bus
@@ -74,6 +117,8 @@ struct i2c_adapter {
 	struct list_head	list;
 	int			retries;
 	void 			*algo_data;
+
+	struct i2c_bus_recovery_info *bus_recovery_info;
 };
 
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
