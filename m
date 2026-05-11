Delivery-date: Mon, 11 May 2026 14:13:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPVy-000XyK-2w
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:13:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPVx-00007R-E3
	for lore@pengutronix.de; Mon, 11 May 2026 14:13:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E6iFjjRZubmWZGLlneOmovUZLyK8h7xFPDTRs27KAPw=; b=2HuN1SkZfZjl906PGOFfAX9vMm
	sblviI8utxL0Pt22W4qYhpO3pDSCEzaRxZceMsbzFTdZLtX4A3xTU8SF+mj/i832OCukZL2ttz0sR
	hJsUUTeI9iBY1KIsNUQLaeQlZmFq4H43BflNFa0Uf/oNTbeZ/JZ/4MqcL23D5wHcGRbF6je8XHJNZ
	bKjskXO3nqj6sIgf5hADg0HbTf6r9uxuGoS6UhS70jf2gNRhsVp/Xz/3Y4GJCq8R7YJcpwiDjXAAo
	HUAI3rGDPgBSwuhJMWvJcJ6kfNmv7gXavNdTts0LX3muzCbboWSNYOsdpjMMNZCYYajuN+NxxTpzK
	U40vtSow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQj-0000000DSt5-3uxa;
	Mon, 11 May 2026 12:08:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQf-0000000DSqf-02nH
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:08:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-0006bC-Qf; Mon, 11 May 2026 14:08:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQb-000FTN-2C;
	Mon, 11 May 2026 14:08:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-00000008pO6-153h;
	Mon, 11 May 2026 14:08:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 May 2026 14:08:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-rockchip-emmc-hs400-v1-5-515fb6d20e12@pengutronix.de>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778501286; l=7806;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=PlFLi+eqpQ0zTPh382RAgDs0zMq9efMpDPbf+wY9Lk8=;
 b=MU3pPso14pTC31lgU7t7iUH/jjQLKE1YxZKFK7cmSSVdMGpdfatQJrglqJSJPQTcqJWYDPtkO
 2p3cefMJVC/AS8ZKP6qnzEVU8wkx9TY2hu48bhtmxNcrBtL7nZehAeN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_050809_208402_951BA76A 
X-CRM114-Status: GOOD (  24.89  )
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
Subject: [PATCH 05/10] mci: add HS400 Enhanced Strobe (HS400ES) selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

HS400ES bypasses HS200 tuning entirely: the eMMC drives a data strobe
line which the controller samples on, so the read path doesn't need
software-tuned phase. It still ends up in MMC_TIMING_MMC_HS400.

Detection: a card advertises HS400ES via EXT_CSD_STROBE_SUPPORT[184],
which sits outside DEVICE_TYPE; record it as a synthetic
EXT_CSD_CARD_TYPE_HS400ES bit in mmc_avail_type when the host
declares MMC_CAP2_HS400_ES (mmc-hs400-enhanced-strobe in DT) and the
card has both STROBE_SUPPORT set and one of the HS400 voltage variants.

Transition (mmc_select_hs400es):
  1. Negotiate 8-bit bus in HS mode (HS400 needs 8-bit).
  2. CMD6 EXT_CSD_HS_TIMING = HS, host to HS rate.
  3. CMD6 EXT_CSD_BUS_WIDTH = 8-bit DDR | STROBE bit, so the card
     starts driving the strobe line.
  4. CMD6 EXT_CSD_HS_TIMING = HS400, host to HS400 timing at
     hs200_max_dtr (200 MHz, DDR-sampled => 400 MT/s).
  5. Call host->ops.hs400_enhanced_strobe so the controller enables
     enhanced strobe sampling.

mmc_select_timing prefers HS400ES over HS200 + HS400; on any failure
it clears the flag and falls back to HS200. mci_startup_mmc returns
early when mmc_select_timing already landed us in HS400 (HS400ES has
no follow-up tuning step).

