Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrX8t-0001JO-UQ
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 15:25:57 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 0651E1008087
	for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 17:26:07 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 11 Aug 2011 17:07:05 +0200
Message-Id: <1313075225-27280-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1313075225-27280-1-git-send-email-plagnioj@jcrosoft.com>
References: <1313075225-27280-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] versatile: fix static allocation clkdev
To: barebox@lists.infradead.org

it's DEV_ID not CON_ID

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-versatile/core.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index f58e3bd..1231a7d 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -145,10 +145,10 @@ static int vpb_clocksource_init(void)
 core_initcall(vpb_clocksource_init);
 
 static struct clk_lookup clocks_lookups[] = {
-	CLKDEV_CON_ID("uart-pl0110", &ref_clk_24),
-	CLKDEV_CON_ID("uart-pl0111", &ref_clk_24),
-	CLKDEV_CON_ID("uart-pl0112", &ref_clk_24),
-	CLKDEV_CON_ID("uart-pl0113", &ref_clk_24),
+	CLKDEV_DEV_ID("uart-pl0110", &ref_clk_24),
+	CLKDEV_DEV_ID("uart-pl0111", &ref_clk_24),
+	CLKDEV_DEV_ID("uart-pl0112", &ref_clk_24),
+	CLKDEV_DEV_ID("uart-pl0113", &ref_clk_24),
 };
 
 static int versatile_clkdev_init(void)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
