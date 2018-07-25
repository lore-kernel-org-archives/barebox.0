Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fiJy5-00053N-JW
 for barebox@lists.infradead.org; Wed, 25 Jul 2018 13:36:43 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Wed, 25 Jul 2018 15:36:15 +0200
Message-Id: <20180725133618.1510-11-r.hieber@pengutronix.de>
In-Reply-To: <20180725133618.1510-1-r.hieber@pengutronix.de>
References: <20180725133618.1510-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 10/13] ARM: MXS: make VDDx brownout setup more understandable
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Rename bo_int to prev_bo_enirq to make its purpose clearer, and throw in
a few comments for easier understanding.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/mach-mxs/power-init.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index db597ef65c..060bd9115b 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -1066,7 +1066,7 @@ static void mxs_power_set_vddx(const struct mxs_vddx_cfg *cfg,
 {
 	struct mxs_power_regs *power_regs =
 		(struct mxs_power_regs *)IMX_POWER_BASE;
-	uint32_t cur_target, diff, bo_int = 0;
+	uint32_t cur_target, diff, prev_bo_enirq = 0;
 	uint32_t powered_by_linreg = 0;
 	int adjust_up, tmp;
 
@@ -1082,8 +1082,10 @@ static void mxs_power_set_vddx(const struct mxs_vddx_cfg *cfg,
 		powered_by_linreg = cfg->powered_by_linreg();
 
 	if (adjust_up && cfg->bo_irq) {
+		/* temporarily disable brownout to prevent it from taking
+		   effect prematurely during the adjustment */
 		if (powered_by_linreg) {
-			bo_int = readl(&power_regs->hw_power_ctrl);
+			prev_bo_enirq = readl(&power_regs->hw_power_ctrl) & cfg->bo_enirq;
 			writel(cfg->bo_enirq, &power_regs->hw_power_ctrl_clr);
 		}
 		setbits_le32(cfg->reg, cfg->bo_offset_mask);
@@ -1124,8 +1126,10 @@ static void mxs_power_set_vddx(const struct mxs_vddx_cfg *cfg,
 
 	if (cfg->bo_irq) {
 		if (adjust_up && powered_by_linreg) {
+			/* clear brownout IRQ flag in case it fired */
 			writel(cfg->bo_irq, &power_regs->hw_power_ctrl_clr);
-			if (bo_int & cfg->bo_enirq)
+			if (prev_bo_enirq)
+				/* re-enable brownout IRQ after adjustment has finished */
 				writel(cfg->bo_enirq, &power_regs->hw_power_ctrl_set);
 		}
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
