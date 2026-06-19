Delivery-date: Fri, 19 Jun 2026 18:10:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wabny-007ePj-0f
	for lore@lore.pengutronix.de;
	Fri, 19 Jun 2026 18:10:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wabnx-0004pR-KG
	for lore@pengutronix.de; Fri, 19 Jun 2026 18:10:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I9/7XncP4sQGCcsg8N750HpXk/UJj53fd3i2wWvP8RQ=; b=HqxojmoUJ/8MVqwBirmd4x9qKi
	u36JDzCwGFVxO1lB/C3pS3cg2oyO1yOTOdCD4JCxkUQ9QlS4zb9fje4orHw1u7a4/CqGIutTODX9s
	w9m2tLxR4ebB2Wp1VN4LYMFcgkHW/RRhnTcr+2uwqDaDZfWwMs5YvgoucIfLors55oe1HLZVKhb+x
	toqyHVPd/xAUMlgAX5zQ5h/mFssHbn38tUStuqunB4Y85NXlOSmn8h2V4bgXxiHzbb6GvF8hW2KWE
	gC7QrxFNPpZMTbN61r5MENXlrLvxIHdyoTGxsPf9qyl8ufwjJ8/mZlq0v8Suxu2QPtKFkIOkhiMsA
	MG/9zKsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabmb-00000002l5r-1Ih0;
	Fri, 19 Jun 2026 16:09:29 +0000
