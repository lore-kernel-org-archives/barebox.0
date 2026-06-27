Delivery-date: Sat, 27 Jun 2026 21:44:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYwo-00AWyC-0S
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 21:44:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYwn-0000Uh-1b
	for lore@pengutronix.de; Sat, 27 Jun 2026 21:44:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IydbtyF6yN3zc8LwMhFdjgvSzVmfR4Ah8BbYdwylq0g=; b=u8IzAODRY9nlKU9pV+e1g83Ig5
	Nmsr+0FOUKQZUXr6JbKlH1nrq/V/5WYb//MQxK7lzDPVYXI3N1VpMdUJ4c9J6AuAL8Vd9oIFtpYmb
	ryPLvvC9OGnRyt3KvBhUJ1Zd8UM6iyogPyFFmCQ7AJ1VV2mVkT3/Fi1OZ5ta02XA1vxAeU0ECDg4Q
	IH/UvPjn59YkYzFuhu2sNYzac1Fbao1yoeDUjN9AynyI5rD9+CNahW1cYDXoNEmi2TZ00tKeQyzvz
	CbWfchgG8qz2z8Tv6KgF3m29qUaQjmh/R3egPCKhjxEIjlvMAxS4bScATcoAIzuSIb6j602/XcJlo
	9QIZzSOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwG-0000000CjDl-21I0;
	Sat, 27 Jun 2026 19:43:40 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwC-0000000CjBK-3iM2
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 19:43:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wlh25jkuZXQTQ7I7qWoQtY51byXK4erWJddmvuh9iw30lwSzEuyr+rgqjPllM1POdH/VnPus/WooNcf+Eqon0EC4hdF8dJ3V6UWU05NvoCMzmdvawPnwBVuRmsYYI7N78sPO7y78+jSYsMNArwAqL1SFlikO1KNwETRvjuk9mTIsG5JYweyUYGU3Km7Of8fArYY5q/FOlggB1y7fnqsHP3L2PSAWQzeqPWXiuSla3LWIbH5wDa7rU/o35BQWj+t/eVldWQCvdKFMWTctZ4Qc7W0EzHfaW19L2uny6eqEz1j9Bm3rwdSbjVwauoY3jZao57EtsjDUVq645ugCnzqxDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IydbtyF6yN3zc8LwMhFdjgvSzVmfR4Ah8BbYdwylq0g=;
 b=nls/KhEgcLF9wKcvLmTkqdppTWGIgEJMUQh52x7U5WPDuzQXzvOaxdH3JjwWkhXfamNAEH0meDajJeYgK05FqZiDMEmRyo7ldHuLunxNyc2dqi4jav0+qInqMXyjV+vm7RC/QHO1W/TEba3vPnuQwvd+wi4jSK2OA5dk2gfwEdVMGBraXE0PkQ8LP5NbjMTmh+V8Hfd37/e8bc/mM9AJ+tbO/6LeH57l8uAklsdKceSmnG4+k7nl19D+J7d9fOu4/OHllayvQ6WzwlhTvkXncbOnhWvaGPjUukSp4F2+06wbA0JQTE/dALgf2kE4UeYfD+A+Evfs6Hsq+XaROSWx6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IydbtyF6yN3zc8LwMhFdjgvSzVmfR4Ah8BbYdwylq0g=;
 b=baBdy2fBPQuduxnFwCzzUSqeIJld7a3znaMqlvFxtw/K8PJ1gIpoCrxk9Vu3DLVXJGpSYooh+lQ29RsFol2ZPfCIa25SKOyaqbkOCL8heBHmdFgn0zgDUr3o33kP+1VnnCg3ieiAMRmxi1dPX/HGMLpA4zadft8uMfqcqcIWawQ=
