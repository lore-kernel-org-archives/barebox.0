Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R4Xnf-0007fi-OR
	for barebox@lists.infradead.org; Fri, 16 Sep 2011 12:45:48 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id EF19DDD3420
	for <barebox@lists.infradead.org>;
	Fri, 16 Sep 2011 14:46:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 16 Sep 2011 14:23:43 +0200
Message-Id: <1316175828-19748-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316175828-19748-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316175828-19748-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] at91: fix cpu clock speed display
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/clock.c |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 528994f..c9c32b2 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -535,6 +535,7 @@ static void at91_upll_usbfs_clock_init(unsigned long main_clock)
 }
 
 static int pll_overclock = 0;
+static u32 cpu_freq = 0;
 
 int at91_clock_init(unsigned long main_clock)
 {
@@ -622,6 +623,8 @@ int at91_clock_init(unsigned long main_clock)
 		mck.rate_hz = freq / (1 << ((mckr & AT91_PMC_MDIV) >> 8));      /* mdiv */
 	}
 
+	cpu_freq = freq;
+
 	/* Register the PMC's standard clocks */
 	for (i = 0; i < ARRAY_SIZE(standard_pmc_clocks); i++)
 		at91_clk_add(standard_pmc_clocks[i]);
@@ -649,8 +652,8 @@ static int at91_clock_display(void)
 	if (pll_overclock)
 		pr_info("Clocks: PLLA overclocked, %ld MHz\n", plla.rate_hz / 1000000);
 
-	printf("Clocks: CPU %lu MHz, master %u MHz, main %u.%03u MHz\n",
-		mck.parent->rate_hz / 1000000, (unsigned) mck.rate_hz / 1000000,
+	printf("Clocks: CPU %u MHz, master %u MHz, main %u.%03u MHz\n",
+		cpu_freq / 1000000, (unsigned) mck.rate_hz / 1000000,
 		(unsigned) main_clk.rate_hz / 1000000,
 		((unsigned) main_clk.rate_hz % 1000000) / 1000);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
