Delivery-date: Sat, 27 Jun 2026 21:44:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYww-00AWz1-0A
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 21:44:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYwv-00011y-5l
	for lore@pengutronix.de; Sat, 27 Jun 2026 21:44:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=STwPNEbIsl4jrR05Jy28XpjdEFA4h2zK7BccVI6GC7k=; b=Dnf7mb2rggT3YzFvV1m8+RJzTO
	m1C2J5cQNxOtQVBLRnOH831NkGa+vNQK+ZAD06UpaaakjCPmbhPIw7Il7ZhgNKt5gY2M3ZgYBUD7Y
	IRkV80/5ARh9yHZl8/qPVmsorz/PWUJppciLcldu47yR60rLquqtDmTE4/uZwOEsT8RkTnTgjAF10
	cM2LFp8zYFEqFihtU53yph9R7kI5up6QEoIzyCu3vJieefcMIWt+RRQE5uRAKJl0hLtzVo7M3dOjg
	jRRcKJTaXqACO6JrlEH9sY55pbRt7Dmwu1X5boxZ6saJfPlz1ylAFmhbIbpXcvVZ/m+9SJzGDoxdT
	sE7jwEYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwE-0000000CjCT-0exx;
	Sat, 27 Jun 2026 19:43:38 +0000
