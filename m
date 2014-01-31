Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0W-0001GI-Tk
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:24:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:14 +0100
Message-Id: <1391178204-20889-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
References: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/15] ARM: i.MX25: Add missing GPT clock lookups
To: barebox@lists.infradead.org

Only one GPT will be used, but with devicetree support we can't predict
which one it is, so we need the clock lookup for all GPTs to ensure
that the timer gets its clock.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/lowlevel.c        | 9 +++++++--
 arch/arm/dts/Makefile                       | 1 +
 arch/arm/mach-imx/clk-imx25.c               | 3 +++
 arch/arm/mach-imx/include/mach/imx25-regs.h | 3 +++
 4 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 11f4138..a3a7784 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -75,9 +75,12 @@ static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 	writel(esdctl, esdctlreg);
 }
 
+extern char __dtb_imx25_karo_tx25_start[];
+
 void __bare_init __naked barebox_arm_reset_vector(void)
 {
 	uint32_t r;
+	uint32_t fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -136,6 +139,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	setup_uart();
 
+	fdt = (uint32_t)__dtb_imx25_karo_tx25_start - get_runtime_offset();
+
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0xa0000000)
@@ -161,8 +166,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
 	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
 
-	imx25_barebox_boot_nand_external(0);
+	imx25_barebox_boot_nand_external(fdt);
 #endif
 out:
-	imx25_barebox_entry(0);
+	imx25_barebox_entry(fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1718bde..ecfa5d9 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -48,6 +48,7 @@ pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += tegra20-colibri-iris.dtb.o
 pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
+pbl-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += imx6dl-hummingboard.dtb.o
diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 9817990..4d8631c 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -140,6 +140,9 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[per15], MX25_UART4_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per15], MX25_UART5_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per5], MX25_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per5], MX25_GPT2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per5], MX25_GPT3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per5], MX25_GPT4_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX25_FEC_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX25_I2C1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX25_I2C2_BASE_ADDR, NULL);
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 9ab0fb3..7181276 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -35,6 +35,9 @@
 #define MX25_IOMUXC_BASE_ADDR		(MX25_AIPS1_BASE_ADDR + 0xac000)
 
 #define MX25_CCM_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0x80000)
+#define MX25_GPT4_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0x84000)
+#define MX25_GPT3_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0x88000)
+#define MX25_GPT2_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0x8c000)
 #define MX25_GPT1_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0x90000)
 #define MX25_GPIO4_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0x9c000)
 #define MX25_PWM2_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0xa0000)
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
