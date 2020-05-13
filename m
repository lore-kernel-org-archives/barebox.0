Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpqT-0004Vy-6P
 for barebox@lists.infradead.org; Wed, 13 May 2020 11:46:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jYpqO-0006Kk-7R
 for barebox@lists.infradead.org; Wed, 13 May 2020 13:46:36 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 13 May 2020 13:46:36 +0200
Message-Id: <20200513114636.811-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mci: core: add device parameter for eMMC boot ack
To: barebox@lists.infradead.org

This adds an easy way to enable the boot acknowledge function of
a eMMC device, without the need to frob the EXT_CSD setting via
the mmc_extcsd command.
A boot ack is required whenever the boot partitions are read via
the fast initialization boot protocol.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mci/mci-core.c | 33 +++++++++++++++++++++++++++------
 include/mci.h          |  2 ++
 2 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index f3718327f18d..d33bc0c1a41e 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -516,6 +516,7 @@ static int mmc_change_freq(struct mci *mci)
 
 		mci->ext_csd_part_config = mci->ext_csd[EXT_CSD_PARTITION_CONFIG];
 		mci->bootpart = (mci->ext_csd_part_config >> 3) & 0x7;
+		mci->boot_ack_enable = (mci->ext_csd_part_config >> 6) & 0x1;
 	}
 
 	return 0;
@@ -1592,6 +1593,17 @@ static int mci_set_boot(struct param_d *param, void *priv)
 			  EXT_CSD_PARTITION_CONFIG, mci->ext_csd_part_config);
 }
 
+static int mci_set_boot_ack(struct param_d *param, void *priv)
+{
+	struct mci *mci = priv;
+
+	mci->ext_csd_part_config &= ~(0x1 << 6);
+	mci->ext_csd_part_config |= mci->boot_ack_enable << 6;
+
+	return mci_switch(mci,
+			  EXT_CSD_PARTITION_CONFIG, mci->ext_csd_part_config);
+}
+
 static const char *mci_boot_names[] = {
 	"disabled",
 	"boot0",
@@ -1672,6 +1684,7 @@ static int mci_card_probe(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
 	int i, rc, disknum, ret;
+	bool has_bootpart = false;
 
 	if (host->card_present && !host->card_present(host) &&
 	    !host->non_removable) {
@@ -1741,12 +1754,20 @@ static int mci_card_probe(struct mci *mci)
 		rc = mci_register_partition(part);
 
 		if (IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
-				part->area_type == MMC_BLK_DATA_AREA_BOOT &&
-				!mci->param_boot) {
-			mci->param_boot = dev_add_param_enum(&mci->dev, "boot",
-					mci_set_boot, NULL, &mci->bootpart,
-					mci_boot_names, ARRAY_SIZE(mci_boot_names), mci);
-		}
+		    part->area_type == MMC_BLK_DATA_AREA_BOOT)
+			has_bootpart = true;
+	}
+
+	if (has_bootpart) {
+		mci->param_boot =
+			dev_add_param_enum(&mci->dev, "boot", mci_set_boot,
+					   NULL, &mci->bootpart, mci_boot_names,
+					   ARRAY_SIZE(mci_boot_names), mci);
+
+		mci->param_boot_ack =
+			dev_add_param_bool(&mci->dev, "boot_ack",
+					   mci_set_boot_ack, NULL,
+					   &mci->boot_ack_enable, mci);
 	}
 
 	dev_dbg(&mci->dev, "SD Card successfully added\n");
diff --git a/include/mci.h b/include/mci.h
index cf9d188c5c21..587c76678c96 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -462,7 +462,9 @@ struct mci {
 	char *ext_csd;
 	int probe;
 	struct param_d *param_boot;
+	struct param_d *param_boot_ack;
 	int bootpart;
+	int boot_ack_enable;
 
 	struct mci_part part[MMC_NUM_PHY_PARTITION];
 	int nr_parts;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
