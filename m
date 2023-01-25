Delivery-date: Wed, 25 Jan 2023 10:41:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcHI-001LIC-Cq
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 10:41:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcHF-0000ch-3E
	for lore@pengutronix.de; Wed, 25 Jan 2023 10:41:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D8l88EJAQqcZlmaA5dQXVw4drOlhVSE0c5eAQsDEV9o=; b=0fW7jSIg4tsK9g4H/ulghCAGbq
	z+HJAhmaay6sweU5crjWaXDzw4umqygH7L6zURdxqWr2qtNoC3IMXRjyzSoyYJm9jnLmp1tprj7SE
	O1pbn2C612X1jw41dqIRs4HK0Q8dHlheTT2h6dcoiVmUVYJ9HS6TaiFUu7zsrxpcQN7eqwhPSJrBY
	I80aOEal8FVdxU5lftezmnA9b1+m1j+XGNUSu5tco5V7z1oGuGCFdeoZZG/GHMTxRg1EIeH02LgTi
	98/s6qwxLeKR8sToKIf+ZI1fxMOZgeUjQcxYmGvJBABShys0zmW1QXGyLaRPs1v6P4btd0Je+HXuK
	x9wrflnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcG0-006eOI-K9; Wed, 25 Jan 2023 09:39:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcFw-006eNY-HM
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 09:39:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKcFu-0000MJ-Vs; Wed, 25 Jan 2023 10:39:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pKcFv-000Ivy-8T; Wed, 25 Jan 2023 10:39:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pKcFt-00FNKJ-Oy; Wed, 25 Jan 2023 10:39:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 25 Jan 2023 10:39:40 +0100
Message-Id: <20230125093940.3663697-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_013948_589946_60E1AD78 
X-CRM114-Status: GOOD (  12.99  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] i2c: i.MX: Use initialized dev for dev_dbg()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

i2c_fsl_set_clk() is called before the i2c device has been initialized,
so the dev_dbg() messages therein show up as:

<NULL>: <i2c_fsl_set_clk> I2C_CLK=66000000, REQ DIV=660

Use the parent device instead for printing these messages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 28bd0072ad..e4b04327ee 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -102,6 +102,7 @@ struct fsl_i2c_hwdata {
 struct fsl_i2c_struct {
 	void __iomem		*base;
 	struct clk		*clk;
+	struct device		*dev;
 	struct i2c_adapter	adapter;
 	unsigned int 		disable_delay;
 	unsigned int		ifdr;	/* FSL_I2C_IFDR */
@@ -295,7 +296,7 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 	 * Translate to dfsr = 5 * Frequency / 100,000,000
 	 */
 	dfsr = (5 * (i2c_clk / 1000)) / 100000;
-	dev_dbg(&i2c_fsl->adapter.dev,
+	dev_dbg(i2c_fsl->dev,
 		"<%s> requested speed:%d, i2c_clk:%d\n", __func__,
 		rate, i2c_clk);
 	if (!dfsr)
@@ -314,12 +315,12 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 				bin_ga = (ga & 0x3) | ((ga & 0x4) << 3);
 				fdr = bin_gb | bin_ga;
 				rate = i2c_clk / est_div;
-				dev_dbg(&i2c_fsl->adapter.dev,
+				dev_dbg(i2c_fsl->dev,
 					"FDR:0x%.2x, div:%ld, ga:0x%x, gb:0x%x,"
 					" a:%d, b:%d, speed:%d\n", fdr, est_div,
 					ga, gb, a, b, rate);
 				/* Condition 2 not accounted for */
-				dev_dbg(&i2c_fsl->adapter.dev,
+				dev_dbg(i2c_fsl->dev,
 					"Tr <= %d ns\n", (b - 3 * dfsr) *
 					1000000 / (i2c_clk / 1000));
 			}
@@ -329,9 +330,9 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 		if (a == 24)
 			a += 4;
 	}
-	dev_dbg(&i2c_fsl->adapter.dev,
+	dev_dbg(i2c_fsl->dev,
 		"divider:%d, est_div:%ld, DFSR:%d\n", divider, est_div, dfsr);
-	dev_dbg(&i2c_fsl->adapter.dev, "FDR:0x%.2x, speed:%d\n", fdr, rate);
+	dev_dbg(i2c_fsl->dev, "FDR:0x%.2x, speed:%d\n", fdr, rate);
 	i2c_fsl->ifdr = fdr;
 	i2c_fsl->dfsrr = dfsr;
 }
@@ -368,9 +369,9 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 		(500000U * i2c_clk_div[i].div + (i2c_clk_rate / 2) - 1) /
 		(i2c_clk_rate / 2);
 
-	dev_dbg(&i2c_fsl->adapter.dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
+	dev_dbg(i2c_fsl->dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
 		__func__, i2c_clk_rate, div);
-	dev_dbg(&i2c_fsl->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
+	dev_dbg(i2c_fsl->dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
 		__func__, i2c_clk_div[i].val, i2c_clk_div[i].div);
 }
 #endif
@@ -564,6 +565,7 @@ static int __init i2c_fsl_probe(struct device *pdev)
 	pdata = pdev->platform_data;
 
 	i2c_fsl = xzalloc(sizeof(*i2c_fsl));
+	i2c_fsl->dev = pdev;
 
 #ifdef CONFIG_COMMON_CLK
 	i2c_fsl->clk = clk_get(pdev, NULL);
-- 
2.30.2



