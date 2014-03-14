Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAg-00055Y-Ty
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:28 +0100
Message-Id: <1394807569-23620-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/29] clk: implement clk_round_rate
To: barebox@lists.infradead.org

Instead of returning just the current rate implement clk_round_rate
properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 31d73c0..c67b2f4 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -104,9 +104,19 @@ unsigned long clk_get_rate(struct clk *clk)
 
 long clk_round_rate(struct clk *clk, unsigned long rate)
 {
+	unsigned long parent_rate = 0;
+	struct clk *parent;
+
 	if (IS_ERR(clk))
 		return 0;
 
+	parent = clk_get_parent(clk);
+	if (parent)
+		parent_rate = clk_get_rate(parent);
+
+	if (clk->ops->round_rate)
+		return clk->ops->round_rate(clk, rate, &parent_rate);
+
 	return clk_get_rate(clk);
 }
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
