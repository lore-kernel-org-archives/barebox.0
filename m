Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAhQz-0007X3-V6
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 15:29:35 +0000
Received: from pps.filterd (m0048300.ppops.net [127.0.0.1])
 by m0048300.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id s6PFNafS042860
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 11:29:04 -0400
Received: from alpmlip13.e2k.ad.ge.com ([12.43.191.1])
 by m0048300.ppops.net-00176a03. with ESMTP id 1nbsd385bc-1
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 11:29:04 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 25 Jul 2014 16:28:55 +0100
Message-Id: <1406302136-26747-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1406302136-26747-1-git-send-email-renaud.barbier@ge.com>
References: <1406302136-26747-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 3/4] ppc: Freescale P1010 SoC support
To: barebox@lists.infradead.org

Add support for the Freescale P1010 including errata for this CPU,
SoC frequency calculation and GPIO settings.
The mpc85xx configuration options file is re-ordered to facilitate
board option selection.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Makefile                |   1 +
 arch/ppc/mach-mpc85xx/Kconfig    |  69 +++++++++++++++--------
 arch/ppc/mach-mpc85xx/cpu_init.c | 115 +++++++++++++++++++++++++++++++++++++++
 arch/ppc/mach-mpc85xx/cpuid.c    |   1 +
 arch/ppc/mach-mpc85xx/fsl_gpio.c |  19 +++++++
 arch/ppc/mach-mpc85xx/speed.c    |  38 +++++++++----
 6 files changed, 209 insertions(+), 34 deletions(-)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index b9b355a..fb9b0b8 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -12,6 +12,7 @@ CPPFLAGS += -Wa,-me500x2 -msoft-float -mno-string
 endif
 
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
+board-$(CONFIG_P1010RDB)			:= freescale-p1010rdb
 board-$(CONFIG_P2020RDB)			:= freescale-p2020rdb
 board-$(CONFIG_P1022DS)				:= freescale-p1022ds
 board-$(CONFIG_DA923RC)				:= geip-da923rc
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index ec5f04c..e29be9c 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -5,17 +5,17 @@ config MMU
 
 config BTB
 	bool
-	default y if P2020RDB || P1022DS || DA923RC
+	default y
 
 config TEXT_BASE
 	hex
-	default 0xeff80000 if P2020RDB || P1022DS
+	default 0xeff80000 if P1010RDB || P2020RDB || P1022DS
 	default 0xfff80000 if DA923RC
 
 config RESET_VECTOR_ADDRESS
 	hex
 	default 0xfffffffc if DA923RC
-	default 0xeffffffc if P2020RDB || P1022DS
+	default 0xeffffffc if P1010RDB || P2020RDB || P1022DS
 
 config MPC85xx
 	bool
@@ -31,55 +31,78 @@ config E500
 
 choice
 	prompt "Select your board"
+config P1010RDB
+	bool "P1010RDB"
+    select P1010
+    select DDR_SPD
+    select FSL_DDR3
+	help
+	  Say Y here if you are using the Freescale P1010RDB
 
 config P2020RDB
 	bool "P2020RDB"
+    select P2020
+    select FSL_ELBC
 	help
 	  Say Y here if you are using the Freescale P2020RDB
 
 config P1022DS
 	bool "P1022DS"
+    select P1022
+    select DDR_SPD
+    select FSL_DDR3
+    select FSL_ELBC
 	help
 	  Say Y here if you are using the Freescale P1022DS
 
 config DA923RC
 	bool "DA923RC"
+    select MPC8544
+    select DDR_SPD
+    select FSL_DDR2
 	help
 	Say Y here if you are using the GE Intelligent Platforms DA923RC
 endchoice
 endif
 
-config FSL_ELBC
-	bool
-	default y if P2020RDB || P1022DS
-
-config DDR_SPD
+config P1010
+    select FSL_IFC
+    select FSL_ERRATUM_IFC_A002769
+    select FSL_ERRATUM_P1010_A003549
+    select FSL_ERRATUM_IFC_A003399
 	bool
-	select CRC16
-	default y if DA923RC || P1022DS
 
-if P2020RDB
 config P2020
 	bool
-	default y
-endif
 
-if P1022DS
 config P1022
 	bool
-	default y
 
-config FSL_DDR3
+config MPC8544
 	bool
-	default y
-endif
 
