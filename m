Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXSOH-0006lY-98
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 13:18:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dXSNt-0006DK-OU
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 15:17:53 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 18 Jul 2017 15:17:52 +0200
Message-Id: <20170718131753.24879-2-l.stach@pengutronix.de>
In-Reply-To: <20170718131753.24879-1-l.stach@pengutronix.de>
References: <20170718131753.24879-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] video: IPUv3-LDB: fix dual-channel mode
To: barebox@lists.infradead.org

For the dual-channel mode to work correctly, both channels need to be
muxed to the same DI and both clock branches need to be configured
correctly.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-ldb.c | 46 +++++++++++++++++++++++++++-----------
 1 file changed, 33 insertions(+), 13 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 14a86a42c14a..33dbade87007 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -114,6 +114,7 @@ static int imx_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, struct fb_videomo
 		int di)
 {
 	struct imx_ldb *ldb = imx_ldb_ch->ldb;
+	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
 
 	ldb->soc_data->prepare(imx_ldb_ch, di, PICOS2KHZ(mode->pixclock) * 1000UL);
 
@@ -135,6 +136,10 @@ static int imx_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, struct fb_videomo
 	if (imx_ldb_ch == &ldb->channel[0]) {
 		ldb->ldb_ctrl &= ~LDB_CH0_MODE_EN_MASK;
 		ldb->ldb_ctrl |= LDB_CH0_MODE_EN_TO_DI0;
+		if (dual) {
+			ldb->ldb_ctrl &= ~LDB_CH1_MODE_EN_MASK;
+			ldb->ldb_ctrl |= LDB_CH1_MODE_EN_TO_DI0;
+		}
 	}
 
 	if (imx_ldb_ch == &ldb->channel[1]) {
@@ -147,20 +152,11 @@ static int imx_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, struct fb_videomo
 	return 0;
 }
 
-static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
-			     unsigned long pixclk)
+static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno, unsigned long pixclk)
 {
 	struct clk *diclk, *ldbclk;
-	struct imx_ldb *ldb = imx_ldb_ch->ldb;
-	int ret, ipuno, dino;
 	char *clkname;
-	void __iomem *gpr3 = (void *)MX6_IOMUXC_BASE_ADDR + 0xc;
-	uint32_t val;
-	int shift;
-	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
-
-	ipuno = ((di >> 1) & 1) + 1;
-	dino = di & 0x1;
+	int ret;
 
 	clkname = basprintf("ipu%d_di%d_sel", ipuno, dino);
 	diclk = clk_lookup(clkname);
@@ -170,7 +166,7 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 		return PTR_ERR(diclk);
 	}
 
-	clkname = basprintf("ldb_di%d_podf", imx_ldb_ch->chno);
+	clkname = basprintf("ldb_di%d_podf", chno);
 	ldbclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(ldbclk)) {
@@ -184,10 +180,34 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 		return ret;
 	}
 
+	clk_set_rate(clk_get_parent(ldbclk), pixclk);
+	clk_set_rate(ldbclk, pixclk);
+
+	return 0;
+}
+static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
+			     unsigned long pixclk)
+{
+	struct imx_ldb *ldb = imx_ldb_ch->ldb;
+	int ipuno, dino;
+
+	void __iomem *gpr3 = (void *)MX6_IOMUXC_BASE_ADDR + 0xc;
+	uint32_t val;
+	int shift;
+	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
+
+	ipuno = ((di >> 1) & 1) + 1;
+	dino = di & 0x1;
+
 	if (!dual)
 		pixclk *= 2;
 
-	clk_set_rate(clk_get_parent(ldbclk), pixclk);
+	if (dual) {
+		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk);
+		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk);
+	} else {
+		imx6q_set_clock(ldb, ipuno, dino, imx_ldb_ch->chno, pixclk);
+	}
 
 	val = readl(gpr3);
 	shift = (imx_ldb_ch->chno == 0) ? 6 : 8;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
