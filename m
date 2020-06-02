Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1o7-0001jC-OD
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 07:58:04 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 09:57:56 +0200
Message-Id: <20200602075757.4734-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200602075757.4734-1-a.fatoum@pengutronix.de>
References: <20200602075757.4734-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] restart: give all restart handlers a descriptive name
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With incoming changes to choose a specific reset method, give all
currently unnamed "default" reset handlers a name:

  - soc     reset via SoC-specific means
  - soc-wdt reset via SoC watchdog timer
  - vector  reset via jump to reset vector
  - efi     reset via EFI firmware

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/at91rm9200_time.c           | 2 +-
 arch/arm/mach-at91/at91sam9260.c               | 2 +-
 arch/arm/mach-at91/at91sam9261.c               | 2 +-
 arch/arm/mach-at91/at91sam9263.c               | 2 +-
 arch/arm/mach-at91/at91sam9g45.c               | 2 +-
 arch/arm/mach-at91/at91sam9n12.c               | 2 +-
 arch/arm/mach-at91/at91sam9x5.c                | 2 +-
 arch/arm/mach-at91/sama5d3.c                   | 2 +-
 arch/arm/mach-at91/sama5d4.c                   | 2 +-
 arch/arm/mach-clps711x/reset.c                 | 2 +-
 arch/arm/mach-davinci/time.c                   | 2 +-
 arch/arm/mach-ep93xx/clocksource.c             | 2 +-
 arch/arm/mach-highbank/reset.c                 | 2 +-
 arch/arm/mach-mvebu/armada-370-xp.c            | 2 +-
 arch/arm/mach-mvebu/dove.c                     | 2 +-
 arch/arm/mach-mvebu/kirkwood.c                 | 2 +-
 arch/arm/mach-mxs/soc-imx23.c                  | 2 +-
 arch/arm/mach-mxs/soc-imx28.c                  | 2 +-
 arch/arm/mach-nomadik/reset.c                  | 2 +-
 arch/arm/mach-omap/am33xx_generic.c            | 2 +-
 arch/arm/mach-omap/omap3_generic.c             | 2 +-
 arch/arm/mach-omap/omap4_generic.c             | 2 +-
 arch/arm/mach-pxa/common.c                     | 2 +-
 arch/arm/mach-rockchip/rk3188.c                | 2 +-
 arch/arm/mach-rockchip/rk3288.c                | 2 +-
 arch/arm/mach-samsung/generic.c                | 2 +-
 arch/arm/mach-socfpga/arria10-generic.c        | 2 +-
 arch/arm/mach-socfpga/cyclone5-reset-manager.c | 2 +-
 arch/arm/mach-tegra/tegra20-pmc.c              | 2 +-
 arch/arm/mach-versatile/core.c                 | 2 +-
 arch/arm/mach-vexpress/reset.c                 | 2 +-
 arch/arm/mach-zynq/zynq.c                      | 2 +-
 arch/kvx/cpu/reset.c                           | 2 +-
 arch/mips/mach-ar231x/ar231x_reset.c           | 2 +-
 arch/mips/mach-ath79/reset.c                   | 2 +-
 arch/mips/mach-bcm47xx/reset.c                 | 2 +-
 arch/mips/mach-loongson/loongson1_reset.c      | 2 +-
 arch/mips/mach-malta/reset.c                   | 2 +-
 arch/nios2/cpu/cpu.c                           | 2 +-
 arch/openrisc/cpu/cpu.c                        | 2 +-
 arch/powerpc/mach-mpc5xxx/cpu.c                | 2 +-
 arch/powerpc/mach-mpc85xx/cpu.c                | 2 +-
 common/efi/efi.c                               | 2 +-
 common/restart.c                               | 5 ++++-
 include/restart.h                              | 3 ++-
 45 files changed, 49 insertions(+), 45 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index 975cd956c986..f89983fe63c6 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -88,7 +88,7 @@ static void __noreturn at91rm9200_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(at91rm9200_restart_soc);