-if DA923RC
-config MPC8544
+config DDR_SPD
 	bool
-	default y
+	select CRC16
 
 config FSL_DDR2
 	bool
-	default y
-endif
+
+config FSL_DDR3
+	bool
+
+config FSL_IFC
+	bool
+
+config FSL_ELBC
+	bool
+
+config FSL_ERRATUM_IFC_A002769
+    bool
+
+config FSL_ERRATUM_IFC_A003399
+    bool
+
+config FSL_ERRATUM_P1010_A003549
+    bool
+
diff --git a/arch/ppc/mach-mpc85xx/cpu_init.c b/arch/ppc/mach-mpc85xx/cpu_init.c
index 0ba2113..003a5f1 100644
--- a/arch/ppc/mach-mpc85xx/cpu_init.c
+++ b/arch/ppc/mach-mpc85xx/cpu_init.c
@@ -27,11 +27,111 @@
 #include <common.h>
 #include <init.h>
 #include <asm/processor.h>
+#include <asm/cache.h>
 #include <asm/fsl_law.h>
+#include <asm/fsl_ifc.h>
 #include <mach/mpc85xx.h>
 #include <mach/mmu.h>
 #include <mach/immap_85xx.h>
 
+/* NOR workaround for P1010 erratum A003399 */
+#if defined(CONFIG_FSL_ERRATUM_P1010_A003549)
+#define SRAM_BASE_ADDR 0x100
+void setup_ifc(void)
+{
+	u32 mas0, mas1, mas2, mas3, mas7;
+	phys_addr_t flash_phys = CFG_FLASH_BASE_PHYS;
+
+	/*
+	 * Adjust the TLB we were running out of to match the phys addr of the
+	 * chip select we are adjusting and will return to.
+	 */
+	flash_phys += (~CFG_IFC_AMASK0) + 1 - 4*1024*1024;
+	mas0 = MAS0_TLBSEL(1) | MAS0_ESEL(15);
+	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_TS | MAS1_IPROT |
+			MAS1_TSIZE(BOOKE_PAGESZ_4M);
+	mas2 = FSL_BOOKE_MAS2(CONFIG_TEXT_BASE, MAS2_I|MAS2_G);
+	mas3 = FSL_BOOKE_MAS3(flash_phys, 0, MAS3_SW|MAS3_SR|MAS3_SX);
+	mas7 = FSL_BOOKE_MAS7(flash_phys);
+	mtspr(MAS0, mas0);
+	mtspr(MAS1, mas1);
+	mtspr(MAS2, mas2);
+	mtspr(MAS3, mas3);
+	mtspr(MAS7, mas7);
+	asm volatile("isync;msync;tlbwe;isync");
+
+#if defined(PPC_E500_DEBUG_TLB)
+	/*
+	 * TLB entry for debuggging in AS1
+	 * Create temporary TLB entry in AS0 to handle debug exception
+	 * As on debug exception MSR is cleared i.e. Address space is
+	 * changed to 0. A TLB entry (in AS0) is required to handle
+	 * debug exception generated * in AS1.
+	 *
+	 * TLB entry is created for IVPR + IVOR15 to map on valid OP
+	 * code address because flash's physical address is going to
+	 * change as CFG_FLASH_BASE_PHYS.
+	 */
+	mas0 = MAS0_TLBSEL(1) | MAS0_ESEL(PPC_E500_DEBUG_TLB);
+	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_IPROT |
+	MAS1_TSIZE(BOOKE_PAGESZ_4M);
+	mas2 = FSL_BOOKE_MAS2(CONFIG_TEXT_BASE, MAS2_I|MAS2_G);
+	mas3 = FSL_BOOKE_MAS3(flash_phys, 0, MAS3_SW|MAS3_SR|MAS3_SX);
+	mas7 = FSL_BOOKE_MAS7(flash_phys);
+
+	mtspr(MAS0, mas0);
+	mtspr(MAS1, mas1);
+	mtspr(MAS2, mas2);
+	mtspr(MAS3, mas3);
+	mtspr(MAS7, mas7);
+
+	asm volatile("isync;msync;tlbwe;isync");
+#endif
+	set_ifc_cspr(0, CFG_IFC_CSPR0);
+	set_ifc_csor(0, CFG_IFC_CSOR0);
+	set_ifc_amask(0, CFG_IFC_AMASK0);
+}
+
+void fsl_erratum_ifc_a003399(void)
+{
+	u32 mas0, mas1, mas2, mas3, mas7;
+	void __iomem *l2cache = IOMEM(MPC85xx_L2_ADDR);
+	void (*setup_ifc_sram)(void) = (void *)SRAM_BASE_ADDR;
+	u32 *dst, *src, ix;
+
+	/* TLB for SRAM */
+	mas0 = MAS0_TLBSEL(1) | MAS0_ESEL(9);
+	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_TS |
+			MAS1_TSIZE(BOOKE_PAGESZ_1M);
+	mas2 = FSL_BOOKE_MAS2(SRAM_BASE_ADDR, MAS2_I);
+	mas3 = FSL_BOOKE_MAS3(SRAM_BASE_ADDR, 0,
+			MAS3_SX | MAS3_SW | MAS3_SR);
+	mas7 = FSL_BOOKE_MAS7(0);
+	e500_write_tlb(mas0, mas1, mas2, mas3, mas7);
+
+	out_be32(l2cache + MPC85xx_L2_L2SRBAR0_OFFSET, SRAM_BASE_ADDR);
+	out_be32(l2cache + MPC85xx_L2_L2ERRDIS_OFFSET,
+		(MPC85xx_L2ERRDIS_MBECC | MPC85xx_L2ERRDIS_SBECC));
+	out_be32(l2cache + MPC85xx_L2_CTL_OFFSET,
+		(MPC85xx_L2CTL_L2E | MPC85xx_L2CTL_L2SRAM_ENTIRE));
+	/*
+	 * Copy the code in setup_ifc to L2SRAM. Do a word copy
+	 * because NOR Flash on P1010 does not support byte
+	 * access (Erratum IFC-A002769)
+	 */
+	dst = (u32 *) SRAM_BASE_ADDR;
+	src = (u32 *) setup_ifc;
+	for (ix = 0; ix < 1024; ix++)
+		*dst++ = *src++;
+	setup_ifc_sram();
+
+	clrbits_be32(l2cache + MPC85xx_L2_CTL_OFFSET,
+		(MPC85xx_L2CTL_L2E | MPC85xx_L2CTL_L2SRAM_ENTIRE));
+	out_be32(l2cache + MPC85xx_L2_L2SRBAR0_OFFSET, 0x0);
+}
+#else
+void fsl_erratum_ifc_a003399(void) {}
+#endif
 
 int fsl_l2_cache_init(void)
 {
@@ -75,6 +175,18 @@ int fsl_l2_cache_init(void)
 	return 0;
 }
 
