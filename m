Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvUEO-000647-TK
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:40:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 14:39:57 +0100
Message-Id: <1328794798-17699-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
References: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] mci: Fix 8 bit mmc cards
To: barebox@lists.infradead.org

Currently we test the cards capabilities for being 8bit capable.
This does not work since noone ever sets this bit. Unfortunately
there is no bit to test 8bit capability, so we introduce a patch
from the kernel which puts the mmc card into 8bit mode and tests
whether it can succesfully read the ext_csd in this mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |  133 ++++++++++++++++++++++++++++++++++++++---------
 include/mci.h          |    1 +
 2 files changed, 108 insertions(+), 26 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2377fef..0bf4449 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -391,10 +391,10 @@ static int mci_switch(struct mci *mci, unsigned set, unsigned index,
  */
 static int mmc_change_freq(struct mci *mci)
 {
-	char *ext_csd = sector_buf;
 	char cardtype;
 	int err;
 
+	mci->ext_csd = xmalloc(512);
 	mci->card_caps = 0;
 
 	/* Only version 4 supports high-speed */
@@ -403,13 +403,13 @@ static int mmc_change_freq(struct mci *mci)
 
 	mci->card_caps |= MMC_MODE_4BIT;
 
-	err = mci_send_ext_csd(mci, ext_csd);
+	err = mci_send_ext_csd(mci, mci->ext_csd);
 	if (err) {
 		dev_dbg(mci->mci_dev, "Preparing for frequency setup failed: %d\n", err);
 		return err;
 	}
 
-	cardtype = ext_csd[EXT_CSD_CARD_TYPE] & EXT_CSD_CARD_TYPE_MASK;
+	cardtype = mci->ext_csd[EXT_CSD_CARD_TYPE] & EXT_CSD_CARD_TYPE_MASK;
 
 	err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, 1);
 
@@ -419,7 +419,7 @@ static int mmc_change_freq(struct mci *mci)
 	}
 
 	/* Now check to see that it worked */
-	err = mci_send_ext_csd(mci, ext_csd);
+	err = mci_send_ext_csd(mci, mci->ext_csd);
 
 	if (err) {
 		dev_dbg(mci->mci_dev, "Verifying frequency change failed: %d\n", err);
@@ -427,7 +427,7 @@ static int mmc_change_freq(struct mci *mci)
 	}
 
 	/* No high-speed support */
-	if (!ext_csd[EXT_CSD_HS_TIMING])
+	if (!mci->ext_csd[EXT_CSD_HS_TIMING])
 		return 0;
 
 	/* High Speed is set, there are two types: 52MHz and 26MHz */
@@ -767,6 +767,67 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 	dev_dbg(mci->mci_dev, "Capacity: %u MiB\n", (unsigned)mci->capacity >> 20);
 }
 
