Delivery-date: Sat, 27 Jun 2026 21:45:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYxa-00AX0u-2f
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 21:45:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYxZ-0003gB-M2
	for lore@pengutronix.de; Sat, 27 Jun 2026 21:45:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0lLMERQ1ZeEtb0jeJ/ZHCkGpVaDJXx8p3mTsDhPDrIc=; b=dE0K8gkFOX0D5b7Sb/YmnEn+9b
	yjNAkynYFEdqkVRZFsk3ZFC4YsZV38Mi54rZ4gWDinRK8CqSsVtdly0tnI3bpWinG+ZMuXK40E0CX
	4amJY3CCNIiDJ6j1SWshUJ/nIdu0Oe7ZYYOU+t609rbuQZdsemuMbAJZF0pzHippOsir0IqkFmpZf
	6wKpul5/ByQj3E31p+YfVKSqi89ep+FZUentjQ/ahG0q+g4TNrHeGBCOP1MVTrstvO/b7JBLd8qbg
	cidkmg1VTTz0ULi6zu31UxoMN8NJnZz6rcVYX3Fx/djb3PIpXAghKSO7UbKsZjm9BBpK3yjgn4A09
	tCwFgJwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwJ-0000000CjF6-2LCg;
	Sat, 27 Jun 2026 19:43:43 +0000
