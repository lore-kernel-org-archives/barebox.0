Delivery-date: Tue, 28 May 2024 17:40:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywB-000x8o-2B
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 17:40:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywA-00029M-PZ
	for lore@pengutronix.de; Tue, 28 May 2024 17:40:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hVNg1X8LyR7J/HJlJQq+9PcL2eGlvyI1o8JgmX+G6L4=; b=RQR/sBHRMJqAMrKZuUeWFyPnpS
	Hq901Zjzs+wI6sskNfWmYRX4FVFp/srjkk0epxwsm3+Ru6CLPIyXxtBG9D8JKKOR1m3rFUE8t6RnH
	Xz8dnXyxcyB2CPov1S0bifThxADxTdT6gZcAlDyMiO2mTvTy9jQdxGOrK0hFozSp1p4PNL25Iz92C
	Mm8UNSwoqiA3+GA4y9Giv2uuPk40DE5wUJd2P0j3laTguQFy+SuAfH9BrmpAcNO1avkZk84ciKDko
	HqP+HKYziWKluQ0VuqVfYAoJzhcC6lZ3aWMloc0kl8Bdtt6xiNBzzIbog5eLtRcBwwNHwLatvMlt4
	NquSuDCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvh-00000001H3v-0WZ2;
	Tue, 28 May 2024 15:40:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvX-00000001GyQ-1vsj
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 15:39:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvT-0001fs-AP; Tue, 28 May 2024 17:39:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-003LXd-Kh; Tue, 28 May 2024 17:39:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-00BFIe-1i;
	Tue, 28 May 2024 17:39:46 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 28 May 2024 17:39:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-feature-mmc-cid-as-parameters-v1-3-e5dc0c1d3eaa@pengutronix.de>
References: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
In-Reply-To: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_083951_667984_7F1452C4 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/9] mci: core: add product name extraction function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The product name field PNM is available for both SD cards (len=5) and
MMC cards (len=6). The currently used method doesn't respect the length
for MMC cards.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/mci/mci-core.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2a71fdd39a..df72445edd 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1939,6 +1939,31 @@ static unsigned extract_oid(struct mci *mci)
 	return (mci->cid[0] >> 8) & 0xffff;
 }
 
+/**
+ * Extract the product name from the CID
+ * @param mci Instance data
+ *
+ * The 'PNM' is encoded in bit 103:64 in the CID for SD cards and 103:56 for
+ * MMC cards
+ */
+static void extract_pnm(struct mci *mci, char pnm[static 7])
+{
+	pnm[0] = UNSTUFF_BITS(mci->cid, 96, 8);
+	pnm[1] = UNSTUFF_BITS(mci->cid, 88, 8);
+	pnm[2] = UNSTUFF_BITS(mci->cid, 80, 8);
+	pnm[3] = UNSTUFF_BITS(mci->cid, 72, 8);
+	pnm[4] = UNSTUFF_BITS(mci->cid, 64, 8);
+
+	if (IS_SD(mci)) {
+		// SD cards have a 5 character long product name
+		pnm[5] = '\0';
+	} else {
+		// MMC cards have a 6 character long product name
+		pnm[5] = UNSTUFF_BITS(mci->cid, 56, 8);
+		pnm[6] = '\0';
+	}
+}
+
 /**
  * Extract the product revision from the CID
  * @param mci Instance data

-- 
2.39.2



