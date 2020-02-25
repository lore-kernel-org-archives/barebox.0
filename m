Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VTq-00066T-US
 for barebox@lists.infradead.org; Tue, 25 Feb 2020 08:22:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Feb 2020 09:22:00 +0100
Message-Id: <20200225082202.10569-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] clk: initially enable critical clocks
To: Barebox List <barebox@lists.infradead.org>

Critical clocks have to be enabled initially. We have to do this not
only to enable the clock itself, but also to make sure its parents
stay enabled and also to correctly enable the new parents during
reparenting of the clock.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index ea3304bc7c..05bc21a6d4 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -282,6 +282,9 @@ int clk_register(struct clk *clk)
 
 	list_add_tail(&clk->list, &clks);
 
+	if (clk->flags & CLK_IS_CRITICAL)
+		clk_enable(clk);
+
 	return 0;
 }
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
