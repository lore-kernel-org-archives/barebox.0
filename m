Delivery-date: Wed, 02 Jun 2021 12:07:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNn0-0000qr-7L
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:07:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNmu-0003G1-AP
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:07:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUpNDM4fikYp8/+J1jgX2YLQBHEpEKRERqgw8+FY/3M=; b=ZXOpyqtvDkzE64
	R7Gyj7Fp4YUmCmZ8DhpEbDjyQelnDdV6x/qVBOvbZ0eudR0GkSv66pzTaJQHiyL8IrjiSumYU6cAw
	gqNEDcJLPSq+4y6yvZmktCeDDBiu5ubxuWy45FiMy4KBN2iBsrLWqkiofkbStBzcN3eunPgVBAhjt
	cib9k3hkaZIH1I9CyjRCi1imQa64rJZK6OshPxKn0BUofz8fAMl3gNQMngOlVKq0fyH4pUBCaUIL8
	Ioj/rP01VQCZmr9HQkzTCT8a8GUpxANqm0mPAbcBJU9EwXKRkTO94EL3dBEt+wGpLSJZpoHC/kPNL
	FYo9nAsXzZhM4YkXrX8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNl9-003ANj-Tp; Wed, 02 Jun 2021 10:06:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNb0-0036OJ-7b
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MM-Mf; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-0003AA-Vg; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:55:02 +0200
Message-Id: <20210602095507.24609-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025530_370307_CCEDFAD1 
X-CRM114-Status: GOOD (  15.17  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 19/24] clk: Rename CLK_GATE_INVERTED to CLK_GATE_SET_TO_DISABLE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rename CLK_GATE_INVERTED to CLK_GATE_SET_TO_DISABLE as done in Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-gate.c      | 8 ++++----
 drivers/clk/imx/clk-gate2.c | 9 ++++-----
 include/linux/clk.h         | 2 +-
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 87b7e73aa6..3cfd707238 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -13,7 +13,7 @@
 static void clk_gate_endisable(struct clk_hw *hw, int enable)
 {
 	struct clk_gate *gate = container_of(hw, struct clk_gate, hw);
-	int set = gate->flags & CLK_GATE_INVERTED ? 1 : 0;
+	int set = gate->flags & CLK_GATE_SET_TO_DISABLE ? 1 : 0;
 	u32 val;
 
 	set ^= enable;
@@ -54,9 +54,9 @@ int clk_gate_is_enabled(struct clk_hw *hw)
 	val = readl(g->reg);
 
 	if (val & (1 << g->shift))
-		return g->flags & CLK_GATE_INVERTED ? 0 : 1;
+		return g->flags & CLK_GATE_SET_TO_DISABLE ? 0 : 1;
 	else
-		return g->flags & CLK_GATE_INVERTED ? 1 : 0;
+		return g->flags & CLK_GATE_SET_TO_DISABLE ? 1 : 0;
 }
 
 struct clk_ops clk_gate_ops = {
@@ -114,7 +114,7 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 struct clk *clk_gate_inverted(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, unsigned flags)
 {
-	return clk_gate(name, parent, reg, shift, flags, CLK_GATE_INVERTED);
+	return clk_gate(name, parent, reg, shift, flags, CLK_GATE_SET_TO_DISABLE);
 }
 
 struct clk *clk_register_gate(struct device_d *dev, const char *name,
diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index 8866a5365b..af83e93b12 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -18,7 +18,6 @@ struct clk_gate2 {
 	int shift;
 	u8 cgr_val;
 	const char *parent;
-#define CLK_GATE_INVERTED	(1 << 0)
 	unsigned flags;
 };
 
@@ -34,7 +33,7 @@ static int clk_gate2_enable(struct clk_hw *hw)
 
 	val = readl(g->reg);
 
-	if (g->flags & CLK_GATE_INVERTED)
+	if (g->flags & CLK_GATE_SET_TO_DISABLE)
 		val &= ~(3 << g->shift);
 	else
 		val |= g->cgr_val << g->shift;
@@ -51,7 +50,7 @@ static void clk_gate2_disable(struct clk_hw *hw)
 
 	val = readl(g->reg);
 
-	if (g->flags & CLK_GATE_INVERTED)
+	if (g->flags & CLK_GATE_SET_TO_DISABLE)
 		val |= 3 << g->shift;
 	else
 		val &= ~(3 << g->shift);
@@ -67,9 +66,9 @@ static int clk_gate2_is_enabled(struct clk_hw *hw)
 	val = readl(g->reg);
 
 	if (val & (1 << g->shift))
-		return g->flags & CLK_GATE_INVERTED ? 0 : 1;
+		return g->flags & CLK_GATE_SET_TO_DISABLE ? 0 : 1;
 	else
-		return g->flags & CLK_GATE_INVERTED ? 1 : 0;
+		return g->flags & CLK_GATE_SET_TO_DISABLE ? 1 : 0;
 }
 
 static struct clk_ops clk_gate2_ops = {
diff --git a/include/linux/clk.h b/include/linux/clk.h
index c49604fe2d..d53699a874 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -339,7 +339,7 @@ static inline void clk_put(struct clk *clk)
 /* parents need enable during gate/ungate, set rate and re-parent */
 #define CLK_OPS_PARENT_ENABLE   (1 << 12)
 
-#define CLK_GATE_INVERTED	(1 << 0)
+#define CLK_GATE_SET_TO_DISABLE	(1 << 0)
 #define CLK_GATE_HIWORD_MASK	(1 << 1)
 
 struct clk_ops {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

