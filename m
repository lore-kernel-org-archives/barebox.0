Delivery-date: Mon, 05 May 2025 14:08:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucX-002S4k-2l
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:08:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucW-0007EY-BU
	for lore@pengutronix.de; Mon, 05 May 2025 14:08:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fn8zqeq+wZECeTgfkK9g07Xv9L5+gAbYfeOPLzloip4=; b=CKieI3zu1bglc7
	49XB81/sICqhIj0X0PabLg0WRLFcCdD6NhwElrfwlLed+JTIG5lb1EswyJQILUtn7cz4mCxCn4qg6
	O7rZV0yO+AxaiHud5sCpmyeLmhKhDLhVBv6MNXUY0gA0l0XOpD4civV5mSHEmoeVm5pTymBYhb4/L
	LzJUBz5RBufN5unleXYrY0sBsN1y4bCYpcdpeE7ECX+/F689P9aUxLJeEc6U6fJPGxlyhYDeVITvU
	hSA+zmOgu7nV7oJ3k7G/VXBDBSr6CCT4coa2IjMJ2E14j1JElNEyYZUMb/VGMgg6JTz2QaBzDEhHw
	s2i3duOEG5UfL/QedqLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBubz-00000007Fqy-1n66;
	Mon, 05 May 2025 12:07:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuaj-00000007FaM-0xVt
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:06:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-0006S3-Nk; Mon, 05 May 2025 14:06:34 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-001DxX-1X;
	Mon, 05 May 2025 14:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-00Fb9X-2i;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  5 May 2025 14:06:11 +0200
Message-Id: <20250505120633.3717186-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_050637_310633_78C1E0D3 
X-CRM114-Status: GOOD (  17.58  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 08/30] mci: compare host and card caps for supported speeds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently support only a single speed mode that needs tuning, so we
took the existence of execute_tuning to mean that higher speed modes are
supported.

This breaks down once we have multiple speed modes that need tuning and
is different to what Linux does, which instead sets capabilities on the
host, which are compared with the capabilities of the card.

Do the same in barebox to get rid of this quirk.

No functional change intended.

Suggested-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c |  1 +
 drivers/mci/mci-core.c     | 22 ++++++++++------------
 include/mci.h              |  1 +
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index f98f7eb3d10b..879339572b11 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -771,6 +771,7 @@ static int arasan_sdhci_probe(struct device *dev)
 	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a")) {
 		if (IS_ENABLED(CONFIG_MCI_TUNING))
 			mci->ops.execute_tuning = arasan_zynqmp_execute_tuning;
+		mci->caps2 |= MMC_CAP2_HS200;
 		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN;
 	}
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 3162a7a36bba..b6747309e5a7 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1582,14 +1582,8 @@ int mci_execute_tuning(struct mci *mci)
 	struct mci_host *host = mci->host;
 	u32 opcode;
 
-	if (!host->ops.execute_tuning) {
-		/*
-		 * For us, implementing ->execute_tuning is mandatory to
-		 * support higher speed modes
-		 */
-		dev_warn(&mci->dev, "tuning failed: no host diver support\n");
-		return -EOPNOTSUPP;
-	}
+	if (!host->ops.execute_tuning)
+		return 0;
 
 	/* Tuning is only supported for MMC / HS200 */
 	if (mmc_card_hs200(mci))
@@ -1626,29 +1620,35 @@ static void mmc_select_max_dtr(struct mci *mci)
 	u32 caps = mci->card_caps;
 	unsigned int hs_max_dtr = 0;
 	unsigned int hs200_max_dtr = 0;
+	unsigned int avail_type = 0;
 
 	if ((caps & MMC_CAP_MMC_HIGHSPEED) &&
 	    (card_type & EXT_CSD_CARD_TYPE_26)) {
 		hs_max_dtr = MMC_HIGH_26_MAX_DTR;
+		avail_type |= EXT_CSD_CARD_TYPE_26;
 	}
 
 	if ((caps & MMC_CAP_MMC_HIGHSPEED) &&
 	    (card_type & EXT_CSD_CARD_TYPE_52)) {
 		hs_max_dtr = MMC_HIGH_52_MAX_DTR;
+		avail_type |= EXT_CSD_CARD_TYPE_52;
 	}
 
 	if ((caps2 & MMC_CAP2_HS200_1_8V_SDR) &&
 	    (card_type & EXT_CSD_CARD_TYPE_HS200_1_8V)) {
 		hs200_max_dtr = MMC_HS200_MAX_DTR;
+		avail_type |= EXT_CSD_CARD_TYPE_HS200_1_8V;
 	}
 
 	if ((caps2 & MMC_CAP2_HS200_1_2V_SDR) &&
 	    (card_type & EXT_CSD_CARD_TYPE_HS200_1_2V)) {
 		hs200_max_dtr = MMC_HS200_MAX_DTR;
+		avail_type |= EXT_CSD_CARD_TYPE_HS200_1_2V;
 	}
 
 	mci->host->hs200_max_dtr = hs200_max_dtr;
 	mci->host->hs_max_dtr = hs_max_dtr;
+	mci->host->mmc_avail_type = avail_type;
 }
 /*
  * For device supporting HS200 mode, the following sequence
@@ -1733,16 +1733,14 @@ static void mmc_set_bus_speed(struct mci *mci)
  */
 int mmc_select_timing(struct mci *mci)
 {
-	unsigned int mmc_avail_type;
 	int err = 0;
 
 	mmc_select_max_dtr(mci);
 
-	mmc_avail_type = mci->ext_csd[EXT_CSD_DEVICE_TYPE] & EXT_CSD_CARD_TYPE_MASK;
-	if (mmc_avail_type & EXT_CSD_CARD_TYPE_HS200) {
+	if (mci->host->mmc_avail_type & EXT_CSD_CARD_TYPE_HS200) {
 		err = mmc_select_hs200(mci);
 		if (err == -EBADMSG)
-			mmc_avail_type &= ~EXT_CSD_CARD_TYPE_HS200;
+			mci->host->mmc_avail_type &= ~EXT_CSD_CARD_TYPE_HS200;
 		else
 			goto out;
 	}
diff --git a/include/mci.h b/include/mci.h
index 126d3fe52d37..56527f956802 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -616,6 +616,7 @@ struct mci_host {
 	unsigned f_max;		/**< host interface upper limit */
 	unsigned actual_clock;
 	struct mci_ios ios;		/* current io bus settings */
+	unsigned mmc_avail_type;	/**< supported device type by both host and card */
 	unsigned hs_max_dtr;
 	unsigned hs200_max_dtr;
 	unsigned max_req_size;
-- 
2.39.5



