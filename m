Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNAqv-0000qx-Pz
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 08:19:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Sep 2020 10:19:07 +0200
Message-Id: <20200929081909.30235-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] treewide: Use driver macro
To: Barebox List <barebox@lists.infradead.org>

We have several macros for a oneline driver registration. Add some
missing and use them consistently where possible througout the tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/ddramc.c            |  6 +----
 arch/arm/mach-at91/sam9_smc.c          |  6 +----
 arch/arm/mach-bcm283x/mbox.c           |  6 +----
 arch/arm/mach-imx/esdctl.c             |  7 +-----
 arch/arm/mach-imx/iim.c                |  8 +------
 arch/arm/mach-mxs/ocotp.c              |  8 +------
 arch/arm/mach-omap/am33xx_scrm.c       |  7 +-----
 arch/arm/mach-stm32mp/ddrctrl.c        |  6 +----
 arch/arm/mach-tegra/tegra20-timer.c    |  6 +----
 arch/arm/mach-zynqmp/firmware-zynqmp.c |  6 +----
 arch/mips/mach-ath79/art.c             |  8 +------
 drivers/clk/clk-ar933x.c               |  6 +----
 drivers/clk/clk-ar9344.c               |  6 +----
 drivers/clk/imx/clk-imx1.c             |  6 +----
 drivers/clk/imx/clk-imx21.c            |  6 +----
 drivers/clk/imx/clk-imx25.c            |  6 +----
 drivers/clk/imx/clk-imx27.c            |  6 +----
 drivers/clk/imx/clk-imx31.c            |  6 +----
 drivers/clk/imx/clk-imx35.c            |  6 +----
 drivers/clk/imx/clk-imx5.c             | 27 ++++++++++------------
 drivers/clk/imx/clk-imx6.c             |  6 +----
 drivers/clk/imx/clk-imx6sl.c           |  6 +----
 drivers/clk/imx/clk-imx6sx.c           |  6 +----
 drivers/clk/imx/clk-imx6ul.c           |  6 +----
 drivers/clk/imx/clk-imx7.c             |  6 +----
 drivers/clk/mvebu/common.c             | 12 ++--------
 drivers/clk/mvebu/corediv.c            |  6 +----
 drivers/clk/mxs/clk-imx23.c            |  6 +----
 drivers/clk/mxs/clk-imx28.c            |  6 +----
 drivers/clk/socfpga/clk.c              |  6 +----
 drivers/clk/tegra/clk-tegra124.c       |  6 +----
 drivers/clk/tegra/clk-tegra20.c        |  6 +----
 drivers/clk/tegra/clk-tegra30.c        |  6 +----
 drivers/clk/zynq/clkc.c                |  6 +----
 drivers/clocksource/amba-sp804.c       |  6 +----
 drivers/clocksource/arm_smp_twd.c      |  6 +----
 drivers/clocksource/bcm2835.c          |  6 +----
 drivers/clocksource/digic.c            |  6 +----
 drivers/clocksource/efi.c              |  7 +-----
 drivers/clocksource/efi_x86.c          |  7 +-----
 drivers/clocksource/mvebu.c            |  6 +----
 drivers/clocksource/nomadik.c          |  6 +----
 drivers/clocksource/orion.c            |  6 +----
 drivers/clocksource/rk_timer.c         |  6 +----
 drivers/clocksource/timer-atmel-pit.c  |  6 +----
 drivers/clocksource/timer-imx-gpt.c    |  6 +----
 drivers/clocksource/timer-ti-32k.c     |  6 +----
 drivers/clocksource/timer-ti-dm.c      |  6 +----
 drivers/clocksource/uemd.c             |  6 +----
 drivers/gpio/gpio-ath79.c              |  6 +----
 drivers/gpio/gpio-davinci.c            |  6 +----
 drivers/gpio/gpio-digic.c              |  6 +----
 drivers/gpio/gpio-dw.c                 |  6 +----
 drivers/gpio/gpio-generic.c            |  6 +----
 drivers/gpio/gpio-imx.c                |  7 +-----
 drivers/gpio/gpio-jz4740.c             |  6 +----
 drivers/gpio/gpio-malta-fpga-i2c.c     |  6 +----
 drivers/gpio/gpio-mpc8xxx.c            |  6 +----
 drivers/gpio/gpio-mxs.c                |  7 +-----
 drivers/gpio/gpio-omap.c               |  6 +----
 drivers/gpio/gpio-pl061.c              |  6 +----
 drivers/gpio/gpio-stmpe.c              |  6 +----
 drivers/gpio/gpio-tegra.c              |  6 +----
 drivers/gpio/gpio-vf610.c              |  6 +----
 drivers/led/led-pca955x.c              |  6 +----
 drivers/mci/mci-bcm2835.c              |  6 +----
 drivers/memory/mc-tegra124.c           |  6 +----
 drivers/mfd/mc13xxx.c                  | 31 ++++++++------------------
 drivers/mfd/syscon.c                   |  6 +----
 drivers/net/ar231x.c                   |  6 +----
 drivers/phy/usb-nop-xceiv.c            |  6 +----
 drivers/pinctrl/imx-iomux-v1.c         |  8 ++-----
 drivers/pinctrl/imx-iomux-v2.c         |  6 +----
 drivers/pinctrl/imx-iomux-v3.c         |  6 +----
 drivers/pinctrl/mvebu/armada-370.c     |  6 +----
 drivers/pinctrl/mvebu/armada-xp.c      |  7 +-----
 drivers/pinctrl/mvebu/dove.c           |  6 +----
 drivers/pinctrl/mvebu/kirkwood.c       |  6 +----
 drivers/pinctrl/pinctrl-at91-pio4.c    |  6 +----
 drivers/pinctrl/pinctrl-at91.c         | 12 ++--------
 drivers/pinctrl/pinctrl-bcm2835.c      |  6 +----
 drivers/pinctrl/pinctrl-mxs.c          |  6 +----
 drivers/pinctrl/pinctrl-single.c       |  6 +----
 drivers/pinctrl/pinctrl-stm32.c        |  6 +----
 drivers/pinctrl/pinctrl-tegra-xusb.c   |  6 +----
 drivers/pinctrl/pinctrl-tegra20.c      |  6 +----
 drivers/pinctrl/pinctrl-tegra30.c      |  6 +----
 drivers/pinctrl/pinctrl-vf610.c        |  6 +----
 drivers/reset/reset-socfpga.c          |  6 +----
 drivers/reset/reset-stm32.c            |  6 +----
 drivers/serial/serial_cadence.c        |  6 +----
 drivers/usb/imx/imx-usb-misc.c         |  8 +------
 drivers/usb/imx/imx-usb-phy.c          |  6 +----
 drivers/usb/musb/phy-am335x.c          |  6 +----
 drivers/video/imx-ipu-v3/ipufb.c       |  6 +----
 drivers/video/omap.c                   |  7 +-----
 drivers/watchdog/at91sam9_wdt.c        |  6 +----
 drivers/watchdog/bcm2835_wdt.c         |  6 +----
 include/driver.h                       |  6 +++++
 99 files changed, 126 insertions(+), 544 deletions(-)

diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index a241ea9f0a..c3ef6b0090 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -52,8 +52,4 @@ static struct driver_d sama5_ddr_driver = {
 	.of_compatible = sama5_ddr_dt_ids,
 };
 
-static int sama5_ddr_init(void)
-{
-	return platform_driver_register(&sama5_ddr_driver);
-}
-mem_initcall(sama5_ddr_init);
+mem_platform_driver(sama5_ddr_driver);
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 05584c0711..813c2a0d94 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -200,8 +200,4 @@ static struct driver_d at91sam9_smc_driver = {
 	.probe = at91sam9_smc_probe,
 };
 