+	restart_handler_register_fn("soc-wdt", at91rm9200_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index 56327a2c4710..fdd8ea014e9d 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -243,7 +243,7 @@ static void at91sam9260_initialize(void)
 	at91_add_pit(AT91SAM9260_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9260_BASE_SMC, 0x200);
 
-	restart_handler_register_fn(at91sam9260_restart);
+	restart_handler_register_fn("soc", at91sam9260_restart);
 }
 
 static int at91sam9260_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index 4abc55635413..0465ed9524df 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -235,7 +235,7 @@ static void at91sam9261_initialize(void)
 	at91_add_pit(AT91SAM9261_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9261_BASE_SMC, 0x200);
 
-	restart_handler_register_fn(at91sam9261_restart);
+	restart_handler_register_fn("soc", at91sam9261_restart);
 }
 
 static int at91sam9261_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index 690f8e06bb12..dc5dddfb646a 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -256,7 +256,7 @@ static void at91sam9263_initialize(void)
 	at91_add_sam9_smc(0, AT91SAM9263_BASE_SMC0, 0x200);
 	at91_add_sam9_smc(1, AT91SAM9263_BASE_SMC1, 0x200);
 
-	restart_handler_register_fn(at91sam9263_restart);
+	restart_handler_register_fn("soc", at91sam9263_restart);
 }
 
 static int at91sam9263_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 569aa274fc14..affc624b1d36 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -270,7 +270,7 @@ static void at91sam9g45_initialize(void)
 	at91_add_pit(AT91SAM9G45_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9G45_BASE_SMC, 0x200);
 
-	restart_handler_register_fn(at91sam9g45_restart);
+	restart_handler_register_fn("soc", at91sam9g45_restart);
 }
 
 static int at91sam9g45_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index 365bded56e40..850d34604a2c 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -226,7 +226,7 @@ static void at91sam9n12_initialize(void)
 	at91_add_pit(AT91SAM9N12_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9N12_BASE_SMC, 0x200);
 
-	restart_handler_register_fn(at91sam9n12_restart);
+	restart_handler_register_fn("soc", at91sam9n12_restart);
 }
 
 static int at91sam9n12_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 40ba9ed56e8a..086e27a79f51 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -13,7 +13,7 @@ static void at91sam9x5_restart(struct restart_handler *rst)
 
 static int at91sam9x5_initialize(void)
 {
-	restart_handler_register_fn(at91sam9x5_restart);
+	restart_handler_register_fn("soc", at91sam9x5_restart);
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index a5d464eca05f..b1e7b2c565fc 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -397,7 +397,7 @@ static void sama5d3_initialize(void)
 	at91_add_pit(SAMA5D3_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, SAMA5D3_BASE_HSMC + 0x600, 0xa0);
 
-	restart_handler_register_fn(sama5d3_restart);
+	restart_handler_register_fn("soc", sama5d3_restart);
 }
 
 static int sama5d3_setup(void)
diff --git a/arch/arm/mach-at91/sama5d4.c b/arch/arm/mach-at91/sama5d4.c
index ca09dfe425d5..62e466fe5168 100644
--- a/arch/arm/mach-at91/sama5d4.c
+++ b/arch/arm/mach-at91/sama5d4.c
@@ -305,7 +305,7 @@ static void sama5d4_initialize(void)
 	at91_add_pit(SAMA5D4_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, SAMA5D4_BASE_HSMC + 0x600, 0xa0);
 
-	restart_handler_register_fn(sama5d4_restart);
+	restart_handler_register_fn("soc", sama5d4_restart);
 }
 
 static int sama5d4_setup(void)
