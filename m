Delivery-date: Mon, 18 Mar 2024 12:31:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBDY-00CHDP-2O
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 12:31:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBDW-0003Pc-Aj
	for lore@pengutronix.de; Mon, 18 Mar 2024 12:31:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=egVWyj79J+IYPqrOKMf7wZKV07uIuHtIQxFIgW1oxys=; b=BwIMZVFLrkEkqc+meqL4F8eYqv
	mLT9hN+g22qKwIU+bDhGcqzuzmiqUq4L2euqYv8fUd9G9XEnSRfyZ6TplmLoUd11IAnNRqRaX1ox9
	xKZTId1zS/hRcuX14ho/u4l9WbN3hEcqpkWHzIqXx6Yi32CHZOISazBDhI+WS7L4mn0S6lLcmh12Y
	wqY47bRX4lZrKXLjTsX+tsJWrp6ckpJGwFmEJxTpWsVOf7Q0PHzbGha8wnMToSIISOZECCOZ2HUOI
	MQWYV2mPp9Y9ij6pVvUiERmKCbfTXkxLaxm6Q4eRitA4IJYmaOjuOrnoy3sF1y9L0R3w9+Un2uz3C
	HJsHoM0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmBDD-00000008NDG-0hmW;
	Mon, 18 Mar 2024 11:31:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA5Y-000000087Ky-4B9w
	for barebox@bombadil.infradead.org;
	Mon, 18 Mar 2024 10:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=egVWyj79J+IYPqrOKMf7wZKV07uIuHtIQxFIgW1oxys=; b=VnfmAlT8QIW1BDQpn39bSTDPVc
	W0S7ffnTyONKP8CZ9UoKrDuQQ8p9gsWOuWUukeFu4buyFd3IYI76Dxh6GUx5vLsV8362Xjbz1nEID
	1uuEqXGt7fHcbv4eYtFvx5J827g3xy21HqyogftufEQpQrzBidyAt/ij+MEJwCJH8M5/KKggeS/9v
	ucFClGfBUJrQcva590AutVGp7uRK4dJv3i9kXSRGHbbCtGm41WCKPuQbFHNXSDuZe1pSDW98XKtrw
	PipZ8eq8YTi1Y432mfDCecnJUvBrO+grLa6JhSNtLPSPdr6HS2rOw8wYRVn+0ATqx8eBLfvazeh+z
	1gDUbxIA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA5S-0000000CZpk-1we3
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 10:19:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rmA5Q-0006MJ-OJ; Mon, 18 Mar 2024 11:19:20 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 18 Mar 2024 11:18:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-14-48756863add6@pengutronix.de>
References: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
In-Reply-To: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4089;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=s4HlH3YkfXb3iYj/aKCGYn9p0dxLrs5QiehKJBvOg4k=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJ/iMp6Od9xMXw0TdrtlKX8rErb+Rq2LZEPNh9hzTwrs
 OWfOk9pRykLgxgXg6yYIkvk2kMam4U/63w5fp4BZg4rE8gQBi5OAZjIQQZGhndxy51WrdDpqp8q
 FHpE6rE40xrt1RcvRf27dkY5xHaj/DJGhl/P2DcEZz3ls3Lz4hMPz6nSEmRsdRSeGCJQE59Y/UC
 MAQA=
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_101922_913158_DAA41E09 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 14/15] mci: arasan-sdhci: add HS200 tuning support on
 ZynqMP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ZynpMP 8.9a has an Arasan IP core that supports HS200 tuning.
Register the callback with the mci-core.

Arasan uses the SDHCI tuning method.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 62 +++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 59 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 4111b3321a..c8b5a84060 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -128,6 +128,46 @@ static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
 	return 0;
 }
 
+static void arasan_zynqmp_dll_reset(struct arasan_sdhci_host *host, u32 deviceid)
+{
+	u16 clk;
+
+	clk = sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL);
+	clk &= ~(SDHCI_CLOCK_CARD_EN | SDHCI_CLOCK_INT_EN);
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, clk);
+
+	/* Issue DLL Reset */
+	zynqmp_pm_sd_dll_reset(deviceid, PM_DLL_RESET_PULSE);
+
+	clk = sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL);
+
+	sdhci_enable_clk(&host->sdhci, clk);
+}
+
+static int arasan_zynqmp_execute_tuning(struct mci_host *mci, u32 opcode)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+	struct clk_hw *hw = &host->clk_data.sdcardclk_hw;
+	const char *clk_name = clk_hw_get_name(hw);
+	u32 device_id = !strcmp(clk_name, "clk_out_sd0") ? NODE_SD_0 :
+							   NODE_SD_1;
+	int err;
+
+	/* ZynqMP SD controller does not perform auto tuning in DDR50 mode */
+	if (mci->timing == MMC_TIMING_UHS_DDR50)
+		return 0;
+
+	arasan_zynqmp_dll_reset(host, device_id);
+
+	err = sdhci_execute_tuning(&host->sdhci, opcode);
+	if (err)
+		return err;
+
+	arasan_zynqmp_dll_reset(host, device_id);
+
+	return 0;
+}
+
 static int arasan_sdhci_init(struct mci_host *mci, struct device *dev)
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
@@ -228,8 +268,9 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				&command, &xfer);
 
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
-	if (data) {
+	if (xfer)
 		sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
+	if (data) {
 		sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE,
 			      SDHCI_DMA_BOUNDARY_512K | SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
 		sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
@@ -237,6 +278,10 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
+	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
+	if (cmd->cmdidx == MMC_SEND_TUNING_BLOCK || cmd->cmdidx == MMC_SEND_TUNING_BLOCK_HS200)
+		mask = SDHCI_INT_DATA_AVAIL;
+
 	ret = sdhci_wait_for_done(&host->sdhci, mask);
 	if (ret)
 		goto error;
@@ -701,8 +746,11 @@ static int arasan_sdhci_probe(struct device *dev)
 	if (of_property_read_bool(np, "no-1-8-v"))
 		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_NO_1_8_V;
 
-	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a")) {
+		if (IS_ENABLED(CONFIG_MCI_TUNING))
+			mci->execute_tuning = arasan_zynqmp_execute_tuning;
 		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN;
+	}
 
 	arasan_sdhci->sdhci.base = IOMEM(iores->start);
 	arasan_sdhci->sdhci.mci = mci;
@@ -713,7 +761,15 @@ static int arasan_sdhci_probe(struct device *dev)
 	mci->card_write_protected = arasan_sdhci_card_write_protected;
 	mci->hw_dev = dev;
 
-	mci->f_max = clk_get_rate(clk_xin);
+	/*
+	 * clk_rates on ZynqMP are rounded wrong. For HS200 clk_get_rate retunrs
+	 * 199999998 instead of 200000000
+	 */
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
+		mci->f_max = 200000000;
+	else
+		mci->f_max = clk_get_rate(clk_xin);
+
 	mci->f_min = 50000000 / 256;
 
 	arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev);

-- 
2.43.2



