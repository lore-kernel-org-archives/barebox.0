Delivery-date: Sat, 04 Jul 2026 14:31:40 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzX2-000C4k-33
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:31:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 441532026DB
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:31:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VnM6JliF;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=SJQTZ9bJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XZGEMPJ0h6d8GQjCwZ5ibcbLICY1Px8LfHSSTYrw24g=; b=VnM6JliF+11A7D2RGurtro70XX
	Q3zyQgW6OT5XBbNbHszgS7O4qZPAyuXi3mU737msa3kNd/dxtqoX1YgY/tuLnYB5BP/oxABkcJoJW
	T5DMgK9a9Xi7lCibx0g/9yNCQFc665g5TxlFQOOnqHMTFS7ilpWNQYtI5mbbT351uCY3zmoEw4enm
	pniYYnUrqueVdACoiih3wbw6nvLzQ8tOEWWQnrV6RhzTZDvaKuSb39zfNctzfqgMYbr9cedAhSDrV
	A9nYJIFQGq8Rfju3nayUe96oRR3DqDP/Gk5OTNIfcjRdBjvHQYX6hFiKnFNDyq/j67zFFa+gLLEnn
	3ZmdkrLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSI-00000008Q40-202F;
	Sat, 04 Jul 2026 12:26:46 +0000
Received: from mail-westeuropeazon11011021.outbound.protection.outlook.com ([52.101.70.21] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSG-00000008PzX-11ML
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BL7Q4GYuzG0d54tbfq7ce71bJjvtjBELP0lq2YXFOVKh5idLIe6a3JBTxzFYwTPjfH59WFU9ss+Kz/WyDmBQw6OIPQorp6J62Ph56KGblKHmRYiUurXOOIcDu0QDwsgtiSWORvEZtRiF7CtnCkNq36V6ZwJhYRAymiAsEgxn5ijqGRxipUmQD+92yhDm2Xe1lglpxdt0IqS1SNV0NPDAvYaKdKQitUMEH7EeeA6munXfz5jX2idiQng7vqTLRMB2HIOB5Wo0Gi+xDrYBdtIZunFxRG1/6Q67IAo824bRj8cQ3J3pC3rIOKUPLLKiw3P0rWnd6W3Tt3SU30xYDTDmSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZGEMPJ0h6d8GQjCwZ5ibcbLICY1Px8LfHSSTYrw24g=;
 b=f66YAM9KZ3Tn42DOVEanyucm9+NR4DPd56L9T11XvHYWme0RaJSX7+ngsMPCWC3iPZtQI+jrGWChQ6Vf4YRagZFWqQtd4wFomh3CwGbRe7Fo0SCLJzBYBOnkP/XbJ8mQYSIKabgfDRZfuUhxCx8RPhxMi3NgAUfoYhYjzS28GlubN+avr9DDWH5JO4RVhl8InaW19ExDthJ3NQ93BOhsgg4tsTQlH6RwTjcc+e5aAn08e6E9yZmU2RcwncwgFukQclG9RoWHrvttnmV6tEAfxEbeoeOqINCqoERoB0JbR7uROwwhJtV+/mCDd+hXbe2la8hrbjPl7u13Ubb9tPn/2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XZGEMPJ0h6d8GQjCwZ5ibcbLICY1Px8LfHSSTYrw24g=;
 b=SJQTZ9bJTW/W3+h0yzqjO4XUgbnshsfQzLb3oK1acPBo5mEyPFMx8H04oPI3OVStut1Bob46mk/ROAJe1a4bAR1Z/isIcIfXdhWepiHGBsb7Petvgf/wNSBL+5KCk67gT6xS3s0w2EonuNjgODbwjIuwNB0fYh6W898HMij5Qn0=
Received: from DU2P250CA0020.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::25)
 by GV1PR06MB9788.eurprd06.prod.outlook.com (2603:10a6:150:1d0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Sat, 4 Jul 2026
 12:26:36 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::7) by DU2P250CA0020.outlook.office365.com
 (2603:10a6:10:231::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:35 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v2 11/11] mci: imx-esdhc: DMA in the i.MX8M PBL eMMC loader
