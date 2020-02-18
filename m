Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44y2-0005FT-13
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:39:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:39:14 +0100
Message-Id: <20200218153917.15937-5-s.hauer@pengutronix.de>
In-Reply-To: <20200218153917.15937-1-s.hauer@pengutronix.de>
References: <20200218153917.15937-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] ARM: remove unnecessary __bare_init attributes
To: Barebox List <barebox@lists.infradead.org>

__bare_init is only meaningful when we initially only have parts of
the barebox image available. This is not the case on most boards
__bare_init is used. Remove it where it's not necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/at91.rst                      | 2 +-
 arch/arm/boards/animeo_ip/lowlevel.c               | 2 +-
 arch/arm/boards/archosg9/lowlevel.c                | 2 +-
 arch/arm/boards/at91rm9200ek/lowlevel.c            | 2 +-
 arch/arm/boards/at91sam9260ek/lowlevel.c           | 2 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c      | 6 +++---
 arch/arm/boards/at91sam9263ek/lowlevel_init.c      | 4 ++--
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c        | 2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c          | 2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c           | 2 +-
 arch/arm/boards/clep7212/lowlevel.c                | 2 +-
 arch/arm/boards/dss11/lowlevel.c                   | 2 +-
 arch/arm/boards/haba-knx/lowlevel.c                | 2 +-
 arch/arm/boards/kindle3/lowlevel.c                 | 2 +-
 arch/arm/boards/lubbock/lowlevel.c                 | 2 +-
 arch/arm/boards/mainstone/lowlevel.c               | 2 +-
 arch/arm/boards/module-mb7707/lowlevel.c           | 2 +-
 arch/arm/boards/mx31moboard/lowlevel.c             | 2 +-
 arch/arm/boards/omap343xdsp/lowlevel.c             | 2 +-
 arch/arm/boards/omap3evm/lowlevel.c                | 2 +-
 arch/arm/boards/panda/lowlevel.c                   | 2 +-
 arch/arm/boards/phytec-phycard-omap3/lowlevel.c    | 2 +-
 arch/arm/boards/phytec-phycard-omap4/lowlevel.c    | 2 +-
 arch/arm/boards/phytec-phycore-omap4460/lowlevel.c | 2 +-
 arch/arm/boards/pm9261/lowlevel_init.c             | 6 +++---
 arch/arm/boards/pm9263/lowlevel_init.c             | 6 +++---
 arch/arm/boards/pm9g45/lowlevel.c                  | 2 +-
 arch/arm/boards/qil-a926x/lowlevel.c               | 2 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c        | 2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c              | 2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c        | 2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c               | 2 +-
 arch/arm/boards/telit-evk-pro3/lowlevel.c          | 2 +-
 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c     | 2 +-
 arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c     | 6 +++---
 arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c     | 2 +-
 arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c     | 6 +++---
 arch/arm/boards/virt2real/lowlevel.c               | 2 +-
 arch/arm/mach-clps711x/lowlevel.c                  | 2 +-
 39 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/Documentation/boards/at91.rst b/Documentation/boards/at91.rst
index f25cb01bb1..edf3141a85 100644
--- a/Documentation/boards/at91.rst
+++ b/Documentation/boards/at91.rst
@@ -39,7 +39,7 @@ This is a list of AT91 specific TODO items, listed in no particular order.
 
 .. code-block:: c
 
-  void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+  void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 
 
 This will unify the prototype for the reset vector for multi image and standalone images
diff --git a/arch/arm/boards/animeo_ip/lowlevel.c b/arch/arm/boards/animeo_ip/lowlevel.c
index 7f52f824df..f5439218db 100644
--- a/arch/arm/boards/animeo_ip/lowlevel.c
+++ b/arch/arm/boards/animeo_ip/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index 2a93428462..729fa5e18c 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -66,7 +66,7 @@ static noinline void archosg9_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	omap4_save_bootinfo((void *)r0);
 
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index b132ccc084..521873e5b3 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -21,7 +21,7 @@ void static inline access_sdram(void)
 	writel(0x00000000, AT91_CHIPSELECT_1);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	u32 r;
 	int i;
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
index 7f52f824df..f5439218db 100644
--- a/arch/arm/boards/at91sam9260ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index bb9b905c65..af63dfd7f4 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -19,7 +19,7 @@
 #define MASTER_PLL_DIV		1
 #endif
 
