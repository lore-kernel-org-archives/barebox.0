Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFX-00058T-Jg
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:13 +0200
Message-Id: <1349725459-20226-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] ARM i.MX21: Enable all needed clocks during startup
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx21.c |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index 32c8a4c..cab5233 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -70,6 +70,16 @@ static int imx21_ccm_probe(struct device_d *dev)
 
 	base = dev_request_mem_region(dev, 0);
 
+	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5) |
+			(1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) |
+			(1 << 13) | (1 << 14) | (1 << 19) | (1 << 22) |
+			(1 << 24) | (1 << 26) |	(1 << 30),
+			base + CCM_PCCR0);
+
+	writel((1 << 23) | (1 << 24) | (1 << 25) | (1 << 26) | (1 << 27) |
+			(1 << 28) | (1 << 29) | (1 << 30) | (1 << 31),
+			base + CCM_PCCR1);
+
 	clks[ckil] = clk_fixed("ckil", lref);
 	clks[ckih] = clk_fixed("ckih", href);
 	clks[fpm] = imx_clk_fixed_factor("fpm", "ckil", 512, 1);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
