Delivery-date: Mon, 12 Jun 2023 15:03:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD4-003qdi-0B
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD0-0000mk-TN
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QUitWEggc85jeAzm9AAYnlkUm8KAoFou3TAKDDU8XKs=; b=xp36DLIz5SMMNSw9rWgb2bO3YY
	LMs14XMuUpalsQvpUSvEHyj+repXxgPSgKzS0vkk+sM+6nQwzUpErWOvlIM1DxwGna/LBTYQZdzR/
	D/7gzqlMPcAQcSzv0uQOhlgGlDJVVVxl2JnIH1NyIJjPWWUX7B8BdYCbmhYlurWRPr1VATRPSz87Q
	g8ZawJFYqGfOFPShh4YD6vbaz5ST1PnOi1SiUPL+f+twEoWpfrZILOT1URaHuZKd7nK+RBthKYD63
	KR+Erv7mjgyiZ+alTPXkftQrk1ZlvJvpaMuiaGPGVBxmek3t5w0FZl2E0UBlaWsw3bPXRcjuITWdR
	01aPsMqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCN-0047Ss-32;
	Mon, 12 Jun 2023 13:03:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC9-0047Ei-0I
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-0008N2-RX; Mon, 12 Jun 2023 15:02:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-006tWE-7B; Mon, 12 Jun 2023 15:02:51 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJx-7Y; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:35 +0200
Message-Id: <20230612130239.1087599-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060253_130663_93240C19 
X-CRM114-Status: GOOD (  11.73  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/19] mci: tegra: use correct types for mmio and DMA address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't support any ARMv8 Tegra SoCs, but we still want to be able to
build test the driver when compiling for 64-bit though, so replace straight
casts of addr with lower_32_bits(virt_to_phys(addr)), which has the same
result, but makes it clear that the upper 32 bit are truncated and silences
the compiler warnings.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/tegra-sdmmc.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index a6e2b3032057..e940edf3227a 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -115,11 +115,13 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		if (data->flags & MMC_DATA_WRITE) {
 			dma_sync_single_for_device(mci->hw_dev, (unsigned long)data->src,
 						   num_bytes, DMA_TO_DEVICE);
-			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->src);
+			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS,
+				      lower_32_bits(virt_to_phys(data->src)));
 		} else {
 			dma_sync_single_for_device(mci->hw_dev, (unsigned long)data->dest,
 						   num_bytes, DMA_FROM_DEVICE);
-			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->dest);
+			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS,
+				      lower_32_bits(virt_to_phys(data->dest)));
 		}
 
 		sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT,
@@ -308,9 +310,8 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device *dev)
 	sdhci_write32(&host->sdhci, TEGRA_SDMMC_PWR_CNTL, val);
 
 	/* sdmmc1 and sdmmc3 on T30 need a bit of padctrl init */
-	if (of_device_is_compatible(mci->hw_dev->of_node,
-				    "nvidia,tegra30-sdhci") &&
-			((u32)regs == 0x78000000 || (u32)regs == 0x78000400)) {
+	if (of_device_is_compatible(mci->hw_dev->of_node, "nvidia,tegra30-sdhci") &&
+	    (regs == IOMEM(0x78000000) || regs == IOMEM(0x78000400))) {
 		val = readl(regs + TEGRA_SDMMC_SDMEMCOMPPADCTRL);
 		val &= 0xfffffff0;
 		val |= 0x7 << TEGRA_SDMMC_SDMEMCOMPPADCTRL_VREF_SEL_SHIFT;
-- 
2.39.2



