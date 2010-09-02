Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrFg8-0004yC-LO
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 19:42:34 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 21:41:47 +0200
Message-Id: <1283456510-28086-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902194046.GA21449@game.jcrosoft.org>
References: <20100902194046.GA21449@game.jcrosoft.org>
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
Subject: [PATCH 6/9 V2] at91/clock: switch to %w for clock info printing
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/clock.c |    8 +++-----
 1 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 6fd09d5..c3161d7 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -677,12 +677,10 @@ int at91_clock_init(unsigned long main_clock)
 static int at91_clock_display(void)
 {
 	if (pll_overclock)
-		pr_info("Clocks: PLLA overclocked, %ld MHz\n", plla.rate_hz / 1000000);
+		pr_info("Clocks: PLLA overclocked, %#wHz\n", plla.rate_hz);
 
-	printf("Clocks: CPU %u MHz, master %u MHz, main %u.%03u MHz\n",
-		mck.parent->rate_hz / 1000000, (unsigned) mck.rate_hz / 1000000,
-		(unsigned) main_clk.rate_hz / 1000000,
-		((unsigned) main_clk.rate_hz % 1000000) / 1000);
+	printf("Clocks: CPU %#wHz, master %#wHz, main %#wHz\n",
+		mck.parent->rate_hz, mck.rate_hz, main_clk.rate_hz);
 
 	return 0;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
