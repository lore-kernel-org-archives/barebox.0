Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHL-0003dq-Ti
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 03/14] clk: export clk_gate_is_enabled()
Date: Mon, 11 Mar 2019 10:31:12 +0100
Message-Id: <20190311093123.7956-4-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-1-s.hauer@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Will be needed by stm32 clk support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-gate.c | 2 +-
 include/linux/clk.h    | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 89240ff794..b2b160555e 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -56,7 +56,7 @@ static void clk_gate_disable(struct clk *clk)
 	clk_gate_endisable(clk, 0);
 }
 
-static int clk_gate_is_enabled(struct clk *clk)
+int clk_gate_is_enabled(struct clk *clk)
 {
 	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
 	u32 val;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 1f20eb2772..6081a1af87 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -399,6 +399,8 @@ struct clk_gate {
 	unsigned flags;
 };
 
+int clk_gate_is_enabled(struct clk *clk);
+
 #define to_clk_gate(_clk) container_of(_clk, struct clk_gate, clk)
 
 extern struct clk_ops clk_gate_ops;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