-static int at91sam9_smc_init(void)
-{
-	return platform_driver_register(&at91sam9_smc_driver);
-}
-coredevice_initcall(at91sam9_smc_init);
+coredevice_platform_driver(at91sam9_smc_driver);
diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index 22abbb0ca5..9839683d03 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -179,8 +179,4 @@ static struct driver_d bcm2835_mbox_driver = {
 	.probe		= bcm2835_mbox_probe,
 };
 
-static int __init bcm2835_mbox_init(void)
-{
-	return platform_driver_register(&bcm2835_mbox_driver);
-}
-core_initcall(bcm2835_mbox_init);
+core_platform_driver(bcm2835_mbox_driver);
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index cc5d3a8359..426a96a3c4 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -703,12 +703,7 @@ static struct driver_d imx_esdctl_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_esdctl_dt_ids),
 };
 
-static int imx_esdctl_init(void)
-{
-	return platform_driver_register(&imx_esdctl_driver);
-}
-
-mem_initcall(imx_esdctl_init);
+mem_platform_driver(imx_esdctl_driver);
 
 /*
  * The i.MX SoCs usually have two SDRAM chipselects. The following
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 2f9ffbd271..b60c5de7e1 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -586,10 +586,4 @@ static struct driver_d imx_iim_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_iim_dt_ids),
 };
 
-static int imx_iim_init(void)
-{
-	platform_driver_register(&imx_iim_driver);
-
-	return 0;
-}
-coredevice_initcall(imx_iim_init);
+coredevice_platform_driver(imx_iim_driver);
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index f230d9ad89..a4df39c2e9 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -229,13 +229,7 @@ static struct driver_d mxs_ocotp_driver = {
 	.of_compatible = DRV_OF_COMPAT(mxs_ocotp_compatible),
 };
 
-static int mxs_ocotp_init(void)
-{
-	platform_driver_register(&mxs_ocotp_driver);
-
-	return 0;
-}
-coredevice_initcall(mxs_ocotp_init);
+coredevice_platform_driver(mxs_ocotp_driver);
 
 int mxs_ocotp_read(void *buf, int count, int offset)
 {
diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
index f03fb2bf6a..80510cf5b4 100644
--- a/arch/arm/mach-omap/am33xx_scrm.c
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -43,9 +43,4 @@ static struct driver_d am33xx_scrm_driver = {
 	.of_compatible = DRV_OF_COMPAT(am33xx_scrm_dt_ids),
 };
 
-static int am33xx_scrm_init(void)
-{
-	return platform_driver_register(&am33xx_scrm_driver);
-}
-
-mem_initcall(am33xx_scrm_init);
+mem_platform_driver(am33xx_scrm_driver);
diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 962d4c0d52..646fe4401a 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -148,8 +148,4 @@ static struct driver_d stm32mp1_ddr_driver = {
 	.of_compatible = DRV_OF_COMPAT(stm32mp1_ddr_dt_ids),
 };
 
-static int stm32mp1_ddr_init(void)
-{
-	return platform_driver_register(&stm32mp1_ddr_driver);
-}
-mem_initcall(stm32mp1_ddr_init);
+mem_platform_driver(stm32mp1_ddr_driver);
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
index 2ba58bd65e..34d34f7723 100644
--- a/arch/arm/mach-tegra/tegra20-timer.c
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -104,8 +104,4 @@ static struct driver_d tegra20_timer_driver = {
 	.of_compatible = DRV_OF_COMPAT(tegra20_timer_dt_ids),
 };
 
-static int tegra20_timer_init(void)
-{
-	return platform_driver_register(&tegra20_timer_driver);
-}
-core_initcall(tegra20_timer_init);
+core_platform_driver(tegra20_timer_driver);
diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index 6123aa1ea4..c23b434031 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -637,8 +637,4 @@ static struct driver_d zynqmp_firmware_driver = {
 	.of_compatible = DRV_OF_COMPAT(zynqmp_firmware_id_table),
 };
 
-static int zynqmp_firmware_init(void)
-{
-	return platform_driver_register(&zynqmp_firmware_driver);
-}
-core_initcall(zynqmp_firmware_init);
+core_platform_driver(zynqmp_firmware_driver);
diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
index 44118c19e9..d119ca6d1a 100644
--- a/arch/mips/mach-ath79/art.c
+++ b/arch/mips/mach-ath79/art.c
@@ -103,10 +103,4 @@ static struct driver_d art_driver = {
 	.of_compatible	= art_dt_ids,
 };
 
-static int art_of_driver_init(void)
-{
-	platform_driver_register(&art_driver);
-
-	return 0;
-}
-late_initcall(art_of_driver_init);
+late_platform_driver(art_driver);
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index 875e9f506f..0e7f2d6a67 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -138,8 +138,4 @@ static struct driver_d ar933x_clk_driver = {
 	.of_compatible = DRV_OF_COMPAT(ar933x_clk_dt_ids),
 };
 
-static int ar933x_clk_init(void)
-{
-	return platform_driver_register(&ar933x_clk_driver);
-}
-postcore_initcall(ar933x_clk_init);
+postcore_platform_driver(ar933x_clk_driver);
diff --git a/drivers/clk/clk-ar9344.c b/drivers/clk/clk-ar9344.c
index ad0e5c10e9..829d4b1f91 100644
--- a/drivers/clk/clk-ar9344.c
+++ b/drivers/clk/clk-ar9344.c
@@ -133,8 +133,4 @@ static struct driver_d ar9344_clk_driver = {
 	.of_compatible = DRV_OF_COMPAT(ar9344_clk_dt_ids),
 };
 
-static int ar9344_clk_init(void)
-{
-	return platform_driver_register(&ar9344_clk_driver);
-}
-postcore_initcall(ar9344_clk_init);
+postcore_platform_driver(ar9344_clk_driver);
diff --git a/drivers/clk/imx/clk-imx1.c b/drivers/clk/imx/clk-imx1.c
index 258b9dd582..cff32c0f99 100644
--- a/drivers/clk/imx/clk-imx1.c
+++ b/drivers/clk/imx/clk-imx1.c
@@ -102,8 +102,4 @@ static struct driver_d imx1_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx1_ccm_dt_ids),
 };
 
-static int imx1_ccm_init(void)
-{
-	return platform_driver_register(&imx1_ccm_driver);
-}
-core_initcall(imx1_ccm_init);
+core_platform_driver(imx1_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx21.c b/drivers/clk/imx/clk-imx21.c
index 0026a55f86..7abd82eeb1 100644
--- a/drivers/clk/imx/clk-imx21.c
+++ b/drivers/clk/imx/clk-imx21.c
@@ -176,8 +176,4 @@ static struct driver_d imx21_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx21_ccm_dt_ids),
 };
 
-static int imx21_ccm_init(void)
-{
-	return platform_driver_register(&imx21_ccm_driver);
-}
-core_initcall(imx21_ccm_init);
+core_platform_driver(imx21_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index 7c2140c215..8aa87a5200 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -186,8 +186,4 @@ static struct driver_d imx25_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx25_ccm_dt_ids),
 };
 
-static int imx25_ccm_init(void)
-{
-	return platform_driver_register(&imx25_ccm_driver);
-}
-core_initcall(imx25_ccm_init);
+core_platform_driver(imx25_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
index cba655c6fe..54894d1032 100644
--- a/drivers/clk/imx/clk-imx27.c
+++ b/drivers/clk/imx/clk-imx27.c
@@ -264,8 +264,4 @@ static struct driver_d imx27_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx27_ccm_dt_ids),
 };
 
-static int imx27_ccm_init(void)
-{
-	return platform_driver_register(&imx27_ccm_driver);
-}
-core_initcall(imx27_ccm_init);
+core_platform_driver(imx27_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx31.c b/drivers/clk/imx/clk-imx31.c
index 5fded58b11..fe241cba5f 100644
--- a/drivers/clk/imx/clk-imx31.c
+++ b/drivers/clk/imx/clk-imx31.c
@@ -145,8 +145,4 @@ static struct driver_d imx31_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx31_ccm_dt_ids),
 };
 
-static int imx31_ccm_init(void)
-{
-	return platform_driver_register(&imx31_ccm_driver);
-}
-core_initcall(imx31_ccm_init);
+core_platform_driver(imx31_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx35.c b/drivers/clk/imx/clk-imx35.c
index 17e2ae5e69..9af149f68e 100644
--- a/drivers/clk/imx/clk-imx35.c
+++ b/drivers/clk/imx/clk-imx35.c
@@ -208,8 +208,4 @@ static struct driver_d imx35_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx35_ccm_dt_ids),
 };
 
-static int imx35_ccm_init(void)
-{
-	return platform_driver_register(&imx35_ccm_driver);
-}
-core_initcall(imx35_ccm_init);
+core_platform_driver(imx35_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index 6a07816427..c7a1818bd7 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -339,7 +339,7 @@ static __maybe_unused struct of_device_id imx50_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx50_ccm_driver = {
+static __maybe_unused struct driver_d imx50_ccm_driver = {
 	.probe	= imx50_ccm_probe,
 	.name	= "imx50-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx50_ccm_dt_ids),
@@ -426,7 +426,7 @@ static __maybe_unused struct of_device_id imx51_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx51_ccm_driver = {
+static __maybe_unused struct driver_d imx51_ccm_driver = {
 	.probe	= imx51_ccm_probe,
 	.name	= "imx51-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx51_ccm_dt_ids),
@@ -522,21 +522,18 @@ static __maybe_unused struct of_device_id imx53_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx53_ccm_driver = {
+static __maybe_unused struct driver_d imx53_ccm_driver = {
 	.probe	= imx53_ccm_probe,
 	.name	= "imx53-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx53_ccm_dt_ids),
 };
 
-static int imx5_ccm_init(void)
-{
-	if (IS_ENABLED(CONFIG_ARCH_IMX50))
-		platform_driver_register(&imx50_ccm_driver);
-	if (IS_ENABLED(CONFIG_ARCH_IMX51))
-		platform_driver_register(&imx51_ccm_driver);
-	if (IS_ENABLED(CONFIG_ARCH_IMX53))
-		platform_driver_register(&imx53_ccm_driver);
-
-	return 0;
-}
-core_initcall(imx5_ccm_init);
+#if IS_ENABLED(CONFIG_ARCH_IMX50)
+core_platform_driver(imx50_ccm_driver);
+#endif
+#if IS_ENABLED(CONFIG_ARCH_IMX51)
+core_platform_driver(imx51_ccm_driver);
+#endif
+#if IS_ENABLED(CONFIG_ARCH_IMX53)
+core_platform_driver(imx53_ccm_driver);
+#endif
diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index b8b37a0c68..cb03024458 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -837,8 +837,4 @@ static struct driver_d imx6_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx6_ccm_dt_ids),
 };
 
-static int imx6_ccm_init(void)
-{
-	return platform_driver_register(&imx6_ccm_driver);
-}
-core_initcall(imx6_ccm_init);
+core_platform_driver(imx6_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
index 6ccc36e3b9..8d0766c055 100644
--- a/drivers/clk/imx/clk-imx6sl.c
+++ b/drivers/clk/imx/clk-imx6sl.c
@@ -316,8 +316,4 @@ static struct driver_d imx6sl_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx6sl_ccm_dt_ids),
 };
 
-static int imx6sl_ccm_init(void)
-{
-	return platform_driver_register(&imx6sl_ccm_driver);
-}
-core_initcall(imx6sl_ccm_init);
+core_platform_driver(imx6sl_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index d682e41e7c..bacde8b893 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -470,8 +470,4 @@ static struct driver_d imx6sx_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx6sx_ccm_dt_ids),
 };
 
-static int imx6sx_ccm_init(void)
-{
-	return platform_driver_register(&imx6sx_ccm_driver);
-}
-core_initcall(imx6sx_ccm_init);
+core_platform_driver(imx6sx_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index 79b52b7ce9..6668146860 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -466,8 +466,4 @@ static struct driver_d imx6_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx6_ccm_dt_ids),
 };
 
-static int imx6_ccm_init(void)
-{
-	return platform_driver_register(&imx6_ccm_driver);
-}
-core_initcall(imx6_ccm_init);
+core_platform_driver(imx6_ccm_driver);
diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index b6c7c2c3a8..ffa39d17b0 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -858,8 +858,4 @@ static struct driver_d imx7_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx7_ccm_dt_ids),
 };
 
-static int imx7_ccm_init(void)
-{
-	return platform_driver_register(&imx7_ccm_driver);
-}
-core_initcall(imx7_ccm_init);
+core_platform_driver(imx7_ccm_driver);
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index c7de00ac77..3d924ccf4d 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -102,11 +102,7 @@ static struct driver_d mvebu_coreclk_driver = {
 	.of_compatible = DRV_OF_COMPAT(mvebu_coreclk_ids),
 };
 
-static int mvebu_coreclk_init(void)
-{
-	return platform_driver_register(&mvebu_coreclk_driver);
-}
-core_initcall(mvebu_coreclk_init);
+core_platform_driver(mvebu_coreclk_driver);
 
 /*
  * Clock Gating Control
@@ -207,8 +203,4 @@ static struct driver_d mvebu_clk_gating_driver = {
 	.of_compatible = DRV_OF_COMPAT(mvebu_clk_gating_ids),
 };
 
-static int mvebu_clk_gating_init(void)
-{
-	return platform_driver_register(&mvebu_clk_gating_driver);
-}
-postcore_initcall(mvebu_clk_gating_init);
+postcore_platform_driver(mvebu_clk_gating_driver);
diff --git a/drivers/clk/mvebu/corediv.c b/drivers/clk/mvebu/corediv.c
index f740161e45..1577a2149c 100644
--- a/drivers/clk/mvebu/corediv.c
+++ b/drivers/clk/mvebu/corediv.c
@@ -254,8 +254,4 @@ static struct driver_d mvebu_corediv_clk_driver = {
 	.of_compatible = DRV_OF_COMPAT(mvebu_corediv_clk_ids),
 };
 
-static int mvebu_corediv_clk_init(void)
-{
-	return platform_driver_register(&mvebu_corediv_clk_driver);
-}
-postcore_initcall(mvebu_corediv_clk_init);
+postcore_platform_driver(mvebu_corediv_clk_driver);
diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
index dae8e348e2..a211b64f2c 100644
--- a/drivers/clk/mxs/clk-imx23.c
+++ b/drivers/clk/mxs/clk-imx23.c
@@ -141,8 +141,4 @@ static struct driver_d imx23_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx23_ccm_dt_ids),
 };
 
-static int imx23_ccm_init(void)
-{
-	return platform_driver_register(&imx23_ccm_driver);
-}
-postcore_initcall(imx23_ccm_init);
+postcore_platform_driver(imx23_ccm_driver);
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index bf65a4a3b8..aa4ba99cd7 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -202,8 +202,4 @@ static struct driver_d imx28_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx28_ccm_dt_ids),
 };
 
-static int imx28_ccm_init(void)
-{
-	return platform_driver_register(&imx28_ccm_driver);
-}
-postcore_initcall(imx28_ccm_init);
+postcore_platform_driver(imx28_ccm_driver);
diff --git a/drivers/clk/socfpga/clk.c b/drivers/clk/socfpga/clk.c
index 1d34b15caf..09e2039bd5 100644
--- a/drivers/clk/socfpga/clk.c
+++ b/drivers/clk/socfpga/clk.c
@@ -428,8 +428,4 @@ static struct driver_d socfpga_ccm_driver = {
 	.of_compatible = DRV_OF_COMPAT(socfpga_ccm_dt_ids),
 };
 
-static int socfpga_ccm_init(void)
-{
-	return platform_driver_register(&socfpga_ccm_driver);
-}
-core_initcall(socfpga_ccm_init);
+core_platform_driver(socfpga_ccm_driver);
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index f5704b83c5..bdd822e296 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -368,8 +368,4 @@ static struct driver_d tegra124_car_driver = {
 	.of_compatible = DRV_OF_COMPAT(tegra124_car_dt_ids),
 };
 
-static int tegra124_car_init(void)
-{
-	return platform_driver_register(&tegra124_car_driver);
-}
-postcore_initcall(tegra124_car_init);
+postcore_platform_driver(tegra124_car_driver);
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 9fccff6136..6e5fa144e4 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -371,8 +371,4 @@ static struct driver_d tegra20_car_driver = {
 	.of_compatible = DRV_OF_COMPAT(tegra20_car_dt_ids),
 };
 
-static int tegra20_car_init(void)
-{
-	return platform_driver_register(&tegra20_car_driver);
-}
-postcore_initcall(tegra20_car_init);
+postcore_platform_driver(tegra20_car_driver);
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 3d3a7854ff..505851f8f5 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -399,8 +399,4 @@ static struct driver_d tegra30_car_driver = {
 	.of_compatible = DRV_OF_COMPAT(tegra30_car_dt_ids),
 };
 
-static int tegra30_car_init(void)
-{
-	return platform_driver_register(&tegra30_car_driver);
-}
-postcore_initcall(tegra30_car_init);
+postcore_platform_driver(tegra30_car_driver);
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 1d9d28ea14..23259a5324 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -490,8 +490,4 @@ static struct driver_d zynq_clock_driver = {
 	.of_compatible = DRV_OF_COMPAT(zynq_clock_dt_ids),
 };
 
-static int zynq_clock_init(void)
-{
-	return platform_driver_register(&zynq_clock_driver);
-}
-postcore_initcall(zynq_clock_init);
+postcore_platform_driver(zynq_clock_driver);
diff --git a/drivers/clocksource/amba-sp804.c b/drivers/clocksource/amba-sp804.c
index 66e3988b4c..8ed5ae4be0 100644
--- a/drivers/clocksource/amba-sp804.c
+++ b/drivers/clocksource/amba-sp804.c
@@ -85,8 +85,4 @@ struct amba_driver sp804_driver = {
 	.id_table	= sp804_ids,
 };
 
-static int sp804_init(void)
-{
-	return amba_driver_register(&sp804_driver);
-}
-coredevice_initcall(sp804_init);
+coredevice_platform_driver(sp804_driver);
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
index 226150aa42..5a1e5a7921 100644
--- a/drivers/clocksource/arm_smp_twd.c
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -105,8 +105,4 @@ static struct driver_d smp_twd_driver = {
 	.of_compatible = DRV_OF_COMPAT(smp_twd_compatible),
 };
 
-static int smp_twd_init(void)
-{
-	return platform_driver_register(&smp_twd_driver);
-}
-coredevice_initcall(smp_twd_init);
+coredevice_platform_driver(smp_twd_driver);
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index 9130a4b14f..179109aee2 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -95,8 +95,4 @@ static struct driver_d bcm2835_cs_driver = {
 	.of_compatible = DRV_OF_COMPAT(bcm2835_cs_dt_ids),
 };
 
-static int bcm2835_cs_init(void)
-{
-	return platform_driver_register(&bcm2835_cs_driver);
-}
-core_initcall(bcm2835_cs_init);
+core_platform_driver(bcm2835_cs_driver);
diff --git a/drivers/clocksource/digic.c b/drivers/clocksource/digic.c
index 23e0d5b76b..9079733eba 100644
--- a/drivers/clocksource/digic.c
+++ b/drivers/clocksource/digic.c
@@ -88,8 +88,4 @@ static struct driver_d digic_timer_driver = {
 	.of_compatible = DRV_OF_COMPAT(digic_timer_dt_ids),
 };
 
-static int digic_timer_init(void)
-{
-	return platform_driver_register(&digic_timer_driver);
-}
-coredevice_initcall(digic_timer_init);
+coredevice_platform_driver(digic_timer_driver);
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index fb5b7ca63d..658d146fb5 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -106,9 +106,4 @@ static struct driver_d efi_cs_driver = {
 	.probe = efi_cs_probe,
 };
 
-static int efi_cs_initcall(void)
-{
-	return platform_driver_register(&efi_cs_driver);
-}
-/* for efi the time must be init at core initcall level */
-core_initcall(efi_cs_initcall);
+core_platform_driver(efi_cs_driver);
diff --git a/drivers/clocksource/efi_x86.c b/drivers/clocksource/efi_x86.c
index f8d3ff8a43..364e1ef8e1 100644
--- a/drivers/clocksource/efi_x86.c
+++ b/drivers/clocksource/efi_x86.c
@@ -71,9 +71,4 @@ static struct driver_d efi_x86_cs_driver = {
 	.probe = efi_x86_cs_probe,
 };
 
