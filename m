Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmGGF-00027U-V5
 for barebox@lists.infradead.org; Tue, 20 Sep 2016 08:18:41 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 20 Sep 2016 10:17:42 +0200
Message-Id: <1474359462-32142-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1474359462-32142-1-git-send-email-jlu@pengutronix.de>
References: <1474359462-32142-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX6: gate PCIe when unused
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 26dfd1a7e16b..8ac43bebb075 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -498,7 +498,10 @@ static int imx6_ccm_probe(struct device_d *dev)
 		writel(0x3fffffff, ccm_base + CCGR3); /* gate OpenVG */
 	else
 		writel(0x3fff0000, ccm_base + CCGR3); /* gate OpenVG, LDB, IPU1, IPU2 */
-	writel(0xffffffff, ccm_base + CCGR4);
+	if (IS_ENABLED(CONFIG_PCI_IMX6))
+		writel(0xffffffff, ccm_base + CCGR4);
+	else
+		writel(0xfffffffc, ccm_base + CCGR4); /* gate PCIe */
 	writel(0xffffffff, ccm_base + CCGR5);
 	writel(0xffff3fff, ccm_base + CCGR6); /* gate VPU */
 	writel(0xffffffff, ccm_base + CCGR7);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
