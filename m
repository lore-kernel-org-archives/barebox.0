Delivery-date: Thu, 04 Jun 2026 07:42:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV0qc-002AqX-2P
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 07:42:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV0qb-0006jx-SZ
	for lore@pengutronix.de; Thu, 04 Jun 2026 07:42:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B3HVI8Wflsixxu7Un2yxTTNwUwDLt45JPbBAdIn9v0w=; b=jl4OYp+tTl1Z6vGqlsq9pIkWe3
	vuSC/GUio1Hbjiq+SGTv85jVeIdP8oscLjCe9yeSvIArK0F+C2pdKXQdRQVagIMqdqZ4KDLSiGJHt
	8o0Yh2r8C6A0OuNgBjQZpZr4ui9b0nQBes5WJxRSxRgb4S1HGL0wfF8b65/HymVTussm3VQlfAho9
	ChRt68vVRdvV6fZ0AAvNxQGJOOLvE2CbVhSFcUv/+c7MhmzckA8TWRvAKv65KBIvFmbckPo6/c+Av
	A8OdCw5oHqRw0i1CsTLLXFMMvLAFeTlZRfcfscEqzqbC3tG3hf6GsgIbu7uaUBbxy/QZkzRl9Q/2F
	mEviNLTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV0pA-0000000GBYk-011D;
	Thu, 04 Jun 2026 05:41:00 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV0p6-0000000GBX5-46zR
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 05:40:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OMoTlC4E9D1R1p4tv24aiWhJKBMPx3bpnYM/R6Xy+fP8E7JyFNgjyEb7mJJdMAveiF47purEZr85nNxcynk/d2UYk67XMuCuU+3MSIwkPblFQV3ZT4+YKZoVMCz+R9QtSQbg5cmIzHEumdWKkQ/Uz/879a7RnGNJsvQxL7WF4y2UKmI5FEnsUYIFsPCLA1tErAnNliD0qAl0L5GDiLPaG86cJ2YqpoUUC0wmQQ/JsyrpyGdyw0ogtyHjAUHOYRVC838pp+GjaUxzKDRFN0pOeARB0Nm+LR+HmbADAA/VEzYITwLNWsZVFf0YQMyxOKDZyQbaW6XpT9CLtzakWM4l5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3HVI8Wflsixxu7Un2yxTTNwUwDLt45JPbBAdIn9v0w=;
 b=ZIB/qRVZEY1Me6uMmBqnoBkfCOMyKC7pxL5wvMfT50PL9dDLcAHxzlorcayEuci4YEE5cf33bhB2bu+FDHZZTosJa0NEaPVdVqptNrmpND1GB7zVifJDmupO/JO+nKEEOc0wroxpqZj5htdhc5zvV6otSeCht1KzWKz3kPZs5Rli4OJVMmI6j2b8ZicZN1b0Co/MaNZmF1VlR8B1Ir3BvmBebIpdEodFS+F2uyD9mXUCLa9D7ujl9EW+TXKG2jDd9IYhzFUcqcTMOMBgphvx1LghHYutnJciB1FA2Eppi4EIFE7F/ssS14Y57BweknMq8U1fA8vLq8df4D1OrmZ6+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B3HVI8Wflsixxu7Un2yxTTNwUwDLt45JPbBAdIn9v0w=;
 b=gj9S//QjzZD8CO+5c/llAoV4unZHYHEAaSym6pYDJlFEO+VL8ZAWmym26lJklwea/zDZgXUhStGBSTet01XrFb2e91p+mecJLjZwZoAPYol8LiYIo0OvS4DZ5EMmVbvV4mK4tyvb1Ab1nLgrbmomKeRttWZ89h7X+ZtUKW3KidA=
