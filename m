Delivery-date: Thu, 09 Apr 2026 16:16:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAqB8-00AJua-16
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 16:16:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAqB7-0002bJ-MY
	for lore@pengutronix.de; Thu, 09 Apr 2026 16:16:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E7DFXE0CKeyxpjSPZ/SAaUu/4GZbfNXrlZuPMV5rljA=; b=DxyV3dY+NodIVZ2VLoG/b83CdH
	tl1PxXr9ACsNxRCECHka14X2g2EPT2n8fF1FzOXfzLZfKu9MYVLL63pX3LIbiw9VeBrqVDGBBoro0
	wjRWRXoyqcNpw60vz3sGZqwGlzGZ4N+GUg1o++9vynt94qK5CZIdmSbXcgiQBPfrmIRtb1+Y+zFqo
	edOyyLsZ8lZq41FR/WkaOdQjnwH4gkCLdWH7ZVq2/l3qxdZ/uJtJGxyPVaxDBzKt/3HAqVxdPhccB
	FK5OmWwh45cLOnpmZfhqy212roqqrr05T/p8wnNbT7gyt5q+llFHrIMK6iDQDb0Edu7W+vvMHI0JJ
	LuC/ynaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAqAZ-0000000Af53-41xj;
	Thu, 09 Apr 2026 14:15:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAqAD-0000000Aez7-18qh
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 14:15:38 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wAqAB-0002S7-I7; Thu, 09 Apr 2026 16:15:19 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 09 Apr 2026 16:15:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-socfpga-agilex5-sdhci-v1-1-d1753ac5defa@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAGy012kC/x3MQQqAIBBA0avErBswsaSuEi1ERx2ICgcikO6et
 HyL/ysIFSaBpatQ6Gbh82gY+g58dkci5NAMWulJGTWjnD5eyaFLvNMzooTsGYMZ7GwnE5SO0Nq
 rUOTn/67b+35BLbnKZwAAAA==
X-Change-ID: 20260409-socfpga-agilex5-sdhci-d4179764d02f
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_071528_611987_6993A8EA 
X-CRM114-Status: GOOD (  11.03  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: cadence: fix device tree override of host_caps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The host_caps setting in the device tree shall override the default
host_caps set by the driver to allow board specific overrides.

Move the configuration of the driver default host_caps before the call
to mci_of_parse().

mci_of_parse() still has to be called in the middle of the mci
configuration, because f_max may be set in the device tree, but is used
to calculate f_min.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/cadence-sdhci.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/cadence-sdhci.c b/drivers/mci/cadence-sdhci.c
index ccd0f36cb033..b76c04f5e087 100644
--- a/drivers/mci/cadence-sdhci.c
+++ b/drivers/mci/cadence-sdhci.c
@@ -471,13 +471,14 @@ static int sdhci_cdns_probe(struct device *dev)
 
 	dev->priv = priv;
 
+	priv->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
+	priv->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
+	priv->mci.host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
+
 	priv->mci.f_max = clk_get_rate(priv->biu_clk);
 	mci_of_parse(mci);
 	priv->mci.f_min = priv->mci.f_max / SDHCI_MAX_DIV_SPEC_300;
 
-	priv->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
-	priv->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
-	priv->mci.host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
 	if (is_sd4hc) {
 		ret = sdhci_cdns4_phy_probe(dev, priv);
 	} else {

---
base-commit: 86269eff785a915cfb96f09d9c7ec81a89d33012
change-id: 20260409-socfpga-agilex5-sdhci-d4179764d02f

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



