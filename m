Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjSL2-0004Fk-HW
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 10:50:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Jun 2013 12:49:39 +0200
Message-Id: <1370256580-3113-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1370256580-3113-1-git-send-email-s.hauer@pengutronix.de>
References: <1370256580-3113-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] mci: add mci_caps function
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

To let the card caps be card caps and not the intersection between
card caps and host caps.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 86600ec..74aab91 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -66,6 +66,11 @@
  * - Transcend SDHC, 8 GiB (Class 6)
  */
 
+static inline unsigned mci_caps(struct mci *mci)
+{
+	return mci->card_caps & mci->host->host_caps;
+}
+
 /**
  * Call the MMC/SD instance driver to run the command on the MMC/SD card
  * @param mci MCI instance
@@ -900,7 +905,7 @@ static int mci_startup_sd(struct mci *mci)
 	struct mci_cmd cmd;
 	int err;
 
-	if (mci->card_caps & MMC_CAP_4_BIT_DATA) {
+	if (mci_caps(mci) & MMC_CAP_4_BIT_DATA) {
 		dev_dbg(&mci->dev, "Prepare for bus width change\n");
 		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
 		err = mci_send_cmd(mci, &cmd, NULL);
@@ -920,7 +925,7 @@ static int mci_startup_sd(struct mci *mci)
 		mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
 	}
 	/* if possible, speed up the transfer */
-	if (mci->card_caps & MMC_CAP_SD_HIGHSPEED)
+	if (mci_caps(mci) & MMC_CAP_SD_HIGHSPEED)
 		mci_set_clock(mci, 50000000);
 	else
 		mci_set_clock(mci, 25000000);
@@ -943,7 +948,7 @@ static int mci_startup_mmc(struct mci *mci)
 	};
 
 	/* if possible, speed up the transfer */
-	if (mci->card_caps & MMC_CAP_MMC_HIGHSPEED) {
+	if (mci_caps(mci) & MMC_CAP_MMC_HIGHSPEED) {
 		if (mci->card_caps & MMC_CAP_MMC_HIGHSPEED_52MHZ)
 			mci_set_clock(mci, 52000000);
 		else
@@ -993,7 +998,6 @@ static int mci_startup_mmc(struct mci *mci)
  */
 static int mci_startup(struct mci *mci)
 {
-	struct mci_host *host = mci->host;
 	struct mci_cmd cmd;
 	int err;
 
@@ -1098,9 +1102,6 @@ static int mci_startup(struct mci *mci)
 
 	mci_extract_card_capacity_from_csd(mci);
 
-	/* Restrict card's capabilities by what the host can do */
-	mci->card_caps &= host->host_caps;
-
 	if (IS_SD(mci))
 		err = mci_startup_sd(mci);
 	else
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