Received: from DU7P190CA0025.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:550::32)
 by AM7PR06MB6692.eurprd06.prod.outlook.com (2603:10a6:20b:1a3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Sat, 27 Jun
 2026 19:43:29 +0000
Received: from DB1PEPF000509FB.eurprd03.prod.outlook.com
 (2603:10a6:10:550:cafe::26) by DU7P190CA0025.outlook.office365.com
 (2603:10a6:10:550::32) with Microsoft SMTP Server (version=TLS1_3,
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
 15.21.181.6 via Frontend Transport; Sat, 27 Jun 2026 19:43:29 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 27 Jun 2026 21:43:28 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Sat, 27 Jun 2026 19:43:20 +0000
Message-ID: <20260627194324.2230643-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
References: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Jun 2026 19:43:28.0860 (UTC) FILETIME=[3A32E9C0:01DD066D]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FB:EE_|AM7PR06MB6692:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1cd6ae71-774a-4c42-9f8b-08ded4845d23
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700016|23010399003|82310400026|376014|18002099003|22082099003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: EZrflb7C2Hi57pBPbONPb6hO+LRJL2ZyodgKSHiiFm4+M8BKmtcWCfaiq8t7ESwm+h1kqLTYHTs6T23jZPSpM11yB2hZYcR7gs2qRonj/MSpyRxTHz8X6okzn+GISjCwP4aiEFHrjBJFEhDYsTNTXz48FE7JD2yuJqHSQDv1tlfNLt/bfSgdK3/9iEF9VRWRuRNlY+snRMW1L9pxjdfyBMIaiGDR5Fu+cognzyfLPzseJlbG6l+7v7CM7gcTZNgvDGgrS5yxA5VwpRGzRO6PziJFkIsP6pmSve0eVT0f+hvDP7Ddmt2uoPoHURPgJmsiiSVslXOwTYba7gwJR5aXFbeyrTKZyKpV4PnaTYynRNcv6uTQzkCxSX83ClCfB0FVNmLp91eeGJ5JFYwWttPE8ccCjIagIGqIUdmO6lHFxkx5L/jvlXdy+Gzr5nDxFSY6G0VXEB1bqc/RYWFllZbHnVFK+oufrJGnmqahCfhg7xPxnjB9CJ6bVCY77yuRCHRWJ93+yPlVnFi9TG0bApeKLMLsn6q7S8Rp/c3Bxn2UmtXg8HZpq2PtLBsTgJmpupH8qAhHq3FB8mOMD49ucnNNuWxHduu0cxojoZPbiysVURuN79JfO5tLAY0hKr5JMQZ0dJhlQyuK7g+nOrPQ42PR4OOCRmLBFzrLwaokOT3M0nHOalzn+95sZaCTHaxRfgrlWB3YxTWxoYAI9hOxdJI+SA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(23010399003)(82310400026)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: iESAM/wbQuqhNXrg60ePNh/F6ONzhubBuAgZnEsOA2YqhPuSSmVx1whofKxA6IoDst6nfHejrU9t+EXbWK21Cz7V0vDL446Z/iGBVM1EEbgZsS92RTBKMs7iQPOXQlfLFqsvLpS5zfxSfSd2/YiouTT+NfPy3Xr5naO8MEgd7AZbnlTIqGVHg0fwvAIn2arPrveUAmioq9qCsemWMpKS8ySfXYc6siJM4XHM4EO1C8sci2rxybH10sJojhVktbSQ3YpJqJT/yYlMgr0nnnotpWXDPaFR8ZJSOqrm88rIzpv4kFBM1f8LU+z+Tp/K0J1aKqU18Ew8h/6ej3SGyXhLYr7GnJvYxvLAFCgXc+gAY04vyUYtmmgGOGHm8b0l5ewyotnw1lnEjyX0CnZsWHaDrVFw1eHYCMene6RIERw2Pqq4GmljU+y8x4T48KoyiZ6G
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2026 19:43:29.5945
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cd6ae71-774a-4c42-9f8b-08ded4845d23
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FB.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR06MB6692
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_124336_929771_8C5CA939 
X-CRM114-Status: GOOD (  16.68  )
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
Subject: [PATCH v1 3/7] mci: sdhci: honor BROKEN_ADMA_ZEROLEN_DESC / NO_ENDATTR_IN_NOPDESC quirks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ADMA2 table builder always emitted a 64 KiB chunk as a length-0 descriptor
(the 16-bit length field encodes 65536 as 0) and terminated the table with a
separate NOP-END descriptor. Some controllers mishandle these forms; Linux
gates the workarounds behind SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC (cap the
length below 64 KiB so it is never 0) and SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC
(mark END on the last transfer descriptor instead of a trailing NOP-END).

Add both quirks to the shared SDHCI layer and honor them in the table builder.
Controllers that set neither keep the previous behaviour exactly, so this is a
no-op for everyone until a host driver opts in.

Assisted-by: Claude Opus 4.8 (1M context)
Assisted-by: GitHub Copilot CLI (gpt-5.5)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/mci/sdhci.c | 35 ++++++++++++++++++++++++-----------
 drivers/mci/sdhci.h |  4 ++++
 2 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index ccd5d4b83c..8ed8a59342 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -646,31 +646,44 @@ static int sdhci_adma_write_desc(struct sdhci *host, void **desc,
 static int sdhci_adma_build_table(struct sdhci *host, dma_addr_t addr,
 				  unsigned int len)
 {
+	unsigned int max_len = SDHCI_ADMA2_MAX_LEN;
 	void *desc = host->adma_table;
 	int ret;
 
+	/*
+	 * Some controllers (e.g. the i.MX uSDHC) cannot handle a length-0
+	 * descriptor, which the 16-bit length field uses to encode the full
+	 * SDHCI_ADMA2_MAX_LEN. Cap the chunk just below that so the length is
+	 * never 0.
+	 */
+	if (host->quirks & SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC)
+		max_len = SDHCI_ADMA2_MAX_LEN - 4;
+
 	while (len) {
-		unsigned int chunk = min_t(unsigned int, len,
-					   SDHCI_ADMA2_MAX_LEN);
+		unsigned int chunk = min_t(unsigned int, len, max_len);
+		unsigned int attr = ADMA2_TRAN_VALID;
 
+		len -= chunk;
 		/*
-		 * The length field is 16-bit; a length of 0 encodes
-		 * SDHCI_ADMA2_MAX_LEN bytes per the SD Host Controller
-		 * specification.
+		 * Controllers that ignore the END attribute in a trailing NOP
+		 * descriptor want END on the last transfer descriptor instead
+		 * (SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC).
 		 */
-		ret = sdhci_adma_write_desc(host, &desc, addr, chunk & 0xffff,
-					    ADMA2_TRAN_VALID);
+		if (!len && (host->quirks & SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC))
+			attr |= ADMA2_END;
+
+		ret = sdhci_adma_write_desc(host, &desc, addr, chunk & 0xffff, attr);
 		if (ret)
 			return ret;
 
 		addr += chunk;
-		len -= chunk;
 	}
 
-	/* Append a terminating descriptor (nop, end, valid). */
-	ret = sdhci_adma_write_desc(host, &desc, 0, 0, ADMA2_NOP_END_VALID);
+	if (host->quirks & SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC)
+		return 0;
 
-	return ret;
+	/* Append a terminating descriptor (nop, end, valid). */
+	return sdhci_adma_write_desc(host, &desc, 0, 0, ADMA2_NOP_END_VALID);
 }
 
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 558469e8ab..cb3b6d2b17 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -315,6 +315,10 @@ struct sdhci {
 	bool v4_mode;		/* Host Version 4 Enable */
 
 	unsigned int quirks;
+/* Controller ignores the END attribute in a NOP ADMA2 descriptor */
+#define SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC	BIT(6)
+/* Controller cannot handle a length-0 (== 64 KiB) ADMA2 descriptor */
+#define SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC	BIT(11)
 #define SDHCI_QUIRK_MISSING_CAPS		BIT(27)
 	unsigned int quirks2;
 /* The system physically doesn't support 1.8v, even if the host does */
-- 
2.43.0



