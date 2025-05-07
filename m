Delivery-date: Wed, 07 May 2025 11:27:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3l-0035Uf-0R
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:27:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3k-0006Iq-Bo
	for lore@pengutronix.de; Wed, 07 May 2025 11:27:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LVCfxkU4NXFZjp3G0YAOEQq8wvXiC/qchXksBhPR2Hc=; b=a9RZYIywsNgYgyOMHK2ueN+7Nr
	bnJYofE+WvcOSgINvfDTPHSpiq9zYCc0SbdxovcqBSl7lFxcXqg1zXYrVm/IT2uJkFP/CzrsMpL5i
	r6afvRNO4mMclHQRRnnVM7cBb2wqAii7UygGCv7ipIT2i2s75+nWY6DHhkKLoiQSykKB8jrS1HTae
	zSovaC4vlx172d90qg3pIhfCBLWlkkLbXgjE4l21x4vBU8oeZJyGpP/CQq4UemvOyjsHERfQ/zgII
	CKTq77voO/zpjjGcoAELOE0wiQosPj8IC7FzIB7Qsf1Pk4470E7W2mSGTXRPqs2dNUCys4kGomWHM
	2srxH5lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb3F-0000000Ewsj-3ta9;
	Wed, 07 May 2025 09:26:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFN-0000000ElpC-0ZpV
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:35:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LVCfxkU4NXFZjp3G0YAOEQq8wvXiC/qchXksBhPR2Hc=; b=U9PVNJ07o4Fioj8S9F/TkCrrvU
	/nl6H6eONjEpXAZ4ltRtEriLlBYHy5F82pe3k6J4Q2wJm9v3Tr5DAIiTM5rPi2yXiuJjWA1/7+Oy6
	ooi+j9JEtfRVvNDpZHOc2fHZpuT5XhErb5A5j1n7xW1gsS5mpYwOOUrU1BizTk6PHwI3DGn8SQuP4
	yZJJF0h6Wy2mHKM7Qhx0QdLqU7jef5XCCOptoyPHM9f1W8uvOwJEq0yhVPx7DxfRYE30AO0GCuscr
	wNCoGRfSeb24j/3/mPmP2LYlbqvUx28twCEQMNZKqfwSXR7f7blUNyF27pDsWGhi/NjIKfbS8tUl0
	khI3zIag==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCaFF-0000000FoIl-3MJd
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003x2-BB; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001WuM-0R;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-1b;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:58 +0200
Message-Id: <20250507082209.3289972-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093514_107785_3065F38E 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 19/30] mci: add mci_set_timing helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

HS400 support when it goes in will add a number of extra calls to
mci_set_ios after changing just the timing. We already have two places
where we do this, so let's have a helper for it like Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2f80763d9831..f123fce59cb1 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1093,6 +1093,19 @@ static void mci_set_bus_width(struct mci *mci, enum mci_bus_width width)
 	mci_set_ios(mci);
 }
 
+/**
+ * Setup host's interface timing
+ * @param mci MCI instance
+ * @param width New timing
+ */
+static void mci_set_timing(struct mci *mci, enum mci_timing timing)
+{
+	struct mci_host *host = mci->host;
+
+	host->ios.timing = timing;
+	mci_set_ios(mci);
+}
+
 /**
  * Extract card's version from its CSD
  * @param mci MCI instance
@@ -1709,8 +1722,7 @@ static int mmc_select_hs200(struct mci *mci)
 		old_timing = mci->host->ios.timing;
 		old_clock = mci->host->ios.clock;
 
-		mci->host->ios.timing = MMC_TIMING_MMC_HS200;
-		mci_set_ios(mci);
+		mci_set_timing(mci, MMC_TIMING_MMC_HS200);
 		mci_set_clock(mci, mci->host->hs_max_dtr);
 
 		err = mci_switch_status(mci, true);
@@ -1721,8 +1733,7 @@ static int mmc_select_hs200(struct mci *mci)
 		 */
 		if (err == -EBADMSG) {
 			mci->host->ios.clock = old_clock;
-			mci->host->ios.timing = old_timing;
-			mci_set_ios(mci);
+			mci_set_timing(mci, old_timing);
 		}
 	}
 err:
-- 
2.39.5



