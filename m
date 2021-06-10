Delivery-date: Thu, 10 Jun 2021 16:48:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrLzG-0001Ja-86
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 16:48:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrLzE-00028e-TC
	for lore@pengutronix.de; Thu, 10 Jun 2021 16:48:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwE0KsbiuZTEZMlYAGs7G0de07iYgO3SQtvVZ5A4pho=; b=AlXrbtJElh6TI7
	2PpZJTyK9w6fHMMaNdhj3ZLCihE+HcrVUEcuf3Qo+q03nPSNx35i4BXwwJRB7Ma/yOx90Dp5vPnoK
	9QYC/IBVc3Lj/w1OylQx4A9XtV3z1q5Z6EDqS9hZ80Z8hPcky4Hg5YcPjY1LRIV2b20Vd91fo3W53
	Wt+VIjy0Ln5VNgP0Rfwk6IQYREX7UciP2AAXEkRUQYHPkfFp2o+YNlKpzlJPF/BWPXgmFTbYCbS4/
	/q6GJFyFBq0MFYA781zz5QtmmjkWY239yGVWTOe5Vmn2Eb3r3Pz5biYPKYXifeLHM33PxXqqEEJ+o
	33VP4lzYAGKh129AROKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrLxy-001CZb-By; Thu, 10 Jun 2021 14:47:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrLxr-001CYk-69
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 14:47:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrLxp-0001yD-UU; Thu, 10 Jun 2021 16:47:21 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrLxp-0004Us-MG; Thu, 10 Jun 2021 16:47:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 10 Jun 2021 16:47:18 +0200
Message-Id: <20210610144720.25620-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210610144720.25620-1-s.hauer@pengutronix.de>
References: <20210610144720.25620-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_074723_427493_6E4F09AB 
X-CRM114-Status: GOOD (  20.88  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] mci: sdhci: Add DMA transfer helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The SDHCI helpers only use PIO mode so far. This patch implements SDMA
mode helpers. The helpers with _pio suffix explicitly do PIO while the
DMA helpers have a _dma suffix and first try to do DMA, but fall back
to PIO when DMA is not possible.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c       |   2 +-
 drivers/mci/atmel-sdhci-common.c |   2 +-
 drivers/mci/imx-esdhc-common.c   |   2 +-
 drivers/mci/mci-bcm2835.c        |   2 +-
 drivers/mci/sdhci.c              | 118 ++++++++++++++++++++++++++++++-
 drivers/mci/sdhci.h              |  10 ++-
 6 files changed, 130 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index dd5ad9d69b..04fce62bf4 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -213,7 +213,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, mask);
 
 	if (data)
