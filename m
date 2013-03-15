Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fallback3.mail.ru ([94.100.176.58])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGOFK-0004Zb-NT
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 06:36:07 +0000
Received: from smtp38.i.mail.ru (smtp38.i.mail.ru [94.100.177.98])
 by fallback3.mail.ru (mPOP.Fallback_MX) with ESMTP id BB988D95BAC8
 for <barebox@lists.infradead.org>; Fri, 15 Mar 2013 10:36:01 +0400 (MSK)
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 15 Mar 2013 10:35:40 +0400
Message-Id: <1363329340-13126-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1363329340-13126-1-git-send-email-shc_work@mail.ru>
References: <1363329340-13126-1-git-send-email-shc_work@mail.ru>
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
Subject: [RFC 3/3] clk: Add "is_enabled" callback for gated clocks
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clk/clk-gate.c |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 2dca11c..580720b 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -48,9 +48,17 @@ static void clk_gate_disable(struct clk *clk)
 	writel(val, g->reg);
 }
 
+static int clk_gate_is_enabled(struct clk *clk)
+{
+	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
+
+	return !!(readl(g->reg) & (1 << g->shift));
+}
+
 struct clk_ops clk_gate_ops = {
 	.enable = clk_gate_enable,
 	.disable = clk_gate_disable,
+	.is_enabled = clk_gate_is_enabled,
 };
 
 struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
