Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3EZf-0000pQ-48
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 06:05:59 +0000
Received: by mail-pl1-x643.google.com with SMTP id g2-v6so5453734plo.2
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2018 23:05:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 20 Sep 2018 23:05:31 -0700
Message-Id: <20180921060532.21485-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180921060532.21485-1-andrew.smirnov@gmail.com>
References: <20180921060532.21485-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/3] aiodev: Port Linux driver for i.MX8MQ CPU thermal
 sensor
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This patch is a minimal port of the corresponding driver that can be
found in Linux kernel (drivers/thermal/qoriq_thermal.c).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since [v1]:

    - None

[v1] http://lists.infradead.org/pipermail/barebox/2018-September/034789.html

 drivers/aiodev/Kconfig         |   7 +
 drivers/aiodev/Makefile        |   1 +
 drivers/aiodev/qoriq_thermal.c | 264 +++++++++++++++++++++++++++++++++
 3 files changed, 272 insertions(+)
 create mode 100644 drivers/aiodev/qoriq_thermal.c

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 3eabd3b3f..7f1d0fd4a 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -16,6 +16,13 @@ config IMX_THERMAL
          Support for Temperature Monitor (TEMPMON) found on Freescale
          i.MX SoCs.
 
+config QORIQ_THERMAL
+	tristate "QorIQ Thermal Monitoring Unit"
+	depends on ARCH_IMX8MQ
+	help
+	  Support for Thermal Monitoring Unit (TMU) found on QorIQ and
+	  i.MX8MQ platforms.
+
 config LM75
 	tristate "LM75 driver"
 	depends on I2C
diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
index 1dcf6cdc4..d5318deeb 100644
--- a/drivers/aiodev/Makefile
+++ b/drivers/aiodev/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_AIODEV) += core.o
 obj-$(CONFIG_IMX_THERMAL) += imx_thermal.o
 obj-$(CONFIG_LM75) += lm75.o
 obj-$(CONFIG_MC13XXX_ADC) += mc13xxx_adc.o
