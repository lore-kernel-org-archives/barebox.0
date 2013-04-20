Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTROR-0002oi-C6
 for barebox@lists.infradead.org; Sat, 20 Apr 2013 06:35:30 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 20 Apr 2013 10:35:18 +0400
Message-Id: <1366439718-31495-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] clocksource: Add pointer to clocksource structure in read
 function
To: barebox@lists.infradead.org

This patch adds pointer to clocksource structure in read function.
For avoid name collisions, clocksource names for all drivers was
changed to be unique.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-at91/at91rm9200_time.c  |  8 ++++----
 arch/arm/mach-at91/at91sam926x_time.c |  8 ++++----
 arch/arm/mach-ep93xx/clocksource.c    |  8 ++++----
 arch/arm/mach-imx/clocksource.c       | 10 +++++-----
 arch/arm/mach-mxs/clocksource-imx23.c | 12 +++++++-----
 arch/arm/mach-mxs/clocksource-imx28.c |  2 +-
 arch/arm/mach-netx/clocksource.c      |  8 ++++----
 arch/arm/mach-omap/dmtimer0.c         |  2 +-
 arch/arm/mach-omap/s32k_clksource.c   |  2 +-
 arch/arm/mach-pxa/clocksource.c       |  8 ++++----
 arch/arm/mach-samsung/s3c-timer.c     |  8 ++++----
 arch/arm/mach-tegra/clock.c           |  8 ++++----
 arch/arm/mach-versatile/core.c        |  2 +-
 arch/blackfin/lib/clock.c             |  8 ++++----
 arch/mips/lib/csrc-r4k.c              |  8 ++++----
 arch/mips/mach-xburst/csrc-jz4750.c   |  2 +-
 arch/nios2/lib/clock.c                |  8 ++++----
 arch/openrisc/lib/clock.c             |  9 +++++----
 arch/ppc/mach-mpc5xxx/time.c          |  8 ++++----
 arch/ppc/mach-mpc85xx/time.c          | 10 +++++-----
 arch/sandbox/board/clock.c            |  8 ++++----
 arch/x86/mach-i386/pit_timer.c        |  8 ++++----
 common/clock.c                        |  2 +-
 drivers/clocksource/amba-sp804.c      |  2 +-
 drivers/clocksource/arm_smp_twd.c     |  2 +-
 drivers/clocksource/bcm2835.c         |  2 +-
 drivers/clocksource/clps711x.c        |  2 +-
 drivers/clocksource/nomadik.c         |  2 +-
 include/clock.h                       |  2 +-
 29 files changed, 86 insertions(+), 83 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index 1b73a51..8f36c9f 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -40,7 +40,7 @@
  * the updates as seen by the CPU don't seem to be strictly monotonic.
  * Waiting until we read the same value twice avoids glitching.
  */
-uint64_t at91rm9200_clocksource_read(void)
+uint64_t at91rm9200_clocksource_read(struct clocksource *cs)
 {
 	unsigned long x1, x2;
 
@@ -54,7 +54,7 @@ uint64_t at91rm9200_clocksource_read(void)
 	return x1;
 }
 
