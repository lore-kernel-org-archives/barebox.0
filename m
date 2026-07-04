Delivery-date: Sat, 04 Jul 2026 14:28:02 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzTW-000C1X-0H
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:28:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 95A822026DB
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:28:01 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xE884DuD;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=hgQVJvfT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sr+7Ayn+RnVTbG9nAcv4TMmCrXzDL59I35NgpE0lpNc=; b=xE884DuDMwAkTOnx5Fp5cc8DIf
	H2/a9DTG6esP+t2oQDcl0UkpMe/7zbAcUqRwBidduBNhBtXnezXXAqpQqpjBsXJ2xGBoroJf7aRT7
	qIQVqIhxGJ61T55ue9uHrGkjsOMPHdxXsZxd9fnLAQkUKmTMsqO0/KcCMu9v5luEvKBEX3qN+eEjT
	ia8sbOSJ03ooW/tnAXVX/DuB5cxltOXVwoS+JOe6bcGsJI2S5HcucKKXJPHS0l2L2ddlA4qTKqEvj
	kbkVPmYoW/W8qrbQ8NR0C5NZJd7dI9wjy90C2p/OUmCGrgEYmd/Zim3uzrJtghr3SGf0VBDBrAePr
	R39LRkVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSI-00000008Q3N-0lfY;
	Sat, 04 Jul 2026 12:26:46 +0000
