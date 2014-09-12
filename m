Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrv-0003Cj-BO
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:49 +0200
Message-Id: <1410516830-9403-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
References: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] resource: Let dev_request_mem_region return an error
 pointer
To: barebox@lists.infradead.org

For all users fix or add the error check.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/at91sam926x_time.c |  2 ++
 arch/arm/mach-at91/sam9_smc.c         |  5 +--
 arch/arm/mach-imx/clk-imx1.c          |  2 ++
 arch/arm/mach-imx/clk-imx21.c         |  2 ++
 arch/arm/mach-imx/clk-imx25.c         |  2 ++
 arch/arm/mach-imx/clk-imx27.c         |  2 ++
 arch/arm/mach-imx/clk-imx31.c         |  2 ++
 arch/arm/mach-imx/clk-imx35.c         |  2 ++
 arch/arm/mach-imx/clk-imx5.c          |  2 ++
 arch/arm/mach-imx/clk-imx6.c          |  2 ++
 arch/arm/mach-imx/clocksource.c       |  2 ++
 arch/arm/mach-imx/esdctl.c            |  5 +--
 arch/arm/mach-imx/iim.c               |  4 +--
 arch/arm/mach-imx/ocotp.c             |  4 +--
 arch/arm/mach-mxs/ocotp.c             |  3 ++
 arch/arm/mach-tegra/tegra20-pmc.c     |  5 +--
 arch/arm/mach-tegra/tegra20-timer.c   |  5 +--
 arch/arm/mach-zynq/clk-zynq7000.c     |  4 +--
 arch/mips/mach-ar231x/ar231x_reset.c  |  5 +--
 drivers/ata/ahci.c                    |  3 ++
 drivers/ata/intf_platform_ide.c       |  9 +++--
 drivers/ata/pata-imx.c                |  2 ++
 drivers/ata/sata-imx.c                |  4 +--
 drivers/base/driver.c                 |  4 +--
 drivers/bus/imx-weim.c                |  5 +--
 drivers/clk/clk-ar933x.c              |  4 +--
 drivers/clk/mvebu/common.c            |  5 +--
 drivers/clk/mxs/clk-imx23.c           |  2 ++
 drivers/clk/mxs/clk-imx28.c           |  2 ++
 drivers/clk/socfpga.c                 |  4 +--
 drivers/clk/tegra/clk-tegra124.c      |  4 +--
 drivers/clk/tegra/clk-tegra20.c       |  4 +--
 drivers/clk/tegra/clk-tegra30.c       |  4 +--
 drivers/clocksource/arm_smp_twd.c     |  2 ++
 drivers/clocksource/bcm2835.c         |  2 ++
 drivers/clocksource/clps711x.c        |  4 +--
 drivers/clocksource/digic.c           |  5 +--
 drivers/clocksource/mvebu.c           |  2 ++
 drivers/clocksource/nomadik.c         |  2 ++
 drivers/clocksource/orion.c           |  3 ++
 drivers/clocksource/uemd.c            |  5 +--
 drivers/dma/apbh_dma.c                |  5 +--
 drivers/gpio/gpio-clps711x.c          | 10 ++++--
 drivers/gpio/gpio-davinci.c           |  4 +--
 drivers/gpio/gpio-dw.c                |  5 +--
 drivers/gpio/gpio-jz4740.c            |  5 +--
 drivers/gpio/gpio-malta-fpga-i2c.c    |  4 +--
 drivers/gpio/gpio-omap.c              |  4 +++
 drivers/gpio/gpio-tegra.c             |  4 +--
 drivers/i2c/busses/i2c-imx.c          |  3 ++
 drivers/i2c/busses/i2c-omap.c         |  2 ++
 drivers/i2c/busses/i2c-versatile.c    |  5 +--
 drivers/input/imx_keypad.c            |  3 ++
 drivers/mci/atmel_mci.c               |  2 ++
 drivers/mci/dw_mmc.c                  |  4 +--
 drivers/mci/imx-esdhc.c               |  2 ++
 drivers/mci/imx.c                     |  2 ++
 drivers/mci/mci-bcm2835.c             |  5 +--
 drivers/mci/mxs.c                     |  2 ++
 drivers/mci/omap_hsmmc.c              |  3 ++
 drivers/mci/pxamci.c                  |  3 ++
 drivers/mci/s3c.c                     |  4 +++
 drivers/mci/tegra-sdmmc.c             |  5 +--
 drivers/misc/sram.c                   |  5 +--
 drivers/mtd/nand/atmel_nand.c         |  3 ++
 drivers/mtd/nand/nand_mxs.c           |  5 +++
 drivers/mtd/nand/nand_orion.c         |  4 +--
 drivers/mtd/nor/cfi_flash.c           |  4 +++
 drivers/net/altera_tse.c              |  9 +++++
 drivers/net/ar231x.c                  |  9 ++---
 drivers/net/arc_emac.c                |  3 ++
 drivers/net/cpsw.c                    |  3 ++
 drivers/net/designware.c              |  4 +++
 drivers/net/ethoc.c                   |  3 ++
 drivers/net/fec_mpc5200.c             |  3 ++
 drivers/net/ks8851_mll.c              |  6 ++++
 drivers/net/macb.c                    |  2 ++
 drivers/net/smc91111.c                |  3 ++
 drivers/pinctrl/imx-iomux-v2.c        |  3 ++
 drivers/pinctrl/mvebu/armada-xp.c     |  4 +--
 drivers/pinctrl/mvebu/kirkwood.c      |  5 +--
 drivers/pinctrl/pinctrl-at91.c        |  4 +--
 drivers/pinctrl/pinctrl-tegra20.c     |  5 +--
 drivers/pinctrl/pinctrl-tegra30.c     |  5 +--
 drivers/pwm/pwm-imx.c                 |  5 +--
 drivers/serial/atmel.c                |  3 ++
 drivers/serial/serial_ar933x.c        |  3 ++
 drivers/serial/serial_auart.c         |  2 ++
 drivers/serial/serial_cadence.c       |  4 +--
 drivers/serial/serial_mpc5xxx.c       |  3 ++
 drivers/serial/serial_ns16550.c       |  2 ++
 drivers/serial/stm-serial.c           |  2 ++
 drivers/spi/altera_spi.c              |  3 ++
 drivers/spi/mvebu_spi.c               |  4 +--
 drivers/spi/mxs_spi.c                 |  3 ++
 drivers/usb/gadget/at91_udc.c         |  4 +--
 drivers/usb/gadget/fsl_udc.c          |  4 +++
 drivers/usb/host/ehci-hcd.c           |  4 +++
 drivers/usb/host/ohci-hcd.c           |  3 ++
 drivers/usb/imx/chipidea-imx.c        |  5 +--
 drivers/video/atmel_lcdfb_core.c      |  2 ++
 drivers/video/imx-ipu-fb.c            |  2 ++
 drivers/video/imx.c                   |  3 ++
 drivers/video/pxa.c                   |  3 ++
 drivers/watchdog/im28wd.c             |  3 ++
 zz                                    | 66 +++++++++++++++++++++++++++++++++++
 106 files changed, 358 insertions(+), 94 deletions(-)
 create mode 100644 zz

diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index 644dc34..06d3e32 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -90,6 +90,8 @@ static int at91_pit_probe(struct device_d *dev)
 	}
 
 	pit_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(pit_base))
+		return PTR_ERR(pit_base);
 
 	pit_rate = clk_get_rate(clk) / 16;
 
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 9f02807..403fa9b 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -14,6 +14,7 @@
 #include <mach/hardware.h>
 #include <mach/cpu.h>
 #include <mach/io.h>
+#include <linux/err.h>
 
 #include <mach/at91sam9_smc.h>
 
@@ -164,9 +165,9 @@ static int at91sam9_smc_probe(struct device_d *dev)
 	}
 
 	smc_base_addr[id] = dev_request_mem_region(dev, 0);
