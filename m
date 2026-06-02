Delivery-date: Tue, 02 Jun 2026 04:26:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUEpX-001Qtd-15
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 04:26:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUEpW-0008Ic-Gh
	for lore@pengutronix.de; Tue, 02 Jun 2026 04:26:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PXWAPKrKPqT/6I5YtqlPWMXs0nKLVM/EYBGBXlVyiC4=; b=zhD8GYOXwhj7DPdL9JKRkMYGZ2
	r/6ZreVhORQW4Keqchj52zm5uqYB9Bh7/ugwMITpAJAwOzPV29TcLnLTE2eurrNXTr19NDzj1Rk6t
	lGA0zl4fdvItyTwrMPtcB3zDNU+BIAoywLgqZTWPs9VgO+60XfcYQA98+IDrwlc70uJ6xSMScNEJN
	vFX8lqm1v8s2e1iU+/L0n3z75YRBMT3LCc87U44NSlskhnnLzShOAMNp7aFcO8KwrOF4VVTbJ8+S5
	tg6KXMe2EEMaXmEd4AR0PqTO762Y/xeTPplNGbkNE2/z8gtaRCxB39QeBp94TM8vZHBOuyYBm8pEl
	yiMFBgqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUEnp-0000000CBGn-0Q4N;
	Tue, 02 Jun 2026 02:24:25 +0000
