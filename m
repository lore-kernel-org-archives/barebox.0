Delivery-date: Tue, 28 May 2024 17:40:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywE-000xA2-0u
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 17:40:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywD-0002Bj-7j
	for lore@pengutronix.de; Tue, 28 May 2024 17:40:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=deiVtgYK0SveTAZNuAfV5EcCy9Hul7c4Twon3gmDkSk=; b=h3FwAy+fxt55lt1+0A7Gd5fb2F
	9jRQmgfvLm0eixrg8r5jUZRdom0VL/FGL4Xj/p68q4iHtGg9V4v1JjwVd3Snwv5TqGEa4UIe9E5DZ
	48BnNSON2F+vCv/aSUFoc4Iyzv5lu5x8bsGLnHwmLSGZLpk54BGFVgZpnoIb/ks0p6QN1kH4ELXtk
	7HJvj9hDZOLTroQGW0Yjw9lVW6sXmFK5rIMEhgT2ZcZI+sMx4NlFqalOZLUXGdlSG6NSQYLTnjfoA
	PANbK7vOZGHd7bpIsYW/+1IrYB3LC5R/SIxFXSJhlRVQf7+Q6rzPjz2vzOgO3lyJ6VfTBDCFCpoUZ
	qdNgg7kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvq-00000001HBw-0gKj;
	Tue, 28 May 2024 15:40:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvk-00000001H6L-3Mp3
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 15:40:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvT-0001fu-BZ; Tue, 28 May 2024 17:39:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-003LXf-KW; Tue, 28 May 2024 17:39:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-00BFIe-1k;
	Tue, 28 May 2024 17:39:46 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 28 May 2024 17:39:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-feature-mmc-cid-as-parameters-v1-5-e5dc0c1d3eaa@pengutronix.de>
References: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
In-Reply-To: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_084005_239807_102ECD6C 
X-CRM114-Status: UNSURE (   9.73  )
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
Subject: [PATCH 5/9] mci: core: parse cid into parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make the MMC/SD CID information accessible for scripting all
available CID fields are added as parameters during device probing. As
some fields have different data types for MMC and SD cards a string
representation is chosen these cases.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/mci/mci-core.c | 35 +++++++++++++++++++++++++----------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 48eee35f2c..d1c425dda6 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2119,16 +2119,29 @@ static void mci_info(struct device *dev)
 		mci->csd[2], mci->csd[3]);
 	printf("  Max. transfer speed: %u Hz\n", mci->tran_speed);
 	mci_print_caps(mci->card_caps);
-	printf("  Manufacturer ID: 0x%02X\n", extract_mid(mci));
-	printf("  OEM/Application ID: 0x%04X\n", extract_oid(mci));
-	printf("  Product name: '%c%c%c%c%c'\n", mci->cid[0] & 0xff,
-		(mci->cid[1] >> 24), (mci->cid[1] >> 16) & 0xff,
-		(mci->cid[1] >> 8) & 0xff, mci->cid[1] & 0xff);
-	printf("  Product revision: %u.%u\n", extract_prv(mci) >> 4,
-		extract_prv(mci) & 0xf);
-	printf("  Serial no: %0u\n", extract_psn(mci));
-	printf("  Manufacturing date: %u.%u\n", extract_mdt_month(mci),
-		extract_mdt_year(mci));
+	printf("  Manufacturer ID: %s\n", dev_get_param(dev, "cid_mid"));
+	printf("  OEM/Application ID: %s\n", dev_get_param(dev, "cid_oid"));
+	printf("  Product name: '%s'\n", dev_get_param(dev, "cid_pnm"));
+	printf("  Product revision: %s\n", dev_get_param(dev, "cid_prv"));
+	printf("  Serial no: %s\n", dev_get_param(dev, "cid_psn"));
+	printf("  Manufacturing date: %s\n", dev_get_param(dev, "cid_mdt"));
+}
+
+static void mci_parse_cid(struct mci *mci) {
+	struct device *dev = &mci->dev;
+	char buffer[8];
+	unsigned int prv;
+
+	dev_add_param_uint32_fixed(dev, "cid_mid", extract_mid(mci), "0x%02X");
+	dev_add_param_uint32_fixed(dev, "cid_oid", extract_oid(mci), "0x%04X");
+	extract_pnm(mci, buffer);
+	dev_add_param_string_fixed(dev, "cid_pnm", buffer);
+	prv = extract_prv(mci);
+	snprintf(buffer, sizeof(buffer), "%u.%u", (prv >> 4) & 0xf, prv & 0xf);
+	dev_add_param_string_fixed(dev, "cid_prv", buffer);
+	dev_add_param_uint32_fixed(dev, "cid_psn", extract_psn(mci), "%0u");
+	extract_mdt(mci, buffer);
+	dev_add_param_string_fixed(dev, "cid_mdt", buffer);
 }
 
 /**
@@ -2406,6 +2419,8 @@ static int mci_card_probe(struct mci *mci)
 			dev_add_param_bool_fixed(&mci->dev, "partitioning_completed", ret);
 	}
 
+	mci_parse_cid(mci);
+
 	dev_dbg(&mci->dev, "SD Card successfully added\n");
 
 on_error:

-- 
2.39.2



