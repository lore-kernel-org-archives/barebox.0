Delivery-date: Tue, 28 May 2024 17:40:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sByw9-000x8F-1d
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 17:40:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sByw7-00026K-PM
	for lore@pengutronix.de; Tue, 28 May 2024 17:40:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yq/i9xIdbeyOgfP8omimLgbe0DJ449TcX3CQjBaiy98=; b=aEWe3e8KrnVZDKO6ghMtCGE5Ul
	LfcWhjmGt2BsEut52qeeVDHrHGK26Mwpl6PAwnqRp9JPCudbUDFavoKHPebu2K+T6yF5lRZjflP1s
	FKpPQHhHv8Ikcb0IjyUaS4AFG03Ij5UwiRoMzlquHnuqAsSHDzb7x5aD2Pw8UnK04KzKv24uFTtrS
	3Rh2EfPeT6ZxYQjsodcU3dgQM46bJw7dTErjWGZbubXIc7w4bG4w/ScNfx+aHvgwc5Kea0Qf28hUo
	eAcCB7Vpj07Ju/epZhjiARJpBzXdaBs5UYWJc+UruSPmt+6/IC0j1jOEYezKs5NMen3jtLz9oL7fU
	z1a/f3Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvf-00000001H3P-3E8g;
	Tue, 28 May 2024 15:39:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvX-00000001GyM-1nck
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 15:39:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvT-0001fp-4i; Tue, 28 May 2024 17:39:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-003LXe-Ka; Tue, 28 May 2024 17:39:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-00BFIe-1j;
	Tue, 28 May 2024 17:39:46 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 28 May 2024 17:39:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-feature-mmc-cid-as-parameters-v1-4-e5dc0c1d3eaa@pengutronix.de>
References: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
In-Reply-To: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_083951_542709_92117DB3 
X-CRM114-Status: UNSURE (   9.81  )
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
Subject: [PATCH 4/9] mci: core: add manufacturing date extraction function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function operates on a string buffer and concatenates both the year
and month. It will be used later when the mdt is added as a parameter.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/mci/mci-core.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index df72445edd..48eee35f2c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2030,6 +2030,20 @@ static unsigned extract_mdt_year(struct mci *mci)
 	return year;
 }
 
+/**
+ * Extract the manufacturing date from the CID
+ * @param mci Instance data
+ *
+ * The 'MDT' is encoded in bit 19:8 in the CID
+ */
+static void extract_mdt(struct mci *mci, char mdt[static 8])
+{
+	unsigned month = extract_mdt_month(mci);
+	unsigned year = extract_mdt_year(mci);
+
+	snprintf(mdt, 8, "%u.%u", year, month);
+}
+
 static const char *mci_timing_tostr(unsigned timing)
 {
 	switch (timing) {

-- 
2.39.2



