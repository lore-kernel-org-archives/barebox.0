Delivery-date: Fri, 05 Jun 2026 15:08:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHV-002cpZ-0U
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 15:08:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHU-0005OG-7F
	for lore@pengutronix.de; Fri, 05 Jun 2026 15:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vz+dKAbecgpWB8PfCGCUyZFTvuUoyQYeFMhB8cM4a3I=; b=AWmiCTjQF1oLnXClaRxzXOt500
	ZTQzjR/6Z0BeYory7YDmvxU9d5n4ythfsq2sjDzz8U+xTILY4YiqNyKi7W6KBmrD9i7VDuY2mHvpf
	HACkVgGG5BcMJGAAif2gXSGObzmU5Rf3FdecmrXE7wSef0QGIsBIEUDEJZx706R+Ql8ZfB7OWpAj6
	Z5TZ1EAXtHB3uQJXXWrd56yJNWNU2LnFLg+uAeolwWxIa/EJXYyVxUM/y/fX74lQx1bZtLMHMq7bz
	c10ezK4PpV54omu7cAyMgLGG5keSOJ6Q8f6yY7dY4IPJ5rToi7bp3MjayiU68aSyseXs3WsYdyXQr
	wLaHhjyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUGB-00000000epC-0NSl;
	Fri, 05 Jun 2026 13:06:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUG5-00000000eme-1i0m
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 13:06:48 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wVUG3-0004ul-OS; Fri, 05 Jun 2026 15:06:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 05 Jun 2026 15:06:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-socfpga-agilex5-clk-v2-1-780562ec169f@pengutronix.de>
References: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
In-Reply-To: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_060645_475535_2B9C66E2 
X-CRM114-Status: GOOD (  12.22  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] clk: socfpga: sync arria10 clock initialization
 with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch from bclk_register to clk_hw_register with clk_init_data to be
more in line with the Linux driver.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/clk/socfpga/clk-gate-a10.c   | 27 ++++++++++++---------------
 drivers/clk/socfpga/clk-periph-a10.c | 29 ++++++++++++++---------------
 drivers/clk/socfpga/clk-pll-a10.c    | 31 ++++++++++++++++---------------
 3 files changed, 42 insertions(+), 45 deletions(-)

