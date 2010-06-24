Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu3-00043L-6U
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:14 +0200
Message-Id: <1277372356-32370-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] i.MX clocksource: Use readl/writel instead of pointer
	deref
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clocksource.c |   18 +++++++++++-------
 1 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 4b400a0..a166038 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -35,12 +35,14 @@
 #include <notifier.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
+#include <asm/io.h>
 
 #define GPT(x) __REG(IMX_TIM1_BASE + (x))
+#define timer_base (IMX_TIM1_BASE)
 
 uint64_t imx_clocksource_read(void)
 {
-	return GPT(GPT_TCN);
+	return readl(timer_base + GPT_TCN);
 }
 
 static struct clocksource cs = {
@@ -62,8 +64,10 @@ static struct notifier_block imx_clock_notifier = {
 static int clocksource_init (void)
 {
 	int i;
+	uint32_t val;
+
 	/* setup GP Timer 1 */
-	GPT(GPT_TCTL) = TCTL_SWR;
+	writel(TCTL_SWR, timer_base + GPT_TCTL);
 
 #ifdef CONFIG_ARCH_IMX21
 	PCCR1 |= PCCR1_GPT1_EN;
@@ -74,12 +78,12 @@ static int clocksource_init (void)
 #endif
 
 	for (i = 0; i < 100; i++)
-		GPT(GPT_TCTL) = 0; /* We have no udelay by now */
+		writel(0, timer_base + GPT_TCTL); /* We have no udelay by now */
 
-	GPT(GPT_TPRER) = 0;
-	GPT(GPT_TCTL) |= TCTL_FRR | (1<<TCTL_CLKSOURCE); /* Freerun Mode, PERCLK1 input */
-	GPT(GPT_TCTL) &= ~TCTL_TEN;
-	GPT(GPT_TCTL) |= TCTL_TEN; /* Enable timer */
+	writel(0, timer_base + GPT_TPRER);
+	val = readl(timer_base + GPT_TCTL);
+	val |= TCTL_FRR | (1 << TCTL_CLKSOURCE) | TCTL_TEN; /* Freerun Mode, PERCLK1 input */
+	writel(val, timer_base + GPT_TCTL);
 
 	cs.mult = clocksource_hz2mult(imx_get_gptclk(), cs.shift);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
