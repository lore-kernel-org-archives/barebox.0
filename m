Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b2LfN-0006In-HU
 for barebox@lists.infradead.org; Mon, 16 May 2016 16:46:52 +0000
Received: by mail-pa0-x244.google.com with SMTP id rw9so1007157pab.2
 for <barebox@lists.infradead.org>; Mon, 16 May 2016 09:46:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 May 2016 09:46:00 -0700
Message-Id: <1463417161-28634-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1463417161-28634-1-git-send-email-andrew.smirnov@gmail.com>
References: <1463417161-28634-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 5/6] aiodev: Add TEMPMON driver
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port TEMPMON driver from U-Boot

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx6qdl.dtsi    |   1 +
 drivers/aiodev/Kconfig       |   8 ++
 drivers/aiodev/Makefile      |   1 +
 drivers/aiodev/imx_thermal.c | 216 +++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 226 insertions(+)
 create mode 100644 drivers/aiodev/imx_thermal.c

diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index 828be9c..06b1039 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -8,3 +8,4 @@
 		ipu0 = &ipu1;
 	};
 };
+
diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index d6d4ac0..185c44e 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -5,4 +5,12 @@ menuconfig AIODEV
 	bool "Analog I/O drivers"
 
 if AIODEV
+
+config IMX_THERMAL
+       tristate "Temperature sensor driver for Freescale i.MX SoCs"
+       select MFD_SYSCON
+       help
+         Support for Temperature Monitor (TEMPMON) found on Freescale
+         i.MX SoCs.
+
 endif
diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
index 806464e..5480a8a 100644
--- a/drivers/aiodev/Makefile
+++ b/drivers/aiodev/Makefile
@@ -1,2 +1,3 @@
 
 obj-$(CONFIG_AIODEV) += core.o
