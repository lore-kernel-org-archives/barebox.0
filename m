Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3foZ-0003xp-1d
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:20 +0100
Message-Id: <20200217124623.14520-40-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 39/42] ARM: i.MX8M: Add i.MX8MM support
To: Barebox List <barebox@lists.infradead.org>

This adds support for the i.MX8MM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                     |   4 +
 arch/arm/mach-imx/Makefile                    |   2 +-
 arch/arm/mach-imx/boot.c                      |  19 ++-
 arch/arm/mach-imx/cpu_init.c                  |  14 +-
 arch/arm/mach-imx/esdctl.c                    |   5 +
 arch/arm/mach-imx/imx-bbu-internal.c          |   4 +-
 arch/arm/mach-imx/imx.c                       |   4 +
 arch/arm/mach-imx/imx8m.c                     | 154 ++++++++++++++++--
 arch/arm/mach-imx/include/mach/esdctl.h       |   1 +
 arch/arm/mach-imx/include/mach/generic.h      |  18 ++
 .../mach-imx/include/mach/imx8m-ccm-regs.h    |   1 +
 arch/arm/mach-imx/include/mach/imx8mq.h       |  13 +-
 .../arm/mach-imx/include/mach/imx_cpu_types.h |   1 +
 13 files changed, 215 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 7b79d80748..9dad4ceae2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -186,6 +186,10 @@ config ARCH_IMX8M
 	select IMX8M_DRAM
 	select PBL_VERIFY_PIGGY if HABV4
 
+config ARCH_IMX8MM
+	select ARCH_IMX8M
+	bool
+
 config ARCH_IMX8MQ
 	select ARCH_IMX8M
 	bool
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 30ced0e202..e45f758e9c 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -15,7 +15,7 @@ CFLAGS_imx6.o := -march=armv7-a
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
-obj-$(CONFIG_ARCH_IMX8M) += imx8m.o
+obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
 lwl-$(CONFIG_ARCH_IMX8M) += atf.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 7d1af106d1..7bce1c710c 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -27,6 +27,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
+#include <mach/imx8mm-regs.h>
 #include <mach/imx8mq-regs.h>
 #include <mach/vf610-regs.h>
 #include <mach/imx8mq.h>
@@ -593,7 +594,7 @@ void vf610_boot_save_loc(void)
 void imx8mq_get_boot_source(enum bootsource *src, int *instance)
 {
 	unsigned long addr;
-	void __iomem *src_base = IOMEM(MX8MQ_SRC_BASE_ADDR);
+	void __iomem *src_base = IOMEM(MX8M_SRC_BASE_ADDR);
 	uint32_t sbmr2 = readl(src_base + 0x70);
 
 	addr = (imx8mq_cpu_revision() == IMX_CHIP_REV_1_0) ?
@@ -607,3 +608,19 @@ void imx8mq_boot_save_loc(void)
 {
 	imx_boot_save_loc(imx8mq_get_boot_source);
 }
+
+void imx8mm_get_boot_source(enum bootsource *src, int *instance)
+{
+	unsigned long addr;
+	void __iomem *src_base = IOMEM(MX8MM_SRC_BASE_ADDR);
+	uint32_t sbmr2 = readl(src_base + 0x70);
+
+	addr = IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0;
+
+	__imx7_get_boot_source(src, instance, addr, sbmr2);
+}
+
+void imx8mm_boot_save_loc(void)
+{
+	imx_boot_save_loc(imx8mm_get_boot_source);
+}
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index aa6e050e94..c6a0ac7c50 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -69,11 +69,21 @@ void vf610_cpu_lowlevel_init(void)
 	arm_cpu_lowlevel_init();
 }
 #else
-void imx8mq_cpu_lowlevel_init(void)
+static void imx8m_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
 
 	if (current_el() == 3)