mci_ops gains an optional hs400_enhanced_strobe hook for the
controller's enhanced-strobe enable.

Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 108 ++++++++++++++++++++++++++++++++++++++++++++++++-
 include/mci.h          |   4 ++
 2 files changed, 111 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 58b28ec653..0cfddb8d43 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1798,6 +1798,16 @@ static void mmc_select_max_dtr(struct mci *mci)
 		avail_type |= EXT_CSD_CARD_TYPE_HS400_1_2V;
 	}
 
+	/*
+	 * HS400ES capability is reported in EXT_CSD_STROBE_SUPPORT (byte 184),
+	 * not in DEVICE_TYPE. Combine with one of the HS400 voltage variants;
+	 * which voltage is used follows the same negotiation as HS400.
+	 */
+	if ((caps2 & MMC_CAP2_HS400_ES) &&
+	    mci->ext_csd[EXT_CSD_STROBE_SUPPORT] &&
+	    (avail_type & EXT_CSD_CARD_TYPE_HS400))
+		avail_type |= EXT_CSD_CARD_TYPE_HS400ES;
+
 	mci->host->hs200_max_dtr = hs200_max_dtr;
 	mci->host->hs_max_dtr = hs_max_dtr;
 	mci->host->mmc_avail_type = avail_type;
@@ -1901,6 +1911,83 @@ static void mmc_set_bus_speed(struct mci *mci)
 	mci_set_clock(mci, max_dtr);
 }
 
+/*
+ * Switch directly to HS400 with Enhanced Strobe per JEDEC. Unlike plain
+ * HS400 this does not require HS200 tuning first - the controller samples
+ * data using the eMMC-driven strobe line. The transition is:
+ *
+ *   1. Negotiate 8-bit bus width in HS mode.
+ *   2. Switch the card to HS timing.
+ *   3. Set host to MMC_TIMING_MMC_HS at hs_max_dtr.
+ *   4. Switch card BUS_WIDTH to 8-bit DDR with the STROBE bit set, so
+ *      the card drives the strobe line.
+ *   5. Switch the card to HS400 timing.
+ *   6. Switch the host to MMC_TIMING_MMC_HS400 and ramp the clock to
+ *      hs200_max_dtr (200 MHz, DDR-sampled => 400 MT/s).
+ *   7. Tell the controller to enable enhanced strobe sampling.
+ */
+static int mmc_select_hs400es(struct mci *mci)
+{
+	struct mci_host *host = mci->host;
+	int err;
+	u8 val;
+
+	/* Step 1: 8-bit bus is mandatory for HS400ES */
+	err = mci_mmc_try_bus_width(mci, MMC_BUS_WIDTH_8, MMC_TIMING_MMC_HS);
+	if (err < 0) {
+		dev_err(&mci->dev, "HS400ES requires 8-bit bus width\n");
+		return err;
+	}
+
+	/* Step 2: switch card to HS timing */
+	err = mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
+	if (err) {
+		dev_err(&mci->dev, "switch to HS for HS400ES failed: %d\n", err);
+		return err;
+	}
+
+	/* Step 3: host follows to HS rate */
+	mci_set_timing(mci, MMC_TIMING_MMC_HS);
+	mci_set_clock(mci, host->hs_max_dtr);
+
+	err = mci_switch_status(mci, true);
+	if (err)
+		return err;
+
+	/* Step 4: 8-bit DDR with strobe enabled */
+	val = EXT_CSD_DDR_BUS_WIDTH_8 | EXT_CSD_BUS_WIDTH_STROBE;
+	err = mci_switch(mci, EXT_CSD_BUS_WIDTH, val);
+	if (err) {
+		dev_err(&mci->dev, "switch to DDR8 with strobe failed: %d\n", err);
+		return err;
+	}
+
+	/* Step 5: switch card to HS400 */
+	val = EXT_CSD_TIMING_HS400 | (host->drive_strength << EXT_CSD_DRV_STR_SHIFT);
+	err = mci_switch(mci, EXT_CSD_HS_TIMING, val);
+	if (err) {
+		dev_err(&mci->dev, "switch to HS400 for HS400ES failed: %d\n", err);
+		return err;
+	}
+
+	/* Step 6: host to HS400 timing and final clock */
+	mci_set_timing(mci, MMC_TIMING_MMC_HS400);
+	mmc_set_bus_speed(mci);
+
+	err = mci_switch_status(mci, true);
+	if (err)
+		return err;
+
+	/* Step 7: enable enhanced strobe in the controller */
+	host->ios.enhanced_strobe = true;
+	if (host->ops.hs400_enhanced_strobe)
+		host->ops.hs400_enhanced_strobe(host, &host->ios);
+
+	dev_dbg(&mci->dev, "HS400ES selected\n");
+
+	return 0;
+}
+
 /*
  * Activate HS200 or HS400ES mode if supported.
  */
