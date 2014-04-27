Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f49.google.com ([74.125.83.49])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLR0-0007sQ-MC
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:31:43 +0000
Received: by mail-ee0-f49.google.com with SMTP id c41so3932553eek.36
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:31:17 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:40 +0200
Message-Id: <1398591044-3616-8-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 07/11] clk: gate: add CLK_GATE_HIWORD_MASK flag
To: barebox@lists.infradead.org

Clock gates having the CLK_GATE_HIWORD_MASK flag set use the upper 16
bits of the register as a "write enable" mask for the value in the
lower 16 bits.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 drivers/clk/clk-gate.c |   17 ++++++++++++-----
 include/linux/clk.h    |    1 +
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 54489c4..85eba3d 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -37,12 +37,19 @@ static void clk_gate_endisable(struct clk *clk, int enable)
 	u32 val;
 
 	set ^= enable;
-	val = readl(gate->reg);
 
-	if (set)
-		val |= BIT(gate->shift);
-	else
-		val &= ~BIT(gate->shift);
+	if (gate->flags & CLK_GATE_HIWORD_MASK) {
+		val = BIT(gate->shift + 16);
+		if (set)
+			val |= BIT(gate->shift);
+	} else {
+		val = readl(gate->reg);
+
+		if (set)
+			val |= BIT(gate->shift);
+		else
+			val &= ~BIT(gate->shift);
+	}
 
 	writel(val, gate->reg);
 }
diff --git a/include/linux/clk.h b/include/linux/clk.h
index fbfdd4f..49cb5a2 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -200,6 +200,7 @@ static inline int clk_set_rate(struct clk *clk, unsigned long rate)
 #define CLK_SET_RATE_PARENT     (1 << 0) /* propagate rate change up one level */
 
 #define CLK_GATE_INVERTED	(1 << 0)
+#define CLK_GATE_HIWORD_MASK	(1 << 1)
 
 struct clk_ops {
 	int		(*enable)(struct clk *clk);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
