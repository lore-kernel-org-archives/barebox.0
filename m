Delivery-date: Tue, 09 Jan 2024 17:17:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmm-00AUJa-0e
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmk-0000QT-HA
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kxpNkbzZcEBIH/rUcxsucO8rrUL18I1UqG9266ImXvc=; b=oZwUdqwQH+c/dLOFiugzWOrTtt
	I/MY8fxyZLUSbP96ceMBsnrGIjRZHfGUczS+Mq8xy4Fmh8qd425xtu+iR3Ehpzl6mKnpZdyD8YJWe
	5fRFyD9Sf1OSs+LYPuL5MJD34BbC5BwgvYHwsGwufHLYtN53w9ST7ay8cwntEls66ESCdzkIhA+Ju
	B5Cxsz/pkpKMH+MOiefUteaXvT0bEGyKt5UbCvMXtgkBpvqSNjBXvAUNIrqeHo/uZ5jc0Fo3KYI8t
	SIh5zIfswmIfX8dXP5Ud4t+T69EGCN46poZnQAFhnW4F+KepRtgin3vcDV23FfLNVskTFmUfOY/11
	1K6tj/VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElS-008npu-0r;
	Tue, 09 Jan 2024 16:15:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElJ-008niq-2C
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007lA-Aw; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCb-KM; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7QL-1n;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:15 +0100
Message-Id: <20240109161527.3237581-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081533_754523_8A715BA9 
X-CRM114-Status: GOOD (  13.22  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 09/21] ARM: Layerscape: icid: factor out setup_icid_offsets()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code to iterate over the icid table writing register values can be
re-used for upcomin LS1028a support, so move the code to a separate
function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index 1055cf59da..3207d55bf0 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -120,6 +120,20 @@ static int of_fixup_icid(struct device_node *root, phandle iommu_handle,
 	return 0;
 }
 
+static void setup_icid_offsets(const struct icid_id_table *icid_table, int num_icids, bool le)
+{
+	int i;
+
+	for (i = 0; i < num_icids; i++) {
+		const struct icid_id_table *icid = &icid_table[i];
+
+		if (le)
+			out_le32((u32 *)(icid->reg_addr), icid->reg);
+		else
+			out_be32((u32 *)(icid->reg_addr), icid->reg);
+	}
+}
+
 struct fman_icid_id_table {
 	u32 port_id;
 	u32 icid;
@@ -549,15 +563,10 @@ static int of_fixup_ls1046a(struct device_node *root, void *context)
 
 void ls1046a_setup_icids(void)
 {
-	int i;
 	struct ccsr_fman *fm = (void *)LSCH2_FM1_ADDR;
+	int i;
 
-	/* setup general icid offsets */
-	for (i = 0; i < ARRAY_SIZE(icid_tbl_ls1046a); i++) {
-		const struct icid_id_table *icid = &icid_tbl_ls1046a[i];
-
-		out_be32((u32 *)(icid->reg_addr), icid->reg);
-	}
+	setup_icid_offsets(icid_tbl_ls1046a, ARRAY_SIZE(icid_tbl_ls1046a), false);
 
 	/* setup fman icids */
 	for (i = 0; i < ARRAY_SIZE(fman_icid_tbl_ls1046a); i++) {
-- 
2.39.2



