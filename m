Delivery-date: Mon, 24 Mar 2025 09:15:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twcxj-003VgH-35
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:15:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twcxi-00039V-Oh
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:15:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hoU7vb32fH4+QqwGdz3Twic2AmLPsMuPzUji0ffGZbc=; b=e3C2RhywWHpRJ25AApTS3gj5CV
	x3leQAGzFC8ay3rwqWy24PVNaapViFaDlZ1IvUL4TcwRibsj+rQuell7P4kp2IyykAHFwFoFzZTAe
	KTpoekMrPvHIq0hJSMGQTNZzpBhhLWyJnIEcCAFGxnKsibWXwlgOJqVW2mVTX/34RdBuGWT8wH76F
	0c2BqJz+OmlnZrFzDwIPDnu5AkQBV+DoFS89WZAoBNBB3Otkc8co/EFkNrKbsZuN/VpWQOcPbXTqF
	vKFKdKHdI5VfoVb4mL1kr4gw9TXVEur1Ywpkwi8Jqi4FDAotyL4xE08z/hjn3B8xn+SZgoaSuXwoB
	v3tjgT6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twcwz-00000002YIE-0Ju9;
	Mon, 24 Mar 2025 08:14:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twcww-00000002YHl-0g0P
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:14:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twcws-00031q-DE; Mon, 24 Mar 2025 09:14:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twcwr-001NSj-2b;
	Mon, 24 Mar 2025 09:14:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twcws-0077YX-0L;
	Mon, 24 Mar 2025 09:14:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 24 Mar 2025 09:14:15 +0100
Message-Id: <20250324081415.1697333-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_011422_199344_9D54F09F 
X-CRM114-Status: GOOD (  14.09  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: Do not access ext_csd on SD cards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SD cards do not have a ext_csd so accessing it on an SD card results in
a NULL pointer derefence. Move the production year check to
mci_mmc_decode_cid() which is executed for MMC devices only. While at
it do not access ext_csd directly. We have already populated
mci->version, so use this to check for the MMC versions which need the
production year adjustment.

Fixes: a4a78c4f32 ("mci: use struct cid")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c89322f61e..1e49969017 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2377,6 +2377,12 @@ static int mci_mmc_decode_cid(struct mci *card)
 		return -EINVAL;
 	}
 
+	if (mci->version >= MMC_VERSION_4_41) {
+		/* Adjust production date as per JEDEC JESD84-B451 */
+		if (mci->cid.year < 2010)
+			mci->cid.year += 16;
+	}
+
 	return 0;
 }
 
@@ -2483,12 +2489,6 @@ static void mci_parse_cid(struct mci *mci)
 	else
 		mci_mmc_decode_cid(mci);
 
-	if (mci->ext_csd[EXT_CSD_REV] >= 5) {
-		/* Adjust production date as per JEDEC JESD84-B451 */
-		if (mci->cid.year < 2010)
-			mci->cid.year += 16;
-	}
-
 	dev_add_param_uint32_fixed(dev, "cid_mid", mci->cid.manfid, "0x%02X");
 	dev_add_param_uint32_fixed(dev, "cid_oid", mci->cid.oemid, "0x%04X");
 	dev_add_param_string_fixed(dev, "cid_pnm", mci->cid.prod_name);
-- 
2.39.5



