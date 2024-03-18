Delivery-date: Mon, 18 Mar 2024 12:31:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBDY-00CHDZ-2i
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 12:31:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBDW-0003Pf-Kh
	for lore@pengutronix.de; Mon, 18 Mar 2024 12:31:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S+yoljYOqR29D3CxasLWLCp9q0kZxiTxPhY7QVM73s8=; b=5FTTw4ai1eOTMpRWXNPHOG/wJb
	LoOx5TXZOu5z1P/seMJqRjC/hC3n8139PwsR7+lqk4q54o+9/mdbuBY2bcDyt7GLdF2hUd2R9A9J0
	hzNFBOUXO675m212CckEAnmVH91aHTe3pAHcYNDa9+2qdPETM7M/JbfFcieuIUQsk4w4HSrsonOHQ
	RqSmjlH79KrG62SMNjdeWMPjx3wWZl2C2p96P29hmrRvyjDYT+uyq7QXr/ndgmWKeHAexR3dUHThJ
	ohplxsqrBSmzMVLaCKNqg0LHNNe6IBJXVjNZcIyYzHt9V8mRwwX/1+WZdbGJTpelZ8KSaINOVOf2G
	r20jEXdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmBD8-00000008NAm-0gSF;
	Mon, 18 Mar 2024 11:31:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA5V-000000087KD-39ek
	for barebox@bombadil.infradead.org;
	Mon, 18 Mar 2024 10:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=S+yoljYOqR29D3CxasLWLCp9q0kZxiTxPhY7QVM73s8=; b=AQbtgpZlAl/8r/4Z97+kGNLp5g
	VNnlqpI9oLXRKgW/4Q2BAYBOlewa4alEC1cX9D5lUDVgRNi9TGRlrxW7mVKU4fIeMv3AMPkXo55VF
	D+mRWNDDU5ya+W53kYEi1xI+Q4A3p2XTMysRcQS9tT5kXUySHuZC7zVL3cpOpRGiGY3p8mRN3qGBd
	6KFRytckk5EiVUzDRX87NFoYremt7lJDmRjM/OXT/904wX1nYtSSGkLXmqQ6wPF4r/kBBDmcqLcn/
	lI7LXpn+c6dBLzNMaMzFmvfiFCiXSqypOBfsRoT5s+l40APDtH0ZezPm4bnw19JxQdMd+g2bVZOp8
	RvDyk4lw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA5R-0000000CZpf-4BSm
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 10:19:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rmA5P-0006MJ-Jy; Mon, 18 Mar 2024 11:19:19 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 18 Mar 2024 11:18:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-10-48756863add6@pengutronix.de>
References: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
In-Reply-To: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6439;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=WcN041707n25Rf8y0LQ4XzgqWm+9AT6cq3IBTn0XDf0=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJ/iAo41jJuN2OPXL/DsP+Ey9JMLq/zXB5l26TOGF98e
 ef+qluzO0pZGMS4GGTFFFki1x7S2Cz8WefL8fMMMHNYmUCGMHBxCsBEKnIZ/sp/n6iwwPF24r4W
 F5bwW4yZxqpeF+vXvzu7IfXrT5e7WccYGeZHlhwOm/z23LpDR38+3JE0dfGFnQKlFZe2Llfm7OB
 7850dAA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_101922_354436_76EFB378 
X-CRM114-Status: GOOD (  15.22  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 10/15] mci: core: parse more host capabilities from DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port the linux v6.7 mmc host caps2 parsing.
While at it, remove the ->no_sd and ->no_sdio. These are bits in the
caps2 field.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 36 ++++++++++++++++++++++++++++++------
 include/mci.h          | 32 ++++++++++++++++++++++++++++++--
 2 files changed, 60 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6c473d21bf..3e078862f2 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2031,7 +2031,7 @@ static int mci_card_probe(struct mci *mci)
 		goto on_error;
 	}
 
