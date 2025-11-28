Delivery-date: Fri, 28 Nov 2025 11:41:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvuk-005ksu-1H
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:41:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvuj-00086q-SZ
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:41:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1r2lOGyjdw92ALvIWtg3gJJsXlQsgCLHt4Y8svwtPPg=; b=Ow0lxoXU8XkSLWDRqnrLWboNP0
	ekzzuyIix++1tPVyus2NQB+mGJ7kx3QCe5mpLnB8E6l+qNVew223pDQaXKgT0yX5gTkecjaW2xzde
	zA+HUE2yxXH7QrbU+axw8yLAQDdbWjLANjjND3a3WKvdiAtaaxuPvRiv1nk6Ey8vcMCpLtbJmj94j
	aTKPVbuCG0i6fQ1cR++4PSC535ZSRnHzyWvAJr9S4odGUzmACkGbDm8zegIBjONTKhHixnoySIDgA
	a4m2Th4AKBZGbOW0on3koxIWYNnS/iHLa4VKuXLgTLxgmqbTv+iQKf1B70La631+Xkbm9s5uvy1tb
	Y9HDXyVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvu9-00000000JAc-1k3o;
	Fri, 28 Nov 2025 10:40:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvu6-00000000JA7-3hxM
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:40:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvu5-00082H-HE
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 11:40:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvu5-002wKY-18
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:40:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvu5-00000006Ggz-0qs4
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:40:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:40:39 +0100
Message-ID: <20251128104040.1491636-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_024042_924643_1F0CEF5C 
X-CRM114-Status: GOOD (  11.09  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mci: am654-sdhci: correctly configure SLOTTYPE_EMBEDDED
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

struct am654_sdhci_plat::non_removable is set no where, so drop it in
favor of struct mci_host::non_removable, which is actually populated by
the MCI core to reflect the non-removable device tree property.

This aligns us with Linux behavior, but hasn't been tested on real
hardware.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/mci/am654-sdhci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 0b79394c529b..4ceea226f717 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -156,7 +156,6 @@ struct am654_sdhci_plat {
 	bool fails_without_test_cd;
 
 	struct regmap *base;
-	bool non_removable;
 	u32 otap_del_sel[ARRAY_SIZE(td)];
 	u32 itap_del_sel[ARRAY_SIZE(td)];
 	u32 trm_icp;
@@ -359,7 +358,7 @@ static int am654_sdhci_init(struct mci_host *mci, struct device *dev)
 		regmap_update_bits(plat->base, PHY_CTRL1, IOMUX_ENABLE_MASK, 0);
 
 	/* Set slot type based on SD or eMMC */
-	if (plat->non_removable)
+	if (mci->non_removable)
 		ctl_cfg_2 = SLOTTYPE_EMBEDDED;
 
 	regmap_update_bits(plat->base, CTL_CFG_2, SLOTTYPE_MASK, ctl_cfg_2);
-- 
2.47.3



