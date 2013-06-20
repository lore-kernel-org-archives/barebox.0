Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004g7-52
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:11 +0200
Message-Id: <1371711261-10039-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/17] mci: mxs: Use dev_*
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mxs.c | 37 ++++++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index e6f40eb..cb2911a 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -116,22 +116,22 @@ static void mxs_mci_finish_request(struct mxs_mci_host *mxs_mci)
  * @param status HW_SSP_STATUS's content
  * @return 0 if no error, negative values else
  */
-static int mxs_mci_get_cmd_error(unsigned status)
+static int mxs_mci_get_cmd_error(struct mxs_mci_host *mxs_mci, unsigned status)
 {
 	if (status & SSP_STATUS_ERROR)
-		pr_debug("Status Reg reports %08X\n", status);
+		dev_dbg(mxs_mci->host.hw_dev, "Status Reg reports %08X\n", status);
 
 	if (status & SSP_STATUS_TIMEOUT) {
-		pr_debug("CMD timeout\n");
+		dev_dbg(mxs_mci->host.hw_dev, "CMD timeout\n");
 		return -ETIMEDOUT;
 	} else if (status & SSP_STATUS_RESP_TIMEOUT) {
-		pr_debug("RESP timeout\n");
+		dev_dbg(mxs_mci->host.hw_dev, "RESP timeout\n");
 		return -ETIMEDOUT;
 	} else if (status & SSP_STATUS_RESP_CRC_ERR) {
-		pr_debug("CMD crc error\n");
+		dev_dbg(mxs_mci->host.hw_dev, "CMD crc error\n");
 		return -EILSEQ;
 	} else if (status & SSP_STATUS_RESP_ERR) {
-		pr_debug("RESP error\n");
+		dev_dbg(mxs_mci->host.hw_dev, "RESP error\n");
 		return -EIO;
 	}
 
@@ -168,7 +168,8 @@ static int mxs_mci_read_data(struct mxs_mci_host *mxs_mci, void *buffer, unsigne
 	uint32_t *p = buffer;
 
 	if (length & 0x3) {
-		pr_debug("Cannot read data sizes not multiple of 4 (request for %u detected)\n",
+		dev_dbg(mxs_mci->host.hw_dev,
+				"Cannot read data sizes not multiple of 4 (request for %u detected)\n",
 				length);
 		return -EINVAL;
 	}
@@ -206,7 +207,8 @@ static int mxs_mci_write_data(struct mxs_mci_host *mxs_mci, const void *buffer,
 	const uint32_t *p = buffer;
 
 	if (length & 0x3) {
-		pr_debug("Cannot write data sizes not multiple of 4 (request for %u detected)\n",
+		dev_dbg(mxs_mci->host.hw_dev,
+				"Cannot write data sizes not multiple of 4 (request for %u detected)\n",
 				length);
 		return -EINVAL;
 	}
@@ -320,7 +322,7 @@ static int mxs_mci_std_cmds(struct mxs_mci_host *mxs_mci, struct mci_cmd *cmd)
 	if (cmd->resp_type & MMC_RSP_PRESENT)
 		mxs_mci_get_cards_response(mxs_mci, cmd);
 
-	return mxs_mci_get_cmd_error(readl(mxs_mci->regs + HW_SSP_STATUS));
+	return mxs_mci_get_cmd_error(mxs_mci, readl(mxs_mci->regs + HW_SSP_STATUS));
 }
 
 /**
@@ -385,7 +387,7 @@ static int mxs_mci_adtc(struct mxs_mci_host *mxs_mci, struct mci_cmd *cmd,
 
 	err = mxs_mci_transfer_data(mxs_mci, data);
 	if (err != 0) {
-		pr_debug(" Transfering data failed\n");
+		dev_dbg(mxs_mci->host.hw_dev, "Transfering data failed with %d\n", err);
 		return err;
 	}
 
@@ -436,7 +438,7 @@ static unsigned mxs_mci_setup_clock_speed(struct mxs_mci_host *mxs_mci, unsigned
 			break;
 	}
 	if (div >= 255) {
-		pr_warning("Cannot set clock to %d Hz\n", nc);
+		dev_warn(mxs_mci->host.hw_dev, "Cannot set clock to %d Hz\n", nc);
 		return 0;
 	}
 
@@ -531,7 +533,8 @@ static void mxs_mci_set_ios(struct mci_host *host, struct mci_ios *ios)
 	}
 
 	mxs_mci->clock = mxs_mci_setup_clock_speed(mxs_mci, ios->clock);
-	pr_debug("IO settings: frequency=%u Hz\n", mxs_mci->clock);
+
+	dev_dbg(host->hw_dev, "IO settings: frequency=%u Hz\n", mxs_mci->clock);
 }
 
 /* ----------------------------------------------------------------------- */
@@ -557,7 +560,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	struct mci_host *host;
 
 	if (hw_dev->platform_data == NULL) {
-		pr_err("Missing platform data\n");
+		dev_err(hw_dev, "Missing platform data\n");
 		return -EINVAL;
 	}
 
@@ -600,18 +603,18 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 #endif
 	if (pd->f_min == 0) {
 		host->f_min = mxs_mci_get_unit_clock(mxs_mci) / 254 / 256;
-		pr_debug("Min. frequency is %u Hz\n", host->f_min);
+		dev_dbg(hw_dev, "Min. frequency is %u Hz\n", host->f_min);
 	} else {
 		host->f_min = pd->f_min;
-		pr_debug("Min. frequency is %u Hz, could be %u Hz\n",
+		dev_dbg(hw_dev, "Min. frequency is %u Hz, could be %u Hz\n",
 			host->f_min, mxs_mci_get_unit_clock(mxs_mci) / 254 / 256);
 	}
 	if (pd->f_max == 0) {
 		host->f_max = mxs_mci_get_unit_clock(mxs_mci) / 2 / 1;
-		pr_debug("Max. frequency is %u Hz\n", host->f_max);
+		dev_dbg(hw_dev, "Max. frequency is %u Hz\n", host->f_max);
 	} else {
 		host->f_max =  pd->f_max;
-		pr_debug("Max. frequency is %u Hz, could be %u Hz\n",
+		dev_dbg(hw_dev, "Max. frequency is %u Hz, could be %u Hz\n",
 			host->f_max, mxs_mci_get_unit_clock(mxs_mci) / 2 / 1);
 	}
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