Received: from mail-westeuropeazon11011064.outbound.protection.outlook.com ([52.101.70.64] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSE-00000008Pxa-0EJw
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PXxBE1U2zGWGcaBqSTL5f6EE71ggeKFNAa4PakzuNHZ/gzNwoEdPAr7QmPaVbKgqQclN1SC1afJbrewgySwG9nJbD2TQNyfLBbJ+gMuv7cecfEjxMeODI0M8MWs2Wbb69vXdCQzlKXSReQZPvLjy1y1PdFcBIPl63WlA+qdgyFpaXRaSGSYcOVFl+A4RncvdpnqbO6fUdAgEomLa4Kd7qQRLQpTO0xkQZhRzXe9FLHz3lAuqGV4DUaI9a7Xs09xE9zr8wb9rEaaU0UZILVEbybJABCJiR8BFT3BfB1Slz6EzqOpOP1D2mwgqR0KFJ0ksnZ4zoWLuU6sNUDFlMbLmvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sr+7Ayn+RnVTbG9nAcv4TMmCrXzDL59I35NgpE0lpNc=;
 b=yJvKTXDvDsWHmDQ7Zs16NJU/gpFJragADrQucSK7Hk1uYlj96xsOLA+UdYe3mTVeIW4HKQMDjKlsCZw/NnkCP4ZWg0iLa6wF+gYSc2fzudaTuqn96ptJfvUTNsj5lI6Plk62P0QSRxskrPDj1VRV5YdR8/lRP+va+OHcXYh0Cy/9cJSTWxBOP99bR5xvN8eH/CGTCxVmcyXgN2QuR0aznFDUe0J6Y214ci9wa2b+wMc9nRlFNAw+gKqB/I5UBH13W+WsesvkihPFc+VbiXP1k07UFJdm9FgKjTZYtDhhsk3z3sdZJchkhr5tt5RuefVjj9IFxf6l5mcCmYWxhVdsLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sr+7Ayn+RnVTbG9nAcv4TMmCrXzDL59I35NgpE0lpNc=;
 b=hgQVJvfTl/do6KamRMRZCen9RLSsDcKSzpryw6MV4oVcX5NQ9fGaET4LHcr3VpDPtZH3iGkV3cf6DJSc8NF4lkYWWG1jdATPmVgWCRHwFwDM07uho8sLYjYv7JVQLV5zXRHjALA9d7a9LQesiytvfmZuu0cDS8AFkVRHwF7mDEg=
Received: from DU2P250CA0005.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::10)
 by DBAPR06MB6949.eurprd06.prod.outlook.com (2603:10a6:10:1a5::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.12; Sat, 4 Jul
 2026 12:26:35 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::95) by DU2P250CA0005.outlook.office365.com
 (2603:10a6:10:231::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:35 +0000
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
Subject: [PATCH v2 10/11] mci: sdhci: honour dma_map/dma_sync in the PBL
Date: Sat,  4 Jul 2026 12:26:27 +0000
Message-ID: <20260704122628.3326142-11-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0416 (UTC) FILETIME=[57AE1900:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|DBAPR06MB6949:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ffed784b-1c9b-4499-de81-08ded9c77d47
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|36860700016|1800799024|23010399003|82310400026|56012099006|22082099003|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: oZwOGIJHUrvzMDUj4PCG9zE70PqUK8qe11SNT80dqaqYxibhHCVOZ+XJCfTqb1g+TkQs/TbrpM0afC4rjqN5dHbWhEd/wWDPjqs5P6gW5Brngo5Lgtgif3f+OOn00YQC26VQPougukR51k0iEjG0WBE735kHRhFlW9yyjiN51kNiCe7T42oARqDr80mfsRJukuu7iKJLzkqI7lPBDdZoWDRO2yl5Y/T39efyIwTgVPVSM43A8V4mBxUwFq7NBVu4lnv0p21GIb8KEsrvBfjhLvQEZFEIKKu2La7MYuYoACF5Ex85Hn6rQR3UuZYx66L599r2sXVoxxvUJoGuiKBhZeBhUfj+/lY7PPOZ1782syMfKz4qIXLneLa3otHNt5DWj04d0im7EtoQKqBYiAUci199v+EpO4lLi+7QWoYU7sS5GhAf6+z39L7jdAMuzICNnMfrfy1bPUnSQ6/PxboAQStoWs0fQ8ePACgch7b4nkfx43I8fY9mhmkWM7zaiLF3W/Qr52T79XaLP79yu4fiOJuk1yV4Q2BilE5ZwZCEk3LrLEWiBlFQgb54oRevB4kvUlQxzSezw7FYi/9hEXi/Vm1B0k9VawtxYJz9GGVwzo47Jy5kiCKy8E4GmFchT17UYC5HVlcbgWXPoAFQNKytuehORawSDEhBGlMoN0d4PVmke714sdPOnBRLDmc2/WsH0uFqfv89L6QjhNbKQ0YhZA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(36860700016)(1800799024)(23010399003)(82310400026)(56012099006)(22082099003)(18002099003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: HCCJUoOwqFvfzTPrLLg+eEtXjg1SOSZcUR1peQPTtqQuHcsLjb7oZlAVfUWLXlv/R8ey/gJ+6iY/eAR+xm4CqZZi0y2UvsdTG4pYR3ohf6j6YPJmCricsxIFwRS2SpJepEkxGhVSwsEG57mBrIQW3t5oq+UjmS0Jaa+kIj3bzm1V6jeBPkTdH1b9SgN1+H17sPtxgP51O4NQVzsGHvTcQzNMNJezXzQCkDFwjEkygn+MU93Cmkrw/UuiEaC5EDwJg+UEsbMhfo3TpBthrggm+daMYozrmzztdi7TPqfNjKwGz7F0awOEqxhfNhOOYYnS9+wcFB9iexCbXen0p/CkW9zWsUwlSWlnQ498uCNkg6V46FOyG+MJD8982YgqnQbYT4R1kHGpCVcLSIPv5LP3wEXT9A0VGRE34EoMiDJWVe6Hh+LqZ01GFJhWpaZtHNzM
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:35.6146
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ffed784b-1c9b-4499-de81-08ded9c77d47
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR06MB6949
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052642_142660_4D3EDCC3 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The SDHCI DMA path already funnels through dma_map_single()
    (invalidate the destination before a read) and dma_unmap_single() (invalidate
    it again afterwards), but two things kept that from working in [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [52.101.70.64 listed in list.dnswl.org]
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
                             [52.101.70.64 listed in wl.mailspike.net]
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
X-Rspamd-Queue-Id: 95A822026DB
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
	RCVD_IN_DNSWL_NONE(0.00)[52.101.70.64:received];
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
X-Stat-Signature: j6uejdx7xhoqs14se8tyqfipg74d8c6i

The SDHCI DMA path already funnels through dma_map_single() (invalidate
the destination before a read) and dma_unmap_single() (invalidate it
again afterwards), but two things kept that from working in the PBL:

  - sdhci_teardown_data() short-circuited on IN_PBL, so the post-transfer
    invalidate never ran. Drop the IN_PBL guard; with CONFIG_PBL_HAS_DMA
    dma_unmap_single() now does the cache maintenance, and without it the
    call is a no-op stub, so a plain PBL is unaffected.

  - the ADMA2 descriptor table in the PBL is a plain buffer (cacheable
    once the MMU is on) rather than the dma_alloc_coherent() region used
    in barebox proper, so the CPU-written descriptors could sit in the
    D-cache while the engine reads stale DRAM. Clean the table out to
    memory right after building it. Guarded by IN_PBL (proper keeps its
    coherent table) and a no-op without CONFIG_PBL_HAS_DMA.

Together with CONFIG_PBL_HAS_DMA this makes SDMA and ADMA2 transfers
coherent in the PBL with the MMU on. No functional change for barebox
proper or for a PBL built without PBL_HAS_DMA.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

---

Notes:
    v2:
    - New patch. Wire the SDHCI PBL transfer path to the new PBL DMA API
      (post-transfer invalidate + ADMA descriptor-table flush).

 drivers/mci/sdhci.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 8ed8a59342..8108e0b54f 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -732,6 +732,12 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			return;
 		}
 		sdhci_set_adma_addr(sdhci, sdhci->adma_addr);
+
+		/* PBL descriptor table is cacheable; flush it before the engine reads it. */
+		if (IN_PBL)
+			dma_sync_single_for_device(dev, sdhci->adma_addr,
+						   sdhci->adma_table_sz,
+						   DMA_TO_DEVICE);
 	} else {
 		sdhci_set_sdma_addr(sdhci, *dma);
 	}
@@ -743,7 +749,7 @@ void sdhci_teardown_data(struct sdhci *sdhci,
 	struct device *dev = sdhci_dev(sdhci);
 	unsigned nbytes;
 
-	if (IN_PBL || !data || dma_mapping_error(dev, dma))
+	if (!data || dma_mapping_error(dev, dma))
 		return;
 
 	nbytes = data->blocks * data->blocksize;
-- 
2.43.0



