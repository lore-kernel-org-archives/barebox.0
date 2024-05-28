Delivery-date: Tue, 28 May 2024 17:40:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywD-000x9d-2G
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 17:40:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywC-0002Be-P9
	for lore@pengutronix.de; Tue, 28 May 2024 17:40:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=93RHI78qXwTosWa7O88BsG2TaP+AsQLJBkmabQey0ag=; b=DO6p8JD8SgZ8aQgPqxs2WSTqqo
	g2ysoWSsfjPMphtTKct+EiNMpJ6ydJ3MhyZlJxfkvfChwUb+iOL0ngJ9j1u728xIchuVgvrDcM7Xp
	VBf34Btbxei9LG8ABVGDwUaiBjrSt/G3A6AeQFFBG8jf1yNo+zH5Wvq75NXV7mRjmVqPsk9RK5Jza
	5LaXNBsVGnxF4O0Z0qkBz38i2SnVYQxT03hqkQxWSAdBdPZZPe/iJgQJFyhIUOHpq7oVfmzoEbEhA
	47QL0GurzWDUQ86pAwYsmVtGEvzW39mAnC9tN4KJ0ET5C0zpn4P6TGjCvMoN+4ARIDzrVWNLx+0jp
	zTNth+Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvn-00000001H7k-0458;
	Tue, 28 May 2024 15:40:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvc-00000001H1g-2wQM
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 15:39:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvT-0001fw-A6; Tue, 28 May 2024 17:39:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-003LXg-LJ; Tue, 28 May 2024 17:39:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-00BFIe-1l;
	Tue, 28 May 2024 17:39:46 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 28 May 2024 17:39:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-feature-mmc-cid-as-parameters-v1-6-e5dc0c1d3eaa@pengutronix.de>
References: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
In-Reply-To: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_083956_969785_D9DFCD18 
X-CRM114-Status: GOOD (  11.31  )
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
Subject: [PATCH 6/9] mci: core: fix extract_prv and write to string buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The product revision PRV field has a slightly different position for MMC
and SD cards. As we almost certainly don't want to use the BCD
representation for scripting the PRV is printed in a human friendly
representation.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/mci/mci-core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index d1c425dda6..5e686c17d2 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1968,11 +1968,13 @@ static void extract_pnm(struct mci *mci, char pnm[static 7])
  * Extract the product revision from the CID
  * @param mci Instance data
  *
- * The 'PRV' is encoded in bit 63:56 in the CID
+ * The 'PRV' is encoded in bit 63:56 in the CID for SD cards and 55:48 for MMC cards
  */
-static unsigned extract_prv(struct mci *mci)
+static void extract_prv(struct mci *mci, char prv[static 8])
 {
-	return mci->cid[2] >> 24;
+	unsigned prv_bcd = IS_SD(mci) ? UNSTUFF_BITS(mci->cid, 56, 8) : UNSTUFF_BITS(mci->cid, 48, 8);
+
+	snprintf(prv, 8,"%u.%u", prv_bcd >> 4, prv_bcd & 0xf);
 }
 
 /**
@@ -2130,14 +2132,12 @@ static void mci_info(struct device *dev)
 static void mci_parse_cid(struct mci *mci) {
 	struct device *dev = &mci->dev;
 	char buffer[8];
-	unsigned int prv;
 
 	dev_add_param_uint32_fixed(dev, "cid_mid", extract_mid(mci), "0x%02X");
 	dev_add_param_uint32_fixed(dev, "cid_oid", extract_oid(mci), "0x%04X");
 	extract_pnm(mci, buffer);
 	dev_add_param_string_fixed(dev, "cid_pnm", buffer);
-	prv = extract_prv(mci);
-	snprintf(buffer, sizeof(buffer), "%u.%u", (prv >> 4) & 0xf, prv & 0xf);
+	extract_prv(mci, buffer);
 	dev_add_param_string_fixed(dev, "cid_prv", buffer);
 	dev_add_param_uint32_fixed(dev, "cid_psn", extract_psn(mci), "%0u");
 	extract_mdt(mci, buffer);

-- 
2.39.2



