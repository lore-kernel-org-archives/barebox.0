Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD28z-0003zq-Sw
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 00:23:42 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 424E9DC1DF4
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 01:34:44 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 01:22:43 +0100
Message-Id: <1362529364-20651-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362529364-20651-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306002138.GQ23022@game.jcrosoft.org>
 <1362529364-20651-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/6] at91: clock switch to pr_info
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