+obj-$(CONFIG_QORIQ_THERMAL) += qoriq_thermal.o
diff --git a/drivers/aiodev/qoriq_thermal.c b/drivers/aiodev/qoriq_thermal.c
new file mode 100644
index 000000000..d29da02a6
--- /dev/null
+++ b/drivers/aiodev/qoriq_thermal.c
@@ -0,0 +1,264 @@
+/*
+ * Copyright 2016 Freescale Semiconductor, Inc.
+ * Copyright 2017 NXP.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <clock.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <io.h>
+#include <aiodev.h>
+#include <of_address.h>
+#include <linux/clk.h>
+
+#define SITES_MAX	16
+
+#define TMU_TEMP_PASSIVE_COOL_DELTA	10000
+
+/*
+ * QorIQ TMU Registers
+ */
+struct qoriq_tmu_site_regs {
+	u32 tritsr;		/* Immediate Temperature Site Register */
+	u32 tratsr;		/* Average Temperature Site Register */
+	u8 res0[0x8];
+};
+
+struct qoriq_tmu_regs {
+	u32 tmr;		/* Mode Register */
+#define TMR_DISABLE	0x0
+#define TMR_ME		0x80000000
+#define TMR_ALPF	0x0c000000
+	u32 tsr;		/* Status Register */
+	u32 tmtmir;		/* Temperature measurement interval Register */
+#define TMTMIR_DEFAULT	0x0000000f
+	u8 res0[0x14];
+	u32 tier;		/* Interrupt Enable Register */
+#define TIER_DISABLE	0x0
+	u32 tidr;		/* Interrupt Detect Register */
+	u32 tiscr;		/* Interrupt Site Capture Register */
+	u32 ticscr;		/* Interrupt Critical Site Capture Register */
+	u8 res1[0x10];
+	u32 tmhtcrh;		/* High Temperature Capture Register */
+	u32 tmhtcrl;		/* Low Temperature Capture Register */
+	u8 res2[0x8];
+	u32 tmhtitr;		/* High Temperature Immediate Threshold */
+	u32 tmhtatr;		/* High Temperature Average Threshold */
+	u32 tmhtactr;	/* High Temperature Average Crit Threshold */
+	u8 res3[0x24];
+	u32 ttcfgr;		/* Temperature Configuration Register */
+	u32 tscfgr;		/* Sensor Configuration Register */
+	u8 res4[0x78];
+	struct qoriq_tmu_site_regs site[SITES_MAX];
+	u8 res5[0x9f8];
+	u32 ipbrr0;		/* IP Block Revision Register 0 */
+	u32 ipbrr1;		/* IP Block Revision Register 1 */
+	u8 res6[0x310];
+	u32 ttr0cr;		/* Temperature Range 0 Control Register */
+	u32 ttr1cr;		/* Temperature Range 1 Control Register */
+	u32 ttr2cr;		/* Temperature Range 2 Control Register */
+	u32 ttr3cr;		/* Temperature Range 3 Control Register */
+};
+
+/*
+ * Thermal zone data
+ */
+struct qoriq_tmu_data {
+	struct device_d *dev;
+	struct clk *clk;
+	struct qoriq_tmu_regs __iomem *regs;
+	int sensor_id;
+	bool little_endian;
+	int temp_passive;
+	int temp_critical;
+
+	struct aiodevice aiodev;
+	struct aiochannel aiochan;
+};
+
+static inline struct qoriq_tmu_data *to_qoriq_tmu_data(struct aiochannel *chan)
+{
+	return container_of(chan, struct qoriq_tmu_data, aiochan);
+}
+
+static void tmu_write(struct qoriq_tmu_data *p, u32 val, void __iomem *addr)
+{
+	if (p->little_endian)
+		iowrite32(val, addr);
+	else
+		iowrite32be(val, addr);
+}
+
+static u32 tmu_read(struct qoriq_tmu_data *p, void __iomem *addr)
+{
+	if (p->little_endian)
+		return ioread32(addr);
+	else
+		return ioread32be(addr);
+}
+
+static int tmu_get_temp(struct aiochannel *chan, int *temp)
+{
+	u32 val;
+	struct qoriq_tmu_data *data = to_qoriq_tmu_data(chan);
+
+	val = tmu_read(data, &data->regs->site[data->sensor_id].tritsr);
+
+	*temp = (val & 0xff) * 1000;
+
+	return 0;
+}
+
+static int qoriq_tmu_get_sensor_id(void)
+{
+	int ret, id;
+	struct of_phandle_args sensor_specs;
+	struct device_node *np, *sensor_np;
+
+	np = of_find_node_by_name(NULL, "thermal-zones");
+	if (!np)
+		return -ENODEV;
+
+	sensor_np = of_get_next_child(np, NULL);
+	ret = of_parse_phandle_with_args(sensor_np, "thermal-sensors",
+					 "#thermal-sensor-cells",
+					 0, &sensor_specs);
+	if (ret)
+		return ret;
+
+	if (sensor_specs.args_count >= 1) {
+		id = sensor_specs.args[0];
+		WARN(sensor_specs.args_count > 1,
+				"%s: too many cells in sensor specifier %d\n",
+				sensor_specs.np->name, sensor_specs.args_count);
+	} else {
+		id = 0;
+	}
+
+	return id;
+}
+
+static int qoriq_tmu_calibration(struct qoriq_tmu_data *data)
+{
+	int i, val, len;
+	u32 range[4];
+	const u32 *calibration;
+	struct device_node *np = data->dev->device_node;
+
+	if (of_property_read_u32_array(np, "fsl,tmu-range", range, 4)) {
+		dev_err(data->dev, "missing calibration range.\n");
+		return -ENODEV;
+	}
+
+	/* Init temperature range registers */
+	tmu_write(data, range[0], &data->regs->ttr0cr);
+	tmu_write(data, range[1], &data->regs->ttr1cr);
+	tmu_write(data, range[2], &data->regs->ttr2cr);
+	tmu_write(data, range[3], &data->regs->ttr3cr);
+
+	calibration = of_get_property(np, "fsl,tmu-calibration", &len);
+	if (calibration == NULL || len % 8) {
+		dev_err(data->dev, "invalid calibration data.\n");
+		return -ENODEV;
+	}
+
+	for (i = 0; i < len; i += 8, calibration += 2) {
+		val = of_read_number(calibration, 1);
+		tmu_write(data, val, &data->regs->ttcfgr);
+		val = of_read_number(calibration + 1, 1);
+		tmu_write(data, val, &data->regs->tscfgr);
+	}
+
+	return 0;
+}
+
+static void qoriq_tmu_init_device(struct qoriq_tmu_data *data)
+{
+	/* Disable interrupt, using polling instead */
+	tmu_write(data, TIER_DISABLE, &data->regs->tier);
+
+	/* Set update_interval */
+	tmu_write(data, TMTMIR_DEFAULT, &data->regs->tmtmir);
+
+	/* Disable monitoring */
+	tmu_write(data, TMR_DISABLE, &data->regs->tmr);
+}
+
+static int qoriq_tmu_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct qoriq_tmu_data *data;
+	u32 site;
+	int ret;
+
+	data = xzalloc(sizeof(*data));
+
+	data->dev = dev;
+	data->little_endian = of_property_read_bool(np, "little-endian");
+
+	data->sensor_id = qoriq_tmu_get_sensor_id();
+	if (data->sensor_id < 0) {
+		dev_err(dev, "Failed to get sensor id\n");
+		return -ENODEV;
+	}
+
+	data->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(data->regs)) {
+		dev_err(dev, "Failed to get memory region\n");
+		return PTR_ERR(data->regs);
+	}
+
+	qoriq_tmu_init_device(data);	/* TMU initialization */
+
+	ret = qoriq_tmu_calibration(data);	/* TMU calibration */
+	if (ret < 0) {
+		dev_err(dev, "Failed to calibrate\n");
+		return ret;
+	}
+
+	data->aiodev.num_channels = 1;
+	data->aiodev.hwdev = dev;
+	data->aiodev.channels = xmalloc(data->aiodev.num_channels *
+					sizeof(data->aiodev.channels[0]));
+	data->aiodev.channels[0] = &data->aiochan;
+	data->aiochan.unit = "mC";
+	data->aiodev.read = tmu_get_temp;
+
+	ret = aiodevice_register(&data->aiodev);
+	if (ret < 0) {
+		dev_err(dev, "Failed to register aiodev\n");
+		return ret;
+	}
+
+	site = 0x1 << (15 - data->sensor_id);
+	tmu_write(data, site | TMR_ME | TMR_ALPF, &data->regs->tmr);
+
+	return 0;
+}
+
+static const struct of_device_id qoriq_tmu_match[] = {
+	{ .compatible = "fsl,qoriq-tmu", },
+	{ .compatible = "fsl,imx8mq-tmu",},
+	{},
+};
+
+static struct driver_d imx_thermal_driver = {
+	.name		= "qoriq_thermal",
+	.probe		= qoriq_tmu_probe,
+	.of_compatible	= DRV_OF_COMPAT(qoriq_tmu_match),
+};
+device_platform_driver(imx_thermal_driver);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
