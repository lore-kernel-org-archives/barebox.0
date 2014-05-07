Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008K7-Sv
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:42 +0200
Message-Id: <1399449884-19089-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/14] video: i.MX IPUv3 ldb: implement i.MX53 support
To: barebox@lists.infradead.org

Configure the clock path correctly for i.MX53.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-ldb.c | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index bbdbe40..70429eb 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -190,7 +190,36 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 
 static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 {
-	return -ENOSYS;
+	struct clk *diclk, *ldbclk;
+	struct imx_ldb *ldb = imx_ldb_ch->ldb;
+	int ret, dino;
+	char *clkname;
+
+	dino = di & 0x1;
+
+	clkname = asprintf("ipu_di%d_sel", dino);
+	diclk = clk_lookup(clkname);
+	free(clkname);
+	if (IS_ERR(diclk)) {
+		dev_err(ldb->dev, "failed to get di clk: %s\n", strerror(PTR_ERR(diclk)));
+		return PTR_ERR(diclk);
+	}
+
+	clkname = asprintf("ldb_di%d_div", imx_ldb_ch->chno);
+	ldbclk = clk_lookup(clkname);
+	free(clkname);
+	if (IS_ERR(ldbclk)) {
+		dev_err(ldb->dev, "failed to get ldb clk: %s\n", strerror(PTR_ERR(ldbclk)));
+		return PTR_ERR(ldbclk);
+	}
+
+	ret = clk_set_parent(diclk, ldbclk);
+	if (ret) {
+		dev_err(ldb->dev, "failed to set display clock parent: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	return 0;
 }
 
 static struct imx_ldb_data imx_ldb_data_imx6q = {
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