+obj-$(CONFIG_IMX_THERMAL) += imx_thermal.o
diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
new file mode 100644
index 0000000..6c36d2f
--- /dev/null
+++ b/drivers/aiodev/imx_thermal.c
@@ -0,0 +1,216 @@
+/*
+ * imx_thermal
+ *
+ * Copyright (c) 2015 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * based on the code of analogous driver from U-Boot:
+ * (C) Copyright 2014-2015 Freescale Semiconductor, Inc.
+ * Author: Nitin Garg <nitin.garg@freescale.com>
+ *             Ye Li <Ye.Li@freescale.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <clock.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <linux/math64.h>
+#include <linux/log2.h>
+#include <linux/clk.h>
+#include <mach/clock.h>
+#include <mach/imx6-anadig.h>
+#include <io.h>
+#include <aiodev.h>
+#include <mfd/syscon.h>
+
+#define FACTOR0			10000000
+#define MEASURE_FREQ		327
+#define OCOTP_ANA1_OFFSET      (0xE * sizeof(uint32_t))
+
+struct imx_thermal_data {
+	int c1, c2;
+	void __iomem *base;
+	struct clk *clk;
+
+	struct aiodevice aiodev;
+	struct aiochannel aiochan;
+};
+
+static inline struct imx_thermal_data *
+to_imx_thermal_data(struct aiochannel *chan)
+{
+	return container_of(chan, struct imx_thermal_data, aiochan);
+}
+
+
+static int imx_thermal_read(struct aiochannel *chan, int *val)
+{
+	uint64_t start;
+	uint32_t tempsense0, tempsense1;
+	uint16_t n_meas;
+	struct imx_thermal_data *imx_thermal = to_imx_thermal_data(chan);
+
+	/*
+	 * now we only use single measure, every time we read
+	 * the temperature, we will power on/down anadig thermal
+	 * module
+	 */
+	writel(BM_ANADIG_TEMPSENSE0_POWER_DOWN,
+	       imx_thermal->base + HW_ANADIG_TEMPSENSE0_CLR);
+	writel(BM_ANADIG_ANA_MISC0_REFTOP_SELBIASOFF,
+	       imx_thermal->base + HW_ANADIG_ANA_MISC0_SET);
+
+	/* setup measure freq */
+	tempsense1 = readl(imx_thermal->base + HW_ANADIG_TEMPSENSE1);
+	tempsense1 &= ~BM_ANADIG_TEMPSENSE1_MEASURE_FREQ;
+	tempsense1 |= MEASURE_FREQ;
+	writel(tempsense1, imx_thermal->base + HW_ANADIG_TEMPSENSE1);
+
+	/* start the measurement process */
+	writel(BM_ANADIG_TEMPSENSE0_MEASURE_TEMP,
+		imx_thermal->base + HW_ANADIG_TEMPSENSE0_CLR);
+	writel(BM_ANADIG_TEMPSENSE0_FINISHED,
+		imx_thermal->base + HW_ANADIG_TEMPSENSE0_CLR);
+	writel(BM_ANADIG_TEMPSENSE0_MEASURE_TEMP,
+	       imx_thermal->base + HW_ANADIG_TEMPSENSE0_SET);
+
+	/* make sure that the latest temp is valid */
+	start = get_time_ns();
+	do {
+		tempsense0 = readl(imx_thermal->base + HW_ANADIG_TEMPSENSE0);
+
+		if (is_timeout(start, 1 * SECOND)) {
+			dev_err(imx_thermal->aiodev.hwdev,
+				"Timeout waiting for measurement\n");
+			return -EIO;
+		}
+	} while (!(tempsense0 & BM_ANADIG_TEMPSENSE0_FINISHED));
+
+	n_meas = (tempsense0 & BM_ANADIG_TEMPSENSE0_TEMP_VALUE)
+		>> BP_ANADIG_TEMPSENSE0_TEMP_VALUE;
+	writel(BM_ANADIG_TEMPSENSE0_FINISHED,
+	       imx_thermal->base + HW_ANADIG_TEMPSENSE0_CLR);
+
+	*val = (int)n_meas * imx_thermal->c1 + imx_thermal->c2;
+
+	/* power down anatop thermal sensor */
+	writel(BM_ANADIG_TEMPSENSE0_POWER_DOWN,
+	       imx_thermal->base + HW_ANADIG_TEMPSENSE0_SET);
+	writel(BM_ANADIG_ANA_MISC0_REFTOP_SELBIASOFF,
+	       imx_thermal->base + HW_ANADIG_ANA_MISC0_CLR);
+
+	return 0;
+}
+
+static int imx_thermal_probe(struct device_d *dev)
+{
+	uint32_t ocotp_ana1;
+	struct device_node *node;
+	struct imx_thermal_data *imx_thermal;
+	struct cdev *ocotp;
+	int t1, n1, t2, n2;
+	int ret;
+
+	node = of_parse_phandle(dev->device_node, "fsl,tempmon-data", 0);
+	if (!node) {
+		dev_err(dev, "No calibration data source\n");
+		return -ENODEV;
+	}
+
+	printf("node = %p\n", node);
+
+	ocotp = cdev_by_device_node(node);
+	if (!ocotp) {
+		dev_err(dev, "No OCOTP character device\n");
+		return -ENODEV;
+	}
+
+	ret = cdev_read(ocotp, &ocotp_ana1, sizeof(ocotp_ana1),
+			OCOTP_ANA1_OFFSET, 0);
+	if (ret != sizeof(ocotp_ana1)) {
+		dev_err(dev, "Failed to read calibration data\n");
+		return ret < 0 ? ret : -EIO;
+	}
+
+	imx_thermal = xzalloc(sizeof(*imx_thermal));
+	imx_thermal->base = syscon_base_lookup_by_phandle(dev->device_node,
+							  "fsl,tempmon");
+	if (IS_ERR(imx_thermal->base)) {
+		dev_err(dev, "Could not get ANATOP address\n");
+		ret = PTR_ERR(imx_thermal->base);
+		goto free_imx_thermal;
+	}
+
+	n1 = ocotp_ana1 >> 20;
+	t1 = 25;
+	n2 = (ocotp_ana1 & 0x000FFF00) >> 8;
+	t2 = ocotp_ana1 & 0xFF;
+
+	imx_thermal->c1 = (-1000 * (t2 - t1)) / (n1 - n2);
+	imx_thermal->c2 = 1000 * t2 + (1000 * n2 * (t2 - t1)) / (n1 - n2);
+
+	imx_thermal->clk = clk_get(dev, NULL);
+	if (IS_ERR(imx_thermal->clk)) {
+		ret = PTR_ERR(imx_thermal->clk);
+		goto free_imx_thermal;
+	}
+
+	ret = clk_enable(imx_thermal->clk);
+	if (ret) {
+		dev_err(dev, "Failed to enable clock: %s\n",
+			  strerror(ret));
+		goto put_clock;
+	}
+
+	imx_thermal->aiodev.num_channels = 1;
+	imx_thermal->aiodev.hwdev = dev;
+	imx_thermal->aiodev.channels =
+		xmalloc(imx_thermal->aiodev.num_channels *
+			sizeof(imx_thermal->aiodev.channels[0]));
+	imx_thermal->aiodev.channels[0] = &imx_thermal->aiochan;
+	imx_thermal->aiochan.unit = "mC";
+	imx_thermal->aiodev.read = imx_thermal_read;
+
+	ret = aiodevice_register(&imx_thermal->aiodev);
+	if (!ret)
+		goto done;
+
+	clk_disable(imx_thermal->clk);
+put_clock:
+	clk_put(imx_thermal->clk);
+free_imx_thermal:
+	kfree(imx_thermal);
+done:	
+	return ret;
+}
+
+static const struct of_device_id of_imx_thermal_match[] = {
+	{ .compatible = "fsl,imx6q-tempmon", },
+	{ .compatible = "fsl,imx6sx-tempmon", },
+	{ /* end */ }
+};
+
+
+static struct driver_d imx_thermal_driver = {
+	.name		= "imx_thermal",
+	.probe		= imx_thermal_probe,
+	.of_compatible	= DRV_OF_COMPAT(of_imx_thermal_match),
+};
+
+device_platform_driver(imx_thermal_driver);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
