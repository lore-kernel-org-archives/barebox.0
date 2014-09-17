Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUCNP-0007yN-RF
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:22:20 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 17 Sep 2014 18:21:33 +0800
Message-ID: <1410949295-30296-8-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH 7/9] ARM: at91: add sama5d4 soc support #1
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/mach-at91/clock.c                 | 58 +++++++++++++++++++++++-------
 arch/arm/mach-at91/clock.h                 |  2 +-
 arch/arm/mach-at91/include/mach/at91_pmc.h |  1 +
 arch/arm/mach-at91/include/mach/cpu.h      | 28 +++++++++++++++
 arch/arm/mach-at91/include/mach/hardware.h |  4 +++
 arch/arm/mach-at91/sam9_smc.c              |  6 ++--
 arch/arm/mach-at91/setup.c                 | 41 ++++++++++++++++++---
 arch/arm/mach-at91/soc.h                   |  5 +++
 8 files changed, 124 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 50450f5..7a4282e 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -37,6 +37,7 @@
 #define clk_is_programmable(x)	((x)->type & CLK_TYPE_PROGRAMMABLE)
 #define clk_is_peripheral(x)	((x)->type & CLK_TYPE_PERIPHERAL)
 #define clk_is_sys(x)		((x)->type & CLK_TYPE_SYSTEM)
+#define clk_is_periph_h64mx(x)	((x)->type & CLK_TYPE_PERIPH_H64MX)
 
 
 /*
@@ -45,7 +46,10 @@
 #define cpu_has_utmi()		(  cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_sama5d3())
+				|| cpu_is_sama5d3() \
+				|| cpu_is_sama5d4())
+
+#define cpu_has_1200M_plla()	(cpu_is_sama5d4())
 
 #define cpu_has_1056M_plla()	(cpu_is_sama5d3())
 
@@ -65,11 +69,13 @@
 #define cpu_has_pllb()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_sama5d3()))
+				|| cpu_is_sama5d3() \
+				|| cpu_is_sama5d4()))
 
 #define cpu_has_upll()		(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_sama5d3())
+				|| cpu_is_sama5d3() \
+				|| cpu_is_sama5d4())
 
 /* USB host HS & FS */
 #define cpu_has_uhp()		(!cpu_is_at91sam9rl())
@@ -78,23 +84,30 @@
 #define cpu_has_udpfs()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_sama5d3()))
+				|| cpu_is_sama5d3() \
+				|| cpu_is_sama5d4()))
 
 #define cpu_has_plladiv2()	(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
 				|| cpu_is_at91sam9n12() \
-				|| cpu_is_sama5d3())
+				|| cpu_is_sama5d3() \
+				|| cpu_is_sama5d4())
 
 #define cpu_has_mdiv3()		(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
 				|| cpu_is_at91sam9n12() \
-				|| cpu_is_sama5d3())
+				|| cpu_is_sama5d3() \
+				|| cpu_is_sama5d4())
 
 #define cpu_has_alt_prescaler()	(cpu_is_at91sam9x5() \
 				|| cpu_is_at91sam9n12() \
-				|| cpu_is_sama5d3())
+				|| cpu_is_sama5d3() \
+				|| cpu_is_sama5d4())
+
+#define cpu_has_pcr()		(cpu_is_sama5d3() \
+				|| cpu_is_sama5d4())
 
-#define cpu_has_pcr()		(cpu_is_sama5d3())
+#define cpu_has_dual_matrix()	(cpu_is_sama5d4())
 
 static LIST_HEAD(clocks);
 
@@ -214,6 +227,12 @@ struct clk mck = {
 	.pmc_mask	= AT91_PMC_MCKRDY,	/* in PMC_SR */
 };
 
