Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oME-0001xJ-Il
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:48 +0100
Message-Id: <20190318091454.11386-6-s.hauer@pengutronix.de>
In-Reply-To: <20190318091454.11386-1-s.hauer@pengutronix.de>
References: <20190318091454.11386-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] ARM: boards: Harmonize barebox_arm_reset_vector()
 prototype
To: Barebox List <barebox@lists.infradead.org>

barebox_arm_reset_vector() is a global function but we never provided a
prototype anywhere. The prototypes differ for the different boards, so
to provide a common prototype we must harmonize them.

void barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)

Should be suitable for all boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/lowlevel.c               | 2 +-
 arch/arm/boards/archosg9/lowlevel.c                | 4 ++--
 arch/arm/boards/at91rm9200ek/lowlevel.c            | 2 +-
 arch/arm/boards/at91sam9260ek/lowlevel.c           | 2 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c      | 2 +-
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c        | 2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c          | 2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c           | 2 +-
 arch/arm/boards/avnet-zedboard/lowlevel.c          | 2 +-
 arch/arm/boards/canon-a1100/lowlevel.c             | 2 +-
 arch/arm/boards/chumby_falconwing/lowlevel.c       | 2 +-
 arch/arm/boards/clep7212/lowlevel.c                | 2 +-
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c   | 2 +-
 arch/arm/boards/dss11/lowlevel.c                   | 2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         | 2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         | 2 +-
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c         | 2 +-
 arch/arm/boards/freescale-mx23-evk/lowlevel.c      | 2 +-
 arch/arm/boards/freescale-mx53-smd/lowlevel.c      | 2 +-
 arch/arm/boards/friendlyarm-mini6410/lowlevel.c    | 2 +-
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     | 2 +-
 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c    | 2 +-
 arch/arm/boards/guf-cupid/lowlevel.c               | 3 +--
 arch/arm/boards/guf-neso/lowlevel.c                | 2 +-
 arch/arm/boards/haba-knx/lowlevel.c                | 2 +-
 arch/arm/boards/highbank/lowlevel.c                | 2 +-
 arch/arm/boards/karo-tx51/lowlevel.c               | 2 +-
 arch/arm/boards/kindle3/lowlevel.c                 | 2 +-
 arch/arm/boards/lubbock/lowlevel.c                 | 2 +-
 arch/arm/boards/mainstone/lowlevel.c               | 2 +-
 arch/arm/boards/mioa701/lowlevel.c                 | 2 +-
 arch/arm/boards/module-mb7707/lowlevel.c           | 2 +-
 arch/arm/boards/mx31moboard/lowlevel.c             | 2 +-
 arch/arm/boards/nhk8815/lowlevel.c                 | 2 +-
 arch/arm/boards/omap343xdsp/lowlevel.c             | 4 ++--
 arch/arm/boards/omap3evm/lowlevel.c                | 4 ++--
 arch/arm/boards/panda/lowlevel.c                   | 4 ++--
 arch/arm/boards/phytec-phycard-omap3/lowlevel.c    | 4 ++--
 arch/arm/boards/phytec-phycard-omap4/lowlevel.c    | 4 ++--
 arch/arm/boards/phytec-phycore-imx31/lowlevel.c    | 2 +-
 arch/arm/boards/phytec-phycore-imx35/lowlevel.c    | 2 +-
 arch/arm/boards/phytec-phycore-omap4460/lowlevel.c | 4 ++--
 arch/arm/boards/pm9261/lowlevel_init.c             | 2 +-
 arch/arm/boards/pm9263/lowlevel_init.c             | 2 +-
 arch/arm/boards/pm9g45/lowlevel.c                  | 2 +-
 arch/arm/boards/qemu-virt64/lowlevel.c             | 2 +-
 arch/arm/boards/qil-a926x/lowlevel.c               | 2 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c        | 2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c              | 2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c        | 2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c               | 2 +-
 arch/arm/boards/telit-evk-pro3/lowlevel.c          | 2 +-
 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c     | 2 +-
 arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c     | 2 +-
 arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c     | 2 +-
 arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c     | 2 +-
 arch/arm/boards/versatile/lowlevel.c               | 2 +-
 arch/arm/boards/virt2real/lowlevel.c               | 2 +-
 arch/arm/boards/zylonite/lowlevel.c                | 2 +-
 arch/arm/include/asm/barebox-arm-head.h            | 1 +
 arch/arm/mach-imx/cpu_init.c                       | 1 +
 61 files changed, 68 insertions(+), 67 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/lowlevel.c b/arch/arm/boards/animeo_ip/lowlevel.c