Received: from mail-northeuropeazon11012007.outbound.protection.outlook.com ([52.101.66.7] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabmZ-00000002l4a-1Iw0
	for barebox@lists.infradead.org;
	Fri, 19 Jun 2026 16:09:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WgRE+YdeXcDyFMJn/73UsmHXC3FuR6Ttb/Ox/UOvxWO2C3J+ng36OYnFE5RKlMkdfz6nXj7V5qf+togoBxyAMgCwHlVlXRgYrHnOLS9noBT1EA4jVoZY3zphcdSGvZjxlZHzuZoBgQygO4aJJ0vcJSBEq6tswgy3VktRLo/iLncBqwzN8T+T3ypNdLzbxeWaLsdBotCFlEVrFMTDOOjGXVcBA2+KcxZ2sUONKMTT3zktqiLfXBdOgAggvUzQylPR1gVvIlGbAR69UzaLENwBRvM4DB02duz+pWZdjQwRnsHhsWjWT00p0+ToqiR5+QYm068gpoLbxnquS3VQ9CQKIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I9/7XncP4sQGCcsg8N750HpXk/UJj53fd3i2wWvP8RQ=;
 b=EtBdPSV+10RteYmEYYbhVnRLtskvVEViNHyR45PJrkWoO0f8lsM7g0fMrPTHkhxXwZJ7FsCZ+qbGLO0J4f05tEtHVDjNoYbcKjeg8/tx17XJpSFglUOEoJsslVM+Br7q6EpxKr/NOQKq251MQMuwC4+4g414aLxNoQ7a1bHQ1p3TX4U3eDwvjL78YmddVvjsKb/aZwjbOljsj6u4fL3O7wfsydL5PweCGnbruAURDJoM3PpXqM7kHtUw+rhoeU9RtHpFSKDmSCt3W4wijXbFJkmxKFqy8lqcaQ4futaxuDNEBBMmZr5ZEBW15LhiLcoRNCyPEbiEPdFUXoPcbT9jjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I9/7XncP4sQGCcsg8N750HpXk/UJj53fd3i2wWvP8RQ=;
 b=jXeP9E0irQig26/GO7DGxklQ5ZveEAL/HJiVLYsw5Nsdc7Ih2epntv+u10rhTXQ2iJkVKdShgu/Na2po55Y2vT7wQgDjdZccLwctg0OkNRSqeH/pTJZZONMCvnsKUG7vDQiBZ9MlVE6RiDuM4/tI9yHmGv+SpfzN4Ju1IyQGo4M=
Received: from CWLP265CA0350.GBRP265.PROD.OUTLOOK.COM (2603:10a6:401:5a::26)
 by AS8PR06MB8361.eurprd06.prod.outlook.com (2603:10a6:20b:444::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.13; Fri, 19 Jun
 2026 16:09:20 +0000
Received: from AMS1EPF0000008D.eurprd05.prod.outlook.com
 (2603:10a6:401:5a:cafe::c) by CWLP265CA0350.outlook.office365.com
 (2603:10a6:401:5a::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.13 via Frontend Transport; Fri,
 19 Jun 2026 16:09:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS1EPF0000008D.mail.protection.outlook.com (10.167.242.84) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.8 via Frontend Transport; Fri, 19 Jun 2026 16:09:20 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Fri, 19 Jun 2026 18:09:20 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Fri, 19 Jun 2026 16:09:18 +0000
Message-ID: <20260619160918.88315-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 19 Jun 2026 16:09:20.0162 (UTC) FILETIME=[FC793020:01DD0005]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF0000008D:EE_|AS8PR06MB8361:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 4845ac32-f326-4639-228e-08dece1d1f0d
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|82310400026|23010399003|36860700016|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: vJg8WitcrVe/QhY8R77UPsrKrLp8b6UXYTg5XzIT659592Yb5/AIcLWGFkCGU8gkt062Uaz1LVb/kd6OeOA5VbtYbVYHoNVIILEl25ejDbji7fJaBmufLDBZR0N/nAv/K7FV1A6dxB4ufjZLotZO0uMeEx1AYQLDDM+MDM7x7hYRvS3Bm4f8iQouNgQSillnAhBwbWwwV72uhDRMQVyGDk17bAxx2ACpynHB+cpyEuOFo6T9tH4ituSYi62mZg07uTSjEUyfkG+04MCRjPkRvVAGbI6lqNX4dFf571/X4Jv6BfZi9oprGyE7Xmqu/fQn61AgrPyr9cTHEfOMOzifMgvBH4vqne1tfEnFs1m9q4XOwVXtFHwrZqcwRCFZ8M3/4u+CkCfaPzHDaAArTUVz2yhVLkXx0PLjNXMpHnxaj+Oln9tpACUkWdGq5pU4tC+RPNHzrHpV9Llc6BAkLlNLItn7THDuFWUWt1BwY11Bxm3svAoB3ERDU1opU+mZgIVXj1JQmdrGLm87uyEwp5WNBxnleCizzeutb7KywefEU/ACeBt1LELWjb9Rdya2acpAXIgEdUlPWcQ4AOsXudPfyMiz+b+T1/BaimpzSSDHQX2Xh6UeZx3bHQJH1bO901XbKvy7bUd6Rm0bqEkgtIjNsfSOwFM6ldMy2gAoIKYoPUJFDpXuKNNQQMSdzAxbjFtEbl1REjjuTtKZBrLrBQ5ycg==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(82310400026)(23010399003)(36860700016)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: bo3+woJVwex2ac8XdGGPsP5qAHJE2n3A7hYdM9od4oY1JhR+kTVBye0Z60oCTncoLcNjeQ/5HjwhvjDrNB7atHzWFhsaGiq+cubldJdoQh1/qW7OPJzp5DOpDxlVNx+RiTV6rLS/yfUTvHn40P95dB6J4Ja9BE+eBhfxY44cA7bo2nxss77Hn9yK3zDnLtHHZnKhlEBdEuIPKecZ3/VeHLnhU9vbcLr7sSA2GX7b2X751O2QB/vwwNS1OWMlf410EwdWH6PdfFZ9O5XG4XhzYt0p0C2Y+43m28uQ8rFsr1W0ybIvI/3kQkxoshARmce/iLhVWLKPv/idasUoTcKbOYtMRTqvEiLqkpNSjDEEqa2IkozyYcPz+Lu0kQBoYV5bCxQkuPeymXd1Hu2r9ibi44cN4QKMbB4QbuQB+n6+6+njb/ah880cqO3965AC4DLX
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2026 16:09:20.3152
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4845ac32-f326-4639-228e-08dece1d1f0d
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS1EPF0000008D.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR06MB8361
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_090927_349785_B03B9510 
X-CRM114-Status: UNSURE (   7.87  )
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
Subject: [PATCH 212/212] dma: make dma_mapping_error NULL-device safe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PBL callers often pass NULL as dev; NULL deref of dev->dma_mask
reads i.MX8M boot ROM and returns junk byte causing false 'mapping
error'. Treat NULL dev as 'no constraint'.

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 include/dma.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/include/dma.h b/include/dma.h
index b8016c2e89..60937a69aa 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -69,8 +69,11 @@ static inline void dma_set_mask(struct device *dev, u64 dma_mask)
 
 static inline int dma_mapping_error(struct device *dev, dma_addr_t dma_addr)
 {
-	return dma_addr == DMA_ERROR_CODE ||
-		(dev->dma_mask && dma_addr > dev->dma_mask);
+	if (dma_addr == DMA_ERROR_CODE)
+		return 1;
+	if (!dev)
+		return 0;
+	return dev->dma_mask && dma_addr > dev->dma_mask;
 }
 
 static inline dma_addr_t cpu_to_dma(struct device *dev, void *cpu_addr)
-- 
2.43.0



