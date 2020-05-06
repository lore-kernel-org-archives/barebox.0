Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF3-0005vc-M3
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:04 +0200
Message-Id: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/13] net: fec_imx: Make ptp clock optional
To: Barebox List <barebox@lists.infradead.org>

The ptp clock doesn't exist on all SoCs, make it optional. In fact it
was optional before due to a bug in the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 4 ++--
 drivers/net/fec_imx.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index f814b3b960..585cdcb24c 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -705,10 +705,10 @@ static int fec_clk_get(struct fec_priv *fec)
 {
 	int i, err = 0;
 	static const char *clk_names[ARRAY_SIZE(fec->clk)] = {
-		"ipg", "ahb", "ptp"
+		"ipg", "ahb",
 	};
 	static const char *opt_clk_names[ARRAY_SIZE(fec->opt_clk)] = {
-		"enet_clk_ref", "enet_out",
+		"enet_clk_ref", "enet_out", "ptp"
 	};
 
 	for (i = 0; i < ARRAY_SIZE(fec->clk); i++) {
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index d1ac92f0e3..316eefe48f 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -121,7 +121,6 @@ enum fec_type {
 enum fec_clock {
 	FEC_CLK_IPG,
 	FEC_CLK_AHB,
-	FEC_CLK_PTP,
 
 	FEC_CLK_NUM
 };
@@ -129,6 +128,7 @@ enum fec_clock {
 enum fec_opt_clock {
 	FEC_OPT_CLK_REF,
 	FEC_OPT_CLK_OUT,
+	FEC_OPT_CLK_PTP,
 
 	FEC_OPT_CLK_NUM
 };
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
