Delivery-date: Mon, 11 May 2026 14:10:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSl-000XrU-2G
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:10:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSf-0007Yv-Pu
	for lore@pengutronix.de; Mon, 11 May 2026 14:10:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lDTzT61EJz9kAVahd88cDpwEfz8GEFzP5QLqQ2/bsC8=; b=4z5UeMiNVRlTdFaSF+IOkVkRJS
	JK3xII8KCTbfyjIwtU7paZS0/7I2jS7ZSG2+TO2Yg0pT3itvZdBNzt8eAZ5piQcv1W0M7UGO5fXnA
	0G/BkJ5x+JsYBatInYTIfAINtjlnfcwrE+k9Zq5hmop611Yxy5jnXk6ydfGUt4qGymKWzbK+7t54n
	+Z8u7usLr/VKWptrwG1FYEMDpiRxnk/86YuzbTTwhxFLlu/nXyMzG60nUTjvIOeMaJa1OHAVwQXLi
	eUg6mENwRINcO7oz2J+/pHugGlhWsNZADSN29S+hnKX1tXjT6vi3ghdMVp/KbL8DtttR2VqVAoPtt
	EJlr+i0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPR4-0000000DTA0-3Mmk;
	Mon, 11 May 2026 12:08:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPR2-0000000DT81-1KfF
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:08:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-0006bB-Qo; Mon, 11 May 2026 14:08:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQb-000FTK-2F;
	Mon, 11 May 2026 14:08:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-00000008pO6-14L1;
	Mon, 11 May 2026 14:08:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 May 2026 14:07:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-rockchip-emmc-hs400-v1-4-515fb6d20e12@pengutronix.de>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778501286; l=6068;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gchkyPfeZLOwrox7/tmxP+f/PY19XKw+EBtsy+C2JUc=;
 b=r3t1k9TS3WBtcTZgyQcdiskC6us5UjkOrqUP3S4CENUxhD1VxPDwt6QUDNaSZ2TssY9HanI5j
 McZwhIflIZnAGUJc6ul2v62wEJREksbaRi3DKWjh2EjHKoeNDVb1AOL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_050832_644026_68F355DA 
X-CRM114-Status: GOOD (  17.57  )
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
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/10] mci: add HS400 mode selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

eMMC HS400 transitions through HS and 8-bit DDR per JEDEC, on top of
a card already tuned in HS200. Wire that up in the core:

- mmc_select_max_dtr() now records EXT_CSD_CARD_TYPE_HS400_{1_8V,1_2V}
  in mmc_avail_type when both the host (mmc-hs400-1_8v / mmc-hs400-1_2v
  in DT) and the card advertise it. HS400 reuses hs200_max_dtr (200 MHz)
  since it's the same SDCLK rate, just DDR-sampled.

- mmc_set_bus_speed() treats HS200 and HS400 as the same rate tier.

- mmc_select_hs400() implements the JEDEC sequence:
    1. CMD6 EXT_CSD_HS_TIMING = HS
    2. host: MMC_TIMING_MMC_HS, clock = hs_max_dtr
    3. CMD6 EXT_CSD_BUS_WIDTH = EXT_CSD_DDR_BUS_WIDTH_8
    4. CMD6 EXT_CSD_HS_TIMING = HS400
    5. host: MMC_TIMING_MMC_HS400, clock back to 200 MHz

  Bails early if the card lacks HS400 capability or the bus isn't 8-bit.

- mci_startup_mmc() runs mmc_select_hs400() right after a successful
  HS200 tuning when EXT_CSD_CARD_TYPE_HS400 is in mmc_avail_type.

- mmc_card_hs400() helper added in mci.h, mirroring mmc_card_hs200().

Host drivers must additionally handle MMC_TIMING_MMC_HS400 in their
set_ios / set_clock paths (e.g. setting the controller-specific HS400
bit in HOST_CONTROL2, configuring data-strobe sampling). Without that
the core will run the transition but the host won't sample correctly.

Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 79 ++++++++++++++++++++++++++++++++++++++++++++++++--
 include/mci.h          |  5 ++++
 2 files changed, 82 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 23b9117869..58b28ec653 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -126,7 +126,8 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
 {
 	struct mci_cmd cmd = {0};
 
-	if (mci->host->ios.timing == MMC_TIMING_MMC_DDR52)
+	if (mci->host->ios.timing == MMC_TIMING_MMC_DDR52 ||
+	    mmc_card_hs400(mci))
 		return 0;
 
 	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCKLEN, len, MMC_RSP_R1);
@@ -1051,6 +1052,8 @@ static const char *mci_timing_tostr(unsigned timing)
 		return "MMC DDR52";
 	case MMC_TIMING_MMC_HS200:
 		return "HS200";
+	case MMC_TIMING_MMC_HS400:
+		return "HS400";
 	default:
 		return "unknown"; /* shouldn't happen */
 	}
@@ -1783,6 +1786,18 @@ static void mmc_select_max_dtr(struct mci *mci)
 		avail_type |= EXT_CSD_CARD_TYPE_HS200_1_2V;
 	}
 
