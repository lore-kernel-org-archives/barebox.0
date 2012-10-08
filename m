Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFX-00058U-MX
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:14 +0200
Message-Id: <1349725459-20226-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/10] ARM i.MX25: Enable all needed clocks during startup
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx25.c |   16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 3b9588c..3a141c2 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -76,9 +76,19 @@ static int imx25_ccm_probe(struct device_d *dev)
 
 	base = dev_request_mem_region(dev, 0);
 
-	writel(0x10e88578, base + CCM_CGCR0);
-	writel(0x0478e1e0, base + CCM_CGCR0);
-	writel(0x0007c400, base + CCM_CGCR0);
+	writel((1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 8) | (1 << 9) |
+			(1 << 10) | (1 << 15) |	(1 << 19) | (1 << 21) | (1 << 22) |
+			(1 << 22) | (1 << 23) | (1 << 24) | (1 << 28),
+			base + CCM_CGCR0);
+
+	writel((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8) | (1 << 13) | (1 << 14) |
+			(1 << 15) | (1 << 19) | (1 << 20) | (1 << 21) | (1 << 22) |
+			(1 << 26) | (1 << 29) | (1 << 31),
+			base + CCM_CGCR1);
+
+	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 10) | (1 << 13) | (1 << 14) |
+			(1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
+			base + CCM_CGCR2);
 
 	clks[dummy] = clk_fixed("dummy", 0);
 	clks[osc] = clk_fixed("osc", 24000000);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