-		ret = sdhci_transfer_data(&host->sdhci, data);
+		ret = sdhci_transfer_data_pio(&host->sdhci, data);
 
 error:
 	if (ret) {
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 9d78c59e95..eff2a993db 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -166,7 +166,7 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
 	sdhci_write32(sdhci, SDHCI_INT_STATUS, mask);
 
 	if (data)
-		sdhci_transfer_data(sdhci, data);
+		sdhci_transfer_data_pio(sdhci, data);
 
 	udelay(1000);
 
diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 7980278801..a85459d29c 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -109,7 +109,7 @@ static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data,
 	u32 irqstat;
 
 	if (esdhc_use_pio_mode())
-		return sdhci_transfer_data(&host->sdhci, data);
+		return sdhci_transfer_data_pio(&host->sdhci, data);
 
 	do {
 		irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 91027857be..0450f899c6 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -172,7 +172,7 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 	}
 
 	if (!ret && data)
-		ret = sdhci_transfer_data(&host->sdhci, data);
+		ret = sdhci_transfer_data_pio(&host->sdhci, data);
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, 0xFFFFFFFF);
 	if (ret) {
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 0783f6d420..aca4a5a6f9 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -4,6 +4,7 @@
 #include <driver.h>
 #include <mci.h>
 #include <io.h>
+#include <dma.h>
 #include <linux/bitfield.h>
 
 #include "sdhci.h"
@@ -123,12 +124,112 @@ void sdhci_set_bus_width(struct sdhci *host, int width)
 
 #endif
 
-int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data)
+void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data)
+{
+	if (!data)
+		return;
+
+	sdhci_write16(sdhci, SDHCI_BLOCK_SIZE, sdhci->sdma_boundary |
+		    SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
+	sdhci_write16(sdhci, SDHCI_BLOCK_COUNT, data->blocks);
+}
+
+void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
+			  dma_addr_t *dma)
+{
+	struct device_d *dev = sdhci->mci->hw_dev;
+	int nbytes;
+
+	if (!data)
+		return;
+
+	sdhci_setup_data_pio(sdhci, data);
+
+	if (!dma)
+		return;
+
+	nbytes = data->blocks * data->blocksize;
+
+	if (data->flags & MMC_DATA_READ)
+		*dma = dma_map_single(dev, (void *)data->src, nbytes,
+				      DMA_FROM_DEVICE);
+	else
+		*dma = dma_map_single(dev, data->dest, nbytes,
+				      DMA_TO_DEVICE);
+
+	if (dma_mapping_error(dev, *dma)) {
+		*dma = SDHCI_NO_DMA;
+		return;
+	}
+
+	sdhci_write32(sdhci, SDHCI_DMA_ADDRESS, *dma);
+}
+
+int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
+			    dma_addr_t dma)
+{
+	struct device_d *dev = sdhci->mci->hw_dev;
+	int nbytes;
+	u32 irqstat;
+	int ret;
+
+	if (!data)
+		return 0;
+
+	nbytes = data->blocks * data->blocksize;
+
+	do {
+		irqstat = sdhci_read32(sdhci, SDHCI_INT_STATUS);
+
+		if (irqstat & SDHCI_INT_DATA_END_BIT) {
+			ret = -EIO;
+			goto out;
+		}
+
+		if (irqstat & SDHCI_INT_DATA_CRC) {
+			ret = -EBADMSG;
+			goto out;
+		}
+
+		if (irqstat & SDHCI_INT_DATA_TIMEOUT) {
+			ret = -ETIMEDOUT;
+			goto out;
+		}
+
+		if (irqstat & SDHCI_INT_DMA) {
+			u32 addr = sdhci_read32(sdhci, SDHCI_DMA_ADDRESS);
+
+			/*
+			 * DMA engine has stopped on buffer boundary. Acknowledge
+			 * the interrupt and kick the DMA engine again.
+			 */
+			sdhci_write32(sdhci, SDHCI_INT_STATUS, SDHCI_INT_DMA);
+			sdhci_write32(sdhci, SDHCI_DMA_ADDRESS, addr);
+		}
+
+		if (irqstat & SDHCI_INT_XFER_COMPLETE)
+			break;
+	} while (1);
+
+	ret = 0;
+out:
+	if (data->flags & MMC_DATA_READ)
+		dma_unmap_single(dev, dma, nbytes, DMA_FROM_DEVICE);
+	else
+		dma_unmap_single(dev, dma, nbytes, DMA_TO_DEVICE);
+
+	return 0;
+}
+
+int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data)
 {
 	unsigned int block = 0;
 	u32 stat, prs;
 	uint64_t start = get_time_ns();
 
+	if (!data)
+		return 0;
+
 	do {
 		stat = sdhci_read32(sdhci, SDHCI_INT_STATUS);
 		if (stat & SDHCI_INT_ERROR)
@@ -161,6 +262,19 @@ int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data)
 	return 0;
 }
 
+int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t dma)
+{
+	struct device_d *dev = sdhci->mci->hw_dev;
+
+	if (!data)
+		return 0;
+
+	if (dma_mapping_error(dev, dma))
+		return sdhci_transfer_data_pio(sdhci, data);
+	else
+		return sdhci_transfer_data_dma(sdhci, data, dma);
+}
+
 int sdhci_reset(struct sdhci *sdhci, u8 mask)
 {
 	u8 val;
@@ -428,5 +542,7 @@ int sdhci_setup_host(struct sdhci *host)
 	if (host->caps & SDHCI_CAN_DO_HISPD)
 		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED;
 
+	host->sdma_boundary = SDHCI_DMA_BOUNDARY_512K;
+
 	return 0;
 }
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 0cdd558565..351940a511 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -2,6 +2,7 @@
 #define __MCI_SDHCI_H
 
 #include <pbl.h>
+#include <dma.h>
 #include <linux/iopoll.h>
 
 #define SDHCI_DMA_ADDRESS					0x00
@@ -201,6 +202,7 @@ struct sdhci {
 	u32 caps;	/* CAPABILITY_0 */
 	u32 caps1;	/* CAPABILITY_1 */
 	bool read_caps;	/* Capability flags have been read */
+	u32 sdma_boundary;
 
 	struct mci_host	*mci;
 };
@@ -253,11 +255,17 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
 		writeb(val, host->base + reg);
 }
 
+#define SDHCI_NO_DMA DMA_ERROR_CODE
 void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
 void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
 			     struct mci_data *data, bool dma, u32 *command,
 			     u32 *xfer);
-int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data);
+void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data);
+void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data, dma_addr_t *dma);
+int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t dma);
+int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data);
+int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
+			    dma_addr_t dma);
 int sdhci_reset(struct sdhci *sdhci, u8 mask);
 u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,
 		   unsigned int *actual_clock, unsigned int input_clock);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

