Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF9rE-0003Sz-RO
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 21:02:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2013 22:01:56 +0100
Message-Id: <1363035716-13386-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1363035716-13386-1-git-send-email-s.hauer@pengutronix.de>
References: <1363035716-13386-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] drivers: Bail out if dev_request_mem_region fails
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx1.c        |  2 ++
 arch/arm/mach-imx/clk-imx21.c       |  2 ++
 arch/arm/mach-imx/clk-imx25.c       |  2 ++
 arch/arm/mach-imx/clk-imx27.c       |  2 ++
 arch/arm/mach-imx/clk-imx31.c       |  2 ++
 arch/arm/mach-imx/clk-imx35.c       |  2 ++
 arch/arm/mach-imx/clk-imx5.c        |  4 ++++
 arch/arm/mach-imx/clk-imx6.c        |  2 ++
 arch/arm/mach-imx/clocksource.c     |  2 ++
 arch/arm/mach-imx/esdctl.c          |  2 +-
 arch/arm/mach-imx/gpio.c            | 10 ++++++++++
 arch/arm/mach-imx/iim.c             |  2 ++
 arch/arm/mach-imx/iomux-v2.c        |  2 ++
 arch/arm/mach-imx/iomux-v3.c        |  2 ++
 drivers/mci/mxs.c                   | 10 ++++++++++
 drivers/mci/omap_hsmmc.c            | 10 ++++++++++
 drivers/mci/s3c.c                   | 10 ++++++++++
 drivers/mtd/nor/cfi_flash.c         | 12 ++++++++++++
 drivers/net/fec_imx.c               |  4 ++++
 drivers/serial/serial_altera_jtag.c | 11 +++++++++++
 drivers/serial/serial_imx.c         |  5 +++++
 drivers/serial/serial_s3c.c         | 10 ++++++++++
 drivers/serial/stm-serial.c         | 10 ++++++++++
 drivers/spi/imx_spi.c               |  4 ++++
 drivers/watchdog/imxwd.c            |  5 +++++
 25 files changed, 128 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
index 0d04a92..2192082 100644
--- a/arch/arm/mach-imx/clk-imx1.c
+++ b/arch/arm/mach-imx/clk-imx1.c
@@ -90,6 +90,8 @@ static int imx1_ccm_probe(struct device_d *dev)
 	void __iomem *regs;
 
 	regs = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	mx1_clocks_init(regs, 32000);
 
diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index 6e91424..d76ba9a 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -112,6 +112,8 @@ static int imx21_ccm_probe(struct device_d *dev)
 	unsigned long href = 26000000;
 
 	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	writel(PCCR0_UART1_EN | PCCR0_UART2_EN | PCCR0_UART3_EN | PCCR0_UART4_EN |
 			PCCR0_CSPI1_EN | PCCR0_CSPI2_EN | PCCR0_SDHC1_EN |
diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 95b105d..81db426 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -75,6 +75,8 @@ static int imx25_ccm_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	writel((1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 8) | (1 << 9) |
 			(1 << 10) | (1 << 15) |	(1 << 19) | (1 << 21) | (1 << 22) |
diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index e221928..4c84744 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -134,6 +134,8 @@ static int imx27_ccm_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	writel(PCCR0_SDHC3_EN | PCCR0_SDHC2_EN | PCCR0_SDHC1_EN |
 			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_IIM_EN |
diff --git a/arch/arm/mach-imx/clk-imx31.c b/arch/arm/mach-imx/clk-imx31.c
index aa1b652..435aed7 100644
--- a/arch/arm/mach-imx/clk-imx31.c
+++ b/arch/arm/mach-imx/clk-imx31.c
@@ -83,6 +83,8 @@ static int imx31_ccm_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	writel(0xffffffff, base + CCM_CGR0);
 	writel(0xffffffff, base + CCM_CGR1);
diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
index f50c07d..e1ee979 100644
--- a/arch/arm/mach-imx/clk-imx35.c
+++ b/arch/arm/mach-imx/clk-imx35.c
@@ -96,6 +96,8 @@ static int imx35_ccm_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	writel(0xffffffff, base + CCM_CGR0);
 	writel(0xffffffff, base + CCM_CGR1);
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 8b5bffd..350cce9 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -229,6 +229,8 @@ static int imx51_ccm_probe(struct device_d *dev)
 	void __iomem *regs;
 
 	regs = dev_request_mem_region(dev, 0);
+	if (!regs)
+		return -EBUSY;
 
 	mx51_clocks_init(regs, 32768, 24000000, 22579200, 0); /* FIXME */
 
@@ -292,6 +294,8 @@ static int imx53_ccm_probe(struct device_d *dev)
 	void __iomem *regs;
 
 	regs = dev_request_mem_region(dev, 0);
+	if (!regs)
+		return -EBUSY;
 
 	mx53_clocks_init(regs, 32768, 24000000, 22579200, 0); /* FIXME */
 
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index f1b167a..1cd1bf9 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -187,6 +187,8 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	anatop_base = (void *)MX6_ANATOP_BASE_ADDR;
 	ccm_base = dev_request_mem_region(dev, 0);
+	if (!ccm_base)
+		return -EBUSY;
 
 	base = anatop_base;
 
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index e18685e..1022503 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -103,6 +103,8 @@ static int imx_gpt_probe(struct device_d *dev)
 		return ret;
 
 	timer_base = dev_request_mem_region(dev, 0);
+	if (!timer_base)
+		return -EBUSY;
 
 	/* setup GP Timer 1 */
 	writel(TCTL_SWR, timer_base + GPT_TCTL);
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index cc2bdc1..14d52b3 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -230,7 +230,7 @@ static int imx_esdctl_probe(struct device_d *dev)
 
 	base = dev_request_mem_region(dev, 0);
 	if (!base)
-		return -ENOMEM;
+		return -EBUSY;
 
 	data->add_mem(base, data);
 
diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
index 1bf4100..15919ef 100644
--- a/arch/arm/mach-imx/gpio.c
+++ b/arch/arm/mach-imx/gpio.c
@@ -22,6 +22,7 @@
 
 #include <common.h>
 #include <errno.h>
+#include <malloc.h>
 #include <io.h>
 #include <gpio.h>
 #include <init.h>
@@ -131,6 +132,11 @@ static int imx_gpio_probe(struct device_d *dev)
 
 	imxgpio = xzalloc(sizeof(*imxgpio));
 	imxgpio->base = dev_request_mem_region(dev, 0);
+	if (!imxgpio->base) {
+		ret = -EBUSY;
+		goto err_free;
+	}
+
 	imxgpio->chip.ops = &imx_gpio_ops;
 	if (dev->id < 0) {
 		imxgpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
@@ -148,6 +154,10 @@ static int imx_gpio_probe(struct device_d *dev)
 	dev_dbg(dev, "probed gpiochip%d with base %d\n", dev->id, imxgpio->chip.base);
 
 	return 0;
+err_free:
+	free(imxgpio);
+
+	return ret;
 }
 
 static __maybe_unused struct of_device_id imx_gpio_dt_ids[] = {
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 69ddc4d..5d24848 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -259,6 +259,8 @@ static int imx_iim_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	if (pdata)
 		mac_addr_base = pdata->mac_addr_base;
diff --git a/arch/arm/mach-imx/iomux-v2.c b/arch/arm/mach-imx/iomux-v2.c
index cef0340..a0c1d69 100644
--- a/arch/arm/mach-imx/iomux-v2.c
+++ b/arch/arm/mach-imx/iomux-v2.c
@@ -118,6 +118,8 @@ int imx_iomux_setup_multiple_pins(const unsigned int *pin_list, unsigned count)
 static int imx_iomux_probe(struct device_d *dev)
 {
 	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
index 8a6064d..7c0d088 100644
--- a/arch/arm/mach-imx/iomux-v3.c
+++ b/arch/arm/mach-imx/iomux-v3.c
@@ -73,6 +73,8 @@ EXPORT_SYMBOL(mxc_iomux_v3_setup_multiple_pads);
 static int imx_iomux_probe(struct device_d *dev)
 {
 	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	return 0;
 }
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 3657b3e..f2ceb10 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -569,6 +569,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	struct mxs_mci_platform_data *pd = hw_dev->platform_data;
 	struct mxs_mci_host *mxs_mci;
 	struct mci_host *host;
+	int ret;
 
 	if (hw_dev->platform_data == NULL) {
 		pr_err("Missing platform data\n");
@@ -584,6 +585,10 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	host->set_ios = mxs_mci_set_ios;
 	host->init = mxs_mci_initialize;
 	mxs_mci->regs = dev_request_mem_region(hw_dev, 0);
+	if (!mxs_mci->regs) {
+		ret = -EBUSY;
+		goto err_free;
+	}
 
 	/* feed forward the platform specific values */
 	host->voltages = pd->voltages;
@@ -635,6 +640,11 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 #endif
 
 	return mci_register(host);
+
+err_free:
+	free(mxs_mci);
+
+	return ret;
 }
 
 static struct driver_d mxs_mci_driver = {
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index b379c31..52bd751 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -596,6 +596,11 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.hw_dev = dev;
 
 	hsmmc->iobase = dev_request_mem_region(dev, 0);
+	if (!hsmmc->iobase) {
+		ret = -EBUSY;
+		goto err_free;
+	}
+
 	hsmmc->base = hsmmc->iobase + reg_ofs;
 
 	hsmmc->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
@@ -611,6 +616,11 @@ static int omap_mmc_probe(struct device_d *dev)
 	mci_register(&hsmmc->mci);
 
 	return 0;
+
+err_free:
+	free(hsmmc);
+
+	return ret;
 }
 
 static struct platform_device_id omap_mmc_ids[] = {
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 4e7345c..2b96603 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -726,6 +726,7 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 {
 	struct s3c_mci_host *s3c_host;
 	struct s3c_mci_platform_data *pd = hw_dev->platform_data;
+	int ret;
 
 	s3c_host = xzalloc(sizeof(*s3c_host));
 	s3c_host->host.send_cmd = mci_request;
@@ -743,6 +744,11 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 
 	hw_dev->priv = s3c_host;
 	s3c_host->base = dev_request_mem_region(hw_dev, 0);
+	if (!s3c_host->base) {
+		ret = -EBUSY;
+		goto err_free;
+	}
+
 	s3c_host->host.hw_dev = hw_dev;
 
 	/* feed forward the platform specific values */
@@ -758,6 +764,10 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, s3c_host->base + SDICON);
 
 	return mci_register(&s3c_host->host);
+
+err_free:
+	free(s3c_host);
+	return err;
 }
 
 static struct driver_d s3c_mci_driver = {
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 0cfac2d..0396676 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -954,6 +954,7 @@ static void cfi_init_mtd(struct flash_info *info)
 static int cfi_probe (struct device_d *dev)
 {
 	struct flash_info *info = xzalloc(sizeof(*info));
+	int ret;
 
 	dev->priv = (void *)info;
 
@@ -961,6 +962,11 @@ static int cfi_probe (struct device_d *dev)
 	info->flash_id = FLASH_UNKNOWN;
 	info->cmd_reset = FLASH_CMD_RESET;
 	info->base = dev_request_mem_region(dev, 0);
+	if (!info->base) {
+		ret = -EBUSY;
+		goto err_free;
+	}
+
 	info->size = flash_get_size(info);
 
 	if (info->flash_id == FLASH_UNKNOWN) {
@@ -975,6 +981,12 @@ static int cfi_probe (struct device_d *dev)
 	cfi_init_mtd(info);
 
 	return 0;
+
+err_free:
+
+	free(info);
+
+	return ret;
 }
 
 static __maybe_unused struct of_device_id cfi_dt_ids[] = {
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 578000a..f6cdc84 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -666,6 +666,10 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	fec->regs = dev_request_mem_region(dev, 0);
+	if (!fec->regs) {
+		ret = -EBUSY;
+		goto err_free;
+	}
 
 	/* Reset chip. */
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index b83fcbd..76a9bfd 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -85,11 +85,17 @@ static int altera_serial_jtag_probe(struct device_d *dev) {
 
 	struct console_device *cdev;
 	struct altera_serial_jtag_priv *priv;
+	int ret;
 
 	priv = xzalloc(sizeof(*priv));
 	cdev = &priv->cdev;
 
 	priv->regs = dev_request_mem_region(dev, 0);
+	if (!priv->regs) {
+		ret = -EBUSY;
+		goto err_free;
+	}
+
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = altera_serial_jtag_tstc;
@@ -100,6 +106,11 @@ static int altera_serial_jtag_probe(struct device_d *dev) {
 	console_register(cdev);
 
 	return 0;
+
+err_free:
+	free(priv);
+
+	return ret;
 }
 
 static struct driver_d altera_serial_jtag_driver = {
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 3f219ae..5a3316d 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -329,6 +329,11 @@ static int imx_serial_probe(struct device_d *dev)
 	}
 
 	priv->regs = dev_request_mem_region(dev, 0);
+	if (!priv->regs) {
+		ret = -EBUSY;
+		goto err_free;
+	}
+
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = imx_serial_tstc;
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index ed401ab..71382ef 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -178,10 +178,15 @@ static int s3c_serial_probe(struct device_d *dev)
 {
 	struct s3c_uart *priv;
 	struct console_device *cdev;
+	int ret;
 
 	priv = xzalloc(sizeof(struct s3c_uart));
 	cdev = &priv->cdev;
 	priv->regs = dev_request_mem_region(dev, 0);
+	if (!priv->regs) {
+		ret = -EBUSY;
+		goto err_free;
+	}
 	dev->priv = priv;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
@@ -197,6 +202,11 @@ static int s3c_serial_probe(struct device_d *dev)
 	console_register(cdev);
 
 	return 0;
+
+err_free:
+	free(priv);
+
+	return ret;
 }
 
 static void s3c_serial_remove(struct device_d *dev)
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 3968892..3f15bb5 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -144,6 +144,7 @@ static int stm_serial_probe(struct device_d *dev)
 {
 	struct stm_priv *priv;
 	struct console_device *cdev;
+	int ret;
 
 	priv = xzalloc(sizeof *priv);
 
@@ -159,6 +160,10 @@ static int stm_serial_probe(struct device_d *dev)
 
 	dev->priv = priv;
 	priv->base = dev_request_mem_region(dev, 0);
+	if (!priv->base) {
+		ret = -EBUSY;
+		goto err_free;
+	}
 
 	stm_serial_init_port(priv);
 	stm_serial_setbaudrate(cdev, CONFIG_BAUDRATE);
@@ -171,6 +176,11 @@ static int stm_serial_probe(struct device_d *dev)
 	clock_register_client(&priv->notify);
 
 	return 0;
+
+err_free:
+	free(priv);
+
+	return ret;
 }
 
 static void stm_serial_remove(struct device_d *dev)
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index b749337..9f88955 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -568,6 +568,10 @@ static int imx_spi_probe(struct device_d *dev)
 	imx->xchg_single = spi_imx_devtype_data[version].xchg_single;
 	imx->init = spi_imx_devtype_data[version].init;
 	imx->regs = dev_request_mem_region(dev, 0);
+	if (!imx->regs) {
+		ret = -EBUSY;
+		goto err_free;
+	}
 
 	imx->init(imx);
 
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 78f0f38..3165e25 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -158,6 +158,11 @@ static int imx_wd_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(struct imx_wd));
 	priv->base = dev_request_mem_region(dev, 0);
+	if (!priv->base) {
+		ret = -EBUSY;
+		goto on_error;
+	}
+
 	priv->set_timeout = fn;
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
 	priv->dev = dev;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
