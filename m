Delivery-date: Wed, 31 Aug 2022 14:54:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEw-002dde-NV
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 14:54:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEw-00071v-FR
	for lore@pengutronix.de; Wed, 31 Aug 2022 14:54:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzXTZVy2YZ6kZToAH90alJzjyGKEcg1bcXRcs7SAEpE=; b=ue7TtvhPdLFB5+
	6sbguAml8pESw7dekEb0Ob5MJt3myHChylNk4fWgtBmzA7zkxy+vGxVsI0o0bpgEBIBrAnZPVsR/r
	EhVNQEX7sxdfdsI+VZ+tyT36YUBowesTMubHw6kS1kK8PqGTXVwENQqoYQfYxCdwal4DpsyMy4Qiz
	IkaSwCmY9LkKu2lTaiMSyH67YCw9URgF+Quf54bYASFnQ7qJOeh8AJrMcW5WRGrAgsUVmwUjoQ+KJ
	h9zAmqjAZegRosytwxcy+YJB9NqE5TbZyNlTmoCE/qy9lUFuavGTv5VsNEQ6SP4niJhBYYnSmWwKk
	BDZY4Hh1ZxuHnY11QqyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDR-00693l-Sr; Wed, 31 Aug 2022 12:53:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDE-0068y2-M1
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 12:52:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND8-0006T7-Qe; Wed, 31 Aug 2022 14:52:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND8-0034Oj-3M; Wed, 31 Aug 2022 14:52:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND7-0091TH-D6; Wed, 31 Aug 2022 14:52:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 31 Aug 2022 14:52:44 +0200
Message-Id: <20220831125248.2105893-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220831125248.2105893-1-s.hauer@pengutronix.de>
References: <20220831125248.2105893-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_055256_781746_57648753 
X-CRM114-Status: GOOD (  18.82  )
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
Subject: [PATCH 2/6] soc: imx: gpcv2: split power_up/power_off
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Splitting a single power function into power_up/power_off makes the
code easier to follow. The kernel uses the same approach, so do it
for barebox as well. This only splits up the functions into two without
functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 92 +++++++++++++++++++++++++++++++++++------
 1 file changed, 79 insertions(+), 13 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 4e2a687634..9150ed95da 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -123,12 +123,16 @@ struct imx_pgc_domain_data {
        size_t domains_num;
 };
 
-static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
-				      bool on)
+static inline struct imx_pgc_domain *
+to_imx_pgc_domain(struct generic_pm_domain *genpd)
 {
-	struct imx_pgc_domain *domain = container_of(genpd,
-						     struct imx_pgc_domain,
-						     genpd);
+	return container_of(genpd, struct imx_pgc_domain, genpd);
+}
+
+static int imx_pgc_power_up(struct generic_pm_domain *genpd)
+{
+	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
+	bool on = true;
 	unsigned int offset = on ?
 		GPC_PU_PGC_SW_PUP_REQ : GPC_PU_PGC_SW_PDN_REQ;
 	const bool enable_power_control = !on;
@@ -197,14 +201,76 @@ unmap:
 	return ret;
 }
 
-static int imx_gpc_pu_pgc_sw_pup_req(struct generic_pm_domain *genpd)
+static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 {
-	return imx_gpc_pu_pgc_sw_pxx_req(genpd, true);
-}
+	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
+	bool on = false;
+	unsigned int offset = on ?
+		GPC_PU_PGC_SW_PUP_REQ : GPC_PU_PGC_SW_PDN_REQ;
+	const bool enable_power_control = !on;
+	const bool has_regulator = !IS_ERR(domain->regulator);
+	u32 reg_val;
+	int ret = 0;
 
-static int imx_gpc_pu_pgc_sw_pdn_req(struct generic_pm_domain *genpd)
-{
-	return imx_gpc_pu_pgc_sw_pxx_req(genpd, false);
+	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+			   domain->bits.map, domain->bits.map);
+
+	if (has_regulator && on) {
+		ret = regulator_enable(domain->regulator);
+		if (ret) {
+			dev_err(domain->dev, "failed to enable regulator\n");
+			goto unmap;
+		}
+	}
+
+	if (enable_power_control) {
+		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
+	}
+
+	regmap_update_bits(domain->regmap, offset,
+			   domain->bits.pxx, domain->bits.pxx);
+
+	/*
+	 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
+	 * for PUP_REQ/PDN_REQ bit to be cleared
+	 */
+	ret = regmap_read_poll_timeout(domain->regmap,
+				       offset, reg_val,
+				       !(reg_val & domain->bits.pxx),
+				       MSECOND);
+	if (ret < 0) {
+		dev_err(domain->dev, "falied to command PGC\n");
+		/*
+		 * If we were in a process of enabling a
+		 * domain and failed we might as well disable
+		 * the regulator we just enabled. And if it
+		 * was the opposite situation and we failed to
+		 * power down -- keep the regulator on
+		 */
+		on = !on;
+	}
+
+	if (enable_power_control) {
+		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
+	}
+
+	if (has_regulator && !on) {
+		int err;
+
+		err = regulator_disable(domain->regulator);
+		if (err)
+			dev_err(domain->dev,
+				"failed to disable regulator: %d\n", ret);
+		/* Preserve earlier error code */
+		ret = ret ?: err;
+	}
+unmap:
+	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+			   domain->bits.map, 0);
+
+	return ret;
 }
 
 static const struct imx_pgc_domain imx7_pgc_domains[] = {
@@ -487,8 +553,8 @@ again:
 		domain = xmemdup(&domain_data->domains[domain_index],
 				 sizeof(domain_data->domains[domain_index]));
 		domain->regmap = regmap;
-		domain->genpd.power_on = imx_gpc_pu_pgc_sw_pup_req;
-		domain->genpd.power_off = imx_gpc_pu_pgc_sw_pdn_req;
+		domain->genpd.power_on = imx_pgc_power_up;
+		domain->genpd.power_off = imx_pgc_power_down;
 
 		pd_dev = xzalloc(sizeof(*pd_dev));
 		pd_dev->device_node = np;
-- 
2.30.2



