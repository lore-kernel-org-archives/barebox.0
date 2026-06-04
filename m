Delivery-date: Thu, 04 Jun 2026 08:50:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uq-002Bti-1Q
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uo-0007mG-Ff
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ofkohQmu+SGUOZoaorM/fcAgsZoIyS43u9+Zbu71UH0=; b=NmlEULzDgRQ2eDTOmdGRTwgyL2
	hABCURAkUG6nqU+awBdmItXxN63q2/8sYGU1oPY2ERVW/iz0wIntw6IRnR91kNES8QuE3mrgtSpgX
	q7DTyqkcFW11OSk+RQX6ZQIE4F1QP/wdwHo5SK5nlp4iYIE1PYgeYSKyeraa+O0xRpmZ8APTsFH9i
	GGnxpSeo5pTQ/iJjRcj+bZ6rddAfw5gty4RrjrdMRkq+NwJqa1PJs+Y0rr/w85VEpdpPuPXUgf4fP
	59Tl99TG2WAVn4XtwpydvfR2g+yeguVk5lnk/REE55TLO+P9EGyG9YlL9L37nCdUe5ntjLPuHVwz3
	z1Hhx0cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uG-0000000GF8O-0nZD;
	Thu, 04 Jun 2026 06:50:20 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uC-0000000GF4D-2EXo
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CiumnEoXV/v9qoe/9DtQAE+4Yk9LA8LU66t8H2fZsYt3U6d/As89OfxyH3/SeEhP0q/tmTd2eIHx0bAgaJwVnxgYRCdvG9QT8U65DmGRhLzKSotHVV1UI/sbDXRUfK/8ApUMt9BFZLjP022SDC/6kDmmRLkOHoTMUT4nZ0cDRGtIaZ7a/dxI8hJf9MuvQ2V2FXK93zoNgPtnsPDp2SMvgTy3mrDzpWxgetKr/IfbAqX5Ed9dvBg3+jYUlFPO5Ybq9IJzliM6eJbo0xMjIaPJumW7GbuWC62AX+kDhF2cY133wr3HGwVcU/5D6LENoUfdSpXxEKRUkp/LXc+gQItGrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ofkohQmu+SGUOZoaorM/fcAgsZoIyS43u9+Zbu71UH0=;
 b=dvcl6kGRsujacEPD6lV6pjieZhX5Dq72jpPFRUBIFMeagPSZ0Nnd6PTLZa4U/M204m8Vcu97+WbwlbnUeGhT+ePLWDadJFbJKCoEu77TqZDiMV27//HygMwNudWcJOqzMJV28fWf67CACje45N01v55esEFtrrV70K7RoTApyCPi2ya+SpKlxXS0j+EEq1D/3yyYOc5JbvcepPQBo5h1tD2oGqj5MnCr5o+6Q/LgGnNECuVxbk73wDdH1dWQzpp2ZJ3UwnuqMi9SbqMMvAMXb4Yypk3RVCbOH3+inyD098iebaSMn/nO91orNb7xxMW3bxzfl5WZKkBUMDNhB7GLZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ofkohQmu+SGUOZoaorM/fcAgsZoIyS43u9+Zbu71UH0=;
 b=lThfu3o6nMGxaEJtGz4yCkCNBzoztkK0wDOUG/u0ca3NlreunEus8b6qXzEATTsYObI55x2j2P44Lgj5oNGa9CiYgMvsvAH4XzZRI86X0ul/XbIWIz29I/iU0OwTnHCaksh3If9t+zz4UmM8jwlnL2GA0xcSVlmERWgzWSl1H+8=