diff --git a/arch/arm/mach-clps711x/reset.c b/arch/arm/mach-clps711x/reset.c
index 03f40b73fabf..90ddb8f5d2f5 100644
--- a/arch/arm/mach-clps711x/reset.c
+++ b/arch/arm/mach-clps711x/reset.c
@@ -22,7 +22,7 @@ static void __noreturn clps711x_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(clps711x_restart_soc);
+	restart_handler_register_fn("vector", clps711x_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
index 4d1b570aa0d4..5b57fe61929b 100644
--- a/arch/arm/mach-davinci/time.c
+++ b/arch/arm/mach-davinci/time.c
@@ -210,7 +210,7 @@ static void __noreturn davinci_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(davinci_restart_soc);
+	restart_handler_register_fn("soc-wdt", davinci_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index 4fdcc36b1c81..1f3ff7f8f20a 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -85,7 +85,7 @@ static void __noreturn ep92xx_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(ep92xx_restart_soc);
+	restart_handler_register_fn("soc", ep92xx_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
index d73a0a76a5fe..ea3908ec2b59 100644
--- a/arch/arm/mach-highbank/reset.c
+++ b/arch/arm/mach-highbank/reset.c
@@ -33,7 +33,7 @@ static void __noreturn highbank_poweroff(struct poweroff_handler *handler)
 
 static int highbank_init(void)
 {
-	restart_handler_register_fn(highbank_restart_soc);
+	restart_handler_register_fn("soc", highbank_restart_soc);
 	poweroff_handler_register_fn(highbank_poweroff);
 
 	return 0;
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 2589f4fe72c3..9a35c51985eb 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -132,7 +132,7 @@ static int armada_370_xp_init_soc(void)
 	if (!of_machine_is_compatible("marvell,armada-370-xp"))
 		return 0;
 
-	restart_handler_register_fn(armada_370_xp_restart_soc);
+	restart_handler_register_fn("soc", armada_370_xp_restart_soc);
 
 	barebox_set_model("Marvell Armada 370/XP");
 	barebox_set_hostname("armada");
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 37fde63f18de..3c6302dd2d12 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -36,7 +36,7 @@ static int dove_init_soc(void)
 	if (!of_machine_is_compatible("marvell,dove"))
 		return 0;
 
-	restart_handler_register_fn(dove_restart_soc);
+	restart_handler_register_fn("soc", dove_restart_soc);
 
 	barebox_set_model("Marvell Dove");
 	barebox_set_hostname("dove");
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 59fb95ff4adf..e50d7501c82d 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -34,7 +34,7 @@ static int kirkwood_init_soc(void)
 	if (!of_machine_is_compatible("marvell,kirkwood"))
 		return 0;
 
-	restart_handler_register_fn(kirkwood_restart_soc);
+	restart_handler_register_fn("soc", kirkwood_restart_soc);
 
 	barebox_set_model("Marvell Kirkwood");
 	barebox_set_hostname("kirkwood");
diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
index f25fff18c310..8c47c766cc2b 100644
--- a/arch/arm/mach-mxs/soc-imx23.c
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -49,7 +49,7 @@ static int imx23_devices_init(void)
 	add_generic_device("imx23-gpio", 0, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx23-gpio", 1, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx23-gpio", 2, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
-	restart_handler_register_fn(imx23_restart_soc);
+	restart_handler_register_fn("soc", imx23_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index 49f870b5bf2a..a214e2b7a6d9 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -51,7 +51,7 @@ static int imx28_init(void)
 		HW_CLKCTRL_WDOG_POR_DISABLE;
 	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_RESET);
 
-	restart_handler_register_fn(imx28_restart_soc);
+	restart_handler_register_fn("soc", imx28_restart_soc);
 
 	arm_add_mem_device("ram0", IMX_MEMORY_BASE, imx28_get_memsize());
 
diff --git a/arch/arm/mach-nomadik/reset.c b/arch/arm/mach-nomadik/reset.c
index 8bdaada8a1a5..d5266068e293 100644
--- a/arch/arm/mach-nomadik/reset.c
+++ b/arch/arm/mach-nomadik/reset.c
@@ -35,7 +35,7 @@ static void __noreturn nomadik_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(nomadik_restart_soc);
+	restart_handler_register_fn("soc", nomadik_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 7577df761cb7..3c5cdf065c84 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -244,7 +244,7 @@ int am33xx_init(void)
 {
 	omap_gpmc_base = (void *)AM33XX_GPMC_BASE;
 
-	restart_handler_register_fn(am33xx_restart_soc);
+	restart_handler_register_fn("soc", am33xx_restart_soc);
 
 	am33xx_enable_per_clocks();
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index cff4a4fb119f..3f6a3462779d 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -540,7 +540,7 @@ int omap3_init(void)
 {
 	omap_gpmc_base = (void *)OMAP3_GPMC_BASE;
 
-	restart_handler_register_fn(omap3_restart_soc);
+	restart_handler_register_fn("soc", omap3_restart_soc);
 
 	if (IS_ENABLED(CONFIG_RESET_SOURCE))
 		omap3_detect_reset_reason();
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 1f711538487c..848a664064f5 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -535,7 +535,7 @@ int omap4_init(void)
 {
 	omap_gpmc_base = (void *)OMAP44XX_GPMC_BASE;
 
-	restart_handler_register_fn(omap4_restart_soc);
+	restart_handler_register_fn("soc", omap4_restart_soc);
 
 	return omap4_bootsource();
 }
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index 106ca3020eff..5b980cb81bab 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -41,7 +41,7 @@ static void __noreturn pxa_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(pxa_restart_soc);
+	restart_handler_register_fn("soc-wdt", pxa_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-rockchip/rk3188.c b/arch/arm/mach-rockchip/rk3188.c
index e7cbf364573c..572e9dc58f96 100644
--- a/arch/arm/mach-rockchip/rk3188.c
+++ b/arch/arm/mach-rockchip/rk3188.c
@@ -29,7 +29,7 @@ static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(rockchip_restart_soc);
+	restart_handler_register_fn("soc", rockchip_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-rockchip/rk3288.c b/arch/arm/mach-rockchip/rk3288.c
index 4e8fb4a123ac..9076fd9227cc 100644
--- a/arch/arm/mach-rockchip/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288.c
@@ -60,7 +60,7 @@ static void rk3288_detect_reset_reason(void)
 
 static int rk3288_init(void)
 {
-	restart_handler_register_fn(rockchip_restart_soc);
+	restart_handler_register_fn("soc", rockchip_restart_soc);
 
 	if (IS_ENABLED(CONFIG_RESET_SOURCE))
 		rk3288_detect_reset_reason();
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index de38d47e21cb..ed3d30d9954c 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -44,7 +44,7 @@ static void __noreturn samsung_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(samsung_restart_soc);
+	restart_handler_register_fn("soc-wdt", samsung_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-socfpga/arria10-generic.c b/arch/arm/mach-socfpga/arria10-generic.c
index 53ec278739cc..38558309f860 100644
--- a/arch/arm/mach-socfpga/arria10-generic.c
+++ b/arch/arm/mach-socfpga/arria10-generic.c
@@ -70,7 +70,7 @@ static int arria10_generic_init(void)
 	arria10_init_emac();
 
 	pr_debug("Register restart handler\n");
-	restart_handler_register_fn(arria10_restart_soc);
+	restart_handler_register_fn("soc", arria10_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-socfpga/cyclone5-reset-manager.c b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
index 86358068461d..4ee90b1bb0c7 100644
--- a/arch/arm/mach-socfpga/cyclone5-reset-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
@@ -37,7 +37,7 @@ static void __noreturn socfpga_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(socfpga_restart_soc);
+	restart_handler_register_fn("soc", socfpga_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index f7c7ac918f98..a252c995ea02 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -246,7 +246,7 @@ static struct driver_d tegra20_pmc_driver = {
 
 static int tegra20_pmc_init(void)
 {
-	restart_handler_register_fn(tegra20_restart_soc);
+	restart_handler_register_fn("soc", tegra20_restart_soc);
 	return platform_driver_register(&tegra20_pmc_driver);
 }
 coredevice_initcall(tegra20_pmc_init);
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 7c6e9523a24a..001d6712545f 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -205,7 +205,7 @@ static int versatile_init(void)
 	amba_apb_device_add(NULL, "pl061_gpio", 1, 0x101e5000, 4096, NULL, 0);
 	amba_apb_device_add(NULL, "pl061_gpio", 2, 0x101e6000, 4096, NULL, 0);
 	amba_apb_device_add(NULL, "pl061_gpio", 3, 0x101e7000, 4096, NULL, 0);
-	restart_handler_register_fn(versatile_reset_soc);
+	restart_handler_register_fn("soc", versatile_reset_soc);
 	return 0;
 }
 coredevice_initcall(versatile_init);
diff --git a/arch/arm/mach-vexpress/reset.c b/arch/arm/mach-vexpress/reset.c
index 3164ae3079c6..78e452936d2c 100644
--- a/arch/arm/mach-vexpress/reset.c
+++ b/arch/arm/mach-vexpress/reset.c
@@ -24,7 +24,7 @@ static void vexpress_reset_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(vexpress_reset_soc);
+	restart_handler_register_fn("soc-wdt", vexpress_reset_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index 79a6b908e000..806aeb913055 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -69,7 +69,7 @@ static int zynq_init(void)
 	writel(val, 0xf8f00000);
 	dmb();
 
-	restart_handler_register_fn(zynq_restart_soc);
+	restart_handler_register_fn("soc", zynq_restart_soc);
 
 	bootsource_set(zynq_bootsource_get());
 
diff --git a/arch/kvx/cpu/reset.c b/arch/kvx/cpu/reset.c
index c7f2018e0033..df36764cb66b 100644
--- a/arch/kvx/cpu/reset.c
+++ b/arch/kvx/cpu/reset.c
@@ -60,7 +60,7 @@ static int kvx_reset_init(void)
 		break;
 	}
 
-	restart_handler_register_fn(kvx_restart_soc);
+	restart_handler_register_fn("soc", kvx_restart_soc);
 
 	return 0;
 }
diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
index f88167ba4cba..91414edd269f 100644
--- a/arch/mips/mach-ar231x/ar231x_reset.c
+++ b/arch/mips/mach-ar231x/ar231x_reset.c
@@ -68,7 +68,7 @@ static struct driver_d ar231x_reset_driver = {
 
 static int ar231x_reset_init(void)
 {
-	restart_handler_register_fn(ar2312x_restart_soc);
+	restart_handler_register_fn("soc-wdt", ar2312x_restart_soc);
 	return platform_driver_register(&ar231x_reset_driver);
 }
 coredevice_initcall(ar231x_reset_init);
diff --git a/arch/mips/mach-ath79/reset.c b/arch/mips/mach-ath79/reset.c
index b756c859d8d0..393ca00b0829 100644
--- a/arch/mips/mach-ath79/reset.c
+++ b/arch/mips/mach-ath79/reset.c
@@ -22,7 +22,7 @@ static void __noreturn ath79_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(ath79_restart_soc);
+	restart_handler_register_fn("soc", ath79_restart_soc);
 
 	return 0;
 }
diff --git a/arch/mips/mach-bcm47xx/reset.c b/arch/mips/mach-bcm47xx/reset.c
index 33dfb7b3b53f..3ab9b0ce4b53 100644
--- a/arch/mips/mach-bcm47xx/reset.c
+++ b/arch/mips/mach-bcm47xx/reset.c
@@ -19,7 +19,7 @@ static void __noreturn bcm47xx_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(bcm47xx_restart_soc);
+	restart_handler_register_fn("soc", bcm47xx_restart_soc);
 
 	return 0;
 }
diff --git a/arch/mips/mach-loongson/loongson1_reset.c b/arch/mips/mach-loongson/loongson1_reset.c
index a6c05905deac..85752f4ab825 100644
--- a/arch/mips/mach-loongson/loongson1_reset.c
+++ b/arch/mips/mach-loongson/loongson1_reset.c
@@ -20,7 +20,7 @@ static void __noreturn longhorn_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(longhorn_restart_soc);
+	restart_handler_register_fn("soc-wdt", longhorn_restart_soc);
 
 	return 0;
 }
diff --git a/arch/mips/mach-malta/reset.c b/arch/mips/mach-malta/reset.c
index df7be0ae555f..ad0de2741b05 100644
--- a/arch/mips/mach-malta/reset.c
+++ b/arch/mips/mach-malta/reset.c
@@ -24,7 +24,7 @@ static void __noreturn malta_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(malta_restart_soc);
+	restart_handler_register_fn("soc", malta_restart_soc);
 
 	return 0;
 }
diff --git a/arch/nios2/cpu/cpu.c b/arch/nios2/cpu/cpu.c
index 62bcf40f636b..9f86c911cc41 100644
--- a/arch/nios2/cpu/cpu.c
+++ b/arch/nios2/cpu/cpu.c
@@ -30,7 +30,7 @@ static void __noreturn nios2_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	return restart_handler_register_fn(nios2_restart_soc);
+	return restart_handler_register_fn("vector", nios2_restart_soc);
 }
 coredevice_initcall(restart_register_feature);
 
diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c
index 8afd22bdea29..47d8ab428845 100644
--- a/arch/openrisc/cpu/cpu.c
+++ b/arch/openrisc/cpu/cpu.c
@@ -33,6 +33,6 @@ static void __noreturn openrisc_restart_cpu(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	return restart_handler_register_fn(openrisc_restart_cpu);
+	return restart_handler_register_fn("vector", openrisc_restart_cpu);
 }
 coredevice_initcall(restart_register_feature);
diff --git a/arch/powerpc/mach-mpc5xxx/cpu.c b/arch/powerpc/mach-mpc5xxx/cpu.c
index a85e1667bcb5..5cf5194aa28e 100644
--- a/arch/powerpc/mach-mpc5xxx/cpu.c
+++ b/arch/powerpc/mach-mpc5xxx/cpu.c
@@ -92,7 +92,7 @@ static void __noreturn mpc5xxx_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	return restart_handler_register_fn(mpc5xxx_restart_soc);
+	return restart_handler_register_fn("soc-wdt", mpc5xxx_restart_soc);
 }
 coredevice_initcall(restart_register_feature);
 
diff --git a/arch/powerpc/mach-mpc85xx/cpu.c b/arch/powerpc/mach-mpc85xx/cpu.c
index 7c8a59edc9c1..efdff24e6db3 100644
--- a/arch/powerpc/mach-mpc85xx/cpu.c
+++ b/arch/powerpc/mach-mpc85xx/cpu.c
@@ -42,7 +42,7 @@ static void __noreturn mpc85xx_restart_soc(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(mpc85xx_restart_soc);
+	restart_handler_register_fn("soc", mpc85xx_restart_soc);
 
 	return 0;
 }
diff --git a/common/efi/efi.c b/common/efi/efi.c
index 6f55e3970ed0..01003dc00f88 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -292,7 +292,7 @@ static void __noreturn efi_poweroff_system(struct poweroff_handler *handler)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(efi_restart_system);
+	restart_handler_register_fn("efi", efi_restart_system);
 	poweroff_handler_register_fn(efi_poweroff_system);
 
 	return 0;
diff --git a/common/restart.c b/common/restart.c
index dd15c8d5c362..66131c262938 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -47,6 +47,7 @@ int restart_handler_register(struct restart_handler *rst)
 
 /**
  * restart_handler_register_fn() - register a handler function
+ * @name:	restart method name or NULL if name should be auto-generated
  * @restart_fn:	The restart function
  *
  * convenience wrapper for restart_handler_register() to register a handler
@@ -54,13 +55,15 @@ int restart_handler_register(struct restart_handler *rst)
  *
  * return: 0 for success or negative error code
  */
-int restart_handler_register_fn(void (*restart_fn)(struct restart_handler *))
+int restart_handler_register_fn(const char *name,
+				void (*restart_fn)(struct restart_handler *))
 {
 	struct restart_handler *rst;
 	int ret;
 
 	rst = xzalloc(sizeof(*rst));
 
+	rst->name = name;
 	rst->restart = restart_fn;
 
 	ret = restart_handler_register(rst);
diff --git a/include/restart.h b/include/restart.h
index 6880b03b936f..e7dd1bd2b79c 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -12,7 +12,8 @@ struct restart_handler {
 };
 
 int restart_handler_register(struct restart_handler *);
-int restart_handler_register_fn(void (*restart_fn)(struct restart_handler *));
+int restart_handler_register_fn(const char *name,
+				void (*restart_fn)(struct restart_handler *));
 
 #define RESTART_DEFAULT_PRIORITY 100
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
