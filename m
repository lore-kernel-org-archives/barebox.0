Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZs-0004fB-5g
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:56 +0100
Message-Id: <1328788438-19717-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
References: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/15] mci: factor out mci/sd specific startup functions
To: barebox@lists.infradead.org

This saves an indention level and makes the code more readable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |  133 ++++++++++++++++++++++++++++--------------------
 1 files changed, 77 insertions(+), 56 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 799c5cb..9c9ed48 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -767,6 +767,76 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 	dev_dbg(mci->mci_dev, "Capacity: %u MiB\n", (unsigned)mci->capacity >> 20);
 }
 
+static int mci_startup_sd(struct mci *mci)
+{
+	struct mci_cmd cmd;
+	int err;
+
+	if (mci->card_caps & MMC_MODE_4BIT) {
+		dev_dbg(mci->mci_dev, "Prepare for bus width change\n");
+		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
+		err = mci_send_cmd(mci, &cmd, NULL);
+		if (err) {
+			dev_dbg(mci->mci_dev, "Preparing SD for bus width change failed: %d\n", err);
+			return err;
+		}
+
+		dev_dbg(mci->mci_dev, "Set SD bus width to 4 bit\n");
+		mci_setup_cmd(&cmd, SD_CMD_APP_SET_BUS_WIDTH, 2, MMC_RSP_R1);
+		err = mci_send_cmd(mci, &cmd, NULL);
+		if (err) {
+			dev_dbg(mci->mci_dev, "Changing SD bus width failed: %d\n", err);
+			/* TODO continue with 1 bit? */
+			return err;
+		}
+		mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
+	}
+	/* if possible, speed up the transfer */
+	if (mci->card_caps & MMC_MODE_HS)
+		mci_set_clock(mci, 50000000);
+	else
+		mci_set_clock(mci, 25000000);
+
+	return 0;
+}
+
+static int mci_startup_mmc(struct mci *mci)
+{
+	int err;
+
+	if (mci->card_caps & MMC_MODE_4BIT) {
+		dev_dbg(mci->mci_dev, "Set MMC bus width to 4 bit\n");
+		/* Set the card to use 4 bit*/
+		err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
+				EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_4);
+		if (err) {
+			dev_dbg(mci->mci_dev, "Changing MMC bus width failed: %d\n", err);
+			return err;
+		}
+		mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
+	} else if (mci->card_caps & MMC_MODE_8BIT) {
+		dev_dbg(mci->mci_dev, "Set MMC bus width to 8 bit\n");
+		/* Set the card to use 8 bit*/
+		err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
+				EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_8);
+		if (err) {
+			dev_dbg(mci->mci_dev, "Changing MMC bus width failed: %d\n", err);
+			return err;
+		}
+		mci_set_bus_width(mci, MMC_BUS_WIDTH_8);
+	}
+	/* if possible, speed up the transfer */
+	if (mci->card_caps & MMC_MODE_HS) {
+		if (mci->card_caps & MMC_MODE_HS_52MHz)
+			mci_set_clock(mci, 52000000);
+		else
+			mci_set_clock(mci, 26000000);
+	} else
+		mci_set_clock(mci, 20000000);
+
+	return 0;
+}
+
 /**
  * Scan the given host interfaces and detect connected MMC/SD cards
  * @param mci MCI instance
@@ -881,62 +951,13 @@ static int mci_startup(struct mci *mci)
 	/* Restrict card's capabilities by what the host can do */
 	mci->card_caps &= host->host_caps;
 
-	if (IS_SD(mci)) {
-		if (mci->card_caps & MMC_MODE_4BIT) {
-			dev_dbg(mci->mci_dev, "Prepare for bus width change\n");
-			mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
-			err = mci_send_cmd(mci, &cmd, NULL);
-			if (err) {
-				dev_dbg(mci->mci_dev, "Preparing SD for bus width change failed: %d\n", err);
-				return err;
-			}
-
-			dev_dbg(mci->mci_dev, "Set SD bus width to 4 bit\n");
-			mci_setup_cmd(&cmd, SD_CMD_APP_SET_BUS_WIDTH, 2, MMC_RSP_R1);
-			err = mci_send_cmd(mci, &cmd, NULL);
-			if (err) {
-				dev_dbg(mci->mci_dev, "Changing SD bus width failed: %d\n", err);
-				/* TODO continue with 1 bit? */
-				return err;
-			}
-			mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
-		}
-		/* if possible, speed up the transfer */
-		if (mci->card_caps & MMC_MODE_HS)
-			mci_set_clock(mci, 50000000);
-		else
-			mci_set_clock(mci, 25000000);
-	} else {
-		if (mci->card_caps & MMC_MODE_4BIT) {
-			dev_dbg(mci->mci_dev, "Set MMC bus width to 4 bit\n");
-			/* Set the card to use 4 bit*/
-			err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
-					EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_4);
-			if (err) {
-				dev_dbg(mci->mci_dev, "Changing MMC bus width failed: %d\n", err);
-				return err;
-			}
-			mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
-		} else if (mci->card_caps & MMC_MODE_8BIT) {
-			dev_dbg(mci->mci_dev, "Set MMC bus width to 8 bit\n");
-			/* Set the card to use 8 bit*/
-			err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
-					EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_8);
-			if (err) {
-				dev_dbg(mci->mci_dev, "Changing MMC bus width failed: %d\n", err);
-				return err;
-			}
-			mci_set_bus_width(mci, MMC_BUS_WIDTH_8);
-		}
-		/* if possible, speed up the transfer */
-		if (mci->card_caps & MMC_MODE_HS) {
-			if (mci->card_caps & MMC_MODE_HS_52MHz)
-				mci_set_clock(mci, 52000000);
-			else
-				mci_set_clock(mci, 26000000);
-		} else
-			mci_set_clock(mci, 20000000);
-	}
+	if (IS_SD(mci))
+		err = mci_startup_sd(mci);
+	else
+		err = mci_startup_mmc(mci);
+
+	if (err)
+		return err;
 
 	/* we setup the blocklength only one times for all accesses to this media  */
 	err = mci_set_blocklen(mci, mci->read_bl_len);
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
