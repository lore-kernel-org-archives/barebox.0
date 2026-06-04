Delivery-date: Thu, 04 Jun 2026 08:50:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uq-002Btw-27
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1up-0007me-Jc
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QQw3WwyqQVCqty50IpSNgL40ligLN5BpIDPvnG+3IIA=; b=h9wvuTN/Q0l9elVXIjkzx+L6WS
	FVK69SwlumoMkbZJmP4WXbrhybtcnh8TImJ1XywhyJnTfhVWkFisJLf0srkPy7id1UYxL5ftQP+GD
	IIB+KH/UINfHWcwJAVUAFNmC9oijHLFQDm+fih3i2rCVIsfcLVIalQBdnIF3pWfn0d+Xr4hC9iVG8
	3y7A7wXAAHK8KOQAE5FdQcWOyH7x9iQ60kAzunKChmxxkE2iRI7gOXM8hpxbfHoC6OWa99aXscIac
	Elpv/4VojEjU6v9obqklUGuW3+/sGEPNqEdU6SkpTv5C/gMCWQwG7J/4QVoJSNcHMSCjshSyAqNRQ
	HItjjtBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uL-0000000GFEg-0KNz;
	Thu, 04 Jun 2026 06:50:25 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uG-0000000GF7T-17cL
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I4X6pqVWhtuPQ2oN4uOnzOzisiwjKj7CK6gfdT/lPrUDXba1rRTfMwFUZBLi1y6msekN3M++vG4JbzRj0xHab7hqxfbnNiv6Uaf3OX9RNeL+TufTi7q9ZgoMDmd1wnZZz0FUN6+SXpWwKkwXKVflM8+qopRT4TuZwgd0JRManA55T7e3EEdqzFsMXEKOI8+dzCFR8eS3wXpGhPcDLACnAHy8YTnvRNNwYm5QZ9sot9LXCGe7/pgNdwJTMfKSmGnxlvyjpIdGaCfZSeEq+1GM90DnglOpmyvYbq0bJQD/fRKis9rvsuHcUU6gi9CCkMvRV7RbCNS7vZwdFJuQxa0/SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QQw3WwyqQVCqty50IpSNgL40ligLN5BpIDPvnG+3IIA=;
 b=I0Jp7F+fSNGYL9KbA6BQCAYWEdyv07/2g0LXBfylvhy18KQkOXHTNyR46V1dFGpFucyVAVcoTmOTGvkp/Hj288TuQpWJU/NT6CJ0kaPf1CLHFD5tZ6dL9zDC9MNLvlCdi64yKfb+fqIuJBPEAXKfxxyouHfcaRPETjuNFhbfgvkgYDU9U1oqp9PNzsi+oqjgcrH0NzTP5HS1kKvpjXfIKSCnxISfyGy//zWXt9lXbPD0qCoMWL4auIK/j/HXYXsV4VaHfzD0ybdADADhyFHD2qPsIIIHYMzMorXtKt3fiTaH2zZYDBnHSl1IVgqV7mFt/xBLEs6V5NSyFPJEaDiynQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QQw3WwyqQVCqty50IpSNgL40ligLN5BpIDPvnG+3IIA=;
 b=km9GqAVqLs4chzTV8yi/rlEEEc+DOPtnWQzhBzKnI9Ws9rd1kieA2KypNXRt773CsryOCgApAVcQUoLtuxW1d79T4KnnAd+TQg7Kik9pItecOE8ruse4RFt7u8lMW1SFYaTYCegki665YGiSjZ7tVtSCJ2YyuEvbsVgyL8nfEYQ=
