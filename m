Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrAVL-00082d-GE
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 14:11:05 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 16:10:21 +0200
Message-Id: <1283436624-29567-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902141001.GA28968@game.jcrosoft.org>
References: <20100902141001.GA28968@game.jcrosoft.org>
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
Subject: [PATCH 6/9] at91/clock: switch to %w for clock info printing
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/clock.c |    8 +++-----
 1 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 6fd09d5..8d5547b 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -677,12 +677,10 @@ int at91_clock_init(unsigned long main_clock)
 static int at91_clock_display(void)
 {
 	if (pll_overclock)
-		pr_info("Clocks: PLLA overclocked, %ld MHz\n", plla.rate_hz / 1000000);
+		pr_info("Clocks: PLLA overclocked, %wHz\n", plla.rate_hz);
 
-	printf("Clocks: CPU %u MHz, master %u MHz, main %u.%03u MHz\n",
-		mck.parent->rate_hz / 1000000, (unsigned) mck.rate_hz / 1000000,
-		(unsigned) main_clk.rate_hz / 1000000,
-		((unsigned) main_clk.rate_hz % 1000000) / 1000);
+	printf("Clocks: CPU %wHz, master %wHz, main %wHz\n",
+		mck.parent->rate_hz, mck.rate_hz, main_clk.rate_hz);
 
 	return 0;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
