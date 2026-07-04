Delivery-date: Sat, 04 Jul 2026 14:31:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzX3-000C56-1K
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:31:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 178D22026BE
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:31:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Lq1bVkoB;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=i4wJzHom;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tQVbi5RR5U9ihxx6kFw8TNbMJb2xOj5+nmhss5SmCi0=; b=Lq1bVkoBbwsGzKDP09Dkj+WOe5
	XEiI/SnMVuLnRnDioLD+LvmG7hNDDDbKQawh1K8sqjRA6y57IuAhDApMh5Zmn5BPQtxs+vWKMAZFT
	5aLKA5qJO3NAL7DlZpvU5m8aixmQ1Hjx/BH6qUrkpP1iVWt3y69tqpwiFFDZJND4Rj8+aPK8HcA+b
	taPZOO7QRYHc8slidB4VcPbYKWIfsXCxdPU0YUH7h74HnziiQcAvDiCVt9sNnXv9CHa0jWOK2zqvD
	/L5xmo2j6FLHGGw/hCDyr7WjR9qvvQoeS3i2SIr2sTAN0Yz/NA6XAr/NP+dUo/nJMxMeFIfhMCMRf
	wsWSDaNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSE-00000008PzV-2uPF;
	Sat, 04 Jul 2026 12:26:42 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSB-00000008Pv3-0Pzp
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CK/dHNUAJJTNh1E8G/ol/IMNpoLaXzgauy0D5vlybf9xTKOWzHE1KtLe6PkYo1GE2APrKK7WPCquswg+neRrFmcJk6VprWTJB/Y5pO87IrlHFmWiqQIfWke7yM7DoyyKdDGheZ/7Sa+araq3fZ9ZwBZ4s0Y5elZj6sjYov+6m4OWNtJ+Ja2vveVCq/viG8YZTTUK7QQYETA3qGGLb87iFcPTh8ApgjgkdA4V/q61pSPoOEAOuVszyL8nOoZYd7n1YSzv0XkR/XTlpYx2AyrtJrzczWqDwW+9AHtIva5DQJz69kGEHNISCU5EklegVKLDqeJNsDTEoRt+2VcRcQXjSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tQVbi5RR5U9ihxx6kFw8TNbMJb2xOj5+nmhss5SmCi0=;
 b=YTrNnPmh41zwuS/7LKNYjSP6+jDoK2qUhCKyhGqhdCzrg3kN8nNKa5m9EwWWp+mJ6iuqan0Pra98z3I8QZRhqHjGgqE6m2hNkP4x/+Nkuop21aUBm7L/+T+cUhXNI2xOuC+voFfhOCGaKOM/+VfOSQ2n7LoNDoFqjBV/3l9MCXbsIiPW6F76Q7mHSWzwSNw1L/tRzTMLWfVqPu5j61Xk1sRK39O9YrY+X+mJVs//JAHcN8n/brMZwzUTBFg/fxWi9S29hIXIWBLlGleRht5cFYdALi/ICMCyXhsWOCNdxwqZcurng8ixXry6LkAffkpx+W/Ss0UTM6P//G5wK+bH5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tQVbi5RR5U9ihxx6kFw8TNbMJb2xOj5+nmhss5SmCi0=;
 b=i4wJzHom05BFWXJz/TFx93DfMNRCHnV1A5EagvYWsyKVBB6PnUV0I3RPNyK8UFWofmm+W4U14wQRGbU/cjQjDaS1EAUv7KyjB/JC879/ql+6brIVDYovmbtbGOIXQut+rS9EEblYhBDuqZSeVJ3Yhl2E/kRahUVSeFPx0cuI6Do=
Received: from DU2P250CA0026.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::31)
 by AS8PR06MB7301.eurprd06.prod.outlook.com (2603:10a6:20b:25e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.12; Sat, 4 Jul
 2026 12:26:32 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::31) by DU2P250CA0026.outlook.office365.com
 (2603:10a6:10:231::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.11 via Frontend Transport; Sat, 4
 Jul 2026 12:26:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:32 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v2 03/11] mci: sdhci: bail out on ADMA/transfer errors instead of hanging