Received: from CWLP265CA0464.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::19)
 by FR8PR06MB10694.eurprd06.prod.outlook.com (2603:10a6:d10:1b5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:15 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::b4) by CWLP265CA0464.outlook.office365.com
 (2603:10a6:400:1d4::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.8 via Frontend Transport; Thu, 4
 Jun 2026 06:50:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF00000199.mail.protection.outlook.com (10.167.16.245) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Thu, 4 Jun 2026 06:50:14 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 4 Jun 2026 08:50:12 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de,
	mgr@kernel.org,
	l.stach@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Thu,  4 Jun 2026 06:50:06 +0000
Message-ID: <20260604065006.2933142-12-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:12.0718 (UTC) FILETIME=[647138E0:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|FR8PR06MB10694:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: f927f3bf-90b4-4889-f66f-08dec2058820
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|82310400026|1800799024|376014|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: BLo3sJR94LG0MetEFiglt8H7nAZ135Ln75LAPxRW+0R2uPlCiL9rsuccc5Z6gW8vmxEEBObbllVBBSt2NKs2/7Lxq+SmhZ5m4KMffPoRJ5/J94X+qL9YkhP3ZoRXzGWxXFZc/mYN9sfOtJNFXH82dFjq+hBxLyQBk4sq2TuJ8GMluCQ+LrtsMa46IIKHWrvDq16+e4z1eMWOG7QOYVmCLxpmMb315/rkvqOpeI4zxBwJR3CH076SJshlHS0Q0ALY3aD0bZVg3jQT+oGT+aPft/KDROp7WdQAhIk4x69LhiBHVmfDYkCJLX73mZRAGrQ1g8SVn1voosF6Ydl871aVs9nIPPoRGt6UM+t3C8vO2NQykqWIZNwWltN8ubNJPgopsIoK+HebJ9aSorctLj6mGksqydVO2enCXYQhvlwuMsG3vb2gt/6NeYaNslL7zA2pg1j1IYBOEn8CAV8y9AdyGtlgkUHH8tvtlGAB6tUsuajqc7yeINP3y52B257pE3XyYqL5t/TgBFHlYxJ9TeN/sfZmhuyilUbT+5h4ZFyYdowSqCBB1xqtAgPsGqJyfNb0rMxkCfsKVUOViTHiC1cp6gbmzyvVHhpaioPcsQ7v1H1T0j/5c87SJqMai7GpXUlDlnY5ZwCpS3MwBrL/7XcomJjhVEz4W0VB1ec3YERsT5BZzzI6WXV6ij7zmQc3eBdZDXItx1fI145nwUa3sCnQaIYmyWM0EpVNvxklAOzjEjM=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(1800799024)(376014)(11063799006)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: TyShTYLFM90NoIIiiPCJ/wdgznk0zHq60D9W4QAK0FU+Fdl6oRUrxpx/x2yeUFFDNa9MChqh+1kpgFrx5ksOYJctAtgEBIM0s1Otajo9ccBkH2HCj2s5RcBX5XxzOaym/XtYPZBO48Ezo8QbIOJmU82xl4bRTl95o0+ykYZIRlWoVT64vDi5I+fSpVwR2qdfW3F6alElIXOBYGsfA72VpmaNjZ7Ula3LimyUN9t9epzfPVQpBQyqA841yphLdMXXuoY9HyPk0TNFwfl0EvBKm15G4SpHloXrzcbB8mJhGj9qs8yHy3JhL1N29smN8EYc3OvkxPNyWjbMcrWzORUmHfbUaFLjYRGfETM4qLQdQJNGsmx61ES1nQvx3nZKmBQF6hlN1fS2duEiG9sLZobkzui75Ls+H2zOP5hmIfZMDJ7JT+hNwlMjkA5PX4Zc5YJu
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:14.7315
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f927f3bf-90b4-4889-f66f-08dec2058820
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR8PR06MB10694
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235020_434168_83F25D63 
X-CRM114-Status: GOOD (  10.72  )
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
Subject: [PATCH v2 11/11] video: simple-panel: lazily resolve backlight without failing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

simple_panel_enable() returned -ENODEV when of_backlight_find() came
back NULL at the moment of VPL_ENABLE.  With deep-probe, or simply
when the panel binds before its pwm-backlight, the first call sees
NULL -- and we'd then skip the regulator and enable-GPIO assertion
entirely, leaving the panel dark even though scanout was already
running into it.

Try the lookup on each enable, but if it isn't there yet just skip
the brightness_default() call and proceed with the rest of the panel
power-up.  Board code that drives the backlight separately still
works; the panel re-resolves on the next VPL_ENABLE.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/video/simple-panel.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 66d519425a..8ffb6db6f6 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -36,13 +36,9 @@ static int simple_panel_enable(struct simple_panel *panel)
 
 	dev_dbg(panel->dev, "enabling\n");
 
-	if (panel->backlight_node && !panel->backlight) {
+	/* resolve lazily; backlight may probe after us */
+	if (panel->backlight_node && !panel->backlight)
 		panel->backlight = of_backlight_find(panel->backlight_node);
-		if (!panel->backlight) {
-			dev_err(panel->dev, "Cannot find backlight\n");
-			return -ENODEV;
-		}
-	}
 
 	regulator_enable(panel->power);
 
-- 
2.43.0



