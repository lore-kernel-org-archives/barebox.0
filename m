Delivery-date: Fri, 19 Dec 2025 11:37:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrr-00DAXN-1g
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:37:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrg-0005dA-Rp
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:37:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YHRP3an4iBbYtAw5la+r+97DRpmgoNNqTxWTAx8Iq8I=; b=G/pLl0beLjjx2IVehi6fgB9gq3
	KddIg5QLkLEVjVGe9OMDzKyKAAvDE44ylENyhgiSNYR2Glv8VUBNrh070J222xndNj75TULoRJz7f
	/PyxxQogK/8Pl5q1+3rE0vsj4zJ/qE/vCtyU5QPZZCXz9ET+sluLDIbUcRR6E0p+h3NxzYU35Z2ZR
	786ISjdtP0YwvmgbJNVtS0bj+EjhpNBvaizlMwaTOB4uRuJ6/TXCVkVEUzNexhkJ6cJ3Aq5IGHtIg
	qhl/2t77Zj0oNCCVGNED2v9/kV3o33STdrPcfqPqCSnIebeQyj0VI5hCijOCFwrf2AXweDa5ppoF5
	J/XSmczA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqu-0000000A5zd-1WdE;
	Fri, 19 Dec 2025 10:36:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqr-0000000A5ub-1H1N
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqp-0004Yb-GN; Fri, 19 Dec 2025 11:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqp-006RTw-0u;
	Fri, 19 Dec 2025 11:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-3VOX;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:05 +0100
Message-ID: <20251219101453.2806980-30-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023649_343312_5A9F2D7A 
X-CRM114-Status: GOOD (  12.08  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 29/49] mci: am654-sdhci: correctly configure SLOTTYPE_EMBEDDED
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

struct am654_sdhci_plat::non_removable is set no where, so drop it in
favor of struct mci_host::non_removable, which is actually populated by
the MCI core to reflect the non-removable device tree property.

This aligns us with Linux behavior, but hasn't been tested on real
hardware.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20251128104040.1491636-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 1d04259898e90e58b1ac4277d112d39f10843c13)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/am654-sdhci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 17d3f7627005..bb67c8bf4693 100644
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



