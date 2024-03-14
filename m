Delivery-date: Thu, 14 Mar 2024 19:49:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkq8w-006QnU-2p
	for lore@lore.pengutronix.de;
	Thu, 14 Mar 2024 19:49:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkq8u-0004UM-K3
	for lore@pengutronix.de; Thu, 14 Mar 2024 19:49:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h2CV4p0Fsib6J1rZ2GxeRHUXo9v3mt5fg3aIPJ3MKqk=; b=lTakFOer41TrLRuPoY4THE/Tly
	xxQNiRJIbQkE7ZvBvMVbTqDyqWOQhODRnmff2DtA+iYlXqidnRY3mao27ecx+vmzMD3Zb8LrBnKDd
	CaxKjwFNzHX00iPqhkKpUfTGJEceMcvSU6KHZNiteguQRDJOe9+ArBwpvecp1SJWJT0oPkmwAoOs6
	4RIJvdo/W8z+3+9kYZxZvxM5csVaCzzdUOJX798rLwXb/zCiE8KWSlNS6GMSRfJnHSIstEadGI9mA
	VjhBpAI853GE/2bJsod+JvKilMp0x7zfhpTOtGxbJj2qG0PbPI18Pp3if3Gh464Nj1ZK4uTZgYnBX
	vfsXQlXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq8K-0000000FN69-3AFU;
	Thu, 14 Mar 2024 18:48:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq80-0000000FMrp-0LXG
	for barebox@bombadil.infradead.org;
	Thu, 14 Mar 2024 18:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=h2CV4p0Fsib6J1rZ2GxeRHUXo9v3mt5fg3aIPJ3MKqk=; b=paOz7p4s/6tXgn3l2xYTjBJYKe
	XtZpffBEI9iPIbL05OKpWGyd5gnjHFO98NIlOEeqmy5c5dADwImLcpwnOlku9ooT1j+Gx/ha6rAaQ
	qcsLDwXaIO+8Zp8HOif6O2UBDvbsI7F9/QX61A6+O8vXFO1lNEAM6JoRB5ssznXCkFSdz2SeAcLln
	OmBjINjDfl1ZuJ4x1Ap3+8fzeVKLzfXBwRel9JNnCY9nMqK410UsKX+fjlECbQPRiu+QbVHb6ta9/
	mnx42oQRAevHQJ2jlY7fitEnUHaAfSsUOXSa30hExgUVeeUYd+I4rVeOQB/2Boeq7xAYyR7nR4IK5
	vBwpzysQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq7v-0000000AcMT-2ImU
	for barebox@lists.infradead.org;
	Thu, 14 Mar 2024 18:48:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rkq7s-0001yt-Ib; Thu, 14 Mar 2024 19:48:24 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 14 Mar 2024 19:47:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-13-0386c27fe653@pengutronix.de>
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4107;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=8V2F1WfjlEWv4N36JTgRC1Ouy5OnjwcDeOqzg5extZM=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFI/u+W1/LHlkEu6FD37UGncnMmCMZKSm/wv8kWHNs/h3
 TT3pPKNjlIWBjEuBlkxRZbItYc0Ngt/1vly/DwDzBxWJpAhDFycAjCRPb8Y/lfvX/2uvofX03vr
 ZbO3bxI3H1df/KjOl/+nbY/IkqM6a5QZ/gp82VG3S27v22MsdxxTMr0T8xYrdC2UmHzDZ1Xsq8m
 f3vEAAA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_184827_737804_9292F04A 
X-CRM114-Status: GOOD (  12.59  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 13/14] mci: arasan-sdhci: add HS200 tuning support on
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
index eb81ff907b..80489e98f4 100644
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
@@ -226,8 +266,9 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				cmd, data, false, &command, &xfer);
 
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
-	if (data) {
+	if (xfer)
 		sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
+	if (data) {
 		sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE,
 			      SDHCI_DMA_BOUNDARY_512K | SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
 		sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
@@ -235,6 +276,10 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
+	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
+	if (cmd->cmdidx == MMC_SEND_TUNING_BLOCK || cmd->cmdidx == MMC_SEND_TUNING_BLOCK_HS200)
+		mask = SDHCI_INT_DATA_AVAIL;
+
 	ret = sdhci_wait_for_done(&host->sdhci, mask);
 	if (ret)
 		goto error;
@@ -699,8 +744,11 @@ static int arasan_sdhci_probe(struct device *dev)
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
@@ -711,7 +759,15 @@ static int arasan_sdhci_probe(struct device *dev)
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
2.40.1



