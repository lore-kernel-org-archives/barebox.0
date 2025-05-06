Delivery-date: Tue, 06 May 2025 08:38:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwv-002i6E-0I
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:38:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwq-00027x-Er
	for lore@pengutronix.de; Tue, 06 May 2025 08:38:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BL2+sWo6Ff5FbanLqv4Zt3gzFgeo/KZGW63ZDpVKWKI=; b=q6/zWEvpXRkKPb334Mw1+sJAjJ
	U9WCrQQNc7chxETtP07205foHkM6O5ZmLMOlcQGwIZXXAHQkdP+vxbL4osTdjl+tTTz66ymgkzHFv
	3XvusKJYXCKLxGq/Ho+b2GKe4ZN9d8HY6BeKrrBwTtF1XekziqkJUnzVX5lUauEJW4hqrwD7uiqbm
	A+ZHNkMO/L8a2O7yngfQtNuiIrRY43xYB4gB9j8i5yZfq2kHJcDxPAepnV67sn8d+xDGOZbc+Hrw+
	mipZ3Tqtn8MlxOAF8tXjFgDqI6Bko5P6PvJfN89nqC2IH3q0ezfvl8A3Yy0bn+Z9c6oja1YeRyzgj
	ujMB+IMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBwC-0000000AjUn-3s1T;
	Tue, 06 May 2025 06:37:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBtA-0000000AiKN-3ed2
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:34:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-0000TO-9S; Tue, 06 May 2025 08:34:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-001LpE-0I;
	Tue, 06 May 2025 08:34:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-00D9CO-1T;
	Tue, 06 May 2025 08:34:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:34:39 +0200
Message-Id: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_233449_423298_D41EC612 
X-CRM114-Status: GOOD (  22.18  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] treewide: replace dev_get_drvdata with device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both Linux and barebox define a dev_get_drvdata function, but
annoyingly, the barebox version accesses the private data set in the
probe function, while the Linux version retrieves the match data set by
the driver core instead.

In preparation for changing the function to have the Linux semantics,
start by replacing most instances in barebox with device_get_match_data.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp15xx-dkx/board.c  |  5 +++--
 arch/arm/cpu/psci-client.c               |  4 ++--
 arch/arm/mach-imx/iim.c                  |  8 +++++---
 drivers/ata/sata-imx.c                   |  8 ++++----
 drivers/bus/imx-weim.c                   | 12 ++++++------
 drivers/clocksource/timer-imx-gpt.c      |  9 ++++-----
 drivers/eeprom/at24.c                    |  6 +++---
 drivers/firmware/altera_serial.c         |  6 +++---
 drivers/gpio/gpio-imx.c                  | 11 +++++------
 drivers/gpio/gpio-omap.c                 |  4 ++--
 drivers/gpio/gpio-pca953x.c              |  8 +++-----
 drivers/gpio/gpio-pcf857x.c              |  7 +++----
 drivers/gpio/gpio-tegra.c                | 12 +++++-------
 drivers/gpio/gpio-vf610.c                |  8 ++++----
 drivers/i2c/busses/i2c-at91.c            | 18 ++++++++----------
 drivers/i2c/busses/i2c-mv64xxx.c         |  4 ++--
 drivers/i2c/busses/i2c-omap.c            | 12 ++++++------
 drivers/i2c/busses/i2c-stm32.c           |  6 +++---
 drivers/i2c/busses/i2c-tegra.c           |  6 ++++--
 drivers/mailbox/ti-msgmgr.c              |  6 +++---
 drivers/mci/am654-sdhci.c                |  6 +++---
 drivers/mci/imx-esdhc.c                  |  6 +++---
 drivers/mci/omap_hsmmc.c                 |  7 +++----
 drivers/mfd/mc13xxx.c                    |  8 ++++----
 drivers/mtd/nand/raw/mxc_nand.c          |  8 ++++----
 drivers/mtd/nand/raw/nand_denali_dt.c    |  8 ++++----
 drivers/net/ag71xx.c                     |  9 ++++-----
 drivers/net/designware.c                 | 16 ++++++----------
 drivers/net/designware_imx.c             | 10 +++++-----
 drivers/net/designware_socfpga.c         |  9 +++------
 drivers/net/fec_imx.c                    |  6 +++---
 drivers/net/fsl-fman.c                   |  7 +++----
 drivers/nvmem/bsec.c                     |  6 +++---
 drivers/nvmem/imx-ocotp-ele.c            |  9 ++++-----
 drivers/nvmem/ocotp.c                    |  6 +++---
 drivers/pci/pci-tegra.c                  |  2 +-
 drivers/pinctrl/pinctrl-at91.c           |  8 +++-----
 drivers/power/reset/syscon-reboot-mode.c |  8 ++++----
 drivers/pwm/pwm-atmel.c                  |  6 +++---
 drivers/pwm/pwm-imx.c                    |  7 +++----
 drivers/rtc/rtc-ds1307.c                 |  8 ++++----
 drivers/serial/serial_cadence.c          | 10 +++++-----
 drivers/serial/serial_imx.c              | 10 +++++-----
 drivers/serial/serial_lpuart32.c         |  8 ++++----
 drivers/serial/serial_stm32.c            |  8 ++++----
 drivers/spi/imx_spi.c                    |  6 +++---
 drivers/spi/omap3_spi.c                  |  9 ++++-----
 drivers/spi/spi-fsl-dspi.c               |  4 ++--
 drivers/usb/imx/chipidea-imx.c           |  6 +++---
 drivers/usb/imx/imx-usb-misc.c           | 11 +++++------
 drivers/usb/musb/musb_dsps.c             |  6 +++---
 drivers/usb/musb/phy-am335x-control.c    |  6 +++---
 drivers/video/atmel_lcdfb_core.c         |  6 +++---
 drivers/video/imx-ipu-v3/dw_hdmi-imx.c   | 14 +++++++-------
 drivers/video/imx-ipu-v3/imx-ldb.c       |  6 +++---
 drivers/video/imx-ipu-v3/ipu-common.c    |  6 +++---
 drivers/watchdog/f71808e_wdt.c           |  7 +++----
 drivers/watchdog/imxulp-wdt.c            |  8 ++++----
 drivers/watchdog/imxwd.c                 |  8 ++++----
 drivers/watchdog/stm32_iwdg.c            |  6 +++---
 60 files changed, 222 insertions(+), 243 deletions(-)

