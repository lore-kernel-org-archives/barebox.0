Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.31.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2z9h-0003qX-Gj
 for barebox@lists.infradead.org; Tue, 14 Jan 2014 08:15:27 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Tue, 14 Jan 2014 09:23:34 +0100
Message-Id: <1389687817-30882-2-git-send-email-list-09_barebox@tqsc.de>
In-Reply-To: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
References: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: [PATCH 1/4] mci: add DSR support
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>

From: Markus Niebel <Markus.Niebel@tqs.de>

The eMMC and the SD-Card specifications describe the optional SET_DSR command.
During measurements at our lab we found that some cards implementing this feature
having really strong driver strengts per default. This can lead to voltage peaks
above the specification of the host on signal edges for data sent from a card to
the host.

Since availability of a given card type may be shorter than the time a certain
hardware will be produced it is useful to have support for this command (Alternative
would be changing termination resistors and adapting the driver strength of the
host to the used card.)

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
---
 drivers/mci/mci-core.c |   27 +++++++++++++++++++++++++++
 include/mci.h          |    3 +++
 2 files changed, 30 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a232679..2c91ff2 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -102,6 +102,20 @@ static void mci_setup_cmd(struct mci_cmd *p, unsigned cmd, unsigned arg, unsigne
 }
 
 /**
+ * configure optional DSR value
+ * @param mci_dev MCI instance
+ * @return Transaction status (0 on success)
+ */
+static int mci_set_dsr(struct mci *mci)
+{
+	struct mci_cmd cmd;
+
+	mci_setup_cmd(&cmd, MMC_CMD_SET_DSR,
+			(mci->host->dsr_val >> 16) | 0xffff, MMC_RSP_NONE);
+	return mci_send_cmd(mci, &cmd, NULL);
+}
+
+/**
  * Setup SD/MMC card's blocklength to be used for future transmitts
  * @param mci_dev MCI instance
  * @param len Blocklength in bytes
@@ -836,6 +850,15 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 	dev_dbg(&mci->dev, "Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
 }
 
+/**
+ * Extract card's DSR implementation state from CSD
+ * @param mci MCI instance
+ */
+static void mci_extract_card_dsr_imp_from_csd(struct mci *mci)
+{
+	mci->dsr_imp = UNSTUFF_BITS(mci->csd, 76, 1);
+}
+
 static int mmc_compare_ext_csds(struct mci *mci, unsigned bus_width)
 {
 	u8 *bw_ext_csd;
@@ -1058,6 +1081,7 @@ static int mci_startup(struct mci *mci)
 	mci_detect_version_from_csd(mci);
 	mci_extract_max_tran_speed_from_csd(mci);
 	mci_extract_block_lengths_from_csd(mci);
+	mci_extract_card_dsr_imp_from_csd(mci);
 
 	/* sanitiy? */
 	if (mci->read_bl_len > SECTOR_SIZE) {
@@ -1074,6 +1098,9 @@ static int mci_startup(struct mci *mci)
 	dev_dbg(&mci->dev, "Read block length: %u, Write block length: %u\n",
 		mci->read_bl_len, mci->write_bl_len);
 
+	if (mci->dsr_imp && mci->host->use_dsr)
+		mci_set_dsr(mci);
+
 	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
 		dev_dbg(&mci->dev, "Select the card, and put it into Transfer Mode\n");
 		/* Select the card, and put it into Transfer Mode */
diff --git a/include/mci.h b/include/mci.h
index 0f10e8a..d3a553e 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -294,6 +294,8 @@ struct mci_host {
 	unsigned clock;		/**< Current clock used to talk to the card */
 	unsigned bus_width;	/**< used data bus width to the card */
 	unsigned max_req_size;
+	unsigned dsr_val;	/**< optional dsr value */
+	int use_dsr;		/**< optional dsr usage flag */
 
 	/** init the host interface */
 	int (*init)(struct mci_host*, struct device_d*);
@@ -344,6 +346,7 @@ struct mci {
 	unsigned write_bl_len;
 	uint64_t capacity;	/**< Card's data capacity in bytes */
 	int ready_for_use;	/** true if already probed */
+	int dsr_imp;		/**< DSR implementation state from CSD */
 	char *ext_csd;
 	int probe;
 	struct param_d *param_probe;
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