-static int efi_x86_cs_initcall(void)
-{
-	return platform_driver_register(&efi_x86_cs_driver);
-}
-/* for efi the time must be init at core initcall level */
-core_initcall(efi_x86_cs_initcall);
+core_platform_driver(efi_x86_cs_driver);
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index b55d72a343..5a47d6f217 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -105,8 +105,4 @@ static struct driver_d mvebu_timer_driver = {
 	.of_compatible = DRV_OF_COMPAT(mvebu_timer_dt_ids),
 };
 
-static int mvebu_timer_init(void)
-{
-	return platform_driver_register(&mvebu_timer_driver);
-}
-postcore_initcall(mvebu_timer_init);
+postcore_platform_driver(mvebu_timer_driver);
diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
index 9b20cbc946..7d5d9f9f77 100644
--- a/drivers/clocksource/nomadik.c
+++ b/drivers/clocksource/nomadik.c
@@ -142,8 +142,4 @@ static struct driver_d nmdk_mtu_driver = {
 	.probe = nmdk_mtu_probe,
 };
 
-static int nmdk_mtu_init(void)
-{
-	return platform_driver_register(&nmdk_mtu_driver);
-}
-coredevice_initcall(nmdk_mtu_init);
+coredevice_platform_driver(nmdk_mtu_driver);
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index 97008dabab..c9f50b729e 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -79,8 +79,4 @@ static struct driver_d orion_timer_driver = {
 	.of_compatible = DRV_OF_COMPAT(orion_timer_dt_ids),
 };
 
