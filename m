Delivery-date: Wed, 07 May 2025 11:31:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7Z-0035dJ-2m
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:31:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7Y-0007fM-Ly
	for lore@pengutronix.de; Wed, 07 May 2025 11:31:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jkBii1md+NrEfkbo2Md9+OM+V0iBYdV1QnUd5h1tss8=; b=Ct0blBOAaYYhVyUq91L/cDFJSE
	J01bdYF70rg3R678WT4aoe4eFg3qwCGF407mPdZ3eMl8oHEJ0ew7NZKK2ovXSaO4n/EsMYE25b+7F
	oz2yqbgYD3AAm2wG9ApUc3zwt+VKvtsjSJJ3ErU2Tpkb1rL3KTYtACBnACHKe2nq3mhGTAFve0m1m
	6gNC73OMCMlAo7Xvr80Xn+4lyj/4+dZPNLSgw9twCXkf3DM79P0YQllN4H+T6lXSa1WcR99kRm1tc
	xhOpsfrG4pQqvFtgcyqHFYSWv6uwqKdVFAe8v4mgvXnjlvlwTK1MzJtLu/wFJK6tdvVY8BsfJWvHx
	IKjdsbuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb76-0000000Ey8s-2KqN;
	Wed, 07 May 2025 09:30:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaG7-0000000EmGC-49Lt
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jkBii1md+NrEfkbo2Md9+OM+V0iBYdV1QnUd5h1tss8=; b=EbOCNrLyvV2V1y+e/rhhNSq3U4
	vyaYTaAD8bdfYEl/XGuYFa/SODKz/d5aAt5kgckyKdISjgSPBfAvAja+7sHht0bx789hLXUp0ShfY
	oZocGmdgDC2zZZkCopeWwI15CVBQVKRi0un4xl1BaPOIR2VZLmUWeruHOmVsR+IdyaaiEIT7tB7eN
	8rkySuunidyYZqzHl3w9rf4ZIepvUPSnEzQPJNBKoS8WEOwyHHsJG1TBw17rIHXesIC3djJvu1lDu
	MlyRVmBg/e8zTDK3B8e7dZ6NQyB4lbmyqADddN7QNXhFJZ83Jw/NrY04zidVdvnkxc5k7VI40II3t
	0jod/5oQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFq-00000001ihP-3ap9
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:36:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-00040v-FH; Wed, 07 May 2025 10:35:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-001WvG-0u;
	Wed, 07 May 2025 10:35:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-12;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:54 +0200
Message-Id: <20250507082209.3289972-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093551_894703_DF26EA08 
X-CRM114-Status: GOOD (  11.09  )
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
Subject: [PATCH v2 15/30] mci: sdhci: add cmd parameter to sdhci_transfer_*
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
index 18a9f3be7239..9526bcfea8c1 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -159,9 +159,9 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
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
index 84acb3d163b5..55709e831a28 100644
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
index 61058ca030a8..12ab8d148144 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -326,10 +326,12 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
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