index b16ef31bf0..25352672d7 100644
--- a/arch/arm/boards/animeo_ip/lowlevel.c
+++ b/arch/arm/boards/animeo_ip/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index c76d04b905..2a93428462 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -66,9 +66,9 @@ static noinline void archosg9_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
-	omap4_save_bootinfo(data);
+	omap4_save_bootinfo((void *)r0);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index a5c9058552..030c3dbf04 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -21,7 +21,7 @@ void static inline access_sdram(void)
 	writel(0x00000000, AT91_CHIPSELECT_1);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	u32 r;
 	int i;
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
index b16ef31bf0..25352672d7 100644
--- a/arch/arm/boards/at91sam9260ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index 33aa9430dc..0d7f6d6590 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -117,7 +117,7 @@ static void __bare_init at91sam9261ek_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 478ff11e1d..1d83cdf0bf 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/hardware.h>
 #include <mach/at91sam9_ddrsdr.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index d5940b987a..4ccbb93557 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9g45.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index 47079336e6..f57e439b9e 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 7770bcb7cf..cf3c4ebd0c 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -27,7 +27,7 @@
 #define PLL_DDR_LOCK	(1 << 1)
 #define PLL_IO_LOCK	(1 << 2)
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	/* open sesame */
 	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
diff --git a/arch/arm/boards/canon-a1100/lowlevel.c b/arch/arm/boards/canon-a1100/lowlevel.c
index 5f4297ea4c..744ce59eaa 100644
--- a/arch/arm/boards/canon-a1100/lowlevel.c
+++ b/arch/arm/boards/canon-a1100/lowlevel.c
@@ -3,7 +3,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
index bfc76cc7d4..50bacc620f 100644
--- a/arch/arm/boards/chumby_falconwing/lowlevel.c
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -4,7 +4,7 @@
 #include <asm/barebox-arm.h>
 #include <mach/imx23-regs.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, NULL);
diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
index ac715065f1..231329025b 100644
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -20,7 +20,7 @@
 # define CLPS711X_CPU_PLL_MULT	40
 #endif
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
index 3c7248ef65..50dbcdc150 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -4,7 +4,7 @@
 #include <asm/barebox-arm.h>
 #include <mach/imx28-regs.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2d)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
diff --git a/arch/arm/boards/dss11/lowlevel.c b/arch/arm/boards/dss11/lowlevel.c
index b16ef31bf0..25352672d7 100644
--- a/arch/arm/boards/dss11/lowlevel.c
+++ b/arch/arm/boards/dss11/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 7ae8a18e06..555dd44445 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -30,7 +30,7 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	uint32_t r;
 	register uint32_t loops = 0x20000;
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index aca77a7fbf..be78b48bd0 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -30,7 +30,7 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
index ad89076329..e09f58e29c 100644
--- a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
@@ -3,7 +3,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(0x20000000 - 16);
diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
index b260f3a7fa..13c7435cd6 100644
--- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -4,7 +4,7 @@
 #include <asm/barebox-arm.h>
 #include <mach/imx23-regs.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, NULL);
diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
index 88c461da73..c929d274f2 100644
--- a/arch/arm/boards/freescale-mx53-smd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
@@ -4,7 +4,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
diff --git a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
index 665c31b324..ccbdd13795 100644
--- a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
@@ -4,7 +4,7 @@
 #include <asm/barebox-arm-head.h>
 #include <mach/s3c-iomap.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, NULL);
diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 290cf57225..17a7cf1591 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -79,7 +79,7 @@ static __bare_init bool load_stage2(void *dest, size_t size)
 	return s5p_irom_load_mmc(dest, 1, (size+ 511) / 512);
 }
 
-void __bare_init barebox_arm_reset_vector(void)
+void __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
index 665c31b324..ccbdd13795 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
@@ -4,7 +4,7 @@
 #include <asm/barebox-arm-head.h>
 #include <mach/s3c-iomap.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, NULL);
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 66d76ae795..e84ae2c415 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -158,9 +158,8 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 #define UNALIGNED_ACCESS_ENABLE
 #define LOW_INT_LATENCY_ENABLE
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
-	u32 r0, r1;
 	void *iomuxc_base = (void *)MX35_IOMUXC_BASE_ADDR;
 	int i;
 
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 98512a976c..6c22784599 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -32,7 +32,7 @@
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	uint32_t r;
 	int i;