-		imx_cpu_timer_init(IOMEM(MX8MQ_SYSCNT_CTRL_BASE_ADDR));
+		imx_cpu_timer_init(IOMEM(MX8M_SYSCNT_CTRL_BASE_ADDR));
+}
+
+void imx8mm_cpu_lowlevel_init(void)
+{
+	imx8m_cpu_lowlevel_init();
+}
+
+void imx8mq_cpu_lowlevel_init(void)
+{
+	imx8m_cpu_lowlevel_init();
 }
 #endif
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 411836debd..25e7c83ad9 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -887,6 +887,11 @@ static void __noreturn imx8m_barebox_entry(void *boarddata)
 	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR, size, boarddata);
 }
 
+void __noreturn imx8mm_barebox_entry(void *boarddata)
+{
+	imx8m_barebox_entry(boarddata);
+}
+
 void __noreturn imx8mq_barebox_entry(void *boarddata)
 {
 	imx8m_barebox_entry(boarddata);
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 946a3e9a77..f6f66364c0 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -375,7 +375,7 @@ out:
 
 static enum filetype imx_bbu_expected_filetype(void)
 {
-	if (cpu_is_mx8mq() ||
+	if (cpu_is_mx8m() ||
 	    cpu_is_mx7()   ||
 	    cpu_is_mx6()   ||
 	    cpu_is_vf610() ||
@@ -393,7 +393,7 @@ static unsigned long imx_bbu_flash_header_offset_mmc(void)
 	 * i.MX8MQ moved the header by 32K to accomodate for GPT
 	 * partition tables
 	 */
-	if (cpu_is_mx8mq())
+	if (cpu_is_mx8m())
 		offset += SZ_32K;
 
 	return offset;
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 0942d50695..ca2e77befe 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -80,6 +80,8 @@ static int imx_soc_from_dt(void)
 		return IMX_CPU_IMX7;
 	if (of_machine_is_compatible("fsl,imx8mq"))
 		return IMX_CPU_IMX8MQ;
+	if (of_machine_is_compatible("fsl,imx8mm"))
+		return IMX_CPU_IMX8MM;
 	if (of_machine_is_compatible("fsl,vf610"))
 		return IMX_CPU_VF610;
 
@@ -120,6 +122,8 @@ static int imx_init(void)
 		ret = imx6_init();
 	else if (cpu_is_mx7())
 		ret = imx7_init();
+	else if (cpu_is_mx8mm())
+		ret = imx8mm_init();
 	else if (cpu_is_mx8mq())
 		ret = imx8mq_init();
 	else if (cpu_is_vf610())
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index d044531520..d2ed7d52a9 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -22,6 +22,9 @@
 #include <mach/imx8m-ccm-regs.h>
 #include <mach/reset-reason.h>
 #include <mach/ocotp.h>
+#include <mach/imx8mq-regs.h>
+#include <mach/imx8m-ccm-regs.h>
+#include <soc/imx8m/clk-early.h>
 
 #include <linux/iopoll.h>
 #include <linux/arm-smccc.h>
@@ -52,18 +55,61 @@ void imx8m_ccgr_clock_disable(int index)
 	       ccm + IMX8M_CCM_CCGRn_CLR(index));
 }
 
-u64 imx8mq_uid(void)
+u64 imx8m_uid(void)
 {
-	return imx_ocotp_read_uid(IOMEM(MX8MQ_OCOTP_BASE_ADDR));
+	return imx_ocotp_read_uid(IOMEM(MX8M_OCOTP_BASE_ADDR));
+}
+
+static int imx8m_init(const char *cputypestr)
+{
+	void __iomem *src = IOMEM(MX8M_SRC_BASE_ADDR);
+	struct arm_smccc_res res;
+
+	/*
+	 * Reset reasons seem to be identical to that of i.MX7
+	 */
+	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
+	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
+
+	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
+	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
+		arm_smccc_smc(FSL_SIP_BUILDINFO,
+			      FSL_SIP_BUILDINFO_GET_COMMITHASH,
+			      0, 0, 0, 0, 0, 0, &res);
+		pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
+	}
+
+	return 0;
+}
+
+int imx8mm_init(void)
+{
+	void __iomem *anatop = IOMEM(MX8M_ANATOP_BASE_ADDR);
+	uint32_t type = FIELD_GET(DIGPROG_MAJOR,
+				  readl(anatop + MX8MM_ANATOP_DIGPROG));
+	const char *cputypestr;
+
+	imx8mm_boot_save_loc();
+
+	switch (type) {
+	case IMX8M_CPUTYPE_IMX8MM:
+		cputypestr = "i.MX8MM";
+		break;
+	default:
+		cputypestr = "unknown i.MX8M";
+		break;
+	};
+
+	imx_set_silicon_revision(cputypestr, imx8mm_cpu_revision());
+
+	return imx8m_init(cputypestr);
 }
 
 int imx8mq_init(void)
 {
-	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
-	void __iomem *src = IOMEM(MX8MQ_SRC_BASE_ADDR);
+	void __iomem *anatop = IOMEM(MX8M_ANATOP_BASE_ADDR);
 	uint32_t type = FIELD_GET(DIGPROG_MAJOR,
 				  readl(anatop + MX8MQ_ANATOP_DIGPROG));
-	struct arm_smccc_res res;
 	const char *cputypestr;
 
 	imx8mq_boot_save_loc();
@@ -78,21 +124,93 @@ int imx8mq_init(void)
 	};
 
 	imx_set_silicon_revision(cputypestr, imx8mq_cpu_revision());
-	/*
-	 * Reset reasons seem to be identical to that of i.MX7
-	 */
-	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
-	pr_info("%s unique ID: %llx\n", cputypestr, imx8mq_uid());
 
-	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
-	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
-		arm_smccc_smc(FSL_SIP_BUILDINFO,
-			      FSL_SIP_BUILDINFO_GET_COMMITHASH,
-			      0, 0, 0, 0, 0, 0, &res);
-		pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
-	}
+	return imx8m_init(cputypestr);
+}
 
