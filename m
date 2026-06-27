Delivery-date: Sat, 27 Jun 2026 21:45:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYxc-00AX1J-1d
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 21:45:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYxb-0003gz-TE
	for lore@pengutronix.de; Sat, 27 Jun 2026 21:45:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oUStUn9cpC1k5NKTu5gKZ8iUbzhqqfCiK7FXn/d1pq0=; b=tfhyn2hzQ8ahjZ8hjRLXaSIWyE
	E8xWmGCh0MGdJmbPyeg3TSQCMrMXfbICQk29wfIYzv6D2w9ifKXOUVHC5DaJ4eBBtQS4GDXaLzcAz
	0fgztsKe0LTZMKO6wKNvN9Qj9ZKpiKpPrBKblVmVc5PFljVBeIfqmtUPq5K7EByBJjZjsfrdGYGBz
	6Ce3vOmZdjGfBLc0Mx+HTyhmXk913ggkvke/YArdoO0LEgryfD78pIXmETyFs2SZMi6t4qjjrqZSq
	QCcGvMivDFYLIxJiPHig5afT7viz7ZCjphPklZ/K0FozrYBQpmgJL5CyG3U612OEGbPgXpZtiSxPA
	nk60enmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwE-0000000CjCN-0C8p;
	Sat, 27 Jun 2026 19:43:38 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwA-0000000CjAm-3W7l
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 19:43:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LGnR6bx/xSC8sQDUmDtBPHcj/+KSnBF03KPROVD+pCG4kRuiYtCyO6uUALXGqIYh3iL4deS2d+URho7MgzwHYrVIFRS5chEzEUlkAOJftPdGS4rlXHd1C+/p9VyjDfYOIYDzE+3dNbY+f6fWZCo2dt2166nsNL9SRToQlDYiBM8NfBCmkVy+piimAfhSArMT0V512ZcFAXjSfMqOsHh3LI7AFBBROBvc51JtC5s1YhwxYgO0T8/TRD/S7CWkBUYWDXNcA2nlQjQkKNkUqxbV+ZuipxIx29EOCS40xdRkE7Mmre6nMXo8FVroEBm5YBHYm1OV9gxuRJeE62QOUxQO6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oUStUn9cpC1k5NKTu5gKZ8iUbzhqqfCiK7FXn/d1pq0=;
 b=CbfrIRFU6ZGlMw6xZExGI7wjJdaCLELHj4es/M42tTATZ/EhcgN7yd3ImEAUFyzy9/xUec8yf902ExwG/pTzXDi7x9nh6qHhugpKLnRRWsBZlEEV3Jb/KPsWtpUlexmAYkjMqFPEDC3EQGb+k8xtev8ouBHHdTnlcXsQkq8YnRpdvWgQ3l8COzXRVcjHyh4FmvZdDzNReVrtIVA2TiD1VEdvORE1mi8k5Oifsz9P9PJPo6DN6VmI32JM3xT2nVRiNx7Nx0yYZkersdsNiVXiZKjN56Od81PkwUKPWlMaHCEvTmuACjBlaw50YgP6vvChxsBUubWYhHC5BMdCUo63Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oUStUn9cpC1k5NKTu5gKZ8iUbzhqqfCiK7FXn/d1pq0=;
 b=WnfcE4jQ/Vxk+NzT3bgfgq5HjdeYNIzaAvBqjBIrHnvCQRqXHQXjKJpyxCUXd6UNZybtmze9u9Z0YTojcXmt2AA+lXVkkU1+c+BW7N+mjDAQHVzqgnVPMMmH2itixj+YpnqBEskG1O6CuHXgmgN+1W3NMAykXgGnchmP98EUgBY=