+#if defined(CONFIG_FSL_ERRATUM_P1010_A003549)
+void fsl_erratum_p1010_a003549(void)
+{
+	void __iomem *guts = IOMEM(MPC85xx_GUTS_ADDR);
+
+	setbits_be32(guts + MPC85xx_GUTS_PMUXCR_OFFSET,
+			MPC85xx_PMUXCR_LCLK_IFC_CS3);
+}
+#else
+void fsl_erratum_p1010_a003549(void) {}
+#endif
+
 void cpu_init_early_f(void)
 {
 	u32 mas0, mas1, mas2, mas3, mas7;
@@ -88,7 +200,10 @@ void cpu_init_early_f(void)
 
 	e500_write_tlb(mas0, mas1, mas2, mas3, mas7);
 
+	fsl_erratum_p1010_a003549();
 	fsl_init_laws();
+	fsl_erratum_ifc_a003399();
+
 	e500_invalidate_tlb(1);
 	e500_init_tlbs();
 }
diff --git a/arch/ppc/mach-mpc85xx/cpuid.c b/arch/ppc/mach-mpc85xx/cpuid.c
index 21892e3..1f54a2b 100644
--- a/arch/ppc/mach-mpc85xx/cpuid.c
+++ b/arch/ppc/mach-mpc85xx/cpuid.c
@@ -29,6 +29,7 @@
 struct cpu_type cpu_type_list[] = {
 	CPU_TYPE_ENTRY(8544, 8544, 1),
 	CPU_TYPE_ENTRY(8544, 8544_E, 1),
+	CPU_TYPE_ENTRY(P1010, P1010, 1),
 	CPU_TYPE_ENTRY(P1022, P1022, 2),
 	CPU_TYPE_ENTRY(P2020, P2020, 2),
 	CPU_TYPE_ENTRY(P2020, P2020_E, 2),
diff --git a/arch/ppc/mach-mpc85xx/fsl_gpio.c b/arch/ppc/mach-mpc85xx/fsl_gpio.c
index ca6305a..468c780 100644
--- a/arch/ppc/mach-mpc85xx/fsl_gpio.c
+++ b/arch/ppc/mach-mpc85xx/fsl_gpio.c
@@ -44,4 +44,23 @@ void gpio_set_value(unsigned gpio, int val)
 		gpoutdr &= ~MPC85xx_GPIOBIT(gpio);
 	out_be32(gpout, gpoutdr);
 }
