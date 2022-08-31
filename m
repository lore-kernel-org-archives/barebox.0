Delivery-date: Wed, 31 Aug 2022 14:54:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEy-002de0-Hd
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 14:54:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEy-00072o-91
	for lore@pengutronix.de; Wed, 31 Aug 2022 14:54:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5S+k7CEEf4qQ44qLblHza+ZhRBovOihT4uXzl5Y3Tso=; b=G1mXKtonCVAXDG
	fsZZ3ISzkXWT5em7XaQmi06Xq+yG6uQbxI/FZEqjTN4+QnhwO9qi9qerEZuka8i9+IN9Niofaae28
	Y2cqzVvfvPAd2YpQhl+gQUnBE7pKZn9zp9VOoneJGa+0m+4zQftJ80XcGaDvDiOkkJVKALn6hGisi
	lMmHBazhKB+etA9vgl1Py6odfRNHuvs36XjpQrtqDGOOjGUrH1Wv0s5hEnFejhzCirTlJ1slnZPv/
	3oyYPTMTITeDcqys5OzX4OTF+Sopio7LHIIyK/EHpGWGRWAmmCupNOGUeEv260E3SdU0574f+jv9t
	oeYxGCKs9SDo7DWQpCoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDP-006935-Jz; Wed, 31 Aug 2022 12:53:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDE-0068y3-IZ
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 12:52:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND8-0006T8-SZ; Wed, 31 Aug 2022 14:52:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND8-0034Ol-4o; Wed, 31 Aug 2022 14:52:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND7-0091Sl-BW; Wed, 31 Aug 2022 14:52:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 31 Aug 2022 14:52:43 +0200
Message-Id: <20220831125248.2105893-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220831125248.2105893-1-s.hauer@pengutronix.de>
References: <20220831125248.2105893-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_055256_633120_9243C605 
X-CRM114-Status: GOOD (  16.40  )
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
Subject: [PATCH 1/6] soc: imx: gpcv2: switch to regmap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The Kernel driver uses regmap, so switch to regmap as well to get the
code closer to the kernel code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 55 ++++++++++++++++++++++++-----------------
 1 file changed, 32 insertions(+), 23 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index a0e78ce55e..4e2a687634 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -10,12 +10,14 @@
 
 #include <of_device.h>
 #include <common.h>
+#include <regmap.h>
 #include <clock.h>
 #include <abort.h>
 #include <malloc.h>
 #include <io.h>
 #include <init.h>
 #include <linux/iopoll.h>
+#include <linux/sizes.h>
 
 #include <pm_domain.h>
 #include <regulator.h>
@@ -102,7 +104,7 @@
 
 struct imx_pgc_domain {
 	struct generic_pm_domain genpd;
-	void __iomem *base;
+	struct regmap *regmap;
 	struct regulator *regulator;
 
 	unsigned int pgc;
@@ -131,12 +133,11 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 		GPC_PU_PGC_SW_PUP_REQ : GPC_PU_PGC_SW_PDN_REQ;
 	const bool enable_power_control = !on;
 	const bool has_regulator = !IS_ERR(domain->regulator);
+	u32 reg_val;
 	int ret = 0;
-	unsigned int mapping, ctrl = 0, pxx;
 
-	mapping = readl(domain->base + GPC_PGC_CPU_MAPPING);
-	mapping |= domain->bits.map;
-	writel(mapping, domain->base + GPC_PGC_CPU_MAPPING);
+	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+			   domain->bits.map, domain->bits.map);
 
 	if (has_regulator && on) {
 		ret = regulator_enable(domain->regulator);
@@ -147,21 +148,21 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 	}
 
 	if (enable_power_control) {
-		ctrl = readl(domain->base + GPC_PGC_CTRL(domain->pgc));
-		ctrl |= GPC_PGC_CTRL_PCR;
-		writel(ctrl, domain->base + GPC_PGC_CTRL(domain->pgc));
+		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
 	}
 
-	pxx = readl(domain->base + offset);
-	pxx |= domain->bits.pxx;
-	writel(pxx, domain->base + offset);
+	regmap_update_bits(domain->regmap, offset,
+			   domain->bits.pxx, domain->bits.pxx);
 
 	/*
 	 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
 	 * for PUP_REQ/PDN_REQ bit to be cleared
 	 */
-	ret = readl_poll_timeout(domain->base + offset, pxx,
-				 !(pxx & domain->bits.pxx), MSECOND);
+	ret = regmap_read_poll_timeout(domain->regmap,
+				       offset, reg_val,
+				       !(reg_val & domain->bits.pxx),
+				       MSECOND);
 	if (ret < 0) {
 		dev_err(domain->dev, "falied to command PGC\n");
 		/*
@@ -175,8 +176,8 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 	}
 
 	if (enable_power_control) {
-		ctrl &= ~GPC_PGC_CTRL_PCR;
-		writel(ctrl, domain->base + GPC_PGC_CTRL(domain->pgc));
+		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
 	}
 
 	if (has_regulator && !on) {
@@ -190,8 +191,8 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 		ret = ret ?: err;
 	}
 unmap:
-	mapping &= ~domain->bits.map;
-	writel(mapping, domain->base + GPC_PGC_CPU_MAPPING);
+	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+			   domain->bits.map, 0);
 
 	return ret;
 }
@@ -425,10 +426,18 @@ coredevice_platform_driver(imx_pgc_domain_driver);
 
 static int imx_gpcv2_probe(struct device_d *dev)
 {
-	static const struct imx_pgc_domain_data *domain_data;
+	const struct imx_pgc_domain_data *domain_data =
+			of_device_get_match_data(dev);
+
+	struct regmap_config regmap_config = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+		.max_register   = SZ_4K,
+	};
 	struct device_node *pgc_np, *np;
 	struct resource *res;
-	void __iomem *base;
+	struct regmap *regmap;
 	int ret, pass = 0;
 
 	pgc_np = of_get_child_by_name(dev->device_node, "pgc");
@@ -441,9 +450,9 @@ static int imx_gpcv2_probe(struct device_d *dev)
 	if (IS_ERR(res))
 		return PTR_ERR(res);
 
-	base = IOMEM(res->start);
-
-	domain_data = of_device_get_match_data(dev);
+	regmap = regmap_init_mmio(dev, IOMEM(res->start), &regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap), "failed to init regmap\n");
 
 	/*
 	 * Run two passes for the registration of the PGC domain platform
@@ -477,7 +486,7 @@ again:
 
 		domain = xmemdup(&domain_data->domains[domain_index],
 				 sizeof(domain_data->domains[domain_index]));
-		domain->base = base;
+		domain->regmap = regmap;
 		domain->genpd.power_on = imx_gpc_pu_pgc_sw_pup_req;
 		domain->genpd.power_off = imx_gpc_pu_pgc_sw_pdn_req;
 
-- 
2.30.2



