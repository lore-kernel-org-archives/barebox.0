Delivery-date: Mon, 05 May 2025 14:39:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6B-002SVM-0G
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv62-0006dE-Qf
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hCgIIJTrg0CLG3Y42IO0fNhkxhAcmxuHjTsALFdG/Ys=; b=dix+xueDWId8aetxKkQPTo4y4c
	8lED6LcZsQ7v4Xl1EocnbxDH98RfoW0NRAOtIaTMB2qQ2f3TnPaYOfjyCU81YFAUrljK2Rn4b63tB
	9lbpAmtvuf9o8yY4tTaT8P/V2NziixtXWh//9b9P2hg0Vk0eZbaTcPUDSTp94anVQ5fRPrlQY/Btv
	lT8DRGq2MFdLlVE7hmDYfSJ5yhIZaFZ465MxSF7iyvGijPEAl1NiEnE/S4BMwSYQuffA1yeZ7nSkP
	Oed4ROvI9zfuGdE5fkrrRzlNwSaAfknKP1+90pqiUVqZo5qfbKhRJOIxxEr+xShm7Rm1M1AOwYjNM
	Kb93eYDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5L-00000007LYC-1isq;
	Mon, 05 May 2025 12:38:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv29-00000007KaZ-1rOm
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-0004pv-7N; Mon, 05 May 2025 14:34:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-001EQD-05;
	Mon, 05 May 2025 14:34:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-0Y;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:18 +0200
Message-Id: <20250505120633.3717186-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053457_636714_78BC3712 
X-CRM114-Status: GOOD (  12.76  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/30] mci: sdhci: add cmd parameter to sdhci_transfer_*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With incoming tuning support, the SDHCI flags computed inside
sdhci_transfer_* will depend on the specific MMC command that's due to
be sent, therefore add the command as parameter to the functions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/am654-sdhci.c            |  2 +-
 drivers/mci/arasan-sdhci.c           |  2 +-
 drivers/mci/atmel-sdhci-common.c     |  2 +-
 drivers/mci/dwcmshc-sdhci.c          |  2 +-
 drivers/mci/imx-esdhc-common.c       |  4 ++--
 drivers/mci/mci-bcm2835.c            |  2 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c |  2 +-
 drivers/mci/sdhci.c                  | 14 ++++++++------
 drivers/mci/sdhci.h                  | 10 ++++++----
 9 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 20dd03b83a9a..13c8876573c7 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -490,7 +490,7 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_read_response(&host->sdhci, cmd);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
 
-	ret = sdhci_transfer_data_dma(&host->sdhci, data, dma);
+	ret = sdhci_transfer_data_dma(&host->sdhci, cmd, data, dma);
 
 error:
 	if (ret) {
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 879339572b11..5774928e5a97 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -293,7 +293,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
 
 	if (data)
-		ret = sdhci_transfer_data_dma(&host->sdhci, data, dma);
+		ret = sdhci_transfer_data_dma(&host->sdhci, cmd, data, dma);
 
 error:
 	if (ret) {
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 12b71bc2ded3..a3ed2730e527 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -128,7 +128,7 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
 	sdhci_write32(sdhci, SDHCI_INT_STATUS, mask);
 
 	if (data)
-		sdhci_transfer_data_pio(sdhci, data);
+		sdhci_transfer_data_pio(sdhci, cmd, data);
 
 	udelay(1000);
 
diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index f6d559e393d4..174cc3f76816 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -160,7 +160,7 @@ static int do_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	sdhci_read_response(&host->sdhci, cmd);
 
-	ret = sdhci_transfer_data(&host->sdhci, data, dma);
+	ret = sdhci_transfer_data(&host->sdhci, cmd, data, dma);
 error:
 	if (ret) {
 		sdhci_reset(&host->sdhci, SDHCI_RESET_CMD);
diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index a2b1ea1adfad..8b823b233202 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -172,9 +172,9 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	/* Wait until all of the blocks are transferred */
 	if (data) {
 		if (esdhc_use_pio_mode())
-			ret = sdhci_transfer_data_pio(&host->sdhci, data);
+			ret = sdhci_transfer_data_pio(&host->sdhci, cmd, data);
 		else
-			ret = sdhci_transfer_data_dma(&host->sdhci, data, dma);
+			ret = sdhci_transfer_data_dma(&host->sdhci, cmd, data, dma);
 
 		if (ret)
 			return ret;
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index ff4c6d803c32..cd4c1b866ca1 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -158,7 +158,7 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 	}
 
 	if (!ret && data)
-		ret = sdhci_transfer_data_pio(&host->sdhci, data);
+		ret = sdhci_transfer_data_pio(&host->sdhci, cmd, data);
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, 0xFFFFFFFF);
 	if (ret) {
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index a7da64f4d7db..2f8d5ec140b5 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -277,7 +277,7 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_read_response(&host->sdhci, cmd);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
 
-	ret = sdhci_transfer_data_dma(&host->sdhci, data, dma);
+	ret = sdhci_transfer_data_dma(&host->sdhci, cmd, data, dma);
 
 error:
 	if (ret) {
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 61934bcad937..fe0c0001f9de 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -524,8 +524,8 @@ void sdhci_teardown_data(struct sdhci *sdhci,
 		dma_unmap_single(dev, dma, nbytes, DMA_TO_DEVICE);
 }
 
-int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
-			    dma_addr_t dma)
+int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
+			    struct mci_data *data, dma_addr_t dma)
 {
 	struct device *dev = sdhci_dev(sdhci);
 	u64 start;
@@ -594,7 +594,8 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 	return ret;
 }
 
-int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data)
+int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_cmd *cmd,
+			    struct mci_data *data)
 {
 	unsigned int block = 0;
 	u32 stat, prs;
@@ -635,7 +636,8 @@ int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data)
 	return 0;
 }
 
-int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t dma)
+int sdhci_transfer_data(struct sdhci *sdhci, struct mci_cmd *cmd,
+			struct mci_data *data, dma_addr_t dma)
 {
 	struct device *dev = sdhci_dev(sdhci);
 
@@ -643,9 +645,9 @@ int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t d
 		return 0;
 
 	if (dma_mapping_error(dev, dma))
-		return sdhci_transfer_data_pio(sdhci, data);
+		return sdhci_transfer_data_pio(sdhci, cmd, data);
 	else
-		return sdhci_transfer_data_dma(sdhci, data, dma);
+		return sdhci_transfer_data_dma(sdhci, cmd, data, dma);
 }
 
 int sdhci_reset(struct sdhci *sdhci, u8 mask)
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index d3cb45c36248..93303016a584 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -324,10 +324,12 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
 void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data);
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data, dma_addr_t *dma);
 void sdhci_teardown_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t dma);
-int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t dma);
-int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data);
-int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
-			    dma_addr_t dma);
+int sdhci_transfer_data(struct sdhci *sdhci, struct mci_cmd *cmd,
+			struct mci_data *data, dma_addr_t dma);
+int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_cmd *cmd,
+			    struct mci_data *data);
+int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
+			    struct mci_data *data, dma_addr_t dma);
 int sdhci_reset(struct sdhci *sdhci, u8 mask);
 u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,
 		   unsigned int *actual_clock, unsigned int input_clock);
-- 
2.39.5



