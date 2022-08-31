Delivery-date: Wed, 31 Aug 2022 14:54:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEy-002ddz-4Y
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 14:54:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEy-00072e-3b
	for lore@pengutronix.de; Wed, 31 Aug 2022 14:54:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+AtgdDO7e5yvmcpF8PuQ3N5iSt3FsfH6fRAvD0ZnF4=; b=0QT5vW4ij4arxb
	aNsiUJuiRnLbynYnfhImG643Xxe5JVVHkAKJ3wwpCnPEiAqjkngWJ5fqqKlXL0MURYNsFk9OEahOE
	v0xFWoSYdJMkbn4WEh64/Us/3Y2TBYdUPMRdXq802564J0YLGtzTVDwPtA8WfD0Qu1Vg/8X7MXjkR
	q+KrrBkmpBh+E2HitRDA7Yl6/YmO+PoF0XIZxivum2ymPhhFNmKUs+D/9zrVyO81QCZ/wKvt7qPa3
	sGCXTvJBx54jsogSupezSo1cGUQpAM6QqbDlMImv8X4X//0sZJD2NBFpflLmWI5s3/dd62rzAEWdh
	VlE1la0T2p2JSsBq7npQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDU-00694n-IH; Wed, 31 Aug 2022 12:53:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDE-0068y6-Nm
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 12:52:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND9-0006T9-2r; Wed, 31 Aug 2022 14:52:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND8-0034Op-BN; Wed, 31 Aug 2022 14:52:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND7-0091U9-Ew; Wed, 31 Aug 2022 14:52:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 31 Aug 2022 14:52:45 +0200
Message-Id: <20220831125248.2105893-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220831125248.2105893-1-s.hauer@pengutronix.de>
References: <20220831125248.2105893-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_055256_874389_3B6C06BB 
X-CRM114-Status: GOOD (  18.22  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/6] soc: imx: gpcv2: align with upstream Linux driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Bring the code closer to the upstream Linux driver to make it
better comparable to that code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 109 +++++++++++-----------------------------
 1 file changed, 29 insertions(+), 80 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 9150ed95da..3b1c715e5b 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -132,31 +132,21 @@ to_imx_pgc_domain(struct generic_pm_domain *genpd)
 static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 {
 	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
-	bool on = true;
-	unsigned int offset = on ?
-		GPC_PU_PGC_SW_PUP_REQ : GPC_PU_PGC_SW_PDN_REQ;
-	const bool enable_power_control = !on;
-	const bool has_regulator = !IS_ERR(domain->regulator);
 	u32 reg_val;
-	int ret = 0;
+	int ret;
 
 	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
 			   domain->bits.map, domain->bits.map);
 
-	if (has_regulator && on) {
+	if (!IS_ERR(domain->regulator)) {
 		ret = regulator_enable(domain->regulator);
 		if (ret) {
 			dev_err(domain->dev, "failed to enable regulator\n");
-			goto unmap;
+			goto out_unmap;
 		}
 	}
 
-	if (enable_power_control) {
-		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
-	}
-
-	regmap_update_bits(domain->regmap, offset,
+	regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
 			   domain->bits.pxx, domain->bits.pxx);
 
 	/*
@@ -164,71 +154,41 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 	 * for PUP_REQ/PDN_REQ bit to be cleared
 	 */
 	ret = regmap_read_poll_timeout(domain->regmap,
-				       offset, reg_val,
+				       GPC_PU_PGC_SW_PUP_REQ, reg_val,
 				       !(reg_val & domain->bits.pxx),
 				       MSECOND);
 	if (ret < 0) {
 		dev_err(domain->dev, "falied to command PGC\n");
-		/*
-		 * If we were in a process of enabling a
-		 * domain and failed we might as well disable
-		 * the regulator we just enabled. And if it
-		 * was the opposite situation and we failed to
-		 * power down -- keep the regulator on
-		 */
-		on = !on;
+		goto out_regulator_disable;
 	}
 
-	if (enable_power_control) {
-		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
-	}
+	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+			   domain->bits.map, 0);
 
-	if (has_regulator && !on) {
-		int err;
+	return 0;
 
-		err = regulator_disable(domain->regulator);
-		if (err)
-			dev_err(domain->dev,
-				"failed to disable regulator: %d\n", ret);
-		/* Preserve earlier error code */
-		ret = ret ?: err;
-	}
-unmap:
+out_regulator_disable:
+	if (!IS_ERR(domain->regulator))
+		regulator_disable(domain->regulator);
+out_unmap:
 	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
 			   domain->bits.map, 0);
-
 	return ret;
 }
 
 static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 {
 	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
-	bool on = false;
-	unsigned int offset = on ?
-		GPC_PU_PGC_SW_PUP_REQ : GPC_PU_PGC_SW_PDN_REQ;
-	const bool enable_power_control = !on;
-	const bool has_regulator = !IS_ERR(domain->regulator);
 	u32 reg_val;
-	int ret = 0;
+	int ret;
 
 	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
 			   domain->bits.map, domain->bits.map);
 
-	if (has_regulator && on) {
-		ret = regulator_enable(domain->regulator);
-		if (ret) {
-			dev_err(domain->dev, "failed to enable regulator\n");
-			goto unmap;
-		}
-	}
-
-	if (enable_power_control) {
-		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
-	}
+	regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+			   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
 
-	regmap_update_bits(domain->regmap, offset,
+	regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
 			   domain->bits.pxx, domain->bits.pxx);
 
 	/*
@@ -236,37 +196,26 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 	 * for PUP_REQ/PDN_REQ bit to be cleared
 	 */
 	ret = regmap_read_poll_timeout(domain->regmap,
-				       offset, reg_val,
+				       GPC_PU_PGC_SW_PDN_REQ, reg_val,
 				       !(reg_val & domain->bits.pxx),
 				       MSECOND);
 	if (ret < 0) {
 		dev_err(domain->dev, "falied to command PGC\n");
-		/*
-		 * If we were in a process of enabling a
-		 * domain and failed we might as well disable
-		 * the regulator we just enabled. And if it
-		 * was the opposite situation and we failed to
-		 * power down -- keep the regulator on
-		 */
-		on = !on;
+		goto out_regulator_disable;
 	}
 
-	if (enable_power_control) {
-		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
-	}
+	regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+			   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
 
-	if (has_regulator && !on) {
-		int err;
+	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+			   domain->bits.map, 0);
+
+	return 0;
+
+out_regulator_disable:
+	if (!IS_ERR(domain->regulator))
+		regulator_disable(domain->regulator);
 
-		err = regulator_disable(domain->regulator);
-		if (err)
-			dev_err(domain->dev,
-				"failed to disable regulator: %d\n", ret);
-		/* Preserve earlier error code */
-		ret = ret ?: err;
-	}
-unmap:
 	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
 			   domain->bits.map, 0);
 
-- 
2.30.2