diff --git a/arch/arm/boards/stm32mp15xx-dkx/board.c b/arch/arm/boards/stm32mp15xx-dkx/board.c
index 9f005ec1091f..d693bf2aaf68 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/board.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/board.c
@@ -6,12 +6,13 @@
 
 static int dkx_probe(struct device *dev)
 {
-	const void *model;
+	const char *model;
 
 	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0",
 				     BBU_HANDLER_FLAG_DEFAULT);
 
-	if (dev_get_drvdata(dev, &model) == 0)
+	model = device_get_match_data(dev);
+	if (model)
 		barebox_set_model(model);
 
 	barebox_set_hostname("stm32mp15xx-dkx");
diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 251a374eac80..4c26beacb9bb 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -121,8 +121,8 @@ static int __init psci_probe(struct device *dev)
 	ulong of_version, actual_version;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&of_version);
-	if (ret)
+	of_version = (uintptr_t)device_get_match_data(dev);
+	if (!of_version)
 		return -ENODEV;
 
 	ret = of_property_read_string(dev->of_node, "method", &method);
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 7020e6eafa4f..9e8b82da0549 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -453,15 +453,17 @@ static int imx_iim_probe(struct device *dev)
 	struct resource *iores;
 	struct iim_priv *iim;
 	int i, ret;
-	struct imx_iim_drvdata *drvdata = NULL;
-	char *nregs = NULL;
+	const struct imx_iim_drvdata *drvdata;
+	const char *nregs = NULL;
 
 	if (imx_iim)
 		return -EBUSY;
 
 	iim = xzalloc(sizeof(*iim));
 
-	dev_get_drvdata(dev, (const void **)&drvdata);
+	drvdata = device_get_match_data(dev);
+	if (!drvdata)
+		return -ENODEV;
 
 	if (drvdata && drvdata->supply)
 		iim->supply = drvdata->supply;
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index 3f49f70dcc3a..13c08f6f2a06 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -87,12 +87,12 @@ static int imx_sata_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_ahci *imx_ahci;
-	struct imx_sata_data *data;
+	const struct imx_sata_data *data;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&data);
-	if (ret)
-		return ret;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	imx_ahci = xzalloc(sizeof(*imx_ahci));
 
diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 4907577164f9..50e210c16f33 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -69,14 +69,14 @@ MODULE_DEVICE_TABLE(of, weim_id_table);
 struct imx_weim {
 	struct device *dev;
 	void __iomem *base;
-	struct imx_weim_devtype *devtype;
+	const struct imx_weim_devtype *devtype;
 };
 
 /* Parse and set the timing for this device. */
 static int
 weim_timing_setup(struct imx_weim *weim, struct device_node *np)
 {
-	struct imx_weim_devtype *devtype = weim->devtype;
+	const struct imx_weim_devtype *devtype = weim->devtype;
 	u32 cs_idx, value[devtype->cs_regs_count];
 	int i, ret;
 
@@ -128,13 +128,13 @@ static int weim_parse_dt(struct imx_weim *weim)
 static int weim_probe(struct device *dev)
 {
 	struct resource *iores;
-	struct imx_weim_devtype *devtype;
+	const struct imx_weim_devtype *devtype;
 	struct imx_weim *weim;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	weim = xzalloc(sizeof(*weim));
 
diff --git a/drivers/clocksource/timer-imx-gpt.c b/drivers/clocksource/timer-imx-gpt.c
index 6cf60ed3fc28..5d0d8616f14e 100644
--- a/drivers/clocksource/timer-imx-gpt.c
+++ b/drivers/clocksource/timer-imx-gpt.c
@@ -52,7 +52,7 @@ static struct imx_gpt_regs regs_imx31 = {
 	.tctl_val = IMX31_TCTL_FRR | IMX31_TCTL_CLKSOURCE_PER | TCTL_TEN,
 };
 
-static struct imx_gpt_regs *regs;
+static const struct imx_gpt_regs *regs;
 static void __iomem *timer_base;
 
 static uint64_t imx_clocksource_read(void)
@@ -81,16 +81,15 @@ static int imx_gpt_probe(struct device *dev)
 {
 	struct resource *iores;
 	int i;
-	int ret;
 	unsigned long rate;
 
 	/* one timer is enough */
 	if (timer_base)
 		return 0;
 
-	ret = dev_get_drvdata(dev, (const void **)&regs);
-	if (ret)
-		return ret;
+	regs = device_get_match_data(dev);
+	if (!regs)
+		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 23cb0e1fbbc9..3054709ec055 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -380,9 +380,9 @@ static int at24_probe(struct device *dev)
 		unsigned long magic;
 		u32 page_size;
 
-		err = dev_get_drvdata(dev, (const void **)&magic);
-		if (err)
-			return err;
+		magic = (uintptr_t)device_get_match_data(dev);
+		if (!magic)
+			return -ENODEV;
 
 		chip.byte_len = BIT(magic & AT24_BITMASK(AT24_SIZE_BYTELEN));
 		magic >>= AT24_SIZE_BYTELEN;
diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index 8ff46753e44b..66ef70b8a949 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -340,9 +340,9 @@ static int altera_spi_probe(struct device *dev)
 
 	dev_dbg(dev, "Probing FPGA firmware programmer\n");
 
-	rc = dev_get_drvdata(dev, (const void **)&data);
-	if (rc)
-		return rc;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	this = xzalloc(sizeof(*this));
 	fh = &this->fh;
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index 49c5555b9859..d9499c66cdae 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -17,7 +17,7 @@
 struct imx_gpio_chip {
 	void __iomem *base;
 	struct gpio_chip chip;
-	struct imx_gpio_regs *regs;
+	const struct imx_gpio_regs *regs;
 };
 
 struct imx_gpio_regs {
@@ -121,12 +121,11 @@ static int imx_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_gpio_chip *imxgpio;
-	struct imx_gpio_regs *regs;
-	int ret;
+	const struct imx_gpio_regs *regs;
 
-	ret = dev_get_drvdata(dev, (const void **)&regs);
-	if (ret)
-		return ret;
+	regs = device_get_match_data(dev);
+	if (!regs)
+		return -ENODEV;
 
 	imxgpio = xzalloc(sizeof(*imxgpio));
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index 3fcb7387e30c..ed043286b7ff 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -119,9 +119,9 @@ static int omap_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct omap_gpio_chip *omapgpio;
-	struct omap_gpio_drvdata *drvdata = NULL;
+	const struct omap_gpio_drvdata *drvdata;
 
-	dev_get_drvdata(dev, (const void **)&drvdata);
+	drvdata = device_get_match_data(dev);
 
 	omapgpio = xzalloc(sizeof(*omapgpio));
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index e303f6b21f4b..4dd0c43afc32 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -432,11 +432,9 @@ static int pca953x_probe(struct device *dev)
 		invert = pdata->invert;
 		chip->names = pdata->names;
 	} else {
-		int err;
-
-		err = dev_get_drvdata(dev, (const void **)&driver_data);
-		if (err)
-			return err;
+		driver_data = (uintptr_t)device_get_match_data(dev);
+		if (!driver_data)
+			return -ENODEV;
 
 		chip->gpio_start = -1;
 	}
diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
index 52c3a6d00ac1..1db2eea47afe 100644
--- a/drivers/gpio/gpio-pcf857x.c
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -152,7 +152,6 @@ static int pcf857x_probe(struct device *dev)
 	struct pcf857x			*gpio;
 	unsigned long			driver_data;
 	unsigned int			n_latch = 0;
-	int				ret;
 
 	if (!np)
 		return -EINVAL;
@@ -162,9 +161,9 @@ static int pcf857x_probe(struct device *dev)
 	/* Allocate, initialize, and register this gpio_chip. */
 	gpio = xzalloc(sizeof(*gpio));
 
-	ret = dev_get_drvdata(dev, (const void **)&driver_data);
-	if (ret)
-		return ret;
+	driver_data = (ulong)device_get_match_data(dev);
+	if (!driver_data)
+		return -ENODEV;
 
 	gpio->chip.base			= -1;
 	gpio->chip.ops			= &pcf857x_gpio_ops;
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 693432a8c9c6..fb52041c361f 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -32,7 +32,7 @@ struct tegra_gpio_soc_config {
 };
 
 static void __iomem *gpio_base;
-static struct tegra_gpio_soc_config *config;
+static const struct tegra_gpio_soc_config *config;
 
 static inline void tegra_gpio_writel(u32 val, u32 reg)
 {
@@ -128,13 +128,11 @@ static struct gpio_chip tegra_gpio_chip = {
 static int tegra_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
-	int i, j, ret;
+	int i, j;
 
-	ret = dev_get_drvdata(dev, (const void **)&config);
-	if (ret) {
-		dev_err(dev, "dev_get_drvdata failed: %d\n", ret);
-		return ret;
-	}
+	config = device_get_match_data(dev);
+	if (!config)
+		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores)) {
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index 7c535c2e5eff..eefbaa70230f 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -157,11 +157,11 @@ static int vf610_gpio_probe(struct device *dev)
 	struct resource *iores;
 	struct vf610_gpio_port *port;
 	const __be32 *gpio_ranges;
-	struct fsl_gpio_soc_data *devtype;
+	const struct fsl_gpio_soc_data *devtype;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	port = xzalloc(sizeof(*port));
 
diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 8929dbaedebc..75113706f8ad 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -91,7 +91,7 @@ struct at91_twi_dev {
 	unsigned transfer_status;
 	struct i2c_adapter adapter;
 	unsigned twi_cwgr_reg;
-	struct at91_twi_pdata *pdata;
+	const struct at91_twi_pdata *pdata;
 	u32 filter_width;
 
 	bool enable_dig_filt;
@@ -118,7 +118,7 @@ static void at91_disable_twi_interrupts(struct at91_twi_dev *dev)
 
 static void at91_init_twi_bus(struct at91_twi_dev *dev)
 {
-	struct at91_twi_pdata *pdata = dev->pdata;
+	const struct at91_twi_pdata *pdata = dev->pdata;
 	u32 filtr = 0;
 
 	at91_disable_twi_interrupts(dev);
@@ -152,7 +152,7 @@ static void at91_init_twi_bus(struct at91_twi_dev *dev)
 static void at91_calc_twi_clock(struct at91_twi_dev *dev, int twi_clk)
 {
 	int ckdiv, cdiv, div, hold = 0, filter_width = 0;
-	struct at91_twi_pdata *pdata = dev->pdata;
+	const struct at91_twi_pdata *pdata = dev->pdata;
 	int offset = pdata->clk_offset;
 	int max_ckdiv = pdata->clk_max_div;
 	struct i2c_timings timings, *t = &timings;
@@ -517,19 +517,17 @@ static int at91_twi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct at91_twi_dev *i2c_at91;
-	struct at91_twi_pdata *i2c_data;
+	const struct at91_twi_pdata *i2c_data;
 	int rc = 0;
 	u32 bus_clk_rate;
 
+	i2c_data = device_get_match_data(dev);
+	if (!i2c_data)
+		return -ENODEV;
+
 	i2c_at91 = xzalloc(sizeof(struct at91_twi_dev));
 	i2c_at91->dev = dev;
 
-	rc = dev_get_drvdata(dev, (const void **)&i2c_data);
-	if (rc < 0) {
-		dev_err(dev, "failed to retrieve driver data\n");
-		goto out_free;
-	}
-
 	i2c_at91->pdata = i2c_data;
 
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index 6629e65b48b4..69fbfdcadba0 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -535,7 +535,7 @@ mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
 	u32 bus_freq, tclk;
 	int rc = 0;
 	u32 prop;
-	struct mv64xxx_i2c_regs *mv64xxx_regs;
+	const struct mv64xxx_i2c_regs *mv64xxx_regs;
 	int freq;
 
 	if (IS_ERR(drv_data->clk)) {
@@ -577,7 +577,7 @@ mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
 		goto out;
 	}
 
-	dev_get_drvdata(pd, (const void **)&mv64xxx_regs);
+	mv64xxx_regs = device_get_match_data(pd);
 	memcpy(&drv_data->reg_offsets, mv64xxx_regs,
 		sizeof(drv_data->reg_offsets));
 
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index a1a6cefd60bd..29378a96d722 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -144,7 +144,7 @@
 struct omap_i2c_struct {
 	void 			*base;
 	u8			reg_shift;
-	struct omap_i2c_driver_data	*data;
+	const struct omap_i2c_driver_data	*data;
 	struct resource		*ioarea;
 	u32			speed;		/* Speed of bus in Khz */
 	u16			scheme;
@@ -345,7 +345,7 @@ static int omap_i2c_init(struct omap_i2c_struct *i2c_omap)
 	u16 fsscll = 0, fssclh = 0, hsscll = 0, hssclh = 0;
 	uint64_t start;
 	unsigned long internal_clk = 0;
-	struct omap_i2c_driver_data *i2c_data = i2c_omap->data;
+	const struct omap_i2c_driver_data *i2c_data = i2c_omap->data;
 
 	if (i2c_omap->rev >= OMAP_I2C_OMAP1_REV_2) {
 		/* Disable I2C controller before soft reset */
@@ -1063,7 +1063,7 @@ i2c_omap_probe(struct device *pdev)
 {
 	struct resource *iores;
 	struct omap_i2c_struct	*i2c_omap;
-	struct omap_i2c_driver_data *i2c_data;
+	const struct omap_i2c_driver_data *i2c_data;
 	int r;
 	u32 speed = 0;
 	u32 rev;
@@ -1075,9 +1075,9 @@ i2c_omap_probe(struct device *pdev)
 		goto err_free_mem;
 	}
 
-	r = dev_get_drvdata(pdev, (const void **)&i2c_data);
-	if (r)
-		return r;
+	i2c_data = device_get_match_data(pdev);
+	if (!i2c_data)
+		return -ENODEV;
 
 	if (of_machine_is_compatible("ti,am33xx"))
 		i2c_data = &am33xx_data;
diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 4d40ca3b51cc..d9a51c6108cf 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -867,9 +867,9 @@ static int stm32_of_to_plat(struct device *dev, struct stm32_i2c_priv *i2c_priv)
 	const struct stm32_i2c_data *data;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&data);
-	if (ret)
-		return ret;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	if (of_property_read_u32(dev->of_node, "i2c-digital-filter-width-ns",
 				 &i2c_priv->setup.timings.digital_filter_width_ns))
diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
index 4271a22f8326..c4506170f375 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -632,8 +632,10 @@ static int tegra_i2c_probe(struct device *dev)
 	if (ret)
 		i2c_dev->bus_clk_rate = 100000; /* default clock rate */
 
-	i2c_dev->hw = &tegra20_i2c_hw;
-	dev_get_drvdata(dev, (const void **)&i2c_dev->hw);
+	i2c_dev->hw = device_get_match_data(dev);
+	if (!i2c_dev->hw)
+		i2c_dev->hw = &tegra20_i2c_hw;
+
 	i2c_dev->is_dvc = of_device_is_compatible(dev->of_node,
 	                                          "nvidia,tegra20-i2c-dvc");
 
diff --git a/drivers/mailbox/ti-msgmgr.c b/drivers/mailbox/ti-msgmgr.c
index 58ec8697fcdf..81dc1358ca5f 100644
--- a/drivers/mailbox/ti-msgmgr.c
+++ b/drivers/mailbox/ti-msgmgr.c
@@ -340,9 +340,9 @@ static int k3_sec_proxy_probe(struct device *dev)
 
 	spm->rt = IOMEM(res->start);
 
-	ret = dev_get_drvdata(dev, &data);
-        if (ret)
-                return ret;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	spm->desc = data;
 	spm->k3_chans = xzalloc(spm->desc->num_valid_threads * sizeof(*spm->k3_chans));
diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 2c1fa5d80451..b4735952515f 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -554,9 +554,9 @@ static int am654_sdhci_probe(struct device *dev)
 
 	plat = xzalloc(sizeof(*plat));
 
-	ret = dev_get_drvdata(dev, (const void **)&plat->soc_data);
-	if (ret)
-		return ret;
+	plat->soc_data = device_get_match_data(dev);
+	if (!plat->soc_data)
+		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index ebc7ed539da9..519bb86a6a2e 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -283,9 +283,9 @@ static int fsl_esdhc_probe(struct device *dev)
 	unsigned long rate;
 	const struct esdhc_soc_data *socdata;
 
-	ret = dev_get_drvdata(dev, (const void **)&socdata);
-	if (ret)
-		return ret;
+	socdata = device_get_match_data(dev);
+	if (!socdata)
+		return -ENODEV;
 
 	host = xzalloc(sizeof(*host));
 	host->socdata = socdata;
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 616d57bffdac..9101b4c30a2c 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -80,12 +80,11 @@ static int omap_mmc_probe(struct device *dev)
 	struct resource *iores;
 	struct omap_hsmmc *hsmmc;
 	struct omap_hsmmc_platform_data *pdata;
-	struct omap_mmc_driver_data *drvdata;
+	const struct omap_mmc_driver_data *drvdata;
 	unsigned long reg_ofs = 0;
-	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&drvdata);
-	if (!ret)
+	drvdata = device_get_match_data(dev);
+	if (drvdata)
 		reg_ofs = drvdata->reg_ofs;
 
 	hsmmc = xzalloc(sizeof(*hsmmc));
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 5dabfe3f6115..288bd407ff10 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -302,15 +302,15 @@ static const struct regmap_config mc13xxx_regmap_i2c_config = {
 
 static int __init mc13xxx_probe(struct device *dev)
 {
-	struct mc13xxx_devtype *devtype;
+	const struct mc13xxx_devtype *devtype;
 	int ret, rev;
 
 	if (mc_dev)
 		return -EBUSY;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	mc_dev = xzalloc(sizeof(*mc_dev));
 	mc_dev->dev = dev;
diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index 1aba9afdd1fa..de2ad2a028cb 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1778,12 +1778,12 @@ static int mxcnd_probe(struct device *dev)
 	struct mtd_info *mtd;
 	struct mxc_nand_host *host;
 	struct resource *iores;
-	struct mxc_nand_devtype_data* devtype;
+	const struct mxc_nand_devtype_data* devtype;
 	int err = 0;
 
-	err = dev_get_drvdata(dev, (const void **)&devtype);
-	if (err)
-		return err;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	/* Allocate memory for MTD device structure and private data */
 	host = devm_kzalloc(dev, sizeof(struct mxc_nand_host),
diff --git a/drivers/mtd/nand/raw/nand_denali_dt.c b/drivers/mtd/nand/raw/nand_denali_dt.c
index d21cdc975612..d6546550a30e 100644
--- a/drivers/mtd/nand/raw/nand_denali_dt.c
+++ b/drivers/mtd/nand/raw/nand_denali_dt.c
@@ -176,16 +176,16 @@ static int denali_dt_probe(struct device *ofdev)
 	struct resource *iores;
 	struct denali_dt *dt;
 	struct denali_controller *denali;
-	struct denali_dt_data *data;
+	const struct denali_dt_data *data;
 	struct device_node *np;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return 1;
 
-	ret = dev_get_drvdata(ofdev, (const void **)&data);
-	if (ret)
-		return ret;
+	data = device_get_match_data(ofdev);
+	if (!data)
+		return -ENODEV;
 
 	dt = kzalloc(sizeof(*dt), GFP_KERNEL);
 	if (!dt)
diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 2bce142de328..62b299dd900d 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -552,15 +552,14 @@ static int ag71xx_probe(struct device *dev)
 	void __iomem *regs, *regs_gmac;
 	struct mii_bus *miibus;
 	struct eth_device *edev;
-	struct ag71xx_cfg *cfg;
+	const struct ag71xx_cfg *cfg;
 	struct ag71xx *priv;
 	u32 mac_h, mac_l;
 	u32 rd, mask;
-	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&cfg);
-	if (ret)
-		return ret;
+	cfg = device_get_match_data(dev);
+	if (!cfg)
+		return -ENODEV;
 
 	regs_gmac = dev_request_mem_region_by_name(dev, "gmac");
 	if (IS_ERR(regs_gmac))
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 6c30fdc2a631..6b6d914d7bf9 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -448,22 +448,18 @@ struct dw_eth_dev *dwc_drv_probe(struct device *dev)
 	void __iomem *base;
 	struct dwc_ether_platform_data *pdata = dev->platform_data;
 	int ret;
-	struct dw_eth_drvdata *drvdata;
+	const struct dw_eth_drvdata *drvdata;
 
 	dma_set_mask(dev, DMA_BIT_MASK(32));
 
 	priv = xzalloc(sizeof(struct dw_eth_dev));
 
-	ret = dev_get_drvdata(dev, (const void **)&drvdata);
-	if (ret)
-		return ERR_PTR(ret);
+	drvdata = device_get_match_data(dev);
+	if (!drvdata)
+		return ERR_PTR(-ENODEV);
 
-	if (drvdata) {
-		priv->enh_desc = drvdata->enh_desc;
-		priv->fix_mac_speed = drvdata->fix_mac_speed;
-	} else {
-		dev_warn(dev, "No drvdata specified\n");
-	}
+	priv->enh_desc = drvdata->enh_desc;
+	priv->fix_mac_speed = drvdata->fix_mac_speed;
 
 	if (pdata) {
 		priv->phy_addr = pdata->phy_addr;
diff --git a/drivers/net/designware_imx.c b/drivers/net/designware_imx.c
index 77e987e9ac80..ec3558fad026 100644
--- a/drivers/net/designware_imx.c
+++ b/drivers/net/designware_imx.c
@@ -39,7 +39,7 @@ struct eqos_imx_priv {
 	struct regmap *intf_regmap;
 	u32 intf_reg_off;
 	bool rmii_refclk_ext;
-	struct eqos_imx_soc_data *soc_data;
+	const struct eqos_imx_soc_data *soc_data;
 };
 
 enum { CLK_STMMACETH, CLK_PCLK, CLK_PTP_REF, CLK_TX};
@@ -212,13 +212,13 @@ static struct eqos_ops imx_ops = {
 static int eqos_probe_imx(struct device *dev)
 {
 	struct device_node *np = dev->device_node;
-	struct eqos_imx_soc_data *soc_data;
+	const struct eqos_imx_soc_data *soc_data;
 	struct eqos_imx_priv *priv;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&soc_data);
-	if (ret)
-		return ret;
+	soc_data = device_get_match_data(dev);
+	if (!soc_data)
+		return -ENODEV;
 
 	priv = xzalloc(sizeof(*priv));
 
diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index a39c945c8191..dd17b291a193 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -191,17 +191,14 @@ static int socfpga_dwc_ether_probe(struct device *dev)
 {
 	struct socfpga_dwc_dev *dwc_dev;
 	struct dw_eth_dev *priv;
-	struct dw_eth_drvdata *drvdata;
+	const struct dw_eth_drvdata *drvdata;
 	int ret;
 
 	dwc_dev = xzalloc(sizeof(*dwc_dev));
 
-	ret = dev_get_drvdata(dev, (const void **)&drvdata);
-	if (ret)
-		return ret;
-
+	drvdata = device_get_match_data(dev);
 	if (drvdata && drvdata->priv)
-		dwc_dev->ops = (struct socfpga_dwmac_ops *)drvdata->priv;
+		dwc_dev->ops = drvdata->priv;
 	else
 		return -EINVAL;
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 0598b09704f9..8474e6d5be9c 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -769,9 +769,9 @@ static int fec_probe(struct device *dev)
 	u32 msec = 1, phy_post_delay = 0;
 	u32 reg;
 
-	ret = dev_get_drvdata(dev, &type_v);
-	if (ret)
-		return ret;
+	type_v = device_get_match_data(dev);
+	if (!type_v)
+		return -ENODEV;
 
 	type = (uintptr_t)(type_v);
 
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index f205de1929ea..84e7f2033037 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1085,15 +1085,14 @@ static int fsl_fman_mdio_probe(struct device *dev)
 static int fsl_fman_port_probe(struct device *dev)
 {
 	struct resource *iores;
-	int ret;
 	struct fsl_fman_port *port;
 	unsigned long type;
 
 	dev_dbg(dev, "probe\n");
 
-	ret = dev_get_drvdata(dev, (const void **)&type);
-	if (ret)
-		return ret;
+	type = (uintptr_t)device_get_match_data(dev);
+	if (!type)
+		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index edaf577e9823..9ca98e6180f8 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -204,9 +204,9 @@ static int stm32_bsec_probe(struct device *dev)
 	const struct stm32_bsec_data *data;
 	struct nvmem_device *nvmem;
 
-	ret = dev_get_drvdata(dev, (const void **)&data);
-	if (ret)
-		return ret;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	priv = xzalloc(sizeof(*priv));
 
diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 58d3e62abfdb..5fb5dfc87e22 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -163,15 +163,14 @@ static int imx_ele_ocotp_probe(struct device *dev)
 	struct imx_ocotp_priv *priv;
 	struct nvmem_device *nvmem;
 	struct resource *iores;
-	struct ocotp_devtype_data *data;
-	int ret;
+	const struct ocotp_devtype_data *data;
 
 	priv = xzalloc(sizeof(*priv));
 	priv->dev = dev;
 
-	ret = dev_get_drvdata(dev, (const void **)&data);
-	if (ret)
-		return ret;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
         if (IS_ERR(iores))
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 87cc95a636f3..5d4737767866 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -868,9 +868,9 @@ static int imx_ocotp_probe(struct device *dev)
 	const struct imx_ocotp_data *data;
 	struct nvmem_device *nvmem;
 
-	ret = dev_get_drvdata(dev, (const void **)&data);
-	if (ret)
-		return ret;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index 9ef50207ab35..b7f8297d153e 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1245,7 +1245,7 @@ static int tegra_pcie_probe(struct device *dev)
 
 	INIT_LIST_HEAD(&pcie->buses);
 	INIT_LIST_HEAD(&pcie->ports);
-	dev_get_drvdata(dev, (const void **)&pcie->soc_data);
+	pcie->soc_data = device_get_match_data(dev);
 	pcie->dev = dev;
 
 	err = tegra_pcie_parse_dt(pcie);
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index ddc725187bf0..25b4d084ed6d 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -646,11 +646,9 @@ static int at91_gpio_probe(struct device *dev)
 
 	at91_gpio = &gpio_chip[alias_idx];
 
-	ret = dev_get_drvdata(dev, (const void **)&at91_gpio->ops);
-        if (ret) {
-                dev_err(dev, "dev_get_drvdata failed: %d\n", ret);
-                return ret;
-        }
+	at91_gpio->ops = device_get_match_data(dev);
+	if (!at91_gpio->ops)
+		return -ENODEV;
 
 	clk = clk_get(dev, NULL);
 	if (IS_ERR(clk)) {
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index 00b2f77146d2..20ab71febdcb 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -50,7 +50,7 @@ static int syscon_reboot_mode_probe(struct device *dev)
 {
 	int ret, i, nelems;
 	struct syscon_reboot_mode *syscon_rbm;
-	struct reboot_mode_driver *reboot_template;
+	const struct reboot_mode_driver *reboot_template;
 	struct device_node *np = dev->of_node;
 	u32 *magic;
 
@@ -60,9 +60,9 @@ static int syscon_reboot_mode_probe(struct device *dev)
 
 	syscon_rbm = xzalloc(struct_size(syscon_rbm, reg, nelems));
 
-	ret = dev_get_drvdata(dev, (const void **)&reboot_template);
-	if (ret)
-		return ret;
+	reboot_template = device_get_match_data(dev);
+	if (!reboot_template)
+		return -ENODEV;
 
 	syscon_rbm->reboot = *reboot_template;
 	syscon_rbm->reboot.dev = dev;
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 851676c0dd87..a847d4d434e3 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -425,9 +425,9 @@ static int atmel_pwm_probe(struct device *dev)
 	int ret;
 	int i;
 
-	ret = dev_get_drvdata(dev, (const void **)&data);
-	if (ret)
-		return ret;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	atmel_pwm = xzalloc(sizeof(*atmel_pwm));
 	atmel_pwm->data = data;
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index 2a754005939c..64fd6c190d21 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -248,11 +248,10 @@ static int imx_pwm_probe(struct device *dev)
 	struct resource *iores;
 	const struct imx_pwm_data *data;
 	struct imx_chip *imx;
-	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&data);
-	if (ret)
-		return ret;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	imx = xzalloc(sizeof(*imx));
 
diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index e1a8e214d2b0..86b0709dc217 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -290,11 +290,11 @@ static int ds1307_probe(struct device *dev)
 	unsigned long driver_data;
 	const struct device_node *np = dev->of_node;
 
-	ds1307 = xzalloc(sizeof(struct ds1307));
+	driver_data = (uintptr_t)device_get_match_data(dev);
+	if (!driver_data)
+		return -ENODEV;
 
-	err = dev_get_drvdata(dev, (const void **)&driver_data);
-	if (err)
-		goto exit;
+	ds1307 = xzalloc(sizeof(struct ds1307));
 
 	ds1307->client = client;
 	ds1307->type = driver_data;
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index fe05d8a44d52..bda3269106c7 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -32,7 +32,7 @@ struct cadence_serial_priv {
 	struct notifier_block notify;
 	void __iomem *regs;
 	struct clk *clk;
-	struct cadence_serial_devtype_data *devtype;
+	const struct cadence_serial_devtype_data *devtype;
 };
 
 static int cadence_serial_reset(struct console_device *cdev)
@@ -178,12 +178,12 @@ static int cadence_serial_probe(struct device *dev)
 	struct resource *iores;
 	struct console_device *cdev;
 	struct cadence_serial_priv *priv;
-	struct cadence_serial_devtype_data *devtype;
+	const struct cadence_serial_devtype_data *devtype;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	priv = xzalloc(sizeof(*priv));
 	priv->devtype = devtype;
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 77eea78aba64..e13b69f2cf0e 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -48,7 +48,7 @@ struct imx_serial_priv {
 	struct notifier_block notify;
 	void __iomem *regs;
 	struct clk *clk;
-	struct imx_serial_devtype_data *devtype;
+	const struct imx_serial_devtype_data *devtype;
 	bool rs485_mode;
 };
 
@@ -203,13 +203,13 @@ static int imx_serial_probe(struct device *dev)
 	struct console_device *cdev;
 	struct imx_serial_priv *priv;
 	uint32_t val;
-	struct imx_serial_devtype_data *devtype;
+	const struct imx_serial_devtype_data *devtype;
 	int ret;
 	const char *devname;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	priv = xzalloc(sizeof(*priv));
 	priv->devtype = devtype;
diff --git a/drivers/serial/serial_lpuart32.c b/drivers/serial/serial_lpuart32.c
index 6b52882bf0bd..25f0782e026e 100644
--- a/drivers/serial/serial_lpuart32.c
+++ b/drivers/serial/serial_lpuart32.c
@@ -102,11 +102,11 @@ static int lpuart32_serial_probe(struct device *dev)
 	struct console_device *cdev;
 	struct lpuart32 *lpuart32;
 	const char *devname;
-	struct lpuart32_devtype_data *devtype;
+	const struct lpuart32_devtype_data *devtype;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	lpuart32 = xzalloc(sizeof(*lpuart32));
 	cdev = &lpuart32->cdev;
diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index eebae6f6ee9e..f61d04aed440 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -145,11 +145,11 @@ static int stm32_serial_probe(struct device *dev)
 	struct stm32_uart *stm32;
 	const char *devname;
 	struct resource *res;
-	struct stm32_uart_info *info;
+	const struct stm32_uart_info *info;
 
-	ret = dev_get_drvdata(dev, (const void **)&info);
-	if (ret)
-		return ret;
+	info = device_get_match_data(dev);
+	if (!info)
+		return -ENODEV;
 
 	stm32 = xzalloc(sizeof(*stm32));
 	cdev = &stm32->cdev;
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 09893ac008e8..bfb4b413ebab 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -583,11 +583,11 @@ static int imx_spi_probe(struct device *dev)
 	struct spi_master *master;
 	struct imx_spi *imx;
 	struct spi_imx_master *pdata = dev->platform_data;
-	struct spi_imx_devtype_data *devdata = NULL;
+	const struct spi_imx_devtype_data *devdata;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&devdata);
-	if (ret)
+	devdata = device_get_match_data(dev);
+	if (!devdata)
 		return -ENODEV;
 
 	imx = xzalloc(sizeof(*imx));
diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index 78c3a8233830..d34f505ec993 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -349,12 +349,11 @@ static int omap3_spi_probe(struct device *dev)
 	struct resource *iores;
 	struct spi_master *master;
 	struct omap3_spi_master *omap3_master;
-	struct omap_spi_drvdata *devtype;
-	int ret;
+	const struct omap_spi_drvdata *devtype;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	omap3_master = xzalloc(sizeof(*omap3_master));
 
diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index f032e2673eb6..8018643bd7c3 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -585,8 +585,8 @@ static int dspi_probe(struct device *dev)
 	of_property_read_u32(np, "bus-num", &bus_num);
 	master->bus_num = bus_num;
 
-	ret = dev_get_drvdata(dev, (const void **)&dspi->devtype_data);
-	if (ret)
+	dspi->devtype_data = device_get_match_data(dev);
+	if (!dspi->devtype_data)
 		return -ENODEV;
 
 	res = dev_request_mem_resource(dev, 0);
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 94fbb9f0ed2c..e09857f23c27 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -217,7 +217,7 @@ static int ci_set_mode(void *ctx, enum usb_dr_mode mode)
 static int imx_chipidea_probe(struct device *dev)
 {
 	struct resource *iores;
-	struct imx_chipidea_data *imx_data;
+	const struct imx_chipidea_data *imx_data;
 	struct imxusb_platformdata *pdata = dev->platform_data;
 	char const *phynode_name;
 	int ret;
@@ -229,8 +229,8 @@ static int imx_chipidea_probe(struct device *dev)
 	ci->dev = dev;
 	dev->priv = ci;
 
-	ret = dev_get_drvdata(dev, (const void **)&imx_data);
-	if (!ret)
+	imx_data = device_get_match_data(dev);
+	if (imx_data)
 		ci->have_usb_misc = imx_data->have_usb_misc;
 
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node) {
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index bf9583e62645..2553095e29fd 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -35,7 +35,7 @@ struct imx_usb_misc_data {
 };
 
 struct imx_usb_misc_priv {
-	struct imx_usb_misc_data *data;
+	const struct imx_usb_misc_data *data;
 	void __iomem *base;
 };
 
@@ -653,13 +653,12 @@ int imx_usbmisc_port_post_init(struct device *dev, int port, unsigned flags)
 static int imx_usbmisc_probe(struct device *dev)
 {
 	struct resource *iores;
-	struct imx_usb_misc_data *devtype;
+	const struct imx_usb_misc_data *devtype;
 	struct imx_usb_misc_priv *usbmisc;
-	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 97b64302eccf..914212498c79 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -309,9 +309,9 @@ static int dsps_probe(struct device *dev)
 	struct dsps_glue *glue;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&wrp);
-	if (ret)
-		return ret;
+	wrp = device_get_match_data(dev);
+	if (!wrp)
+		return -ENODEV;
 
 	if (!IS_ENABLED(CONFIG_USB_MUSB_HOST) &&
 			!IS_ENABLED(CONFIG_USB_MUSB_GADGET)) {
diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
index 313c67ef7ec2..44111411ddef 100644
--- a/drivers/usb/musb/phy-am335x-control.c
+++ b/drivers/usb/musb/phy-am335x-control.c
@@ -134,9 +134,9 @@ static int am335x_control_usb_probe(struct device *dev)
 	const struct phy_control *phy_ctrl;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&phy_ctrl);
-	if (ret)
-		return ret;
+	phy_ctrl = device_get_match_data(dev);
+	if (!phy_ctrl)
+		return -ENODEV;
 
 	ctrl_usb = xzalloc(sizeof(*ctrl_usb));
 
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index f2d7387b10d6..02fa753c298f 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -317,12 +317,12 @@ static int lcdfb_of_init(struct device *dev, struct atmel_lcdfb_info *sinfo)
 	struct fb_info *info = &sinfo->info;
 	struct display_timings *modes;
 	struct device_node *display;
-	struct atmel_lcdfb_config *config;
+	const struct atmel_lcdfb_config *config;
 	int ret;
 
 	/* Driver data - optional */
-	ret = dev_get_drvdata(dev, (const void **)&config);
-	if (!ret) {
+	config = device_get_match_data(dev);
+	if (config) {
 		sinfo->have_hozval = config->have_hozval;
 		sinfo->have_intensity_bit = config->have_intensity_bit;
 		sinfo->have_alt_pixclock = config->have_alt_pixclock;
diff --git a/drivers/video/imx-ipu-v3/dw_hdmi-imx.c b/drivers/video/imx-ipu-v3/dw_hdmi-imx.c
index b2a32c406cd2..bce802bf43df 100644
--- a/drivers/video/imx-ipu-v3/dw_hdmi-imx.c
+++ b/drivers/video/imx-ipu-v3/dw_hdmi-imx.c
@@ -179,18 +179,18 @@ MODULE_DEVICE_TABLE(of, dw_hdmi_imx_dt_ids);
 
 static int dw_hdmi_imx_probe(struct device *dev)
 {
+	const struct dw_hdmi_plat_data *_plat_data;
 	struct dw_hdmi_plat_data *plat_data;
 	struct device_node *np = dev->of_node;
 	struct imx_hdmi *hdmi;
-	int ret;
 
 	hdmi = xzalloc(sizeof(*hdmi));
 
-	ret = dev_get_drvdata(dev, (const void **)&plat_data);
-	if (ret)
-		return ret;
+	_plat_data = device_get_match_data(dev);
+	if (!_plat_data)
+		return -ENODEV;
 
-	plat_data = xmemdup(plat_data, sizeof(*plat_data));
+	plat_data = xmemdup(_plat_data, sizeof(*_plat_data));
 	plat_data->phy_data = hdmi;
 	plat_data->priv_data = hdmi;
 
@@ -204,9 +204,9 @@ static int dw_hdmi_imx_probe(struct device *dev)
 
 	hdmi->hdmi = dw_hdmi_bind(dev, plat_data);
 	if (IS_ERR(hdmi->hdmi))
-		ret = PTR_ERR(hdmi->hdmi);
+		return PTR_ERR(hdmi->hdmi);
 
-	return ret;
+	return 0;
 }
 
 struct driver dw_hdmi_imx_platform_driver = {
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index ae7d3548267a..54a5899ebb2c 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -312,9 +312,9 @@ static int imx_ldb_probe(struct device *dev)
 	int mapping;
 	const struct imx_ldb_data *devtype;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	imx_ldb = xzalloc(sizeof(*imx_ldb));
 	imx_ldb->base = devtype->base;
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index f1613de42470..e5e4b48e61b0 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -749,9 +749,9 @@ static int ipu_probe(struct device *dev)
 	int i, ret;
 	const struct ipu_devtype *devtype;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
+	devtype = device_get_match_data(dev);
+	if (!devtype)
+		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/watchdog/f71808e_wdt.c b/drivers/watchdog/f71808e_wdt.c
index 5bee06636644..7f594c8f74e9 100644
--- a/drivers/watchdog/f71808e_wdt.c
+++ b/drivers/watchdog/f71808e_wdt.c
@@ -380,13 +380,12 @@ static int f71808e_probe(struct device *dev)
 {
 	struct f71808e_wdt *wd;
 	struct resource *res;
-	int ret;
 
 	wd = xzalloc(sizeof(*wd));
 
-	ret = dev_get_drvdata(dev, (const void **)&wd->variant);
-	if (ret)
-		return ret;
+	wd->variant = device_get_match_data(dev);
+	if (!wd->variant)
+		return -ENODEV;
 
 	res = dev_get_resource(dev->parent, IORESOURCE_IO, 0);
 	if (IS_ERR(res))
diff --git a/drivers/watchdog/imxulp-wdt.c b/drivers/watchdog/imxulp-wdt.c
index 5571c32ef44f..26b45d2b6c4d 100644
--- a/drivers/watchdog/imxulp-wdt.c
+++ b/drivers/watchdog/imxulp-wdt.c
@@ -107,12 +107,12 @@ static int imxulp_wd_probe(struct device *dev)
 {
 	struct imxulp_wd *imxwd;
 	struct resource *iores;
-	struct imxulp_socdata *socdata;
+	const struct imxulp_socdata *socdata;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&socdata);
-	if (ret)
-		return ret;
+	socdata = device_get_match_data(dev);
+	if (!socdata)
+		return -ENODEV;
 
 	imxwd = xzalloc(sizeof(*imxwd));
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 35c688fc2701..e74638f9419c 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -234,12 +234,12 @@ static int imx_wd_probe(struct device *dev)
 	struct resource *iores;
 	struct imx_wd *priv;
 	struct clk *clk;
-	void *ops;
+	const struct imx_wd_ops *ops;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&ops);
-	if (ret)
-		return ret;
+	ops = device_get_match_data(dev);
+	if (!ops)
+		return -ENODEV;
 
 	priv = xzalloc(sizeof(struct imx_wd));
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index c47a8cac15ec..b8b4fd07fb82 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -132,7 +132,7 @@ MODULE_DEVICE_TABLE(of, stm32_iwdg_of_match);
 
 static int stm32_iwdg_probe(struct device *dev)
 {
-	struct stm32_iwdg_data *data;
+	const struct stm32_iwdg_data *data;
 	struct stm32_iwdg *wd;
 	struct resource *res;
 	struct watchdog *wdd;
@@ -141,8 +141,8 @@ static int stm32_iwdg_probe(struct device *dev)
 
 	wd = xzalloc(sizeof(*wd));
 
-	ret = dev_get_drvdata(dev, (const void **)&data);
-	if (ret)
+	data = device_get_match_data(dev);
+	if (!data)
 		return -ENODEV;
 
 	res = dev_request_mem_resource(dev, 0);
-- 
2.39.5