+	if ((caps2 & MMC_CAP2_HS400_1_8V) &&
+	    (card_type & EXT_CSD_CARD_TYPE_HS400_1_8V)) {
+		hs200_max_dtr = MMC_HS200_MAX_DTR;
+		avail_type |= EXT_CSD_CARD_TYPE_HS400_1_8V;
+	}
+
+	if ((caps2 & MMC_CAP2_HS400_1_2V) &&
+	    (card_type & EXT_CSD_CARD_TYPE_HS400_1_2V)) {
+		hs200_max_dtr = MMC_HS200_MAX_DTR;
+		avail_type |= EXT_CSD_CARD_TYPE_HS400_1_2V;
+	}
+
 	mci->host->hs200_max_dtr = hs200_max_dtr;
 	mci->host->hs_max_dtr = hs_max_dtr;
 	mci->host->mmc_avail_type = avail_type;
@@ -1875,7 +1890,7 @@ static void mmc_set_bus_speed(struct mci *mci)
 {
 	unsigned int max_dtr = (unsigned int)-1;
 
-	if (mmc_card_hs200(mci) &&
+	if ((mmc_card_hs200(mci) || mmc_card_hs400(mci)) &&
 		max_dtr > mci->host->hs200_max_dtr)
 		max_dtr = mci->host->hs200_max_dtr;
 	else if (mmc_card_hs(mci) && max_dtr > mci->host->hs_max_dtr)
@@ -1921,6 +1936,62 @@ int mmc_hs200_tuning(struct mci *mci)
 	return mci_execute_tuning(mci);
 }
 
+/*
+ * Switch from HS200 to HS400 per JEDEC. The card must already be in HS200
+ * (with successful tuning) and 8-bit bus width. The transition sequence is:
+ *
+ *   1. Switch the card back to HS timing.
+ *   2. Drop the host clock to HS rate (<= 52 MHz).
+ *   3. Switch the card to 8-bit DDR bus width.
+ *   4. Switch the card to HS400 timing.
+ *   5. Switch the host to HS400 timing and ramp the clock back to HS200 rate
+ *      (200 MHz, used as DDR so effective 400 MHz / 8-bit data lane).
+ */
+static int mmc_select_hs400(struct mci *mci)
+{
+	struct mci_host *host = mci->host;
+	int err;
+	u8 val;
+
+	if (!(host->mmc_avail_type & EXT_CSD_CARD_TYPE_HS400) ||
+	    host->ios.bus_width != MMC_BUS_WIDTH_8)
+		return 0;
+
+	/* Step 1: switch card back to HS timing */
+	err = mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
+	if (err) {
+		dev_err(&mci->dev, "switch to HS from HS200 failed: %d\n", err);
+		return err;
+	}
+
+	/* Step 2: drop host clock to HS rate */
+	mci_set_timing(mci, MMC_TIMING_MMC_HS);
+	mci_set_clock(mci, host->hs_max_dtr);
+
+	/* Step 3: switch card to 8-bit DDR */
+	err = mci_switch(mci, EXT_CSD_BUS_WIDTH, EXT_CSD_DDR_BUS_WIDTH_8);
+	if (err) {
+		dev_err(&mci->dev, "switch to DDR for HS400 failed: %d\n", err);
+		return err;
+	}
+
+	/* Step 4: switch card to HS400 timing */
+	val = EXT_CSD_TIMING_HS400 | (host->drive_strength << EXT_CSD_DRV_STR_SHIFT);
+	err = mci_switch(mci, EXT_CSD_HS_TIMING, val);
+	if (err) {
+		dev_err(&mci->dev, "switch to HS400 failed: %d\n", err);
+		return err;
+	}
+
+	/* Step 5: switch host to HS400 timing and ramp clock */
+	mci_set_timing(mci, MMC_TIMING_MMC_HS400);
+	mmc_set_bus_speed(mci);
+
+	dev_dbg(&mci->dev, "HS400 selected\n");
+
+	return 0;
+}
+
 static int mci_startup_mmc(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
@@ -1947,6 +2018,10 @@ static int mci_startup_mmc(struct mci *mci)
 			ret = mmc_hs200_tuning(mci);
 			if (!ret) {
 				dev_dbg(&mci->dev, "HS200 tuning succeeded\n");
+
+				if (host->mmc_avail_type & EXT_CSD_CARD_TYPE_HS400)
+					mmc_select_hs400(mci);
+
 				return 0;
 			}
 
diff --git a/include/mci.h b/include/mci.h
index 8348f97432..a7cd0c5ae2 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -802,4 +802,9 @@ static inline bool mmc_card_hs200(struct mci *mci)
 	return mci->host->ios.timing == MMC_TIMING_MMC_HS200;
 }
 
+static inline bool mmc_card_hs400(struct mci *mci)
+{
+	return mci->host->ios.timing == MMC_TIMING_MMC_HS400;
+}
+
 #endif /* _MCI_H_ */

-- 
2.47.3