-	if (!smc_base_addr[id]) {
+	if (IS_ERR(smc_base_addr[id])) {
 		dev_err(dev, "Impossible to request smc.%d\n", id);
-		return -ENOMEM;
+		return PTR_ERR(smc_base_addr[id]);
 	}
 
 	return 0;
diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
index 6fcd6fa..bb1318f 100644
--- a/arch/arm/mach-imx/clk-imx1.c
+++ b/arch/arm/mach-imx/clk-imx1.c
@@ -90,6 +90,8 @@ static int imx1_ccm_probe(struct device_d *dev)
 	void __iomem *regs;
 
 	regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
 
 	mx1_clocks_init(regs, 32000);
 
diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index be9c466..b48bb8c 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -112,6 +112,8 @@ static int imx21_ccm_probe(struct device_d *dev)
 	unsigned long href = 26000000;
 
 	base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	writel(PCCR0_UART1_EN | PCCR0_UART2_EN | PCCR0_UART3_EN | PCCR0_UART4_EN |
 			PCCR0_CSPI1_EN | PCCR0_CSPI2_EN | PCCR0_SDHC1_EN |
diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 1114ad2..7d10078 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -88,6 +88,8 @@ static int imx25_ccm_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	writel((1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 8) | (1 << 9) |
 			(1 << 10) | (1 << 15) |	(1 << 19) | (1 << 21) | (1 << 22) |
diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index 2423627..bd1753a 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -159,6 +159,8 @@ static int imx27_ccm_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	writel(PCCR0_SDHC3_EN | PCCR0_SDHC2_EN | PCCR0_SDHC1_EN |
 			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_IIM_EN |
diff --git a/arch/arm/mach-imx/clk-imx31.c b/arch/arm/mach-imx/clk-imx31.c
index 4935595..eb9bb09 100644
--- a/arch/arm/mach-imx/clk-imx31.c
+++ b/arch/arm/mach-imx/clk-imx31.c
@@ -83,6 +83,8 @@ static int imx31_ccm_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	writel(0xffffffff, base + CCM_CGR0);
 	writel(0xffffffff, base + CCM_CGR1);
diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
index 6ea4577..dde2339 100644
--- a/arch/arm/mach-imx/clk-imx35.c
+++ b/arch/arm/mach-imx/clk-imx35.c
@@ -96,6 +96,8 @@ static int imx35_ccm_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	writel(0xffffffff, base + CCM_CGR0);
 	writel(0xffffffff, base + CCM_CGR1);
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index e46f4d2..2ae8d6a 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -311,6 +311,8 @@ static int imx51_ccm_probe(struct device_d *dev)
 	void __iomem *regs;
 
 	regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
 
 	mx51_clocks_init(regs, 32768, 24000000, 22579200, 0); /* FIXME */
 
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 4598a62..c051876 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -328,6 +328,8 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	anatop_base = (void *)MX6_ANATOP_BASE_ADDR;
 	ccm_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(ccm_base))
+		return PTR_ERR(ccm_base);
 
 	base = anatop_base;
 
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 9f5ca56..eba04a3 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -104,6 +104,8 @@ static int imx_gpt_probe(struct device_d *dev)
 		return ret;
 
 	timer_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(timer_base))
+		return PTR_ERR(timer_base);
 
 	/* setup GP Timer 1 */
 	writel(TCTL_SWR, timer_base + GPT_TCTL);
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 811592f..f0d2b5b 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -22,6 +22,7 @@
 #include <sizes.h>
 #include <init.h>
 #include <of.h>
+#include <linux/err.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
 #include <mach/esdctl.h>
@@ -297,8 +298,8 @@ static int imx_esdctl_probe(struct device_d *dev)
 		return ret;
 
 	base = dev_request_mem_region(dev, 0);
-	if (!base)
-		return -ENOMEM;
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	if (imx_esdctl_disabled)
 		return 0;
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 16ba678..2546b92 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -411,8 +411,8 @@ static int imx_iim_probe(struct device_d *dev)
 	iim->fuse_supply = ERR_PTR(-ENODEV);
 
 	iim->base = dev_request_mem_region(dev, 0);
-	if (!iim->base)
-		return -EBUSY;
+	if (IS_ERR(iim->base))
+		return PTR_ERR(iim->base);
 
 	for (i = 0; i < IIM_NUM_BANKS; i++) {
 		ret = imx_iim_add_bank(iim, i);
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 476b376..837500f 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -397,8 +397,8 @@ static int imx_ocotp_probe(struct device_d *dev)
 	int ret = 0;
 
 	base = dev_request_mem_region(dev, 0);
-	if (!base)
-		return -EBUSY;
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	imx_ocotp_init_dt(dev, base);
 
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 59c3b8a..c7c24e0 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -183,6 +183,9 @@ static int mxs_ocotp_probe(struct device_d *dev)
 	struct ocotp_priv *priv = xzalloc(sizeof (*priv));
 
 	priv->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
 	priv->clk = clk_get(dev, NULL);
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index 94167d6..d868094 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -23,6 +23,7 @@
 #include <command.h>
 #include <init.h>
 #include <io.h>
+#include <linux/err.h>
 
 #include <mach/tegra20-pmc.h>
 
@@ -40,9 +41,9 @@ EXPORT_SYMBOL(reset_cpu);
 static int tegra20_pmc_probe(struct device_d *dev)
 {
 	pmc_base = dev_request_mem_region(dev, 0);
-	if (!pmc_base) {
+	if (IS_ERR(pmc_base)) {
 		dev_err(dev, "could not get memory region\n");
-		return -ENODEV;
+		return PTR_ERR(pmc_base);
 	}
 
 	return 0;
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
index 2b32647..ddc70dc 100644
--- a/arch/arm/mach-tegra/tegra20-timer.c
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -24,6 +24,7 @@
 #include <init.h>
 #include <io.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <mach/lowlevel.h>
 
 /* register definitions */
@@ -51,9 +52,9 @@ static int tegra20_timer_probe(struct device_d *dev)
 		return -EBUSY;
 
 	timer_base = dev_request_mem_region(dev, 0);
-	if (!timer_base) {
+	if (IS_ERR(timer_base)) {
 		dev_err(dev, "could not get memory region\n");
-		return -ENODEV;
+		return PTR_ERR(timer_base);
 	}
 
 	/*
diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
index b4513a9..2b9260b 100644
--- a/arch/arm/mach-zynq/clk-zynq7000.c
+++ b/arch/arm/mach-zynq/clk-zynq7000.c
@@ -363,8 +363,8 @@ static int zynq_clock_probe(struct device_d *dev)
 	unsigned long ps_clk_rate = 33333330;
 
 	slcr_base = dev_request_mem_region(dev, 0);
-	if (!slcr_base)
-		return -EBUSY;
+	if (IS_ERR(slcr_base))
+		return PTR_ERR(slcr_base);
 
 	clks[ps_clk]  = clk_fixed("ps_clk", ps_clk_rate);
 
diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
index 5ececb5..0788add 100644
--- a/arch/mips/mach-ar231x/ar231x_reset.c
+++ b/arch/mips/mach-ar231x/ar231x_reset.c
@@ -10,6 +10,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <linux/err.h>
 
 #include <mach/ar2312_regs.h>
 #include <mach/ar231x_platform.h>
@@ -53,9 +54,9 @@ EXPORT_SYMBOL(ar231x_reset_bit);
 static int ar231x_reset_probe(struct device_d *dev)
 {
 	reset_base = dev_request_mem_region(dev, 0);
-	if (!reset_base) {
+	if (IS_ERR(reset_base)) {
 		dev_err(dev, "could not get memory region\n");
-		return -ENODEV;
+		return PTR_ERR(reset_base);
 	}
 
 	return 0;
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 810d9ab..645e9b5 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -28,6 +28,7 @@
 #include <malloc.h>
 #include <scsi.h>
 #include <linux/ctype.h>
+#include <linux/err.h>
 #include <disks.h>
 #include <asm/mmu.h>
 #include <ata_drive.h>
@@ -654,6 +655,8 @@ static int ahci_probe(struct device_d *dev)
 	ahci = xzalloc(sizeof(*ahci));
 
 	regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
 
 	ahci->dev = dev;
 	ahci->mmio_base = regs;
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 851f8f5..0d392d8 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -84,7 +84,7 @@ static int platform_ide_probe(struct device_d *dev)
 	struct ide_port *ide;
 	void *reg_base, *alt_base = NULL;
 	struct resource *reg, *alt;
-	int mmio;
+	int mmio = 0;
 
 	if (pdata == NULL) {
 		dev_err(dev, "No platform data. Cannot continue\n");
@@ -92,9 +92,12 @@ static int platform_ide_probe(struct device_d *dev)
 	}
 
 	reg_base = dev_request_mem_region(dev, 0);
-	mmio = (reg_base != NULL);
-	if (mmio) {
+
+	if (!IS_ERR(reg_base)) {
+		mmio = 1;
 		alt_base = dev_request_mem_region(dev, 1);
+		if (IS_ERR(alt_base))
+			alt_base = NULL;
 	} else {
 		reg = dev_get_resource(dev, IORESOURCE_IO, 0);
 		if (IS_ERR(reg))
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 6bd7524..d8deba1 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -161,6 +161,8 @@ static int imx_pata_probe(struct device_d *dev)
 
 	ide = xzalloc(sizeof(*ide));
 	base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	clk = clk_get(dev, NULL);
 	if (IS_ERR(clk)) {
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index 450cf4f..1c0e1db 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -99,8 +99,8 @@ static int imx_sata_probe(struct device_d *dev)
 	}
 
 	imx_ahci->ahci.mmio_base = dev_request_mem_region(dev, 0);
-	if (!imx_ahci->ahci.mmio_base)
-		return -ENODEV;
+	if (IS_ERR(imx_ahci->ahci.mmio_base))
+		return PTR_ERR(imx_ahci->ahci.mmio_base);
 
 	data->init(imx_ahci);
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index e61c6c5..e024024 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -324,11 +324,11 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, num);
 	if (IS_ERR(res))
-		return NULL;
+		return ERR_CAST(res);
 
 	res = request_iomem_region(dev_name(dev), res->start, res->end);
 	if (IS_ERR(res))
-		return NULL;
+		return ERR_CAST(res);
 
 	return (void __force __iomem *)res->start;
 }
diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 78bccda..9b8848d 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -12,6 +12,7 @@
 #include <init.h>
 #include <io.h>
 #include <of.h>
+#include <linux/err.h>
 
 struct imx_weim_devtype {
 	unsigned int	cs_count;
@@ -144,8 +145,8 @@ static int weim_probe(struct device_d *dev)
 
 	/* get the resource */
 	weim->base = dev_request_mem_region(dev, 0);
-	if (!weim->base) {
-		ret = -EBUSY;
+	if (IS_ERR(weim->base)) {
+		ret = PTR_ERR(weim->base);
 		goto weim_err;
 	}
 
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index d983387..79b2571 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -140,8 +140,8 @@ static int ar933x_clk_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
-	if (!base)
-		return -EBUSY;
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	ar933x_ref_clk_init(base);
 	ar933x_pll_init(base);
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index f3be5f2..0e7f65c 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -15,6 +15,7 @@
 #include <init.h>
 #include <of.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <linux/clkdev.h>
 
 #include "common.h"
@@ -166,8 +167,8 @@ int mvebu_clk_gating_probe(struct device_d *dev)
 	desc = (const struct clk_gating_soc_desc *)match->data;
 
 	base = dev_request_mem_region(dev, 0);
-	if (!base)
-		return -EINVAL;
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	clk = of_clk_get(np, 0);
 	if (IS_ERR(clk))
diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
index 4b15350..1f84e9f 100644
--- a/drivers/clk/mxs/clk-imx23.c
+++ b/drivers/clk/mxs/clk-imx23.c
@@ -129,6 +129,8 @@ static int imx23_ccm_probe(struct device_d *dev)
 	void __iomem *regs;
 
 	regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
 
 	mx23_clocks_init(regs);
 
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 36b71f6..aa2924c 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -169,6 +169,8 @@ static int imx28_ccm_probe(struct device_d *dev)
 	void __iomem *regs;
 
 	regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
 
 	mx28_clocks_init(regs);
 
diff --git a/drivers/clk/socfpga.c b/drivers/clk/socfpga.c
index f4257fd..be97d13 100644
--- a/drivers/clk/socfpga.c
+++ b/drivers/clk/socfpga.c
@@ -358,8 +358,8 @@ static int socfpga_ccm_probe(struct device_d *dev)
 	struct device_node *clknode;
 
 	regs = dev_request_mem_region(dev, 0);
-	if (!regs)
-		return -EBUSY;
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
 
 	clk_mgr_base_addr = regs;
 
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index 1e89bee..514b22a 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -301,8 +301,8 @@ static struct tegra_clk_init_table init_table[] = {
 static int tegra124_car_probe(struct device_d *dev)
 {
 	car_base = dev_request_mem_region(dev, 0);
-	if (!car_base)
-		return -EBUSY;
+	if (IS_ERR(car_base))
+		return PTR_ERR(car_base);
 
 	tegra124_osc_clk_init();
 	tegra124_pll_init();
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 5803414..5b4365d 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -339,8 +339,8 @@ static struct tegra_clk_init_table init_table[] = {
 static int tegra20_car_probe(struct device_d *dev)
 {
 	car_base = dev_request_mem_region(dev, 0);
-	if (!car_base)
-		return -EBUSY;
+	if (IS_ERR(car_base))
+		return PTR_ERR(car_base);
 
 	tegra20_osc_clk_init();
 	tegra20_pll_init();
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 3b50830..ed6d736 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -336,8 +336,8 @@ static struct tegra_clk_init_table init_table[] = {
 static int tegra30_car_probe(struct device_d *dev)
 {
 	car_base = dev_request_mem_region(dev, 0);
-	if (!car_base)
-		return -EBUSY;
+	if (IS_ERR(car_base))
+		return PTR_ERR(car_base);
 
 	tegra30_osc_clk_init();
 	tegra30_pll_init();
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
index 3efe8dd..72045b0 100644
--- a/drivers/clocksource/arm_smp_twd.c
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -62,6 +62,8 @@ static int smp_twd_probe(struct device_d *dev)
 	}
 
 	twd_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(twd_base))
+		return PTR_ERR(twd_base);
 
 	tick_rate = clk_get_rate(twd_clk);
 	if (tick_rate > SMP_TWD_MAX_FREQ) {
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index d1df3d2..c0b1aae 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -62,6 +62,8 @@ static int bcm2835_cs_probe(struct device_d *dev)
 
 	rate = clk_get_rate(stc_clk);
 	stc_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(stc_base))
+		return PTR_ERR(stc_base);
 
 	clocks_calc_mult_shift(&bcm2835_stc.mult, &bcm2835_stc.shift, rate, NSEC_PER_SEC, 60);
 	init_clock(&bcm2835_stc);
diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index 8c379d3..a49853f 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -38,9 +38,9 @@ static int clps711x_cs_probe(struct device_d *dev)
 
 	rate = clk_get_rate(timer_clk);
 	clps711x_timer_base = dev_request_mem_region(dev, 0);
-	if (!clps711x_timer_base) {
+	if (IS_ERR(clps711x_timer_base)) {
 		clk_put(timer_clk);
-		return -ENOENT;
+		return PTR_ERR(clps711x_timer_base);
 	}
 
 	clocks_calc_mult_shift(&clps711x_cs.mult, &clps711x_cs.shift, rate,
diff --git a/drivers/clocksource/digic.c b/drivers/clocksource/digic.c
index b80ef6f..277bb02 100644
--- a/drivers/clocksource/digic.c
+++ b/drivers/clocksource/digic.c
@@ -19,6 +19,7 @@
 #include <io.h>
 #include <init.h>
 #include <clock.h>
+#include <linux/err.h>
 
 #define DIGIC_TIMER_CLOCK 1000000
 
@@ -44,9 +45,9 @@ static int digic_timer_probe(struct device_d *dev)
 		return -EBUSY;
 
 	timer_base = dev_request_mem_region(dev, 0);
-	if (!timer_base) {
+	if (IS_ERR(timer_base)) {
 		dev_err(dev, "could not get memory region\n");
-		return -ENODEV;
+		return PTR_ERR(timer_base);
 	}
 
 	clocks_calc_mult_shift(&digic_cs.mult, &digic_cs.shift,
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index e5cb921..b8fa985 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -60,6 +60,8 @@ static int mvebu_timer_probe(struct device_d *dev)
 	u32 rate, div, val;
 
 	timer_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(timer_base))
+		return PTR_ERR(timer_base);
 
 	val = __raw_readl(timer_base + TIMER_CTRL_OFF);
 	val &= ~(TIMER0_25MHZ | TIMER0_DIV_MASK);
diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
index 8a3e6d9..d7edf06 100644
--- a/drivers/clocksource/nomadik.c
+++ b/drivers/clocksource/nomadik.c
@@ -124,6 +124,8 @@ static int nmdk_mtu_probe(struct device_d *dev)
 
 	/* Save global pointer to mtu, used by functions above */
 	mtu_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(mtu_base))
+		return PTR_ERR(mtu_base);
 
 	/* Init the timer and register clocksource */
 	nmdk_timer_reset();
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index 46932f1..a1dafd8 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -49,6 +49,9 @@ static int orion_timer_probe(struct device_d *dev)
 	uint32_t val;
 
 	timer_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(timer_base))
+		return PTR_ERR(timer_base);
+
 	tclk = clk_get(dev, NULL);
 
 	/* setup TIMER0 as free-running clock source */
diff --git a/drivers/clocksource/uemd.c b/drivers/clocksource/uemd.c
index 2ea455e..6c37de5 100644
--- a/drivers/clocksource/uemd.c
+++ b/drivers/clocksource/uemd.c
@@ -24,6 +24,7 @@
 #include <init.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <clock.h>
 
 #define TIMER_LOAD		0x00
@@ -73,9 +74,9 @@ static int uemd_timer_probe(struct device_d *dev)
 		return -EBUSY;
 
 	timer_base = dev_request_mem_region(dev, 0);
-	if (!timer_base) {
+	if (IS_ERR(timer_base)) {
 		dev_err(dev, "could not get memory region\n");
-		return -ENODEV;
+		return PTR_ERR(timer_base);
 	}
 
 	timer_clk = clk_get(dev, NULL);
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 665d394..cd218f4 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -18,6 +18,7 @@
 #include <dma/apbh-dma.h>
 #include <stmp-device.h>
 #include <linux/list.h>
+#include <linux/err.h>
 #include <common.h>
 #include <driver.h>
 #include <malloc.h>
@@ -597,8 +598,8 @@ static int apbh_dma_probe(struct device_d *dev)
 
 	apbh_dma = apbh = xzalloc(sizeof(*apbh));
 	apbh->regs = dev_request_mem_region(dev, 0);
-	if (!apbh->regs)
-		return -EBUSY;
+	if (IS_ERR(apbh->regs))
+		return PTR_ERR(apbh->regs);
 
 	apbh->id = id;
 
diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index 2f12439..7d3f1ff 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -26,18 +26,22 @@ static int clps711x_gpio_probe(struct device_d *dev)
 		return -ENODEV;
 
 	dat = dev_request_mem_region(dev, 0);
+	if (IS_ERR(dat))
+		return PTR_ERR(dat);
+
 	switch (id) {
 	case 3:
 		dir_inv = dev_request_mem_region(dev, 1);
+		if (IS_ERR(dir_inv))
+			return PTR_ERR(dir_inv);
 		break;
 	default:
 		dir = dev_request_mem_region(dev, 1);
+		if (IS_ERR(dir))
+			return PTR_ERR(dir);
 		break;
 	}
 
-	if (!dat || (!dir && !dir_inv))
-		return -EINVAL;
-
 	bgc = xzalloc(sizeof(struct bgpio_chip));
 	if (!bgc)
 		return -ENOMEM;
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 7d15b85..2b1d82b 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -163,9 +163,9 @@ static int davinci_gpio_probe(struct device_d *dev)
 	chips = xzalloc((ngpio / 32 + 1) * sizeof(*chips));
 
 	gpio_base = dev_request_mem_region(dev, 0);
-	if (!gpio_base) {
+	if (IS_ERR(gpio_base)) {
 		dev_err(dev, "could not get memory region\n");
-		return -ENODEV;
+		return PTR_ERR(gpio_base);
 	}
 
 	for (i = 0, base = 0; base < ngpio; i++, base += 32) {
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index e46cc8e..e582eb6 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -22,6 +22,7 @@
 #include <io.h>
 #include <gpio.h>
 #include <init.h>
+#include <linux/err.h>
 
 #define DW_GPIO_DR 		0x0
 #define DW_GPIO_DDR		0x4
@@ -114,8 +115,8 @@ static int dw_gpio_probe(struct device_d *dev)
 
 	chip = xzalloc(sizeof(*chip));
 	chip->regs = dev_request_mem_region(dev, 0);
-	if (!chip->regs)
-		return -EBUSY;
+	if (IS_ERR(chip->regs))
+		return PTR_ERR(chip->regs);
 
 	chip->chip.ops = &imx_gpio_ops;
 	if (dev->id < 0) {
diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
index 3c8efad..f7e6781 100644
--- a/drivers/gpio/gpio-jz4740.c
+++ b/drivers/gpio/gpio-jz4740.c
@@ -21,6 +21,7 @@
 #include <io.h>
 #include <gpio.h>
 #include <malloc.h>
+#include <linux/err.h>
 
 #define JZ_REG_GPIO_PIN			0x00
 #define JZ_REG_GPIO_DATA		0x10
@@ -94,9 +95,9 @@ static int jz4740_gpio_probe(struct device_d *dev)
 	int ret;
 
 	base = dev_request_mem_region(dev, 0);
-	if (!base) {
+	if (IS_ERR(base)) {
 		dev_err(dev, "could not get memory region\n");
-		return -ENODEV;
+		return PTR_ERR(base);
 	}
 
 	jz4740_gpio = xzalloc(sizeof(*jz4740_gpio));
diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta-fpga-i2c.c
index d6995aa..ff77b8c 100644
--- a/drivers/gpio/gpio-malta-fpga-i2c.c
+++ b/drivers/gpio/gpio-malta-fpga-i2c.c
@@ -138,9 +138,9 @@ static int malta_i2c_gpio_probe(struct device_d *dev)
 	int ret;
 
 	gpio_base = dev_request_mem_region(dev, 0);
-	if (!gpio_base) {
+	if (IS_ERR(gpio_base)) {
 		dev_err(dev, "could not get memory region\n");
-		return -ENODEV;
+		return PTR_ERR(gpio_base);
 	}
 
 	sc = xzalloc(sizeof(*sc));
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index e66a614..ff31b15 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -36,6 +36,7 @@
 #include <errno.h>
 #include <gpio.h>
 #include <init.h>
+#include <linux/err.h>
 
 #define OMAP_GPIO_OE		0x0034
 #define OMAP_GPIO_DATAIN	0x0038
@@ -147,6 +148,9 @@ static int omap_gpio_probe(struct device_d *dev)
 
 	omapgpio = xzalloc(sizeof(*omapgpio));
 	omapgpio->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(omapgpio->base))
+		return PTR_ERR(omapgpio->base);
+
 	if (drvdata)
 		omapgpio->base += drvdata->regofs;
 
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index bab32ee..d4eea4e 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -149,9 +149,9 @@ static int tegra_gpio_probe(struct device_d *dev)
 	}
 
 	gpio_base = dev_request_mem_region(dev, 0);
-	if (!gpio_base) {
+	if (IS_ERR(gpio_base)) {
 		dev_err(dev, "could not get memory region\n");
-		return -ENODEV;
+		return PTR_ERR(gpio_base);
 	}
 
 	for (i = 0; i < config->bank_count; i++) {
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 6b39047..714e83c 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -548,6 +548,9 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 	i2c_fsl->adapter.dev.parent = pdev;
 	i2c_fsl->adapter.dev.device_node = pdev->device_node;
 	i2c_fsl->base = dev_request_mem_region(pdev, 0);
+	if (IS_ERR(i2c_fsl->base))
+		return PTR_ERR(i2c_fsl->base);
+
 	i2c_fsl->dfsrr = -1;
 
 	/* Set up clock divider */
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index adc952b..0d714cc 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1023,6 +1023,8 @@ i2c_omap_probe(struct device_d *pdev)
 
 	i2c_omap->speed = speed;
 	i2c_omap->base = dev_request_mem_region(pdev, 0);
+	if (IS_ERR(i2c_omap->base))
+		return PTR_ERR(i2c_omap->base);
 
 	/*
 	 * Read the Rev hi bit-[15:14] ie scheme this is 1 indicates ver2.
diff --git a/drivers/i2c/busses/i2c-versatile.c b/drivers/i2c/busses/i2c-versatile.c
index 4fead61..bfabc78 100644
--- a/drivers/i2c/busses/i2c-versatile.c
+++ b/drivers/i2c/busses/i2c-versatile.c
@@ -15,6 +15,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <io.h>
+#include <linux/err.h>
 
 #define I2C_CONTROL	0x00
 #define I2C_CONTROLS	0x00
@@ -75,8 +76,8 @@ static int i2c_versatile_probe(struct device_d *dev)
 	}
 
 	i2c->base = dev_request_mem_region(dev, 0);
-	if (!i2c->base) {
-		ret = -ENOMEM;
+	if (IS_ERR(i2c->base)) {
+		ret = PTR_ERR(i2c->base);
 		goto err_free;
 	}
 
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index afe93c3..c67deb8 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -47,6 +47,7 @@
 #include <kfifo.h>
 #include <malloc.h>
 #include <matrix_keypad.h>
+#include <linux/err.h>
 
 /*
  * Keypad Controller registers (halfword)
@@ -401,6 +402,8 @@ static int __init imx_keypad_probe(struct device_d *dev)
 
 	keypad->dev = dev;
 	keypad->mmio_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(keypad->mmio_base))
+		return PTR_ERR(keypad->mmio_base);
 
 	if(!keypad->fifo_size)
 		keypad->fifo_size = 50;
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 36107a6..63d2475 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -572,6 +572,8 @@ static int atmci_probe(struct device_d *hw_dev)
 	host->slot_b = pd->slot_b;
 
 	host->regs = dev_request_mem_region(hw_dev, 0);
+	if (IS_ERR(host->regs))
+		return PTR_ERR(host->regs);
 	host->hw_dev = hw_dev;
 	hw_dev->priv = host;
 	host->clk = clk_get(hw_dev, "mci_clk");
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 4c2f3c6..365b60d 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -547,8 +547,8 @@ static int dw_mmc_probe(struct device_d *dev)
 
 	host->dev = dev;
 	host->ioaddr = dev_request_mem_region(dev, 0);
-	if (!host->ioaddr)
-		return -EBUSY;
+	if (IS_ERR(host->ioaddr))
+		return PTR_ERR(host->ioaddr);
 
 	if (pdata) {
 		mci->devname = pdata->devname;
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index f5e78e0..487cd41 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -536,6 +536,8 @@ static int fsl_esdhc_probe(struct device_d *dev)
 
 	host->dev = dev;
 	host->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(host->regs))
+		return PTR_ERR(host->regs);
 
 	/* First reset the eSDHC controller */
 	ret = esdhc_reset(host->regs);
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 6992177..9c8c1b1 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -508,6 +508,8 @@ static int mxcmci_probe(struct device_d *dev)
 	host->mci.hw_dev = dev;
 
 	host->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(host->base))
+		return PTR_ERR(host->base);
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 7d8997c..59c667f 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -35,6 +35,7 @@
 #include <malloc.h>
 #include <clock.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 
 #include "mci-bcm2835.h"
 #include "sdhci.h"
@@ -505,9 +506,9 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	host->hw_dev = hw_dev;
 	host->max_clock = clk_get_rate(clk);
 	host->regs = dev_request_mem_region(hw_dev, 0);
-	if (host->regs == NULL) {
+	if (IS_ERR(host->regs)) {
 		dev_err(host->hw_dev, "Failed request mem region, aborting...\n");
-		return -EBUSY;
+		return PTR_ERR(host->regs);
 	}
 
 	host->mci.host_caps |= MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED |
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index bf928e8..6e02d46 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -566,6 +566,8 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	host->set_ios = mxs_mci_set_ios;
 	host->init = mxs_mci_initialize;
 	mxs_mci->regs = dev_request_mem_region(hw_dev, 0);
+	if (IS_ERR(mxs_mci->regs))
+		return PTR_ERR(mxs_mci->regs);
 
 	/* feed forward the platform specific values */
 	host->voltages = pd->voltages;
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 9cce916..c9bc71d 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -26,6 +26,7 @@
 #include <clock.h>
 #include <errno.h>
 #include <io.h>
+#include <linux/err.h>
 
 #include <mach/omap_hsmmc.h>
 
@@ -604,6 +605,8 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.hw_dev = dev;
 
 	hsmmc->iobase = dev_request_mem_region(dev, 0);
+	if (IS_ERR(hsmmc->iobase))
+		return PTR_ERR(hsmmc->iobase);
 	hsmmc->base = hsmmc->iobase + reg_ofs;
 
 	hsmmc->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 5ab88b8..6b14aba 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -17,6 +17,7 @@
 #include <clock.h>
 #include <init.h>
 #include <mci.h>
+#include <linux/err.h>
 
 #include <mach/clock.h>
 #include <mach/mci_pxa2xx.h>
@@ -339,6 +340,8 @@ static int pxamci_probe(struct device_d *dev)
 	clk_enable();
 	host = xzalloc(sizeof(*host));
 	host->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(host->base))
+		return PTR_ERR(host->base);
 
 	host->mci.init = pxamci_init;
 	host->mci.send_cmd = pxamci_request;
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 773c84a..3afd61e 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -36,6 +36,7 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <linux/err.h>
 #include <mach/s3c-mci.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-iomap.h>
@@ -741,6 +742,9 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 
 	hw_dev->priv = s3c_host;
 	s3c_host->base = dev_request_mem_region(hw_dev, 0);
+	if (IS_ERR(s3c_host->base))
+		return PTR_ERR(s3c_host->base);
+
 	s3c_host->host.hw_dev = hw_dev;
 
 	/* feed forward the platform specific values */
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 08b9dac..0e23d6f 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -29,6 +29,7 @@
 #include <of_gpio.h>
 #include <linux/clk.h>
 #include <linux/reset.h>
+#include <linux/err.h>
 
 #include "sdhci.h"
 
@@ -432,9 +433,9 @@ static int tegra_sdmmc_probe(struct device_d *dev)
 		return PTR_ERR(host->reset);
 
 	host->regs = dev_request_mem_region(dev, 0);
-	if (!host->regs) {
+	if (IS_ERR(host->regs)) {
 		dev_err(dev, "could not get iomem region\n");
-		return -ENODEV;
+		return PTR_ERR(host->regs);
 	}
 
 	mci->hw_dev = dev;
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index c89fe87..9769325 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -17,6 +17,7 @@
 #include <driver.h>
 #include <malloc.h>
 #include <init.h>
+#include <linux/err.h>
 
 struct sram {
 	struct resource *res;
@@ -39,8 +40,8 @@ static int sram_probe(struct device_d *dev)
 	int ret;
 
 	base = dev_request_mem_region(dev, 0);
-	if (!base)
-		return -EBUSY;
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	sram = xzalloc(sizeof(*sram));
 
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 1e7c6c6..524606a 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -34,6 +34,7 @@
 
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
+#include <linux/err.h>
 
 #include <io.h>
 #include <mach/board.h>
@@ -1199,6 +1200,8 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	host->io_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(host->io_base))
+		return PTR_ERR(host->io_base);
 
 	mtd = &host->mtd;
 	nand_chip = &host->nand_chip;
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 5a4449d..8989de0 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1254,7 +1254,12 @@ static int mxs_nand_probe(struct device_d *dev)
 
 	nand_info->type = type;
 	nand_info->io_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(nand_info->io_base))
+		return PTR_ERR(nand_info->io_base);
+
 	nand_info->bch_base = dev_request_mem_region(dev, 1);
+	if (IS_ERR(nand_info->bch_base))
+		return PTR_ERR(nand_info->bch_base);
 
 	nand_info->clk = clk_get(dev, NULL);
 	if (IS_ERR(nand_info->clk))
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
index a1c77b3..2c9707d 100644
--- a/drivers/mtd/nand/nand_orion.c
+++ b/drivers/mtd/nand/nand_orion.c
@@ -94,8 +94,8 @@ static int orion_nand_probe(struct device_d *dev)
 	chip = &priv->chip;
 
 	io_base = dev_request_mem_region(dev, 0);
-	if (!io_base)
-		return -EBUSY;
+	if (IS_ERR(io_base))
+		return PTR_ERR(io_base);
 
 	if (!of_property_read_u32(dev_node, "cle", &val))
 		priv->cle = (u8)val;
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index a8118cb..a494063 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -39,6 +39,7 @@
 #include <io.h>
 #include <errno.h>
 #include <progress.h>
+#include <linux/err.h>
 #include "cfi_flash.h"
 
 /*
@@ -987,6 +988,9 @@ static int cfi_probe (struct device_d *dev)
 	info->flash_id = FLASH_UNKNOWN;
 	info->cmd_reset = FLASH_CMD_RESET;
 	info->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(info->base))
+		return PTR_ERR(info->base);
+
 	info->dev = dev;
 	info->size = flash_get_size(info);
 
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 4bbf595..ecbb9f8 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -26,6 +26,7 @@
 #include <clock.h>
 #include <linux/mii.h>
 #include <linux/phy.h>
+#include <linux/err.h>
 
 #include <io.h>
 #include <asm/dma-mapping.h>
@@ -515,6 +516,8 @@ static int tse_probe(struct device_d *dev)
 
 #ifdef CONFIG_TSE_USE_DEDICATED_DESC_MEM
 	tx_desc = dev_request_mem_region(dev, 3);
+	if (IS_ERR(tx_desc))
+		return PTR_ERR(tx_desc);
 	rx_desc = tx_desc + 2;
 #else
 	tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX), (unsigned long *)&dma_handle);
@@ -531,8 +534,14 @@ static int tse_probe(struct device_d *dev)
 	memset(tx_desc, 0, (sizeof *tx_desc) * 2);
 
 	priv->tse_regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->tse_regs))
+		return PTR_ERR(priv->tse_regs);
 	priv->sgdma_rx_regs = dev_request_mem_region(dev, 1);
+	if (IS_ERR(priv->sgdma_rx_regs))
+		return PTR_ERR(priv->sgdma_rx_regs);
 	priv->sgdma_tx_regs = dev_request_mem_region(dev, 2);
+	if (IS_ERR(priv->sgdma_tx_regs))
+		return PTR_ERR(priv->sgdma_tx_regs);
 	priv->rx_desc = rx_desc;
 	priv->tx_desc = tx_desc;
 
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
index 572008a..48e4b30 100644
--- a/drivers/net/ar231x.c
+++ b/drivers/net/ar231x.c
@@ -26,6 +26,7 @@
 #include <net.h>
 #include <init.h>
 #include <io.h>
+#include <linux/err.h>
 
 #include "ar231x.h"
 
@@ -384,18 +385,18 @@ static int ar231x_eth_probe(struct device_d *dev)
 	priv->reset_bit = pdata->reset_bit;
 
 	priv->eth_regs = dev_request_mem_region(dev, 0);
-	if (priv->eth_regs == NULL) {
+	if (IS_ERR(priv->eth_regs)) {
 		dev_err(dev, "No eth_regs!!\n");
-		return -ENODEV;
+		return PTR_ERR(priv->eth_regs);
 	}
 	/* we have 0x100000 for eth, part of it are dma regs.
 	 * So they are already requested */
 	priv->dma_regs = (void *)(priv->eth_regs + 0x1000);
 
 	priv->phy_regs = dev_request_mem_region(dev, 1);
-	if (priv->phy_regs == NULL) {
+	if (IS_ERR(priv->phy_regs)) {
 		dev_err(dev, "No phy_regs!!\n");
-		return -ENODEV;
+		return PTR_ERR(priv->phy_regs);
 	}
 
 	priv->cfg = pdata;
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 8b74ea5..1770506 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -22,6 +22,7 @@
 #include <net.h>
 #include <io.h>
 #include <init.h>
+#include <linux/err.h>
 
 /* ARC EMAC register set combines entries for MAC and MDIO */
 enum {
@@ -400,6 +401,8 @@ static int arc_emac_probe(struct device_d *dev)
 
 	priv = edev->priv;
 	priv->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->regs))
+		return PTR_ERR(priv->regs);
 	priv->bus = miibus;
 
 	id = arc_reg_get(priv, R_ID);
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index ccae537..167b2dd 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -34,6 +34,7 @@
 #include <xfuncs.h>
 #include <asm/mmu.h>
 #include <asm/system.h>
+#include <linux/err.h>
 
 #include <mach/cpsw.h>
 
@@ -1109,6 +1110,8 @@ int cpsw_probe(struct device_d *dev)
 	dev_dbg(dev, "* %s\n", __func__);
 
 	regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
 
 	priv = xzalloc(sizeof(*priv));
 	priv->dev = dev;
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index e87bdff..49ed0b1 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -29,6 +29,7 @@
 #include <asm/mmu.h>
 #include <net/designware.h>
 #include <linux/phy.h>
+#include <linux/err.h>
 #include "designware.h"
 
 struct dw_eth_dev {
@@ -440,6 +441,9 @@ static int dwc_ether_probe(struct device_d *dev)
 	}
 
 	base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
 	priv->mac_regs_p = base;
 	dwc_version(dev, readl(&priv->mac_regs_p->version));
 	priv->dma_regs_p = base + DW_DMA_BASE_OFFSET;
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index 679e1e5..59e8f01 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -17,6 +17,7 @@
 #include <init.h>
 #include <io.h>
 #include <asm/cache.h>
+#include <linux/err.h>
 
 /* register offsets */
 #define	MODER		0x00
@@ -542,6 +543,8 @@ static int ethoc_probe(struct device_d *dev)
 
 	priv = edev->priv;
 	priv->iobase = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->iobase))
+		return PTR_ERR(priv->iobase);
 
 	priv->miibus.read = ethoc_mdio_read;
 	priv->miibus.write = ethoc_mdio_write;
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 41a3b58..f431d79 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -16,6 +16,7 @@
 #include <mach/sdma.h>
 #include <mach/clocks.h>
 #include <linux/phy.h>
+#include <linux/err.h>
 #include "fec_mpc5200.h"
 
 #define CONFIG_PHY_ADDR 1 /* FIXME */
@@ -655,6 +656,8 @@ int mpc5xxx_fec_probe(struct device_d *dev)
 	edev->parent = dev;
 
 	fec->eth = dev_request_mem_region(dev, 0);
+	if (IS_ERR(fec->eth))
+		return PTR_ERR(fec->eth);
 	fec->tbdBase = (FEC_TBD *)FEC_BD_BASE;
 	fec->rbdBase = (FEC_RBD *)(FEC_BD_BASE + FEC_TBD_NUM * sizeof(FEC_TBD));
 
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 83d1b02..a8974cf 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -29,6 +29,7 @@
 #include <clock.h>
 #include <io.h>
 #include <linux/phy.h>
+#include <linux/err.h>
 
 #define MAX_RECV_FRAMES			32
 #define MAX_BUF_SIZE			2048
@@ -823,7 +824,12 @@ static int ks8851_probe(struct device_d *dev)
 	}
 
 	ks->hw_addr = dev_request_mem_region(dev, 0);
+	if (IS_ERR(ks->hw_addr))
+		return PTR_ERR(ks->hw_addr);
+
 	ks->hw_addr_cmd = dev_request_mem_region(dev, 1);
+	if (IS_ERR(ks->hw_addr_cmd))
+		return PTR_ERR(ks->hw_addr_cmd);
 	ks->bus_width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
 
 	edev->init = ks8851_init_dev;
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 12a2a3c..03558af 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -642,6 +642,8 @@ static int macb_probe(struct device_d *dev)
 	macb->phy_flags = pdata->phy_flags;
 
 	macb->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(macb->regs))
+		return PTR_ERR(macb->regs);
 
 	/*
 	 * Do some basic initialization so that we at least can talk
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 7baa749..55d9367 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -66,6 +66,7 @@
 #include <clock.h>
 #include <io.h>
 #include <linux/phy.h>
+#include <linux/err.h>
 #include <net/smc91111.h>
 
 /*---------------------------------------------------------------
@@ -1330,6 +1331,8 @@ static int smc91c111_probe(struct device_d *dev)
 	priv->miibus.priv = priv;
 	priv->miibus.parent = dev;
 	priv->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
 
 	smc91c111_reset(edev);
 
diff --git a/drivers/pinctrl/imx-iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
index cef0340..2622d9a 100644
--- a/drivers/pinctrl/imx-iomux-v2.c
+++ b/drivers/pinctrl/imx-iomux-v2.c
@@ -17,6 +17,7 @@
 #include <common.h>
 #include <io.h>
 #include <init.h>
+#include <linux/err.h>
 #include <mach/iomux-mx31.h>
 
 /*
@@ -118,6 +119,8 @@ int imx_iomux_setup_multiple_pins(const unsigned int *pin_list, unsigned count)
 static int imx_iomux_probe(struct device_d *dev)
 {
 	base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	return 0;
 }
diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
index 9f79d37..8c71867 100644
--- a/drivers/pinctrl/mvebu/armada-xp.c
+++ b/drivers/pinctrl/mvebu/armada-xp.c
@@ -375,8 +375,8 @@ static int armada_xp_pinctrl_probe(struct device_d *dev)
 	struct mvebu_pinctrl_soc_info *soc = &armada_xp_pinctrl_info;
 
 	mpp_base = dev_request_mem_region(dev, 0);
-	if (!mpp_base)
-		return -EBUSY;
+	if (IS_ERR(mpp_base))
+		return PTR_ERR(mpp_base);
 
 	soc->variant = (enum armada_xp_variant)match->data;
 
diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
index 94ab105..0514248 100644
--- a/drivers/pinctrl/mvebu/kirkwood.c
+++ b/drivers/pinctrl/mvebu/kirkwood.c
@@ -13,6 +13,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <of.h>
+#include <linux/err.h>
 
 #include "common.h"
 
@@ -437,8 +438,8 @@ static int kirkwood_pinctrl_probe(struct device_d *dev)
 		(struct mvebu_pinctrl_soc_info *)match->data;
 
 	mpp_base = dev_request_mem_region(dev, 0);
-	if (!mpp_base)
-		return -EBUSY;
+	if (IS_ERR(mpp_base))
+		return PTR_ERR(mpp_base);
 
 	return mvebu_pinctrl_probe(dev, soc);
 }
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 29e54cf..0d6d2e7 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -653,8 +653,8 @@ static int at91_gpio_probe(struct device_d *dev)
 
 	gpio_banks = max(gpio_banks, alias_idx + 1);
 	at91_gpio->regbase = dev_request_mem_region(dev, 0);
-	if (!at91_gpio->regbase)
-		return -EBUSY;
+	if (IS_ERR(at91_gpio->regbase))
+		return PTR_ERR(at91_gpio->regbase);
 
 	at91_gpio->chip.ops = &at91_gpio_ops;
 	at91_gpio->chip.ngpio = MAX_NB_GPIO_PER_BANK;
diff --git a/drivers/pinctrl/pinctrl-tegra20.c b/drivers/pinctrl/pinctrl-tegra20.c
index 053981f..3c11be6 100644
--- a/drivers/pinctrl/pinctrl-tegra20.c
+++ b/drivers/pinctrl/pinctrl-tegra20.c
@@ -28,6 +28,7 @@
 #include <io.h>
 #include <malloc.h>
 #include <pinctrl.h>
+#include <linux/err.h>
 
 struct pinctrl_tegra20 {
 	struct {
@@ -309,9 +310,9 @@ static int pinctrl_tegra20_probe(struct device_d *dev)
 	regs = (u32 **)&ctrl->regs;
 	for (i = 0; i <= 2; i++) {
 		regs[i] = dev_request_mem_region(dev, i);
-		if (!regs[i]) {
+		if (IS_ERR(regs[i])) {
 			dev_err(dev, "Could not get iomem region %d\n", i);
-			return -ENODEV;
+			return PTR_ERR(regs[i]);
 		}
 	}
 
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 5cacfae..8277218 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -22,6 +22,7 @@
 #include <io.h>
 #include <malloc.h>
 #include <pinctrl.h>
+#include <linux/err.h>
 
 struct pinctrl_tegra30_drvdata;
 
@@ -884,9 +885,9 @@ static int pinctrl_tegra30_probe(struct device_d *dev)
 	regs = (u32 **)&ctrl->regs;
 	for (i = 0; i <= 1; i++) {
 		regs[i] = dev_request_mem_region(dev, i);
-		if (!regs[i]) {
+		if (IS_ERR(regs[i])) {
 			dev_err(dev, "Could not get iomem region %d\n", i);
-			return -ENODEV;
+			return PTR_ERR(regs[i]);
 		}
 	}
 
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index e29341f..fbfc3af 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -14,6 +14,7 @@
 #include <io.h>
 #include <pwm.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <asm-generic/div64.h>
 
 /* i.MX1 and i.MX21 share the same PWM function block: */
@@ -237,8 +238,8 @@ static int imx_pwm_probe(struct device_d *dev)
 	}
 
 	imx->mmio_base = dev_request_mem_region(dev, 0);
-	if (!imx->mmio_base)
-		return -EBUSY;
+	if (IS_ERR(imx->mmio_base))
+		return PTR_ERR(imx->mmio_base);
 
 	imx->config = data->config;
 	imx->set_enable = data->set_enable;
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index c2a5d33..1f40692 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -399,6 +399,9 @@ static int atmel_serial_init_port(struct console_device *cdev)
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
 	uart->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(uart->base))
+		return PTR_ERR(uart->base);
+
 	uart->clk = clk_get(dev, "usart");
 	clk_enable(uart->clk);
 	uart->uartclk = clk_get_rate(uart->clk);
diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
index 27cccba..51184aa 100644
--- a/drivers/serial/serial_ar933x.c
+++ b/drivers/serial/serial_ar933x.c
@@ -163,6 +163,9 @@ static int ar933x_serial_probe(struct device_d *dev)
 	cdev = xzalloc(sizeof(struct console_device));
 	priv = xzalloc(sizeof(struct ar933x_uart_priv));
 	priv->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
 	dev->priv = priv;
 
 	cdev->dev = dev;
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index 1980516..ae6c5b8 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -196,6 +196,8 @@ static int auart_serial_probe(struct device_d *dev)
 
 	dev->priv = priv;
 	priv->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
 	priv->clk = clk_get(dev, NULL);
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index a1b76d0..10df506 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -240,8 +240,8 @@ static int cadence_serial_probe(struct device_d *dev)
 		clk_set_rate(priv->clk, clk_get_rate(priv->clk) / 8);
 
 	priv->regs = dev_request_mem_region(dev, 0);
-	if (!priv->regs) {
-		ret = -EBUSY;
+	if (IS_ERR(priv->regs)) {
+		ret = PTR_ERR(priv->regs);
 		goto err_free;
 	}
 
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 18aca87..f48255b 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -36,6 +36,7 @@
 #include <console.h>
 #include <xfuncs.h>
 #include <mach/clocks.h>
+#include <linux/err.h>
 
 static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
 {
@@ -148,6 +149,8 @@ static int mpc5xxx_serial_probe(struct device_d *dev)
 
 	cdev = xzalloc(sizeof(struct console_device));
 	dev->priv = dev_request_mem_region(dev, 0);
+	if (IS_ERR(dev->priv))
+		return PTR_ERR(dev->priv);
 	cdev->dev = dev;
 	cdev->tstc = mpc5xxx_serial_tstc;
 	cdev->putc = mpc5xxx_serial_putc;
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index dd0986c..78a674a 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -321,6 +321,8 @@ static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
 		return PTR_ERR(res);
 
 	priv->mmiobase = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->mmiobase))
+		return PTR_ERR(priv->mmiobase);
 
 	width = res->flags & IORESOURCE_MEM_TYPE_MASK;
 	switch (width) {
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 3fec1ce..39ff7ae 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -162,6 +162,8 @@ static int stm_serial_probe(struct device_d *dev)
 
 	dev->priv = priv;
 	priv->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
 	priv->clk = clk_get(dev, NULL);
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index 983b877..bf1add8 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -222,6 +222,9 @@ static int altera_spi_probe(struct device_d *dev)
 	master->bus_num = pdata->bus_num;
 
 	altera_spi->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(altera_spi->regs))
+		return PTR_ERR(altera_spi->regs);
+
 	altera_spi->databits = pdata->databits;
 	altera_spi->speed = pdata->speed;
 	altera_spi->mode = pdata->spi_mode;
diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
index 4a6d96f..c2a2e50 100644
--- a/drivers/spi/mvebu_spi.c
+++ b/drivers/spi/mvebu_spi.c
@@ -343,8 +343,8 @@ static int mvebu_spi_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(*priv));
 	priv->base = dev_request_mem_region(dev, 0);
-	if (!priv->base) {
-		ret = -EINVAL;
+	if (IS_ERR(priv->base)) {
+		ret = PTR_ERR(priv->base);
 		goto err_free;
 	}
 	priv->set_baudrate = (void *)match->data;
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index a00784f..9a35e09 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -267,6 +267,9 @@ static int mxs_spi_probe(struct device_d *dev)
 	mxs->mode = SPI_CPOL | SPI_CPHA;
 
 	mxs->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(mxs->regs))
+		return PTR_ERR(mxs->regs);
+
 	mxs->clk = clk_get(dev, NULL);
 	if (IS_ERR(mxs->clk))
 		return PTR_ERR(mxs->clk);
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 2b19be9..2f0d5ed 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1432,8 +1432,8 @@ static int __init at91udc_probe(struct device_d *dev)
 	}
 
 	udc->udp_baseaddr = dev_request_mem_region(dev, 0);
-	if (!udc->udp_baseaddr) {
-		retval = -ENOMEM;
+	if (IS_ERR(udc->udp_baseaddr)) {
+		retval = PTR_ERR(udc->udp_baseaddr);
 		goto fail0a;
 	}
 
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 5a625d1..877d2df 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -9,6 +9,7 @@
 #include <io.h>
 #include <poller.h>
 #include <asm/byteorder.h>
+#include <linux/err.h>
 
 /* ### define USB registers here
  */
@@ -2320,6 +2321,9 @@ static int fsl_udc_probe(struct device_d *dev)
 {
 	void __iomem *regs = dev_request_mem_region(dev, 0);
 
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
+
 	return ci_udc_register(dev, regs);
 }
 
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index c0ea8d0..5624552 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -30,6 +30,7 @@
 #include <of.h>
 #include <usb/ehci.h>
 #include <asm/mmu.h>
+#include <linux/err.h>
 
 #include "ehci.h"
 
@@ -924,6 +925,9 @@ static int ehci_probe(struct device_d *dev)
 		data.flags = EHCI_HAS_TT;
 
 	data.hccr = dev_request_mem_region(dev, 0);
+	if (IS_ERR(data.hccr))
+		return PTR_ERR(data.hccr);
+
 	if (dev->num_resources > 1)
 		data.hcor = dev_request_mem_region(dev, 1);
 	else
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 3d18a73..622f5c3 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -47,6 +47,7 @@
 #include <usb/usb_defs.h>
 #include <init.h>
 #include <errno.h>
+#include <linux/err.h>
 
 #include <asm/byteorder.h>
 #include <io.h>
@@ -1812,6 +1813,8 @@ static int ohci_probe(struct device_d *dev)
 	usb_register_host(host);
 
 	ohci->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(ohci->regs))
+		return PTR_ERR(ohci->regs);
 
 	return 0;
 }
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 62feae8..ffa46da 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -24,6 +24,7 @@
 #include <usb/chipidea-imx.h>
 #include <usb/ulpi.h>
 #include <usb/fsl_usb2.h>
+#include <linux/err.h>
 
 #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
 
@@ -242,8 +243,8 @@ static int imx_chipidea_probe(struct device_d *dev)
 	regulator_enable(ci->vbus);
 
 	base = dev_request_mem_region(dev, 0);
-	if (!base)
-		return -ENODEV;
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	ci->base = base;
 
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 9748bba..420ccbe 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -258,6 +258,8 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 	sinfo = xzalloc(sizeof(*sinfo));
 	sinfo->pdata = pdata;
 	sinfo->mmio = dev_request_mem_region(dev, 0);
+	if (IS_ERR(sinfo->mmio))
+		return PTR_ERR(sinfo->mmio);
 
 	sinfo->dev_data = data;
 
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index abac812..a69df50 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -1001,6 +1001,8 @@ static int imxfb_probe(struct device_d *dev)
 		return PTR_ERR(fbi->clk);
 
 	fbi->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(fbi->regs))
+		return PTR_ERR(fbi->regs);
 	fbi->dev = dev;
 	fbi->enable = pdata->enable;
 	fbi->disp_data_fmt = pdata->disp_data_fmt;
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index b12c09c..b1066e1 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -544,6 +544,9 @@ static int imxfb_probe(struct device_d *dev)
 
 	fbi->mode = pdata->mode;
 	fbi->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(fbi->regs))
+		return PTR_ERR(fbi->regs);
+
 	fbi->pcr = pdata->mode->pcr;
 	fbi->pwmr = pdata->pwmr;
 	fbi->lscr1 = pdata->lscr1;
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index b4ce3a1..d6d11ae 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -29,6 +29,7 @@
 #include <fb.h>
 #include <init.h>
 #include <malloc.h>
+#include <linux/err.h>
 
 #include <mach/clock.h>
 #include <mach/pxa-regs.h>
@@ -499,6 +500,8 @@ static int pxafb_probe(struct device_d *dev)
 
 	fbi->mode = pdata->mode;
 	fbi->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(fbi->regs))
+		return PTR_ERR(fbi->regs);
 
 	fbi->dev = dev;
 	fbi->lcd_power = pdata->lcd_power;
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index dd66e12..3e73ecd 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -22,6 +22,7 @@
 #include <malloc.h>
 #include <watchdog.h>
 #include <reset_source.h>
+#include <linux/err.h>
 
 #define MXS_RTC_CTRL 0x0
 #define MXS_RTC_SET_ADDR 0x4
@@ -186,6 +187,8 @@ static int imx28_wd_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(struct imx28_wd));
 	priv->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->regs))
+		return PTR_ERR(priv->regs);
 	priv->wd.set_timeout = imx28_watchdog_set_timeout;
 
 	if (!(readl(priv->regs + MXS_RTC_STAT) & MXS_RTC_STAT_WD_PRESENT)) {
diff --git a/zz b/zz
new file mode 100644
index 0000000..3aa6bd4
--- /dev/null
+++ b/zz
@@ -0,0 +1,66 @@
+drivers/dma/apbh_dma.c
+drivers/gpio/gpio-bcm2835.c
+drivers/gpio/gpio-clps711x.c
+drivers/gpio/gpio-davinci.c
+drivers/gpio/gpio-dw.c
+drivers/gpio/gpio-imx.c
+drivers/gpio/gpio-malta-fpga-i2c.c
+drivers/gpio/gpio-orion.c
+drivers/gpio/gpio-tegra.c
+drivers/i2c/busses/i2c-imx.c
+drivers/i2c/busses/i2c-omap.c
+drivers/i2c/busses/i2c-tegra.c
+drivers/i2c/busses/i2c-versatile.c
+drivers/mtd/devices/docg3.c
+drivers/mtd/nand/atmel_nand.c
+drivers/mtd/nand/atmel_nand.c.orig
+drivers/mtd/nand/nand_imx.c
+drivers/mtd/nand/nand_mxs.c
+drivers/mtd/nand/nand_omap_gpmc.c
+drivers/mtd/nand/nand_s3c24xx.c
+drivers/mtd/nand/nomadik_nand.c
+drivers/mtd/nor/cfi_flash.c
+drivers/net/cs8900.c
+drivers/net/davinci_emac.c
+drivers/net/designware.c
+drivers/net/dm9k.c
+drivers/net/fec_imx.c
+drivers/net/smc91111.c
+drivers/net/smc911x.c
+drivers/net/xgmac.c
+drivers/pinctrl/imx-iomux-v2.c
+drivers/pinctrl/imx-iomux-v3.c
+drivers/pinctrl/mvebu/dove.c
+drivers/pinctrl/pinctrl-rockchip.c
+drivers/pinctrl/pinctrl-single.c
+drivers/pinctrl/pinctrl-tegra20.c
+drivers/pwm/pxa_pwm.c
+drivers/serial/atmel.c
+drivers/serial/serial_altera.c
+drivers/serial/serial_altera_jtag.c
+drivers/serial/serial_ar933x.c
+drivers/serial/serial_imx.c
+drivers/serial/serial_netx.c
+drivers/serial/serial_pl010.c
+drivers/serial/serial_pxa.c
+drivers/serial/serial_s3c.c
+drivers/spi/altera_spi.c
+drivers/spi/ath79_spi.c
+drivers/spi/atmel_spi.c
+drivers/spi/imx_spi.c
+drivers/spi/mxs_spi.c
+drivers/spi/omap3_spi.c
+drivers/usb/gadget/pxa27x_udc.c
+drivers/usb/host/ehci-atmel.c
+drivers/usb/host/ehci-hcd.c
+drivers/usb/imx/imx-usb-misc.c
+drivers/usb/imx/imx-usb-phy.c
+drivers/video/imx.c
+drivers/video/imx-ipu-v3/imx-hdmi.c
+drivers/video/imx-ipu-v3/ipu-common.c
+drivers/video/omap.c
+drivers/video/pxa.c
+drivers/video/s3c24xx.c
+drivers/video/stm.c
+drivers/watchdog/im28wd.c
+drivers/watchdog/imxwd.c
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
