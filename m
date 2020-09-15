Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI4zc-0005fh-QE
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 07:03:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 09:03:02 +0200
Message-Id: <20200915070305.15763-4-s.hauer@pengutronix.de>
In-Reply-To: <20200915070305.15763-1-s.hauer@pengutronix.de>
References: <20200915070305.15763-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] powerpc: Make locally used functions static
To: Barebox List <barebox@lists.infradead.org>

Make only locally used functions static to avoid -Wmissing-prototypes
warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/powerpc/cpu-85xx/traps.c            |  6 +++---
 arch/powerpc/ddr-8xxx/ctrl_regs.c        |  7 ++++---
 arch/powerpc/ddr-8xxx/ddr2_dimm_params.c |  2 +-
 arch/powerpc/mach-mpc5xxx/speed.c        |  2 +-
 arch/powerpc/mach-mpc5xxx/time.c         |  2 +-
 arch/powerpc/mach-mpc5xxx/traps.c        |  6 +++---
 arch/powerpc/mach-mpc85xx/cpu_init.c     | 10 +++++-----
 arch/powerpc/mach-mpc85xx/time.c         |  2 +-
 drivers/net/fec_mpc5200.c                |  2 +-
 9 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/arch/powerpc/cpu-85xx/traps.c b/arch/powerpc/cpu-85xx/traps.c
index 0a8862191f..51c85775fc 100644
--- a/arch/powerpc/cpu-85xx/traps.c
+++ b/arch/powerpc/cpu-85xx/traps.c
@@ -61,7 +61,7 @@ static inline unsigned long get_esr(void)
 /*
  * Trap & Exception support
  */
-void print_backtrace(unsigned long *sp)
+static void print_backtrace(unsigned long *sp)
 {
 	int cnt = 0;
 	unsigned long i;
@@ -82,7 +82,7 @@ void print_backtrace(unsigned long *sp)
 	printf("\n");
 }
 
-void show_regs(struct pt_regs *regs)
+static void show_regs(struct pt_regs *regs)
 {
 	int i;
 
@@ -107,7 +107,7 @@ void show_regs(struct pt_regs *regs)
 	}
 }
 
-void _exception(int signr, struct pt_regs *regs)
+static void _exception(int signr, struct pt_regs *regs)
 {
 	show_regs(regs);
 	print_backtrace((unsigned long *)regs->gpr[1]);
diff --git a/arch/powerpc/ddr-8xxx/ctrl_regs.c b/arch/powerpc/ddr-8xxx/ctrl_regs.c
index e3d43ab09e..187f450c39 100644
--- a/arch/powerpc/ddr-8xxx/ctrl_regs.c
+++ b/arch/powerpc/ddr-8xxx/ctrl_regs.c
@@ -411,7 +411,8 @@ set_ddr_sdram_interval(struct fsl_ddr_cfg_regs_s *ddr,
 	ddr->ddr_sdram_interval = (((refint & 0xFFFF) << 16)
 				   | ((bstopre & 0x3FFF) << 0));
 }
-void set_ddr3_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
+
+static void set_ddr3_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
 			       const struct memctl_options_s *popts,
 			       const struct common_timing_params_s *dimm,
 			       uint32_t cas_latency, uint32_t additive_latency)
@@ -508,7 +509,7 @@ void set_ddr3_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
 			       );
 }
 
-void set_ddr2_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
+static void set_ddr2_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
 			       const struct memctl_options_s *popts,
 			       const struct common_timing_params_s *dimm,
 			       uint32_t cas_latency, uint32_t additive_latency)
@@ -571,7 +572,7 @@ void set_ddr2_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
 			       | ((sdmode & 0xFFFF) << 0));
 }
 
-void set_ddrx_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
+static void set_ddrx_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
 			       const struct memctl_options_s *popts,
 			       const struct common_timing_params_s *dimm,
 			       uint32_t cas_latency, uint32_t additive_latency)
diff --git a/arch/powerpc/ddr-8xxx/ddr2_dimm_params.c b/arch/powerpc/ddr-8xxx/ddr2_dimm_params.c
index 22c05ca6da..3ae88b7c49 100644
--- a/arch/powerpc/ddr-8xxx/ddr2_dimm_params.c
+++ b/arch/powerpc/ddr-8xxx/ddr2_dimm_params.c
@@ -164,7 +164,7 @@ static uint32_t determine_refresh_rate_ps(const uint32_t spd_refresh)
 			  /* CL2  CL3   CL4   CL5   CL6   CL7 */
 uint16_t ddr2_speed_bins[] = { 0, 5000, 3750, 3000, 2500, 1875 };
 
-uint32_t compute_derated_DDR2_CAS_latency(uint32_t mclk_ps)
+static uint32_t compute_derated_DDR2_CAS_latency(uint32_t mclk_ps)
 {
 	const uint32_t num_speed_bins = ARRAY_SIZE(ddr2_speed_bins);
 	uint32_t lowest_tCKmin_found = 0, lowest_tCKmin_CL = 0, i, x;
diff --git a/arch/powerpc/mach-mpc5xxx/speed.c b/arch/powerpc/mach-mpc5xxx/speed.c
index 8aa20bd373..760d923bcf 100644
--- a/arch/powerpc/mach-mpc5xxx/speed.c
+++ b/arch/powerpc/mach-mpc5xxx/speed.c
@@ -88,7 +88,7 @@ unsigned long get_timebase_clock(void)
 	return (get_bus_clock() + 3L) / 4L;
 }
 
