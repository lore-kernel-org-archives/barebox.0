Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YnNmy-0004NR-2z
 for barebox@lists.infradead.org; Wed, 29 Apr 2015 08:56:20 +0000
Received: by layy10 with SMTP id y10so15001006lay.0
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2015 01:55:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 29 Apr 2015 11:56:58 +0300
Message-Id: <1430297818-14961-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] of: use 'const void *' for struct of_device_id.data
To: barebox@lists.infradead.org

Since 2011 barebox' of_device_id struct uses unsigned long type for data field:

    struct of_device_id {
            char *compatible;
            unsigned long data;
    };

Almost always struct of_device_id.data field are used as pointer
and need 'unsigned long' casting.

E.g. see 'git grep -A 4 of_device_id drivers/' output:

    drivers/ata/sata-imx.c:static __maybe_unused struct of_device_id imx_sata_dt_ids[] = {
    drivers/ata/sata-imx.c- {
    drivers/ata/sata-imx.c-         .compatible = "fsl,imx6q-ahci",
    drivers/ata/sata-imx.c-         .data = (unsigned long)&data_imx6,
    drivers/ata/sata-imx.c- }, {

Here is of_device_id struct in linux kernel v4.0:

    struct of_device_id {
            char name[32];
            char type[32];
            char compatible[128];
            const void *data;
    };

Changing of_device_id.data type to 'const void *data' will increase
barebox' linux kernel compatibility and decrease number of 'unsigned
long' casts.

Part of the patch was done using the 'coccinelle' tool with the
following semantic patch:

    @rule1@
    identifier dev;
    identifier type;
    identifier func;
    @@
    func(...) {
    <...
    - dev_get_drvdata(dev, (unsigned long *)&type)
    + dev_get_drvdata(dev, (const void **)&type)
    ...>
    }
    @rule2@
    identifier dev;
    identifier type;
    identifier func;
    identifier data;
    @@
    func(...) {
    <...
    - dev_get_drvdata(dev, (unsigned long *)&type->data)
    + dev_get_drvdata(dev, (const void **)&type->data)
    ...>
    }

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-imx/clocksource.c       |  6 +++---
 arch/arm/mach-imx/esdctl.c            |  4 ++--
 arch/arm/mach-imx/iim.c               |  8 ++++----
 drivers/ata/sata-imx.c                |  6 +++---
 drivers/base/driver.c                 |  4 ++--
 drivers/bus/imx-weim.c                | 12 ++++++------
 drivers/bus/mvebu-mbus.c              | 18 +++++++++---------
 drivers/clk/mvebu/common.c            | 18 +++++++++---------
 drivers/dma/apbh_dma.c                |  6 +++---
 drivers/eeprom/at24.c                 |  2 +-
 drivers/gpio/gpio-generic.c           |  2 +-
 drivers/gpio/gpio-imx.c               | 18 +++++++++---------
 drivers/gpio/gpio-mxs.c               |  6 +++---
 drivers/gpio/gpio-omap.c              |  6 +++---
 drivers/gpio/gpio-pca953x.c           |  2 +-
 drivers/gpio/gpio-tegra.c             |  6 +++---
 drivers/i2c/busses/i2c-at91.c         | 14 +++++++-------
 drivers/i2c/busses/i2c-mv64xxx.c      |  8 ++++----
 drivers/i2c/busses/i2c-omap.c         |  4 ++--
 drivers/i2c/busses/i2c-tegra.c        | 10 +++++-----
 drivers/mci/omap_hsmmc.c              |  6 +++---
 drivers/mfd/mc13xxx.c                 |  8 ++++----
 drivers/mtd/nand/nand_mxs.c           |  8 ++++----
 drivers/net/designware.c              |  4 ++--
 drivers/net/fec_imx.c                 | 12 ++++++------
 drivers/pci/pci-mvebu.c               |  4 ++--
 drivers/pci/pci-tegra.c               |  8 ++++----
 drivers/pinctrl/mvebu/armada-370.c    |  2 +-
 drivers/pinctrl/mvebu/armada-xp.c     |  6 +++---
 drivers/pinctrl/mvebu/dove.c          |  2 +-
 drivers/pinctrl/mvebu/kirkwood.c      | 12 ++++++------
 drivers/pinctrl/pinctrl-at91.c        | 12 ++++++------
 drivers/pinctrl/pinctrl-rockchip.c    |  8 ++++----
 drivers/pinctrl/pinctrl-tegra-xusb.c  |  4 ++--
 drivers/pinctrl/pinctrl-tegra30.c     |  6 +++---
 drivers/pwm/pwm-imx.c                 |  6 +++---
 drivers/rtc/rtc-ds1307.c              |  2 +-
 drivers/serial/serial_cadence.c       |  4 ++--
 drivers/serial/serial_imx.c           |  6 +++---
 drivers/serial/serial_ns16550.c       | 18 +++++++++---------
 drivers/spi/imx_spi.c                 |  8 ++++----
 drivers/spi/mvebu_spi.c               |  6 +++---
 drivers/spi/omap3_spi.c               |  6 +++---
 drivers/usb/imx/imx-usb-misc.c        | 16 ++++++++--------
 drivers/usb/musb/musb_dsps.c          |  4 ++--
 drivers/usb/musb/phy-am335x-control.c |  4 ++--
 drivers/video/imx-ipu-v3/imx-hdmi.c   |  8 ++++----
 drivers/video/imx-ipu-v3/imx-ldb.c    |  6 +++---
 drivers/video/imx-ipu-v3/ipu-common.c |  8 ++++----
 drivers/watchdog/imxwd.c              |  6 +++---
 include/driver.h                      |  2 +-
 include/linux/clk.h                   |  2 +-
 include/of.h                          |  2 +-
 53 files changed, 188 insertions(+), 188 deletions(-)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index eba04a3..06d2fba 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -99,7 +99,7 @@ static int imx_gpt_probe(struct device_d *dev)
 	if (timer_base)
 		return 0;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&regs);
+	ret = dev_get_drvdata(dev, (const void **)&regs);
 	if (ret)
 		return ret;
 
@@ -136,10 +136,10 @@ static int imx_gpt_probe(struct device_d *dev)
 static __maybe_unused struct of_device_id imx_gpt_dt_ids[] = {
 	{
 		.compatible = "fsl,imx1-gpt",
-		.data = (unsigned long)&regs_imx1,
+		.data = &regs_imx1,
 	}, {
 		.compatible = "fsl,imx31-gpt",
-		.data = (unsigned long)&regs_imx31,
+		.data = &regs_imx31,
 	}, {
 		/* sentinel */
 	}
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 0a71db6..a8ef854 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -312,7 +312,7 @@ static int imx_esdctl_probe(struct device_d *dev)
 	int ret;
 	void *base;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&data);
+	ret = dev_get_drvdata(dev, (const void **)&data);
 	if (ret)
 		return ret;
 
@@ -426,7 +426,7 @@ static struct platform_device_id imx_esdctl_ids[] = {
 static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	{
 		.compatible = "fsl,imx6q-mmdc",
-		.data = (unsigned long)&imx6q_data
+		.data = &imx6q_data
 	}, {
 		/* sentinel */
 	}
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index d082d2d..c5751fe 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -395,7 +395,7 @@ static int imx_iim_probe(struct device_d *dev)
 
 	iim = xzalloc(sizeof(*iim));
 
-	dev_get_drvdata(dev, (unsigned long *)&drvdata);
+	dev_get_drvdata(dev, (const void **)&drvdata);
 
 	if (drvdata && drvdata->supply)
 		iim->supply = drvdata->supply;
@@ -471,13 +471,13 @@ static struct imx_iim_drvdata imx53_drvdata = {
 static __maybe_unused struct of_device_id imx_iim_dt_ids[] = {
 	{
 		.compatible = "fsl,imx53-iim",
-		.data = (unsigned long)&imx53_drvdata,
+		.data = &imx53_drvdata,
 	}, {
 		.compatible = "fsl,imx51-iim",
-		.data = (unsigned long)&imx51_drvdata,
+		.data = &imx51_drvdata,
 	}, {
 		.compatible = "fsl,imx27-iim",
-		.data = (unsigned long)&imx27_drvdata,
+		.data = &imx27_drvdata,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index 1c0e1db..42a56dc 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -86,7 +86,7 @@ static int imx_sata_probe(struct device_d *dev)
 	struct imx_sata_data *data;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&data);
+	ret = dev_get_drvdata(dev, (const void **)&data);
 	if (ret)
 		return ret;
 
@@ -145,10 +145,10 @@ static struct platform_device_id imx_sata_ids[] = {
 static __maybe_unused struct of_device_id imx_sata_dt_ids[] = {
 	{
 		.compatible = "fsl,imx6q-ahci",
-		.data = (unsigned long)&data_imx6,
+		.data = &data_imx6,
 	}, {
 		.compatible = "fsl,imx53-ahci",
-		.data = (unsigned long)&data_imx53,
+		.data = &data_imx53,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 6112b49..24cb5bc 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -454,7 +454,7 @@ void devices_shutdown(void)
 	}
 }
 
-int dev_get_drvdata(struct device_d *dev, unsigned long *data)
+int dev_get_drvdata(struct device_d *dev, const void **data)
 {
 	if (dev->of_id_entry) {
 		*data = dev->of_id_entry->data;
@@ -462,7 +462,7 @@ int dev_get_drvdata(struct device_d *dev, unsigned long *data)
 	}
 
 	if (dev->id_entry) {
-		*data = dev->id_entry->driver_data;
+		*data = (const void **)dev->id_entry->driver_data;
 		return 0;
 	}
 
diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 9b8848d..bc090cf 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -48,22 +48,22 @@ static struct of_device_id weim_id_table[] = {
 	{
 		/* i.MX1/21 */
 		.compatible = "fsl,imx1-weim",
-		.data = (unsigned long)&imx1_weim_devtype,
+		.data = &imx1_weim_devtype,
 	}, {
 		/* i.MX25/27/31/35 */
 		.compatible = "fsl,imx27-weim",
-		.data = (unsigned long)&imx27_weim_devtype,
+		.data = &imx27_weim_devtype,
 	}, {
 		/* i.MX50/53/6Q */
 		.compatible = "fsl,imx50-weim",
-		.data = (unsigned long)&imx50_weim_devtype,
+		.data = &imx50_weim_devtype,
 	}, {
 		/* i.MX51 */
 		.compatible = "fsl,imx51-weim",
-		.data = (unsigned long)&imx51_weim_devtype,
+		.data = &imx51_weim_devtype,
 	}, {
 		.compatible = "fsl,imx6q-weim",
-		.data = (unsigned long)&imx50_weim_devtype,
+		.data = &imx50_weim_devtype,
 	}, {
 	}
 };
@@ -134,7 +134,7 @@ static int weim_probe(struct device_d *dev)
 	struct imx_weim *weim;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		return ret;
 
diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index e189810..735fa32 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -453,31 +453,31 @@ mv78xx0_mbus_data __maybe_unused = {
 static struct of_device_id mvebu_mbus_dt_ids[] = {
 #if defined(CONFIG_ARCH_ARMADA_370) || defined(CONFIG_ARCH_ARMADA_XP)
 	{ .compatible = "marvell,armada370-mbus",
-	  .data = (u32)&armada_370_xp_mbus_data, },
+	  .data = &armada_370_xp_mbus_data, },
 	{ .compatible = "marvell,armadaxp-mbus",
-	  .data = (u32)&armada_370_xp_mbus_data, },
+	  .data = &armada_370_xp_mbus_data, },
 #endif
 #if defined(CONFIG_ARCH_DOVE)
 	{ .compatible = "marvell,dove-mbus",
-	  .data = (u32)&dove_mbus_data, },
+	  .data = &dove_mbus_data, },
 #endif
 #if defined(CONFIG_ARCH_KIRKWOOD)
 	{ .compatible = "marvell,kirkwood-mbus",
-	  .data = (u32)&kirkwood_mbus_data, },
+	  .data = &kirkwood_mbus_data, },
 #endif
 #if defined(CONFIG_ARCH_ORION5X)
 	{ .compatible = "marvell,orion5x-88f5281-mbus",
-	  .data = (u32)&orion5x_4win_mbus_data, },
+	  .data = &orion5x_4win_mbus_data, },
 	{ .compatible = "marvell,orion5x-88f5182-mbus",
-	  .data = (u32)&orion5x_2win_mbus_data, },
+	  .data = &orion5x_2win_mbus_data, },
 	{ .compatible = "marvell,orion5x-88f5181-mbus",
-	  .data = (u32)&orion5x_2win_mbus_data, },
+	  .data = &orion5x_2win_mbus_data, },
 	{ .compatible = "marvell,orion5x-88f6183-mbus",
-	  .data = (u32)&orion5x_4win_mbus_data, },
+	  .data = &orion5x_4win_mbus_data, },
 #endif
 #if defined(CONFIG_ARCH_MV78XX0)
 	{ .compatible = "marvell,mv78xx0-mbus",
-	  .data = (u32)&mv78xx0_mbus_data, },
+	  .data = &mv78xx0_mbus_data, },
 #endif
 	{ },
 };
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index 0e7f65c..c477497 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -28,15 +28,15 @@ static struct clk_onecell_data clk_data;
 
 static struct of_device_id mvebu_coreclk_ids[] = {
 	{ .compatible = "marvell,armada-370-core-clock",
-	  .data = (u32)&armada_370_coreclks },
+	  .data = &armada_370_coreclks },
 	{ .compatible = "marvell,armada-xp-core-clock",
-	  .data = (u32)&armada_xp_coreclks },
+	  .data = &armada_xp_coreclks },
 	{ .compatible = "marvell,dove-core-clock",
-	  .data = (u32)&dove_coreclks },
+	  .data = &dove_coreclks },
 	{ .compatible = "marvell,kirkwood-core-clock",
-	  .data = (u32)&kirkwood_coreclks },
+	  .data = &kirkwood_coreclks },
 	{ .compatible = "marvell,mv88f6180-core-clock",
-	  .data = (u32)&mv88f6180_coreclks },
+	  .data = &mv88f6180_coreclks },
 	{ }
 };
 