-	return 0;
+#define INTPLL_DIV20_CLKE_MASK                  BIT(27)
+#define INTPLL_DIV10_CLKE_MASK                  BIT(25)
+#define INTPLL_DIV8_CLKE_MASK                   BIT(23)
+#define INTPLL_DIV6_CLKE_MASK                   BIT(21)
+#define INTPLL_DIV5_CLKE_MASK                   BIT(19)
+#define INTPLL_DIV4_CLKE_MASK                   BIT(17)
+#define INTPLL_DIV3_CLKE_MASK                   BIT(15)
+#define INTPLL_DIV2_CLKE_MASK                   BIT(13)
+#define INTPLL_CLKE_MASK                        BIT(11)
+
+#define CCM_TARGET_ROOT0_DIV  GENMASK(1, 0)
+
+#define IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL	0x84
+#define IMX8MM_CCM_ANALOG_SYS_PLL1_GEN_CTRL	0x94
+#define IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL	0x104
+#define IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL	0x114
+
+void imx8mm_early_clock_init(void)
+{
+	void __iomem *ana = IOMEM(MX8M_ANATOP_BASE_ADDR);
+	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
+	u32 val;
+
+	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_DDR1);
+
+	imx8m_clock_set_target_val(IMX8M_DRAM_ALT_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
+
+	/* change the clock source of dram_apb_clk_root: source 4 800MHz /4 = 200MHz */
+	imx8m_clock_set_target_val(IMX8M_DRAM_APB_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(4) |
+				   IMX8M_CCM_TARGET_ROOTn_POST_DIV(4 - 1));
+
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_DDR1);
+
+	val = readl(ana + IMX8MM_CCM_ANALOG_SYS_PLL1_GEN_CTRL);
+	val |= INTPLL_CLKE_MASK | INTPLL_DIV2_CLKE_MASK |
+		INTPLL_DIV3_CLKE_MASK | INTPLL_DIV4_CLKE_MASK |
+		INTPLL_DIV5_CLKE_MASK | INTPLL_DIV6_CLKE_MASK |
+		INTPLL_DIV8_CLKE_MASK | INTPLL_DIV10_CLKE_MASK |
+		INTPLL_DIV20_CLKE_MASK;
+	writel(val, ana + IMX8MM_CCM_ANALOG_SYS_PLL1_GEN_CTRL);
+
+	val = readl(ana + IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL);
+	val |= INTPLL_CLKE_MASK | INTPLL_DIV2_CLKE_MASK |
+		INTPLL_DIV3_CLKE_MASK | INTPLL_DIV4_CLKE_MASK |
+		INTPLL_DIV5_CLKE_MASK | INTPLL_DIV6_CLKE_MASK |
+		INTPLL_DIV8_CLKE_MASK | INTPLL_DIV10_CLKE_MASK |
+		INTPLL_DIV20_CLKE_MASK;
+	writel(val, ana + IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL);
+
+	/* config GIC to sys_pll2_100m */
+	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_GIC);
+	imx8m_clock_set_target_val(IMX8M_GIC_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(3));
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
+
+	/* Configure SYS_PLL3 to 750MHz */
+	clk_pll1416x_early_set_rate(ana + IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL,
+				    750000000UL, 25000000UL);
+
+	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
+			IMX8M_CCM_TARGET_ROOTn_MUX(7),
+			IMX8M_CCM_TARGET_ROOTn_MUX(2));
+
+	/* Configure ARM PLL to 1.2GHz */
+	clk_pll1416x_early_set_rate(ana + IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL,
+				    1200000000UL, 25000000UL);
+
+	clrsetbits_le32(ana + IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL, 0,
+			INTPLL_CLKE_MASK);
+
+	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
+			IMX8M_CCM_TARGET_ROOTn_MUX(7),
+			IMX8M_CCM_TARGET_ROOTn_MUX(1));
+
+	/* Configure DIV to 1.2GHz */
+	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
+			CCM_TARGET_ROOT0_DIV,
+			FIELD_PREP(CCM_TARGET_ROOT0_DIV, 0));
 }
 
 #define KEEP_ALIVE			0x18
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 18c4a28360..41eb9f6729 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -139,6 +139,7 @@ void __noreturn imx53_barebox_entry(void *boarddata);
 void __noreturn imx6q_barebox_entry(void *boarddata);
 void __noreturn imx6ul_barebox_entry(void *boarddata);
 void __noreturn vf610_barebox_entry(void *boarddata);