Received: from mail-northeuropeazon11011036.outbound.protection.outlook.com ([52.101.65.36] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUEnm-0000000CBGC-0aTf
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 02:24:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fiJTrnlbjmUCQn8iyA1vR4lA8NLQJCnOR1lGaLYIMuoWmkLEfV0Vu+hZdbJgT0t81FJSdx2e48iy4t+auU1Zxgv5jjJqSkDGgcXzo7n0CCb4NMVNPK4wgfN5+nKJGa+/7XDe2rrfpuFy5nfMbt5NUucY5ftxmwx1OzRieP6LoY2WYwQ/Po+hkK/wvUJm599MJnrkcXqeHqNf1evdGc/J2wc7eCxWVgDsuecJOsqfrKJUQwn/R4Y1dO1MCe6aPGoAcAqzmUo+C4xQwC01nFmZdm6Ch6ZTFJL3kuhcmFtRBwoEQU9zNY28JLnPtCSO9f5bZmEZohSyO2k5xm9/wTshpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PXWAPKrKPqT/6I5YtqlPWMXs0nKLVM/EYBGBXlVyiC4=;
 b=QtUWvve0DghIEyn7+PzhpAqFevZe/8WRXkMo0SWDoqZrdspT4vyK5GrFwPQVEgsUiCVfnMq9N43BpCopagMelI6NnVmMM2Za8QMFlbVh8RB/vZ4qLcX5D7sEc/WRJxc3NEJadNYHeoE6R4tSKzi7awIFOabtaPrk0dod87xgFjDHLLzIBq84EharOzji5Sb83g+kvgKlsfjck4avXYOlmHp/G5iEb/ZFFfzUZ3l1HSBRBifUiDsYYHvZZWCWwmf4ldRDBrBUUx3FK36RWhOIRHjqA+V7V1gtCAVHq2nUbBSx+jHUaDDnQQn3jNBtf82WnkhJG9IykOvyAK/cnErVRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PXWAPKrKPqT/6I5YtqlPWMXs0nKLVM/EYBGBXlVyiC4=;
 b=uz6YnLf1HCyyMlIOXPNDxNimC0GpwTSZJ+DsdS9O10gwDqCN2XIAh0edm/Vb8O2wSf76PWudikoAPEQKx8kZTtrhEwYrh1hfoQFaYuJmesCsR3yOvOmAWj81yrp67dqq3sbH1kXrzAXGNX08TF2GCqUTq09mvaPa1pSob/793L4=
Received: from AS4P190CA0010.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:5de::20)
 by DB9PR06MB8220.eurprd06.prod.outlook.com (2603:10a6:10:295::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 02:24:15 +0000
Received: from AMS1EPF0000008E.eurprd05.prod.outlook.com
 (2603:10a6:20b:5de:cafe::53) by AS4P190CA0010.outlook.office365.com
 (2603:10a6:20b:5de::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.71.17 via Frontend Transport; Tue, 2
 Jun 2026 02:24:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS1EPF0000008E.mail.protection.outlook.com (10.167.242.85) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Tue, 2 Jun 2026 02:24:13 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 2 Jun 2026 04:24:13 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue,  2 Jun 2026 02:24:09 +0000
Message-ID: <20260602022409.316585-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Jun 2026 02:24:13.0199 (UTC) FILETIME=[E70061F0:01DCF236]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF0000008E:EE_|DB9PR06MB8220:EE_
X-MS-Office365-Filtering-Correlation-Id: 9aec965a-bc6b-40ec-cda2-08dec04e09a9
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|36860700016|82310400026|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: UijzwDfnrk6+DxzaAzUXws8+iAJZOXbRZ5QyshSUf18rBEe1Pgi/vVSb+DgFcR2BYwURIimUbZypJMiba0r6vaRzYh4+TJNtQyJ0/AKhgnm7Y0Fii/x5cxfaktpbsJJ7g8P+Px2xxLDBiIkv+L/f3yF+6feCK19Qh8HwI0ttEJwHG37FWCodpQbdL0qQ87Ufhfne/8z6ElyQel5Wwswkp/ilSsbLJp7zKGudYMZ7WcOEChDDVeUJoz0Pw3DuqefkGWdjHtsscTtDnKbIdyh/zJxDzJldxn1jF/xfPndsw2fz37zhLYTOhsTDgN0L/k8JnVT7nZANNAt6vUSeaqTbtS9kbYl1mJQBuA5PSdmU5fVdvfU+Iz3JJnGvEsyEQfF/wldjwKKzhN5yLe1K4mxZ9krHUVXoqWmwuwCnZs4B3j1jRmA6Lm1F/nzFFvUEuajMTw/wyvecbe3wB3/2Ok+DF+kiYd/FKwHRhWUlKmeLMORA2+ewoooak3LbRvXruBeTNHoeuR//fJ//GIKgno4wnEmUFypwNQvESHRbQD/92hIFffwFDI5i+WoOWfkFtUFA8XgubKKHitcPoj0lv5dNt8FxT71/tt+NPW+tfgXQjZ0RmsTpacENBunYYTiSbpn+zf9/2c5hdJoLK/DNoy/oM7AsI3KDrvEjExwdfC15y+adlzGqtnp1EWDKrnG9NNHURgxCYy8HbNqBa+5lXCzrIxtJAt+G6NqC7PJX6nRGJJM=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700016)(82310400026)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: w5cw2rL2jN3XYCP+xZwimaH0gpq/Ca8HYFjMMfqTarcMYBJeo9ek9hfCgh92tymMhsOs1ak2va7PngJGeBcB3ByTmGombHKh4Ps0FQM00NqUHBGlr1LCH7x4Kbp2du9vrRSpn/k6lwh6wvqDGvE7Tq+Bg2E3OnAGQQcf600jq4wvyejhWNsga2Oh+dLuWRbrqYixtpaOX1zSplGYfQQr+ouqqEDw3SnnsOl3/l4E5KGCgXDm3uwIIny+LaE+NUoiGTq09/hi3h2Y7bPctoywtG+L7a/joJmmvmZu5hSox+bS0dUbFF7Nqs3aIwQzIuP3LH0ikCve4AicNQg7rUecd/f4uRvvCCcgCSdagvVhIH+5WMgOeSq7ZAORG/ByaMNFOMMD5C3T5d0gpvw4Wl+lWaCB2dXiqnGIxYYKAktQ/9fUTIK3mYlII1zuoLU+Pa3D
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 02:24:13.4922
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9aec965a-bc6b-40ec-cda2-08dec04e09a9
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS1EPF0000008E.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB8220
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_192422_427645_93AD32BE 
X-CRM114-Status: GOOD (  11.65  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: gui: png_pico: fix use-after-free and double-free in png_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

png_alloc_free_all() frees all picopng-internal allocations, including
the image->data buffer.  The previous code stored a pointer to this
buffer in img->data and called png_alloc_free_all() — leaving img->data
as a dangling pointer.  The subsequent png_close()'s free(img->data)
then performed a double-free on already-freed memory, causing a crash or
heap corruption when displaying the boot logo.

Fix by copying the decoded pixel data into a fresh malloc buffer before
calling png_alloc_free_all().  png_close() correctly frees this copy.

Assisted-by: Claude:claude-sonnet-4-6
Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 lib/gui/png_pico.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/lib/gui/png_pico.c b/lib/gui/png_pico.c
index 029fee2a40..8d70521b46 100644
--- a/lib/gui/png_pico.c
+++ b/lib/gui/png_pico.c
@@ -46,6 +46,8 @@ struct image *png_open(char *inbuf, int insize)
 {
 	PNG_info_t *png_info;
 	int ret;
+	size_t imgsize;
+	void *imgcopy;
 	struct image *img = calloc(1, sizeof(struct image));
 
 	if (!img)
@@ -67,12 +69,27 @@ struct image *png_open(char *inbuf, int insize)
 	img->width = png_info->width;
 	img->height = png_info->height;
 	img->bits_per_pixel = 4 << 3;
-	img->data = png_info->image->data;
 
-	pr_debug("png: %d x %d data@0x%p\n", img->width, img->height, img->data);
+	/*
+	 * Copy decoded pixels to a stable buffer before png_alloc_free_all()
+	 * frees the picopng internal allocations (including image->data).
+	 * Without this copy, img->data would be a dangling pointer and
+	 * png_close()'s free(img->data) would be a double-free.
+	 */
+	imgsize = png_info->width * png_info->height * 4;
+	imgcopy = malloc(imgsize);
+	if (!imgcopy) {
+		ret = -ENOMEM;
+		goto err;
+	}
+	memcpy(imgcopy, png_info->image->data, imgsize);
 
 	png_alloc_free_all();
 
+	img->data = imgcopy;
+
+	pr_debug("png: %d x %d data@0x%p\n", img->width, img->height, img->data);
+
 	return img;
 err:
 	png_alloc_free_all();
-- 
2.43.0



