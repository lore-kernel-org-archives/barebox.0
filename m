Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDw20-00007f-Ur
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:04:17 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 293FBFFA621
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 13:20:37 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Mar 2013 12:59:37 +0100
Message-Id: <1362743983-11462-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130307215402.GA32347@game.jcrosoft.org>
 <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/11] at91: clock switch to pr_info
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/clock.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 2dde632..296f5d5 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -756,7 +756,7 @@ static int at91_clock_display(void)
 	if (pll_overclock)
 		pr_info("Clocks: PLLA overclocked, %ld MHz\n", plla.rate_hz / 1000000);
 
-	printf("Clocks: CPU %u MHz, master %u MHz, main %u.%03u MHz\n",
+	pr_info("Clocks: CPU %u MHz, master %u MHz, main %u.%03u MHz\n",
 		cpu_freq / 1000000, (unsigned) mck.rate_hz / 1000000,
 		(unsigned) main_clk.rate_hz / 1000000,
 		((unsigned) main_clk.rate_hz % 1000000) / 1000);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
