Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cjhjd-0007ME-UD
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 07:34:44 +0000
From: David Jander <david@protonic.nl>
Date: Fri,  3 Mar 2017 08:33:53 +0100
Message-Id: <20170303073353.27248-1-david@protonic.nl>
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
Subject: [PATCH] drivers: clk: clk-imx6.c: Don't gate LDB and IPUs
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>

Depending on CONFIG_DRIVER_VIDEO_IMX_IPUV3 to decide whether to
gate IPU clocks or not is rather fragile. Any inadvertent
dependency on the IPU (like setting the NoC AQoS registers for
i.MX6QP) will result in a freeze if CONFIG_DRIVER_VIDEO_IMX_IPUV3
is disabled.

Signed-off-by: David Jander <david@protonic.nl>
---
 drivers/clk/imx/clk-imx6.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 8ac43be..d0571bc 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -494,10 +494,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	writel(0xffffffff, ccm_base + CCGR0);
 	writel(0xf0ffffff, ccm_base + CCGR1); /* gate GPU3D, GPU2D */
 	writel(0xffffffff, ccm_base + CCGR2);
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
-		writel(0x3fffffff, ccm_base + CCGR3); /* gate OpenVG */
-	else
-		writel(0x3fff0000, ccm_base + CCGR3); /* gate OpenVG, LDB, IPU1, IPU2 */
+	writel(0x3fffffff, ccm_base + CCGR3); /* gate OpenVG */
 	if (IS_ENABLED(CONFIG_PCI_IMX6))
 		writel(0xffffffff, ccm_base + CCGR4);
 	else
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
