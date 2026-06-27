Delivery-date: Sat, 27 Jun 2026 21:44:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYwr-00AWya-2E
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 21:44:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYwq-0000xM-SF
	for lore@pengutronix.de; Sat, 27 Jun 2026 21:44:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sVo1ODb4PZNY+n9ZYMtMXrzDrWnxuPC5kpgFx3XY+IE=; b=fwbq7WOxc4x/OvE6ECz+EXoi2F
	83mTzsV0EWU7dTNLmVfqltjelCvWssNCTCNJImsLMR9JpkVbhVQnys2i3SWLuqUbvDtvgnx9CS+bF
	GQrAut2ll4use7GPQlW9wWnB4f4B5z8a/tYqBOYqqySreCgJJZkDEmtk9E6yDzo0IygRif0sG7EKN
	4/HwlGOMR/HNdIkiqPjXJ1J3eFZpCHIAocbhd8oeHeXJFw2U1QMyzX54oQKMGutNqqbmzsJfA4nSU
	EmUiv8oxFAShFwpJ48DxgEXYLfX9hitDjMoBLTw4qVXk1ntpwiOi6Zi3rUrKQB2uUslp6e0oYlFLu
	LZdrluMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwJ-0000000CjEc-1ksL;
	Sat, 27 Jun 2026 19:43:43 +0000