+void __noreturn imx8mm_barebox_entry(void *boarddata);
 void __noreturn imx8mq_barebox_entry(void *boarddata);
 void __noreturn imx7d_barebox_entry(void *boarddata);
 #define imx6sx_barebox_entry(boarddata) imx6ul_barebox_entry(boarddata)
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 3666fd4f8b..7742a002ce 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -16,6 +16,7 @@ void imx53_boot_save_loc(void);
 void imx6_boot_save_loc(void);
 void imx7_boot_save_loc(void);
 void vf610_boot_save_loc(void);
+void imx8mm_boot_save_loc(void);
 void imx8mq_boot_save_loc(void);
 
 void imx25_get_boot_source(enum bootsource *src, int *instance);
@@ -26,6 +27,7 @@ void imx53_get_boot_source(enum bootsource *src, int *instance);
 void imx6_get_boot_source(enum bootsource *src, int *instance);
 void imx7_get_boot_source(enum bootsource *src, int *instance);
 void vf610_get_boot_source(enum bootsource *src, int *instance);
+void imx8mm_get_boot_source(enum bootsource *src, int *instance);
 void imx8mq_get_boot_source(enum bootsource *src, int *instance);
 
 int imx1_init(void);
@@ -40,6 +42,7 @@ int imx53_init(void);
 int imx6_init(void);
 int imx7_init(void);
 int vf610_init(void);
+int imx8mm_init(void);
 int imx8mq_init(void);
 
 int imx1_devices_init(void);