+static int mmc_compare_ext_csds(struct mci *mci, unsigned bus_width)
+{
+	u8 *bw_ext_csd;
+	int err;
+
+	if (bus_width == MMC_BUS_WIDTH_1)
+		return 0;
+
+	bw_ext_csd = xmalloc(512);
+	err = mci_send_ext_csd(mci, bw_ext_csd);
+	if (err) {
+		dev_info(mci->mci_dev, "mci_send_ext_csd failed with %d\n", err);
+		if (bus_width != MMC_BUS_WIDTH_1)
+			err = -EINVAL;
+		goto out;
+	}
+
+	if (bus_width == MMC_BUS_WIDTH_1)
+		goto out;
+	/* only compare read only fields */
+	err = (mci->ext_csd[EXT_CSD_PARTITION_SUPPORT] ==
+			bw_ext_csd[EXT_CSD_PARTITION_SUPPORT]) &&
+		(mci->ext_csd[EXT_CSD_ERASED_MEM_CONT] ==
+			bw_ext_csd[EXT_CSD_ERASED_MEM_CONT]) &&
+		(mci->ext_csd[EXT_CSD_REV] ==
+			bw_ext_csd[EXT_CSD_REV]) &&
+		(mci->ext_csd[EXT_CSD_STRUCTURE] ==
+			bw_ext_csd[EXT_CSD_STRUCTURE]) &&
+		(mci->ext_csd[EXT_CSD_CARD_TYPE] ==
+			bw_ext_csd[EXT_CSD_CARD_TYPE]) &&
+		(mci->ext_csd[EXT_CSD_S_A_TIMEOUT] ==
+			bw_ext_csd[EXT_CSD_S_A_TIMEOUT]) &&
+		(mci->ext_csd[EXT_CSD_HC_WP_GRP_SIZE] ==
+			bw_ext_csd[EXT_CSD_HC_WP_GRP_SIZE]) &&
+		(mci->ext_csd[EXT_CSD_ERASE_TIMEOUT_MULT] ==
+			bw_ext_csd[EXT_CSD_ERASE_TIMEOUT_MULT]) &&
+		(mci->ext_csd[EXT_CSD_HC_ERASE_GRP_SIZE] ==
+			bw_ext_csd[EXT_CSD_HC_ERASE_GRP_SIZE]) &&
+		(mci->ext_csd[EXT_CSD_SEC_TRIM_MULT] ==
+			bw_ext_csd[EXT_CSD_SEC_TRIM_MULT]) &&
+		(mci->ext_csd[EXT_CSD_SEC_ERASE_MULT] ==
+			bw_ext_csd[EXT_CSD_SEC_ERASE_MULT]) &&
+		(mci->ext_csd[EXT_CSD_SEC_FEATURE_SUPPORT] ==
+			bw_ext_csd[EXT_CSD_SEC_FEATURE_SUPPORT]) &&
+		(mci->ext_csd[EXT_CSD_TRIM_MULT] ==
+			bw_ext_csd[EXT_CSD_TRIM_MULT]) &&
+		(mci->ext_csd[EXT_CSD_SEC_CNT + 0] ==
+			bw_ext_csd[EXT_CSD_SEC_CNT + 0]) &&
+		(mci->ext_csd[EXT_CSD_SEC_CNT + 1] ==
+			bw_ext_csd[EXT_CSD_SEC_CNT + 1]) &&
+		(mci->ext_csd[EXT_CSD_SEC_CNT + 2] ==
+			bw_ext_csd[EXT_CSD_SEC_CNT + 2]) &&
+		(mci->ext_csd[EXT_CSD_SEC_CNT + 3] ==
+			bw_ext_csd[EXT_CSD_SEC_CNT + 3]) ?
+				0 : -EINVAL;
+
+out:
+	free(bw_ext_csd);
+	return err;
+}
+
 static int mci_startup_sd(struct mci *mci)
 {
 	struct mci_cmd cmd;
@@ -802,29 +863,18 @@ static int mci_startup_sd(struct mci *mci)
 
 static int mci_startup_mmc(struct mci *mci)
 {
+	struct mci_host *host = mci->host;
 	int err;
+	int idx = 0;
+	static unsigned ext_csd_bits[] = {
+		EXT_CSD_BUS_WIDTH_4,
+		EXT_CSD_BUS_WIDTH_8,
+	};
+	static unsigned bus_widths[] = {
+		MMC_BUS_WIDTH_4,
+		MMC_BUS_WIDTH_8,
+	};
 
-	if (mci->card_caps & MMC_MODE_4BIT) {
-		dev_dbg(mci->mci_dev, "Set MMC bus width to 4 bit\n");
-		/* Set the card to use 4 bit*/
-		err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
-				EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_4);
-		if (err) {
-			dev_dbg(mci->mci_dev, "Changing MMC bus width failed: %d\n", err);
-			return err;
-		}
-		mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
-	} else if (mci->card_caps & MMC_MODE_8BIT) {
-		dev_dbg(mci->mci_dev, "Set MMC bus width to 8 bit\n");
-		/* Set the card to use 8 bit*/
-		err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
-				EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_8);
-		if (err) {
-			dev_dbg(mci->mci_dev, "Changing MMC bus width failed: %d\n", err);
-			return err;
-		}
-		mci_set_bus_width(mci, MMC_BUS_WIDTH_8);
-	}
 	/* if possible, speed up the transfer */
 	if (mci->card_caps & MMC_MODE_HS) {
 		if (mci->card_caps & MMC_MODE_HS_52MHz)
@@ -834,6 +884,37 @@ static int mci_startup_mmc(struct mci *mci)
 	} else
 		mci_set_clock(mci, 20000000);
 
+	/*
+	 * Unlike SD, MMC cards dont have a configuration register to notify
+	 * supported bus width. So bus test command should be run to identify
+	 * the supported bus width or compare the ext csd values of current
+	 * bus width and ext csd values of 1 bit mode read earlier.
+	 */
+	if (host->host_caps & MMC_MODE_8BIT)
+		idx = 1;
+
+	for (; idx >= 0; idx--) {
+
+		/*
+		 * Host is capable of 8bit transfer, then switch
+		 * the device to work in 8bit transfer mode. If the
+		 * mmc switch command returns error then switch to
+		 * 4bit transfer mode. On success set the corresponding
+		 * bus width on the host.
+		 */
+		err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
+				 EXT_CSD_BUS_WIDTH,
+				 ext_csd_bits[idx]);
+		if (err)
+			continue;
+
+		mci_set_bus_width(mci, bus_widths[idx]);
+
+		err = mmc_compare_ext_csds(mci, bus_widths[idx]);
+		if (!err)
+			break;
+	}
+
 	return 0;
 }
 
diff --git a/include/mci.h b/include/mci.h
index 7e3b459..97036c3 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -326,6 +326,7 @@ struct mci {
 	unsigned write_bl_len;
 	uint64_t capacity;	/**< Card's data capacity in bytes */
 	int ready_for_use;	/** true if already probed */
+	char *ext_csd;
 };
 
 int mci_register(struct mci_host*);
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