Received: from mail-westeuropeazon11013027.outbound.protection.outlook.com ([52.101.72.27] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwE-0000000CjBi-1h0s
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 19:43:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=duN4106HCLzehQng/xORfWccBR2keHSLRpX/lcUmJts4C0gCwvYwTfCEmToWQ6LRogcqpkrA5oxI2MfzEtCxiDDx7dsf3QaKojwnPsWegCoFml4KkVYv9BZ1P/vsf0sQ+dj/pWuyoklDLCrFoFcDomIL+//xU1vBgqCeznpVBSm8tzUi58lfhHJRwS6bPOBVFCTqZCE7djWrrO5q+mQGec0H4J0mSwt+Q8glr9PcSW9mzlkNAPSozb2lmCQUa0H8Q+0UQTHc2ZQsp9SMRcTQdjmj9F+XqxRo3yGQE40jLvlUAqUjAswcOqR2jQmT15wpNgmUs25z9qHdmayhy717dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sVo1ODb4PZNY+n9ZYMtMXrzDrWnxuPC5kpgFx3XY+IE=;
 b=pcQB6Hil9ydlbfs5RQFnuMWUwxARXyK5o8tATwKC/8OdQkO65umy103HDY496JbgF/vsF0HtpdLru22PA1/9qBJ3C2Om1zsL1Lz3hWQlPqgi1OdWn5MFWXgqIfl7BFOKSHEcd3ltVi37sQLbx2sunitw2UCryr/Qwu7cpQC+gl/Tyfw64Xg5apE61zuIlVavBqhn6+9v6mLlDTfIBaCDcuo/Su0o+gQ3AhIqV7uv8IGJ1WAbix3NhQEKCouKyvuA6c/ixGtEUIj7qYzNSFa7jo/smKaC5WXOEB3keeVRFMweJ2USTto6o0bXu84HHQtQtDtqXhXyRjiV1qH6Xf9nig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sVo1ODb4PZNY+n9ZYMtMXrzDrWnxuPC5kpgFx3XY+IE=;
 b=GdxWr/V7ys7I+vkOUgRmNP5CQVNl6FCNkz02QKrBKPOj40ImUxgO5uVfa/GkOxT+e0TR7YAQsoqITkBmsGgNplHUUbw1dR5V3jF07Bncg+BpvDtgO1efaRCuol6p3piHfOKXLLF1BK/UPInuCF9ORfvLTwHlz+mMHGvcD0eJJUs=
Received: from DU7P190CA0001.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:550::27)
 by GVXPR06MB8798.eurprd06.prod.outlook.com (2603:10a6:150:112::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Sat, 27 Jun
 2026 19:43:31 +0000
Received: from DB1PEPF000509FB.eurprd03.prod.outlook.com
 (2603:10a6:10:550:cafe::96) by DU7P190CA0001.outlook.office365.com
 (2603:10a6:10:550::27) with Microsoft SMTP Server (version=TLS1_3,
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
Date: Sat, 27 Jun 2026 19:43:23 +0000
Message-ID: <20260627194324.2230643-6-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
References: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Jun 2026 19:43:28.0923 (UTC) FILETIME=[3A3C86B0:01DD066D]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FB:EE_|GVXPR06MB8798:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: c2571104-438f-46bb-5004-08ded4845e09
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|36860700016|23010399003|1800799024|13003099007|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: pGyIDrYurjtzwGrf/X6B2bYHM2U8XiwWKw9k1DbPRKZlyWSYVuCfGtPp+bfnGLnVUxQ7+9ItK6ioxs5FzU/1SxTkndz69i6c1+aub593jj94LErVsjZhS9VQYsO7DViv3ISeIpSjejta/I/GDiDDtqQQCent7pc56M1ACQSBycrI25Ro+J4q8sxNtG/X2fu1w9HiLe5saZjL+c9Zs32yS3YfmueoV3xNKYOPU/4+X4p2l9VG/Ieb86/MCgF8OpZ1btBvJPIrjQdZAOWsjGqOZTxfY0+TcZHrwTvV0Am2WdWyaZRL7OiNNzs0vNoFfOaesLTcQrNq/5n5lENXFndBSW+U5/l5Y8hmgQglfBcjvuCbuUwxlNpV8r7jo3ROhOyfcCU3C/XhA+tNxySs2RlhCoYbXZzWEVtF9c9nk8m4xjq0O3YfiIv/kkjQtuofNBjBxWKW2RNTC6vuk6AlS8CWEX+cxfiYbpXlO4FAMoP95AV1pi2T3FpDidDkagr0eCZzu0f39guUoTwcnLWKqTfzSq55lOqzaPUQFRfaEyXA4NgxXiy8tOD0rFu4bNxzXHZFZfYk8iCLv+WeecLAxvUOyKfK0fvoL2RburWQftgqoizMSDkMY1tzq2RxYXsbgLANarlxoZ+flMsUoKU3kZ2HuQ==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700016)(23010399003)(1800799024)(13003099007)(22082099003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: //DZXQ8Pvbd5JbWBaR34iCSztN2/C7FkyhnfufKiE0YvPa5qS2Urf6B+o1KAp1iCYwX7gZzuehXWczzHZkDYKTCO4a1gmaEnmD2jnRSeWuNOP6fqkKcAsFgvmpvpq7DVhn8jtknt6UrP5/A0O3U3Qa33a3bLPMjFO7ETXun81b+jDvyir/nmh3RJMIwZKa/VZAKiTkA4EooahPkCYzv+PZ8g6E9GFclDVu65nultuYZ5j5fXFn7fOfaygRRa/Yi2u3tDL8DvO95j7ORUfAf8p6YlRT70UW/A9YMi5sS/pzRHH551tFHcQzvquI4nA1099pjVKMG+fGDqJrj/n3YO1LWtwD8JTpuufDfUIfxP8vjvjUJBXnGkQv+JTuiZxmzNguQsBeG+pUUejf/xJ9DPAIex9QIPU6ZLiD9zgCVcMNunhuD9cqlrhkpgsWeFmj2s
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2026 19:43:31.0936
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c2571104-438f-46bb-5004-08ded4845e09
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FB.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR06MB8798
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_124338_451493_9052A145 
X-CRM114-Status: GOOD (  12.24  )
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
Subject: [PATCH v1 6/7] mci: imx-esdhc: make the transfer mode selectable (PIO/SDMA/ADMA2)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver only offered a PIO-or-DMA toggle (CONFIG_MCI_IMX_ESDHC_PIO) and
never called sdhci_setup_adma(), so the controller-resident ADMA2 engine was
unreachable and DMA always meant SDMA.

Replace the single bool with a choice of PIO/SDMA/ADMA2, defaulting to SDMA so
existing configs keep their current behaviour, and call sdhci_setup_adma() in
probe under the ADMA2 option (mirroring the Rockchip dwcmshc driver). It
returns -ENOTSUPP and cleanly falls back to SDMA on controllers without ADMA2
capability, so the new option is safe on all i.MX/Layerscape variants.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/mci/Kconfig     | 19 ++++++++++++++++---
 drivers/mci/imx-esdhc.c |  7 +++++++
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index b38f7a3bdf..cd8862722c 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -169,11 +169,24 @@ config MCI_IMX_ESDHC
 	  Enable this entry to add support to read and write SD cards on a
 	  Freescale i.MX25/35/51 based system.
 
-config MCI_IMX_ESDHC_PIO
-	bool "use PIO mode"
+choice
+	prompt "i.MX esdhc transfer mode"
+	default MCI_IMX_ESDHC_SDMA
 	depends on MCI_IMX_ESDHC
 	help
-	  mostly useful for debugging. Normally you should use DMA.
+	  How the driver moves data words to/from the controller. SDMA and
+	  ADMA2 use the controller's DMA engine; PIO is CPU-driven and slow.
+
+config MCI_IMX_ESDHC_PIO
+	bool "PIO"
+
+config MCI_IMX_ESDHC_SDMA
+	bool "SDMA"
+
+config MCI_IMX_ESDHC_ADMA2
+	bool "ADMA2"
+
+endchoice
 
 config MCI_OMAP_HSMMC
 	bool "OMAP HSMMC"
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index e123bd3ede..3536ebd6b8 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -698,6 +698,13 @@ static int fsl_esdhc_probe(struct device *dev)
 	if (ret)
 		goto err_clk_disable;
 
+	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_ADMA2)) {
+		ret = sdhci_setup_adma(&host->sdhci);
+		if (ret && ret != -ENOTSUPP)
+			dev_warn(dev, "ADMA setup failed (%pe), falling back to SDMA\n",
+				 ERR_PTR(ret));
+	}
+
 	if (esdhc_is_usdhc(host) || esdhc_is_layerscape(host))
 		mci->host_caps |= MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR;
 
-- 
2.43.0



