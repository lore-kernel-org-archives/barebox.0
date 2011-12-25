Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Reuqc-00047z-PE
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 20:39:13 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0000hM-JB
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0001Ll-Eo
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 25 Dec 2011 21:38:33 +0100
Message-Id: <1324845517-4601-11-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
References: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/14] MACH SAMSUNG/S3C: Re-work the S3C family timer driver
To: barebox@lists.infradead.org

After separation and after all S3C macros are now present, change the driver
to be more generic for future additions.

The timer registers in the S3C24XX family are only 16 bit wide. But these
registers can be read and written in a 32 bit manner. This is important to share
code with more recent CPUs which comes with 32 bit registers.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/s3c-timer.c |   78 ++++++++++++++++++++++++++++--------
 1 files changed, 60 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-samsung/s3c-timer.c b/arch/arm/mach-samsung/s3c-timer.c
index d9dae55..6665c8c 100644
--- a/arch/arm/mach-samsung/s3c-timer.c
+++ b/arch/arm/mach-samsung/s3c-timer.c
@@ -37,36 +37,78 @@
 #define S3C_TCNTB4 (S3C_TIMER_BASE + 0x3c)
 #define S3C_TCNTO4 (S3C_TIMER_BASE + 0x40)
 
+#define TIMER_WIDTH 16
+#define TIMER_SHIFT 10
+#define PRE_MUX 3
+#define PRE_MUX_ADD 1
+static const uint32_t max = 0x0000ffff;
 
-static uint64_t s3c24xx_clocksource_read(void)
+static void s3c_init_t4_clk_source(void)
+{
+	unsigned reg;
+
+	reg = readl(S3C_TCON) & ~S3C_TCON_T4MASK; /* stop timer 4 */
+	writel(reg, S3C_TCON);
+	reg = readl(S3C_TCFG0) & ~S3C_TCFG0_T4MASK;
+	reg |= S3C_TCFG0_SET_PSCL234(0); /* 0 means pre scaler is '256' */
+	writel(reg, S3C_TCFG0);
+	reg = readl(S3C_TCFG1) & ~S3C_TCFG1_T4MASK;
+	reg |= S3C_TCFG1_SET_T4MUX(PRE_MUX); /* / 16 */
+	writel(reg, S3C_TCFG1);
+}
+
+static unsigned s3c_get_t4_clk(void)
+{
+	unsigned clk = s3c_get_pclk();
+	unsigned pre = S3C_TCFG0_GET_PSCL234(readl(S3C_TCFG0)) + 1;
+	unsigned div = S3C_TCFG1_GET_T4MUX(readl(S3C_TCFG1)) + PRE_MUX_ADD;
+
+	return clk / pre / (1 << div);
+}
+
+static void s3c_timer_init(void)
+{
+	unsigned tcon;
+
+	tcon = readl(S3C_TCON) & ~S3C_TCON_T4MASK;
+
+	writel(max, S3C_TCNTB4);	/* reload value */
+	/* force a manual counter update */
+	writel(tcon | S3C_TCON_T4MANUALUPD, S3C_TCON);
+}
+
+static void s3c_timer_start(void)
+{
+	unsigned tcon;
+
+	tcon  = readl(S3C_TCON) & ~S3C_TCON_T4MANUALUPD;
+	tcon |= S3C_TCON_T4START | S3C_TCON_T4RELOAD;
+	writel(tcon, S3C_TCON);
+}
+
+static uint64_t s3c_clocksource_read(void)
 {
 	/* note: its a down counter */
-	return 0xFFFF - readw(S3C_TCNTO4);
+	return max - readl(S3C_TCNTO4);
 }
 
 static struct clocksource cs = {
-	.read	= s3c24xx_clocksource_read,
-	.mask	= CLOCKSOURCE_MASK(16),
-	.shift	= 10,
+	.read = s3c_clocksource_read,
+	.mask = CLOCKSOURCE_MASK(TIMER_WIDTH),
+	.shift = TIMER_SHIFT,
 };
 
-static int clocksource_init(void)
+static int s3c_clk_src_init(void)
 {
-	uint32_t p_clk = s3c_get_pclk();
-
-	writel(0x00000000, S3C_TCON);	/* stop all timers */
-	writel(0x00ffffff, S3C_TCFG0);	/* PCLK / (255 + 1) for timer 4 */
-	writel(0x00030000, S3C_TCFG1);	/* /16 */
-
-	writew(0xffff, S3C_TCNTB4);	/* reload value is TOP */
+	/* select its clock source first */
+	s3c_init_t4_clk_source();
 
-	writel(0x00600000, S3C_TCON);	/* force a first reload */
-	writel(0x00400000, S3C_TCON);
-	writel(0x00500000, S3C_TCON);	/* enable timer 4 with auto reload */
+	s3c_timer_init();
+	s3c_timer_start();
 
-	cs.mult = clocksource_hz2mult(p_clk / ((255 + 1) * 16), cs.shift);
+	cs.mult = clocksource_hz2mult(s3c_get_t4_clk(), cs.shift);
 	init_clock(&cs);
 
 	return 0;
 }
-core_initcall(clocksource_init);
+core_initcall(s3c_clk_src_init);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