-static void __bare_init at91sam9261ek_board_config(struct at91sam926x_board_cfg *cfg)
+static void at91sam9261ek_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -101,7 +101,7 @@ static void __bare_init at91sam9261ek_board_config(struct at91sam926x_board_cfg
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init at91sam9261ek_init(void)
+static void at91sam9261ek_init(void)
 {
 	struct at91sam926x_board_cfg cfg;
 
@@ -117,7 +117,7 @@ static void __bare_init at91sam9261ek_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 0bf0e0fb4e..e2dc9c1abd 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -14,7 +14,7 @@
 #define MASTER_PLL_MUL		171
 #define MASTER_PLL_DIV		14
 
-static void __bare_init at91sam9263ek_board_config(struct at91sam926x_board_cfg *cfg)
+static void at91sam9263ek_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -99,7 +99,7 @@ static void __bare_init at91sam9263ek_board_config(struct at91sam926x_board_cfg
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init at91sam9263ek_init(void *fdt)
+static void at91sam9263ek_init(void *fdt)
 {
 	struct at91sam926x_board_cfg cfg;
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 0f3a035d1d..72ff3d4d54 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/hardware.h>
 #include <mach/at91sam9_ddrsdr.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index e07ff892cd..bbe5887bd5 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9g45.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index 5bc18f8fca..1fbca843c5 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
index 231329025b..4f5e440762 100644
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -20,7 +20,7 @@
 # define CLPS711X_CPU_PLL_MULT	40
 #endif
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/dss11/lowlevel.c b/arch/arm/boards/dss11/lowlevel.c
index 7f52f824df..f5439218db 100644
--- a/arch/arm/boards/dss11/lowlevel.c
+++ b/arch/arm/boards/dss11/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/haba-knx/lowlevel.c b/arch/arm/boards/haba-knx/lowlevel.c
index 7f52f824df..f5439218db 100644
--- a/arch/arm/boards/haba-knx/lowlevel.c
+++ b/arch/arm/boards/haba-knx/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/kindle3/lowlevel.c b/arch/arm/boards/kindle3/lowlevel.c
index 19b95fc376..a2d2fdb2e1 100644
--- a/arch/arm/boards/kindle3/lowlevel.c
+++ b/arch/arm/boards/kindle3/lowlevel.c
@@ -31,7 +31,7 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
diff --git a/arch/arm/boards/lubbock/lowlevel.c b/arch/arm/boards/lubbock/lowlevel.c
index abf9e7a98a..80c280bd6b 100644
--- a/arch/arm/boards/lubbock/lowlevel.c
+++ b/arch/arm/boards/lubbock/lowlevel.c
@@ -169,7 +169,7 @@ static inline void pxa2xx_dram_init(void)
 	}
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	unsigned long pssr = PSPR;
 	unsigned long pc = get_pc();
diff --git a/arch/arm/boards/mainstone/lowlevel.c b/arch/arm/boards/mainstone/lowlevel.c
index 31f9d76513..13bc75e6c7 100644
--- a/arch/arm/boards/mainstone/lowlevel.c
+++ b/arch/arm/boards/mainstone/lowlevel.c
@@ -241,7 +241,7 @@ static inline void pxa2xx_dram_init(void)
 	}
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	unsigned long pssr = PSPR;
 	unsigned long pc = get_pc();
diff --git a/arch/arm/boards/module-mb7707/lowlevel.c b/arch/arm/boards/module-mb7707/lowlevel.c
index fc102e26e1..229e357ffa 100644
--- a/arch/arm/boards/module-mb7707/lowlevel.c
+++ b/arch/arm/boards/module-mb7707/lowlevel.c
@@ -28,7 +28,7 @@
 
 extern char __dtb_module_mb7707_start[];
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/mx31moboard/lowlevel.c b/arch/arm/boards/mx31moboard/lowlevel.c
index 307975d78c..b51bbff08f 100644
--- a/arch/arm/boards/mx31moboard/lowlevel.c
+++ b/arch/arm/boards/mx31moboard/lowlevel.c
@@ -102,7 +102,7 @@ static noinline __noreturn void mx31moboard_startup(void)
 
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index fb99ea9278..3ae7c00389 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -548,7 +548,7 @@ static int sdp343x_board_init(void)
 	return 0;
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	omap3_save_bootinfo((void *)r0);
 
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index e06ece2560..27992196c1 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -161,7 +161,7 @@ static int omap3_evm_board_init(void)
 	return 0;
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	omap3_save_bootinfo((void *)r0);
 
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 006fb627dd..9c31615c34 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -79,7 +79,7 @@ static void noinline panda_init_lowlevel(void)
 		omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1210);
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	omap4_save_bootinfo((void *)r0);
 
diff --git a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
index 54d8eaaddf..408c1407e6 100644
--- a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
@@ -252,7 +252,7 @@ static int pcaal1_board_init(void)
 	return 0;
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	omap3_save_bootinfo((void *)r0);
 
diff --git a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
index c49c4ca841..f0b1e4e682 100644
--- a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
@@ -89,7 +89,7 @@ static noinline void pcaaxl2_init_lowlevel(void)
 	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	omap4_save_bootinfo((void *)r0);
 
diff --git a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
index 6511dae9d4..8397b449ee 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
@@ -139,7 +139,7 @@ static void noinline pcm049_init_lowlevel(void)
 	sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);  /* enable clocks */
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	omap4_save_bootinfo((void *)r0);
 
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index b18cd067b7..e3f47679e5 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -13,7 +13,7 @@
 #define MASTER_PLL_MUL		162
 #define MAIN_PLL_DIV		2
 