Received: from DU6P191CA0011.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:540::25)
 by AM9PR06MB8299.eurprd06.prod.outlook.com (2603:10a6:20b:436::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 05:40:49 +0000
Received: from DB1PEPF0003922D.eurprd03.prod.outlook.com
 (2603:10a6:10:540:cafe::60) by DU6P191CA0011.outlook.office365.com
 (2603:10a6:10:540::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.8 via Frontend Transport; Thu, 4
 Jun 2026 05:40:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF0003922D.mail.protection.outlook.com (10.167.8.100) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Thu, 4 Jun 2026 05:40:48 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 4 Jun 2026 07:40:48 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Thu,  4 Jun 2026 05:40:47 +0000
Message-ID: <20260604054047.2624155-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 05:40:48.0141 (UTC) FILETIME=[B22933D0:01DCF3E4]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF0003922D:EE_|AM9PR06MB8299:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 2748fcc6-743a-4c9a-1257-08dec1fbd4df
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700016|82310400026|376014|11063799006|56012099006|18002099003;
X-Microsoft-Antispam-Message-Info: QA9JBtZOzORNf/e32TVNBSUQNkwJSCyOCPJCPSy3b4I993SJejF8DMOhNyvVZXeCv7TZQ5A/j7hKFqBdD2TkZzH6sBtr2Driqy8o3rcHu/J4Lg6PZRNaMfnjEVNNlPZJZjHbrk6/8cMTDwmSJQF1nLQ/VW2iP49JgjeEkxW0pNb5ilcD/K2Idw2JYW3G5JT4lD1VXvWWDo9zaRPHiAfuEeMI86HD2zEk/1dB8Jo8TLqj7pcFk1w4t2JWGvpNQTzixYouAd36aIOyuScW+8x1Y2EQTtissazObwu3rIfZFYflNSeBfWCqDJW79OzVZFw/3xHlSvtnzEJUlFkAsNH8m3z8xxzBOlxu41x8mLsnaz2owdZyMp7qNdRghsHT0yDOXCxnafZnS9k4zYibjaJ1GsH9ijccFB4+3AkdiTH0+Gg4XNGW+VdiNxiJ4ZF+oFaJ/i7bmOVZItcJMS/h1XK8codwJEAGZ/FLHRHdZxGuMONrxp/INfmDDNlgbVAqYX4gUJfy/oj0QHVd/3URWOZWMMS6vkzk338dJGs/7qbjdATx+lNf8fC7Eofr1MM8e6CH/rQc05+wScp8LWEdfzcZsEqXWZ1iodEkesw4F2ANER9zsbVDWo1PdcbEOaWLqvqkujKAd7I5NsAENur6QvuEn/ErG7vUfXxy3KyxIwXZ9sYvSX0uA6QqeZLPb5pwDohxgy9KFxwP3cF3luzu0Y1hmJvwkZxqcjMrTvhqVThd4Tw=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(82310400026)(376014)(11063799006)(56012099006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: v9P8RjTY1LKNll1EFLwuwJrFv9v7IYZkWYkQ/74hrjHco3IHg2qC+9trZIDCijLVJOfzfKheaaHxBVudAwzhJ8OiBypaMF2A/T0Se0OXFBPSOR3WLuWNDcFFdFM20o/+Bo7aXZTkwMojSebuO5ENDz15aqL4b2w7Dk/sB/PRn5T5+3u4QijUh4HcLgeht0W8tqpV2sc4Pqa4IHtJmAtuoXVMTSz44n/hvLNBfCwg78JMYlsF2ruiA5Je75NJov8QkPL8/3Gg1MNOt2KTz7vw/qWLNbOR1h0w6jONXaivH9bfbmwoj2rrw/KzyfKbud47FBQzq7kakJp7dvNGsMeWkclQvEBalNN4ypdM7zoqn77jqjTN7AQN2CvsP1cUJx3s2jV0UMRq0NrzJ3S2OzZzOV1rpFmuSVdY6cdnGXTSqxmKCFEIMBPNAGqld1oJ/Y5/
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 05:40:48.4890
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2748fcc6-743a-4c9a-1257-08dec1fbd4df
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF0003922D.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR06MB8299
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_224057_404598_0FD667B5 
X-CRM114-Status: GOOD (  12.70  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] lib: gui: png_pico: fix use-after-free and double-free in png_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

png_open() set img->data from png_info->image->data and then called
png_alloc_free_all(), which freed every buffer the picopng allocator
tracks -- including the decoded pixel buffer.  Callers held a
dangling img->data, and the later png_close() free()'d it again.

Add png_alloc_detach() to drop a tracked address from the allocator
without freeing it, transferring ownership to the caller, and use it
in png_open() before png_alloc_free_all() runs.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 lib/gui/picopng.c  | 13 ++++++++++++-
 lib/gui/picopng.h  |  7 +++++++
 lib/gui/png_pico.c |  8 +++++++-
 3 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/lib/gui/picopng.c b/lib/gui/picopng.c
index 80f03beb68..ae733fde0f 100644
--- a/lib/gui/picopng.c
+++ b/lib/gui/picopng.c
@@ -103,7 +103,7 @@ static void png_alloc_free(void *addr)
 	free(addr);
 }
 
-void png_alloc_free_all()
+void png_alloc_free_all(void)
 {
 	while (png_alloc_tail) {
 		void *addr = png_alloc_tail->addr;
@@ -112,6 +112,17 @@ void png_alloc_free_all()
 	}
 }
 
+void *png_alloc_detach(void *addr)
+{
+	png_alloc_node_t *node = png_alloc_find_node(addr);
+
+	if (!node)
+		return NULL;
+
+	png_alloc_remove_node(node);
+	return addr;
+}
+
 /*************************************************************************************************/
 
 __maybe_unused static void vector32_cleanup(vector32_t *p)
diff --git a/lib/gui/picopng.h b/lib/gui/picopng.h
index a17dd14b0c..bad5f4c6c4 100644
--- a/lib/gui/picopng.h
+++ b/lib/gui/picopng.h
@@ -28,6 +28,13 @@ typedef struct {
 PNG_info_t *PNG_decode(const uint8_t *in, uint32_t size);
 void png_alloc_free_all(void);
 
+/*
+ * Remove @addr from the picopng allocator's bookkeeping without freeing it,
+ * transferring ownership of the buffer to the caller (who must free() it).
+ * Returns @addr on success or NULL if @addr was not tracked.
+ */
+void *png_alloc_detach(void *addr);
+
 unsigned picopng_zlib_decompress(unsigned char* out, size_t outsize,
 				 const unsigned char* in, size_t insize);
 
diff --git a/lib/gui/png_pico.c b/lib/gui/png_pico.c
index 029fee2a40..bf6eddb74b 100644
--- a/lib/gui/png_pico.c
+++ b/lib/gui/png_pico.c
@@ -67,7 +67,13 @@ struct image *png_open(char *inbuf, int insize)
 	img->width = png_info->width;
 	img->height = png_info->height;
 	img->bits_per_pixel = 4 << 3;
-	img->data = png_info->image->data;
+
+	/* detach so png_alloc_free_all() below leaves the pixel buffer alive */
+	img->data = png_alloc_detach(png_info->image->data);
+	if (!img->data) {
+		ret = -EINVAL;
+		goto err;
+	}
 
 	pr_debug("png: %d x %d data@0x%p\n", img->width, img->height, img->data);
 

base-commit: 651343da8af78d134d7ead4d2b36095d7ddc2d8f
-- 
2.43.0