Received: from mail-northeuropeazon11011065.outbound.protection.outlook.com ([52.101.65.65] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwF-0000000CjCL-0Ynv
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 19:43:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CnvI8uK6U7Dw5RUJ9L2cVhvp9WalzYduh+cUPtjXG9iZXPJilhLoBPxzlfn4xZidpj6udE7FV9uBywsMViinj7hbURtsuAAgfrFzHTKLRdMjHugLTQQEX8aCC75QDLEjPHtR7cIbL0b/fyYBIzec5dFw2Gm7neB/2L/pZes6st1jZQ1PCbWtbvq5a7hFjEAetQxETdHSjEVHCLjAXd/EpEeqYFQdXzCCMO1CCERy5kYX2RFuMgqZ4TAJ/yqgtIojcwh6u2kLK3VgcOw1GCYL6KERfO41hPplk2kaNcLK6NraRGAS1vqXjIFsLkc3d8+jTo94wuwXVnxmjf5LEf9HQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0lLMERQ1ZeEtb0jeJ/ZHCkGpVaDJXx8p3mTsDhPDrIc=;
 b=vnCB54/db3kEi+JB7spPS50LIv3l/JWS6t05fOD0yx66YSd1BNzeBez+R3SuJ72Mt98cz1L1xpUyGsx1AxZdDpniejuPmzJ7y7GuuIbDXoBKD1Yo1MSmf/hNbJ85mnrbQ39ZsGzRUl6zM8u6i5NXHq0Ka1Sx6lgi2tp2+Rvzdvdh+l8kMZOOKAI5mBKhqyCvnj20bvM3jjhRyKR13VuB1vRvUP/3l/lUC7H0KSCE2xEgugRYQebGEFqe/PxEOEcfAUVznB+k2pOq4AkD+PFcRO57W3BpCaAFiYtgpCp8Tc4hAhqnD3Fg/XaqB0wevuueMt30KJ4fZ67UAHah5A3egA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0lLMERQ1ZeEtb0jeJ/ZHCkGpVaDJXx8p3mTsDhPDrIc=;
 b=tIazeoNf9KRLD0JeP2x7fnTSeSxGJZaw+K//j/Vlf2AqXqxIHfLNPJeFgRQQq4/Lu+sV7ulyYBkn6oaLK00UHTYbBEKyKb5rKfb7ePDI9v/yi39Mee+JU1Z1NHHcJ+BnnpUd7AXVYsk0xHMztKq3LG9USX8UsfjMJuVfL8UEk3k=
Received: from DU7P190CA0006.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:550::18)
 by PA2PR06MB9419.eurprd06.prod.outlook.com (2603:10a6:102:400::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Sat, 27 Jun
 2026 19:43:31 +0000
Received: from DB1PEPF000509FB.eurprd03.prod.outlook.com
 (2603:10a6:10:550:cafe::50) by DU7P190CA0006.outlook.office365.com
 (2603:10a6:10:550::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.18 via Frontend Transport; Sat,
 27 Jun 2026 19:43:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509FB.mail.protection.outlook.com (10.167.242.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 27 Jun 2026 19:43:31 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 27 Jun 2026 21:43:28 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Sat, 27 Jun 2026 19:43:24 +0000
Message-ID: <20260627194324.2230643-7-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
References: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Jun 2026 19:43:28.0970 (UTC) FILETIME=[3A43B2A0:01DD066D]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FB:EE_|PA2PR06MB9419:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: c68a3f66-fa59-4333-e81c-08ded4845e62
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|23010399003|376014|82310400026|1800799024|6133799003|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: KiJ8mOt4sWrNQZnIo5Vy1nINQ/tPhaicQ/WQlvIqngFDQkccE9xRnFG4redwgP0UzKG7b6BGWBi6he+psh5bIBJM9IG9R3h4HXwnD8WoCrMuj2bxbf6bUrIG+0AIw8dGao/I0R2RfoyGeLR+/w7G0RBKpddpekn20YVO0N526bX3py0oi0TwdteDrle2tl7MIafV/+BldavyuXGSGEAdEs0Uvfa2FmJuiGGWwAeiuJcoLviQRV35Qwxm27SaxvUUIiG4rwH43tCQobmOvRCdTSa4hNtD32AcDKEbpSQScOAvAIqDXOBLIdvj1ckF1PHOZMeFa5VTYOAN9oU0YQnqSOrU0Utw39igo3kkdGzznYaj4W2NUMxNakxxX0co2v+uRTALJiMKrbQ6OhAHqhlCp4uYGzO+vHkNGnx0eoA07DXEOOMgHxf4YzCw2UaJq4Elo1/9Ng1qaoCi15Boe8KHZ+yhXDCLqzAS9OwsZ5C1fwZu4z2ItI7CCEr+c0cUpfRqH03FJOy1WdNF8kjr1xCgvMte5MR3AfUoK6JCxkZEb5go75wVbZgnrttQX74EsySK7jGbRZGZerMpe3aRpiISY/Jd7/NjZZPYetV4uCocRdV2E1HFMBoA/yFam4SxYC4kGce+RO9JCSZm6zxnhwwz4VXbjWYjgZGsNF+Jr3yIZ4ygsGDl2wWWAaR/RgL+Bba+bo5LgEWyGspgt9I0mHuafA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(23010399003)(376014)(82310400026)(1800799024)(6133799003)(11063799006)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 9R6igUxCjBf2RM/DrIrxw/Vi2UxwNR6QeydPM6JuYmsZ/zMycXxFKvoBZHEBW0mrnmrTRyfTdOBZZg92M3qI8+BlgUaKQGPIyhkqFkMcgrrqi+BIXPv9y/JSMr+jqeIcicvAhKhxv2hhhMmiaGHB+ebtP0xdSqkVjd0w57H5C17rUpUX5UVU3hf2IR8+4hrVpg1cx23AxvVHHuYCG+Z61N9Wh0qzVQYC7HPVAzSBA5wG7VwrPRNtqqEvACKLo1SM9w4cUOsZ9nKcHHid8CN8YTc4FY9cqR0o781KBUPsjld+6zLwmZ+0nMsU11C+HuYHDvFhVe2yZULP1jFFjOwLmr83zbX7Mw7K7Msbo/OtDEXHFwtUjFYGskYPHYdgVDmlxDPZhU3XPR98WQgftHRVdkQGWIJBYQztOUKSIgdKchp2r3k6QBLEE0P3dteHE7Dz
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2026 19:43:31.6871
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c68a3f66-fa59-4333-e81c-08ded4845e62
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FB.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR06MB9419
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_124339_208404_59E8D6A5 
X-CRM114-Status: GOOD (  18.33  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 7/7] mci: imx-esdhc: support DMA in the i.MX8M PBL eMMC loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PBL eMMC loader was hardwired to PIO via esdhc_use_pio_mode(): IN_PBL
forced PIO unconditionally. PIO is slow -- on an i.MX8MM board loading the
~1.6 MB next stage took ~559 ms; SDMA/ADMA2 do it in ~21 ms.

Let esdhc_use_pio_mode() in the PBL honour the SDHCI DMA flags, add a
transfer-mode choice for the loader (PIO default / SDMA / ADMA2), and route
both the imx8m and imx8mp/imx8mn loaders through shared helpers. The PBL has
no mci and runs before BL31, so host.sdhci.version is set by hand (no
__sdhci_read_caps()) and the ADMA2 descriptor table lives in a static buffer
(the PBL has no allocator), compiled in only for the ADMA2 option.

On the imx8mp loader the DMA mode is set up *before* the bootpart EXT_CSD
read so that read also goes through ADMA: a PIO transfer preceding the first
ADMA transfer wedges the uSDHC ADMA engine. Either way the loader retries in
PIO if the DMA attempt fails, so a misconfigured board still boots.

SDMA and ADMA2 perform identically here (the transfer is bus-bound), and SDMA
needs no descriptor table, so it is the simpler default for boards that just
want the speedup.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/mci/Kconfig            | 21 +++++++++++
 drivers/mci/imx-esdhc-common.c | 16 ++++++--
 drivers/mci/imx-esdhc-pbl.c    | 68 +++++++++++++++++++++++++++++++---
 3 files changed, 96 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index cd8862722c..e071bb5650 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -288,6 +288,27 @@ config MCI_IMX_ESDHC_PBL
 	bool
 	select MCI_SDHCI
 
+choice
+	prompt "i.MX8M PBL eMMC loader transfer mode"
+	default MCI_IMX_ESDHC_PBL_PIO
+	depends on MCI_IMX_ESDHC_PBL
+	help
+	  How the i.MX8M PBL reads the next boot stage from eMMC. DMA is much
+	  faster than PIO; on failure the loader falls back to PIO so the board
+	  still boots. ADMA2 additionally needs the board PBL to set up an early
+	  malloc pool (pbl_malloc_init) for the descriptor table; SDMA does not.
+
+config MCI_IMX_ESDHC_PBL_PIO
+	bool "PIO"
+
+config MCI_IMX_ESDHC_PBL_SDMA
+	bool "SDMA"
+
+config MCI_IMX_ESDHC_PBL_ADMA2
+	bool "ADMA2"
+
+endchoice
+
 config MCI_ATMEL_PBL
 	bool
 	select MCI_ATMEL
diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index a0c2dee32d..1bf70d4e65 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -295,9 +295,17 @@ void esdhc_populate_sdhci(struct fsl_esdhc_host *host)
 				      SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC;
 }
 
-static bool esdhc_use_pio_mode(void)
+static bool esdhc_use_pio_mode(struct fsl_esdhc_host *host)
 {
-	return IN_PBL || IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO);
+	/*
+	 * In the PBL default to PIO, unless a caller explicitly opted into
+	 * ADMA2 (SDHCI_USE_ADMA, descriptor table set up) or SDMA
+	 * (SDHCI_USE_SDMA).
+	 */
+	if (IN_PBL)
+		return !(host->sdhci.flags & (SDHCI_USE_ADMA | SDHCI_USE_SDMA));
+
+	return IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO);
 }
 
 static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
