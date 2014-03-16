Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPBR9-0003QU-MM
 for barebox@lists.infradead.org; Sun, 16 Mar 2014 13:49:13 +0000
Received: by mail-lb0-f171.google.com with SMTP id w7so2983418lbi.16
 for <barebox@lists.infradead.org>; Sun, 16 Mar 2014 06:48:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 16 Mar 2014 17:48:15 +0400
Message-Id: <1394977701-5889-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
References: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 04/10] ARM: davinci: add clocksource
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-davinci/include/mach/time.h |   2 +
 arch/arm/mach-davinci/time.c              | 114 ++++++++++++++++++++++++++++++
 2 files changed, 116 insertions(+)

diff --git a/arch/arm/mach-davinci/include/mach/time.h b/arch/arm/mach-davinci/include/mach/time.h
index 741e90c..34781b6 100644
--- a/arch/arm/mach-davinci/include/mach/time.h
+++ b/arch/arm/mach-davinci/include/mach/time.h
@@ -13,6 +13,8 @@
 
 #include <mach/hardware.h>
 
+#define DAVINCI_TIMER0_BASE		(IO_PHYS + 0x21400)
+#define DAVINCI_TIMER1_BASE		(IO_PHYS + 0x21800)
 #define DAVINCI_WDOG_BASE		(IO_PHYS + 0x21C00)
 
 #endif /* __ARCH_ARM_MACH_DAVINCI_TIME_H */
diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
index 1e00719..60f0d19 100644
--- a/arch/arm/mach-davinci/time.c
+++ b/arch/arm/mach-davinci/time.c
@@ -11,6 +11,8 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <clock.h>
 
 #include <mach/time.h>
 
@@ -49,6 +51,118 @@
 #define WDTCR_WDKEY_SEQ0             0xa5c6
 #define WDTCR_WDKEY_SEQ1             0xda7e
 
+#define DAVINCI_TIMER_CLOCK 24000000
+
+struct timer_s {
+	void __iomem *base;
+	unsigned long tim_off;
+	unsigned long prd_off;
+	unsigned long enamode_shift;
+};
+
+static struct timer_s timers[] = {
+	{
+		.base = IOMEM(DAVINCI_TIMER0_BASE),
+		.enamode_shift = 6,
+		.tim_off = TIM12,
+		.prd_off = PRD12,
+	},
+	{
+		.base = IOMEM(DAVINCI_TIMER0_BASE),
+		.enamode_shift = 22,
+		.tim_off = TIM34,
+		.prd_off = PRD34,
+	},
+	{
+		.base = IOMEM(DAVINCI_TIMER1_BASE),
+		.enamode_shift = 6,
+		.tim_off = TIM12,
+		.prd_off = PRD12,
+	},
+	{
+		.base = IOMEM(DAVINCI_TIMER1_BASE),
+		.enamode_shift = 22,
+		.tim_off = TIM34,
+		.prd_off = PRD34,
+	},
+};
+
+static struct timer_s *t = &timers[0];
+
+static uint64_t davinci_cs_read(void)
+{
+	return (uint64_t)__raw_readl(t->base + t->tim_off);
+}
+
+static struct clocksource davinci_cs = {
+	.read	= davinci_cs_read,
+	.mask	= CLOCKSOURCE_MASK(32),
+};
+
+static int timer32_config(struct timer_s *t)
+{
+	u32 tcr;
+
+	tcr = __raw_readl(t->base + TCR);
+
+	/* disable timer */
+	tcr &= ~(TCR_ENAMODE_MASK << t->enamode_shift);
+	__raw_writel(tcr, t->base + TCR);
+
+	/* reset counter to zero, set new period */
+	__raw_writel(0, t->base + t->tim_off);
+	__raw_writel(0xffffffff, t->base + t->prd_off);
+
+	/* Set enable mode for periodic timer */
+	tcr |= TCR_ENAMODE_PERIODIC << t->enamode_shift;
+
+	__raw_writel(tcr, t->base + TCR);
+
+	return 0;
+}
+
+/* Global init of 64-bit timer as a whole */
+static void __init timer_init(void __iomem *base)
+{
+	u32 tgcr;
+
+	/* Disabled, Internal clock source */
+	__raw_writel(0, base + TCR);
+
+	/* reset both timers, no pre-scaler for timer34 */
+	tgcr = 0;
+	__raw_writel(tgcr, base + TGCR);
+
+	/* Set both timers to unchained 32-bit */
+	tgcr = TGCR_TIMMODE_32BIT_UNCHAINED << TGCR_TIMMODE_SHIFT;
+	__raw_writel(tgcr, base + TGCR);
+
+	/* Unreset timers */
+	tgcr |= (TGCR_UNRESET << TGCR_TIM12RS_SHIFT) |
+		(TGCR_UNRESET << TGCR_TIM34RS_SHIFT);
+	__raw_writel(tgcr, base + TGCR);
+
+	/* Init both counters to zero */
+	__raw_writel(0, base + TIM12);
+	__raw_writel(0, base + TIM34);
+}
+
+static int clocksource_init(void)
+{
+	clocks_calc_mult_shift(&davinci_cs.mult, &davinci_cs.shift,
+		DAVINCI_TIMER_CLOCK, NSEC_PER_SEC, 10);
+
+	init_clock(&davinci_cs);
+
+	timer_init(IOMEM(DAVINCI_TIMER0_BASE));
+	timer_init(IOMEM(DAVINCI_TIMER1_BASE));
+
+	timer32_config(t);
+
+	return 0;
+}
+core_initcall(clocksource_init);
+
 /* reset board using watchdog timer */
 void __noreturn reset_cpu(ulong addr)
 {
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