+struct clk h32mx_clk = {
+	.name		= "h32mx",
+	.parent		= &mck,
+	.pmc_mask	= AT91_PMC_H32MXDIV,	/* in PMC_MCKR */
+};
+
 static void pmc_periph_mode(struct clk *clk, int is_on)
 {
 	u32 regval = 0;
@@ -455,8 +474,12 @@ static void __init at91_clk_add(struct clk *clk)
 int clk_register(struct clk *clk)
 {
 	if (clk_is_peripheral(clk)) {
-		if (!clk->parent)
-			clk->parent = &mck;
+		if (!clk->parent) {
+			if (!cpu_has_dual_matrix() || clk_is_periph_h64mx(clk))
+				clk->parent = &mck;
+			else
+				clk->parent = &h32mx_clk;
+		}
 		if (cpu_has_pcr())
 			clk->rate_hz = DIV_ROUND_UP(clk->parent->rate_hz, 1 << clk->div);
 		clk->mode = pmc_periph_mode;
@@ -484,7 +507,7 @@ static u32 at91_pll_rate(struct clk *pll, u32 freq, u32 reg)
 	unsigned mul, div;
 
 	div = reg & 0xff;
-	if (cpu_is_sama5d3())
+	if (cpu_is_sama5d3() || cpu_is_sama5d4())
 		mul = (reg >> 18) & 0x7ff;
 	else
 		mul = (reg >> 16) & 0x7ff;
@@ -649,7 +672,10 @@ int at91_clock_init(void)
 
 	/* report if PLLA is more than mildly overclocked */
 	plla.rate_hz = at91_pll_rate(&plla, main_clock, at91_pmc_read(AT91_CKGR_PLLAR));
-	if (cpu_has_1056M_plla()) {
+	if (cpu_has_1200M_plla()) {
+		if (plla.rate_hz > 1200000000)
+			pll_overclock = 1;
+	} else if (cpu_has_1056M_plla()) {
 		if (plla.rate_hz > 1056000000)
 			pll_overclock = 1;
 	} else if (cpu_has_300M_plla()) {
@@ -736,6 +762,12 @@ int at91_clock_init(void)
 		mck.id = 4;
 	}
 
+	if (cpu_has_dual_matrix()) {
+		at91_clk_add(&h32mx_clk);
+		h32mx_clk.rate_hz = h32mx_clk.parent->rate_hz;
+		h32mx_clk.rate_hz /= (1 << ((mckr & AT91_PMC_H32MXDIV) >> 24));	/* H32MX divisor by 2 */
+	}
+
 	cpu_freq = freq;
 
 	/* Register the PMC's standard clocks */
@@ -756,6 +788,8 @@ int at91_clock_init(void)
 
 	/* MCK and CPU clock are "always on" */
 	clk_enable(&mck);
+	if (cpu_has_dual_matrix())
+		clk_enable(&h32mx_clk);
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/clock.h b/arch/arm/mach-at91/clock.h
index 8af8d96..97a08fd 100644
--- a/arch/arm/mach-at91/clock.h
+++ b/arch/arm/mach-at91/clock.h
@@ -13,7 +13,7 @@
 #define CLK_TYPE_PROGRAMMABLE	0x4
 #define CLK_TYPE_PERIPHERAL	0x8
 #define CLK_TYPE_SYSTEM		0x10
-
+#define CLK_TYPE_PERIPH_H64MX   0x80
 
 struct clk {
 	struct list_head node;
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
index 6107871..d74c140 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
@@ -118,6 +118,7 @@
 #define		AT91_PMC_PLLADIV2	(1 << 12)		/* PLLA divisor by 2 [some SAM9 only] */
 #define			AT91_PMC_PLLADIV2_OFF		(0 << 12)
 #define			AT91_PMC_PLLADIV2_ON		(1 << 12)
+#define		AT91_PMC_H32MXDIV	(1 << 24)		/* AHB 32-bit Matrix Divisor [some SAMA5 only] */
 
 #define	AT91_PMC_USB		0x38			/* USB Clock Register [some SAM9 only] */
 #define		AT91_PMC_USBS		(0x1 <<  0)		/* USB OHCI Input clock selection */
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index c38260f..f684d32 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -48,12 +48,19 @@
 #define ARCH_EXID_AT91SAM9G25	0x00000003
 #define ARCH_EXID_AT91SAM9X25	0x00000004
 
+#define ARCH_EXID_SAMA5D3	0x00004300
 #define ARCH_EXID_SAMA5D31	0x00444300
 #define ARCH_EXID_SAMA5D33	0x00414300
 #define ARCH_EXID_SAMA5D34	0x00414301
 #define ARCH_EXID_SAMA5D35	0x00584300
 #define ARCH_EXID_SAMA5D36	0x00004301
 
+#define ARCH_EXID_SAMA5D4	0x00000007
+#define ARCH_EXID_SAMA5D41	0x00000001
+#define ARCH_EXID_SAMA5D42	0x00000002
+#define ARCH_EXID_SAMA5D43	0x00000003
+#define ARCH_EXID_SAMA5D44	0x00000004
+
 #define ARCH_FAMILY_AT91X92	0x09200000
 #define ARCH_FAMILY_AT91SAM9	0x01900000
 #define ARCH_FAMILY_AT91SAM9XE	0x02900000
@@ -85,6 +92,9 @@ enum at91_soc_type {
 	/* SAMA5D3 */
 	AT91_SOC_SAMA5D3,
 
+	/* SAMA5D4 */
+	AT91_SOC_SAMA5D4,
+
 	/* Unknown type */
 	AT91_SOC_NONE
 };
@@ -107,6 +117,10 @@ enum at91_soc_subtype {
 	AT91_SOC_SAMA5D31, AT91_SOC_SAMA5D33, AT91_SOC_SAMA5D34,
 	AT91_SOC_SAMA5D35, AT91_SOC_SAMA5D36,
 
+	/* SAMA5D4 */
+	AT91_SOC_SAMA5D41, AT91_SOC_SAMA5D42, AT91_SOC_SAMA5D43,
+	AT91_SOC_SAMA5D44,
+
 	/* Unknown subtype */
 	AT91_SOC_SUBTYPE_NONE
 };
@@ -217,6 +231,20 @@ static inline int at91_soc_is_detected(void)
 #define cpu_is_sama5d36()	(0)
 #endif
 
+#ifdef CONFIG_ARCH_SAMA5D4
+#define cpu_is_sama5d4()	(at91_soc_initdata.type == AT91_SOC_SAMA5D4)
+#define cpu_is_sama5d41()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D41)
+#define cpu_is_sama5d42()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D42)
+#define cpu_is_sama5d43()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D43)
+#define cpu_is_sama5d44()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D44)
+#else
+#define cpu_is_sama5d4()	(0)
+#define cpu_is_sama5d41()	(0)
+#define cpu_is_sama5d42()	(0)
+#define cpu_is_sama5d43()	(0)
+#define cpu_is_sama5d44()	(0)
+#endif
+
 /*
  * Since this is ARM, we will never run on any AVR32 CPU. But these
  * definitions may reduce clutter in common drivers.
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index 2ef1780..bbaad71 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -19,6 +19,8 @@
 #define AT91_BASE_DBGU0	0xfffff200
 /* 9263, 9g45 */
 #define AT91_BASE_DBGU1	0xffffee00
+/* sama5d4 */
+#define AT91_BASE_DBGU2	0xfc069000
 
 #if defined(CONFIG_ARCH_AT91RM9200)
 #include <mach/at91rm9200.h>
@@ -38,6 +40,8 @@
 #include <mach/at91sam9x5.h>
 #elif defined(CONFIG_ARCH_SAMA5D3)
 #include <mach/sama5d3.h>
+#elif defined(CONFIG_ARCH_SAMA5D4)
+#include <mach/sama5d4.h>
 #elif defined(CONFIG_ARCH_AT91CAP9)
 #include <mach/at91cap9.h>
 #elif defined(CONFIG_ARCH_AT91X40)
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 9f02807..5df7109 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -19,7 +19,7 @@
 
 #define AT91_SAM9_SMC_CS_STRIDE		0x10
 #define AT91_SAMA5_SMC_CS_STRIDE	0x14
-#define AT91_SMC_CS_STRIDE      ((at91_soc_initdata.type == AT91_SOC_SAMA5D3) ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
+#define AT91_SMC_CS_STRIDE      ((at91_soc_initdata.type == AT91_SOC_SAMA5D3 || at91_soc_initdata.type == AT91_SOC_SAMA5D4) ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
 #define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * AT91_SMC_CS_STRIDE))
 
 static void __iomem *smc_base_addr[2];
@@ -29,7 +29,7 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
 {
 	void __iomem *mode_reg;
 
-	mode_reg = base + ((at91_soc_initdata.type == AT91_SOC_SAMA5D3) ? AT91_SAMA5_SMC_MODE : AT91_SAM9_SMC_MODE);
+	mode_reg = base + ((at91_soc_initdata.type == AT91_SOC_SAMA5D3 || at91_soc_initdata.type == AT91_SOC_SAMA5D4) ? AT91_SAMA5_SMC_MODE : AT91_SAM9_SMC_MODE);
 
 	__raw_writel(config->mode
 		   | AT91_SMC_TDF_(config->tdf_cycles),
@@ -95,7 +95,7 @@ static void sam9_smc_cs_read_mode(void __iomem *base,
 	u32 val;
 	void __iomem *mode_reg;
 
-	mode_reg = base + ((at91_soc_initdata.type == AT91_SOC_SAMA5D3) ? AT91_SAMA5_SMC_MODE : AT91_SAM9_SMC_MODE);
+	mode_reg = base + ((at91_soc_initdata.type == AT91_SOC_SAMA5D3 || at91_soc_initdata.type == AT91_SOC_SAMA5D4) ? AT91_SAMA5_SMC_MODE : AT91_SAM9_SMC_MODE);
 
 	val = __raw_readl(mode_reg);
 
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 80dc277..030b8a2 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -39,6 +39,9 @@ static void __init soc_detect(u32 dbgu_base)
 	cidr = __raw_readl(dbgu_base + AT91_DBGU_CIDR);
 	socid = cidr & ~AT91_CIDR_VERSION;
 
+	/* sub version of soc */
+	at91_soc_initdata.exid = __raw_readl(dbgu_base + AT91_DBGU_EXID);
+
 	switch (socid) {
 	case ARCH_ID_AT91RM9200:
 		at91_soc_initdata.type = AT91_SOC_RM9200;
@@ -90,8 +93,15 @@ static void __init soc_detect(u32 dbgu_base)
 		break;
 
 	case ARCH_ID_SAMA5:
-		at91_soc_initdata.type = AT91_SOC_SAMA5D3;
-		at91_boot_soc = at91sama5d3_soc;
+		if (at91_soc_initdata.exid & ARCH_EXID_SAMA5D3) {
+			at91_soc_initdata.type = AT91_SOC_SAMA5D3;
+			at91_boot_soc = at91sama5d3_soc;
+		} else {
+			if (at91_soc_initdata.exid & ARCH_EXID_SAMA5D4) {
+				at91_soc_initdata.type = AT91_SOC_SAMA5D4;
+				at91_boot_soc = at91sama5d4_soc;
+			}
+		}
 		break;
 	}
 
@@ -112,9 +122,6 @@ static void __init soc_detect(u32 dbgu_base)
 
 	at91_soc_initdata.cidr = cidr;
 
-	/* sub version of soc */
-	at91_soc_initdata.exid = __raw_readl(dbgu_base + AT91_DBGU_EXID);
-
 	if (at91_soc_initdata.type == AT91_SOC_SAM9G45) {
 		switch (at91_soc_initdata.exid) {
 		case ARCH_EXID_AT91SAM9M10:
@@ -168,6 +175,23 @@ static void __init soc_detect(u32 dbgu_base)
 			break;
 		}
 	}
+
+	if (at91_soc_initdata.type == AT91_SOC_SAMA5D4) {
+		switch (at91_soc_initdata.exid) {
+		case ARCH_EXID_SAMA5D41:
+			at91_soc_initdata.subtype = AT91_SOC_SAMA5D41;
+			break;
+		case ARCH_EXID_SAMA5D42:
+			at91_soc_initdata.subtype = AT91_SOC_SAMA5D42;
+			break;
+		case ARCH_EXID_SAMA5D43:
+			at91_soc_initdata.subtype = AT91_SOC_SAMA5D43;
+			break;
+		case ARCH_EXID_SAMA5D44:
+			at91_soc_initdata.subtype = AT91_SOC_SAMA5D44;
+			break;
+		}
+	}
 }
 
 static const char *soc_name[] = {
@@ -182,6 +206,7 @@ static const char *soc_name[] = {
 	[AT91_SOC_SAM9X5]	= "at91sam9x5",
 	[AT91_SOC_SAM9N12]	= "at91sam9n12",
 	[AT91_SOC_SAMA5D3]	= "sama5d3",
+	[AT91_SOC_SAMA5D4]	= "sama5d4",
 	[AT91_SOC_NONE]		= "Unknown"
 };
 
@@ -209,6 +234,10 @@ static const char *soc_subtype_name[] = {
 	[AT91_SOC_SAMA5D34]	= "sama5d34",
 	[AT91_SOC_SAMA5D35]	= "sama5d35",
 	[AT91_SOC_SAMA5D36]	= "sama5d36",
+	[AT91_SOC_SAMA5D41]	= "sama5d41",
+	[AT91_SOC_SAMA5D42]	= "sama5d42",
+	[AT91_SOC_SAMA5D43]	= "sama5d43",
+	[AT91_SOC_SAMA5D44]	= "sama5d44",
 	[AT91_SOC_SUBTYPE_NONE]	= "Unknown"
 };
 
@@ -226,6 +255,8 @@ static int at91_detect(void)
 	soc_detect(AT91_BASE_DBGU0);
 	if (!at91_soc_is_detected())
 		soc_detect(AT91_BASE_DBGU1);
+	if (!at91_soc_is_detected())
+		soc_detect(AT91_BASE_DBGU2);
 
 	if (!at91_soc_is_detected())
 		panic("AT91: Impossible to detect the SOC type");
diff --git a/arch/arm/mach-at91/soc.h b/arch/arm/mach-at91/soc.h
index e548165..76e4621 100644
--- a/arch/arm/mach-at91/soc.h
+++ b/arch/arm/mach-at91/soc.h
@@ -19,6 +19,7 @@ extern struct at91_init_soc at91sam9rl_soc;
 extern struct at91_init_soc at91sam9x5_soc;
 extern struct at91_init_soc at91sam9n12_soc;
 extern struct at91_init_soc at91sama5d3_soc;
+extern struct at91_init_soc at91sama5d4_soc;
 
 #define AT91_SOC_START(_name)				\
 struct at91_init_soc __initdata at91##_name##_soc	\
@@ -69,3 +70,7 @@ static inline int at91_soc_is_enabled(void)
 #if !defined(CONFIG_ARCH_SAMA5D3)
 #define at91sama5d3_soc	at91_boot_soc
 #endif
+
+#if !defined(CONFIG_ARCH_SAMA5D4)
+#define at91sama5d4_soc	at91_boot_soc
+#endif
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
