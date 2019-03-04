Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0nV2-0002XQ-LS
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 13:19:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 14:18:52 +0100
Message-Id: <20190304131853.30864-5-s.hauer@pengutronix.de>
In-Reply-To: <20190304131853.30864-1-s.hauer@pengutronix.de>
References: <20190304131853.30864-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] esdhc-xload: Add bigendian support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 72df54d685..33d78aad05 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -29,17 +29,24 @@
 
 struct esdhc {
 	void __iomem *regs;
-	int is_mx6;
+	bool is_mx6;
+	bool is_be;
 };
 
 static uint32_t esdhc_read32(struct esdhc *esdhc, int reg)
 {
-	return readl(esdhc->regs + reg);
+	if (esdhc->is_be)
+		return in_be32(esdhc->regs + reg);
+	else
+		return readl(esdhc->regs + reg);
 }
 
 static void esdhc_write32(struct esdhc *esdhc, int reg, uint32_t val)
 {
-	writel(val, esdhc->regs + reg);
+	if (esdhc->is_be)
+		out_be32(esdhc->regs + reg, val);
+	else
+		writel(val, esdhc->regs + reg);
 }
 
 static void __udelay(int us)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
