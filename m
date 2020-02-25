Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VTk-00064T-4c
 for barebox@lists.infradead.org; Tue, 25 Feb 2020 08:22:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Feb 2020 09:22:01 +0100
Message-Id: <20200225082202.10569-2-s.hauer@pengutronix.de>
In-Reply-To: <20200225082202.10569-1-s.hauer@pengutronix.de>
References: <20200225082202.10569-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] clk: Do not let the enable count of critical clocks go
 below 1
To: Barebox List <barebox@lists.infradead.org>

The enable count of critical clocks may not drop below 1. Otherwise
the new parent during a reparenting of a critical clock will not
be enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 05bc21a6d4..5777c9c58e 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -84,12 +84,14 @@ void clk_disable(struct clk *clk)
 	if (!clk->enable_count)
 		return;
 
+	if (clk->enable_count == 1 && clk->flags & CLK_IS_CRITICAL) {
+		pr_warn("Disabling critical clock %s\n", clk->name);
+		return;
+	}
+
 	clk->enable_count--;
 
 	if (!clk->enable_count) {
-		if (clk->flags & CLK_IS_CRITICAL)
-			return;
-
 		if (clk->ops->disable)
 			clk->ops->disable(clk);
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
