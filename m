Delivery-date: Wed, 22 May 2024 10:08:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9h1W-00DPTo-1e
	for lore@lore.pengutronix.de;
	Wed, 22 May 2024 10:08:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9h1R-0004gg-OF
	for lore@pengutronix.de; Wed, 22 May 2024 10:08:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DNGr7D1G0PF9rSE9rB2wNkTHniPZR7QMscnt5NVmUeA=; b=A/gnSCcYreKBOFLpUyxIy/SqQP
	qxGtIRA/H9PHAhb/JEfqKHnRtdhbVKKWKQs50i8GW7DGK/Nn36ivlQ3a7HlVOAr0eBSPLg2GRi2Mt
	cpq3wRSKA2njGsnF9vyCiYWFFWMp9tfPXqkOjrFZbuOm4DvKC6H0s0Z/3kl4RQOkIV9+GcmWt0Qme
	/fojwdWAWHByurG89nz+mbOJsCe0DllQmdLAbWfG0F3c7qEL25DL/ozxF2iEhTlxIV7Vg97xHF0Zh
	1k371aXFTtLCT6wksv2hHZpONNpLa/YHkeJAKjuA4pmNm7ZI+1K6I0R2g3bgZZIxAZOBWsj/YGGgk
	NQRPNQww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9h0g-00000002JAQ-43mJ;
	Wed, 22 May 2024 08:07:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9h0e-00000002J9l-1PGr
	for barebox@lists.infradead.org;
	Wed, 22 May 2024 08:07:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h0c-0004Kv-BF; Wed, 22 May 2024 10:07:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h0a-002Uq1-1I; Wed, 22 May 2024 10:07:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h0Z-008FGq-33;
	Wed, 22 May 2024 10:07:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 May 2024 10:07:33 +0200
Message-Id: <20240522080734.1965257-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240522080734.1965257-1-a.fatoum@pengutronix.de>
References: <20240522080734.1965257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_010740_401492_70F2A170 
X-CRM114-Status: GOOD (  12.00  )
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
Subject: [PATCH master 2/3] mci: sdhci: retrieve host device via common helper or NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since commit d20abb491654 ("common: console_common: handle NULL dev
gracefully in dev_printf"), it's permissible to pass NULL to the
dev_printf family of functions. Therefore define sdhci_dev, which either
return a device if mci was set or NULL otherwise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index da6c2ddb5879..2e8f99fc462c 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -21,6 +21,11 @@ enum sdhci_reset_reason {
 	SDHCI_RESET_FOR_CQE_RECOVERY,
 };
 
+static inline struct device *sdhci_dev(struct sdhci *host)
+{
+	return host->mci ? host->mci->hw_dev : NULL;
+}
+
 static void sdhci_reset_for_reason(struct sdhci *host, enum sdhci_reset_reason reason)
 {
 	if (host->quirks2 & SDHCI_QUIRK2_ISSUE_CMD_DAT_RESET_TOGETHER) {
@@ -170,7 +175,7 @@ static int __sdhci_execute_tuning(struct sdhci *host, u32 opcode)
 
 	}
 
-	dev_dbg(host->mci->hw_dev, "Tuning timeout, falling back to fixed sampling clock\n");
+	dev_dbg(sdhci_dev(host), "Tuning timeout, falling back to fixed sampling clock\n");
 	sdhci_reset_tuning(host);
 	return -EAGAIN;
 }
@@ -416,13 +421,13 @@ int sdhci_wait_for_done(struct sdhci *sdhci, u32 mask)
 			return -ETIMEDOUT;
 
 		if (stat & SDHCI_INT_ERROR) {
-			dev_err(sdhci->mci->hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
+			dev_err(sdhci_dev(sdhci), "SDHCI_INT_ERROR: 0x%08x\n",
 				stat);
 			return -EPERM;
 		}
 
 		if (is_timeout(start, 1000 * MSECOND)) {
-			dev_err(sdhci->mci->hw_dev,
+			dev_err(sdhci_dev(sdhci),
 				"SDHCI timeout while waiting for done\n");
 			return -ETIMEDOUT;
 		}
@@ -470,7 +475,7 @@ static void sdhci_config_dma(struct sdhci *host)
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			  dma_addr_t *dma)
 {
-	struct device *dev = sdhci->mci->hw_dev;
+	struct device *dev = sdhci_dev(sdhci);
 	int nbytes;
 
 	if (!data)
@@ -502,7 +507,7 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			    dma_addr_t dma)
 {
-	struct device *dev = sdhci->mci->hw_dev;
+	struct device *dev = sdhci_dev(sdhci);
 	u64 start;
 	int nbytes;
 	u32 irqstat;
@@ -615,7 +620,7 @@ int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data)
 
 int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t dma)
 {
-	struct device *dev = sdhci->mci->hw_dev;
+	struct device *dev = sdhci_dev(sdhci);
 
 	if (!data)
 		return 0;
@@ -665,7 +670,7 @@ static u16 sdhci_get_preset_value(struct sdhci *host)
 		preset = sdhci_read16(host, SDHCI_PRESET_FOR_HS400);
 		break;
 	default:
-		dev_warn(host->mci->hw_dev, "Invalid UHS-I mode selected\n");
+		dev_warn(sdhci_dev(host), "Invalid UHS-I mode selected\n");
 		preset = sdhci_read16(host, SDHCI_PRESET_FOR_SDR12);
 		break;
 	}
@@ -778,7 +783,7 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
 	while (!(sdhci_read16(host, SDHCI_CLOCK_CONTROL) &
 		SDHCI_CLOCK_INT_STABLE)) {
 		if (is_timeout(start, 150 * MSECOND)) {
-			dev_err(host->mci->hw_dev,
+			dev_err(sdhci_dev(host),
 					"SDHCI clock stable timeout\n");
 			return;
 		}
@@ -805,7 +810,7 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
 
 	if (ret) {
-		dev_err(host->mci->hw_dev,
+		dev_err(sdhci_dev(host),
 				"SDHCI timeout while waiting for idle\n");
 		return -EBUSY;
 	}
@@ -827,7 +832,7 @@ int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
 
 	if (ret) {
-		dev_err(host->mci->hw_dev,
+		dev_err(sdhci_dev(host),
 				"SDHCI timeout while waiting for idle\n");
 		return -EBUSY;
 	}
@@ -880,7 +885,7 @@ void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
 	u16 v;
 	u64 dt_caps_mask = 0;
 	u64 dt_caps = 0;
-	struct device_node *np = host->mci->hw_dev->of_node;
+	struct device_node *np = dev_of_node(sdhci_dev(host));
 
 	BUG_ON(!host->mci); /* Call sdhci_setup_host() before using this */
 
-- 
2.39.2



