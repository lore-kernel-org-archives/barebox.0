Delivery-date: Mon, 05 May 2025 14:08:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucZ-002S5u-1l
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:08:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucY-0007Ff-4s
	for lore@pengutronix.de; Mon, 05 May 2025 14:08:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=senatKipsVFb0oA0Q62hnKUC6oWBsVSI5StjRPic2rM=; b=dc8EIo95OHZC7Jp3lB/B5OaeAp
	+9XYFnmrqtWP6D4CykaouAFuaQDWrGqyyBtCGa1PkWLuKVIT0qXIP1Yy1Tmpap1id0QY/ENASDvRI
	bscEtvo6OYukNsVtTJ41njWLAWAcYakeh3tUXstL2qjAHY9zHOlnyu5cVMKySNcjHRm9jngK9tFj7
	0K+1W9nv5JlBvVN6QIsbwGYQDziWJzug85YQd9FzidTZg1GygRRCU21qaf6Wt/3SY2MpSvwGB12XN
	UJVLMbfX081zm/gEJ2c2FHjerhXLXbsRJDnWPpsYMgPLf8lnQC7/4ER2N7rg9LuASKZ8blaZJGyi3
	8wi4kQyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBubx-00000007Fnt-1TFh;
	Mon, 05 May 2025 12:07:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuaj-00000007FaI-0LuQ
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:06:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-0006Rf-HT; Mon, 05 May 2025 14:06:34 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-001DxM-13;
	Mon, 05 May 2025 14:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-00Fb9X-2H;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:08 +0200
Message-Id: <20250505120633.3717186-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_050637_155905_0A1C162F 
X-CRM114-Status: GOOD (  14.84  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/30] mci: sdhci: unmap DMA buffers on timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We map DMA buffers during sdhci_setup_data_dma and unmap them inside
sdhci_transfer_data_dma, but if an error happens between these two
functions, DMA buffers are never unmapped.

Fix this to silence CONFIG_DMA_API_DEBUG observed during a timeout on an
i.MX8M.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/am654-sdhci.c            |  4 +++-
 drivers/mci/arasan-sdhci.c           |  4 +++-
 drivers/mci/dwcmshc-sdhci.c          |  4 +++-
 drivers/mci/imx-esdhc-common.c       | 19 +++++++++++++------
 drivers/mci/rockchip-dwcmshc-sdhci.c |  4 +++-
 drivers/mci/sdhci.c                  | 22 ++++++++++++++++++----
 drivers/mci/sdhci.h                  |  1 +
 7 files changed, 44 insertions(+), 14 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 2c1fa5d80451..a378e3d53c91 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -488,8 +488,10 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
 	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
-	if (ret)
+	if (ret) {
+		sdhci_teardown_data(&host->sdhci, data, dma);
 		goto error;
+	}
 
 	sdhci_read_response(&host->sdhci, cmd);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 0ec4cb57ab76..f98f7eb3d10b 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -284,8 +284,10 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		mask = SDHCI_INT_DATA_AVAIL;
 
 	ret = sdhci_wait_for_done(&host->sdhci, mask);
-	if (ret)
+	if (ret) {
+		sdhci_teardown_data(&host->sdhci, data, dma);
 		goto error;
+	}
 
 	sdhci_read_response(&host->sdhci, cmd);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index 8398889a703c..f6d559e393d4 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -153,8 +153,10 @@ static int do_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
 	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
-	if (ret)
+	if (ret) {
+		sdhci_teardown_data(&host->sdhci, data, dma);
 		goto error;
+	}
 
 	sdhci_read_response(&host->sdhci, cmd);
 
diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index a51e38734cb3..7673220fe8d4 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -164,16 +164,20 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 			 100 * MSECOND);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
-		return -ETIMEDOUT;
+		goto undo_setup_data;
 	}
 
 	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
 
-	if (irqstat & CMD_ERR)
-		return -EIO;
+	if (irqstat & CMD_ERR) {
+		ret = -EIO;
+		goto undo_setup_data;
+	}
 
-	if (irqstat & SDHCI_INT_TIMEOUT)
-		return -ETIMEDOUT;
+	if (irqstat & SDHCI_INT_TIMEOUT) {
+		ret = -ETIMEDOUT;
+		goto undo_setup_data;
+	}
 
 	/* Workaround for ESDHC errata ENGcm03648 / ENGcm12360 */
 	if (!data && (cmd->resp_type & MMC_RSP_BUSY)) {
@@ -186,7 +190,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 				 2500 * MSECOND);
 		if (ret) {
 			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
-			return -ETIMEDOUT;
+			goto undo_setup_data;
 		}
 	}
 
@@ -223,5 +227,8 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	}
 
 	return 0;
+undo_setup_data:
+	sdhci_teardown_data(&host->sdhci, data, dma);
+	return ret;
 }
 
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 6f3795465765..a7da64f4d7db 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -269,8 +269,10 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
 	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
-	if (ret)
+	if (ret) {
+		sdhci_teardown_data(&host->sdhci, data, dma);
 		goto error;
+	}
 
 	sdhci_read_response(&host->sdhci, cmd);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index f54cc6d58b2c..d0caee22f2f7 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -507,6 +507,23 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 	sdhci_set_sdma_addr(sdhci, *dma);
 }
 
+void sdhci_teardown_data(struct sdhci *sdhci,
+			 struct mci_data *data, dma_addr_t dma)
+{
+	struct device *dev = sdhci_dev(sdhci);
+	unsigned nbytes;
+
+	if (IN_PBL || !data || dma_mapping_error(dev, dma))
+		return;
+
+	nbytes = data->blocks * data->blocksize;
+
+	if (data->flags & MMC_DATA_READ)
+		dma_unmap_single(dev, dma, nbytes, DMA_FROM_DEVICE);
+	else
+		dma_unmap_single(dev, dma, nbytes, DMA_TO_DEVICE);
+}
+
 int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			    dma_addr_t dma)
 {
@@ -572,10 +589,7 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 
 	ret = 0;
 out:
-	if (data->flags & MMC_DATA_READ)
-		dma_unmap_single(dev, dma, nbytes, DMA_FROM_DEVICE);
-	else
-		dma_unmap_single(dev, dma, nbytes, DMA_TO_DEVICE);
+	sdhci_teardown_data(sdhci, data, dma);
 
 	return ret;
 }
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 841e39af05ee..d3b681153134 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -323,6 +323,7 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
 			     u32 *xfer);
 void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data);
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data, dma_addr_t *dma);
+void sdhci_teardown_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t dma);
 int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t dma);
 int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data);
 int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
-- 
2.39.5