-static int orion_timer_init(void)
-{
-	return platform_driver_register(&orion_timer_driver);
-}
-postcore_initcall(orion_timer_init);
+postcore_platform_driver(orion_timer_driver);
diff --git a/drivers/clocksource/rk_timer.c b/drivers/clocksource/rk_timer.c
index baa517c62f..5cc8d32b60 100644
--- a/drivers/clocksource/rk_timer.c
+++ b/drivers/clocksource/rk_timer.c
@@ -66,8 +66,4 @@ static struct driver_d rktimer_driver = {
 	.of_compatible = DRV_OF_COMPAT(rktimer_dt_ids),
 };
 
-static int rktimer_init(void)
-{
-	return platform_driver_register(&rktimer_driver);
-}
-core_initcall(rktimer_init);
+core_platform_driver(rktimer_driver);
diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
index 50572ff5f8..368aae2450 100644
--- a/drivers/clocksource/timer-atmel-pit.c
+++ b/drivers/clocksource/timer-atmel-pit.c
@@ -112,8 +112,4 @@ static struct driver_d at91_pit_driver = {
 	.of_compatible = DRV_OF_COMPAT(at91_pit_dt_ids),
 };
 
-static int at91_pit_init(void)
-{
-	return platform_driver_register(&at91_pit_driver);
-}
-postcore_initcall(at91_pit_init);
+postcore_platform_driver(at91_pit_driver);
diff --git a/drivers/clocksource/timer-imx-gpt.c b/drivers/clocksource/timer-imx-gpt.c
index 881065bf9f..6be0afed4d 100644
--- a/drivers/clocksource/timer-imx-gpt.c
+++ b/drivers/clocksource/timer-imx-gpt.c
@@ -182,8 +182,4 @@ static struct driver_d imx_gpt_driver = {
 	.id_table = imx_gpt_ids,
 };
 
