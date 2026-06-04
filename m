Delivery-date: Thu, 04 Jun 2026 08:50:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1un-002BsX-2X
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1un-0007kb-0W
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Em0nIBRvmDCKLBuJWsly9p8+003rczW1r6jP8/ZpjX0=; b=fcgsl0zQC9/hXD1LtBTyFP7U5h
	hbeecPBiapgDD15eRwjtTvHj44oEK0qAt0m/AKTxlTt6ujOuDh7c9k2aLb9WNFpjcGCVZRVEIxZfp
	15RTeUv0J7Y8cg5fYNvTq60S4mmhiQBEzLdJW7Ou3GXFi3aZGsri0Ug8mRIJzHahTQaFtqX+kWCdB
	kwMz1WdrDbKoMqKe9iN4/9n8LBu4EevUREO4XVBgVcpYkfsyY1BSbM/vFjvsWtmtwYhFpvZoexgG7
	5RVtvkD6BdKhB5kGMqFW7aE4i8aAPOHyOBnnAvxtdb9f0J1CTb+aM/8gxUpSXr/YJjSskg64yZiyJ
	1JT3bh5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uJ-0000000GFBt-1CI9;
	Thu, 04 Jun 2026 06:50:23 +0000
Received: from mail-westeuropeazon11010004.outbound.protection.outlook.com ([52.101.69.4] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uD-0000000GF4W-1dDK
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sFrPSDHUbvCIdWS0Lse0uqJWysgkoLaZyLDKSA8UliFeaGpRP1bxxR4fTDH+qUdMrESkpUYAYvpWO9mvCNrypoE0JdE9gzTtQiTupmSRkyOLU0Pnm5bUyDnCwHs9lFZkFnnMdhc2O6MnMH3TnA9ndMMy3UwJgQDaNgKlcfXTBwYGFcCiGv4QzeBe43Ld+85uyBw7E5m6W+0+439ulRODGdHly0c+bcg3Af8ozyxdoJyO9B98nkrHpggzRWurSgLsOWSVrS9M3d3TEq816eQr3e9Gs1bqhLDDUXLC+99nlK4AKDnagvNyqWi/TMJEeCLEeLEHC1amGN6d+zlDQwr8aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Em0nIBRvmDCKLBuJWsly9p8+003rczW1r6jP8/ZpjX0=;
 b=e/myBD2q+N29nlj345k1D/7uxkbDSk7rMNWE1soV5TdpfRf/7SWZ3K044a6rxTIrqyDQGZJbasc6FWRvsqiDvBScEidIMPcbSB2PKWWNuYAChWuuv4h9adMq8zrxkcxbZF5VCDSHINwAVeFVXvS/5fsk2b82v1GVg856QYzMR3DkYxXeS7CKQamq3np+8Cd9DNWTYPo1JwUYkFZZaRpMoH80EjK7zEy3w9PlcduZ38Wq1sY6vWJJkEy6BvHJSOisprNWci5oBMYmjWG4l7mz+wN0PAPpefS9L6Vyc3zOTOJ8Q59We8z3B3xnRc5UbLErWHLWD6KlOFlwG63ZdkzgKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Em0nIBRvmDCKLBuJWsly9p8+003rczW1r6jP8/ZpjX0=;
 b=WDMsGwX6FvLOZUwPDf4FBtIovWDEh72OOrIRHnsfh9yBFLcdCRhz/IMvJ2Msi4ZJY8M2ypJlNE88t5z7c0HxjKQrpgAB/dT9Zkizp0N3lvCXU6EApyinC90pJ4PL13U2LcQUWpN/J1zsjoil0/0w5LxqYjo7S7iQeTQW62UzRH4=
Received: from CWLP265CA0464.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::19)
 by GV1PR06MB9590.eurprd06.prod.outlook.com (2603:10a6:150:1d4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:09 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::8a) by CWLP265CA0464.outlook.office365.com
 (2603:10a6:400:1d4::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.8 via Frontend Transport; Thu, 4
 Jun 2026 06:50:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF00000199.mail.protection.outlook.com (10.167.16.245) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Thu, 4 Jun 2026 06:50:08 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 4 Jun 2026 08:50:08 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de,
	mgr@kernel.org,
	l.stach@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com
Date: Thu,  4 Jun 2026 06:49:56 +0000
Message-ID: <20260604065006.2933142-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:08.0484 (UTC) FILETIME=[61EB2A40:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|GV1PR06MB9590:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: b76bf71b-9ba1-4c8c-fc4f-08dec205847f
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|82310400026|36860700016|1800799024|56012099006|6133799003|11063799006|5023799004|3023799007|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: rb/+2sHEOPsRn1JdwYouLYnetoeOb815/1yH7Wpa7HLFhNtoFpeVNbONYuJRXXYi2ifER98eRVXQptcb73VX7Sp/WM9kPmSOPqaq8MIV1nhpy3qSbTkmERnAB7fZ1CGm17ArEPw7uf3soXNfO5hsKa7Huijn6dCdw4Kqok6IQX3QhJZ+PscLOBtluS/fX5V05u8kHtIwNeucTMzFdP/hgOpZliJB05xMTHRgYa7qEkE3ZIMKCSp4dZFEX1S358y7IXuD7p8JqwBqN0xG9Ai2nq+eyZdXbVwhQ5poRKTfStZ426NoKnksmA0rXoB+gYJP6jfmfc0fyjW+uiYdinHAXbLXsYUkhtxzK/B5t0KGil/E2rRLma3D/+ecmmwKluFwD8NXXWph+ohI2aTi22KU1TpuMTexNDkVfXn6zi+FsN7yZT/mLvbUtKl69afJ2p7XNjnn89LkuVXWeZKCGKyzcTn9Xx4qhqnfT827jMN6D8xIUoLWUChRLkdTi0FmSxQnb2ehyfqNfLKCN57qiGoTT10zudUrR2T1MEezsPpnjDG8/ZASUkVb2PODyRmj7o8fP44j5B5l0iGRykFcVHrPNZ2ayB4hHjGA9BHymXYpwqmxlF45ff1wXiyRL2ny5ZJpMaKWPuwSnTstm1dpWmEnG1UwFyognF4rsZV5F0GAoCdrWFMfJLccKmZrrWT05/INR7IILoX+SMjG6H3cUmdx9rUHD5mAUrmyF2IXXqmnDSA=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700016)(1800799024)(56012099006)(6133799003)(11063799006)(5023799004)(3023799007)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: TUJjT1tLC4F2nKa4Xb1Ib6IGqS5LyEgKsg2w9KhLuPX6HXotzAvfYM/zlWHg8vv+tP0Imtwcuqw86zYuo350/iShzn0PoNvviSxrItR9zXvxMU6zYj7lhZ5hvarqCmF5AuZe5TTyLR+KTdWiZvE/la8WJAJFo7ZDgs+eWBUJ03z7/EmDQNgYa48K+8vqMfhCfIAqu1qJ2OPW6xhxTF+Y6b3zh85b5kS5/OofBih4yKm/iMPKFbkiVXYDaqIUl7TD5XPE/fUXp7HVkFQvyy53KFivA2+nCf0BbUuDqRlxdvy4wEF6wRuwshvGfNUMnxMFNgpCQQ8yTkOZw39fK882TLHbSnvyrOXnXhq1JRvZhwcauqrgNF9/tN2g3qHPvhmPAghgHNfVIBvJuc2yDmN7t/203A+Vm0dI2Aw63yl6yfStkFlLTCNFFE0raG0Ib35B
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:08.6415
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b76bf71b-9ba1-4c8c-fc4f-08dec205847f
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR06MB9590
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235017_454226_B1F4FA1D 
X-CRM114-Status: UNSURE (   8.36  )
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
Subject: [PATCH v2 01/11] clk: imx8mp: add 700 MHz rate entry for VIDEO_PLL1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

LVDS link_freq = pixel_clock * 7.  For a 25 MHz pixel clock that's
175 MHz, requiring VIDEO_PLL1 at 700 MHz so the /4 divider yields an
exact match.  Without the table entry, clk_set_rate() rounds down to
650 MHz (giving 162.5 MHz) and the LVDS transmitter outputs ~743
pixels per 800-pixel line.

PLL parameters: Fin=24 MHz, P=3, S=2, K=0 -> 24 * 350 / (3 * 4) = 700 MHz.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/clk/imx/clk-pll14xx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 6716a6f555..db7e744e87 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -61,6 +61,7 @@ static const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
 };
 
 static const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
+	PLL_1443X_RATE(700000000U, 350, 3, 2, 0),
 	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
 	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
 	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
-- 
2.43.0