@@ -317,7 +325,7 @@ static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
 
 	host->sdhci.sdma_boundary = 0;
 
-	if (esdhc_use_pio_mode())
+	if (esdhc_use_pio_mode(host))
 		sdhci_setup_data_pio(&host->sdhci, data);
 	else
 		sdhci_setup_data_dma(&host->sdhci, data, dma);
@@ -411,7 +419,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
-		if (esdhc_use_pio_mode())
+		if (esdhc_use_pio_mode(host))
 			ret = sdhci_transfer_data_pio(&host->sdhci, cmd, data);
 		else
 			ret = sdhci_transfer_data_dma(&host->sdhci, cmd, data, dma);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index fe06d418b0..80e80b24a0 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -33,6 +33,12 @@
 
 static u8 ext_csd[512] __aligned(64);
 
+#ifdef CONFIG_MCI_IMX_ESDHC_PBL_ADMA2
+/* ADMA2 descriptor table for the PBL eMMC loader (the PBL has no allocator). */
+static u8 esdhc_adma_table[SDHCI_DEFAULT_ADMA_DESCS * SDHCI_ADMA2_32_DESC_SZ]
+	__aligned(8);
+#endif
+
 static int esdhc_send_ext_csd(struct fsl_esdhc_host *host)
 {
 	struct mci_cmd cmd = {};
@@ -252,6 +258,51 @@ int imx7_esdhc_start_image(int instance)
  * Return: If image successfully loaded, returns 0.
  * A negative error code is returned when this function fails.
  */
+/*
+ * Configure the PBL eMMC loader's DMA mode (ADMA2 or SDMA per Kconfig). The
+ * PBL has no mci, so host->sdhci.version is set by hand because
+ * __sdhci_read_caps() cannot run.
+ */
+static void imx8m_esdhc_pbl_setup_dma(struct fsl_esdhc_host *host)
+{
+	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PBL_SDMA)) {
+		host->sdhci.version = SDHCI_SPEC_300;
+		host->sdhci.flags |= SDHCI_USE_SDMA;
+	}
+
+#ifdef CONFIG_MCI_IMX_ESDHC_PBL_ADMA2
+	host->sdhci.version = SDHCI_SPEC_300;
+	host->sdhci.adma_table = esdhc_adma_table;
+	host->sdhci.adma_addr = virt_to_phys(esdhc_adma_table);
+	host->sdhci.desc_sz = SDHCI_ADMA2_32_DESC_SZ;
+	host->sdhci.adma_table_cnt = SDHCI_DEFAULT_ADMA_DESCS;
+	host->sdhci.adma_table_sz = sizeof(esdhc_adma_table);
+	host->sdhci.flags |= SDHCI_USE_ADMA;
+#endif
+}
+
+static int imx8m_esdhc_load_image_dma(struct fsl_esdhc_host *host,
+				      struct esdhc_soc_data *data, int instance,
+				      void *bl33, u32 offset, u32 ivt_offset)
+{
+	int ret;
+
+	ret = esdhc_load_image(host, MX8M_DDR_CSD1_BASE_ADDR,
+			       (ptrdiff_t)bl33, offset, ivt_offset, false);
+	if (!ret)
+		return 0;
+
+	/* Fall back to PIO so a failed DMA attempt still boots. */
+	if (host->sdhci.flags & (SDHCI_USE_ADMA | SDHCI_USE_SDMA)) {
+		host->sdhci.flags &= ~(SDHCI_USE_ADMA | SDHCI_USE_SDMA);
+		imx8m_esdhc_init(host, data, instance);
+		ret = esdhc_load_image(host, MX8M_DDR_CSD1_BASE_ADDR,
+				       (ptrdiff_t)bl33, offset, ivt_offset, false);
+	}
+
+	return ret;
+}
+
 int imx8m_esdhc_load_image(int instance, void *bl33)
 {
 	struct esdhc_soc_data data;
@@ -262,9 +313,10 @@ int imx8m_esdhc_load_image(int instance, void *bl33)
 	if (ret)
 		return ret;
 
-	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				(ptrdiff_t)bl33, SZ_32K, SZ_1K,
-				false);
+	imx8m_esdhc_pbl_setup_dma(&host);
+
+	return imx8m_esdhc_load_image_dma(&host, &data, instance, bl33,
+					  SZ_32K, SZ_1K);
 }
 
 /**
@@ -291,10 +343,16 @@ int imx8mp_esdhc_load_image(int instance, void *bl33)
 	if (ret)
 		return ret;
 
+	/*
+	 * Set up DMA first so the EXT_CSD read below also goes through ADMA --
+	 * a PIO transfer before the first ADMA transfer wedges the 8MP uSDHC.
+	 */
+	imx8m_esdhc_pbl_setup_dma(&host);
+
 	offset = esdhc_bootpart_active(&host)? 0 : SZ_32K;
 
-	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				(ptrdiff_t)bl33, offset, 0, false);
+	return imx8m_esdhc_load_image_dma(&host, &data, instance, bl33,
+					  offset, 0);
 }
 
 int imx8mn_esdhc_load_image(int instance, void *bl33)
-- 
2.43.0