-static int imx_gpt_init(void)
-{
-	return platform_driver_register(&imx_gpt_driver);
-}
-postcore_initcall(imx_gpt_init);
+postcore_platform_driver(imx_gpt_driver);
diff --git a/drivers/clocksource/timer-ti-32k.c b/drivers/clocksource/timer-ti-32k.c
index f93ab5bcff..755c78095f 100644
--- a/drivers/clocksource/timer-ti-32k.c
+++ b/drivers/clocksource/timer-ti-32k.c
@@ -99,8 +99,4 @@ static struct driver_d omap_32ktimer_driver = {
 	.of_compatible = DRV_OF_COMPAT(omap_32ktimer_dt_ids),
 };
 
-static int omap_32ktimer_init(void)
-{
-	return platform_driver_register(&omap_32ktimer_driver);
-}
-postcore_initcall(omap_32ktimer_init);
+postcore_platform_driver(omap_32ktimer_driver);
diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index f41f0bb423..86882fcaf5 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -112,8 +112,4 @@ static struct driver_d omap_dmtimer_driver = {
 	.of_compatible = DRV_OF_COMPAT(omap_dmtimer_dt_ids),
 };
 
-static int omap_dmtimer_init(void)
-{
-	return platform_driver_register(&omap_dmtimer_driver);
-}
-postcore_initcall(omap_dmtimer_init);
+postcore_platform_driver(omap_dmtimer_driver);
diff --git a/drivers/clocksource/uemd.c b/drivers/clocksource/uemd.c
index 5eacfdaf1b..02fa8a1c5b 100644
--- a/drivers/clocksource/uemd.c
+++ b/drivers/clocksource/uemd.c
@@ -123,8 +123,4 @@ static struct driver_d uemd_timer_driver = {
 	.of_compatible = DRV_OF_COMPAT(uemd_timer_dt_ids),
 };
 
-static int uemd_timer_init(void)
-{
-	return platform_driver_register(&uemd_timer_driver);
-}
-coredevice_initcall(uemd_timer_init);
+coredevice_platform_driver(uemd_timer_driver);
diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index d08d743b54..1e66107c84 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -151,8 +151,4 @@ static struct driver_d ath79_gpio_driver = {
 	.of_compatible = DRV_OF_COMPAT(ath79_gpio_of_match),
 };
 
-static int ath79_gpio_init(void)
-{
-	return platform_driver_register(&ath79_gpio_driver);
-}
-coredevice_initcall(ath79_gpio_init);
+coredevice_platform_driver(ath79_gpio_driver);
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 7c060a09b1..3346209f76 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -206,8 +206,4 @@ static struct driver_d davinci_gpio_driver = {
 	.of_compatible	= DRV_OF_COMPAT(davinci_gpio_ids),
 };
 
-static int davinci_gpio_drv_reg(void)
-{
-	return platform_driver_register(&davinci_gpio_driver);
-}
-coredevice_initcall(davinci_gpio_drv_reg);
+coredevice_platform_driver(davinci_gpio_driver);
diff --git a/drivers/gpio/gpio-digic.c b/drivers/gpio/gpio-digic.c
index f7a68d09fc..9faa27c183 100644
--- a/drivers/gpio/gpio-digic.c
+++ b/drivers/gpio/gpio-digic.c
@@ -176,8 +176,4 @@ static struct driver_d digic_gpio_driver = {
 	.of_compatible = DRV_OF_COMPAT(digic_gpio_dt_ids),
 };
 
-static int digic_gpio_init(void)
-{
-	return platform_driver_register(&digic_gpio_driver);
-}
-coredevice_initcall(digic_gpio_init);
+coredevice_platform_driver(digic_gpio_driver);
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index b81e6a75c5..b7a61a8d90 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -195,8 +195,4 @@ static struct driver_d dwgpio_driver = {
 	.of_compatible = DRV_OF_COMPAT(dwgpio_match),
 };
 
-static int __init dwgpio_init(void)
-{
-	return platform_driver_register(&dwgpio_driver);
-}
-postcore_initcall(dwgpio_init);
+postcore_platform_driver(dwgpio_driver);
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 2e0dad9974..a9ddf26fa4 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -424,11 +424,7 @@ static struct driver_d bgpio_driver = {
 	.remove		= bgpio_dev_remove,
 };
 
-static int bgpio_register(void)
-{
-	return platform_driver_register(&bgpio_driver);
-}
-coredevice_initcall(bgpio_register);
+coredevice_platform_driver(bgpio_driver);
 
 #endif
 
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index 2827e11e73..c7ebce0b86 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -217,9 +217,4 @@ static struct driver_d imx_gpio_driver = {
 	.id_table = imx_gpio_ids,
 };
 
-static int imx_gpio_add(void)
-{
-	platform_driver_register(&imx_gpio_driver);
-	return 0;
-}
-postcore_initcall(imx_gpio_add);
+postcore_platform_driver(imx_gpio_driver);
diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
index 87e0716b06..bf99b718e8 100644
--- a/drivers/gpio/gpio-jz4740.c
+++ b/drivers/gpio/gpio-jz4740.c
@@ -136,8 +136,4 @@ static struct driver_d jz4740_gpio_driver = {
 	.of_compatible	= DRV_OF_COMPAT(jz4740_gpio_dt_ids),
 };
 
-static int jz4740_gpio_init(void)
-{
-	return platform_driver_register(&jz4740_gpio_driver);
-}
-coredevice_initcall(jz4740_gpio_init);
+coredevice_platform_driver(jz4740_gpio_driver);
diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta-fpga-i2c.c
index 9142248571..8002f7b73a 100644
--- a/drivers/gpio/gpio-malta-fpga-i2c.c
+++ b/drivers/gpio/gpio-malta-fpga-i2c.c
@@ -180,8 +180,4 @@ static struct driver_d malta_i2c_gpio_driver = {
 	.of_compatible	= DRV_OF_COMPAT(malta_i2c_gpio_dt_ids),
 };
 
-static int malta_i2c_gpio_driver_init(void)
-{
-	return platform_driver_register(&malta_i2c_gpio_driver);
-}
-coredevice_initcall(malta_i2c_gpio_driver_init);
+coredevice_platform_driver(malta_i2c_gpio_driver);
diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index 979f92ad30..710e5d1176 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -115,8 +115,4 @@ static struct driver_d mpc8xxx_driver = {
 	.of_compatible  = DRV_OF_COMPAT(mpc8xxx_gpio_ids),
 };
 
-static int __init mpc8xxx_init(void)
-{
-	return platform_driver_register(&mpc8xxx_driver);
-}
-postcore_initcall(mpc8xxx_init);
+postcore_platform_driver(mpc8xxx_driver);
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index ef78873ad2..aca93f5b27 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -178,9 +178,4 @@ static struct driver_d mxs_gpio_driver = {
 	.id_table = mxs_gpio_ids,
 };
 
-static int mxs_gpio_add(void)
-{
-	platform_driver_register(&mxs_gpio_driver);
-	return 0;
-}
-postcore_initcall(mxs_gpio_add);
+postcore_platform_driver(mxs_gpio_driver);
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index b00766a6aa..88fca4f68a 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -192,8 +192,4 @@ static struct driver_d omap_gpio_driver = {
 	.of_compatible = DRV_OF_COMPAT(omap_gpio_dt_ids),
 };
 
