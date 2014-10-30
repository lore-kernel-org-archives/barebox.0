Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.mail.ru ([94.100.181.92])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xjlgn-0001CJ-Hj
 for barebox@lists.infradead.org; Thu, 30 Oct 2014 09:06:43 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 30 Oct 2014 12:06:09 +0300
Message-Id: <1414659969-5509-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] treewide: Reuse init_clock() return value for clocksource
 drivers
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-at91/at91rm9200_time.c  | 4 +---
 arch/arm/mach-at91/at91sam926x_time.c | 4 +---
 arch/arm/mach-ep93xx/clocksource.c    | 4 +---
 arch/arm/mach-mxs/clocksource-imx28.c | 3 +--
 arch/arm/mach-netx/clocksource.c      | 4 +---
 arch/arm/mach-pxa/clocksource.c       | 4 +---
 arch/arm/mach-samsung/s3c-timer.c     | 3 +--
 arch/arm/mach-tegra/tegra20-timer.c   | 3 +--
 arch/blackfin/lib/clock.c             | 4 +---
 arch/efi/efi/clocksource.c            | 4 +---
 arch/mips/lib/csrc-r4k.c              | 3 +--
 arch/nios2/lib/clock.c                | 4 +---
 arch/openrisc/lib/clock.c             | 4 +---
 arch/ppc/mach-mpc5xxx/time.c          | 4 +---
 arch/ppc/mach-mpc85xx/time.c          | 4 +---
 arch/sandbox/board/clock.c            | 4 +---
 arch/x86/mach-i386/pit_timer.c        | 3 +--
 drivers/clocksource/amba-sp804.c      | 4 +---
 drivers/clocksource/arm_smp_twd.c     | 4 +---
 drivers/clocksource/bcm2835.c         | 3 +--
 drivers/clocksource/dummy.c           | 3 +--
 drivers/clocksource/mvebu.c           | 4 +---
 drivers/clocksource/nomadik.c         | 4 +---
 drivers/clocksource/orion.c           | 3 +--
 drivers/clocksource/uemd.c            | 4 +---
 25 files changed, 25 insertions(+), 67 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index 1b73a51..ae0172b 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -70,9 +70,7 @@ static int clocksource_init (void)
 
 	cs.mult = clocksource_hz2mult(AT91_SLOW_CLOCK, cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 core_initcall(clocksource_init);
 
diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index 06d3e32..789e1ec 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -99,9 +99,7 @@ static int at91_pit_probe(struct device_d *dev)
 
 	cs.mult = clocksource_hz2mult(pit_rate, cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 static struct driver_d at91_pit_driver = {
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index 26ab91d..f396d0a 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -58,9 +58,7 @@ static int clocksource_init(void)
 
 	cs.mult = clocksource_hz2mult(TIMER_FREQ, cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/arm/mach-mxs/clocksource-imx28.c b/arch/arm/mach-mxs/clocksource-imx28.c
index 328ca5d..d26aa93 100644
--- a/arch/arm/mach-mxs/clocksource-imx28.c
+++ b/arch/arm/mach-mxs/clocksource-imx28.c
@@ -65,9 +65,8 @@ static int imx28_clocksource_init(void)
 	writel(TIMCTRL_UPDATE | TIMCTRL_RELOAD | TIMCTRL_PRESCALE(0) |
 			TIMCTRL_SELECT(0xb), timer_base + TIMCTRL1);
 	imx28_cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE, imx28_cs.shift);
-	init_clock(&imx28_cs);
 
-	return 0;
+	return init_clock(&imx28_cs);
 }
 
 core_initcall(imx28_clocksource_init);
diff --git a/arch/arm/mach-netx/clocksource.c b/arch/arm/mach-netx/clocksource.c
index bfce37a..8f53364 100644
--- a/arch/arm/mach-netx/clocksource.c
+++ b/arch/arm/mach-netx/clocksource.c
@@ -45,9 +45,7 @@ static int clocksource_init (void)
 
 	cs.mult = clocksource_hz2mult(100 * 1000 * 1000, cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/arm/mach-pxa/clocksource.c b/arch/arm/mach-pxa/clocksource.c
index 04d090a..c941f15 100644
--- a/arch/arm/mach-pxa/clocksource.c
+++ b/arch/arm/mach-pxa/clocksource.c
@@ -37,9 +37,7 @@ static int clocksource_init(void)
 {
 	cs.mult = clocksource_hz2mult(3250000, cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/arm/mach-samsung/s3c-timer.c b/arch/arm/mach-samsung/s3c-timer.c
index fb3cda0..b5118fa 100644
--- a/arch/arm/mach-samsung/s3c-timer.c
+++ b/arch/arm/mach-samsung/s3c-timer.c
@@ -115,8 +115,7 @@ static int s3c_clk_src_init(void)
 	s3c_timer_start();
 
 	cs.mult = clocksource_hz2mult(s3c_get_t4_clk(), cs.shift);
-	init_clock(&cs);
 
-	return 0;
+	return init_clock(&cs);
 }
 core_initcall(s3c_clk_src_init);
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
index ddc70dc..a8e4d7b 100644
--- a/arch/arm/mach-tegra/tegra20-timer.c
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -84,9 +84,8 @@ static int tegra20_timer_probe(struct device_d *dev)
 	writel(reg, timer_base + TIMERUS_USEC_CFG);
 
 	cs.mult = clocksource_hz2mult(1000000, cs.shift);
-	init_clock(&cs);
 
-	return 0;
+	return init_clock(&cs);
 }
 
 static __maybe_unused struct of_device_id tegra20_timer_dt_ids[] = {
diff --git a/arch/blackfin/lib/clock.c b/arch/blackfin/lib/clock.c
index 7a5673f..aaa042a 100644
--- a/arch/blackfin/lib/clock.c
+++ b/arch/blackfin/lib/clock.c
@@ -70,9 +70,7 @@ static int clocksource_init (void)
 
         cs.mult = clocksource_hz2mult(get_cclk(), cs.shift);
 
-        init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/efi/efi/clocksource.c b/arch/efi/efi/clocksource.c
index 2f33b43..c92c35b 100644
--- a/arch/efi/efi/clocksource.c
+++ b/arch/efi/efi/clocksource.c
@@ -54,7 +54,5 @@ int efi_clocksource_init(void)
 
 	freq = ticks_freq();
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
diff --git a/arch/mips/lib/csrc-r4k.c b/arch/mips/lib/csrc-r4k.c
index c699f2b..5c3f18f 100644
--- a/arch/mips/lib/csrc-r4k.c
+++ b/arch/mips/lib/csrc-r4k.c
@@ -38,8 +38,7 @@ static struct clocksource cs = {
 static int clocksource_init(void)
 {
 	cs.mult = clocksource_hz2mult(100000000, cs.shift);
-	init_clock(&cs);
 
-	return 0;
+	return init_clock(&cs);
 }
 core_initcall(clocksource_init);
diff --git a/arch/nios2/lib/clock.c b/arch/nios2/lib/clock.c
index 67cc778..28aed02 100644
--- a/arch/nios2/lib/clock.c
+++ b/arch/nios2/lib/clock.c
@@ -49,9 +49,7 @@ static int clocksource_init(void)
 
 	cs.mult = clocksource_hz2mult(NIOS_SOPC_TIMER_FREQ, cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/openrisc/lib/clock.c b/arch/openrisc/lib/clock.c
index 4f36f27..a171214 100644
--- a/arch/openrisc/lib/clock.c
+++ b/arch/openrisc/lib/clock.c
@@ -38,9 +38,7 @@ static int clocksource_init(void)
 	mtspr(SPR_TTMR, SPR_TTMR_CR | 0xFFFFFF);
 	cs.mult = clocksource_hz2mult(OPENRISC_TIMER_FREQ, cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/ppc/mach-mpc5xxx/time.c b/arch/ppc/mach-mpc5xxx/time.c
index 8ba0c5c..699a66d 100644
--- a/arch/ppc/mach-mpc5xxx/time.c
+++ b/arch/ppc/mach-mpc5xxx/time.c
@@ -41,9 +41,7 @@ static int clocksource_init(void)
 
 	cs.mult = clocksource_hz2mult(get_timebase_clock(), cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/ppc/mach-mpc85xx/time.c b/arch/ppc/mach-mpc85xx/time.c
index 985ec09..9014fce 100644
--- a/arch/ppc/mach-mpc85xx/time.c
+++ b/arch/ppc/mach-mpc85xx/time.c
@@ -41,9 +41,7 @@ static int clocksource_init(void)
 	clocks_calc_mult_shift(&cs.mult, &cs.shift,
 				fsl_get_timebase_clock(), NSEC_PER_SEC, 10);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/sandbox/board/clock.c b/arch/sandbox/board/clock.c
index 137e20b..bdea89f 100644
--- a/arch/sandbox/board/clock.c
+++ b/arch/sandbox/board/clock.c
@@ -37,9 +37,7 @@ static int clocksource_init (void)
 {
 	cs.mult = clocksource_hz2mult(1000 * 1000 * 1000, cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/x86/mach-i386/pit_timer.c b/arch/x86/mach-i386/pit_timer.c
index fbc7a10..857ba31 100644
--- a/arch/x86/mach-i386/pit_timer.c
+++ b/arch/x86/mach-i386/pit_timer.c
@@ -59,9 +59,8 @@ static struct clocksource cs = {
 static int clocksource_init (void)
 {
 	cs.mult = clocksource_hz2mult(1193182, cs.shift);
-	init_clock(&cs);
 
-	return 0;
+	return init_clock(&cs);
 }
 
 core_initcall(clocksource_init);
diff --git a/drivers/clocksource/amba-sp804.c b/drivers/clocksource/amba-sp804.c
index fedcb64..c5ad994 100644
--- a/drivers/clocksource/amba-sp804.c
+++ b/drivers/clocksource/amba-sp804.c
@@ -66,9 +66,7 @@ static int sp804_probe(struct amba_device *dev, const struct amba_id *id)
 
 	sp804_clksrc.mult = clocksource_hz2mult(tick_rate, sp804_clksrc.shift);
 
-	init_clock(&sp804_clksrc);
-
-	return 0;
+	return init_clock(&sp804_clksrc);
 }
 
 static struct amba_id sp804_ids[] = {
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
index 72045b0..c0296cd 100644
--- a/drivers/clocksource/arm_smp_twd.c
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -86,9 +86,7 @@ static int smp_twd_probe(struct device_d *dev)
 
 	smp_twd_clksrc.mult = clocksource_hz2mult(tick_rate, smp_twd_clksrc.shift);
 
-	init_clock(&smp_twd_clksrc);
-
-	return 0;
+	return init_clock(&smp_twd_clksrc);
 }
 
 static __maybe_unused struct of_device_id smp_twd_compatible[] = {
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index c0b1aae..0cb8e57 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -66,9 +66,8 @@ static int bcm2835_cs_probe(struct device_d *dev)
 		return PTR_ERR(stc_base);
 
 	clocks_calc_mult_shift(&bcm2835_stc.mult, &bcm2835_stc.shift, rate, NSEC_PER_SEC, 60);
-	init_clock(&bcm2835_stc);
 
-	return 0;
+	return init_clock(&bcm2835_stc);
 }
 
 static __maybe_unused struct of_device_id bcm2835_cs_dt_ids[] = {
diff --git a/drivers/clocksource/dummy.c b/drivers/clocksource/dummy.c
index 154a8cd..96f9b6e 100644
--- a/drivers/clocksource/dummy.c
+++ b/drivers/clocksource/dummy.c
@@ -49,8 +49,7 @@ static int clocksource_init(void)
 
 	pr_debug("clocksource_init: mult=%08x, shift=%08x\n",
 			dummy_cs.mult, dummy_cs.shift);
-	init_clock(&dummy_cs);
 
-	return 0;
+	return init_clock(&dummy_cs);
 }
 pure_initcall(clocksource_init);
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index b8fa985..88db0b0 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -88,9 +88,7 @@ static int mvebu_timer_probe(struct device_d *dev)
 
 	cs.mult = clocksource_hz2mult(rate, cs.shift);
 
-	init_clock(&cs);
-
-	return 0;
+	return init_clock(&cs);
 }
 
 static struct of_device_id mvebu_timer_dt_ids[] = {
diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
index d7edf06..48f4715 100644
--- a/drivers/clocksource/nomadik.c
+++ b/drivers/clocksource/nomadik.c
@@ -132,9 +132,7 @@ static int nmdk_mtu_probe(struct device_d *dev)
 
 	nmdk_clksrc.mult = clocksource_hz2mult(rate, nmdk_clksrc.shift);
 
-	init_clock(&nmdk_clksrc);
-
-	return 0;
+	return init_clock(&nmdk_clksrc);
 }
 
 static struct driver_d nmdk_mtu_driver = {
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index a1dafd8..2e40b49 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -62,9 +62,8 @@ static int orion_timer_probe(struct device_d *dev)
 		     timer_base + TIMER_CTRL);
 
 	clksrc.mult = clocksource_hz2mult(clk_get_rate(tclk), clksrc.shift);
-	init_clock(&clksrc);
 
-	return 0;
+	return init_clock(&clksrc);
 }
 
 static struct of_device_id orion_timer_dt_ids[] = {
diff --git a/drivers/clocksource/uemd.c b/drivers/clocksource/uemd.c
index 6c37de5..d4291dd 100644
--- a/drivers/clocksource/uemd.c
+++ b/drivers/clocksource/uemd.c
@@ -105,9 +105,7 @@ static int uemd_timer_probe(struct device_d *dev)
 	clocks_calc_mult_shift(&uemd_cs.mult, &uemd_cs.shift,
 		clk_get_rate(timer_clk), NSEC_PER_SEC, 10);
 
-	init_clock(&uemd_cs);
-
-	return 0;
+	return init_clock(&uemd_cs);
 }
 
 static __maybe_unused struct of_device_id uemd_timer_dt_ids[] = {
-- 
2.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