Received: from DB8PR04CA0012.eurprd04.prod.outlook.com (2603:10a6:10:110::22)
 by PA2PR06MB9637.eurprd06.prod.outlook.com (2603:10a6:102:417::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Sat, 27 Jun
 2026 19:43:27 +0000
Received: from DB1PEPF000509FE.eurprd03.prod.outlook.com
 (2603:10a6:10:110:cafe::65) by DB8PR04CA0012.outlook.office365.com
 (2603:10a6:10:110::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.18 via Frontend Transport; Sat,
 27 Jun 2026 19:43:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509FE.mail.protection.outlook.com (10.167.242.40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 27 Jun 2026 19:43:26 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 27 Jun 2026 21:43:27 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Sat, 27 Jun 2026 19:43:18 +0000
Message-ID: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Jun 2026 19:43:27.0298 (UTC) FILETIME=[39449220:01DD066D]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FE:EE_|PA2PR06MB9637:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 9612ae42-7cb5-4deb-206b-08ded4845b7c
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|36860700016|82310400026|23010399003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: ilJZH7uU+kEdUDugarWeHMzmxUCQyNWIX+uSeNeI+g1VjooI+nRjyMH9ORsf+5Ttnzi8q0NgmGprF6zW4sP50V2KWygBCk7rR88n0Z+g5w7J4k6vVuLczW4kqoYlGn4qmf6HsvYGD7K6/6myF34hKPVeOfjwhC9uuEPcbvjw9NfY2hJkpzSawa5FsdgtY5zjjjr9KNVnRkLmH94xtgH0BODVXc8B600JNnUwoDeQdmSjLWX6mixyuemwoaTbYLZcB7bZySaGyi9w9C2Zs0D/PSjueQkg8xBqNd22FKO3rmq3uQ7nVVr72C6w4YhU+tVeMmqzYFycN0SA8ol7BikMnCDzdyIX9vP9DMDYbCuyyxQoiHy82Aj30t1Vq2lUAx92QBriPta3DQ7CDYbVURhCwOUjeezDkxRx6LGE1LcUoieHVGZ0NE/ZqkspSc9w0ifbNFCJdtNMhDW4O8hTnjt86MJ67AFBAMOX5MoQxalXiM2q1NRq641jZzivCdvcH1RaEwT9prBg6Q+bzzvXfQau74saIkEbIXaVdH+PF4k5c20IB+mvYIAmV/LNEx4yf4d1i8q8kmk+yHVxmVCkhR8eS1Hxiu3hAf1BPVjYt3vFc1/snHNUA9l0njcLR/BUorGif2EDRn3vvWPg5rEkXcB/vmGWcWTxcUYFtNcWSdZfqvIoXZ32F4gp6dvzAl4SGVsV
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700016)(82310400026)(23010399003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: FKh7r7ltYkbSNKjDbly3wmNmRUF20/86V+9ao3lAAEXC3gApbZXd821z2N+pEACEeZ4c4FroZHW97gsiBLWNf/U+IEI4xyLBdYfPtVC0hx2CW6jsjdDchO6ZvL7x5i5pTva8DINSFX9gs+7tpuUnowkvcdPhpCtmXwO29rwz+nhvl7nkBW+jMsdZliB3k9MWyRpBQ5PifnXJMb2Q8osjpCr0zGWcr0awtngwH+IEPgUEk51fA4unuaGF47QIxtKBUluA1AdEmzek2uzy49d6EFST7k2Cn9OecJBhCyi56nfsAN/3LN5UZb03q4W4xwSpYVoDMK+j7OYYkwg6ULwaqsFF69DesoCwgiiusSCY8uaiTHOrkLYG/wiCOJKYNvz4TVh0ABemj9sFdV4FVu7pc6NaYxAXttNWTWa4ODJRzG4EjOVxYRqLqLm0P98tgwLW
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2026 19:43:26.8177
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9612ae42-7cb5-4deb-206b-08ded4845b7c
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FE.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR06MB9637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_124335_056525_76ABE618 
X-CRM114-Status: UNSURE (   8.79  )
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
Subject: [PATCH v1 1/7] dma: make dma_mapping_error() NULL-safe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dma_mapping_error() dereferenced dev->dma_mask unconditionally, while the
neighbouring cpu_to_dma()/dma_to_cpu() helpers already guard with 'dev &&'.
Callers with no device (e.g. the PBL SDHCI layer, which has no mci/device
yet) thus dereferenced a NULL pointer. Guard the dereference.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 include/dma.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dma.h b/include/dma.h
index b8016c2e89..8f8ac78cdc 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -70,7 +70,7 @@ static inline void dma_set_mask(struct device *dev, u64 dma_mask)
 static inline int dma_mapping_error(struct device *dev, dma_addr_t dma_addr)
 {
 	return dma_addr == DMA_ERROR_CODE ||
-		(dev->dma_mask && dma_addr > dev->dma_mask);
+		(dev && dev->dma_mask && dma_addr > dev->dma_mask);
 }
 
 static inline dma_addr_t cpu_to_dma(struct device *dev, void *cpu_addr)

base-commit: da91ab6cb505fb09415bf8df3fae552e7b37c5e1
-- 
2.43.0