-static int omap_gpio_add(void)
-{
-	return platform_driver_register(&omap_gpio_driver);
-}
-coredevice_initcall(omap_gpio_add);
+coredevice_platform_driver(omap_gpio_driver);
diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
index f34aba9da9..c17c265440 100644
--- a/drivers/gpio/gpio-pl061.c
+++ b/drivers/gpio/gpio-pl061.c
@@ -147,11 +147,7 @@ static struct amba_driver pl061_gpio_driver = {
 	.probe		= pl061_probe,
 };
 
-static int __init pl061_gpio_init(void)
-{
-	return amba_driver_register(&pl061_gpio_driver);
-}
-coredevice_initcall(pl061_gpio_init);
+coredevice_platform_driver(pl061_gpio_driver);
 
 MODULE_AUTHOR("Baruch Siach <baruch@tkos.co.il>");
 MODULE_DESCRIPTION("PL061 GPIO driver");
diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
index d7e64045b4..ef37fe0dcf 100644
--- a/drivers/gpio/gpio-stmpe.c
+++ b/drivers/gpio/gpio-stmpe.c
@@ -154,8 +154,4 @@ static struct driver_d stmpe_gpio_driver = {
 	.probe = stmpe_gpio_probe,
 };
 
-static int stmpe_gpio_add(void)
-{
-	return platform_driver_register(&stmpe_gpio_driver);
-}
-coredevice_initcall(stmpe_gpio_add);
+coredevice_platform_driver(stmpe_gpio_driver);
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 56808b57e4..2348ce664a 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -201,8 +201,4 @@ static struct driver_d tegra_gpio_driver = {
 	.probe		= tegra_gpio_probe,
 };
 
-static int __init tegra_gpio_init(void)
-{
-	return platform_driver_register(&tegra_gpio_driver);
-}
-coredevice_initcall(tegra_gpio_init);
+coredevice_platform_driver(tegra_gpio_driver);
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index ab35310fbe..b08b396a6e 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -156,8 +156,4 @@ static struct driver_d vf610_gpio_driver = {
 	.of_compatible = DRV_OF_COMPAT(vf610_gpio_dt_ids),
 };
 
-static int __init gpio_vf610_init(void)
-{
-	return platform_driver_register(&vf610_gpio_driver);
-}
-postcore_initcall(gpio_vf610_init);
+postcore_platform_driver(vf610_gpio_driver);
diff --git a/drivers/led/led-pca955x.c b/drivers/led/led-pca955x.c
index 27fefce8d5..0b8291a6ed 100644
--- a/drivers/led/led-pca955x.c
+++ b/drivers/led/led-pca955x.c
@@ -413,8 +413,4 @@ static struct driver_d led_pca955x_driver = {
 	.of_compatible = DRV_OF_COMPAT(of_pca955x_match),
 };
 
-static int __init led_pca955x_init(void)
-{
-	return i2c_driver_register(&led_pca955x_driver);
-}
-device_initcall(led_pca955x_init);
+device_i2c_driver(led_pca955x_driver);
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index c463c623e7..91027857be 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -447,8 +447,4 @@ static struct driver_d bcm2835_mci_driver = {
 	.of_compatible = DRV_OF_COMPAT(bcm2835_mci_compatible),
 };
 
-static int bcm2835_mci_add(void)
-{
-	return platform_driver_register(&bcm2835_mci_driver);
-}
-device_initcall(bcm2835_mci_add);
+device_platform_driver(bcm2835_mci_driver);
diff --git a/drivers/memory/mc-tegra124.c b/drivers/memory/mc-tegra124.c
index a8d16094c6..09d9d89a49 100644
--- a/drivers/memory/mc-tegra124.c
+++ b/drivers/memory/mc-tegra124.c
@@ -68,8 +68,4 @@ static struct driver_d tegra124_mc_driver = {
 	.probe		= tegra124_mc_probe,
 };
 