Received: from CWLP265CA0463.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::15)
 by VE1PR06MB6944.eurprd06.prod.outlook.com (2603:10a6:800:1ac::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:10 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::3) by CWLP265CA0463.outlook.office365.com
 (2603:10a6:400:1d4::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.7 via Frontend Transport; Thu, 4
 Jun 2026 06:50:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF00000199.mail.protection.outlook.com (10.167.16.245) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Thu, 4 Jun 2026 06:50:10 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 4 Jun 2026 08:50:08 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de,
	mgr@kernel.org,
	l.stach@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Thu,  4 Jun 2026 06:49:57 +0000
Message-ID: <20260604065006.2933142-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:08.0968 (UTC) FILETIME=[62350480:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|VE1PR06MB6944:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 18bed824-111e-43a7-38f8-08dec2058562
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|36860700016|376014|1800799024|56012099006|11063799006|3023799007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: iBg63hFydEmOw7FgoKsanLt4pqSVgUAUSgAQi0fP+ftc+tnuaJsS179r3mYtwDqNWKaoOM1VxM3L5u29zuztUXyOKK5/qSl4eJTHk5N+lfa99QyXPVw4xOqOPMS7js2j/yeRjo+m9jPAQWl9IrlyeLvG6bW5t/YyVvfQ2zukN7FfGoCwRAnRlDYUqW1KcdabWR0oaoiVhOwbRBkjyAgUWSHxMcFgR9tS2utmlo6DA/+PY+C8vLODcTCPTkOiqVA8/wNxUfR/dfNzDXGlRnJ1qV9YuP5UB+55C85jvi+E2jxexKRQRtDes9iU2nmOi4/zehEmITjCMHP77DR0qnn0S8UwnXvTFbTiAZIMiPwN3/PwZTWVZC9vHPXfuGyqwtF9fyfsqoPXeeoWJfOwMz8aafu1KDCyV717eW6rf7CoUgtf/qsJu4YDGcgxbpDvXdkwQFgDHt9bVAxuAiXJhnd5umKYqeZ0LHAN8Gpemrr/y1ZwvxY10850PVeKYphFWErVDhzUq6Cw4btO0JOv762bcS8lzZvVkR/u65DZgnkf2TlqBL+CSFhsrh5azhmBKzblEfVdzvtbRg7tHE7s3Xyu9BGp9ejxUe/o22IXR8hEBixmH3Dmx2es5Rg2BMO3hcfKxgEGM2FhaEsM8eoGKnK9PQ+JDYCuppVbWFvczzXLC4Z6K+/3KKNQaNBmroLRL7uX7lkGrw8K4XRRcqzkuYkHrjKhFp1OYnwhWS7fyZqyt38=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(376014)(1800799024)(56012099006)(11063799006)(3023799007)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: HIleXRaCGqMcQzHeHugYkzZTwIPCnK4Uck4LnOiIn5l/CYY9855la/kjPVYlZr6LqziwlHwTc5FayAGRL8UpWYnsR5ZpY5Tn2AxGriAg1LB9Nn/mxreBW9eAcvvXPO+rx3QOWwLlh2GuCk+NBYAiMWwj5I72j4ue+O8sb1wbtZCGciqqKdLLsibOSvTEQ/ddC874RPVeDLVp20quAKFXY+X76eFiyRiqFpIJvddspeDRPZZAels8iQmFltgum7j0BVY6A1lMDmEgxCT4b8H5U4Sbu1nDpSGJvh0P6UuS1by6g/9fuvwE/gpV2cY/XyzYhIyhi/NhHHd0GVHhai4PlugUCB6OusKtAev41F8rEgtSu+4BbbIkGYnmeazTd7SfKSxvlyeuquZesHVf3j96tYIwmHRj1DvWKh3zxgawxZ0Be7udPUogzykHF3WvjKzB
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:10.1256
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 18bed824-111e-43a7-38f8-08dec2058562
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR06MB6944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235016_573888_C0F6DC5E 
X-CRM114-Status: UNSURE (   8.46  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/11] clk: imx8mp: add 1039.5 MHz and 519.75 MHz rate entries for VIDEO_PLL1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upstream arch/arm64/boot/dts/freescale/imx8mp.dtsi pins VIDEO_PLL1
to 1039.5 MHz (1080p60 LVDS link, 148.5 MHz * 7) via media_blk_ctrl's
assigned-clock-rates.  Without the table entry, that assignment fails
-EINVAL at media_blk_ctrl probe and the clock tree below LCDIF2 is
broken before lcdif2's own assigned-clock-rates can rebind it.

Add the 1039.5 MHz entry and the 519.75 MHz dual-link half-rate from
Linux's imx_pll1443x_tbl.  Parameters:
  Fout = 24 MHz * (m + k/65536) / (p * 2^s)
  1039.5 MHz: m=173, p=2, s=1, k=16384
   519.75 MHz: m=173, p=2, s=2, k=16384

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/clk/imx/clk-pll14xx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index db7e744e87..8a773f19f8 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -61,9 +61,11 @@ static const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
 };
 
 static const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
+	PLL_1443X_RATE(1039500000U, 173, 2, 1, 16384),
 	PLL_1443X_RATE(700000000U, 350, 3, 2, 0),
 	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
 	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
+	PLL_1443X_RATE(519750000U, 173, 2, 2, 16384),
 	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
 	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
 };
-- 
2.43.0



