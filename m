Delivery-date: Mon, 17 Feb 2025 12:35:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjzPG-003Sou-1a
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 12:35:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjzPE-00087Z-Qm
	for lore@pengutronix.de; Mon, 17 Feb 2025 12:35:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pTPdHwKrHPvgKOsEDu9V3dOFFgTgvuHJllQPzQC5dLM=; b=OP9o31X9Zg7TKHvz8b7Qa6pVUy
	bXEB86+EY/NTb8AAzXwH2irc8AjyVe3BpCPxMCgZBq/6CeCJ1hqv+1SC1f7XdgBZ2ZdTBVPOZIZ2d
	xUigpDkx8M9ocTonNkpIUAhBTu1aPmPAxcrUS9x1LXWJHN88LBdm9+HN/e7Gdi7tUHgk+O0dMnHsH
	9UPHL2KGNmDE1zNDCIMcfq03dmVTSPIlVp2+eQ0kS4F1CHMCMt/vR4gZlmwti16SGHHz8maFgBe+V
	4YKsGxMJUavBsgotw766g7X7nWYbvjAqIw16r66vgo2B9JtluJgrfm5EBVbZtS21zuNOM7726vNt0
	d8NpFAfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjzOc-00000004K4r-45E3;
	Mon, 17 Feb 2025 11:34:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjzOb-00000004K4W-1BOI
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 11:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=pTPdHwKrHPvgKOsEDu9V3dOFFgTgvuHJllQPzQC5dLM=; b=B2HwRV/C6Hz2m2pHKOs9TSfpYb
	AMOkF4OSCztNxnjfYpTQp1wnD2Sma6OamFI2w5cP7M3mtUqsc6HmvCRtCHOICt0KcUd+a7+Ys1fpm
	/FoINanAf9xp/cKacJez27coCyDvydhPtIZeOA/IerJf7C/Xe+qdEJOoA2RS62YP4nmy3tMHw8k6z
	5FNdYjnj4fjIY47GrWVVfaAU83ZG4tZSvFgWRD265dS0hEHBCmLchc0F5vp3Lw7LSj2pkC7G4Bbw2
	DyZZ0GT1ECHZVvArknnkPBXsEnJAiW/PGz4FQ0xqUutHkI1suxQSbcCbHBVrAwcqBHH1qvYTEjiqt
	9hR7EEQg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjzOY-00000001ngb-0uDT
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 11:34:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjzOW-0007uU-D7; Mon, 17 Feb 2025 12:34:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjzOW-001Osg-0i;
	Mon, 17 Feb 2025 12:34:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjzOW-008r56-0N;
	Mon, 17 Feb 2025 12:34:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 12:33:54 +0100
Message-Id: <20250217113355.2099178-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_113438_381249_49DB5E5D 
X-CRM114-Status: GOOD (  24.58  )
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
Subject: [PATCH v2 1/2] mci: core: import Linux logic for higher preferred erase size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As a comment in the file notes, doing too small a granularity for erases
has considerable effect on performance:

  > Example Samsung eMMC 8GTF4:
  >
  >   time erase /dev/mmc2.part_of_512m # 1024 trims
  >   time: 2849ms
  >
  >   time erase /dev/mmc2.part_of_512m # single trim
  >   time: 56ms

This was deemed acceptable at first, because 3 seconds is still
tolerable.

On a SkyHigh S40004, an erase of the whole 3728 MiB ended up
taking longer than 400s in barebox, but only 4s in Linux, which
dwarfs the time actually needed for writing.

Linux has some rather complicated logic to compute a higher erase size
granularity, which still fits in the max busy timeout that a controller
may require. Until that's support in barebox, we import a simpler
heuristic that Linux uses to compute

  /sys/class/mmc_host/*/*/preferred_erase_size

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - replace wrong 11 bit right shift with more descriptive and correct
    division by SZ_1M (Sascha)
---
 drivers/mci/mci-core.c | 105 ++++++++++++++++++++++++++---------------
 include/mci.h          |   1 +
 2 files changed, 69 insertions(+), 37 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 7ec2643b8d7f..13306d78dcfe 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1774,6 +1774,70 @@ static int mci_startup_mmc(struct mci *mci)
 	return ret >= MMC_BUS_WIDTH_1 ? 0 : ret;
 }
 