-static int __init tegra124_mc_init(void)
-{
-	return platform_driver_register(&tegra124_mc_driver);
-}
-device_initcall(tegra124_mc_init);
+device_platform_driver(tegra124_mc_driver);
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index a5877dbda1..1f321a3272 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -399,37 +399,24 @@ static __maybe_unused struct of_device_id mc13xxx_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d mc13xxx_i2c_driver = {
+static __maybe_unused struct driver_d mc13xxx_i2c_driver = {
 	.name		= "mc13xxx-i2c",
 	.probe		= mc13xxx_probe,
 	.id_table	= mc13xxx_ids,
 	.of_compatible	= DRV_OF_COMPAT(mc13xxx_dt_ids),
 };
 
-static struct driver_d mc13xxx_spi_driver = {
+#if IS_ENABLED(CONFIG_I2C)
+coredevice_i2c_driver(mc13xxx_i2c_driver);
+#endif
+
+static __maybe_unused struct driver_d mc13xxx_spi_driver = {
 	.name		= "mc13xxx-spi",
 	.probe		= mc13xxx_probe,
 	.id_table	= mc13xxx_ids,
 	.of_compatible	= DRV_OF_COMPAT(mc13xxx_dt_ids),
 };
 
-static int __init mc13xxx_init(void)
-{
-	int err_spi = 0, err_i2c = 0;
-
-	if (IS_ENABLED(CONFIG_I2C))
-		err_spi = i2c_driver_register(&mc13xxx_i2c_driver);
-
-	if (IS_ENABLED(CONFIG_SPI))
-		err_i2c = spi_driver_register(&mc13xxx_spi_driver);
-
-	if (err_spi)
-		return err_spi;
-
-	if (err_i2c)
-		return err_i2c;
-
-	return 0;
-
-}
-coredevice_initcall(mc13xxx_init);
+#if IS_ENABLED(CONFIG_SPI)
+coredevice_spi_driver(mc13xxx_spi_driver);
+#endif
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index a464dfc506..25e308b2d6 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -267,11 +267,7 @@ static struct driver_d syscon_driver = {
 	.id_table	= syscon_ids,
 };
 
-static int __init syscon_init(void)
-{
-	return platform_driver_register(&syscon_driver);
-}
-core_initcall(syscon_init);
+core_platform_driver(syscon_driver);
 
 MODULE_AUTHOR("Dong Aisheng <dong.aisheng@linaro.org>");
 MODULE_DESCRIPTION("System Control driver");
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
index 48d41b8cb2..6d1a90684c 100644
--- a/drivers/net/ar231x.c
+++ b/drivers/net/ar231x.c
@@ -424,8 +424,4 @@ static struct driver_d ar231x_eth_driver = {
 	.probe = ar231x_eth_probe,
 };
 
-static int ar231x_eth_driver_init(void)
-{
-	return platform_driver_register(&ar231x_eth_driver);
-}
-device_initcall(ar231x_eth_driver_init);
+device_platform_driver(ar231x_eth_driver);
diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index a9031fa7f8..7ea7d28a21 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -146,8 +146,4 @@ static struct driver_d nop_usbphy_driver = {
 	.of_compatible = DRV_OF_COMPAT(nop_usbphy_dt_ids),
 };
 
-static int nop_usbphy_driver_init(void)
-{
-	return platform_driver_register(&nop_usbphy_driver);
-}
-fs_initcall(nop_usbphy_driver_init);
+fs_platform_driver(nop_usbphy_driver);
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index 81925f2fd4..d48707db7d 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -302,10 +302,6 @@ static struct driver_d imx_iomux_v1_driver = {
 	.of_compatible	= DRV_OF_COMPAT(imx_iomux_v1_dt_ids),
 };
 
-static int imx_iomux_v1_init(void)
-{
-	return platform_driver_register(&imx_iomux_v1_driver);
-}
-core_initcall(imx_iomux_v1_init);
+core_platform_driver(imx_iomux_v1_driver);
 
-#endif
\ No newline at end of file
+#endif
diff --git a/drivers/pinctrl/imx-iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
index 60b635a8a8..b6ffb7508a 100644
--- a/drivers/pinctrl/imx-iomux-v2.c
+++ b/drivers/pinctrl/imx-iomux-v2.c
@@ -150,8 +150,4 @@ static struct driver_d imx_iomux_driver = {
 	.id_table = imx_iomux_ids,
 };
 
-static int imx_iomux_init(void)
-{
-	return platform_driver_register(&imx_iomux_driver);
-}
-core_initcall(imx_iomux_init);
+core_platform_driver(imx_iomux_driver);
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index fd05274512..dc98d674a0 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -265,8 +265,4 @@ static struct driver_d imx_iomux_v3_driver = {
 	.of_compatible	= DRV_OF_COMPAT(imx_iomux_v3_dt_ids),
 };
 
-static int imx_iomux_v3_init(void)
-{
-	return platform_driver_register(&imx_iomux_v3_driver);
-}
-core_initcall(imx_iomux_v3_init);
+core_platform_driver(imx_iomux_v3_driver);
diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
index 4fde16ab5d..24ad7f5860 100644
--- a/drivers/pinctrl/mvebu/armada-370.c
+++ b/drivers/pinctrl/mvebu/armada-370.c
@@ -411,8 +411,4 @@ static struct driver_d armada_370_pinctrl_driver = {
 	.of_compatible	= armada_370_pinctrl_of_match,
 };
 
-static int armada_370_pinctrl_init(void)
-{
-	return platform_driver_register(&armada_370_pinctrl_driver);
-}
-core_initcall(armada_370_pinctrl_init);
+core_platform_driver(armada_370_pinctrl_driver);
diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
index 089942d696..25faabdf05 100644
--- a/drivers/pinctrl/mvebu/armada-xp.c
+++ b/drivers/pinctrl/mvebu/armada-xp.c
@@ -400,9 +400,4 @@ static struct driver_d armada_xp_pinctrl_driver = {
 	.probe		= armada_xp_pinctrl_probe,
 	.of_compatible	= armada_xp_pinctrl_of_match,
 };
-
-static int armada_xp_pinctrl_init(void)
-{
-	return platform_driver_register(&armada_xp_pinctrl_driver);
-}
-core_initcall(armada_xp_pinctrl_init);
+core_platform_driver(armada_xp_pinctrl_driver);
diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
index 2d9d8094f8..e02501d744 100644
--- a/drivers/pinctrl/mvebu/dove.c
+++ b/drivers/pinctrl/mvebu/dove.c
@@ -738,8 +738,4 @@ static struct driver_d dove_pinctrl_driver = {
 	.of_compatible	= dove_pinctrl_of_match,
 };
 
-static int dove_pinctrl_init(void)
-{
-	return platform_driver_register(&dove_pinctrl_driver);
-}
-core_initcall(dove_pinctrl_init);
+core_platform_driver(dove_pinctrl_driver);
diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
index a347239028..91bef76270 100644
--- a/drivers/pinctrl/mvebu/kirkwood.c
+++ b/drivers/pinctrl/mvebu/kirkwood.c
@@ -452,8 +452,4 @@ static struct driver_d kirkwood_pinctrl_driver = {
 	.of_compatible	= kirkwood_pinctrl_of_match,
 };
 
-static int kirkwood_pinctrl_init(void)
-{
-	return platform_driver_register(&kirkwood_pinctrl_driver);
-}
-core_initcall(kirkwood_pinctrl_init);
+core_platform_driver(kirkwood_pinctrl_driver);
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index b527114f1b..550e953a70 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -313,8 +313,4 @@ static struct driver_d pinctrl_at91_pio4_driver = {
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_at91_pio4_dt_ids),
 };
 
-static int pinctrl_at91_pio4_init(void)
-{
-	return platform_driver_register(&pinctrl_at91_pio4_driver);
-}
-core_initcall(pinctrl_at91_pio4_init);
+core_platform_driver(pinctrl_at91_pio4_driver);
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 13add1ffee..ad64f7da6d 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -526,11 +526,7 @@ static struct driver_d at91_pinctrl_driver = {
 	.of_compatible = DRV_OF_COMPAT(at91_pinctrl_dt_ids),
 };
 
-static int at91_pinctrl_init(void)
-{
-	return platform_driver_register(&at91_pinctrl_driver);
-}
-core_initcall(at91_pinctrl_init);
+core_platform_driver(at91_pinctrl_driver);
 
 static int at91_gpio_get(struct gpio_chip *chip, unsigned offset)
 {
@@ -706,8 +702,4 @@ static struct driver_d at91_gpio_driver = {
 	.of_compatible	= DRV_OF_COMPAT(at91_gpio_dt_ids),
 };
 
-static int at91_gpio_init(void)
-{
-	return platform_driver_register(&at91_gpio_driver);
-}
-core_initcall(at91_gpio_init);
+core_platform_driver(at91_gpio_driver);
diff --git a/drivers/pinctrl/pinctrl-bcm2835.c b/drivers/pinctrl/pinctrl-bcm2835.c
index b8e9b60372..d62c735181 100644
--- a/drivers/pinctrl/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/pinctrl-bcm2835.c
@@ -205,8 +205,4 @@ static struct driver_d bcm2835_gpio_driver = {
 	.of_compatible = DRV_OF_COMPAT(bcm2835_gpio_dt_ids),
 };
 
-static int bcm2835_gpio_add(void)
-{
-	return platform_driver_register(&bcm2835_gpio_driver);
-}
-coredevice_initcall(bcm2835_gpio_add);
+coredevice_platform_driver(bcm2835_gpio_driver);
diff --git a/drivers/pinctrl/pinctrl-mxs.c b/drivers/pinctrl/pinctrl-mxs.c
index 96f30bf95b..7c5d54c9ac 100644
--- a/drivers/pinctrl/pinctrl-mxs.c
+++ b/drivers/pinctrl/pinctrl-mxs.c
@@ -161,8 +161,4 @@ static struct driver_d mxs_pinctrl_driver = {
 	.of_compatible	= DRV_OF_COMPAT(mxs_pinctrl_dt_ids),
 };
 
-static int mxs_pinctrl_init(void)
-{
-	return platform_driver_register(&mxs_pinctrl_driver);
-}
-core_initcall(mxs_pinctrl_init);
+core_platform_driver(mxs_pinctrl_driver);
diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index c31b7e0365..c774660232 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -219,8 +219,4 @@ static struct driver_d pcs_driver = {
 	.of_compatible	= DRV_OF_COMPAT(pcs_dt_ids),
 };
 
-static int pcs_init(void)
-{
-	return platform_driver_register(&pcs_driver);
-}
-core_initcall(pcs_init);
+core_platform_driver(pcs_driver);
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index cdaed510c5..09b62309f6 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -440,8 +440,4 @@ static struct driver_d stm32_pinctrl_driver = {
 	.of_compatible	= DRV_OF_COMPAT(stm32_pinctrl_dt_ids),
 };
 
-static int stm32_pinctrl_init(void)
-{
-	return platform_driver_register(&stm32_pinctrl_driver);
-}
-core_initcall(stm32_pinctrl_init);
+core_platform_driver(stm32_pinctrl_driver);
diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
index c4d3bbe8d4..6bd884b7e2 100644
--- a/drivers/pinctrl/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
@@ -514,8 +514,4 @@ static struct driver_d pinctrl_tegra_xusb_driver = {
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_tegra_xusb_dt_ids),
 };
 
-static int pinctrl_tegra_xusb_init(void)
-{
-	return platform_driver_register(&pinctrl_tegra_xusb_driver);
-}
-core_initcall(pinctrl_tegra_xusb_init);
+core_platform_driver(pinctrl_tegra_xusb_driver);
diff --git a/drivers/pinctrl/pinctrl-tegra20.c b/drivers/pinctrl/pinctrl-tegra20.c
index 337992c21f..256aea1860 100644
--- a/drivers/pinctrl/pinctrl-tegra20.c
+++ b/drivers/pinctrl/pinctrl-tegra20.c
@@ -346,8 +346,4 @@ static struct driver_d pinctrl_tegra20_driver = {
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_tegra20_dt_ids),
 };
 