-int prt_mpc5xxx_clks (void)
+static int prt_mpc5xxx_clks (void)
 {
 	printf("       Bus %ld MHz, IPB %ld MHz, PCI %ld MHz\n",
 			get_bus_clock() / 1000000, get_ipb_clock() / 1000000,
diff --git a/arch/powerpc/mach-mpc5xxx/time.c b/arch/powerpc/mach-mpc5xxx/time.c
index d1864673bd..8981b14eeb 100644
--- a/arch/powerpc/mach-mpc5xxx/time.c
+++ b/arch/powerpc/mach-mpc5xxx/time.c
@@ -20,7 +20,7 @@
 #include <mach/clock.h>
 #include <asm/common.h>
 
-uint64_t ppc_clocksource_read(void)
+static uint64_t ppc_clocksource_read(void)
 {
 	return get_ticks();
 }
diff --git a/arch/powerpc/mach-mpc5xxx/traps.c b/arch/powerpc/mach-mpc5xxx/traps.c
index 501a76252c..b3cb5f8318 100644
--- a/arch/powerpc/mach-mpc5xxx/traps.c
+++ b/arch/powerpc/mach-mpc5xxx/traps.c
@@ -41,7 +41,7 @@ int (*debugger_exception_handler)(struct pt_regs *) = 0;
  * Trap & Exception support
  */
 
-void
+static void
 print_backtrace(unsigned long *sp)
 {
 	int cnt = 0;
@@ -62,7 +62,7 @@ print_backtrace(unsigned long *sp)
 	printf("\n");
 }
 
-void show_regs(struct pt_regs * regs)
+static void show_regs(struct pt_regs * regs)
 {
 	int i;
 
@@ -90,7 +90,7 @@ void show_regs(struct pt_regs * regs)
 }
 
 
-void
+static void
 _exception(int signr, struct pt_regs *regs)
 {
 	show_regs(regs);
diff --git a/arch/powerpc/mach-mpc85xx/cpu_init.c b/arch/powerpc/mach-mpc85xx/cpu_init.c
index 4e13404aff..b9eadfadfd 100644
--- a/arch/powerpc/mach-mpc85xx/cpu_init.c
+++ b/arch/powerpc/mach-mpc85xx/cpu_init.c
@@ -34,7 +34,7 @@
 /* NOR workaround for P1010 erratum A003399 */
 #if defined(CONFIG_FSL_ERRATUM_P1010_A003549)
 #define SRAM_BASE_ADDR 0x100
-void setup_ifc(void)
+static void setup_ifc(void)
 {
 	u32 mas0, mas1, mas2, mas3, mas7;
 	phys_addr_t flash_phys = CFG_FLASH_BASE_PHYS;
@@ -89,7 +89,7 @@ void setup_ifc(void)
 	set_ifc_amask(0, CFG_IFC_AMASK0);
 }
 
-void fsl_erratum_ifc_a003399(void)
+static void fsl_erratum_ifc_a003399(void)
 {
 	u32 mas0, mas1, mas2, mas3, mas7;
 	void __iomem *l2cache = IOMEM(MPC85xx_L2_ADDR);
@@ -127,7 +127,7 @@ void fsl_erratum_ifc_a003399(void)
 	out_be32(l2cache + MPC85xx_L2_L2SRBAR0_OFFSET, 0x0);
 }
 #else
-void fsl_erratum_ifc_a003399(void) {}
+static void fsl_erratum_ifc_a003399(void) {}
 #endif
 
 int fsl_l2_cache_init(void)
@@ -173,7 +173,7 @@ int fsl_l2_cache_init(void)
 }
 
 #if defined(CONFIG_FSL_ERRATUM_P1010_A003549)
-void fsl_erratum_p1010_a003549(void)
+static void fsl_erratum_p1010_a003549(void)
 {
 	void __iomem *guts = IOMEM(MPC85xx_GUTS_ADDR);
 
@@ -181,7 +181,7 @@ void fsl_erratum_p1010_a003549(void)
 			MPC85xx_PMUXCR_LCLK_IFC_CS3);
 }
 #else
-void fsl_erratum_p1010_a003549(void) {}
+static void fsl_erratum_p1010_a003549(void) {}
 #endif
 
 void cpu_init_early_f(void)
diff --git a/arch/powerpc/mach-mpc85xx/time.c b/arch/powerpc/mach-mpc85xx/time.c
index f0acd91a1d..067bce8ea6 100644
--- a/arch/powerpc/mach-mpc85xx/time.c
+++ b/arch/powerpc/mach-mpc85xx/time.c
@@ -20,7 +20,7 @@
 #include <init.h>
 #include <mach/clock.h>
 
-uint64_t ppc_clocksource_read(void)
+static uint64_t ppc_clocksource_read(void)
 {
 	return get_ticks();
 }
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index b47813aaed..4025664d0d 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -637,7 +637,7 @@ static int mpc5xxx_fec_recv(struct eth_device *dev)
 	return len;
 }
 
-int mpc5xxx_fec_probe(struct device_d *dev)
+static int mpc5xxx_fec_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct fec_platform_data *pdata = dev->platform_data;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
