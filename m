Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg4o-0000Ev-Oj
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:46:59 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id A6A5218B425F
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:00 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:33 +0200
Message-Id: <1400100352-13002-6-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 06/25] clk: tegra: remove device reset hack
To: barebox@lists.infradead.org

Now that we have a proper reset controller, it
isn't necessary anymore to keep the device reset
hack coupled to the clock.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-periph.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index be83955db1a5..c05e563aae55 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -74,33 +74,15 @@ static int clk_periph_is_enabled(struct clk *hw)
 static int clk_periph_enable(struct clk *hw)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
-	u32 reg;
-
-	reg = readl(periph->rst_reg);
-	reg |= (1 << periph->rst_shift);
-	writel(reg, periph->rst_reg);
 
 	periph->gate->ops->enable(periph->gate);
 
-	udelay(2);
-
-	reg = readl(periph->rst_reg);
-	reg &= ~(1 << periph->rst_shift);
-	writel(reg, periph->rst_reg);
-
 	return 0;
 }
 
 static void clk_periph_disable(struct clk *hw)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
-	u32 reg;
-
-	reg = readl(periph->rst_reg);
-	reg |= (1 << periph->rst_shift);
-	writel(reg, periph->rst_reg);
-
-	udelay(2);
 
 	periph->gate->ops->disable(periph->gate);
 }
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
