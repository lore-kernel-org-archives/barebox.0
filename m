Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8RXp-0002Je-UG
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 11:43:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 12:43:31 +0100
Message-Id: <1450093411-13885-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
References: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] rtc: Add Abracon driver
To: Barebox List <barebox@lists.infradead.org>

This patch adds support for the Abracon ab-rtcmc-32.768khz-eoz9-s3
RTC. The driver can probably support other Abracon RTCs aswell, but this
hasn't been verified.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/rtc/Kconfig       |   3 ++
 drivers/rtc/Makefile      |   1 +
 drivers/rtc/rtc-abracon.c | 126 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 130 insertions(+)
 create mode 100644 drivers/rtc/rtc-abracon.c

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index 191ad97..7d18194 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -33,6 +33,9 @@ config RTC_DRV_DS1307
 	  registers may add features such as NVRAM, a trickle charger for
 	  the RTC/NVRAM backup power, and alarms.
 
+config RTC_DRV_ABRACON
+	tristate "Abracon RTCs"
+
 endif # I2C
 
 config RTC_DRV_JZ4740
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
index 1cc9bb8..68741c2 100644
--- a/drivers/rtc/Makefile
+++ b/drivers/rtc/Makefile
@@ -7,5 +7,6 @@ obj-$(CONFIG_RTC_CLASS)         += class.o
 
 # Keep the list ordered.
 
+obj-$(CONFIG_RTC_DRV_ABRACON)   += rtc-abracon.o
 obj-$(CONFIG_RTC_DRV_DS1307)    += rtc-ds1307.o
 obj-$(CONFIG_RTC_DRV_JZ4740)	+= rtc-jz4740.o
diff --git a/drivers/rtc/rtc-abracon.c b/drivers/rtc/rtc-abracon.c
new file mode 100644
index 0000000..b3af990
--- /dev/null
+++ b/drivers/rtc/rtc-abracon.c
@@ -0,0 +1,126 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+#include <rtc.h>
+#include <linux/rtc.h>
+#include <linux/bcd.h>
+
+struct abracon {
+	struct rtc_device	rtc;
+	struct i2c_client	*client;
+};
+
+static inline struct abracon *to_abracon_priv(struct rtc_device *rtcdev)
+{
+	return container_of(rtcdev, struct abracon, rtc);
+}
+
+static int abracon_get_time(struct rtc_device *rtcdev, struct rtc_time *t)
+{
+	struct abracon *abracon = to_abracon_priv(rtcdev);
+	struct i2c_client *client = abracon->client;
+	u8 cp[7] = {};
+	u8 reg = 8;
+	struct i2c_msg msg[2] = {};
+	int ret;
+
+	msg[0].addr = client->addr;
+	msg[0].buf = &reg;
+	msg[0].len = 1;
+
+	msg[1].addr = client->addr;
+	msg[1].flags = I2C_M_RD;
+	msg[1].buf = cp;
+	msg[1].len = 7;
+
+	ret = i2c_transfer(client->adapter, msg, 2);
+	if (ret != 2)
+		return -EIO;
+
+	t->tm_sec = bcd2bin(cp[0]);
+	t->tm_min = bcd2bin(cp[1]);
+	t->tm_hour = bcd2bin(cp[2]);
+	t->tm_mday = bcd2bin(cp[3]);
+	t->tm_wday = bcd2bin(cp[4]);
+	t->tm_mon = bcd2bin(cp[5]);
+	t->tm_year = bcd2bin(cp[6]) + 100;
+
+	return 0;
+}
+
+static int abracon_set_time(struct rtc_device *rtcdev, struct rtc_time *t)
+{
+	struct abracon *abracon = to_abracon_priv(rtcdev);
+	struct i2c_client *client = abracon->client;
+	u8 cp[8] = {};
+	int ret;
+
+	cp[0] = 8;
+	cp[1] = bin2bcd(t->tm_sec);
+	cp[2] = bin2bcd(t->tm_min);
+	cp[3] = bin2bcd(t->tm_hour);
+	cp[4] = bin2bcd(t->tm_mday);
+	cp[5] = bin2bcd(t->tm_wday);
+	cp[6] = bin2bcd(t->tm_mon);
+	cp[7] = bin2bcd(t->tm_year - 100);
+
+	ret = i2c_master_send(client, cp, 8);
+	if (ret != 8)
+		return -EIO;
+
+	return 0;
+}
+
+static const struct rtc_class_ops ds13xx_rtc_ops = {
+	.read_time	= abracon_get_time,
+	.set_time	= abracon_set_time,
+};
+
+static int abracon_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct abracon *abracon;
+	int ret;
+
+	abracon = xzalloc(sizeof(*abracon));
+
+	abracon->client = client;
+
+	abracon->rtc.ops = &ds13xx_rtc_ops;
+	abracon->rtc.dev = dev;
+
+	ret = rtc_register(&abracon->rtc);
+
+	return ret;
+};
+
+static struct platform_device_id abracon_id[] = {
+	{ "ab-rtcmc-32.768khz-eoz9-s3", 0 },
+	{ }
+};
+
+static struct driver_d abracon_driver = {
+	.name	= "rtc-abracon",
+	.probe		= abracon_probe,
+	.id_table	= abracon_id,
+};
+
+static int __init abracon_init(void)
+{
+	return i2c_driver_register(&abracon_driver);
+}
+device_initcall(abracon_init);
\ No newline at end of file
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