Date: Sat,  4 Jul 2026 12:26:20 +0000
Message-ID: <20260704122628.3326142-4-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0260 (UTC) FILETIME=[57964B40:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|AS8PR06MB7301:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1b16f3f3-92d3-4988-c313-08ded9c77b67
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|36860700016|82310400026|376014|1800799024|6133799003|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: uZJSzU7i241YUiV1Mcq+pUjYj3BRsOG22lRZkvpWTLdjSEmtrxphS82SDq4LCAWbYtnA5deBAgUli6n4+Ay6IQCgE+x8gnRhPB8LX4dSvQMq4lBssITZGaZwNiCsP6+eBbXF8JL2zN8WLMyd+To9Y/QjhhrFmkU2ksX0dKqexBEGxruhrIEROOw/OQ3AcLN6gC1FKSB1RxtZBePBPJJDYn0jdVgsLeCP1R+Y2APviU3n13aeLZWtIVmYszISv5gCRj46IID6WVPX3aK6ym5EiRRTHCKQoTCDOtX0XXiS7zNDlGc8scAFWDrgj9EwgAbSE1ZmBkVVz9OuUbIyFQAewdxtGEcwb4ZkA6yj0gJCZc2bIIqw/NDqZGOSXWZnGg2wHo3pAe5b4LM6TAyB8BktGygQRQcuvAJ2w0lMKy9/U5G6qOxOs/MKQJ36eF4E95jQX1xWz1ZIc2kPWfbZXkrk+JfzVWCRq68597h612mGiReaRuLkwgvJXFiqNUXB79E86F+jL5sqL8aR2Ysau3wyu/SDN2z0zyM1TF+tvK67FFUtPknwBLE0k9I/fMC7q/hOz/wqWFKGQMBmVjJfDg37mrFD2xyJvaMcyomcnOdHsdrx7kWk3j2gsPi2NJXpAcY87OOUyGuBohzSWbVrAYmad53KWO+uNC73CMUMjt7TVxE2rIkKzyveiFtMQp0a0Wo4l5UZbAToWC+Gsk7FBvaj3Q==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(82310400026)(376014)(1800799024)(6133799003)(56012099006)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 8f7IdoTyOVH24VCgKe48bx8CctZ3e9r2Z0ntiK8tzFwjAz0xi5cKxOJu75ho7xK3CEIJIh05x+4B23bEuOAjMxT4XHJIYOlHE9FOf+a8seC9cQIFT7i28ci95LAhpjAa5WcFjW5rMtyD1ChlxoLEjVi7oYjxmTQmInos4Iia+ZuHKMx75NTT8N0nIvH0RuldoFkpqpo5Iz2jmi+Vj5XI/Po/984HtcC5zTaMCu2Fwr27ATtacEaP/U4Y9fHvbTXvl46VaHVcCvx357Kez/mihWmyoEKXCyeDVu0gIJTCkFclL0uK7BTcVZql9YrnMWC4IE5fgDgQaj7l5Yv3SeaU+kwZAQAuZffNzx1lOPGMVN3ZW/r4yEIGz0RQ75VqGty6+75S3lYFLpHA4ZEczbnK7efaqxybDVHkv/KPAhhUVvlByyGMQYjH3E6iuDYrQUl8
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:32.4662
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b16f3f3-92d3-4988-c313-08ded9c77b67
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR06MB7301
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052639_138031_533AEF81 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  sdhci_transfer_data_dma() only watched for the completion
   and DMA-boundary interrupts, so a transfer/ADMA error (SDHCI_INT_ERROR, e.g.
    an ADMA descriptor fault) left it spinning until the 10s timeout. [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c201:0:0:0:3 listed in]
                             [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 178D22026BE
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c201::3:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: pss1w5s5dsiocz86617e64ix5xtrius6

sdhci_transfer_data_dma() only watched for the completion and DMA-boundary
interrupts, so a transfer/ADMA error (SDHCI_INT_ERROR, e.g. an ADMA
descriptor fault) left it spinning until the 10s timeout. Check the error
bits and abort the transfer with -EIO, dumping the ADMA error status.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---

Notes:
    v2:
    - Drop the sdhci.h SDHCI_INT_ADMA_ERROR define; upstream now provides it.
      Rebased on next.

 drivers/mci/sdhci.c | 8 ++++++++
 1 file changed, 8 insertions(+)

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
-- 
2.43.0



