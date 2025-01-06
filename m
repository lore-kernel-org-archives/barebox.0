Delivery-date: Mon, 06 Jan 2025 15:05:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjk-00HVw1-3B
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:05:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjj-0000jP-Dl
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:05:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UnqRSbueyn4a7kD3+IQUJPuUbgGNP22qS3A6xY+MD/4=; b=CDT/GrU06H1ukELF19kmUbJmf6
	TVSMtFAACdnBMKiWi2A739XZhiLpJlLQ/7cWfw+TZOhWcx9k3aUZqSGWL1AdQ7ocIHZ+MIRoPF7g3
	O1MyOgpeGCKz5xUYi0NyMF8YdUY7QcYGK/iONYA/KqtkEkbVwARg/kMF1U0+2UBW02GCDU/ttI/ok
	FQL/wjdM1VunKBts+DP9zIXwK4zcjnrd0Uoqcgm50zXYhryq5K0p4vpNh2ZeCecthKDwI+1tGpTO9
	IHQJZWHhVhK2jpXepjYhnFK6gp3cobsd5KfH0Wu8r1QJduTFGzHp6o4BXqDIahH0RQZ0rD8vbwX2e
	C5RArRTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnj8-00000001V2U-3DG6;
	Mon, 06 Jan 2025 14:05:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngV-00000001UYA-2chE
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:02:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngU-00089A-Cr; Mon, 06 Jan 2025 15:02:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngT-007B6F-1R;
	Mon, 06 Jan 2025 15:02:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-22;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-22-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=1901;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/3F8XOhs7jEIVRNA4hi6LKNsNPI+glIszGCV7nAFByA=;
 b=LmF4fGLtoTCeCSI1/Jr3PkP5h9WPoFI9IH2QuVllpfsmkrsxTxSIS9m1AZzdla7EFmPvWKkph
 Z3rk0cmEvKaCyrJcoWBHWJgC54f+HgJ7kVR7jB6XT/JLkpwBbhNl6J0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_060223_682304_38040E84 
X-CRM114-Status: GOOD (  12.31  )
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
Subject: [PATCH v2 22/22] mci: am654-sdhci: Use PIO for small transfers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the R5 boot CPU on a AM62x initializes the SD/eMMC controller it is
not able to read the SCR. The command returns successfully, but the
returned data only contains 0x0. Work around this by doing the smaller
blocksize transfers using PIO.

The same DMA transfer works when doing it on the A53 CPU

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/am654-sdhci.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 9787642011..24d73f4c63 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -467,7 +467,7 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	struct am654_sdhci_plat *host = container_of(mci, struct am654_sdhci_plat, mci);
 	u32 command, xfer;
 	int ret;
-	dma_addr_t dma;
+	dma_addr_t dma = SDHCI_NO_DMA;
 
 	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
 	if (ret)
@@ -477,7 +477,10 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
 
-	sdhci_setup_data_dma(&host->sdhci, data, &dma);
+	if (data && data->blocksize < 512)
+		sdhci_setup_data_pio(&host->sdhci, data);
+	else
+		sdhci_setup_data_dma(&host->sdhci, data, &dma);
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
 				dma == SDHCI_NO_DMA ? false : true,
@@ -494,7 +497,10 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_read_response(&host->sdhci, cmd);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
 
-	ret = sdhci_transfer_data_dma(&host->sdhci, data, dma);
+	if (data && data->blocksize < 512)
+		ret = sdhci_transfer_data_pio(&host->sdhci, data);
+	else
+		ret = sdhci_transfer_data_dma(&host->sdhci, data, dma);
 
 error:
 	if (ret) {

-- 
2.39.5