+#else
+int gpio_direction_output(unsigned gpio, int val)
+{
+	void __iomem *gpior = IOMEM(MPC85xx_GPIO_ADDR);
+
+	if (gpio >= 16)
+		return -EINVAL;
+
+	if (val)
+		setbits_be32(gpior + MPC85xx_GPIO_GPDAT_OFFSET,
+				1 << (32 - gpio));
+	else
+		clrbits_be32(gpior + MPC85xx_GPIO_GPDAT_OFFSET,
+				1 << (32 - gpio));
+
+	setbits_be32(gpior + MPC85xx_GPIO_GPDIR_OFFSET, 1 << (32 - gpio));
+
+	return 0;
+}
 #endif
diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/ppc/mach-mpc85xx/speed.c
index eb9d725..6109494 100644
--- a/arch/ppc/mach-mpc85xx/speed.c
+++ b/arch/ppc/mach-mpc85xx/speed.c
@@ -33,8 +33,7 @@
 void fsl_get_sys_info(struct sys_info *sysInfo)
 {
 	void __iomem *gur = (void __iomem *)(MPC85xx_GUTS_ADDR);
-	uint plat_ratio, e500_ratio, half_freqSystemBus;
-	uint lcrr_div;
+	uint plat_ratio, e500_ratio, half_freqSystemBus, lcrr_div, ccr;
 	int i;
 
 	plat_ratio = in_be32(gur + MPC85xx_GUTS_PORPLLSR_OFFSET) & 0x0000003e;
@@ -65,22 +64,39 @@ void fsl_get_sys_info(struct sys_info *sysInfo)
 	}
 #endif
 
-	lcrr_div = in_be32(LBC_BASE_ADDR + FSL_LBC_LCCR) & LCRR_CLKDIV;
+	if (IS_ENABLED(CONFIG_FSL_IFC)) {
+		void __iomem *ifc = IFC_BASE_ADDR;
 
-	if (lcrr_div == 2 || lcrr_div == 4 || lcrr_div == 8) {
-		/*
-		 * The entire PQ38 family use the same bit-representation
-		 * for twice the clock divider values.
-		 */
+		ccr = in_be32(ifc + FSL_IFC_CCR_OFFSET);
+		ccr = ((ccr & IFC_CCR_CLK_DIV_MASK) >> IFC_CCR_CLK_DIV_SHIFT);
+		sysInfo->freqLocalBus = sysInfo->freqSystemBus / (ccr + 1);
+	} else {
+		lcrr_div = in_be32(LBC_BASE_ADDR + FSL_LBC_LCCR) & LCRR_CLKDIV;
+
+		if (lcrr_div == 2 || lcrr_div == 4 || lcrr_div == 8) {
+			/*
+			 * The entire PQ38 family use the same bit
+			 * representation for twice the clock divider values.
+			 */
 		lcrr_div *= 2;
 
 		sysInfo->freqLocalBus = sysInfo->freqSystemBus / lcrr_div;
-	} else {
-		/* In case anyone cares what the unknown value is */
-		sysInfo->freqLocalBus = lcrr_div;
+		} else {
+			/* In case anyone cares what the unknown value is */
+			sysInfo->freqLocalBus = lcrr_div;
+		}
 	}
 }
 
+unsigned long fsl_get_local_freq(void)
+{
+	struct sys_info sys_info;
+
+	fsl_get_sys_info(&sys_info);
+
+	return sys_info.freqLocalBus;
+}
+
 unsigned long fsl_get_bus_freq(ulong dummy)
 {
 	struct sys_info sys_info;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
