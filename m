Delivery-date: Fri, 08 Mar 2024 11:50:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riXoR-00DbWt-0i
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 11:50:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riXoQ-0002dD-Ky
	for lore@pengutronix.de; Fri, 08 Mar 2024 11:50:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MoBjBCWGS01jqRICLWAL23zPTRNWYw73jP1iH+fOibQ=; b=nPTADThhihWJHB+bRxaaeft4Jq
	F+6s5j/DYgDsAItKLyTnGbHEr+ojt5p/Vxb18ZkI0fsVhcZro4qcyIRk4t+EGBqr7dE0Zfs1Cs5MW
	oSR4COdjK/3VtjDqssjCIVH3IdHFgDOnQsSd5aaNXzCjWR4t12h4H/RZWSqRLCHjP3ZPoTmCP0Awh
	0pbh7JzTqzBWEMwa10dl0kl5u2YNCMzS6GcTbVbI+rsxAD0HUOKTcDnX5Yu59yY/63hqwxdsdxUzG
	Hty3srMTXGC6s9J4rHW95sXJjS/+wLqMzjwd1z0+BwWOgfsvXn7hUMie0dZRLMalL0gz+sGtfcPH5
	MyipNp5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riXnu-00000008qUU-2vCq;
	Fri, 08 Mar 2024 10:50:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riXnr-00000008qTw-36rN
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 10:50:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1riXnp-00023R-34
	for barebox@lists.infradead.org; Fri, 08 Mar 2024 11:50:13 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Mar 2024 11:49:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-v2024-02-0-topic-arasan-dma-support-v1-1-079e10b6ea88@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAFbt6mUC/x2NMQ7CMAwAv1J5xpKbMgS+ghisxIAHksguVaWqf
 2/KdrfcbeBiKg73YQOTRV1r6TJeBkgfLm9Bzd0hULjSRBGXk5ACEs61aUI2di6Yv4z+a63ajJL
 zNMaUJNwi9FIzeen6vzye+34A8+cv1XUAAAA=
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2372;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=cuUUef51Bj5E/rqzFMPB1LQ4DkU7OicDtsyN64jhFxY=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJfvU2sznc1m2n5xKlFJnvCdzWZ3837/We3C/w57npyD
 uuh5rdbO0pZGMS4GGTFFFki1x7S2Cz8WefL8fMMMHNYmUCGMHBxCsBEVgcyMvx0Y9e/3e0+o+zB
 1JSyuVMWCpXukGG9mnVhfUL5e/Ffp7cz/DMTT06s3fCu1Kg/lTPh8qk1n4z85/qelWON6P294ej
 D9dwA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_025015_814360_9537A88E 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: arasan: add dma write support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch from PIO to DMA mode in send_cmd.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Everything needed for the Arasan SDHCI to use DMA instead of PIO is
already present. Switch to it.

Tested on: ZynqMP.
---
 drivers/mci/arasan-sdhci.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 59afac7372..973e08779d 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -147,6 +147,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
 	u32 mask, command, xfer;
+	dma_addr_t dma;
 	int ret;
 
 	ret = sdhci_wait_idle(&host->sdhci, cmd);
@@ -156,13 +157,14 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
 	mask = SDHCI_INT_CMD_COMPLETE;
-	if (data && data->flags == MMC_DATA_READ)
-		mask |= SDHCI_INT_DATA_AVAIL;
 	if (cmd->resp_type & MMC_RSP_BUSY)
 		mask |= SDHCI_INT_XFER_COMPLETE;
 
-	sdhci_set_cmd_xfer_mode(&host->sdhci,
-				cmd, data, false, &command, &xfer);
+	sdhci_setup_data_dma(&host->sdhci, data, &dma);
+
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
+				dma == SDHCI_NO_DMA ? false : true,
+				&command, &xfer);
 
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
 	if (data) {
@@ -174,15 +176,15 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
-	ret = sdhci_wait_for_done(&host->sdhci, mask);
+	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
 	if (ret)
 		goto error;
 
 	sdhci_read_response(&host->sdhci, cmd);
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, mask);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
 
 	if (data)
-		ret = sdhci_transfer_data_pio(&host->sdhci, data);
+		ret = sdhci_transfer_data_dma(&host->sdhci, data, dma);
 
 error:
 	if (ret) {

---
base-commit: ed7c14536d521793199abf0597164a46ba68e8e5
change-id: 20240308-v2024-02-0-topic-arasan-dma-support-edd318cce298

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