diff --git a/arch/arm/boards/haba-knx/lowlevel.c b/arch/arm/boards/haba-knx/lowlevel.c
index b16ef31bf0..25352672d7 100644
--- a/arch/arm/boards/haba-knx/lowlevel.c
+++ b/arch/arm/boards/haba-knx/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/highbank/lowlevel.c b/arch/arm/boards/highbank/lowlevel.c
index 83f4c7ad15..6363ec96df 100644
--- a/arch/arm/boards/highbank/lowlevel.c
+++ b/arch/arm/boards/highbank/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/system_info.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(0x00000000, SZ_512M, NULL);
diff --git a/arch/arm/boards/karo-tx51/lowlevel.c b/arch/arm/boards/karo-tx51/lowlevel.c
index ad89076329..e09f58e29c 100644
--- a/arch/arm/boards/karo-tx51/lowlevel.c
+++ b/arch/arm/boards/karo-tx51/lowlevel.c
@@ -3,7 +3,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(0x20000000 - 16);
diff --git a/arch/arm/boards/kindle3/lowlevel.c b/arch/arm/boards/kindle3/lowlevel.c
index 58e6318f65..689767f8d6 100644
--- a/arch/arm/boards/kindle3/lowlevel.c
+++ b/arch/arm/boards/kindle3/lowlevel.c
@@ -31,7 +31,7 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
diff --git a/arch/arm/boards/lubbock/lowlevel.c b/arch/arm/boards/lubbock/lowlevel.c
index 1c52b3e36b..abf9e7a98a 100644
--- a/arch/arm/boards/lubbock/lowlevel.c
+++ b/arch/arm/boards/lubbock/lowlevel.c
@@ -169,7 +169,7 @@ static inline void pxa2xx_dram_init(void)
 	}
 }
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	unsigned long pssr = PSPR;
 	unsigned long pc = get_pc();
diff --git a/arch/arm/boards/mainstone/lowlevel.c b/arch/arm/boards/mainstone/lowlevel.c
index 89839415d4..31f9d76513 100644
--- a/arch/arm/boards/mainstone/lowlevel.c
+++ b/arch/arm/boards/mainstone/lowlevel.c
@@ -241,7 +241,7 @@ static inline void pxa2xx_dram_init(void)
 	}
 }
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	unsigned long pssr = PSPR;
 	unsigned long pc = get_pc();
diff --git a/arch/arm/boards/mioa701/lowlevel.c b/arch/arm/boards/mioa701/lowlevel.c
index bfb8bad1cc..ee0546ea63 100644
--- a/arch/arm/boards/mioa701/lowlevel.c
+++ b/arch/arm/boards/mioa701/lowlevel.c
@@ -3,7 +3,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(0xa0000000, SZ_64M, NULL);
diff --git a/arch/arm/boards/module-mb7707/lowlevel.c b/arch/arm/boards/module-mb7707/lowlevel.c
index 0258be6e4b..055e432c1c 100644
--- a/arch/arm/boards/module-mb7707/lowlevel.c
+++ b/arch/arm/boards/module-mb7707/lowlevel.c
@@ -26,7 +26,7 @@
 #define MB7707_SRAM_BASE 0x40000000
 #define MB7707_SRAM_SIZE SZ_128M
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/mx31moboard/lowlevel.c b/arch/arm/boards/mx31moboard/lowlevel.c
index 02b7ab3c7a..c93f76265c 100644
--- a/arch/arm/boards/mx31moboard/lowlevel.c
+++ b/arch/arm/boards/mx31moboard/lowlevel.c
@@ -102,7 +102,7 @@ static noinline __noreturn void mx31moboard_startup(void)
 
 }
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/nhk8815/lowlevel.c b/arch/arm/boards/nhk8815/lowlevel.c
index 33a785fee0..a9ccf1fff5 100644
--- a/arch/arm/boards/nhk8815/lowlevel.c
+++ b/arch/arm/boards/nhk8815/lowlevel.c
@@ -3,7 +3,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(0x0, SZ_64M, NULL);
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index 318bb9aeb1..fb99ea9278 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -548,9 +548,9 @@ static int sdp343x_board_init(void)
 	return 0;
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
-	omap3_save_bootinfo(data);
+	omap3_save_bootinfo((void *)r0);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index d8a1b9f61d..e06ece2560 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -161,9 +161,9 @@ static int omap3_evm_board_init(void)
 	return 0;
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
-	omap3_save_bootinfo(data);
+	omap3_save_bootinfo((void *)r0);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 005485ba45..006fb627dd 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -79,9 +79,9 @@ static void noinline panda_init_lowlevel(void)
 		omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1210);
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
-	omap4_save_bootinfo(data);
+	omap4_save_bootinfo((void *)r0);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
index d48c02625c..54d8eaaddf 100644
--- a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
@@ -252,9 +252,9 @@ static int pcaal1_board_init(void)
 	return 0;
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
-	omap3_save_bootinfo(data);
+	omap3_save_bootinfo((void *)r0);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
index 170ca6896b..c49c4ca841 100644
--- a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
@@ -89,9 +89,9 @@ static noinline void pcaaxl2_init_lowlevel(void)
 	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
