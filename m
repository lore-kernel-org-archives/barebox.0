Delivery-date: Tue, 28 May 2024 17:40:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sByw8-000x7X-17
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 17:40:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sByw7-00026L-Of
	for lore@pengutronix.de; Tue, 28 May 2024 17:40:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Vecm/BW4EXbBIRZ9a2C/RC1LSEr04RhiI79WHwJytQ=; b=JQtU/tWXdKEu/Hl/oChfoRalNy
	JO047MQjvv1imU2TnhJ9qhgG43bWEBzElHZLKSXvbfLo+hCUnInAk7n8cNcd5Iye7mDhZYMlOy5Ys
	ubi2VKD9e0wjGPFt5FjT1aRWTcb1ZM696aMDpuXOcqhTKUIs2ZANZR/YoDAmj0jTIB7zvOFSkIYDW
	vQFvMEsoKs/N/0GFnbx5krqTTJZ/tPtDLmgaS/5HV0zUPi/An+bhie/ERKSzPUaNZcrU+/PG2I4Pq
	zppwtAKzqH2uENipn2XosP0R/hI6++HJT3Zn2unu9uy2yRlrHb1OPfM/OLCCeDf0wqwIhtn21rjHl
	iG+B3jfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvk-00000001H5Q-278v;
	Tue, 28 May 2024 15:40:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvc-00000001H1l-2vyH
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 15:39:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvT-0001fr-BV; Tue, 28 May 2024 17:39:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-003LXh-Kt; Tue, 28 May 2024 17:39:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-00BFIe-1m;
	Tue, 28 May 2024 17:39:46 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 28 May 2024 17:39:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-feature-mmc-cid-as-parameters-v1-7-e5dc0c1d3eaa@pengutronix.de>
References: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
In-Reply-To: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_083956_937790_1318CD3B 
X-CRM114-Status: UNSURE (   7.76  )
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
Subject: [PATCH 7/9] mci: core: add CBX field as parameter and print it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 5e686c17d2..2f0f4c25f8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2123,6 +2123,8 @@ static void mci_info(struct device *dev)
 	mci_print_caps(mci->card_caps);
 	printf("  Manufacturer ID: %s\n", dev_get_param(dev, "cid_mid"));
 	printf("  OEM/Application ID: %s\n", dev_get_param(dev, "cid_oid"));
+	if (!IS_SD(mci))
+		printf("  CBX: %s\n", dev_get_param(dev, "cid_cbx"));
 	printf("  Product name: '%s'\n", dev_get_param(dev, "cid_pnm"));
 	printf("  Product revision: %s\n", dev_get_param(dev, "cid_prv"));
 	printf("  Serial no: %s\n", dev_get_param(dev, "cid_psn"));
@@ -2135,6 +2137,8 @@ static void mci_parse_cid(struct mci *mci) {
 
 	dev_add_param_uint32_fixed(dev, "cid_mid", extract_mid(mci), "0x%02X");
 	dev_add_param_uint32_fixed(dev, "cid_oid", extract_oid(mci), "0x%04X");
+	if (!IS_SD(mci))
+		dev_add_param_uint32_fixed(dev, "cid_cbx", extract_cbx(mci), "%u");
 	extract_pnm(mci, buffer);
 	dev_add_param_string_fixed(dev, "cid_pnm", buffer);
 	extract_prv(mci, buffer);

-- 
2.39.2



