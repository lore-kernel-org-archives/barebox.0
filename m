Delivery-date: Thu, 04 Jun 2026 08:50:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1us-002BvH-0J
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uq-0007n7-5X
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/NNYxneU8OpHIDIFL24dBe7QIVh/VvA3NDfeUkqx4w=; b=4+Oj2wbbyOJqCfvjVZTANc+oAx
	px5mKl/kByzJwWI2NuOjbRpCj2ad8p606g6O3xzwhaSJUgRt/TThHpgSHDThnMtBXuNyW0fYtnlzp
	NeM4L8W30GUWiji8uO8boEtF3nH7s8PoJ18Q0Gt/9aubHAZwqLtpO6hqHDAvghbwfy4cxsaBd70W4
	yWf4XObY6Eq4Tkl3waqNNgmy6YPm2hEktDEc5TOoWCvh0hqdne+cwiYl955wYfRAeiM14ZrUrUvSJ
	Xb7abRPPUojBvOpvarUb2DvkUY2gf6y4q5Rt5MA5CQ7Cw1464Xa2IF+TOGbt+uNFpfk+cWZmdFxSH
	RuCI93HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uK-0000000GFDY-2Kq8;
	Thu, 04 Jun 2026 06:50:24 +0000
Received: from mail-westeuropeazon11011040.outbound.protection.outlook.com ([52.101.70.40] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uD-0000000GF4Z-2VSD
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KSMRV4CeQQkToq6Hb0c7lVmYvSLJr/2njbDc3IX/z5UpvHNF2JFBWCQzwNrUGqKoAPvLquYbLM2Qyh4f771Xoh0s1mZr/PTN+zSpJZq/I95nlK6yfvmDs71BZdnh5P0ps25pjTHeNzgz0b3az6wCqs8rf8YDrAkUTlk+Ny7FnNctn1w66EUNW1Lctxe5Om8kI1qzjN/oKG99OAWhYx6TUlp9ZtlSrFPlNiZW6VoUuhCiwq3JIjX78jJ0nYghBwWMvO6WAHab1wy6QIHSoH+gFnxxEluJDap0SShtV4LZsJs3jYBZ1Bwy00ML6Kvv3fqXsV8j/MN2NBi0D84gB7Oz2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V/NNYxneU8OpHIDIFL24dBe7QIVh/VvA3NDfeUkqx4w=;
 b=f0eK7EEkNVxeOcwUHqVQIzJlN+T3kLFlL//JVHAzTEzNTVIjhJ86HG/cA/96kCobjD08AsbYp3ETiBvXdupwZAcJ/XgZYjqwObdKKK9yUonrNw0Rkq9G0BDy9zIZ16nnCKOqzKf1cxsEIe2dg2VuExTMBlyF8PmF6JoMyXqZXzv4RFU4zHrxCyVFf4BY41SnDFUSpfq+F38bQ6U4ZkjK68hLCLdywyQbBWPhkvOx0w8jYc5gZwrKhALZYIvnsAZ31tAM+yquQ1qJNvaXX0S8qAYORwBVdQksDSxHqu6y4pTqGZ8NKWuMPn2dgpZjjC47evQOFNxrOlLXw7r737hxJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/NNYxneU8OpHIDIFL24dBe7QIVh/VvA3NDfeUkqx4w=;
 b=oPy6f0ePbOI38V0ukETgbD9gLJtzF3n1+LTo+D/uWWFpC1dXHaCrHOUbOzByKLN+xd/rD0WEQVem7LJSuCnmz9GTdcAZdx8VdN0w/iav40O0cfq1YZPFXRIH5/kuNHp0YfyjTW5deG4I5BIqaqjUsNw22aVvx4Nic2oeehJY2AE=
Received: from CWLP265CA0462.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::8)
 by GVXPR06MB9492.eurprd06.prod.outlook.com (2603:10a6:150:1bd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:12 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::bc) by CWLP265CA0462.outlook.office365.com
 (2603:10a6:400:1d4::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.7 via Frontend Transport; Thu, 4
 Jun 2026 06:50:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF00000199.mail.protection.outlook.com (10.167.16.245) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Thu, 4 Jun 2026 06:50:11 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 4 Jun 2026 08:50:10 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de,
	mgr@kernel.org,
	l.stach@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com
Date: Thu,  4 Jun 2026 06:50:01 +0000
Message-ID: <20260604065006.2933142-7-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:10.0734 (UTC) FILETIME=[63427CE0:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|GVXPR06MB9492:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 92308538-e553-4c19-0c7f-08dec2058668
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700016|22082099003|56012099006|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: jN8jNZ5tHC/0ko4V4notX2uNWlXQeCrXo3D6XAJywPKOFkDy5xWj5QvZu4QOHjWyNg3bZo23VH+OG3Lo5noOlM00cr+V07L4ddBAvQ7zere6Qlh5lGjXrJ2iRCYMb1fmhJeq+pW8rUaa0j20PXbK/azb6u6iX+UikHSOza0jpInxxKNy2Ag1MzgyYjiv7tMvURHbhmtQNP6Ed3UsvgeGAfzG5uXuMBDy8rSA00i3d+sQW/QhxUcNYsFdGnosEkm436llCe9ui2mqC5et6ACuTMM1t9suhSefoUoytpXrs3kyze+0fF2Fa9hZlJ4x5+mOBbeJ/St46oerUBLGYGxKKuTZLu0u/FK5q5Z3V1PIGT4f5kVdiXYSr+q9JInwpnPWfMiv9ouBqlgklYcGx/BV9dq8mFnPpRAAn1GViXb6OBkD5xZbspXvAV2rRR2qHWHmk2gsgxB/FJVRpdx9vbT1Dq1vTA/cTwJoutRmIs652Zqf3g/C1NfbmnR01YEAmBxyVVcQLdDRm93CKCkrMMPXYnGbrxXzDB21rGQEEUOVAEaThU2brlO2ksBEXWXAxGto6xNtUTAdqi5qdj2XqXVV+kCvsL0OCEN5PHhrG5AvjpTJQKLYkMo43jrrLGRNO8ylhCcQuezLfcvnRx/kW9VkiE4O9rIp4Az4v37gjdANe+ZCsPKyO9jhYC/66B09amX9Ue4XelzJf+QD9QIS2h4cZ5QPLJdBnJeFmFhCnyvdkAE=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700016)(22082099003)(56012099006)(18002099003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: JswlA8bgpK3OnxQ2xNvri5VsQBA7Qplbo7KoEPEpQah93DqrA642KM2ywFMnm4LIq3Kxq7Yzhn4qe3IRIxRxzNiwDIsjk9hEzW0DfDgRBQ/zjS0FnComEiwDJeqqheBzVcMk/kzPcU4Y8vSU3syesuNgHfWMkKqbS8zGr6AaBOs9hd9lapjRRrRLRu2/rweYEl4n/SsFLNp1wEeAa2ndjhlIVsng880gD+9X7u1SKZBpLBKe8IUYHyjwSlS4cLY0UsCM+uR4+EQOtH1Do34KHyRipWAmEngMjXsTrHJpdfJt4iXjzZv0txGbnNamL2wbcXb/BpmhUqb4+PaskbnokBqgjq0a6tsIiaOA3kX5ZuCeQv8bDF3Bstfo6H9JNOVqRQ55WLqx4mkIdLP5+/sMcTGG7jqi6mPHvrBaCYIOnJei2Zv2gTgn8RubUAz3zvAG
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:11.8417
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 92308538-e553-4c19-0c7f-08dec2058668
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR06MB9492
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235017_643178_04570078 
X-CRM114-Status: GOOD (  13.32  )
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
Subject: [PATCH v2 06/11] video: lcdif: use 128B AXI bursts to avoid right-edge gap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

P_SIZE/T_SIZE are undocumented AXI-burst-size selectors: 1 = 128 byte,
2 = 256 byte.  The driver inherited 256B from NXP downstream, which
works for 1080p (stride 7680 B = 30 * 256 B) but breaks on narrower
32 bpp panels whose row byte count isn't a multiple of 256.

On an 800-pixel row at XRGB8888, stride = 3200 B = 12.5 * 256 B.  The
trailing partial burst is dropped and the panel shows a ~32-pixel-wide
black strip at the right edge.  128B is a divisor of every common
32 bpp stride (3200, 3840, 5120, ...), so the gap disappears.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/video/lcdif_kms.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/video/lcdif_kms.c b/drivers/video/lcdif_kms.c
index 3a31633818..a113f3e681 100644
--- a/drivers/video/lcdif_kms.c
+++ b/drivers/video/lcdif_kms.c
@@ -216,18 +216,14 @@ static void lcdif_set_mode(struct lcdif_drm_private *lcdif,
 	       lcdif->base + LCDC_V8_CTRLDESCL0_1);
 
 	/*
-	 * Undocumented P_SIZE and T_SIZE register but those written in the
-	 * downstream kernel those registers control the AXI burst size. As of
-	 * now there are two known values:
-	 *  1 - 128Byte
-	 *  2 - 256Byte
-	 * Downstream set it to 256B burst size to improve the memory
-	 * efficiency so set it here too.
+	 * P_SIZE/T_SIZE are undocumented AXI-burst-size selectors:
+	 * 1 = 128 byte, 2 = 256 byte.  Use 128B so any 32 bpp row divides
+	 * into whole bursts; 256B on an 800-pixel row produces a partial
+	 * trailing burst and a ~32-pixel black strip at the right edge.
+	 *
+	 * Stride is fixed to hdisplay * 4 (DRM_FORMAT_XRGB8888).
 	 */
-	/* NOTE: Since this driver is currently fixed to DRM_FORMAT_XRGB8888
-	 * we asume a stride of vdisplay * 4
-	 */
-	ctrl = CTRLDESCL0_3_P_SIZE(2) | CTRLDESCL0_3_T_SIZE(2) |
+	ctrl = CTRLDESCL0_3_P_SIZE(1) | CTRLDESCL0_3_T_SIZE(1) |
 	       CTRLDESCL0_3_PITCH(m->hdisplay * 4);
 	writel(ctrl, lcdif->base + LCDC_V8_CTRLDESCL0_3);
 }
-- 
2.43.0