diff --git a/drivers/clk/socfpga/clk-gate-a10.c b/drivers/clk/socfpga/clk-gate-a10.c
index b66fbcdb8c54..e6bcc91b0490 100644
--- a/drivers/clk/socfpga/clk-gate-a10.c
+++ b/drivers/clk/socfpga/clk-gate-a10.c
@@ -117,10 +117,12 @@ static struct clk *__socfpga_gate_init(struct device_node *node,
 	u32 div_reg[3];
 	u32 clk_phase[2];
 	u32 fixed_div;
+	struct clk_hw *hw_clk;
 	struct socfpga_gate_clk *socfpga_clk;
 	const char *clk_name = node->name;
+	const char *parent_name[SOCFPGA_MAX_PARENTS];
+	struct clk_init_data init;
 	int rc;
-	int i;
 
 	socfpga_clk = xzalloc(sizeof(*socfpga_clk));
 
@@ -159,23 +161,18 @@ static struct clk *__socfpga_gate_init(struct device_node *node,
 
 	of_property_read_string(node, "clock-output-names", &clk_name);
 
-	socfpga_clk->hw.clk.name = xstrdup(clk_name);
-	socfpga_clk->hw.clk.ops = ops;
+	init.name = clk_name;
+	init.ops = ops;
+	init.flags = 0;
 
-	for (i = 0; i < SOCFPGA_MAX_PARENTS; i++) {
-		socfpga_clk->parent_names[i] = of_clk_get_parent_name(node, i);
-		if (!socfpga_clk->parent_names[i])
-			break;
-	}
+	init.num_parents = of_clk_parent_fill(node, parent_name, SOCFPGA_MAX_PARENTS);
+	init.parent_names = parent_name;
+	socfpga_clk->hw.init = &init;
+	hw_clk = &socfpga_clk->hw;
 
-	socfpga_clk->hw.clk.num_parents = i;
-	socfpga_clk->hw.clk.parent_names = socfpga_clk->parent_names;
-
-	rc = bclk_register(&socfpga_clk->hw.clk);
-	if (rc) {
-		free(socfpga_clk);
+	rc = clk_hw_register(NULL, hw_clk);
+	if (rc)
 		return ERR_PTR(rc);
-	}
 
 	return &socfpga_clk->hw.clk;
 }
diff --git a/drivers/clk/socfpga/clk-periph-a10.c b/drivers/clk/socfpga/clk-periph-a10.c
index f9cf40b0aaf3..61b693d295f7 100644
--- a/drivers/clk/socfpga/clk-periph-a10.c
+++ b/drivers/clk/socfpga/clk-periph-a10.c
@@ -62,12 +62,14 @@ static struct clk *__socfpga_periph_init(struct device_node *node,
 	const struct clk_ops *ops)
 {
 	u32 reg;
+	struct clk_hw *hw_clk;
 	struct socfpga_periph_clk *periph_clk;
 	const char *clk_name = node->name;
+	const char *parent_name[SOCFPGA_MAX_PARENTS];
+	struct clk_init_data init;
 	int rc;
 	u32 fixed_div;
 	u32 div_reg[3];
-	int i;
 
 	of_property_read_u32(node, "reg", &reg);
 
@@ -92,25 +94,22 @@ static struct clk *__socfpga_periph_init(struct device_node *node,
 
 	of_property_read_string(node, "clock-output-names", &clk_name);
 
-	for (i = 0; i < SOCFPGA_MAX_PARENTS; i++) {
-		periph_clk->parent_names[i] = of_clk_get_parent_name(node, i);
-		if (!periph_clk->parent_names[i])
-			break;
-	}
+	init.name = clk_name;
+	init.ops = ops;
+	init.flags = 0;
 
-	periph_clk->hw.clk.num_parents = i;
-	periph_clk->hw.clk.parent_names = periph_clk->parent_names;
+	init.num_parents = of_clk_parent_fill(node, parent_name, SOCFPGA_MAX_PARENTS);
+	init.parent_names = parent_name;
 
-	periph_clk->hw.clk.name = xstrdup(clk_name);
-	periph_clk->hw.clk.ops = ops;
+	periph_clk->hw.init = &init;
 
-	rc = bclk_register(&periph_clk->hw.clk);
-	if (rc) {
-		free(periph_clk);
+	hw_clk = &periph_clk->hw;
+
+	rc = clk_hw_register(NULL, hw_clk);
+	if (rc)
 		return ERR_PTR(rc);
-	}
 
-	return &periph_clk->hw.clk;
+	return &hw_clk->clk;
 }
 
 struct clk *socfpga_a10_periph_init(struct device_node *node)
diff --git a/drivers/clk/socfpga/clk-pll-a10.c b/drivers/clk/socfpga/clk-pll-a10.c
index 2e58a2eb5d92..566d99563ff6 100644
--- a/drivers/clk/socfpga/clk-pll-a10.c
+++ b/drivers/clk/socfpga/clk-pll-a10.c
@@ -88,10 +88,13 @@ static struct clk *__socfpga_pll_init(struct device_node *node,
 	const struct clk_ops *ops)
 {
 	u32 reg;
+	struct clk_hw *hw_clk;
 	struct socfpga_pll *pll_clk;
 	const char *clk_name = node->name;
+	const char *parent_name[SOCFGPA_MAX_PARENTS];
+	struct clk_init_data init;
 	int rc;
-	int i;
+	int i = 0;
 
 	of_property_read_u32(node, "reg", &reg);
 
@@ -101,27 +104,25 @@ static struct clk *__socfpga_pll_init(struct device_node *node,
 
 	of_property_read_string(node, "clock-output-names", &clk_name);
 
-	pll_clk->hw.clk.name = xstrdup(clk_name);
-	pll_clk->hw.clk.ops = ops;
+	init.name = clk_name;
+	init.ops = ops;
+	init.flags = 0;
 
-	for (i = 0; i < SOCFPGA_MAX_PARENTS; i++) {
-		pll_clk->parent_names[i] = of_clk_get_parent_name(node, i);
-		if (!pll_clk->parent_names[i])
-			break;
-	}
+	while (i < SOCFGPA_MAX_PARENTS &&
+	       (parent_name[i] = of_clk_get_parent_name(node, i)) != NULL)
+		i++;
+	init.num_parents = i;
+	init.parent_names = parent_name;
 
 	pll_clk->bit_idx = SOCFPGA_PLL_EXT_ENA;
-	pll_clk->hw.clk.num_parents = i;
-	pll_clk->hw.clk.parent_names = pll_clk->parent_names;
+	hw_clk = &pll_clk->hw;
 
 	clk_pll_ops.enable = clk_socfpga_enable;
 	clk_pll_ops.disable = clk_socfpga_disable;
 
-	rc = bclk_register(&pll_clk->hw.clk);
-	if (rc) {
-		free(pll_clk);
-		return NULL;
-	}
+	rc = clk_hw_register(NULL, &pll_clk->hw);
+	if (rc)
+		ERR_PTR(rc);
 
 	return &pll_clk->hw.clk;
 }

-- 
2.47.3



