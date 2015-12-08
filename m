Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6EDW-00037K-Sv
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 09:05:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Dec 2015 10:05:38 +0100
Message-Id: <1449565539-29374-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
References: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] misc: Add Microchip MCP342x support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/Kconfig   |   5 +
 drivers/misc/Makefile  |   2 +
 drivers/misc/mcp342x.c | 259 +++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 266 insertions(+)
 create mode 100644 drivers/misc/mcp342x.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index b95a7f6..8d44a5c 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -27,4 +27,9 @@ config LM75
 	depends on I2C
 	depends on IODEVICE
 
+config MCP342X
+	tristate "Microchip MCP342x ADC driver"
+	depends on I2C
+	depends on IODEVICE
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index a257dfb..6680334 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -7,3 +7,5 @@ obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-$(CONFIG_IODEVICE)		+= iodevice.o
 obj-$(CONFIG_LM75)		+= lm75.o
+obj-$(CONFIG_IODEVICE)		+= iodevice.o
+obj-$(CONFIG_MCP342X)		+= mcp342x.o
diff --git a/drivers/misc/mcp342x.c b/drivers/misc/mcp342x.c
new file mode 100644
index 0000000..e498078
--- /dev/null
+++ b/drivers/misc/mcp342x.c
@@ -0,0 +1,259 @@
+/*
+ * mcp3422.c - driver for the Microchip mcp3422/3/4/6/7/8 chip family
+ *
+ * Copyright (C) 2013, Angelo Compagnucci
+ * Author: Angelo Compagnucci <angelo.compagnucci@gmail.com>
+ *
+ * Datasheet: http://ww1.microchip.com/downloads/en/devicedoc/22088b.pdf
+ *            http://ww1.microchip.com/downloads/en/DeviceDoc/22226a.pdf
+ *
+ * This driver exports the value of analog input voltage to sysfs, the
+ * voltage unit is nV.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <iodevice.h>
+#include <malloc.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <i2c/i2c.h>
+
+/* Masks */
+#define MCP3422_CHANNEL_MASK	0x60
+#define MCP3422_PGA_MASK	0x03
+#define MCP3422_SRATE_MASK	0x0C
+#define MCP3422_SRATE_240	0x0
+#define MCP3422_SRATE_60	0x1
+#define MCP3422_SRATE_15	0x2
+#define MCP3422_SRATE_3		0x3
+#define MCP3422_PGA_1	0
+#define MCP3422_PGA_2	1
+#define MCP3422_PGA_4	2
+#define MCP3422_PGA_8	3
+#define MCP3422_CONT_SAMPLING	0x10
+
+#define MCP3422_CHANNEL(config)	(((config) & MCP3422_CHANNEL_MASK) >> 5)
+#define MCP3422_PGA(config)	((config) & MCP3422_PGA_MASK)
+#define MCP3422_SAMPLE_RATE(config)	(((config) & MCP3422_SRATE_MASK) >> 2)
+
+#define MCP3422_CHANNEL_VALUE(value) (((value) << 5) & MCP3422_CHANNEL_MASK)
+#define MCP3422_PGA_VALUE(value) ((value) & MCP3422_PGA_MASK)
+#define MCP3422_SAMPLE_RATE_VALUE(value) ((value << 2) & MCP3422_SRATE_MASK)
+
+/* Constant msleep times for data acquisitions */
+static const int mcp3422_read_times[4] = {
+	[MCP3422_SRATE_240] = 1000 / 240,
+	[MCP3422_SRATE_60] = 1000 / 60,
+	[MCP3422_SRATE_15] = 1000 / 15,
+	[MCP3422_SRATE_3] = 1000 / 3 };
+
+static const int mcp3422_sample_rate_scales[4] = {
+	[MCP3422_SRATE_240] = 8000,
+	[MCP3422_SRATE_60] = 2000,
+	[MCP3422_SRATE_15] = 500,
+	[MCP3422_SRATE_3] =  125};
+
+static const char *mcp342x_sample_rate_str[] = {
+	"240", "60", "15", "3"
+};
+
+static const char *mcp342x_gain_str[] = {
+	"1", "2", "4", "8"
+};
+
+/* sample rates to sign extension table */
+static const int mcp3422_sign_extend[4] = {
+	[MCP3422_SRATE_240] = 11,
+	[MCP3422_SRATE_60] = 13,
+	[MCP3422_SRATE_15] = 15,
+	[MCP3422_SRATE_3] = 17 };
+
+struct mcp342x_channel {
+	int num;
+	int voltage;
+	int temp;
+	struct mcp342x *mcp342x;
+	struct iochannel iochan;
+	unsigned int gain;
+};
+
+struct mcp342x {
+	struct i2c_client *i2c;
+	struct iodevice iodev;
+	unsigned int sps;
+	u8 id;
+	u8 config;
+	u8 pga[4];
+	int num_channels;
+	struct mcp342x_channel *channel[4];
+	char *unit;
+};
+
+static int mcp3422_update_config(struct mcp342x *adc, u8 newconfig)
+{
+	int ret;
+
+	ret = i2c_master_send(adc->i2c, &newconfig, 1);
+	if (ret > 0) {
+		adc->config = newconfig;
+		ret = 0;
+	}
+
+	return ret;
+}
+
+static int mcp3422_read(struct mcp342x_channel *channel)
+{
+	struct mcp342x *adc = channel->mcp342x;
+	int ret = 0;
+	u8 sample_rate = MCP3422_SAMPLE_RATE(adc->config);
+	u8 buf[4] = {0, 0, 0, 0};
+	u32 temp;
+
+	if (sample_rate == MCP3422_SRATE_3) {
+		ret = i2c_master_recv(adc->i2c, buf, 4);
+		temp = buf[0] << 16 | buf[1] << 8 | buf[2];
+	} else {
+		ret = i2c_master_recv(adc->i2c, buf, 3);
+		temp = buf[0] << 8 | buf[1];
+	}
+
+	channel->voltage = sign_extend32(temp, mcp3422_sign_extend[sample_rate]) *
+			mcp3422_sample_rate_scales[sample_rate] / (1 << channel->gain) / 8;
+
+	return ret;
+}
+
+static int mcp342x_get_voltage(struct iochannel *iochan, int *value)
+{
+	struct mcp342x_channel *channel = container_of(iochan, struct mcp342x_channel, iochan);
+	struct mcp342x *adc = channel->mcp342x;
+	u8 config;
+	int ret;
+
+	config = MCP3422_CONT_SAMPLING |
+		MCP3422_CHANNEL_VALUE(channel->num) |
+		MCP3422_PGA_VALUE(channel->gain) |
+		MCP3422_SAMPLE_RATE_VALUE(adc->sps);
+
+	if (config != adc->config) {
+		ret = mcp3422_update_config(adc, config);
+		if (ret < 0)
+			return ret;
+
+		mdelay(mcp3422_read_times[MCP3422_SAMPLE_RATE(adc->config)]);
+	}
+
+	mcp3422_read(channel);
+
+	*value = channel->voltage;
+
+	return 0;
+}
+
+static int mcp342x_probe(struct device_d *dev)
+{
+	struct mcp342x *adc;
+	int id , ret, i, num_channels;
+
+	ret = dev_get_drvdata(dev, (const void **)&id);
+	if (ret)
+		return ret;
+
+	adc = xzalloc(sizeof(*adc));
+
+	adc->i2c = to_i2c_client(dev);
+	adc->id = id;
+	adc->unit = "uV";
+
+	switch (id) {
+	case 1:
+		num_channels = 1;
+		break;
+	case 2:
+	case 3:
+	case 6:
+	case 7:
+		num_channels = 2;
+		break;
+	case 4:
+	case 8:
+		num_channels = 4;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	adc->num_channels = num_channels;
+
+	adc->sps = MCP3422_SRATE_15;
+
+	adc->iodev.hwdev = dev;
+
+	adc->iodev.channels = xmalloc(sizeof(void *) * num_channels);
+	adc->iodev.num_channels = num_channels;
+	adc->iodev.read = mcp342x_get_voltage;
+
+	for (i = 0; i < num_channels; i++) {
+		struct mcp342x_channel *channel;
+
+		channel = xzalloc(sizeof(*channel));
+		adc->iodev.channels[i] = &channel->iochan;
+		channel->iochan.unit = "uV";
+		adc->channel[i] = channel;
+		channel->num = i;
+		channel->mcp342x = adc;
+	}
+
+	ret = iodevice_register(&adc->iodev);
+	if (ret)
+		return ret;
+
+	dev_add_param_enum(&adc->iodev.dev, "in_sps", NULL, NULL, &adc->sps,
+			   mcp342x_sample_rate_str,
+			   ARRAY_SIZE(mcp342x_sample_rate_str), NULL);
+
+	for (i = 0; i < num_channels; i++) {
+		struct mcp342x_channel *channel = adc->channel[i];
+		char *name;
+
+		name = asprintf("in_gain%d", i);
+		dev_add_param_enum(&adc->iodev.dev, name, NULL, NULL, &channel->gain,
+			   mcp342x_gain_str,
+			   ARRAY_SIZE(mcp342x_gain_str), NULL);
+		free(name);
+	}
+
+	return 0;
+}
+
+static const struct platform_device_id mcp342x_ids[] = {
+	{ "mcp3421", 1 },
+	{ "mcp3422", 2 },
+	{ "mcp3423", 3 },
+	{ "mcp3424", 4 },
+	{ "mcp3426", 6 },
+	{ "mcp3427", 7 },
+	{ "mcp3428", 8 },
+	{ }
+};
+
+static struct driver_d mcp342x_driver = {
+	.name  = "mcp342x",
+	.probe = mcp342x_probe,
+	.id_table = mcp342x_ids,
+};
+
+static int mcp342x_init(void)
+{
+	i2c_driver_register(&mcp342x_driver);
+	return 0;
+}
+
+device_initcall(mcp342x_init);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
