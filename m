Delivery-date: Thu, 28 Aug 2025 19:24:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgMV-005WPe-2A
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 19:24:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgMU-0003Os-Bq
	for lore@pengutronix.de; Thu, 28 Aug 2025 19:24:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cM/PhigorcgjCSKXlUNu5HhjADYUdEAcAFUTP8aspl4=; b=cma8na2i4CVgn3J9teqjHpkMMW
	7DW0XP5r4Ubgc7uKwOVXI9+1VcFqyBkQ8ntXzEq8ZpCRtccUYAsHZFlSsy9gAuH/nMmcB0qyI4oNH
	s7oX05VULmknR5YQdJMxs1otzJeJxgSHEMsVjWexVAcLT/tclY9rfVmTTcGWDUxG85Xlu//5UG0jv
	vGj1UMAIkcoT6FV9e0HjbkhK8eCemtJTGVM0jO5vIsKiWa5XwA4kBVlZHmu9bRIrg+0+P7iKOjL0m
	gqenZCmYo0hufTbNVWiWabKlRbDVEAmwlqj2vO7FeZ/h0TCQQRVrUsBSAzdC2cvRh+5lINJ0Bum6p
	S5wy/S0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgLa-00000002PrX-45cL;
	Thu, 28 Aug 2025 17:23:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uratw-00000001MmY-22eV
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 11:34:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uratv-0005eo-7H; Thu, 28 Aug 2025 13:34:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uratv-002YMx-07;
	Thu, 28 Aug 2025 13:34:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uratu-0000000Erw4-3qaZ;
	Thu, 28 Aug 2025 13:34:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 28 Aug 2025 13:34:40 +0200
Message-ID: <20250828113442.3543907-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_043444_523665_35584616 
X-CRM114-Status: GOOD (  10.74  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mci: am654-sdhci: Wait for transfer complete interrupt with MMC_RSP_BUSY cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MMC_RSP_BUSY flag indicates that we have to wait for the transfer
completion interrupt. Other SDHCI drivers do this, but the am654 driver
missed it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/am654-sdhci.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 24abf10492..34a42be2aa 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -459,7 +459,7 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				struct mci_data *data)
 {
 	struct am654_sdhci_plat *host = container_of(mci, struct am654_sdhci_plat, mci);
-	u32 command, xfer;
+	u32 mask, command, xfer;
 	int ret;
 	dma_addr_t dma;
 
@@ -469,6 +469,10 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
+	mask = SDHCI_INT_CMD_COMPLETE;
+	if (cmd->resp_type & MMC_RSP_BUSY)
+		mask |= SDHCI_INT_XFER_COMPLETE;
+
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
 
 	sdhci_setup_data_dma(&host->sdhci, data, &dma);
@@ -481,7 +485,7 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
-	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
+	ret = sdhci_wait_for_done(&host->sdhci, mask);
 	if (ret) {
 		sdhci_teardown_data(&host->sdhci, data, dma);
 		goto error;
-- 
2.47.2



