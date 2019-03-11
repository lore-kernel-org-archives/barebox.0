Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHa-0003gx-51
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 09/14] clk: mux: Support CLK_MUX_READ_ONLY flag
Date: Mon, 11 Mar 2019 10:31:18 +0100
Message-Id: <20190311093123.7956-10-s.hauer@pengutronix.de>
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

Support readonly dividers using the CLK_MUX_READ_ONLY flag.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-mux.c | 7 +++++++
 include/linux/clk.h   | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index ebf736bdff..e9cb614005 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -33,6 +33,13 @@ static int clk_mux_set_parent(struct clk *clk, u8 idx)
 	struct clk_mux *m = container_of(clk, struct clk_mux, clk);
 	u32 val;
 
+	if (m->flags & CLK_MUX_READ_ONLY) {
+		if (clk_mux_get_parent(clk) != idx)
+			return -EPERM;
+		else
+			return 0;
+	}
+
 	val = readl(m->reg);
 	val &= ~(((1 << m->width) - 1) << m->shift);
 	val |= idx << m->shift;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 2e698e2ea6..2492608a15 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -344,6 +344,7 @@ struct clk_divider {
 #define CLK_DIVIDER_READ_ONLY		(1 << 5)
 
 #define CLK_MUX_HIWORD_MASK		(1 << 2)
+#define CLK_MUX_READ_ONLY		(1 << 3) /* mux can't be changed */
 
 extern struct clk_ops clk_divider_ops;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