@@ -139,13 +139,13 @@ static struct clk *clk_gating_get_src(
 
 static struct of_device_id mvebu_clk_gating_ids[] = {
 	{ .compatible = "marvell,armada-370-gating-clock",
-	  .data = (u32)&armada_370_gating_desc },
+	  .data = &armada_370_gating_desc },
 	{ .compatible = "marvell,armada-xp-gating-clock",
-	  .data = (u32)&armada_xp_gating_desc },
+	  .data = &armada_xp_gating_desc },
 	{ .compatible = "marvell,dove-gating-clock",
-	  .data = (u32)&dove_gating_desc },
+	  .data = &dove_gating_desc },
 	{ .compatible = "marvell,kirkwood-gating-clock",
-	  .data = (u32)&kirkwood_gating_desc },
+	  .data = &kirkwood_gating_desc },
 	{ }
 };
 
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index ebfc647..bd0017b 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -593,7 +593,7 @@ static int apbh_dma_probe(struct device_d *dev)
 	enum mxs_dma_id id;
 	int ret, channel;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&id);
+	ret = dev_get_drvdata(dev, (const void **)&id);
 	if (ret)
 		return ret;
 
@@ -652,10 +652,10 @@ static struct platform_device_id apbh_ids[] = {
 static __maybe_unused struct of_device_id apbh_dt_ids[] = {
 	{
 		.compatible = "fsl,imx23-dma-apbh",
-		.data = (unsigned long)IMX23_DMA,
+		.data = (void *)IMX23_DMA,
 	}, {
 		.compatible = "fsl,imx28-dma-apbh",
-		.data = (unsigned long)IMX28_DMA,
+		.data = (void *)IMX28_DMA,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 5e5b359..bb2dd53 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -359,7 +359,7 @@ static int at24_probe(struct device_d *dev)
 	} else {
 		unsigned long magic;
 
-		err = dev_get_drvdata(dev, (unsigned long *)&magic);
+		err = dev_get_drvdata(dev, (const void **)&magic);
 		if (err)
 			return err;
 
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 1524a33..c6202fc 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -370,7 +370,7 @@ static int bgpio_dev_probe(struct device_d *dev)
 	if (err)
 		return err;
 
-	dev_get_drvdata(dev, &flags);
+	dev_get_drvdata(dev, (const void **)&flags);
 
 	bgc = xzalloc(sizeof(struct bgpio_chip));
 	if (!bgc)
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index d32638c..6311db2 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -136,7 +136,7 @@ static int imx_gpio_probe(struct device_d *dev)
 	struct imx_gpio_regs *regs;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&regs);
+	ret = dev_get_drvdata(dev, (const void **)&regs);
 	if (ret)
 		return ret;
 
@@ -164,28 +164,28 @@ static int imx_gpio_probe(struct device_d *dev)
 static __maybe_unused struct of_device_id imx_gpio_dt_ids[] = {
 	{
 		.compatible = "fsl,imx1-gpio",
-		.data = (unsigned long)&regs_imx1,
+		.data = &regs_imx1,
 	}, {
 		.compatible = "fsl,imx21-gpio",
-		.data = (unsigned long)&regs_imx1,
+		.data = &regs_imx1,
 	}, {
 		.compatible = "fsl,imx27-gpio",
-		.data = (unsigned long)&regs_imx1,
+		.data = &regs_imx1,
 	}, {
 		.compatible = "fsl,imx31-gpio",
-		.data = (unsigned long)&regs_imx31,
+		.data = &regs_imx31,
 	}, {
 		.compatible = "fsl,imx35-gpio",
-		.data = (unsigned long)&regs_imx31,
+		.data = &regs_imx31,
 	}, {
 		.compatible = "fsl,imx51-gpio",
-		.data = (unsigned long)&regs_imx31,
+		.data = &regs_imx31,
 	}, {
 		.compatible = "fsl,imx53-gpio",
-		.data = (unsigned long)&regs_imx31,
+		.data = &regs_imx31,
 	}, {
 		.compatible = "fsl,imx6q-gpio",
-		.data = (unsigned long)&regs_imx31,
+		.data = &regs_imx31,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index 30f9589..b2b3ad3 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -112,7 +112,7 @@ static int mxs_gpio_probe(struct device_d *dev)
 	struct mxs_gpio_regs *regs;
 	int ret, id;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&regs);
+	ret = dev_get_drvdata(dev, (const void **)&regs);
 	if (ret)
 		return ret;
 
@@ -150,10 +150,10 @@ static int mxs_gpio_probe(struct device_d *dev)
 static __maybe_unused struct of_device_id mxs_gpio_dt_ids[] = {
 	{
 		.compatible = "fsl,imx23-gpio",
-		.data = (unsigned long)&regs_mxs23,
+		.data = &regs_mxs23,
 	}, {
 		.compatible = "fsl,imx28-gpio",
-		.data = (unsigned long)&regs_mxs28,
+		.data = &regs_mxs28,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index ff31b15..43449df 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -144,7 +144,7 @@ static int omap_gpio_probe(struct device_d *dev)
 	struct omap_gpio_chip *omapgpio;
 	struct omap_gpio_drvdata *drvdata = NULL;
 
-	dev_get_drvdata(dev, (unsigned long *)&drvdata);
+	dev_get_drvdata(dev, (const void **)&drvdata);
 
 	omapgpio = xzalloc(sizeof(*omapgpio));
 	omapgpio->base = dev_request_mem_region(dev, 0);
@@ -176,10 +176,10 @@ static int omap_gpio_probe(struct device_d *dev)
 static __maybe_unused struct of_device_id omap_gpio_dt_ids[] = {
 	{
 		.compatible = "ti,omap4-gpio",
-		.data = (unsigned long)&gpio_omap4_drvdata,
+		.data = &gpio_omap4_drvdata,
 	}, {
 		.compatible = "ti,omap3-gpio",
-		.data = (unsigned long)&gpio_omap3_drvdata,
+		.data = &gpio_omap3_drvdata,
 	}, {
 	}
 };
diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index aabbb09..3c95230 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -431,7 +431,7 @@ static int pca953x_probe(struct device_d *dev)
 	} else {
 		int err;
 
-		err = dev_get_drvdata(dev, &driver_data);
+		err = dev_get_drvdata(dev, (const void **)&driver_data);
 		if (err)
 			return err;
 
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index d4eea4e..e2cc3f4 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -142,7 +142,7 @@ static int tegra_gpio_probe(struct device_d *dev)
 {
 	int i, j, ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&config);
+	ret = dev_get_drvdata(dev, (const void **)&config);
 	if (ret) {
 		dev_err(dev, "dev_get_drvdata failed: %d\n", ret);
 		return ret;
@@ -184,10 +184,10 @@ static struct tegra_gpio_soc_config tegra30_gpio_config = {
 static __maybe_unused struct of_device_id tegra_gpio_dt_ids[] = {
 	{
 		.compatible = "nvidia,tegra20-gpio",
-		.data = (unsigned long)&tegra20_gpio_config
+		.data = &tegra20_gpio_config
 	}, {
 		.compatible = "nvidia,tegra30-gpio",
-		.data = (unsigned long)&tegra30_gpio_config
+		.data = &tegra30_gpio_config
 	}, {
 		/* sentinel */
 	},
diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 3a644cf..622c56d 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -387,22 +387,22 @@ static struct platform_device_id at91_twi_devtypes[] = {
 static struct of_device_id at91_twi_dt_ids[] = {
 	{
 		.compatible = "atmel,at91rm9200-i2c",
-		.data = (unsigned long) &at91rm9200_config,
+		.data = &at91rm9200_config,
 	} , {
 		.compatible = "atmel,at91sam9260-i2c",
-		.data = (unsigned long) &at91sam9260_config,
+		.data = &at91sam9260_config,
 	} , {
 		.compatible = "atmel,at91sam9261-i2c",
-		.data = (unsigned long) &at91sam9261_config,
+		.data = &at91sam9261_config,
 	} , {
 		.compatible = "atmel,at91sam9g20-i2c",
-		.data = (unsigned long) &at91sam9g20_config,
+		.data = &at91sam9g20_config,
 	} , {
 		.compatible = "atmel,at91sam9g10-i2c",
-		.data = (unsigned long) &at91sam9g10_config,
+		.data = &at91sam9g10_config,
 	}, {
 		.compatible = "atmel,at91sam9x5-i2c",
-		.data = (unsigned long) &at91sam9x5_config,
+		.data = &at91sam9x5_config,
 	}, {
 		/* sentinel */
 	}
@@ -417,7 +417,7 @@ static int at91_twi_probe(struct device_d *dev)
 
 	i2c_at91 = xzalloc(sizeof(struct at91_twi_dev));
 
-	rc = dev_get_drvdata(dev, (unsigned long *)&i2c_data);
+	rc = dev_get_drvdata(dev, (const void **)&i2c_data);
 	if (rc < 0) {
 		dev_err(dev, "failed to retrieve driver data\n");
 		goto out_free;
diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index 4fd3a6f..0c38e64 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -487,9 +487,9 @@ mv64xxx_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
  *****************************************************************************
  */
 static struct of_device_id mv64xxx_i2c_of_match_table[] = {
-	{ .compatible = "marvell,mv64xxx-i2c", .data = (unsigned long)&mv64xxx_i2c_regs_mv64xxx},
-	{ .compatible = "marvell,mv78230-i2c", .data = (unsigned long)&mv64xxx_i2c_regs_mv64xxx},
-	{ .compatible = "marvell,mv78230-a0-i2c", .data = (unsigned long)&mv64xxx_i2c_regs_mv64xxx},
+	{ .compatible = "marvell,mv64xxx-i2c", .data = &mv64xxx_i2c_regs_mv64xxx},
+	{ .compatible = "marvell,mv78230-i2c", .data = &mv64xxx_i2c_regs_mv64xxx},
+	{ .compatible = "marvell,mv78230-a0-i2c", .data = &mv64xxx_i2c_regs_mv64xxx},
 	{}
 };
 
@@ -573,7 +573,7 @@ mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
 		goto out;
 	}
 
-	dev_get_drvdata(pd, (unsigned long *)&mv64xxx_regs);
+	dev_get_drvdata(pd, (const void **)&mv64xxx_regs);
 	memcpy(&drv_data->reg_offsets, mv64xxx_regs,
 		sizeof(drv_data->reg_offsets));
 
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 96c3c2b..4308963 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1002,7 +1002,7 @@ i2c_omap_probe(struct device_d *pdev)
 		goto err_free_mem;
 	}
 
-	r = dev_get_drvdata(pdev, (unsigned long *)&i2c_data);
+	r = dev_get_drvdata(pdev, (const void **)&i2c_data);
 	if (r)
 		return r;
 
@@ -1137,7 +1137,7 @@ static struct platform_device_id omap_i2c_ids[] = {
 static __maybe_unused struct of_device_id omap_i2c_dt_ids[] = {
 	{
 		.compatible = "ti,omap3-i2c",
-		.data = (unsigned long)&omap3_data,
+		.data = &omap3_data,
 	}, {
 		.compatible = "ti,omap4-i2c",
 	}, {
diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
index f793cbe..f6a4b22 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -640,7 +640,7 @@ static int tegra_i2c_probe(struct device_d *dev)
 		i2c_dev->bus_clk_rate = 100000; /* default clock rate */
 
 	i2c_dev->hw = &tegra20_i2c_hw;
-	dev_get_drvdata(dev, (unsigned long *)&i2c_dev->hw);
+	dev_get_drvdata(dev, (const void **)&i2c_dev->hw);
 	i2c_dev->is_dvc = of_device_is_compatible(dev->device_node,
 	                                          "nvidia,tegra20-i2c-dvc");
 
@@ -676,16 +676,16 @@ static int tegra_i2c_probe(struct device_d *dev)
 static __maybe_unused struct of_device_id tegra_i2c_compatible[] = {
 	{
 		.compatible = "nvidia,tegra114-i2c",
-		.data = (unsigned long)&tegra114_i2c_hw,
+		.data = &tegra114_i2c_hw,
 	}, {
 		.compatible = "nvidia,tegra30-i2c",
-		.data = (unsigned long)&tegra30_i2c_hw,
+		.data = &tegra30_i2c_hw,
 	}, {
 		.compatible = "nvidia,tegra20-i2c",
-		.data = (unsigned long)&tegra20_i2c_hw,
+		.data = &tegra20_i2c_hw,
 	}, {
 		.compatible = "nvidia,tegra20-i2c-dvc",
-		.data = (unsigned long)&tegra20_i2c_hw,
+		.data = &tegra20_i2c_hw,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index c9bc71d..752787a 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -590,7 +590,7 @@ static int omap_mmc_probe(struct device_d *dev)
 	unsigned long reg_ofs = 0;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&drvdata);
+	ret = dev_get_drvdata(dev, (const void **)&drvdata);
 	if (!ret)
 		reg_ofs = drvdata->reg_ofs;
 
@@ -652,10 +652,10 @@ static struct platform_device_id omap_mmc_ids[] = {
 static __maybe_unused struct of_device_id omap_mmc_dt_ids[] = {
 	{
 		.compatible = "ti,omap3-hsmmc",
-		.data = (unsigned long)&omap3_data,
+		.data = &omap3_data,
 	}, {
 		.compatible = "ti,omap4-hsmmc",
-		.data = (unsigned long)&omap4_data,
+		.data = &omap4_data,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 8584df2..0ebfc9e 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -325,7 +325,7 @@ static int __init mc13xxx_probe(struct device_d *dev)
 	if (mc_dev)
 		return -EBUSY;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		return ret;
 
@@ -391,9 +391,9 @@ static struct platform_device_id mc13xxx_ids[] = {
 };
 
 static __maybe_unused struct of_device_id mc13xxx_dt_ids[] = {
-	{ .compatible = "fsl,mc13783", .data = (ulong)&mc13783_devtype, },
-	{ .compatible = "fsl,mc13892", .data = (ulong)&mc13892_devtype, },
-	{ .compatible = "fsl,mc34708", .data = (ulong)&mc34708_devtype, },
+	{ .compatible = "fsl,mc13783", .data = &mc13783_devtype, },
+	{ .compatible = "fsl,mc13892", .data = &mc13892_devtype, },
+	{ .compatible = "fsl,mc34708", .data = &mc34708_devtype, },
 	{ }
 };
 
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index d5d64f3..b3767e6 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1242,7 +1242,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	enum gpmi_type type;
 	int err;
 
-	err = dev_get_drvdata(dev, (unsigned long *)&type);
+	err = dev_get_drvdata(dev, (const void **)&type);
 	if (err)
 		type = GPMI_MXS;
 
@@ -1342,13 +1342,13 @@ err1:
 static __maybe_unused struct of_device_id gpmi_dt_ids[] = {
 	{
 		.compatible = "fsl,imx23-gpmi-nand",
-		.data = GPMI_MXS,
+		.data = (void *)GPMI_MXS,
 	}, {
 		.compatible = "fsl,imx28-gpmi-nand",
-		.data = GPMI_MXS,
+		.data = (void *)GPMI_MXS,
 	}, {
 		.compatible = "fsl,imx6q-gpmi-nand",
-		.data = GPMI_IMX6,
+		.data = (void *)GPMI_IMX6,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 1b16db5..213fe41 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -431,7 +431,7 @@ static int dwc_ether_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(struct dw_eth_dev));
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&drvdata);
+	ret = dev_get_drvdata(dev, (const void **)&drvdata);
 	if (ret)
 		return ret;
 
@@ -489,7 +489,7 @@ static int dwc_ether_probe(struct device_d *dev)
 static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 	{
 		.compatible = "snps,dwmac-3.70a",
-		.data = (unsigned long)&dwmac_370a_drvdata,
+		.data = &dwmac_370a_drvdata,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 875905a..88d5951 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -652,7 +652,7 @@ static int fec_probe(struct device_d *dev)
 	enum fec_type type;
 	int phy_reset;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&type);
+	ret = dev_get_drvdata(dev, (const void **)&type);
 	if (ret)
 		return ret;
 
@@ -762,19 +762,19 @@ static void fec_remove(struct device_d *dev)
 static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {
 	{
 		.compatible = "fsl,imx25-fec",
-		.data = FEC_TYPE_IMX27,
+		.data = (void *)FEC_TYPE_IMX27,
 	}, {
 		.compatible = "fsl,imx27-fec",
-		.data = FEC_TYPE_IMX27,
+		.data = (void *)FEC_TYPE_IMX27,
 	}, {
 		.compatible = "fsl,imx28-fec",
-		.data = FEC_TYPE_IMX28,
+		.data = (void *)FEC_TYPE_IMX28,
 	}, {
 		.compatible = "fsl,imx6q-fec",
-		.data = FEC_TYPE_IMX6,
+		.data = (void *)FEC_TYPE_IMX6,
 	},  {
 		.compatible = "fsl,imx6sx-fec",
-		.data = FEC_TYPE_IMX6,
+		.data = (void *)FEC_TYPE_IMX6,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index 5e2b87a..da2459b 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -383,10 +383,10 @@ static struct mvebu_pcie_ops __maybe_unused armada_xp_ops = {
 
 static struct of_device_id mvebu_pcie_dt_ids[] = {
 #if defined(CONFIG_ARCH_ARMADA_XP)
-	{ .compatible = "marvell,armada-xp-pcie", .data = (u32)&armada_xp_ops, },
+	{ .compatible = "marvell,armada-xp-pcie", .data = &armada_xp_ops, },
 #endif
 #if defined(CONFIG_ARCH_ARMADA_370)
-	{ .compatible = "marvell,armada-370-pcie", .data = (u32)&armada_370_ops, },
+	{ .compatible = "marvell,armada-370-pcie", .data = &armada_370_ops, },
 #endif
 #if defined(CONFIG_ARCH_DOVE)
 	{ .compatible = "marvell,dove-pcie", },
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index 1e7907e..b532c46 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1239,13 +1239,13 @@ static const struct tegra_pcie_soc_data tegra124_pcie_data = {
 static __maybe_unused struct of_device_id tegra_pcie_of_match[] = {
 	{
 		.compatible = "nvidia,tegra124-pcie",
-		.data = (unsigned long)&tegra124_pcie_data
+		.data = &tegra124_pcie_data
 	}, {
 		.compatible = "nvidia,tegra30-pcie",
-		.data = (unsigned long)&tegra30_pcie_data
+		.data = &tegra30_pcie_data
 	}, {
 		.compatible = "nvidia,tegra20-pcie",
-		.data = (unsigned long)&tegra20_pcie_data
+		.data = &tegra20_pcie_data
 	}, {
 		/* sentinel */
 	},
@@ -1262,7 +1262,7 @@ static int tegra_pcie_probe(struct device_d *dev)
 
 	INIT_LIST_HEAD(&pcie->buses);
 	INIT_LIST_HEAD(&pcie->ports);
-	dev_get_drvdata(dev, (unsigned long *)&pcie->soc_data);
+	dev_get_drvdata(dev, (const void **)&pcie->soc_data);
 	pcie->dev = dev;
 
 	err = tegra_pcie_parse_dt(pcie);
diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
index bcfe40e..b7901f8 100644
--- a/drivers/pinctrl/mvebu/armada-370.c
+++ b/drivers/pinctrl/mvebu/armada-370.c
@@ -384,7 +384,7 @@ static struct mvebu_pinctrl_soc_info mv88f6710_pinctrl_info = {
 static struct of_device_id armada_370_pinctrl_of_match[] = {
 	{
 		.compatible = "marvell,mv88f6710-pinctrl",
-		.data = (u32)&mv88f6710_pinctrl_info,
+		.data = &mv88f6710_pinctrl_info,
 	},
 	{ },
 };
diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
index 1745776..51db35d 100644
--- a/drivers/pinctrl/mvebu/armada-xp.c
+++ b/drivers/pinctrl/mvebu/armada-xp.c
@@ -362,9 +362,9 @@ static struct mvebu_pinctrl_soc_info armada_xp_pinctrl_info = {
 };
 
 static struct of_device_id armada_xp_pinctrl_of_match[] = {
-	{ .compatible = "marvell,mv78230-pinctrl", .data = (u32)V_MV78230, },
-	{ .compatible = "marvell,mv78260-pinctrl", .data = (u32)V_MV78260, },
-	{ .compatible = "marvell,mv78460-pinctrl", .data = (u32)V_MV78460, },
+	{ .compatible = "marvell,mv78230-pinctrl", .data = (void *)V_MV78230, },
+	{ .compatible = "marvell,mv78260-pinctrl", .data = (void *)V_MV78260, },
+	{ .compatible = "marvell,mv78460-pinctrl", .data = (void *)V_MV78460, },
 	{ },
 };
 
diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
index a2133a0..d1848a7 100644
--- a/drivers/pinctrl/mvebu/dove.c
+++ b/drivers/pinctrl/mvebu/dove.c
@@ -689,7 +689,7 @@ static struct mvebu_pinctrl_soc_info dove_pinctrl_info = {
 static struct of_device_id dove_pinctrl_of_match[] = {
 	{
 		.compatible = "marvell,dove-pinctrl",
-		.data = (u32)&dove_pinctrl_info
+		.data = &dove_pinctrl_info
 	},
 	{ }
 };
diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
index 0514248..e2ac559 100644
--- a/drivers/pinctrl/mvebu/kirkwood.c
+++ b/drivers/pinctrl/mvebu/kirkwood.c
@@ -405,27 +405,27 @@ static struct mvebu_pinctrl_soc_info mv98dx4122_info = {
 static struct of_device_id kirkwood_pinctrl_of_match[] = {
 	{
 		.compatible = "marvell,88f6180-pinctrl",
-		.data = (u32)&mv88f6180_info
+		.data = &mv88f6180_info
 	},
 	{
 		.compatible = "marvell,88f6190-pinctrl",
-		.data = (u32)&mv88f6190_info
+		.data = &mv88f6190_info
 	},
 	{
 		.compatible = "marvell,88f6192-pinctrl",
-		.data = (u32)&mv88f6192_info
+		.data = &mv88f6192_info
 	},
 	{
 		.compatible = "marvell,88f6281-pinctrl",
-		.data = (u32)&mv88f6281_info
+		.data = &mv88f6281_info
 	},
 	{
 		.compatible = "marvell,88f6282-pinctrl",
-		.data = (u32)&mv88f6282_info
+		.data = &mv88f6282_info
 	},
 	{
 		.compatible = "marvell,98dx4122-pinctrl",
-		.data = (u32)&mv98dx4122_info
+		.data = &mv98dx4122_info
 	},
 	{ }
 };
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index b803f89..ebbc6f6 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -380,10 +380,10 @@ static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
 static struct of_device_id at91_pinctrl_dt_ids[] = {
 	{
 		.compatible = "atmel,at91rm9200-pinctrl",
-		.data = (unsigned long)&at91rm9200_ops,
+		.data = &at91rm9200_ops,
 	}, {
 		.compatible = "atmel,at91sam9x5-pinctrl",
-		.data = (unsigned long)&at91sam9x5_ops,
+		.data = &at91sam9x5_ops,
 	}, {
 		/* sentinel */
 	}
@@ -402,7 +402,7 @@ static struct at91_pinctrl_mux_ops *at91_pinctrl_get_driver_data(struct device_d
 		else
 			ops_data = (struct at91_pinctrl_mux_ops *)match->data;
 	} else {
-		rc = dev_get_drvdata(dev, (unsigned long *)&ops_data);
+		rc = dev_get_drvdata(dev, (const void **)&ops_data);
 		if (rc)
 			ops_data = NULL;
 	}
@@ -606,10 +606,10 @@ static struct gpio_ops at91_gpio_ops = {
 static struct of_device_id at91_gpio_dt_ids[] = {
 	{
 		.compatible = "atmel,at91rm9200-gpio",
-                .data = (unsigned long)&at91rm9200_ops,
+		.data = &at91rm9200_ops,
 	}, {
 		.compatible = "atmel,at91sam9x5-gpio",
-		.data = (unsigned long)&at91sam9x5_ops,
+		.data = &at91sam9x5_ops,
 	}, {
 		/* sentinel */
 	},
@@ -631,7 +631,7 @@ static int at91_gpio_probe(struct device_d *dev)
 
 	at91_gpio = &gpio_chip[alias_idx];
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&at91_gpio->ops);
+	ret = dev_get_drvdata(dev, (const void **)&at91_gpio->ops);
         if (ret) {
                 dev_err(dev, "dev_get_drvdata failed: %d\n", ret);
                 return ret;
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 3533aff..1130f3d 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -517,19 +517,19 @@ static struct rockchip_pin_ctrl rk3188_pin_ctrl = {
 static struct of_device_id rockchip_pinctrl_dt_match[] = {
 	{
 		.compatible = "rockchip,rk2928-pinctrl",
-		.data = (long)&rk2928_pin_ctrl,
+		.data = &rk2928_pin_ctrl,
 	},
 	{
 		.compatible = "rockchip,rk3066a-pinctrl",
-		.data = (long)&rk3066a_pin_ctrl,
+		.data = &rk3066a_pin_ctrl,
 	},
 	{
 		.compatible = "rockchip,rk3066b-pinctrl",
-		.data = (long)&rk3066b_pin_ctrl,
+		.data = &rk3066b_pin_ctrl,
 	},
 	{
 		.compatible = "rockchip,rk3188-pinctrl",
-		.data = (long)&rk3188_pin_ctrl,
+		.data = &rk3188_pin_ctrl,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
index 05cdecb..d567754 100644
--- a/drivers/pinctrl/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
@@ -387,7 +387,7 @@ static int pinctrl_tegra_xusb_probe(struct device_d *dev)
 	dev->priv = padctl;
 	padctl->dev = dev;
 
-	dev_get_drvdata(dev, (unsigned long *)&padctl->soc);
+	dev_get_drvdata(dev, (const void **)&padctl->soc);
 
 	padctl->regs = dev_request_mem_region(dev, 0);
 	if (IS_ERR(padctl->regs)) {
@@ -500,7 +500,7 @@ static const struct tegra_xusb_padctl_soc tegra124_soc = {
 static __maybe_unused struct of_device_id pinctrl_tegra_xusb_dt_ids[] = {
 	{
 		.compatible = "nvidia,tegra124-xusb-padctl",
-		.data = (unsigned long)&tegra124_soc,
+		.data = &tegra124_soc,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index aac6760..145a1a8 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -891,7 +891,7 @@ static int pinctrl_tegra30_probe(struct device_d *dev)
 		}
 	}
 
-	dev_get_drvdata(dev, (unsigned long *)&ctrl->drvdata);
+	dev_get_drvdata(dev, (const void **)&ctrl->drvdata);
 
 	ctrl->pinctrl.dev = dev;
 	ctrl->pinctrl.ops = &pinctrl_tegra30_ops;
@@ -911,12 +911,12 @@ static __maybe_unused struct of_device_id pinctrl_tegra30_dt_ids[] = {
 	{
 #ifdef CONFIG_ARCH_TEGRA_3x_SOC
 		.compatible = "nvidia,tegra30-pinmux",
-		.data = (unsigned long)&tegra30_drvdata,
+		.data = &tegra30_drvdata,
 	}, {
 #endif
 #ifdef CONFIG_ARCH_TEGRA_124_SOC
 		.compatible = "nvidia,tegra124-pinmux",
-		.data = (unsigned long)&tegra124_drvdata,
+		.data = &tegra124_drvdata,
 	}, {
 #endif
 		/* sentinel */
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index b00bf7e..bd99cf3 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -205,8 +205,8 @@ static struct imx_pwm_data imx_pwm_data_v2 = {
 };
 
 static struct of_device_id imx_pwm_dt_ids[] = {
-	{ .compatible = "fsl,imx1-pwm", .data = (unsigned long)&imx_pwm_data_v1, },
-	{ .compatible = "fsl,imx27-pwm", .data = (unsigned long)&imx_pwm_data_v2, },
+	{ .compatible = "fsl,imx1-pwm", .data = &imx_pwm_data_v1, },
+	{ .compatible = "fsl,imx27-pwm", .data = &imx_pwm_data_v2, },
 	{ /* sentinel */ }
 };
 
@@ -216,7 +216,7 @@ static int imx_pwm_probe(struct device_d *dev)
 	struct imx_chip *imx;
 	int ret = 0;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&data);
+	ret = dev_get_drvdata(dev, (const void **)&data);
 	if (ret)
 		return ret;
 
diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 725f15a..d78faa8 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -251,7 +251,7 @@ static int ds1307_probe(struct device_d *dev)
 
 	ds1307 = xzalloc(sizeof(struct ds1307));
 
-	err = dev_get_drvdata(dev, &driver_data);
+	err = dev_get_drvdata(dev, (const void **)&driver_data);
 	if (err)
 		goto exit;
 
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index 10df506..6b48a48 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -221,7 +221,7 @@ static int cadence_serial_probe(struct device_d *dev)
 	struct cadence_serial_devtype_data *devtype;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		return ret;
 
@@ -276,7 +276,7 @@ static void cadence_serial_remove(struct device_d *dev)
 static __maybe_unused struct of_device_id cadence_serial_dt_ids[] = {
 	{
 		.compatible = "xlnx,xuartps",
-		.data = (unsigned long)&cadence_r1p08_data,
+		.data = &cadence_r1p08_data,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index cd954c2..f075c50 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -315,7 +315,7 @@ static int imx_serial_probe(struct device_d *dev)
 	int ret;
 	const char *devname;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		return ret;
 
@@ -377,10 +377,10 @@ static void imx_serial_remove(struct device_d *dev)
 static __maybe_unused struct of_device_id imx_serial_dt_ids[] = {
 	{
 		.compatible = "fsl,imx1-uart",
-		.data = (unsigned long)&imx1_data,
+		.data = &imx1_data,
 	}, {
 		.compatible = "fsl,imx21-uart",
-		.data = (unsigned long)&imx21_data,
+		.data = &imx21_data,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 8f2e93f..4d636c1 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -399,7 +399,7 @@ static int ns16550_probe(struct device_d *dev)
 	struct ns16550_drvdata *devtype;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		devtype = &ns16550_drvdata;
 
@@ -462,36 +462,36 @@ err:
 static struct of_device_id ns16550_serial_dt_ids[] = {
 	{
 		.compatible = "ns16450",
-		.data = (unsigned long)&ns16450_drvdata,
+		.data = &ns16450_drvdata,
 	}, {
 		.compatible = "ns16550a",
-		.data = (unsigned long)&ns16550_drvdata,
+		.data = &ns16550_drvdata,
 	}, {
 		.compatible = "snps,dw-apb-uart",
-		.data = (unsigned long)&ns16550_drvdata,
+		.data = &ns16550_drvdata,
 	},
 #if IS_ENABLED(CONFIG_ARCH_OMAP)
 	{
 		.compatible = "ti,omap2-uart",
-		.data = (unsigned long)&omap_drvdata,
+		.data = &omap_drvdata,
 	}, {
 		.compatible = "ti,omap3-uart",
-		.data = (unsigned long)&omap_drvdata,
+		.data = &omap_drvdata,
 	}, {
 		.compatible = "ti,omap4-uart",
-		.data = (unsigned long)&omap_drvdata,
+		.data = &omap_drvdata,
 	},
 #endif
 #if IS_ENABLED(CONFIG_ARCH_TEGRA)
 	{
 		.compatible = "nvidia,tegra20-uart",
-		.data = (unsigned long)&tegra_drvdata,
+		.data = &tegra_drvdata,
 	},
 #endif
 #if IS_ENABLED(CONFIG_MACH_MIPS_XBURST)
 	{
 		.compatible = "ingenic,jz4740-uart",
-		.data = (unsigned long)&jz_drvdata,
+		.data = &jz_drvdata,
 	},
 #endif
 	{
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index e552d5f..be6a4fd 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -539,7 +539,7 @@ static int imx_spi_probe(struct device_d *dev)
 	struct spi_imx_devtype_data *devdata = NULL;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devdata);
+	ret = dev_get_drvdata(dev, (const void **)&devdata);
 	if (ret)
 		return -ENODEV;
 
@@ -587,19 +587,19 @@ static __maybe_unused struct of_device_id imx_spi_dt_ids[] = {
 #if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_0)
 	{
 		.compatible = "fsl,imx27-cspi",
-		.data = (unsigned long)&spi_imx_devtype_data_0_0,
+		.data = &spi_imx_devtype_data_0_0,
 	},
 #endif
 #if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_7)
 	{
 		.compatible = "fsl,imx35-cspi",
-		.data = (unsigned long)&spi_imx_devtype_data_0_7,
+		.data = &spi_imx_devtype_data_0_7,
 	},
 #endif
 #if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_2_3)
 	{
 		.compatible = "fsl,imx51-ecspi",
-		.data = (unsigned long)&spi_imx_devtype_data_2_3,
+		.data = &spi_imx_devtype_data_2_3,
 	},
 #endif
 	{
diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
index c2a2e50..bc0655f 100644
--- a/drivers/spi/mvebu_spi.c
+++ b/drivers/spi/mvebu_spi.c
@@ -318,14 +318,14 @@ static int mvebu_spi_transfer(struct spi_device *spi, struct spi_message *msg)
 
 static struct of_device_id mvebu_spi_dt_ids[] = {
 	{ .compatible = "marvell,orion-spi",
-	  .data = (unsigned long)&mvebu_spi_set_baudrate },
+	  .data = &mvebu_spi_set_baudrate },
 #if defined(CONFIG_ARCH_ARMADA_370) || defined(CONFIG_ARCH_ARMADA_XP)
 	{ .compatible = "marvell,armada-370-xp-spi",
-	  .data = (unsigned long)&armada_370_xp_spi_set_baudrate },
+	  .data = &armada_370_xp_spi_set_baudrate },
 #endif
 #if defined(CONFIG_ARCH_DOVE)
 	{ .compatible = "marvell,dove-spi",
-	  .data = (unsigned long)&dove_spi_set_baudrate },
+	  .data = &dove_spi_set_baudrate },
 #endif
 	{ }
 };
diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index 761083a..8e29fde 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -363,7 +363,7 @@ static int omap3_spi_probe(struct device_d *dev)
 	struct omap_spi_drvdata *devtype;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		return ret;
 
@@ -422,10 +422,10 @@ static struct omap_spi_drvdata omap4_data = {
 static __maybe_unused struct of_device_id omap_spi_dt_ids[] = {
 	{
 		.compatible = "ti,omap2-mcspi",
-		.data = (unsigned long)&omap3_data,
+		.data = &omap3_data,
 	}, {
 		.compatible = "ti,omap4-mcspi",
-		.data = (unsigned long)&omap4_data,
+		.data = &omap4_data,
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index ed44d78..be95b89 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -474,43 +474,43 @@ static __maybe_unused struct of_device_id imx_usbmisc_dt_ids[] = {
 #ifdef CONFIG_ARCH_IMX25
 	{
 		.compatible = "fsl,imx25-usbmisc",
-		.data = (unsigned long)&mx25_data,
+		.data = &mx25_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX27
 	{
 		.compatible = "fsl,imx27-usbmisc",
-		.data = (unsigned long)&mx27_mx31_data,
+		.data = &mx27_mx31_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX31
 	{
 		.compatible = "fsl,imx31-usbmisc",
-		.data = (unsigned long)&mx27_mx31_data,
+		.data = &mx27_mx31_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX35
 	{
 		.compatible = "fsl,imx35-usbmisc",
-		.data = (unsigned long)&mx35_data,
+		.data = &mx35_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX51
 	{
 		.compatible = "fsl,imx51-usbmisc",
-		.data = (unsigned long)&mx5_data,
+		.data = &mx5_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX53
 	{
 		.compatible = "fsl,imx53-usbmisc",
-		.data = (unsigned long)&mx5_data,
+		.data = &mx5_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX6
 	{
 		.compatible = "fsl,imx6q-usbmisc",
-		.data = (unsigned long)&mx6_data,
+		.data = &mx6_data,
 	},
 #endif
 	{
@@ -548,7 +548,7 @@ static int imx_usbmisc_probe(struct device_d *dev)
 	struct imx_usb_misc_data *devtype;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		return ret;
 
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 36a316a..bf676a1 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -357,7 +357,7 @@ static int dsps_probe(struct device_d *dev)
 	struct dsps_glue *glue;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&wrp);
+	ret = dev_get_drvdata(dev, (const void **)&wrp);
 	if (ret)
 		return ret;
 
@@ -445,7 +445,7 @@ static const struct dsps_musb_wrapper am33xx_driver_data = {
 static __maybe_unused struct of_device_id musb_dsps_dt_ids[] = {
 	{
 		.compatible = "ti,musb-am33xx",
-		.data = (unsigned long) &am33xx_driver_data,
+		.data = &am33xx_driver_data,
 	}, {
 		/* sentinel */
 	},
diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
index a241c84..214ae71 100644
--- a/drivers/usb/musb/phy-am335x-control.c
+++ b/drivers/usb/musb/phy-am335x-control.c
@@ -98,7 +98,7 @@ static const struct phy_control ctrl_am335x = {
 
 static __maybe_unused struct of_device_id omap_control_usb_dt_ids[] = {
 	{
-		.compatible = "ti,am335x-usb-ctrl-module", .data = (unsigned long)&ctrl_am335x
+		.compatible = "ti,am335x-usb-ctrl-module", .data = &ctrl_am335x
 	}, {
 		/* sentinel */
 	},
@@ -133,7 +133,7 @@ static int am335x_control_usb_probe(struct device_d *dev)
 	const struct phy_control *phy_ctrl;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&phy_ctrl);
+	ret = dev_get_drvdata(dev, (const void **)&phy_ctrl);
 	if (ret)
 		return ret;
 
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index 2da76a4..e01bfe8 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -1125,10 +1125,10 @@ static struct imx_hdmi_data imx6dl_hdmi_data = {
 static struct of_device_id imx_hdmi_dt_ids[] = {
 	{
 		.compatible = "fsl,imx6q-hdmi",
-		.data = (unsigned long)&imx6q_hdmi_data,
+		.data = &imx6q_hdmi_data,
 	}, {
 		.compatible = "fsl,imx6dl-hdmi",
-		.data = (unsigned long)&imx6dl_hdmi_data,
+		.data = &imx6dl_hdmi_data,
 	}, {
 		/* sentinel */
 	}
@@ -1175,7 +1175,7 @@ static int imx_hdmi_probe(struct device_d *dev)
 	int ret;
 	const struct imx_hdmi_data *devtype;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		return ret;
 
@@ -1186,7 +1186,7 @@ static int imx_hdmi_probe(struct device_d *dev)
 	hdmi->sample_rate = 48000;
 	hdmi->ratio = 100;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&hdmi->dev_type);
+	ret = dev_get_drvdata(dev, (const void **)&hdmi->dev_type);
 	if (ret)
 		return ret;
 
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 70429eb..a05bfad 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -249,7 +249,7 @@ static int imx_ldb_probe(struct device_d *dev)
 	int mapping;
 	const struct imx_ldb_data *devtype;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		return ret;
 
@@ -322,8 +322,8 @@ static int imx_ldb_probe(struct device_d *dev)
 }
 
 static struct of_device_id imx_ldb_dt_ids[] = {
-	{ .compatible = "fsl,imx6q-ldb", (unsigned long)&imx_ldb_data_imx6q},
-	{ .compatible = "fsl,imx53-ldb", (unsigned long)&imx_ldb_data_imx53},
+	{ .compatible = "fsl,imx6q-ldb", &imx_ldb_data_imx6q},
+	{ .compatible = "fsl,imx53-ldb", &imx_ldb_data_imx53},
 	{ /* sentinel */ }
 };
 
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index 5c85f86..cd63f04 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -612,9 +612,9 @@ static struct ipu_devtype ipu_type_imx6q = {
 };
 
 static struct of_device_id imx_ipu_dt_ids[] = {
-	{ .compatible = "fsl,imx51-ipu", .data = (unsigned long)&ipu_type_imx51, },
-	{ .compatible = "fsl,imx53-ipu", .data = (unsigned long)&ipu_type_imx53, },
-	{ .compatible = "fsl,imx6q-ipu", .data = (unsigned long)&ipu_type_imx6q, },
+	{ .compatible = "fsl,imx51-ipu", .data = &ipu_type_imx51, },
+	{ .compatible = "fsl,imx53-ipu", .data = &ipu_type_imx53, },
+	{ .compatible = "fsl,imx6q-ipu", .data = &ipu_type_imx6q, },
 	{ /* sentinel */ }
 };
 
@@ -755,7 +755,7 @@ static int ipu_probe(struct device_d *dev)
 	int i, ret;
 	const struct ipu_devtype *devtype;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
 		return ret;
 
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 221ad93..5ffbac7 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -173,7 +173,7 @@ static int imx_wd_probe(struct device_d *dev)
 	void *ops;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&ops);
+	ret = dev_get_drvdata(dev, (const void **)&ops);
 	if (ret)
 		return ret;
 
@@ -240,10 +240,10 @@ static const struct imx_wd_ops imx1_wd_ops = {
 static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
 	{
 		.compatible = "fsl,imx1-wdt",
-		.data = (unsigned long)&imx1_wd_ops,
+		.data = &imx1_wd_ops,
 	}, {
 		.compatible = "fsl,imx21-wdt",
-		.data = (unsigned long)&imx21_wd_ops,
+		.data = &imx21_wd_ops,
 	}, {
 		/* sentinel */
 	}
diff --git a/include/driver.h b/include/driver.h
index 1745717..d0cdcc9 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -512,7 +512,7 @@ int devfs_create_partitions(const char *devname,
 #define DRV_OF_COMPAT(compat) \
 	IS_ENABLED(CONFIG_OFDEVICE) ? (compat) : NULL
 
-int dev_get_drvdata(struct device_d *dev, unsigned long *data);
+int dev_get_drvdata(struct device_d *dev, const void **data);
 
 int device_match_of_modalias(struct device_d *dev, struct driver_d *drv);
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 56890a0..4aeec63 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -322,7 +322,7 @@ struct of_phandle_args;
 #define CLK_OF_DECLARE(name, compat, fn)				\
 const struct of_device_id __clk_of_table_##name				\
 __attribute__ ((unused,section (".__clk_of_table_" __stringify(name)))) \
-	= { .compatible = compat, .data = (u32)fn }
+	= { .compatible = compat, .data = fn }
 
 #if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 int of_clk_add_provider(struct device_node *np,
diff --git a/include/of.h b/include/of.h
index 2dcb613..e73cd7a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -37,7 +37,7 @@ struct device_node {
 
 struct of_device_id {
 	char *compatible;
-	unsigned long data;
+	const void *data;
 };
 
 #define MAX_PHANDLE_ARGS 8
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