+static void mci_init_erase(struct mci *card)
+{
+	if (!IS_ENABLED(CONFIG_MCI_ERASE))
+		return;
+
+	/* TODO: While it's possible to clear many erase groups at once
+	 * and it greatly improves throughput, drivers need adjustment:
+	 *
+	 * Many drivers hardcode a maximal wait time before aborting
+	 * the wait for R1b and returning -ETIMEDOUT. With long
+	 * erases/trims, we are bound to run into this timeout, so for now
+	 * we just split into sufficiently small erases that are unlikely
+	 * to trigger the timeout.
+	 *
+	 * What Linux does and what we should be doing in barebox is:
+	 *
+	 *  - add a struct mci_cmd::busy_timeout member that drivers should
+	 *    use instead of hardcoding their own timeout delay. The busy
+	 *    timeout length can be calculated by the MCI core after
+	 *    consulting the appropriate CSD/EXT_CSD/SSR registers.
+	 *
+	 *  - add a struct mci_host::max_busy_timeout member, where drivers
+	 *    can indicate the maximum timeout they are able to support.
+	 *    The MCI core will never set a busy_timeout that exceeds this
+	 *    value.
+	 *
+	 *  Example Samsung eMMC 8GTF4:
+	 *
+	 *    time erase /dev/mmc2.part_of_512m # 1024 trims
+	 *    time: 2849ms
+	 *
+	 *    time erase /dev/mmc2.part_of_512m # single trim
+	 *    time: 56ms
+	 */
+	if (IS_SD(card) && card->ssr.au) {
+		card->pref_erase = card->ssr.au;
+	} else if (card->erase_grp_size) {
+		unsigned int sz;
+
+		sz = card->capacity / SZ_1M;
+		if (sz < 128)
+			card->pref_erase = 512 * 1024 / 512;
+		else if (sz < 512)
+			card->pref_erase = 1024 * 1024 / 512;
+		else if (sz < 1024)
+			card->pref_erase = 2 * 1024 * 1024 / 512;
+		else
+			card->pref_erase = 4 * 1024 * 1024 / 512;
+		if (card->pref_erase < card->erase_grp_size)
+			card->pref_erase = card->erase_grp_size;
+		else {
+			sz = card->pref_erase % card->erase_grp_size;
+			if (sz)
+				card->pref_erase += card->erase_grp_size - sz;
+		}
+	} else {
+		card->pref_erase = 0;
+		return;
+	}
+
+	dev_add_param_uint32_fixed(&card->dev, "preferred_erase_size",
+				   card->pref_erase * 512, "%u");
+}
+
 /**
  * Scan the given host interfaces and detect connected MMC/SD cards
  * @param mci MCI instance
@@ -1903,6 +1967,8 @@ static int mci_startup(struct mci *mci)
 	/* we setup the blocklength only one times for all accesses to this media  */
 	err = mci_set_blocklen(mci, mci->read_bl_len);
 
+	mci_init_erase(mci);
+
 	mci_part_add(mci, mci->capacity, 0,
 			mci->cdevname, NULL, 0, true,
 			MMC_BLK_DATA_AREA_MAIN);
@@ -2080,7 +2146,7 @@ static int mci_sd_erase(struct block_device *blk, sector_t from,
 	struct mci *mci = part->mci;
 	sector_t i = 0;
 	unsigned arg;
-	sector_t blk_max, to = from + blkcnt;
+	sector_t to = from + blkcnt;
 	int rc;
 
 	mci_blk_part_switch(part);
@@ -2106,45 +2172,10 @@ static int mci_sd_erase(struct block_device *blk, sector_t from,
 	/* 'from' and 'to' are inclusive */
 	to -= 1;
 
-	/* TODO: While it's possible to clear many erase groups at once
-	 * and it greatly improves throughput, drivers need adjustment:
-	 *
-	 * Many drivers hardcode a maximal wait time before aborting
-	 * the wait for R1b and returning -ETIMEDOUT. With long
-	 * erases/trims, we are bound to run into this timeout, so for now
-	 * we just split into sufficiently small erases that are unlikely
-	 * to trigger the timeout.
-	 *
-	 * What Linux does and what we should be doing in barebox is:
-	 *
-	 *  - add a struct mci_cmd::busy_timeout member that drivers should
-	 *    use instead of hardcoding their own timeout delay. The busy
-	 *    timeout length can be calculated by the MCI core after
-	 *    consulting the appropriate CSD/EXT_CSD/SSR registers.
-	 *
-	 *  - add a struct mci_host::max_busy_timeout member, where drivers
-	 *    can indicate the maximum timeout they are able to support.
-	 *    The MCI core will never set a busy_timeout that exceeds this
-	 *    value.
-	 *
-	 *  Example Samsung eMMC 8GTF4:
-	 *
-	 *    time erase /dev/mmc2.part_of_512m # 1024 trims
-	 *    time: 2849ms
-	 *
-	 *    time erase /dev/mmc2.part_of_512m # single trim
-	 *    time: 56ms
-	 */
-
-	if (IS_SD(mci) && mci->ssr.au)
-		blk_max = mci->ssr.au;
-	else
-		blk_max = mci->erase_grp_size;
-
 	while (i < blkcnt) {
 		sector_t blk_r;
 
-		blk_r = min(blkcnt - i, blk_max);
+		blk_r = min_t(blkcnt_t, blkcnt - i, mci->pref_erase);
 
 		rc =  mci_block_erase(mci, from + i, blk_r, arg);
 		if (rc)
diff --git a/include/mci.h b/include/mci.h
index 1e3757027406..15fc0f22088f 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -647,6 +647,7 @@ struct mci {
 	/** currently used data block length for write accesses */
 	unsigned write_bl_len;
 	unsigned erase_grp_size;
+	unsigned pref_erase;	/**< preferred erase granularity in blocks */
 	uint64_t capacity;	/**< Card's data capacity in bytes */
 	int ready_for_use;	/** true if already probed */
 	int dsr_imp;		/**< DSR implementation state from CSD */
-- 
2.39.5



