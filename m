Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGu3I-0003BB-NM
 for barebox@lists.infradead.org; Fri, 21 Feb 2014 17:38:22 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Fri, 21 Feb 2014 18:37:57 +0100
Message-Id: <1393004277-9417-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH] ARM i.MX6: Gate clocks to graphics processing units
To: barebox@lists.infradead.org

This patch gates the clocks to GPU, IPU, and VPU units by default,
significantly reducing the VDDSOC power draw while barebox is running.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index c32b6cc..ac86074 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -307,12 +307,12 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[enfc_podf], MX6_GPMI_BASE_ADDR, NULL);
 
 	writel(0xffffffff, ccm_base + CCGR0);
-	writel(0xffffffff, ccm_base + CCGR1);
+	writel(0xf0ffffff, ccm_base + CCGR1); /* gate GPU3D, GPU2D */
 	writel(0xffffffff, ccm_base + CCGR2);
-	writel(0xffffffff, ccm_base + CCGR3);
+	writel(0x3fff0000, ccm_base + CCGR3); /* gate OpenVG, LDB, IPU1, IPU2 */
 	writel(0xffffffff, ccm_base + CCGR4);
 	writel(0xffffffff, ccm_base + CCGR5);
-	writel(0xffffffff, ccm_base + CCGR6);
+	writel(0xffff3fff, ccm_base + CCGR6); /* gate VPU */
 	writel(0xffffffff, ccm_base + CCGR7);
 
 	clk_enable(clks[pll6_enet]);
-- 
1.9.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
