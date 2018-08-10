Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foANj-0007mB-1Q
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 16:35:28 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Fri, 10 Aug 2018 18:34:56 +0200
Message-Id: <20180810163500.12042-11-r.hieber@pengutronix.de>
In-Reply-To: <20180810163500.12042-1-r.hieber@pengutronix.de>
References: <20180810163500.12042-1-r.hieber@pengutronix.de>
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
Subject: [PATCH v2 10/14] ARM: MXS: fix VDDx brownout setup logic
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

The cfg->bo_irq and cfg->bo_enirq (i.e. VDDx_BO_IRQ and ENIRQ_VDDx_BO)
flags are part of POWER_CTRL, so setting those flag in cfg->reg (i.e.
POWER_VDDxCTRL) makes no sense. Fortunately, those bits are reserved in
ENIRQ_VDDx_BO, so writing them did no harm, but also doesn't work as
intended.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/mach-mxs/power-init.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index d4b88a4b2c..db597ef65c 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -1083,8 +1083,8 @@ static void mxs_power_set_vddx(const struct mxs_vddx_cfg *cfg,
 
 	if (adjust_up && cfg->bo_irq) {
 		if (powered_by_linreg) {
-			bo_int = readl(cfg->reg);
-			clrbits_le32(cfg->reg, cfg->bo_enirq);
+			bo_int = readl(&power_regs->hw_power_ctrl);
+			writel(cfg->bo_enirq, &power_regs->hw_power_ctrl_clr);
 		}
 		setbits_le32(cfg->reg, cfg->bo_offset_mask);
 	}
@@ -1126,7 +1126,7 @@ static void mxs_power_set_vddx(const struct mxs_vddx_cfg *cfg,
 		if (adjust_up && powered_by_linreg) {
 			writel(cfg->bo_irq, &power_regs->hw_power_ctrl_clr);
 			if (bo_int & cfg->bo_enirq)
-				setbits_le32(cfg->reg, cfg->bo_enirq);
+				writel(cfg->bo_enirq, &power_regs->hw_power_ctrl_set);
 		}
 
 		clrsetbits_le32(cfg->reg, cfg->bo_offset_mask,
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
