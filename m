Delivery-date: Fri, 03 Mar 2023 14:46:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5kK-007aTI-Bx
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 14:46:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5kJ-0005e0-Rl
	for lore@pengutronix.de; Fri, 03 Mar 2023 14:46:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eUQBQ5XAwC6WCT0UFjnvGZKfMNXbc3zx91USCqHF8p0=; b=Tt8UsICSlIYnnFiXEsEvMP8f6L
	zwalAN5ClznUao/ssnPXaAxiLgkjrdgimLTZccMR69IAVhKcysbXUAloV38MG1xfW2e3lDfmBwyty
	haePm97uAa48EPfTOTVgWq1ErOnMmesrH1eEbcCDo3/VZihhE2TqtYOxjA28QDHA6gXynPIq8EwWv
	xtJckKEYPcNRkayOk0glN/OfOwRKzNqltOrhtn2PuE9ch2ZjdsVTuZIMmroq1+4NVCvrgKfWG0SsP
	OqVP/bcqlltu7ixM3E0NaSi/1v+TJbyC5hC9mMT2veZUmP1/IaMIC167EFIDx9ianrH2/+//QYT5F
	PGnD+fnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5jD-006VzM-Na; Fri, 03 Mar 2023 13:45:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5j8-006Vxy-Vu
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 13:45:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY5j4-0005MH-DC; Fri, 03 Mar 2023 14:45:34 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY5j3-001ZWN-Ot; Fri, 03 Mar 2023 14:45:33 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY5j2-000Qbk-UZ; Fri, 03 Mar 2023 14:45:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 14:45:30 +0100
Message-Id: <20230303134530.102237-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_054539_060887_32D7A526 
X-CRM114-Status: GOOD (  13.32  )
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
Subject: [PATCH] usb: dwc3: Use clk_bulk_get_all()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The binding described three clocks, but not all SoCs actually provide
all three clocks. For example Xilinx Zynqmp doesn't have s suspend
clock. Use clk_bulk_get_all() to get all clocks that are actually
there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/core.c | 44 ++++-------------------------------------
 1 file changed, 4 insertions(+), 40 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index bf71038133..a3388d4dd6 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -23,11 +23,6 @@
 
 #define DWC3_DEFAULT_AUTOSUSPEND_DELAY	5000 /* ms */
 
-struct dwc3_match_data {
-	const struct clk_bulk_data	*clks;
-	const int			num_clks;
-};
-
 /**
  * dwc3_get_dr_mode - Validates and sets dr_mode
  * @dwc: pointer to our context structure
@@ -1099,29 +1094,23 @@ static void dwc3_coresoft_reset(struct dwc3 *dwc)
 
 static int dwc3_probe(struct device *dev)
 {
-	const struct dwc3_match_data *match;
 	struct dwc3		*dwc;
 	int			ret;
 
 	dwc = xzalloc(sizeof(*dwc));
 	dev->priv = dwc;
 
-	match = device_get_match_data(dev);
-	dwc->clks = xmemdup(match->clks, match->num_clks *
-			    sizeof(struct clk_bulk_data));
 	dwc->dev = dev;
 	dwc->regs = dev_get_mem_region(dwc->dev, 0) + DWC3_GLOBALS_REGS_START;
 
 	dwc3_get_properties(dwc);
 
 	if (dev->of_node) {
-		dwc->num_clks = match->num_clks;
+		ret = clk_bulk_get_all(dev, &dwc->clks);
+		if (ret < 0)
+			return ret;
 
-		if (of_find_property(dev->of_node, "clocks", NULL)) {
-			ret = clk_bulk_get(dev, dwc->num_clks, dwc->clks);
-			if (ret)
-				return ret;
-		}
+		dwc->num_clks = ret;
 	}
 
 	ret = clk_bulk_enable(dwc->num_clks, dwc->clks);
@@ -1180,40 +1169,15 @@ static void dwc3_remove(struct device *dev)
 	clk_bulk_put(dwc->num_clks, dwc->clks);
 }
 
-static const struct clk_bulk_data dwc3_core_clks[] = {
-	{ .id = "ref" },
-	{ .id = "bus_early" },
-	{ .id = "suspend" },
-};
-
-static const struct dwc3_match_data dwc3_default = {
-	.clks = dwc3_core_clks,
-	.num_clks = ARRAY_SIZE(dwc3_core_clks),
-};
-
-static const struct clk_bulk_data dwc3_core_clks_rk3568[] = {
-	{ .id = "ref_clk" },
-	{ .id = "bus_clk" },
-	{ .id = "suspend_clk" },
-};
-
-static const struct dwc3_match_data dwc3_rk3568 = {
-	.clks = dwc3_core_clks_rk3568,
-	.num_clks = ARRAY_SIZE(dwc3_core_clks_rk3568),
-};
-
 static const struct of_device_id of_dwc3_match[] = {
 	{
 		.compatible = "snps,dwc3",
-		.data = &dwc3_default,
 	},
 	{
 		.compatible = "synopsys,dwc3",
-		.data = &dwc3_default,
 	},
 	{
 		.compatible = "rockchip,rk3568-dwc3",
-		.data = &dwc3_rk3568,
 	},
 	{ },
 };
-- 
2.30.2