-static struct clocksource cs = {
+static struct clocksource at91rm9200_cs = {
 	.mask	= CLOCKSOURCE_MASK(20),
 	.read	= at91rm9200_clocksource_read,
 	.shift	= 10,
@@ -68,9 +68,9 @@ static int clocksource_init (void)
 	 */
 	at91_sys_write(AT91_ST_RTMR, 1);
 
-	cs.mult = clocksource_hz2mult(AT91_SLOW_CLOCK, cs.shift);
+	at91rm9200_cs.mult = clocksource_hz2mult(AT91_SLOW_CLOCK, at91rm9200_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&at91rm9200_cs);
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index e18458a..3456580 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -41,12 +41,12 @@
 
 static __iomem void *pit_base;
 
-uint64_t at91sam9_clocksource_read(void)
+uint64_t at91sam9_clocksource_read(struct clocksource *cs)
 {
 	return pit_read(AT91_PIT_PIIR);
 }
 
-static struct clocksource cs = {
+static struct clocksource at91sam9_cs = {
 	.read	= at91sam9_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
@@ -95,9 +95,9 @@ static int at91_pit_probe(struct device_d *dev)
 
 	at91sam926x_pit_reset();
 
-	cs.mult = clocksource_hz2mult(pit_rate, cs.shift);
+	at91sam9_cs.mult = clocksource_hz2mult(pit_rate, at91sam9_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&at91sam9_cs);
 
 	return 0;
 }
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index 26ab91d..0aa1ef0 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -28,14 +28,14 @@
 
 #define TIMER_FREQ		508469
 
-static uint64_t ep93xx_clocksource_read(void)
+static uint64_t ep93xx_clocksource_read(struct clocksource *cs)
 {
 	struct timer_regs *timer = (struct timer_regs *)TIMER_BASE;
 
 	return 0xffffffff - readl(&timer->timer3.value);
 }
 
-static struct clocksource cs = {
+static struct clocksource ep93xx_cs = {
 	.read	= ep93xx_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
@@ -56,9 +56,9 @@ static int clocksource_init(void)
 	writel(TIMER_ENABLE | TIMER_MODE | TIMER_CLKSEL,
 	       &timer->timer3.control);
 
-	cs.mult = clocksource_hz2mult(TIMER_FREQ, cs.shift);
+	ep93xx_cs.mult = clocksource_hz2mult(TIMER_FREQ, ep93xx_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&ep93xx_cs);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index e18685e..9abf05b 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -67,12 +67,12 @@ static struct imx_gpt_regs regs_imx31 = {
 static struct imx_gpt_regs *regs;
 static void __iomem *timer_base;
 
-static uint64_t imx_clocksource_read(void)
+static uint64_t imx_clocksource_read(struct clocksource *cs)
 {
 	return readl(timer_base + regs->tcn);
 }
 
-static struct clocksource cs = {
+static struct clocksource imx_cs = {
 	.read	= imx_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
@@ -80,7 +80,7 @@ static struct clocksource cs = {
 
 static int imx_clocksource_clock_change(struct notifier_block *nb, unsigned long event, void *data)
 {
-	cs.mult = clocksource_hz2mult(clk_get_rate(clk_gpt), cs.shift);
+	imx_cs.mult = clocksource_hz2mult(clk_get_rate(clk_gpt), imx_cs.shift);
 	return 0;
 }
 
@@ -121,9 +121,9 @@ static int imx_gpt_probe(struct device_d *dev)
 	writel(0, timer_base + GPT_TPRER);
 	writel(regs->tctl_val, timer_base + GPT_TCTL);
 
-	cs.mult = clocksource_hz2mult(rate, cs.shift);
+	imx_cs.mult = clocksource_hz2mult(rate, imx_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&imx_cs);
 
 	clock_register_client(&imx_clock_notifier);
 
diff --git a/arch/arm/mach-mxs/clocksource-imx23.c b/arch/arm/mach-mxs/clocksource-imx23.c
index d9b7c1a..639c65f 100644
--- a/arch/arm/mach-mxs/clocksource-imx23.c
+++ b/arch/arm/mach-mxs/clocksource-imx23.c
@@ -36,13 +36,13 @@ static const unsigned long timer_base = IMX_TIM1_BASE;
 
 #define CLOCK_TICK_RATE (32000)
 
-static uint64_t imx23_clocksource_read(void)
+static uint64_t imx23_clocksource_read(struct clocksource *cs)
 {
 	/* only the upper bits are the valid */
 	return ~(readl(timer_base + TIMCOUNT1) >> 16);
 }
 
-static struct clocksource cs = {
+static struct clocksource imx23_cs = {
 	.read	= imx23_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(16),
 	.shift	= 10,
@@ -50,7 +50,8 @@ static struct clocksource cs = {
 
 static int imx23_clocksource_clock_change(struct notifier_block *nb, unsigned long event, void *data)
 {
-	cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE/*imx_get_xclk()*/, cs.shift);
+	imx23_cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE/*imx_get_xclk()*/,
+					    imx23_cs.shift);
 	return 0;
 }
 
@@ -68,8 +69,9 @@ static int clocksource_init(void)
 	writel(0x0000ffff, timer_base + TIMCOUNT1);
 
 	writel(TIMCTRL_UPDATE | TIMCTRL_RELOAD | TIMCTRL_PRESCALE(0) | TIMCTRL_SELECT(8), timer_base + TIMCTRL1);
-	cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE/*imx_get_xclk()*/, cs.shift);
-	init_clock(&cs);
+	imx23_cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE/*imx_get_xclk()*/,
+					    imx23_cs.shift);
+	init_clock(&imx23_cs);
 
 	clock_register_client(&imx23_clock_notifier);
 	return 0;
diff --git a/arch/arm/mach-mxs/clocksource-imx28.c b/arch/arm/mach-mxs/clocksource-imx28.c
index 328ca5d..43c3ddc 100644
--- a/arch/arm/mach-mxs/clocksource-imx28.c
+++ b/arch/arm/mach-mxs/clocksource-imx28.c
@@ -41,7 +41,7 @@ static const void __iomem * timer_base = (void *)IMX_TIM1_BASE;
 /* we are using the 32 kHz reference */
 #define CLOCK_TICK_RATE 32000
 
-static uint64_t imx28_clocksource_read(void)
+static uint64_t imx28_clocksource_read(struct clocksource *cs)
 {
 	return ~(readl(timer_base + TIMCOUNT1));
 }
diff --git a/arch/arm/mach-netx/clocksource.c b/arch/arm/mach-netx/clocksource.c
index bfce37a..a92f259 100644
--- a/arch/arm/mach-netx/clocksource.c
+++ b/arch/arm/mach-netx/clocksource.c
@@ -23,12 +23,12 @@
 #include <clock.h>
 #include <mach/netx-regs.h>
 
-uint64_t netx_clocksource_read(void)
+uint64_t netx_clocksource_read(struct clocksource *cs)
 {
 	return GPIO_REG(GPIO_COUNTER_CURRENT(0));
 }
 
-static struct clocksource cs = {
+static struct clocksource netx_cs = {
 	.read	= netx_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
@@ -43,9 +43,9 @@ static int clocksource_init (void)
 	GPIO_REG(GPIO_COUNTER_MAX(0)) = 0xffffffff;
 	GPIO_REG(GPIO_COUNTER_CTRL(0)) = COUNTER_CTRL_RUN;
 
-	cs.mult = clocksource_hz2mult(100 * 1000 * 1000, cs.shift);
+	netx_cs.mult = clocksource_hz2mult(100 * 1000 * 1000, netx_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&netx_cs);
 
 	return 0;
 }
diff --git a/arch/arm/mach-omap/dmtimer0.c b/arch/arm/mach-omap/dmtimer0.c
index b0bd670..4e088fb 100644
--- a/arch/arm/mach-omap/dmtimer0.c
+++ b/arch/arm/mach-omap/dmtimer0.c
@@ -58,7 +58,7 @@
  *
  * @return DMTimer0 counter
  */
-static uint64_t dmtimer0_read(void)
+static uint64_t dmtimer0_read(struct clocksource *cs)
 {
 	return readl(AM33XX_DMTIMER0_BASE + TCRR);
 }
diff --git a/arch/arm/mach-omap/s32k_clksource.c b/arch/arm/mach-omap/s32k_clksource.c
index 7def8b1..39c1d7d 100644
--- a/arch/arm/mach-omap/s32k_clksource.c
+++ b/arch/arm/mach-omap/s32k_clksource.c
@@ -46,7 +46,7 @@ static void __iomem *timerbase;
  *
  * @return S32K clock counter
  */
-static uint64_t s32k_clocksource_read(void)
+static uint64_t s32k_clocksource_read(struct clocksource *cs)
 {
 	return readl(timerbase + S32K_CR);
 }
diff --git a/arch/arm/mach-pxa/clocksource.c b/arch/arm/mach-pxa/clocksource.c
index 04d090a..4fc358e 100644
--- a/arch/arm/mach-pxa/clocksource.c
+++ b/arch/arm/mach-pxa/clocksource.c
@@ -22,12 +22,12 @@
 
 #define OSCR	0x40A00010
 
-uint64_t pxa_clocksource_read(void)
+uint64_t pxa_clocksource_read(struct clocksource *cs)
 {
 	return readl(OSCR);
 }
 
-static struct clocksource cs = {
+static struct clocksource pxa_cs = {
 	.read	= pxa_clocksource_read,
 	.mask	= 0xffffffff,
 	.shift	= 20,
@@ -35,9 +35,9 @@ static struct clocksource cs = {
 
 static int clocksource_init(void)
 {
-	cs.mult = clocksource_hz2mult(3250000, cs.shift);
+	pxa_cs.mult = clocksource_hz2mult(3250000, pxa_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&pxa_cs);
 
 	return 0;
 }
diff --git a/arch/arm/mach-samsung/s3c-timer.c b/arch/arm/mach-samsung/s3c-timer.c
index fb3cda0..b20ac67 100644
--- a/arch/arm/mach-samsung/s3c-timer.c
+++ b/arch/arm/mach-samsung/s3c-timer.c
@@ -94,13 +94,13 @@ static void s3c_timer_start(void)
 	writel(tcon, S3C_TCON);
 }
 
-static uint64_t s3c_clocksource_read(void)
+static uint64_t s3c_clocksource_read(struct clocksource *cs)
 {
 	/* note: its a down counter */
 	return max - readl(S3C_TCNTO4);
 }
 
-static struct clocksource cs = {
+static struct clocksource s3c_cs = {
 	.read = s3c_clocksource_read,
 	.mask = CLOCKSOURCE_MASK(TIMER_WIDTH),
 	.shift = TIMER_SHIFT,
@@ -114,8 +114,8 @@ static int s3c_clk_src_init(void)
 	s3c_timer_init();
 	s3c_timer_start();
 
-	cs.mult = clocksource_hz2mult(s3c_get_t4_clk(), cs.shift);
-	init_clock(&cs);
+	s3c_cs.mult = clocksource_hz2mult(s3c_get_t4_clk(), s3c_cs.shift);
+	init_clock(&s3c_cs);
 
 	return 0;
 }
diff --git a/arch/arm/mach-tegra/clock.c b/arch/arm/mach-tegra/clock.c
index 82065ee..7c03599 100644
--- a/arch/arm/mach-tegra/clock.c
+++ b/arch/arm/mach-tegra/clock.c
@@ -35,12 +35,12 @@ static void __iomem *timer_reg_base = (void __iomem *) (TEGRA_TMR1_BASE);
 #define timer_readl(reg) \
 	__raw_readl((u32)timer_reg_base + (reg))
 
-static uint64_t tegra_clocksource_read(void)
+static uint64_t tegra_clocksource_read(struct clocksource *cs)
 {
 	return timer_readl(0x10);
 }
 
-static struct clocksource cs = {
+static struct clocksource tegra_cs = {
 	.read	= tegra_clocksource_read,
 	.mask	= 0xffffffff,
 };
@@ -48,8 +48,8 @@ static struct clocksource cs = {
 /* FIXME: here we have no initialization. All initialization made by U-Boot */
 static int clocksource_init(void)
 {
-	cs.mult = clocksource_hz2mult(1000000, cs.shift);
-	init_clock(&cs);
+	tegra_cs.mult = clocksource_hz2mult(1000000, tegra_cs.shift);
+	init_clock(&tegra_cs);
 
 	return 0;
 }
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 8aca2a1..a9d6881 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -94,7 +94,7 @@ int vpb_clk_create(struct clk *clk, const char *dev_id)
 #define TIMER2_BASE (VERSATILE_TIMER2_3_BASE)
 #define TIMER3_BASE ((VERSATILE_TIMER2_3_BASE) + 0x20)
 
-static uint64_t vpb_clocksource_read(void)
+static uint64_t vpb_clocksource_read(struct clocksource *cs)
 {
 	return ~readl(TIMER0_BASE + TIMER_VALUE);
 }
diff --git a/arch/blackfin/lib/clock.c b/arch/blackfin/lib/clock.c
index 7a5673f..172216b 100644
--- a/arch/blackfin/lib/clock.c
+++ b/arch/blackfin/lib/clock.c
@@ -48,12 +48,12 @@ ulong get_sclk(void)
 	return get_vco() / ssel;
 }
 
-static uint64_t blackfin_clocksource_read(void)
+static uint64_t blackfin_clocksource_read(struct clocksource *cs)
 {
 	return ~(*pTCOUNT);
 }
 
-static struct clocksource cs = {
+static struct clocksource blackfin_cs = {
 	.read	= blackfin_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
@@ -68,9 +68,9 @@ static int clocksource_init (void)
 	*pTCNTL = 0x7;
 	asm("CSYNC;");
 
-        cs.mult = clocksource_hz2mult(get_cclk(), cs.shift);
+	blackfin_cs.mult = clocksource_hz2mult(get_cclk(), blackfin_cs.shift);
 
-        init_clock(&cs);
+	init_clock(&blackfin_cs);
 
 	return 0;
 }
diff --git a/arch/mips/lib/csrc-r4k.c b/arch/mips/lib/csrc-r4k.c
index 2978fcf..37b0317 100644
--- a/arch/mips/lib/csrc-r4k.c
+++ b/arch/mips/lib/csrc-r4k.c
@@ -25,20 +25,20 @@
 #include <io.h>
 #include <asm/mipsregs.h>
 
-static uint64_t c0_hpt_read(void)
+static uint64_t c0_hpt_read(struct clocksource *cs)
 {
 	return read_c0_count();
 }
 
-static struct clocksource cs = {
+static struct clocksource r4k_cs = {
 	.read	= c0_hpt_read,
 	.mask	= 0xffffffff,
 };
 
 static int clocksource_init(void)
 {
-	cs.mult = clocksource_hz2mult(100000000, cs.shift);
-	init_clock(&cs);
+	r4k_cs.mult = clocksource_hz2mult(100000000, r4k_cs.shift);
+	init_clock(&r4k_cs);
 
 	return 0;
 }
diff --git a/arch/mips/mach-xburst/csrc-jz4750.c b/arch/mips/mach-xburst/csrc-jz4750.c
index 75e0654..8a24569 100644
--- a/arch/mips/mach-xburst/csrc-jz4750.c
+++ b/arch/mips/mach-xburst/csrc-jz4750.c
@@ -27,7 +27,7 @@
 
 #define JZ_TIMER_CLOCK 24000000
 
-static uint64_t jz4750_cs_read(void)
+static uint64_t jz4750_cs_read(struct clocksource *cs)
 {
 	return (uint64_t)__raw_readl((void *)TCU_OSTCNT);
 }
diff --git a/arch/nios2/lib/clock.c b/arch/nios2/lib/clock.c
index 67cc778..2b82eb8 100644
--- a/arch/nios2/lib/clock.c
+++ b/arch/nios2/lib/clock.c
@@ -24,7 +24,7 @@
 
 static struct nios_timer *timer = (struct nios_timer *)NIOS_SOPC_TIMER_BASE;
 
-static uint64_t nios_clocksource_read(void)
+static uint64_t nios_clocksource_read(struct clocksource *cs)
 {
 	uint64_t value;
 
@@ -34,7 +34,7 @@ static uint64_t nios_clocksource_read(void)
 	return ~value;
 }
 
-static struct clocksource cs = {
+static struct clocksource nios_cs = {
 	.read	= nios_clocksource_read,
 	.mask	= 0xffffffff,
 	.shift	= 12,
@@ -47,9 +47,9 @@ static int clocksource_init(void)
 	writew(0xFFFF, &timer->periodh);
 	writew(NIOS_TIMER_CONT | NIOS_TIMER_START, &timer->control);
 
-	cs.mult = clocksource_hz2mult(NIOS_SOPC_TIMER_FREQ, cs.shift);
+	nios_cs.mult = clocksource_hz2mult(NIOS_SOPC_TIMER_FREQ, nios_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&nios_cs);
 
 	return 0;
 }
diff --git a/arch/openrisc/lib/clock.c b/arch/openrisc/lib/clock.c
index 4f36f27..59f17e6 100644
--- a/arch/openrisc/lib/clock.c
+++ b/arch/openrisc/lib/clock.c
@@ -22,12 +22,12 @@
 #include <asm/system.h>
 #include <asm/openrisc_exc.h>
 
-static uint64_t openrisc_clocksource_read(void)
+static uint64_t openrisc_clocksource_read(struct clocksource *cs)
 {
 	return (uint64_t)(mfspr(SPR_TTCR));
 }
 
-static struct clocksource cs = {
+static struct clocksource openrisc_cs = {
 	.read	= openrisc_clocksource_read,
 	.mask	= 0xffffffff,
 	.shift	= 12,
@@ -36,9 +36,10 @@ static struct clocksource cs = {
 static int clocksource_init(void)
 {
 	mtspr(SPR_TTMR, SPR_TTMR_CR | 0xFFFFFF);
-	cs.mult = clocksource_hz2mult(OPENRISC_TIMER_FREQ, cs.shift);
+	openrisc_cs.mult = clocksource_hz2mult(OPENRISC_TIMER_FREQ,
+					       openrisc_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&openrisc_cs);
 
 	return 0;
 }
diff --git a/arch/ppc/mach-mpc5xxx/time.c b/arch/ppc/mach-mpc5xxx/time.c
index 8ba0c5c..feda051 100644
--- a/arch/ppc/mach-mpc5xxx/time.c
+++ b/arch/ppc/mach-mpc5xxx/time.c
@@ -23,12 +23,12 @@
 #include <mach/clocks.h>
 #include <asm/common.h>
 
-uint64_t ppc_clocksource_read(void)
+uint64_t ppc_clocksource_read(struct clocksource *cs)
 {
 	return get_ticks();
 }
 
-static struct clocksource cs = {
+static struct clocksource ppc_cs = {
 	.read	= ppc_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 15,
@@ -39,9 +39,9 @@ static int clocksource_init(void)
 	/* reset time base */
 	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
 
-	cs.mult = clocksource_hz2mult(get_timebase_clock(), cs.shift);
+	ppc_cs.mult = clocksource_hz2mult(get_timebase_clock(), ppc_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&ppc_cs);
 
 	return 0;
 }
diff --git a/arch/ppc/mach-mpc85xx/time.c b/arch/ppc/mach-mpc85xx/time.c
index 985ec09..1fe4895 100644
--- a/arch/ppc/mach-mpc85xx/time.c
+++ b/arch/ppc/mach-mpc85xx/time.c
@@ -23,12 +23,12 @@
 #include <init.h>
 #include <mach/clock.h>
 
-uint64_t ppc_clocksource_read(void)
+uint64_t ppc_clocksource_read(struct clocksource *cs)
 {
 	return get_ticks();
 }
 
-static struct clocksource cs = {
+static struct clocksource ppc_cs = {
 	.read	= ppc_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(64),
 };
@@ -38,10 +38,10 @@ static int clocksource_init(void)
 	/* reset time base */
 	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
 
-	clocks_calc_mult_shift(&cs.mult, &cs.shift,
-				fsl_get_timebase_clock(), NSEC_PER_SEC, 10);
+	clocks_calc_mult_shift(&ppc_cs.mult, &ppc_cs.shift,
+			       fsl_get_timebase_clock(), NSEC_PER_SEC, 10);
 
-	init_clock(&cs);
+	init_clock(&ppc_cs);
 
 	return 0;
 }
diff --git a/arch/sandbox/board/clock.c b/arch/sandbox/board/clock.c
index 137e20b..0f62a55 100644
--- a/arch/sandbox/board/clock.c
+++ b/arch/sandbox/board/clock.c
@@ -22,12 +22,12 @@
 #include <clock.h>
 #include <mach/linux.h>
 
-static uint64_t linux_clocksource_read(void)
+static uint64_t linux_clocksource_read(struct clocksource *cs)
 {
 	return linux_get_time();
 }
 
-static struct clocksource cs = {
+static struct clocksource linux_cs = {
 	.read	= linux_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
@@ -35,9 +35,9 @@ static struct clocksource cs = {
 
 static int clocksource_init (void)
 {
-	cs.mult = clocksource_hz2mult(1000 * 1000 * 1000, cs.shift);
+	linux_cs.mult = clocksource_hz2mult(1000 * 1000 * 1000, linux_cs.shift);
 
-	init_clock(&cs);
+	init_clock(&linux_cs);
 
 	return 0;
 }
diff --git a/arch/x86/mach-i386/pit_timer.c b/arch/x86/mach-i386/pit_timer.c
index fbc7a10..a473c82 100644
--- a/arch/x86/mach-i386/pit_timer.c
+++ b/arch/x86/mach-i386/pit_timer.c
@@ -33,7 +33,7 @@
 /** base address of the PIT in a standard PC */
 #define PIT 0x40
 
-static uint64_t pit_clocksource_read(void)
+static uint64_t pit_clocksource_read(struct clocksource *cs)
 {
 	uint16_t val1, val2;
 
@@ -50,7 +50,7 @@ static uint64_t pit_clocksource_read(void)
 	return 0xFFFFU - (val1 | val2);
 }
 
-static struct clocksource cs = {
+static struct clocksource pit_cs = {
 	.read	= pit_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(16),
 	.shift	= 10,
@@ -58,8 +58,8 @@ static struct clocksource cs = {
 
 static int clocksource_init (void)
 {
-	cs.mult = clocksource_hz2mult(1193182, cs.shift);
-	init_clock(&cs);
+	pit_cs.mult = clocksource_hz2mult(1193182, pit_cs.shift);
+	init_clock(&pit_cs);
 
 	return 0;
 }
diff --git a/common/clock.c b/common/clock.c
index 9c7c1ba..52dec70 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -39,7 +39,7 @@ uint64_t get_time_ns(void)
         uint64_t ns_offset;
 
         /* read clocksource: */
-	cycle_now = cs->read() & cs->mask;
+	cycle_now = cs->read(cs) & cs->mask;
 
         /* calculate the delta since the last call: */
         cycle_delta = (cycle_now - cs->cycle_last) & cs->mask;
diff --git a/drivers/clocksource/amba-sp804.c b/drivers/clocksource/amba-sp804.c
index fedcb64..2249720 100644
--- a/drivers/clocksource/amba-sp804.c
+++ b/drivers/clocksource/amba-sp804.c
@@ -18,7 +18,7 @@
 static __iomem void *sp804_base;
 static struct clk *sp804_clk;
 
-static uint64_t sp804_read(void)
+static uint64_t sp804_read(struct clocksource *cs)
 {
 	return ~readl(sp804_base + TIMER_VALUE);
 }
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
index 746d566..8ff65d5 100644
--- a/drivers/clocksource/arm_smp_twd.c
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -27,7 +27,7 @@
 static __iomem void *twd_base;
 static struct clk *twd_clk;
 
-static uint64_t smp_twd_read(void)
+static uint64_t smp_twd_read(struct clocksource *cs)
 {
 	return ~readl(twd_base + TWD_TIMER_COUNTER);
 }
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index d5fe0f0..808d8be 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -30,7 +30,7 @@
 
 static __iomem void *stc_base;
 
-static uint64_t stc_read_cycles(void)
+static uint64_t stc_read_cycles(struct clocksource *cs)
 {
 	return readl(stc_base + ST_CLO);
 }
diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index 8c379d3..0e359e0 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -17,7 +17,7 @@
 
 static __iomem void *clps711x_timer_base;
 
-static uint64_t clps711x_cs_read(void)
+static uint64_t clps711x_cs_read(struct clocksource *cs)
 {
 	return ~readw(clps711x_timer_base);
 }
diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
index 8a3e6d9..4eb8729 100644
--- a/drivers/clocksource/nomadik.c
+++ b/drivers/clocksource/nomadik.c
@@ -65,7 +65,7 @@ static u32 nmdk_cycle;		/* write-once */
  * clocksource: the MTU device is a decrementing counters, so we negate
  * the value being read.
  */
-static uint64_t nmdk_read_timer(void)
+static uint64_t nmdk_read_timer(struct clocksource *cs)
 {
 	return nmdk_cycle - readl(mtu_base + MTU_VAL(0));
 }
diff --git a/include/clock.h b/include/clock.h
index a169790..0ef412f 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -10,7 +10,7 @@
 struct clocksource {
 	uint32_t	shift;
 	uint32_t	mult;
-	uint64_t	(*read)(void);
+	uint64_t	(*read)(struct clocksource *);
 	uint64_t	cycle_last;
 	uint64_t	mask;
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