-static void __bare_init pm9261_board_config(struct at91sam926x_board_cfg *cfg)
+static void pm9261_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -95,7 +95,7 @@ static void __bare_init pm9261_board_config(struct at91sam926x_board_cfg *cfg)
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init pm9261_init(void)
+static void pm9261_init(void)
 {
 	struct at91sam926x_board_cfg cfg;
 
@@ -111,7 +111,7 @@ static void __bare_init pm9261_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index 8f44adee99..a8b55c73bd 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -15,7 +15,7 @@
 #define MASTER_PLL_MUL		65
 #define MAIN_PLL_DIV		2	/* 2 or 4 */
 
-static void __bare_init pm9263_board_config(struct at91sam926x_board_cfg *cfg)
+static void pm9263_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -116,7 +116,7 @@ static void __bare_init pm9263_board_config(struct at91sam926x_board_cfg *cfg)
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init pm9263_board_init(void)
+static void pm9263_board_init(void)
 {
 	struct at91sam926x_board_cfg cfg;
 
@@ -132,7 +132,7 @@ static void __bare_init pm9263_board_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index fc0bfe405b..e13d8c992a 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/qil-a926x/lowlevel.c b/arch/arm/boards/qil-a926x/lowlevel.c
index 7f52f824df..f5439218db 100644
--- a/arch/arm/boards/qil-a926x/lowlevel.c
+++ b/arch/arm/boards/qil-a926x/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index 8653c48c69..3edc15f400 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index 8653c48c69..3edc15f400 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index 9a6a767e5f..26dfdad921 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index 9a6a767e5f..26dfdad921 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/telit-evk-pro3/lowlevel.c b/arch/arm/boards/telit-evk-pro3/lowlevel.c
index 7f52f824df..f5439218db 100644
--- a/arch/arm/boards/telit-evk-pro3/lowlevel.c
+++ b/arch/arm/boards/telit-evk-pro3/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
index 7f52f824df..f5439218db 100644
--- a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index 565ba438d2..278dacdb02 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -18,7 +18,7 @@
 #define MASTER_PLL_MUL		90
 #define MASTER_PLL_DIV		6
 
-static void __bare_init tny_a9263_board_config(struct at91sam926x_board_cfg *cfg)
+static void tny_a9263_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -100,7 +100,7 @@ static void __bare_init tny_a9263_board_config(struct at91sam926x_board_cfg *cfg
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init tny_a9263_init(void)
+static void tny_a9263_init(void)
 {
 	struct at91sam926x_board_cfg cfg;
 
@@ -118,7 +118,7 @@ static void __bare_init tny_a9263_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
index 7f52f824df..f5439218db 100644
--- a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index 2ad88d7f22..188a08890f 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -20,7 +20,7 @@
 #endif
 #define MASTER_PLL_DIV		6
 
-static void __bare_init usb_a9263_board_config(struct at91sam926x_board_cfg *cfg)
+static void usb_a9263_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -106,7 +106,7 @@ static void __bare_init usb_a9263_board_config(struct at91sam926x_board_cfg *cfg
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init usb_a9263_init(void)
+static void usb_a9263_init(void)
 {
 	struct at91sam926x_board_cfg cfg;
 
@@ -122,7 +122,7 @@ static void __bare_init usb_a9263_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/virt2real/lowlevel.c b/arch/arm/boards/virt2real/lowlevel.c
index a72334bb0e..1a020fdcf1 100644
--- a/arch/arm/boards/virt2real/lowlevel.c
+++ b/arch/arm/boards/virt2real/lowlevel.c
@@ -28,7 +28,7 @@
 
 extern char __dtb_virt2real_start[];
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
index 35b8b35e87..4d1fdb7e1c 100644
--- a/arch/arm/mach-clps711x/lowlevel.c
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -17,7 +17,7 @@
 
 #include <mach/clps711x.h>
 
-void __naked __bare_init clps711x_barebox_entry(u32 pllmult, void *data)
+void __naked clps711x_barebox_entry(u32 pllmult, void *data)
 {
 	u32 cpu, bus;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
