Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgHPa-0007ql-0v
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 18:10:31 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 2CCF026C2004
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 20:09:13 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 20 Oct 2014 20:16:01 +0200
Message-Id: <1413828961-12605-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 7/7] clk: gate: remove superfluous code
To: barebox@lists.infradead.org

This code didn't have any effect.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/clk-gate.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 85eba3d..695e19a 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -132,14 +132,5 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 struct clk *clk_gate_inverted(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, unsigned flags)
 {
-	struct clk *clk;
-	struct clk_gate *g;
-
-	clk = clk_gate(name, parent, reg, shift, flags, CLK_GATE_INVERTED);
-	if (IS_ERR(clk))
-		return clk;
-
-	g = container_of(clk, struct clk_gate, clk);
-
-	return clk;
+	return clk_gate(name, parent, reg, shift, flags, CLK_GATE_INVERTED);
 }
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
