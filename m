Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmGGF-00027T-V4
 for barebox@lists.infradead.org; Tue, 20 Sep 2016 08:18:41 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 20 Sep 2016 10:17:41 +0200
Message-Id: <1474359462-32142-2-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX6: fix clock gating
To: barebox@lists.infradead.org

Since ce6755ca1c41b8dd3b40cf3c9d6f3a1237a92720, both IPU and OpenVG are
enabled if CONFIG_DRIVER_VIDEO_IMX_IPUV3 is true, but in the other case,
only OpenVG was disabled.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index a634580c86d5..26dfd1a7e16b 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -495,9 +495,9 @@ static int imx6_ccm_probe(struct device_d *dev)
 	writel(0xf0ffffff, ccm_base + CCGR1); /* gate GPU3D, GPU2D */
 	writel(0xffffffff, ccm_base + CCGR2);
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
-		writel(0xffffffff, ccm_base + CCGR3); /* gate OpenVG */
+		writel(0x3fffffff, ccm_base + CCGR3); /* gate OpenVG */
 	else
-		writel(0x3fffffff, ccm_base + CCGR3); /* gate OpenVG, LDB, IPU1, IPU2 */
+		writel(0x3fff0000, ccm_base + CCGR3); /* gate OpenVG, LDB, IPU1, IPU2 */
 	writel(0xffffffff, ccm_base + CCGR4);
 	writel(0xffffffff, ccm_base + CCGR5);
 	writel(0xffff3fff, ccm_base + CCGR6); /* gate VPU */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
