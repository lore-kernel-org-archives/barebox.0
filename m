Delivery-date: Thu, 04 Jun 2026 08:50:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1ur-002BuV-0f
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1up-0007mr-SC
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DzkNqT6FHGqc8kAnywrMdJxksQwJJ7BhS+/uJtEBCdw=; b=M377Gtf6wEgM4W59wWsGanf81g
	3RXOoKY9ry2X5cPqFW3YS3Fpr5lFASlFyv8dO38LKALFOBq6M5jYoEaND0r7vUDudH8TbNZCfeZhj
	qb8d7CMtS++/nmUTd6CACb7YYw1cw79otlk8JjZhFcdVfM0vltdCo0hWUePKISyUgjtV2xNlwExf4
	6Qlc7ZMbuGOz4iLaeMVm1K/6Xfb23qUVhRlV0P507c9pH4KLB3QBVHzqcV9AVRrkqxBm2FrGecAuq
	TPjAwwiNDb0y3IbHENnxd6noFs1XvZLfZKzAyX4x8qBuk472ImCd+RmQ/bDlAa9UOoicVfb+FFkKc
	eCGGABLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uE-0000000GF6k-1YZT;
	Thu, 04 Jun 2026 06:50:18 +0000
Received: from mail-northeuropeazon11011038.outbound.protection.outlook.com ([52.101.65.38] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uB-0000000GF4A-2ZVq
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FCOkJ+tXc8uKfyp4fzaVVcI7LeDB9BZ18eRKbZ2aQNkKw0ljLAJd97gyn96jOrmmtF2UO8V3R/CoMnMvh3eyVn1UtMA3xGwr77fPDor85hq9YdkyDx0hIknnDTp1VqLf+JOEERSF3PqE9nH94OVIvI9x7GYvSOtTEPzobjjYNt1GovNe2ZWSVVMR9bQ+Dwlt3eICFEH2tz9/EJE40Apreoh9xtaEIP7hsppIbiqr4Vr7/nOvQcSUnLM/yyRN43RPpobEiqBfhbzxpYRqgF6gW2ggnLjs6BOjwNa3jA7v6oZqohqCX0ktdN6pZKpoxHDi+7+ChU0Yt893gWn5EnIfYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DzkNqT6FHGqc8kAnywrMdJxksQwJJ7BhS+/uJtEBCdw=;
 b=avFtgEwYZE7PNq02UuJiIOzU5MM/lUC4akw6TJ6PsaPRwFjyErMYf6h7hhqytxShFPPpdVIRSQ/bxlYqZjWxtaeIA5HSseOj44ZJ5+h6AQa+eaMAQtLTAFA/8ftE99iXF96UC83SEnKS/L2rGM3I7ESbRAsLmWJaupFaEe1yp6MIkxf7SB71brenG7FQ9dPexmbmRu83wTmgD2Yo8jy8EYWO7WUtZ0kkrZxUtfLgEUg+3w7o3XlcmTVGfq1NO3+WDwTrX77xif53avD7+6czTh/U6c9oI/FqKQ4R9pnR74d0yxxkIggTk99gztZjq8Sq1wRywp7dbYT09Zjl7yDeXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DzkNqT6FHGqc8kAnywrMdJxksQwJJ7BhS+/uJtEBCdw=;
 b=uh6bdAQjYREwk4D+HDliCEY8Dqbe/cMKm2AE0SDiKJVqr0x70hcZbPRvvre0Byav0aYNopXNiw/nMLu4bFk5gq/58UEn2fv6G7+AJ3+g21iKLEu8Rrx2WpDH2DOkdsS3tLeoGX+tZZAJw/6+tkwxNqNj+ErWzoZCLv+Hx7gwrvQ=
Received: from CWLP265CA0468.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::21)
 by DB8PR06MB6442.eurprd06.prod.outlook.com (2603:10a6:10:126::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:11 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::f9) by CWLP265CA0468.outlook.office365.com
 (2603:10a6:400:1d4::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.8 via Frontend Transport; Thu, 4
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
Cc: thomas.haemmerle@leica-geosystems.com,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Thu,  4 Jun 2026 06:50:00 +0000
Message-ID: <20260604065006.2933142-6-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:10.0343 (UTC) FILETIME=[6306D370:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|DB8PR06MB6442:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 60efaa9b-8ef4-4834-c77f-08dec205862c
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700016|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: ruJ7xAVoIs1zUEl4Sw8WIa1HWy4R/wZCATdwE3nQchm2f2l7S6gLfrTG8s28MBQSEza859uAlDGFmqCgIOblOobFs4PE+P8W1RjOUrF2MS+AiRwIEjRyls3hr0WS9SaaC3d3X+rxSLSmB1OrX1HbGe9Dxw5Qo1miO6Dt0IT0ImLehAjF/wFKGAUJ8rO9Ugxe+i1YDEKU4jQXudDRMBIoh6e3UbZM+g+8Pnx7A/a0/actHoVKZEpUVDBk24N8uuP0y3NNZcinoN59p7vtG1M77IpUaTS5UDqLHBvEgWB/Z+gpf+tLoocC6DrVxA77xfVw9O21/QCgiR/MTfQoebgCUOF4bzCK7xPBvXGP2EmfpsvWK2m5MgJVRdm07kXol6cBPHAxrSk0mXjhOROTzf0rvbpZbJWuDeA3fEYrrsVG+UzsYhV7yZxwBR3qcLasJf3rz9/5HI0BSHyh2i1KQIwKyIbeppub5YOVJ/phe+mhtpgog9OQ/ICZkoM7qXO4F25bf4KAMxDa3yrMObS0LzTs2VU2flR5V5R57HR7p9wBtltK3Tj0SHo3t/xaJvcwECbRzOL3ZkSc3oKqvYJU8Fl1pyQA9P7NVv2oQFlgkXnDP7ITy8n264VjM53AnHP+DMZdMqsgLTsNp2sN264+5ii5+EcYUjkEbirOfslDDrF/YsqgC0OQPHCr0IEHV+pqxwP/bP5XASgEpsJJD7D+nwEoGmURTAGDao1C3jNsVZmsVA8=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700016)(22082099003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: qD0zKRWZJQIDCbhhs4mP4WN8JavpKpKAuKeYOT8SKkGVVG7wVmiLDzdcQ0Wz1fwrx49Ftj5/QWYx2XcqzIyFvXNhiWh8m3kiiP0OlANseCD7EdcFYKE2wBquDC6jv7kxEFpD7mNg+zUuw+wsSK1XEVKAJi4AmZKOQsBKShl97+tpLUu7/9wg/MfY7Mn+TFS9STNhJA3vu7TZwgOjkIemoI9ff0W8okq29OvzSzk8dSYA4SDstAc8VKtkNgBmqCKjDuR98eOEMZpL4IPDcQkCZIkfKJ2OO/jw5JVseGZhtghIMP/GE+HhBsKz2GLDLbSDhfwNK56REm5HaGBNNewOfASalAhZB3fkdkZfpHibhws+lL5EijjyjZ4PO05Z6yCyyGfCDTjXr1OeabeuNQJrxC0usJect4t25JL3nB/EDPS/oZZhJyuOb8ie089cUF/z
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:11.4540
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 60efaa9b-8ef4-4834-c77f-08dec205862c
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR06MB6442
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235015_653037_931E8777 
X-CRM114-Status: GOOD (  13.26  )
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
Subject: [PATCH v2 05/11] video: lcdif: make functional on i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver matches fsl,imx8mp-lcdif and its help text mentions i.MX8MP,
but two oversights left it unusable on that SoC:

  - Kconfig depends on ARCH_IMX9 || ARCH_IMX93, so setting
    CONFIG_DRIVER_VIDEO_LCDIF=y in an IMX8MP defconfig is silently
    forced back to n and the driver is never built.

  - lcdif_probe() acquires clk references but never ungates them.  In
    Linux runtime PM via the LCDIF power-domain genpd handles that;
    barebox has no runtime_pm wiring, so the LCDIF clock domain stays
    gated and the MMIO setup in atomic_enable silently no-ops --
    /dev/fb0 registers correctly but DISP_PARA / CTRLDESCL stay at 0
    and the panel is dark.

Add ARCH_IMX8MP to the depends-on clause, update the menu prompt to
match the help text, and clk_prepare_enable() the three clocks at the
start of lcdif_crtc_atomic_enable, after the pixel-clock rate is set.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/video/Kconfig     | 4 ++--
 drivers/video/lcdif_kms.c | 5 +++++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index ce10237221..2faad19a99 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -67,8 +67,8 @@ config DRIVER_VIDEO_IMX_IPU_OVERLAY
 	depends on DRIVER_VIDEO_IMX_IPU && (ARCH_IMX35 || ARCH_IMX31)
 
 config DRIVER_VIDEO_LCDIF
-	bool "i.MX9 framebuffer driver"
-	depends on ARCH_IMX9 || ARCH_IMX93
+	bool "i.MX8MP/9/93 LCDIFv3 framebuffer driver"
+	depends on ARCH_IMX8MP || ARCH_IMX9 || ARCH_IMX93
 	help
 	  Add support for the LCDIFv3 LCD controller found on
 	  i.MX8MP and i.MX93 SoCs.
diff --git a/drivers/video/lcdif_kms.c b/drivers/video/lcdif_kms.c
index 033df23186..3a31633818 100644
--- a/drivers/video/lcdif_kms.c
+++ b/drivers/video/lcdif_kms.c
@@ -326,6 +326,11 @@ static void lcdif_crtc_atomic_enable(struct lcdif_drm_private *lcdif,
 
 	clk_set_rate(lcdif->clk, mode->clock * 1000);
 
+	/* no runtime PM; ungate the LCDIF clocks ourselves */
+	clk_prepare_enable(lcdif->clk_axi);
+	clk_prepare_enable(lcdif->clk_disp_axi);
+	clk_prepare_enable(lcdif->clk);
+
 	lcdif_crtc_mode_set_nofb(lcdif, mode, vcstate);
 
 	/* Write cur_buf as well to avoid an initial corrupt frame */
-- 
2.43.0