Received: from mail-francesouthazon11011057.outbound.protection.outlook.com ([40.107.130.57] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwB-0000000CjAt-03QT
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 19:43:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vYYuFmbye8yHLyIU5tgmZbBKEVFImTZ2j/OdeUCOrGmQlG+0MBSQzlzCGYmEjsN9u8PqmHHfPf26z8aD9vUffcoA4j2o8Pt6z21Sr+aFB3kbmV0Jm6X1ocyiNJqLzq7tvXn6z8z+XhGzL3u/Snbu8a/Ge59hcW//Vd8/3d+CGU+qxgMvKVZm4/vs81573H9YM+73MnliXVZoC1H3IMcM+h3MsQkp9NOGON7JzvLmYfxJisLVONIH3VQVpWulFj/mhcMui6FHJYelpK8zMXhqdWkq2Cgnk5xDWV0mJlBVFJnLJGA15xH4osrDyh6kitw7YmZJn2ZkNK1oLjMPQdra1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=STwPNEbIsl4jrR05Jy28XpjdEFA4h2zK7BccVI6GC7k=;
 b=o6R3aGYwkgFDLXc6fc37w8PrvA7VK3mwSK6ffJUJTrG28jgagU23PjCFmRhdm8Vc3OjpP7WDvapWsE39pnByn3MQUGw0NHdAaP+dZJXmjhv+59j1lnvzLNe3SfuEuK0KAPNAOekw92RcMhI0AArsh5qxvx+r6ZgQJm3rtaG5LWhyoen2ZJ+eQv+87hLYi0pOuKuU/5xJkh07kUBjFlssHYVcevulH21PrhAEnxoZ1n/rv0owYCOzwbEdjFKC3RqE+YmRl+7bG5ki5D7QlTj1sMFjsMt4Pb+0s1dQB4SauRyjvmSJdYXKWqoB7M5fRHc58BGG77pPFltTpz02T1L5IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=STwPNEbIsl4jrR05Jy28XpjdEFA4h2zK7BccVI6GC7k=;
 b=hhDlQVFpQ/bKU4sdfnqdI8oV5a2r5+bXfQ5ovHw/Wmmueiu5D2+mP465aIR7wDQ0lvms7LVbRBr7QCmCSGe2e1H2FzLhntPToXsmJTOQNiH4/6Z5Ix733yZKDSNQv71XYy3ToeOa8o1dPc7SQ/+7zJ7zcdMfxPvw7NKG6yMtvPI=
Received: from DU7P190CA0023.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:550::25)
 by PA1PR06MB9448.eurprd06.prod.outlook.com (2603:10a6:102:458::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Sat, 27 Jun
 2026 19:43:29 +0000
Received: from DB1PEPF000509FB.eurprd03.prod.outlook.com
 (2603:10a6:10:550:cafe::4f) by DU7P190CA0023.outlook.office365.com
 (2603:10a6:10:550::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.18 via Frontend Transport; Sat,
 27 Jun 2026 19:43:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509FB.mail.protection.outlook.com (10.167.242.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 27 Jun 2026 19:43:28 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 27 Jun 2026 21:43:28 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Sat, 27 Jun 2026 19:43:19 +0000
Message-ID: <20260627194324.2230643-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
References: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Jun 2026 19:43:28.0829 (UTC) FILETIME=[3A2E2ED0:01DD066D]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FB:EE_|PA1PR06MB9448:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: a77a9969-f17b-4e69-20fa-08ded4845c61
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|23010399003|82310400026|36860700016|376014|22082099003|18002099003|56012099006|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: fAmsQDhv5lsErm/Pgy0P/drY/9gJ4hEiqGcNhrpg3kDACIOCYoT3acBlI/0ofgr9rFzjTeKdp5SKMNBTPsiKzKTT7AzvOZ81FdVPKbN3EmJp01Xh135dPJPfC8J/T5sor9XjO56OHc51r9lhXRWZaZ9pZq3JRZBbKhZ2Tw5RY5c4Tn3IQLgdoqitKL6mWsXCmk1Rl5DBjnhxWoYWLmWvtiPpaO44st1oqv5W70QHVGHg4f5H2lFaWlcxym6ODy58ecG7wLeUBQ2C1wuVJCQEVAmTjnIrigIn83Ef6/GDOZDuSoaLJ8elZiIdPtirtEKtXHN83d6puMcsConPNPB/QyvOGKqTfPOebRPKhZnNEqFFTyJzSjr6w+na9k3JucYKMoDf/kebLPcVfL5FkEXXxKXnb2+lrCz7IB5ils4elFgIhbiNV8FIsySH6mDsL0rZg7J3tokuVAhvCbOK2IKUtjyMzU53h5gW4JLJIhPIT1sX9Tr4DDMgogTLQu9QEZi3FaVPDvMmuF1dlg4jBgnNgSRuklzUdlm/MffZWw5nnPD2erjcJ4aSHmtfeRQIo/jK8o9EQPJ4fVYyoyQvp7oeIetcQ4n68YsRJdT4WDfhvH/xZIEAwUgM4eS/g1QV6YG9An/KNTvvxhWMRMbPXROGAhHLiJRo7JDFQWyEGWRCbNovgTT5Lt5c8BGtE5LsbH/37s7zKHEGM/pl+tlZyUQo1A==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(23010399003)(82310400026)(36860700016)(376014)(22082099003)(18002099003)(56012099006)(11063799006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: SIoIULk+p0p5gB1+OXffs+Wg9qjMVytUGlVhdoquvrHYIXHAqX97WA/ZhPnucU43uWGLHPCkXHb7Bl7cVjdMrMxBbRnzlIgjr8+w4ZiHbWMnG6f8EeG9hm812E7csk8Ahrycz/KNqcbuFJ1H7xcQMeM7mVxIiTmzTbYI5DZnufPOQPmcJusXeu+QF56WtQoHzChFVbB9xbuIXBTc281pWcm9bSDXBs5kKCZgcz1wD22CGfZ1K78rHMkTmo4tWoa5oDLBKQpiHkwrXMDP4DIsOfZcKosTFQ87glWJTCw9rskXN0+dB9ZXAyQ0nodccA16zjcP1ZpFe1PzTd0c8z+23guyRf3LPdyAOtwXYND0LzPBP89/cT0BszTgUcOuvpMxiyhZSDbLbQRp42fLkeCD8tPuplP7ptHn1fWddTIuKiIQMTNjlUbfchhhC80krwAa
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2026 19:43:28.3182
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a77a9969-f17b-4e69-20fa-08ded4845c61
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FB.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR06MB9448
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_124335_056884_61734CC7 
X-CRM114-Status: UNSURE (   8.82  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/7] mci: sdhci: bail out on ADMA/transfer errors instead of hanging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sdhci_transfer_data_dma() only watched for the completion and DMA-boundary
interrupts, so a transfer/ADMA error (SDHCI_INT_ERROR, e.g. an ADMA
descriptor fault) left it spinning until the 10s timeout. Check the error
bits and abort the transfer with -EIO, dumping the ADMA error status.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/mci/sdhci.c | 8 ++++++++
 drivers/mci/sdhci.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 3474ef129b..ccd5d4b83c 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -779,6 +779,14 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
 			goto out;
 		}
 
+		/* e.g. ADMA error: SDHCI_INT_ERROR without a data-error bit */
+		if (irqstat & SDHCI_INT_ERROR) {
+			dev_err(dev, "transfer error: int 0x%08x adma 0x%02x\n",
+				irqstat, sdhci_read8(sdhci, SDHCI_ADMA_ERROR));
+			ret = -EIO;
+			goto out;
+		}
+
 		/*
 		 * We currently don't do anything fancy with DMA
 		 * boundaries, but as we can't disable the feature
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index d1f05ac968..558469e8ab 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -111,6 +111,7 @@
 #define  SDHCI_RESET_DATA			BIT(2)
 #define SDHCI_INT_STATUS					0x30
 #define SDHCI_INT_NORMAL_STATUS					0x30
+#define  SDHCI_INT_ADMA_ERROR			BIT(25)
 #define  SDHCI_INT_DATA_END_BIT			BIT(22)
 #define  SDHCI_INT_DATA_CRC			BIT(21)
 #define  SDHCI_INT_DATA_TIMEOUT			BIT(20)
-- 
2.43.0