-static int pinctrl_tegra20_init(void)
-{
-	return platform_driver_register(&pinctrl_tegra20_driver);
-}
-core_initcall(pinctrl_tegra20_init);
+core_platform_driver(pinctrl_tegra20_driver);
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 278ea8c4a0..225a65233e 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -931,8 +931,4 @@ static struct driver_d pinctrl_tegra30_driver = {
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_tegra30_dt_ids),
 };
 
-static int pinctrl_tegra30_init(void)
-{
-	return platform_driver_register(&pinctrl_tegra30_driver);
-}
-core_initcall(pinctrl_tegra30_init);
+core_platform_driver(pinctrl_tegra30_driver);
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index 9a8ce0caa2..02dea60ac2 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -158,8 +158,4 @@ static struct driver_d pinctrl_vf610_driver = {
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_vf610_dt_ids),
 };
 
-static int pinctrl_vf610_init(void)
-{
-	return platform_driver_register(&pinctrl_vf610_driver);
-}
-core_initcall(pinctrl_vf610_init);
+core_platform_driver(pinctrl_vf610_driver);
diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
index 9b499f23c5..073f8faea8 100644
--- a/drivers/reset/reset-socfpga.c
+++ b/drivers/reset/reset-socfpga.c
@@ -118,8 +118,4 @@ static struct driver_d socfpga_reset_driver = {
 	.of_compatible	= DRV_OF_COMPAT(socfpga_reset_dt_ids),
 };
 
-static int socfpga_reset_init(void)
-{
-	return platform_driver_register(&socfpga_reset_driver);
-}
-postcore_initcall(socfpga_reset_init);
+postcore_platform_driver(socfpga_reset_driver);
diff --git a/drivers/reset/reset-stm32.c b/drivers/reset/reset-stm32.c
index 6c62633563..a4498f573b 100644
--- a/drivers/reset/reset-stm32.c
+++ b/drivers/reset/reset-stm32.c
@@ -211,8 +211,4 @@ static struct driver_d stm32_rcc_reset_driver = {
 	.of_compatible = DRV_OF_COMPAT(stm32_rcc_reset_dt_ids),
 };
 
-static int stm32_rcc_reset_init(void)
-{
-	return platform_driver_register(&stm32_rcc_reset_driver);
-}
-postcore_initcall(stm32_rcc_reset_init);
+postcore_platform_driver(stm32_rcc_reset_driver);
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index 416800b847..e86dccbbc1 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -261,8 +261,4 @@ static struct driver_d cadence_serial_driver = {
 	.id_table = cadence_serial_ids,
 };
 
-static int cadence_serial_init(void)
-{
-	return platform_driver_register(&cadence_serial_driver);
-}
-console_initcall(cadence_serial_init);
+console_platform_driver(cadence_serial_driver);
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index aa4485ccba..3a5ec236e5 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -673,10 +673,4 @@ static struct driver_d imx_usbmisc_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_usbmisc_dt_ids),
 };
 
-static int imx_usbmisc_init(void)
-{
-	platform_driver_register(&imx_usbmisc_driver);
-	return 0;
-}
-
-coredevice_initcall(imx_usbmisc_init);
+coredevice_platform_driver(imx_usbmisc_driver);
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index c23a747d0b..d5c10dc282 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -216,8 +216,4 @@ static struct driver_d imx_usbphy_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_usbphy_dt_ids),
 };
 
-static int imx_usbphy_init(void)
-{
-	return platform_driver_register(&imx_usbphy_driver);
-}
-fs_initcall(imx_usbphy_init);
+fs_platform_driver(imx_usbphy_driver);
diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
index f2e870d7ee..b0b4bebbff 100644
--- a/drivers/usb/musb/phy-am335x.c
+++ b/drivers/usb/musb/phy-am335x.c
@@ -78,8 +78,4 @@ static struct driver_d am335x_phy_driver = {
 	.of_compatible = DRV_OF_COMPAT(am335x_phy_dt_ids),
 };
 
-static int am335x_phy_init(void)
-{
-	return platform_driver_register(&am335x_phy_driver);
-}
-fs_initcall(am335x_phy_init);
+fs_platform_driver(am335x_phy_driver);
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index 683f298e76..dd54d9df31 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -356,8 +356,4 @@ static struct driver_d ipufb_driver = {
 	.remove		= ipufb_remove,
 };
 
-static int ipufb_register(void)
-{
-	return platform_driver_register(&ipufb_driver);
-}
-late_initcall(ipufb_register);
+late_platform_driver(ipufb_driver);
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index 67b31522ae..009626fefc 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -514,9 +514,4 @@ static struct driver_d omapfb_driver = {
 	.probe	= omapfb_probe,
 };
 
-static int omapfb_init(void)
-{
-	return platform_driver_register(&omapfb_driver);
-}
-
-device_initcall(omapfb_init);
+device_platform_driver(omapfb_driver);
diff --git a/drivers/watchdog/at91sam9_wdt.c b/drivers/watchdog/at91sam9_wdt.c
index 3f554bf47b..fe6f2e0408 100644
--- a/drivers/watchdog/at91sam9_wdt.c
+++ b/drivers/watchdog/at91sam9_wdt.c
@@ -102,8 +102,4 @@ static struct driver_d at91sam9x_wdt_driver = {
 	.probe		= at91sam9x_wdt_probe,
 };
 
-static int __init at91sam9x_wdt_init(void)
-{
-	return platform_driver_register(&at91sam9x_wdt_driver);
-}
-device_initcall(at91sam9x_wdt_init);
+device_platform_driver(at91sam9x_wdt_driver);
diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
index 781626fa0f..233eaa85c1 100644
--- a/drivers/watchdog/bcm2835_wdt.c
+++ b/drivers/watchdog/bcm2835_wdt.c
@@ -139,8 +139,4 @@ static struct driver_d bcm2835_wd_driver = {
 	.probe		= bcm2835_wd_probe,
 };
 
-static int __init bcm2835_wd_init(void)
-{
-	return platform_driver_register(&bcm2835_wd_driver);
-}
-device_initcall(bcm2835_wd_init);
+device_platform_driver(bcm2835_wd_driver);
diff --git a/include/driver.h b/include/driver.h
index 154525e0fd..1961ab6ed9 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -401,6 +401,8 @@ int platform_driver_register(struct driver_d *drv);
 	}						\
 	level##_initcall(drv##_register)
 
+#define core_platform_driver(drv)	\
+	register_driver_macro(core,platform,drv)
 #define postcore_platform_driver(drv)	\
 	register_driver_macro(postcore,platform,drv)
 #define coredevice_platform_driver(drv)	\
@@ -409,6 +411,10 @@ int platform_driver_register(struct driver_d *drv);
 	register_driver_macro(device,platform,drv)
 #define console_platform_driver(drv)	\
 	register_driver_macro(console,platform,drv)
+#define mem_platform_driver(drv)	\
+	register_driver_macro(mem,platform,drv)
+#define fs_platform_driver(drv)	\
+	register_driver_macro(fs,platform,drv)
 #define late_platform_driver(drv)	\
 	register_driver_macro(late,platform,drv)
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