-	if (!host->no_sdio) {
+	if (!(host->caps2 & MMC_CAP2_NO_SDIO)) {
 		rc = sdio_send_op_cond(mci);
 		if (!rc) {
 			mci->ready_for_use = true;
@@ -2042,11 +2042,11 @@ static int mci_card_probe(struct mci *mci)
 	}
 
 	/* Check if this card can handle the "SD Card Physical Layer Specification 2.0" */
-	if (!host->no_sd) {
+	if (!(host->caps2 & MMC_CAP2_NO_SD)) {
 		rc = sd_send_if_cond(mci);
 		rc = sd_send_op_cond(mci);
 	}
-	if (host->no_sd || rc == -ETIMEDOUT) {
+	if ((host->caps2 & MMC_CAP2_NO_SD) || rc == -ETIMEDOUT) {
 		/* If SD card initialization was skipped or if it timed out,
 		 * we check for an MMC card */
 		dev_dbg(&mci->dev, "Card seems to be a MultiMediaCard\n");
@@ -2253,7 +2253,7 @@ int mci_register(struct mci_host *host)
 	if (IS_ENABLED(CONFIG_MCI_STARTUP))
 		mci_card_probe(mci);
 
-	if (!host->no_sd && dev_of_node(host->hw_dev))
+	if (!(host->caps2 & MMC_CAP2_NO_SD) && dev_of_node(host->hw_dev))
 		of_register_fixup(of_broken_cd_fixup, host);
 
 	list_add_tail(&mci->list, &mci_list);
@@ -2324,9 +2324,33 @@ void mci_of_parse_node(struct mci_host *host,
 
 	host->broken_cd = of_property_read_bool(np, "broken-cd");
 	host->non_removable = of_property_read_bool(np, "non-removable");
-	host->no_sd = of_property_read_bool(np, "no-sd");
-	host->no_sdio = of_property_read_bool(np, "no-sdio");
 	host->disable_wp = of_property_read_bool(np, "disable-wp");
+
+	if (of_property_read_bool(np, "full-pwr-cycle"))
+		host->caps2 |= MMC_CAP2_FULL_PWR_CYCLE;
+	if (of_property_read_bool(np, "full-pwr-cycle-in-suspend"))
+		host->caps2 |= MMC_CAP2_FULL_PWR_CYCLE_IN_SUSPEND;
+	if (of_property_read_bool(np, "no-sdio"))
+		host->caps2 |= MMC_CAP2_NO_SDIO;
+	if (of_property_read_bool(np, "no-sd"))
+		host->caps2 |= MMC_CAP2_NO_SD;
+	if (of_property_read_bool(np, "no-mmc"))
+		host->caps2 |= MMC_CAP2_NO_MMC;
+	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
+		if (of_property_read_bool(np, "mmc-hs200-1_8v"))
+			host->caps2 |= MMC_CAP2_HS200_1_8V_SDR;
+		if (of_property_read_bool(np, "mmc-hs200-1_2v"))
+			host->caps2 |= MMC_CAP2_HS200_1_2V_SDR;
+		if (of_property_read_bool(np, "mmc-hs400-1_8v"))
+			host->caps2 |= MMC_CAP2_HS400_1_8V | MMC_CAP2_HS200_1_8V_SDR;
+		if (of_property_read_bool(np, "mmc-hs400-1_2v"))
+			host->caps2 |= MMC_CAP2_HS400_1_2V | MMC_CAP2_HS200_1_2V_SDR;
+		if (of_property_read_bool(np, "mmc-hs400-enhanced-strobe"))
+			host->caps2 |= MMC_CAP2_HS400_ES;
+		if (of_property_read_bool(np, "no-mmc-hs400"))
+			host->caps2 &= ~(MMC_CAP2_HS400_1_8V | MMC_CAP2_HS400_1_2V |
+					 MMC_CAP2_HS400_ES);
+	}
 }
 
 void mci_of_parse(struct mci_host *host)
diff --git a/include/mci.h b/include/mci.h
index a72ede8db5..7a4521adde 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -468,6 +468,36 @@ struct mci_host {
 	const char *devname;		/**< the devicename for the card, defaults to disk%d */
 	unsigned voltages;
 	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_* */
+	unsigned caps2;		/* More host capabilities */
+#define MMC_CAP2_BOOTPART_NOACC	(1 << 0)	/* Boot partition no access */
+#define MMC_CAP2_FULL_PWR_CYCLE	(1 << 2)	/* Can do full power cycle */
+#define MMC_CAP2_FULL_PWR_CYCLE_IN_SUSPEND (1 << 3) /* Can do full power cycle in suspend */
+#define MMC_CAP2_HS200_1_8V_SDR	(1 << 5)        /* can support */
+#define MMC_CAP2_HS200_1_2V_SDR	(1 << 6)        /* can support */
+#define MMC_CAP2_HS200		(MMC_CAP2_HS200_1_8V_SDR | \
+				 MMC_CAP2_HS200_1_2V_SDR)
+#define MMC_CAP2_SD_EXP		(1 << 7)	/* SD express via PCIe */
+#define MMC_CAP2_SD_EXP_1_2V	(1 << 8)	/* SD express 1.2V */
+#define MMC_CAP2_CD_ACTIVE_HIGH	(1 << 10)	/* Card-detect signal active high */
+#define MMC_CAP2_RO_ACTIVE_HIGH	(1 << 11)	/* Write-protect signal active high */
+#define MMC_CAP2_NO_PRESCAN_POWERUP (1 << 14)	/* Don't power up before scan */
+#define MMC_CAP2_HS400_1_8V	(1 << 15)	/* Can support HS400 1.8V */
+#define MMC_CAP2_HS400_1_2V	(1 << 16)	/* Can support HS400 1.2V */
+#define MMC_CAP2_HS400		(MMC_CAP2_HS400_1_8V | \
+				 MMC_CAP2_HS400_1_2V)
+#define MMC_CAP2_HSX00_1_8V	(MMC_CAP2_HS200_1_8V_SDR | MMC_CAP2_HS400_1_8V)
+#define MMC_CAP2_HSX00_1_2V	(MMC_CAP2_HS200_1_2V_SDR | MMC_CAP2_HS400_1_2V)
+#define MMC_CAP2_SDIO_IRQ_NOTHREAD (1 << 17)
+#define MMC_CAP2_NO_WRITE_PROTECT (1 << 18)	/* No physical write protect pin, assume that card is always read-write */
+#define MMC_CAP2_NO_SDIO	(1 << 19)	/* Do not send SDIO commands during initialization */
+#define MMC_CAP2_HS400_ES	(1 << 20)	/* Host supports enhanced strobe */
+#define MMC_CAP2_NO_SD		(1 << 21)	/* Do not send SD commands during initialization */
+#define MMC_CAP2_NO_MMC		(1 << 22)	/* Do not send (e)MMC commands during initialization */
+#define MMC_CAP2_CQE		(1 << 23)	/* Has eMMC command queue engine */
+#define MMC_CAP2_CQE_DCMD	(1 << 24)	/* CQE can issue a direct command */
+#define MMC_CAP2_AVOID_3_3V	(1 << 25)	/* Host must negotiate down from 3.3V */
+#define MMC_CAP2_MERGE_CAPABLE	(1 << 26)	/* Host can merge a segment over the segment size */
+#define MMC_CAP2_CRYPTO		0
 	unsigned f_min;		/**< host interface lower limit */
 	unsigned f_max;		/**< host interface upper limit */
 	unsigned clock;		/**< Current clock used to talk to the card */
@@ -479,8 +509,6 @@ struct mci_host {
 	int use_dsr;		/**< optional dsr usage flag */
 	int broken_cd;		/**< card detect is broken */
 	bool non_removable;	/**< device is non removable */
-	bool no_sd;		/**< do not send SD commands during initialization */
-	bool no_sdio;		/**< do not send SDIO commands during initialization */
 	bool disable_wp;	/**< ignore write-protect detection logic */
 	struct regulator *supply;
 

-- 
2.43.2



