Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKTd-0001Re-OD
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:29:42 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id 2C93218B4279
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:59 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:42 +0200
Message-Id: <1397395668-9325-13-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 12/18] clk: tegra: consider new T30 clock registers
To: barebox@lists.infradead.org

Tegra3 has some new clocks and resets. The new
registers don't form a linear range with the
old ones.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-periph.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index c970f63afa80..25616c83a28a 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
  *
@@ -130,7 +130,7 @@ struct clk *_tegra_clk_register_periph(const char *name,
 		bool has_div)
 {
 	struct tegra_clk_periph *periph;
-	int ret;
+	int ret, gate_offs, rst_offs;
 
 	periph = kzalloc(sizeof(*periph), GFP_KERNEL);
 	if (!periph) {
@@ -144,8 +144,13 @@ struct clk *_tegra_clk_register_periph(const char *name,
 	if (!periph->mux)
 		goto out_mux;
 
-	periph->gate = clk_gate_alloc(NULL, NULL, clk_base + 0x10 +
-				      ((id >> 3) & 0xc), id & 0x1f, 0);
+	if (id >= 96)
+		gate_offs = 0x360 + (((id - 96) >> 3) & 0xc);
+	else
+		gate_offs = 0x10 + ((id >> 3) & 0xc);
+
+	periph->gate = clk_gate_alloc(NULL, NULL, clk_base + gate_offs,
+				      id & 0x1f, 0);
 	if (!periph->gate)
 		goto out_gate;
 
@@ -162,7 +167,12 @@ struct clk *_tegra_clk_register_periph(const char *name,
 	periph->hw.parent_names = parent_names;
 	periph->hw.num_parents = num_parents;
 	periph->flags = flags;
-	periph->rst_reg = clk_base + 0x4 + ((id >> 3) & 0xc);
+
+	if (id >= 96)
+		rst_offs = 0x358 + (((id - 96) >> 3) & 0xc);
+	else
+		rst_offs = 0x4 + ((id >> 3) & 0xc);
+	periph->rst_reg = clk_base + rst_offs;
 	periph->rst_shift = id & 0x1f;
 
 	ret = clk_register(&periph->hw);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
