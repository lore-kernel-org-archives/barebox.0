Delivery-date: Mon, 05 May 2025 14:39:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6J-002SY5-2Z
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6E-0006sD-HM
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i+ZI5DFml6AS3nV2OBg/EH7R8Wh41rW/p1f3X2l0Ebg=; b=UigOeu7/4a9JhPENz1BnTwKYdy
	qMSkRo6poBRJ5f96XQXkZAYugEG5G3J7to2X/x41tSJB2kdWCQOTUtMIacPPiz5Bqy1FnAi1OKXEJ
	F6x+hjzCXxqrzUsULxzROEGO5rnd8p7dnf5uTju2ouOBqUNs2+saTtyc2F7htBnwQE2VL4NzBo6CF
	toX8RaQ844vz6giZfgWWAL/luF8QB1ymysNRfB0yhhXUEYwsrgZ7mbCxY2g0/09+ils7CHZK93txp
	dQC8Cs46E0WyDk9deZ5mJX/wBydJ2LTWJxRQ2rLCyNQ5gYsD51yheDsTiNy6PMbeCnXIi7vXokSmo
	sWYiqpuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5Q-00000007LfH-2Bso;
	Mon, 05 May 2025 12:38:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv2A-00000007KbS-0fIH
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-0004rc-V5; Mon, 05 May 2025 14:34:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-001EQj-2J;
	Mon, 05 May 2025 14:34:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-18;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:22 +0200
Message-Id: <20250505120633.3717186-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053458_227063_A62B6435 
X-CRM114-Status: GOOD (  10.45  )
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
Subject: [PATCH 19/30] mci: add mci_set_timing helper
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
index bd538ccb4a79..14d99d01b441 100644
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