@@ -59,6 +62,7 @@ void imx6ul_cpu_lowlevel_init(void);
 void imx7_cpu_lowlevel_init(void);
 void vf610_cpu_lowlevel_init(void);
 void imx8mq_cpu_lowlevel_init(void);
+void imx8mm_cpu_lowlevel_init(void);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
@@ -199,6 +203,18 @@ extern unsigned int __imx_cpu_type;
 # define cpu_is_mx7()		(0)
 #endif
 
+#ifdef CONFIG_ARCH_IMX8MM
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX8MM
+# endif
+# define cpu_is_mx8mm()	(imx_cpu_type == IMX_CPU_IMX8MM)
+#else
+# define cpu_is_mx8mm()	(0)
+#endif
+
 #ifdef CONFIG_ARCH_IMX8MQ
 # ifdef imx_cpu_type
 #  undef imx_cpu_type
@@ -235,4 +251,6 @@ extern unsigned int __imx_cpu_type;
 #define cpu_is_mx23()	(0)
 #define cpu_is_mx28()	(0)
 
+#define cpu_is_mx8m()	(cpu_is_mx8mq() || cpu_is_mx8mm())
+
 #endif /* __MACH_GENERIC_H */
diff --git a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
index 70a7e4af9d..743ed6cda0 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
@@ -49,6 +49,7 @@
 #define IMX8M_CCM_CCGR_SETTINGn_NEEDED(n)		IMX8M_CCM_CCGR_SETTINGn(n, 0b11)
 
 void imx8m_early_setup_uart_clock(void);
+void imx8mm_early_clock_init(void);
 void imx8m_clock_set_target_val(int clock_id, u32 val);
 void imx8m_ccgr_clock_enable(int index);
 void imx8m_ccgr_clock_disable(int index);
diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
index c085894ef7..2ef2987188 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq.h
@@ -4,6 +4,7 @@
 #include <io.h>
 #include <mach/generic.h>
 #include <mach/imx8mq-regs.h>
+#include <mach/imx8mm-regs.h>
 #include <mach/revision.h>
 #include <linux/bitfield.h>
 
@@ -13,11 +14,21 @@
 #define IMX8MQ_OCOTP_VERSION_B1_MAGIC	0xff0055aa
 
 #define MX8MQ_ANATOP_DIGPROG	0x6c
+#define MX8MM_ANATOP_DIGPROG	0x800
 
 #define DIGPROG_MAJOR	GENMASK(23, 8)
 #define DIGPROG_MINOR	GENMASK(7, 0)
 
 #define IMX8M_CPUTYPE_IMX8MQ	0x8240
+#define IMX8M_CPUTYPE_IMX8MM	0x8241
+
+static inline int imx8mm_cpu_revision(void)
+{
+	void __iomem *anatop = IOMEM(MX8MM_ANATOP_BASE_ADDR);
+	uint32_t revision = FIELD_GET(DIGPROG_MINOR,
+				      readl(anatop + MX8MM_ANATOP_DIGPROG));
+	return revision;
+}
 
 static inline int imx8mq_cpu_revision(void)
 {
@@ -49,6 +60,6 @@ static inline int imx8mq_cpu_revision(void)
 	return revision;
 }
 
-u64 imx8mq_uid(void);
+u64 imx8m_uid(void);
 
 #endif /* __MACH_IMX8_H */
\ No newline at end of file
diff --git a/arch/arm/mach-imx/include/mach/imx_cpu_types.h b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
index 754fb9822b..b3fccfadb5 100644
--- a/arch/arm/mach-imx/include/mach/imx_cpu_types.h
+++ b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
@@ -13,6 +13,7 @@
 #define IMX_CPU_IMX6	6
 #define IMX_CPU_IMX7	7
 #define IMX_CPU_IMX8MQ	8
+#define IMX_CPU_IMX8MM  81
 #define IMX_CPU_VF610	610
 
 #endif /* __MACH_IMX_CPU_TYPES_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
