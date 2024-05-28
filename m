Delivery-date: Tue, 28 May 2024 17:40:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywD-000x9L-1C
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 17:40:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywC-0002Ar-Dx
	for lore@pengutronix.de; Tue, 28 May 2024 17:40:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ol9Vp2wt/aoc1G5aBaYo9WI2s1T7rj0QDBJXRNjqmqM=; b=pZFGAqU0Uztstqbz+U5LWIfOod
	Kp1Ore+pVu/EHTsorvjzkz9MqSGzTBZKCE3NalzkuqtP7a7HgkfgxqdPaOBmCyd4/fipZmcon4IfM
	MZMubPyXW9QJOu/JpjabHAjqwIY0UEMQ7JieDbXH7g8UzfPP5HKhVD3UiY7crCr9RjekiZyE1qMPI
	Sw1N9bFQ5uHeObBLAyR7iGehDIYngBjUHS1WAyB/+nh38aRFtRBc/R0DIvXRgO0UdNDA/E/JxbZpQ
	DG2V4X386Zcqu5tDpDR8cupVIwEhCWbeJzcQz51R3J+XvzsZpGUOBq33SFFvWA9XJCTVxqao0dDye
	LgvqFzQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvc-00000001H1v-44fC;
	Tue, 28 May 2024 15:39:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvX-00000001GyN-1Xrp
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 15:39:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvT-0001fx-6a; Tue, 28 May 2024 17:39:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-003LXi-LR; Tue, 28 May 2024 17:39:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-00BFIe-1n;
	Tue, 28 May 2024 17:39:46 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 28 May 2024 17:39:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-feature-mmc-cid-as-parameters-v1-8-e5dc0c1d3eaa@pengutronix.de>
References: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
In-Reply-To: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_083951_448505_8D14BFC1 
X-CRM114-Status: GOOD (  10.49  )
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
Subject: [PATCH 8/9] mci: core: fix extract_oid and write to string buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The oem id (OID) field is a 2 character long ASCII string for SD cards
and a 8-bit binary number for MMC cards. Both are used in their string
representation.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/mci/mci-core.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2f0f4c25f8..8907e9dc83 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1932,11 +1932,18 @@ static unsigned extract_cbx(struct mci *mci)
  * Extract the OEM/Application ID from the CID
  * @param mci Instance data
  *
- * The 'OID' is encoded in bit 119:104 in the CID
+ * The 'OID' is encoded in bit 119:104 in the CID for SD cards and 111:104 for
+ * MMC cards
  */
-static unsigned extract_oid(struct mci *mci)
+static void extract_oid(struct mci *mci, char oid[static 5])
 {
-	return (mci->cid[0] >> 8) & 0xffff;
+	if (IS_SD(mci)) {
+		// SD cards have a 2 character long OEM ID
+		snprintf(oid, 5, "%c%c", UNSTUFF_BITS(mci->cid, 112, 8), UNSTUFF_BITS(mci->cid, 104, 8));
+	} else {
+		// MMC cards have a 8-bit binary number as OEM ID
+		snprintf(oid, 5, "0x%02X", UNSTUFF_BITS(mci->cid, 104, 8));
+	}
 }
 
 /**
@@ -2136,7 +2143,8 @@ static void mci_parse_cid(struct mci *mci) {
 	char buffer[8];
 
 	dev_add_param_uint32_fixed(dev, "cid_mid", extract_mid(mci), "0x%02X");
-	dev_add_param_uint32_fixed(dev, "cid_oid", extract_oid(mci), "0x%04X");
+	extract_oid(mci, buffer);
+	dev_add_param_string_fixed(dev, "cid_oid", buffer);
 	if (!IS_SD(mci))
 		dev_add_param_uint32_fixed(dev, "cid_cbx", extract_cbx(mci), "%u");
 	extract_pnm(mci, buffer);

-- 
2.39.2