-	omap4_save_bootinfo(data);
+	omap4_save_bootinfo((void *)r0);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
index a3ba1c05dd..19296e5dac 100644
--- a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
@@ -31,7 +31,7 @@
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	uint32_t r;
 	volatile int v;
diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
index 5e2f335efa..6bfa0acce3 100644
--- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
@@ -35,7 +35,7 @@
 #define CCM_PDR0_399	0x00011000
 #define CCM_PDR0_532	0x00001000
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
diff --git a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
index 02297adb95..6511dae9d4 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
@@ -139,9 +139,9 @@ static void noinline pcm049_init_lowlevel(void)
 	sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);  /* enable clocks */
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
+void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
-	omap4_save_bootinfo(data);
+	omap4_save_bootinfo((void *)r0);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index 0ab34b0db6..7127d39943 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -111,7 +111,7 @@ static void __bare_init pm9261_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index 32850b2981..daeb183831 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -132,7 +132,7 @@ static void __bare_init pm9263_board_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index 67454bde26..12cf950685 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/qemu-virt64/lowlevel.c b/arch/arm/boards/qemu-virt64/lowlevel.c
index a60c4b0426..629e2e9f6e 100644
--- a/arch/arm/boards/qemu-virt64/lowlevel.c
+++ b/arch/arm/boards/qemu-virt64/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/system_info.h>
 
-void barebox_arm_reset_vector(void)
+void barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	arm_setup_stack(0x40000000 + SZ_2G - SZ_16K);
diff --git a/arch/arm/boards/qil-a926x/lowlevel.c b/arch/arm/boards/qil-a926x/lowlevel.c
index b16ef31bf0..25352672d7 100644
--- a/arch/arm/boards/qil-a926x/lowlevel.c
+++ b/arch/arm/boards/qil-a926x/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index b791f2a03c..0e25270142 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index b791f2a03c..0e25270142 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index b791f2a03c..0e25270142 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index b791f2a03c..0e25270142 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/telit-evk-pro3/lowlevel.c b/arch/arm/boards/telit-evk-pro3/lowlevel.c
index b16ef31bf0..25352672d7 100644
--- a/arch/arm/boards/telit-evk-pro3/lowlevel.c
+++ b/arch/arm/boards/telit-evk-pro3/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
index b16ef31bf0..25352672d7 100644
--- a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index 8566d27a0a..868df9d6c8 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -118,7 +118,7 @@ static void __bare_init tny_a9263_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
index b16ef31bf0..25352672d7 100644
--- a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index a7dd2b2ada..b362fcf7d4 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -122,7 +122,7 @@ static void __bare_init usb_a9263_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/versatile/lowlevel.c b/arch/arm/boards/versatile/lowlevel.c
index 33a785fee0..a9ccf1fff5 100644
--- a/arch/arm/boards/versatile/lowlevel.c
+++ b/arch/arm/boards/versatile/lowlevel.c
@@ -3,7 +3,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(0x0, SZ_64M, NULL);
diff --git a/arch/arm/boards/virt2real/lowlevel.c b/arch/arm/boards/virt2real/lowlevel.c
index 8ec3d04fef..264ebee893 100644
--- a/arch/arm/boards/virt2real/lowlevel.c
+++ b/arch/arm/boards/virt2real/lowlevel.c
@@ -26,7 +26,7 @@
 #define VIRT2REAL_SRAM_BASE 0x82000000
 #define VIRT2REAL_SRAM_SIZE SZ_16M
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/zylonite/lowlevel.c b/arch/arm/boards/zylonite/lowlevel.c
index 9f1aa6641c..5b95d879fa 100644
--- a/arch/arm/boards/zylonite/lowlevel.c
+++ b/arch/arm/boards/zylonite/lowlevel.c
@@ -3,7 +3,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(0x80000000, SZ_64M, NULL);
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 4d0da6c491..5c6205c815 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -7,6 +7,7 @@
 
 void arm_cpu_lowlevel_init(void);
 void cortex_a7_lowlevel_init(void);
+void barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2);
 
 /*
  * 32 bytes at this offset is reserved in the barebox head for board/SoC
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index f0d009dfd2..471ef0cfd5 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -12,6 +12,7 @@
  * GNU General Public License for more details.
  */
 
+#include <common.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/errata.h>
 #include <linux/types.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