Date: Sat,  4 Jul 2026 12:26:28 +0000
Message-ID: <20260704122628.3326142-12-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0448 (UTC) FILETIME=[57B2FB00:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|GV1PR06MB9788:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 01b9f6d8-47e0-4dc7-b728-08ded9c77d7a
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|23010399003|82310400026|36860700016|18002099003|22082099003|13003099007|11063799006|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: f4iIz/bl5Bz9Qs/7DNyUojOei8Cn5Acy8YGbthMPK9KqUFolbXNn8tP4Nss59MEAj4bdIIPC3s3Wpxx0U1DC2lDV2ylXWtam2CovfSHHXPfX+QSW7ChQoKxMGqCis141cGdHvCFv2kBqG1HKQ9ORQJeFx2bE7CLEK5rauKjZF+9L+bDTY2HhpfJjfCerOYNFmXHVbSU0toNLSE5+7AgffNZhSFTR5CxXtUZjA6CP7MfyDTRnW5aHKLBwLzEFYeqag9yoXW+amD1+QiW6nrpsiVwKbHPIC7Vkt35cct1qCL1Bcdp4iFAbS+XYzqERWGj3mH4GR17yZQmKgSjOtwVn4Ia13Mti4ZSwsfzMNwi1AllRIA6OABhL2LCedQMgKPx/+RK5RYS15aOa4HUTROfi/J9jx0F3m5vkSzSIYcgKbCek5BwkYzuIkOgzUlbXba7C1S28T561D/skIL2r/6gF4A6txDuOgoKsBLo3R6RkAe4uM0108RNjoV+mK5R6WfreKgYdbuh4ToOTh7qoT+s5Q5HtdMwOHTIGb2QJkG5+qvDvo3f8cWRP9Cd+cdNKf/5Eny72BWaIRFSBUN2HyewmBiz0uI9k7iArm3twoSEEiSxYkqPBCKrEZCvMOrJinOzDQCLNwQYHZ+7KwKOPZyf9VvEgfbcj06FqXZiHGJqOD7a4m3qW4QTkwabM9D6CEHJixhq4zHcpytd5UP5Yxerweg==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(1800799024)(23010399003)(82310400026)(36860700016)(18002099003)(22082099003)(13003099007)(11063799006)(6133799003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: SH5dA5BnJK0St1MQZIlaIuWWaj7bBpsZFdbs6DTd1ABPgL1ugilBSO0yR4xaFcfxJVeNlpiYl/CecCjnoSo6qzo6i9A4C6n/uS05BMGcu/pG5BkASEGGgB8MYSQDE1uhkJbvWTPENMoGQ7/R6n3wLca1/DCnIm53LyQtZWzJovJRWaYCQIHDaGyV/0v3I3lrkMGLXlOadhxBjJ7UbtYiQ0WJUzsm+bHdt4AreXFgAK2tHNA/8zg3JJqfmi4goJlD1yeGYDqypRrh+WRlzlt1MPZCkhtEewWoxvHRTAU8thuTucQrIpW2s+q1cel4Ez34iZ3rPSaFMQ7oP76KYkWbKUyEtbaWyVl7/Y7zCDh+Pctcs3rIn1QEQOfHT9s20Np1w+xRiuAkCi3AlPGMF/CEKhcFhQ40hAGAFllfCBtPwfH4k9SiHNzh/K/yksJjcLnF
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:35.9473
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 01b9f6d8-47e0-4dc7-b728-08ded9c77d7a
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR06MB9788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052644_443114_DE6E321F 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PBL eMMC loader was hardwired to PIO. Add an opt-in SDMA/ADMA2
    path: a per-loader transfer-mode choice (PIO default / SDMA / ADMA2), route
    the imx8m and imx8mp/imx8mn loaders through shared helper [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [52.101.70.21 listed in list.dnswl.org]
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
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.101.70.21 listed in wl.mailspike.net]
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
X-Rspamd-Queue-Id: 441532026DB
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
	RCVD_IN_DNSWL_NONE(0.00)[52.101.70.21:received];
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
X-Stat-Signature: igkpfkpseso37j9puhmzwmenhts6jfoh

The PBL eMMC loader was hardwired to PIO. Add an opt-in SDMA/ADMA2 path:
a per-loader transfer-mode choice (PIO default / SDMA / ADMA2), route the
imx8m and imx8mp/imx8mn loaders through shared helpers, and retry in PIO if
the DMA attempt fails so a misconfigured board still boots. The PBL has no
mci and runs before BL31, so host.sdhci.version is set by hand and the
ADMA2 descriptor table lives in a static buffer.

On the imx8mp loader the DMA mode is set up before the bootpart EXT_CSD
read so that read also goes through ADMA: a PIO transfer preceding the
first ADMA transfer wedges the uSDHC ADMA engine.

Measured on i.MX8MM (MMU on): load_bl33 241 ms (PIO) -> 28 ms (ADMA2).
SDMA and ADMA2 perform identically (bus-bound); SDMA needs no descriptor
table, so it is the simpler default for boards that just want the speedup.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---

Unlike v1 [1], this runs with the MMU on: the loader already enables the
MMU before the load (warm-cache PIO), and the SDMA/ADMA2 modes select
PBL_HAS_DMA so the transfer gets real dma_map/dma_sync cache maintenance
and stays coherent with the D-cache -- which is the memory-synchronization
the reviewer noted the PBL was missing [2].

[1] https://lists.infradead.org/pipermail/barebox/2026-June/056843.html
[2] https://lists.infradead.org/pipermail/barebox/2026-June/056842.html

Notes:
    v2:
    - Was v1 7/7. Now runs with the MMU on: the SDMA/ADMA2 modes select
      PBL_HAS_DMA so the transfer stays coherent with the D-cache, rather
      than relying on the MMU being off. Folds in the transfer-mode Kconfig.
    - Still retries in PIO if the DMA attempt fails.
    
    - SDMA/ADMA2 now depends on HAS_DMA && MMU so the select PBL_HAS_DMA does
      not bypass its own deps (Copilot).
    - imx8mp loader re-reads the boot partition after falling back to PIO, so
      a failed-DMA EXT_CSD read no longer picks the wrong load offset (Copilot).
    - __esdhc_send_cmd() transfers in PIO when DMA setup left dma==SDHCI_NO_DMA
      (e.g. ADMA table build failed) instead of driving a DMA transfer (Copilot).

 drivers/mci/Kconfig            | 27 ++++++++++
 drivers/mci/imx-esdhc-common.c | 21 ++++++--
 drivers/mci/imx-esdhc-pbl.c    | 91 +++++++++++++++++++++++++++++++---
 3 files changed, 128 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index ebe771216f..d9dc241be9 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -296,6 +296,33 @@ config MCI_IMX_ESDHC_PBL
 	bool
 	select MCI_SDHCI
 
+choice
+	prompt "i.MX8M PBL eMMC loader transfer mode"
+	default MCI_IMX_ESDHC_PBL_PIO
+	depends on MCI_IMX_ESDHC_PBL
+	help
+	  How the i.MX8M PBL reads the next boot stage from eMMC. The MMU is
+	  enabled for the load either way (a warm D-cache makes even PIO fast);
+	  PIO needs no DMA plumbing and is the safe default. SDMA/ADMA2 are
+	  faster still and select PBL_HAS_DMA so their transfers stay coherent
+	  with the D-cache on; on failure the loader falls back to PIO so the
+	  board still boots.
+
+config MCI_IMX_ESDHC_PBL_PIO
+	bool "PIO"
+
+config MCI_IMX_ESDHC_PBL_SDMA
+	bool "SDMA"
+	depends on HAS_DMA && MMU
+	select PBL_HAS_DMA
+
+config MCI_IMX_ESDHC_PBL_ADMA2
+	bool "ADMA2"
+	depends on HAS_DMA && MMU
+	select PBL_HAS_DMA
+
+endchoice
+
 config MCI_ATMEL_PBL
 	bool
 	select MCI_ATMEL
diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index a0c2dee32d..76b0ce3bff 100644
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
@@ -411,7 +419,12 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
-		if (esdhc_use_pio_mode())
+		/*
+		 * dma == SDHCI_NO_DMA means DMA setup failed (e.g. ADMA table
+		 * build); sdhci_setup_data_dma() has already programmed PIO, and
+		 * the command was issued without the DMA bit, so transfer in PIO.
+		 */
+		if (esdhc_use_pio_mode(host) || dma == SDHCI_NO_DMA)
 			ret = sdhci_transfer_data_pio(&host->sdhci, cmd, data);
 		else
 			ret = sdhci_transfer_data_dma(&host->sdhci, cmd, data, dma);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 2402b9aeaf..7ea826fab5 100644
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
@@ -255,6 +261,51 @@ int imx7_esdhc_start_image(int instance)
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
@@ -265,9 +316,10 @@ int imx8m_esdhc_load_image(int instance, void *bl33)
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
@@ -283,21 +335,46 @@ int imx8m_esdhc_load_image(int instance, void *bl33)
  * Return: If image successfully loaded, returns 0.
  * A negative error code is returned when this function fails.
  */
+static int imx8mp_esdhc_try_load(struct fsl_esdhc_host *host, void *bl33)
+{
+	u32 offset = esdhc_bootpart_active(host) ? 0 : SZ_32K;
+
+	return esdhc_load_image(host, MX8M_DDR_CSD1_BASE_ADDR,
+				(ptrdiff_t)bl33, offset, 0, false);
+}
+
 int imx8mp_esdhc_load_image(int instance, void *bl33)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host = { 0 };
-	u32 offset;
 	int ret;
 
 	ret = imx8m_esdhc_init(&host, &data, instance);
 	if (ret)
 		return ret;
 
-	offset = esdhc_bootpart_active(&host)? 0 : SZ_32K;
+	/*
+	 * Set up DMA first so the EXT_CSD read below also goes through ADMA --
+	 * a PIO transfer before the first ADMA transfer wedges the 8MP uSDHC.
+	 */
+	imx8m_esdhc_pbl_setup_dma(&host);
 
-	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				(ptrdiff_t)bl33, offset, 0, false);
+	ret = imx8mp_esdhc_try_load(&host, bl33);
+	if (!ret)
+		return 0;
+
+	/*
+	 * Fall back to PIO so a failed DMA attempt still boots. Re-read the
+	 * boot partition in PIO too, so the load offset is chosen with the same
+	 * transfer mode that does the load.
+	 */
+	if (host.sdhci.flags & (SDHCI_USE_ADMA | SDHCI_USE_SDMA)) {
+		host.sdhci.flags &= ~(SDHCI_USE_ADMA | SDHCI_USE_SDMA);
+		imx8m_esdhc_init(&host, &data, instance);
+		ret = imx8mp_esdhc_try_load(&host, bl33);
+	}
+
+	return ret;
 }
 
 int imx8mn_esdhc_load_image(int instance, void *bl33)
-- 
2.43.0



