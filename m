Delivery-date: Thu, 21 May 2026 10:06:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyQ8-002A6G-1o
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:06:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyQ7-00068c-Pd
	for lore@pengutronix.de; Thu, 21 May 2026 10:06:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iTBUb7XkK6WFCUmv9mipBsidIRQV2fFnC+BzjgaKt2o=; b=naJD5yzN9N7MJVL7/I50rC+57Z
	G8zhuyfLyLTU5VFJq2HqIIjCcO3zU6z7IFvF6BdAgGe8pDAv72BEIwXj5OFshc94hhH4v2iY28r1q
	F38EfBtBIm6ETnn5NNuEh/hmzeiagzjIqP5SQ/8w91NSF+uHz5E5c9RFPtcSZlHWAgbVLfKO6vm8z
	Sitfxtu+hoZxuaIBKKvOWAUedPTAr7n7G59E5OsEQL8tcmwiIFW/N16hx8H22akN5SV4o0zfaqZ4R
	35Wnt9ix+8tniOvvRtQ34vkh8bXLHJbvmD1vnvjVe7rJmtFPhS1U7Iiiy/xI452NNfwf+9YMVmie8
	8fhImcHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyP3-000000072ib-3GmY;
	Thu, 21 May 2026 08:05:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyOz-000000072gS-2fEX
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:05:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOx-0005uA-0g; Thu, 21 May 2026 10:05:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOw-0014JV-1F;
	Thu, 21 May 2026 10:05:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOw-0000000DRa3-3gbG;
	Thu, 21 May 2026 10:05:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 May 2026 10:05:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260521-rockchip-emmc-fixes-v1-3-c91908ca1fb5@pengutronix.de>
References: <20260521-rockchip-emmc-fixes-v1-0-c91908ca1fb5@pengutronix.de>
In-Reply-To: <20260521-rockchip-emmc-fixes-v1-0-c91908ca1fb5@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779350706; l=2779;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0sto+L5Ntq4OmaFRlL8KtL4XYj1AWJ7Dt4Gc0esljnQ=;
 b=RH5CK94uGWdR1ji+Y8MqexZLx7NefQq50VCshyX5LyYSXacFnZdfUz7yEmd35Aj670UAV7xbl
 VDso4qFYLzPDWfkc6jUAu3Tq57+EzNMXNFWMtmYApXplRN1BP0ZLvDU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_010509_687329_1F28601E 
X-CRM114-Status: UNSURE (   9.68  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] mci: sdhci: rockchip: Use generic sdhci_send_command()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We now have a generic sdhci_send_command() which exactly matches the
rockchip variant, so switch to the generic implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 61 +-----------------------------------
 1 file changed, 1 insertion(+), 60 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 1fdea7c4ab..0be5d9ff63 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -293,70 +293,11 @@ static void rk_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
 }
 
-static void print_error(struct rk_sdhci_host *host, int cmdidx)
-{
-	dev_dbg(host->mci.hw_dev,
-		"error while transfering data for command %d\n", cmdidx);
-	dev_dbg(host->mci.hw_dev, "state = 0x%08x , interrupt = 0x%08x\n",
-		sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE),
-		sdhci_read32(&host->sdhci, SDHCI_INT_NORMAL_STATUS));
-}
-
 static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
-	struct mci_data *data = cmd->data;
-	u32 mask, command, xfer;
-	int ret;
-	dma_addr_t dma;
-
-	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
-	if (ret)
-		return ret;
-
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
-
-	mask = SDHCI_INT_CMD_COMPLETE;
-	if (cmd->resp_type & MMC_RSP_BUSY)
-		mask |= SDHCI_INT_XFER_COMPLETE;
-
-	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
-
-	sdhci_setup_data_dma(&host->sdhci, data, &dma);
-
-	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
-				dma == SDHCI_NO_DMA ? false : true,
-				&command, &xfer);
-
-	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
-
-	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
-	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
-
-	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
-	if (mmc_op_tuning(cmd->cmdidx))
-		mask = SDHCI_INT_DATA_AVAIL;
-
-	ret = sdhci_wait_for_done(&host->sdhci, mask);
-	if (ret) {
-		sdhci_teardown_data(&host->sdhci, data, dma);
-		goto error;
-	}
-
-	sdhci_read_response(&host->sdhci, cmd);
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
-
-	ret = sdhci_transfer_data_dma(&host->sdhci, cmd, data, dma);
-
-error:
-	if (ret) {
-		print_error(host, cmd->cmdidx);
-		sdhci_reset(&host->sdhci, SDHCI_RESET_CMD);
-		sdhci_reset(&host->sdhci, SDHCI_RESET_DATA);
-	}
 
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
-	return ret;
+	return sdhci_send_command(&host->sdhci, cmd);
 }
 
 static int rk_sdhci_execute_tuning(struct mci_host *mci, u32 opcode)

-- 
2.47.3



