Delivery-date: Mon, 05 May 2025 14:39:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6P-002SZa-0j
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6J-0006x4-3A
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LGGAH7/Z4WSl7ZEVxHdJpzRoYOhI5HZPrPiVhC2at+A=; b=A0BJT1yh8E1LBFaOLd/ZtcV9Hi
	wUnBxCip6Fd2GCd7nuRvtLlsfuXdKurgI4n3pNS6wOwVNeftqr7FdgUjMnQtPSy+mbqH8GhPVZlq7
	s3Rpyrq3GlRqlDU7h+JGPNkA1VhVKG6tQXOhl5IrF/ImLDReQIgVml2Gc3ITfbIovIGV7JsujxFiv
	vbEb3lWa5MPEQeq6tSWrqo48n/I+PSVn3bNpnll8E6b58UxxpozpeAzsKE9DOtm63pRmuYBUr6Q1s
	P4+Z4BDZwZ94AuSm91eHaLvBaGTtKwWGKf5Wpgn5UC0CDXgV/JjIOLoMK5lH7IIXZElJYUHVUj73H
	+r2CyqIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5S-00000007Li2-1Yc3;
	Mon, 05 May 2025 12:38:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv2F-00000007Kgh-3jiY
	for barebox@bombadil.infradead.org;
	Mon, 05 May 2025 12:35:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LGGAH7/Z4WSl7ZEVxHdJpzRoYOhI5HZPrPiVhC2at+A=; b=UNHr6+OLAo9qcksAYBVEGUJhFX
	LunfREWPyaWu47b7ihYNYEXPMopReHswN995aAb+IT48X1yNx6yTX3oQz6o1F5CI44HxHm0s22npJ
	vPNSNRNA+kKoZR0pYNbvgYVN4o+lvZuExcHAoq1vqXEWsZkznPX0zqsCrWGcbpZUMywzLrOzyhG0q
	EcTbqOQpM8dtnw5xTbNY0d5p5oLb3nBSdsLbWa0eIdQ8qbNHoARbBxdrchSllWPuqewvJaXY+c2a5
	i0akvzpSaIJ9fAVCqAwcdZVM0zhV3FYUhzWunflov36r/ZI7BmztZ12ZBRHf0uzhj/OKIV/SRWVC+
	zDwat3CA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uBv2C-0000000FUTM-17Xw
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv29-0004rp-0Y; Mon, 05 May 2025 14:34:57 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-001EQn-2a;
	Mon, 05 May 2025 14:34:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-20;
	Mon, 05 May 2025 14:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:28 +0200
Message-Id: <20250505120633.3717186-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_133500_558111_02AB880C 
X-CRM114-Status: GOOD (  13.04  )
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
Subject: [PATCH 25/30] mci: sdhci: fix sdhci_transfer_data MMC_SEND_TUNING compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Depending on whether we are executing a tuning sequence or not, we need
to poll for different status bits. Implement the logic in preparation
for adding HS200 support to the i.MX eSDHC driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 26 +++++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index a4b56a6e9286..6308dc9d9140 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -291,8 +291,10 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
 		if (data->flags & MMC_DATA_READ)
 			*xfer |= SDHCI_DATA_TO_HOST;
 
-		if (dma)
+		if (dma && !mmc_op_tuning(cmd->cmdidx))
 			*xfer |= SDHCI_DMA_EN;
+	} else if (mmc_op_tuning(cmd->cmdidx)) {
+		*command |= SDHCI_DATA_PRESENT;
 	}
 }
 
@@ -529,7 +531,7 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
 	struct device *dev = sdhci_dev(sdhci);
 	u64 start;
 	int nbytes;
-	u32 irqstat;
+	u32 irqcheck, irqstat;
 	int ret;
 
 	if (!data)
@@ -539,6 +541,10 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
 
 	start = get_time_ns();
 
+	irqcheck = SDHCI_INT_XFER_COMPLETE;
+	if (mmc_op_tuning(cmd->cmdidx))
+		irqcheck = SDHCI_INT_DATA_AVAIL;
+
 	do {
 		irqstat = sdhci_read32(sdhci, SDHCI_INT_STATUS);
 
@@ -575,7 +581,7 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
 			sdhci_set_sdma_addr(sdhci, ALIGN(dma, SDHCI_DEFAULT_BOUNDARY_SIZE));
 		}
 
-		if (irqstat & SDHCI_INT_XFER_COMPLETE)
+		if (irqstat & irqcheck)
 			break;
 
 		if (is_timeout(start, 10 * SECOND)) {
@@ -597,12 +603,16 @@ int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_cmd *cmd,
 			    struct mci_data *data)
 {
 	unsigned int block = 0;
-	u32 stat, prs;
+	u32 stat, prs, irqcheck;
 	uint64_t start = get_time_ns();
 
 	if (!data)
 		return 0;
 
+	irqcheck = SDHCI_INT_XFER_COMPLETE;
+	if (mmc_op_tuning(cmd->cmdidx))
+		irqcheck = SDHCI_INT_DATA_AVAIL;
+
 	do {
 		stat = sdhci_read32(sdhci, SDHCI_INT_STATUS);
 		if (stat & SDHCI_INT_ERROR)
@@ -630,7 +640,7 @@ int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_cmd *cmd,
 		if (is_timeout(start, 10 * SECOND))
 			return -ETIMEDOUT;
 
-	} while (!(stat & SDHCI_INT_XFER_COMPLETE));
+	} while (!(stat & irqcheck));
 
 	return 0;
 }
@@ -822,7 +832,8 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 	if (data || (cmd && (cmd->resp_type & MMC_RSP_BUSY)))
 		mask |= SDHCI_CMD_INHIBIT_DATA;
 
-	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+	if (cmd && (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ||
+		    mmc_op_tuning(cmd->cmdidx)))
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
 	if (data && data->timeout_ns != 0)
@@ -853,7 +864,8 @@ int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
 	mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
 	timeout_ns = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS;
 
-	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+	if (cmd && (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ||
+		    mmc_op_tuning(cmd->cmdidx)))
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
 	if (cmd && cmd->busy_timeout != 0)
-- 
2.39.5



