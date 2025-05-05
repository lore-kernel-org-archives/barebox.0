Delivery-date: Mon, 05 May 2025 14:08:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucX-002S4Y-1f
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:08:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucW-0007EM-7D
	for lore@pengutronix.de; Mon, 05 May 2025 14:08:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6bE4TT/5KKgt6PDFd4M4AaUkLaTxktZu3EmdLEeeB+M=; b=R+IsxO2+RN4kKhYwPMIac6HxN+
	udST9LWvALI5K4YKl0jTATNdrNmzynOzhYNvDkHBV2dqrLyWFUwD5atXuyguCKF9y1UgKzOZSUhDN
	i//WT/juoDkKLZdUm0a7nDlcp//pyx6B/71ClEG51guFNVyCQN4M1x9qi2+yye135f7mgtrIA4dP4
	cRypcLEm/YTw/NU/p3KcDFiNQ2ssjPPnsmP+gFFMSWVtbLxzdGZc6L789Utvp7IuiPwmVKPw0Gkx/
	cDG4J0Isgwv2vU000V/jCwhT5scZ3AFOaMh8zbPZsVY65zwKLsp8fnNlx9A/LEUC3qWNE5cwEgVd0
	NPf/AdMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBubw-00000007FnI-39hC;
	Mon, 05 May 2025 12:07:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuaj-00000007FaH-0Fnb
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:06:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-0006RY-G9; Mon, 05 May 2025 14:06:34 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-001DxJ-0u;
	Mon, 05 May 2025 14:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-00Fb9X-27;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:07 +0200
Message-Id: <20250505120633.3717186-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_050637_125154_153EEB17 
X-CRM114-Status: GOOD (  13.14  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/30] mci: tuning: fix fallback to DDR52
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When CONFIG_MCI_TUNING is enabled, but a card mmc_card_hs200 return
false, the fallback currently puts the card into high speed mode instead
of DDR52, which would've been the next best thing.

Rework the code to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 54d3fab4f10c..bb345dc5454e 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1781,34 +1781,35 @@ static int mci_startup_mmc(struct mci *mci)
 	}
 
 	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
-		/*
-		 * Select timing interface
-		 */
+		dev_dbg(&mci->dev, "select timing %s\n", mci_timing_tostr(host->ios.timing));
+
 		ret = mmc_select_timing(mci);
 		if (ret)
 			return ret;
 
-		if (mmc_card_hs200(mci))
+		if (mmc_card_hs200(mci)) {
 			ret = mmc_hs200_tuning(mci);
+			if (!ret) {
+				dev_dbg(&mci->dev, "HS200 tuning succeeded\n");
+				return 0;
+			}
+
+			dev_dbg(&mci->dev, "HS200 tuning failed, falling back to HS\n");
 
-		if (ret) {
 			host->ios.timing = MMC_TIMING_MMC_HS;
 			mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
 		}
 	}
 
-	if (ret || !IS_ENABLED(CONFIG_MCI_TUNING)) {
-		mci_set_clock(mci, mci->tran_speed);
+	mci_set_clock(mci, mci->tran_speed);
 
-		/* find out maximum bus width and then try DDR if supported */
-		ret = mci_mmc_select_bus_width(mci);
-		if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
-			ret = mci_mmc_select_hs_ddr(mci);
+	/* find out maximum bus width and then try DDR if supported */
+	ret = mci_mmc_select_bus_width(mci);
+	if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
+		ret = mci_mmc_select_hs_ddr(mci);
 
-		if (ret < 0) {
-			dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
-		}
-	}
+	if (ret < 0)
+		dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
 
 	return ret >= MMC_BUS_WIDTH_1 ? 0 : ret;
 }
-- 
2.39.5