@@ -1910,6 +1997,20 @@ int mmc_select_timing(struct mci *mci)
 
 	mmc_select_max_dtr(mci);
 
+	/*
+	 * HS400ES is the preferred path when both card and host support it:
+	 * it ends up in HS400 without needing HS200 tuning. If the transition
+	 * fails for any reason, drop the flag and fall through to HS200/HS400.
+	 */
+	if (mci->host->mmc_avail_type & EXT_CSD_CARD_TYPE_HS400ES) {
+		err = mmc_select_hs400es(mci);
+		if (!err)
+			goto out;
+		dev_dbg(&mci->dev, "HS400ES failed (%d), trying HS200\n", err);
+		mci->host->mmc_avail_type &= ~EXT_CSD_CARD_TYPE_HS400ES;
+		err = 0;
+	}
+
 	if (mci->host->mmc_avail_type & EXT_CSD_CARD_TYPE_HS200) {
 		err = mmc_select_hs200(mci);
 		if (err == -EBADMSG)
@@ -2014,6 +2115,10 @@ static int mci_startup_mmc(struct mci *mci)
 		if (ret)
 			return ret;
 
+		/* HS400ES took us straight to HS400 without tuning. Done. */
+		if (mmc_card_hs400(mci))
+			return 0;
+
 		if (mmc_card_hs200(mci)) {
 			ret = mmc_hs200_tuning(mci);
 			if (!ret) {
@@ -2698,7 +2803,8 @@ static void mci_info(struct device *dev)
 		bw = 1;
 
 	printf("  current buswidth: %d\n", bw);
-	printf("  current timing: %s\n", mci_timing_tostr(host->ios.timing));
+	printf("  current timing: %s%s\n", mci_timing_tostr(host->ios.timing),
+	       host->ios.enhanced_strobe ? " (Enhanced Strobe)" : "");
 	mci_print_caps(host->host_caps, host->caps2);
 
 	printf("Card information:\n");
diff --git a/include/mci.h b/include/mci.h
index a7cd0c5ae2..7a86a80b03 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -406,6 +406,7 @@
 #define EXT_CSD_DDR_BUS_WIDTH_4	5	/* Card is in 4 bit DDR mode */
 #define EXT_CSD_DDR_BUS_WIDTH_8	6	/* Card is in 8 bit DDR mode */
 #define EXT_CSD_DDR_FLAG	BIT(2)	/* Flag for DDR mode */
+#define EXT_CSD_BUS_WIDTH_STROBE BIT(7) /* Enhanced strobe mode (HS400ES) */
 
 #define EXT_CSD_TIMING_BC	0	/* Backwards compatility */
 #define EXT_CSD_TIMING_HS	1	/* High speed */
@@ -567,6 +568,7 @@ struct mci_ios {
 	enum mci_bus_width	bus_width;		/* data bus width */
 	enum mci_timing		timing;			/* timing specification used */
 	unsigned char		drv_type;		/* driver type (A, B, C, D) */
+	bool			enhanced_strobe;	/* HS400ES selected */
 };
 
 struct mci;
@@ -586,6 +588,8 @@ struct mci_ops {
 	/* The tuning command opcode value is different for SD and eMMC cards */
 	int (*execute_tuning)(struct mci_host *, u32);
 	void (*set_uhs_signaling)(struct mci_host *host, unsigned int timing);
+	/* Enable enhanced strobe in the controller (HS400ES) */
+	void (*hs400_enhanced_strobe)(struct mci_host *, struct mci_ios *);
 };
 
 /** host information */

-- 
2.47.3



