Delivery-date: Thu, 04 Jun 2026 08:50:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1ur-002BuX-0o
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uo-0007mE-FW
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4MlJVyRh+dBvPzTlK9D0P4JzX4IKeP/O/CSK2wms5D4=; b=nsmWYt2wColVmV3IyDYsYw852L
	LiNsg6qfOsV62vGo4rjySDv/y+djDopBBdCHa0QoJNyEvlvzgENu4ojFkY3rSul/MUSFyjm3ub1/r
	bU9wDaT3QiYGKgT3+XAMVtuqJIQnToNJp7oE4fJFWoLg4GzGqW4bZ5//irMb44At8zKBxYdXTrd8S
	6iERBHemUv6wnlSU9S8KlshAtaYTHDwyZUW98CLYY7aAU8Y4EQfws6OHRcxiNV6djy2f9mRcqyWCW
	zPjf6A1EOqS7ZcKitXQzWV7bK7AfkeGRQQxpbTOwUrmWJSUoJPyclHy4d6sD1SNyWsHGiK8NElfN0
	vjZk1+Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uK-0000000GFDH-1j7j;
	Thu, 04 Jun 2026 06:50:24 +0000
Received: from mail-swedencentralazon11013032.outbound.protection.outlook.com ([52.101.83.32] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uD-0000000GF4b-2SHK
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ViKNprFb9EEQdp/VDewKaPCuFQIkzx770mSU9+9g/gb5MlEWNgAJeYYZqa8JMPKJmtWMV4lyncDZnGM4HbsDVFNhXBgQ8zA4yW2xgCBGdTXDt9nsLBOrK1ZEFQGvIFYMXNcfRbpqzNukld2aRe7DFYeZM/lqowYKDZrc71lRU0uFnqjbnMS9sV2GiyBvjQ2eYXAPOAanoVBDnJVyVBf0ggFXPlikBiQL0R9evd1JRJ4tXb13MzFGy2xuDXS/RYkdydh7/XSi1yK0d3MmbFh0EP6vSwXWwQ6lm7k8e9NXjFHQMW4VYLcE2qbyCS1WKLk+V9f6UNq2NdM6XghaYdk8jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4MlJVyRh+dBvPzTlK9D0P4JzX4IKeP/O/CSK2wms5D4=;
 b=AmlUniJtViYM+TD8BywSWbmKAO0V/1F9TIapOt8tPU4kt5+N2oktTz6u9a9q7rwi+KSehC3E8YkGft31T25rvTxUzqUCw8R9pnCHxe2hcM3CZ9tLH4V7L3y9RPOIaTcS5iwQwmbQqrNVgdWIX5VVpOg7HOOcOpqfCFKw781Hzf4m8n8fi9Euc5zsYcbUET1QSGI+89FtzNy0vQtbMKoNYNaoSHYivm+15kOF4pPqxgxE6l+1SVsQtEeJqPKtmQcfu0dbWH9FeRkkVanV9v2MITeG+rrPnmidDvJv3T1xH7T92SFlqEg4qGP3yckgX2g9O1cMG1l4pOKX1R6G8m1OvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4MlJVyRh+dBvPzTlK9D0P4JzX4IKeP/O/CSK2wms5D4=;
 b=nSRLKrgTa76kkrQy11N7RtAPsSZblizMFzLPDaqU149XOikWIqMb6/iKWPRFqnV6OX8tz/f1y4zQ/yys1jU49HReAVPeOCBvzBKR964hIiRLUoEgjV2JSupjbK6UDT2qxXJdbKH5EvsUoLAOcBnsd2PV2kXa1i17h+AGmb8mH6s=
Received: from CWLP265CA0463.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::15)
 by AS5PR06MB9018.eurprd06.prod.outlook.com (2603:10a6:20b:653::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:10 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::b0) by CWLP265CA0463.outlook.office365.com
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
	 Thu, 4 Jun 2026 08:50:09 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de,
	mgr@kernel.org,
	l.stach@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com
Date: Thu,  4 Jun 2026 06:49:58 +0000
Message-ID: <20260604065006.2933142-4-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:09.0452 (UTC) FILETIME=[627EDEC0:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|AS5PR06MB9018:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 5dab62a8-0d9a-4ca1-a6fd-08dec20585ae
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|36860700016|82310400026|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: NzXG5Q1tK8aapVNn++CtHvuTZtwtHPhrGIoArw9wVuA1Ikrw+A52SqXIYOGMu3b8Yh0GUI2L+KvfWd/w4WgFL7jh8rETM2utn8XPz3ZOU8pHdGO3gnFywB8bsvHLXfw1jqog0xpbi1aCp01okBxacAFafKrWjPZz2FX1JFXndivKoi/mQY9/Yjbup0gSYdiVLS7jMy/f4ww+Ew9zp2h2VRGvJzffPmJtrp5WKPsGS/G7sNpK1Z1t6YOWPizRhEh85XOnj1VFwt+4Py7d2qvJN7I5QgCt4mt1JG/OPsMOgtcp90AEjXXqFRjj4PT4IlnIoNAFiDc8aDPD4nnt4+OPb6/rM8pwPk3TFN1ZF1OAum0FMvcleh7tVhDBLaJuTk6ZD5qiIVqpGVVkfPKtmHLgCR5XdKVDVOmJdY66VFJMfbS4BXXn9chJ8G5gxwyYH5x7+WW1PpugO3pICJIU6ubxcOC7v7TbFDeYxJwZcpg3i27TdCmc60ZKgAPm5GgS16OicqjuSK/o0wubFjec7RM6bGO8otakX3K7/4UFXv1Ok0og8nYlq7ixrpwnlGcPPh6Vp6J+DhBW3SQphoIIgL7F1x2JBWNW7MyLerG9/m53vT0YS1qWIeoMW//CubjSpstb7NOmJjKczCtIxkNHQ6hvnWHEikt/ngG1knth9TT6DQzYKk2WjwAWHyBFgbG5Gv0PXcuxXOVm0h0PcLt0bEJiV7SLcfrrOGx+SaGN4W0/5HU=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700016)(82310400026)(22082099003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: UMMtcIDo4b1My0xkPCX5RIcIzVznx5hFYLmjuslbgVhRAqRaxrc1Qwggmstrpv4h7N6W5iA7/vJy7bABUHiVUwDjyRqcHJ7sff49lG1jny3gkmPKdn4EOXBtjfcGBsznJ4g0NKLaEaO3YSDbBG9RxiZ5BDce5leL02QkQ4eAL+Meudh/EUEqU43E1SH69fwUsY4HJkqBYmvz2ceRB2mxN+ildrmMX2beJeetF/iGCBlLZXFS3EKeYm+cGl5fR7+oHVAkxeg3csbLAL+ryl62JotDsVW8cHm1khWCCscCVKk00HgTOh2Kzgu9yGie8eHWrdZWtB/jWXl/CLxIre+qCaSsU8eMvsVtzrFGOTDkak7y5rdq8I9FreltEVapRKc/FBnZuJA6S6OEHznlhqTSUYpP9gbsUhOeZXeAv4B8qRqhzyiM/EywrS9Ghib5IC+Q
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:10.6267
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dab62a8-0d9a-4ca1-a6fd-08dec20585ae
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR06MB9018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235017_636556_24EF5132 
X-CRM114-Status: GOOD (  21.60  )
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
Subject: [PATCH v2 03/11] pmdomain: imx8mp-blk-ctrl: add media blk-ctrl power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

The i.MX8MP LCDIF2 sits inside MEDIAMIX, whose blk-ctrl gates clocks
and holds resets.  Without enabling the MEDIAMIX bus clock and
de-asserting LCDIF2's block-level resets, the first register access
to LCDIF2 AXI-hangs barebox.

Extend the existing HSIO-only blk-ctrl driver for fsl,imx8mp-media-
blk-ctrl:

  - Route the HSIO ADB handshake through a new pre_power_on hook so
    the generic power_on path calls it *before* clk_bulk_prepare_enable,
    preserving v1's ordering while keeping HSIO specifics off the
    generic path.
  - NULL-check bc->power_on/off so blk-ctrls without per-domain
    callbacks (e.g. media) work.
  - Bump DOMAIN_MAX_CLKS from 2 to 3 (LCDIF2 needs disp2, axi, apb).
  - Add an imx8mp_media_blk_ctrl_probe that maxes the LCDIF NoC
    read-hurry, brings the MEDIAMIX fabric up, and de-asserts LCDIF2
    clocks + resets, mirroring imx8mp_media_power_notifier in Linux.

The media_blk_ctrl DTS node keeps its syscon compatible so the LDB
bridge sub-device can still get the regmap via syscon_node_to_regmap().

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c | 91 ++++++++++++++++++++++++--
 1 file changed, 84 insertions(+), 7 deletions(-)

diff --git a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
index 3d302cbde7..3db26e91b3 100644
--- a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
+++ b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
@@ -17,6 +17,7 @@
 
 #include <dt-bindings/power/imx8mp-power.h>
 
+/* HSIO blk-ctrl registers */
 #define GPR_REG0		0x0
 #define  PCIE_CLOCK_MODULE_EN	BIT(0)
 #define  USB_CLOCK_MODULE_EN	BIT(1)
@@ -32,6 +33,11 @@
 #define  PLL_CKE		BIT(17)
 #define  PLL_RST		BIT(31)
 
+/* Media blk-ctrl registers */
+#define LCDIF_ARCACHE_CTRL	0x40
+#define  LCDIF_1_RD_HURRY	GENMASK(6, 4)
+#define  LCDIF_0_RD_HURRY	GENMASK(2, 0)
+
 struct imx8mp_blk_ctrl_domain;
 
 struct imx8mp_blk_ctrl {
@@ -40,6 +46,7 @@ struct imx8mp_blk_ctrl {
 	struct regmap *regmap;
 	struct imx8mp_blk_ctrl_domain *domains;
 	struct genpd_onecell_data onecell_data;
+	int (*pre_power_on) (struct imx8mp_blk_ctrl *bc);
 	void (*power_off) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
 	void (*power_on) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
 };
@@ -51,7 +58,7 @@ struct imx8mp_blk_ctrl_domain_data {
 	const char *gpc_name;
 };
 
-#define DOMAIN_MAX_CLKS 2
+#define DOMAIN_MAX_CLKS 3
 
 struct imx8mp_blk_ctrl_domain {
 	struct generic_pm_domain genpd;
@@ -65,6 +72,7 @@ struct imx8mp_blk_ctrl_domain {
 struct imx8mp_blk_ctrl_data {
 	int max_reg;
 	int (*probe) (struct imx8mp_blk_ctrl *bc);
+	int (*pre_power_on) (struct imx8mp_blk_ctrl *bc);
 	void (*power_off) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
 	void (*power_on) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
 	const struct imx8mp_blk_ctrl_domain_data *domains;
@@ -253,12 +261,52 @@ static const struct imx8mp_blk_ctrl_domain_data imx8mp_hsio_domain_data[] = {
 static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
 	.max_reg = 0x24,
 	.probe = imx8mp_hsio_blk_ctrl_probe,
+	.pre_power_on = imx8mp_hsio_propagate_adb_handshake,
 	.power_on = imx8mp_hsio_blk_ctrl_power_on,
 	.power_off = imx8mp_hsio_blk_ctrl_power_off,
 	.domains = imx8mp_hsio_domain_data,
 	.num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data),
 };
 
+/* Media blk-ctrl */
+
+/* MEDIAMIX BLK_CTRL register offsets (i.MX 8M Plus RM section 13) */
+#define BLK_SFT_RSTN		0x00
+#define BLK_CLK_EN		0x04
+
+/* MEDIAMIX bus/APB clock + reset */
+#define MEDIAMIX_BUS_CLK_RST	BIT(8)
+
+/* LCDIF2 in BLK_SFT_RSTN/BLK_CLK_EN: axi (11), apb (12), disp2 pixel (24) */
+#define LCDIF2_CLK_RST_MASK	(BIT(11) | BIT(12) | BIT(24))
+
+static int imx8mp_media_blk_ctrl_probe(struct imx8mp_blk_ctrl *bc)
+{
+	/* maximize LCDIF NoC AXI read priority to avoid scanout underflow */
+	regmap_update_bits(bc->regmap, LCDIF_ARCACHE_CTRL,
+			   FIELD_PREP(LCDIF_1_RD_HURRY, 7) |
+			   FIELD_PREP(LCDIF_0_RD_HURRY, 7),
+			   FIELD_PREP(LCDIF_1_RD_HURRY, 7) |
+			   FIELD_PREP(LCDIF_0_RD_HURRY, 7));
+
+	/* bring MEDIAMIX fabric up before any sub-module access */
+	regmap_set_bits(bc->regmap, BLK_CLK_EN,  MEDIAMIX_BUS_CLK_RST);
+	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, MEDIAMIX_BUS_CLK_RST);
+	udelay(5); /* ADB handshake settle */
+
+	/* LCDIF2 registers AXI-hang until its own clocks + reset are de-asserted */
+	regmap_set_bits(bc->regmap, BLK_CLK_EN,  LCDIF2_CLK_RST_MASK);
+	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, LCDIF2_CLK_RST_MASK);
+
+	return 0;
+}
+
+static const struct imx8mp_blk_ctrl_data imx8mp_media_blk_ctl_dev_data = {
+	.max_reg = 0x138,
+	.probe = imx8mp_media_blk_ctrl_probe,
+	/* num_domains = 0: skip genpd; MEDIAMIX is already on from SPL */
+};
+
 static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
 {
 	struct imx8mp_blk_ctrl_domain *domain = to_imx8mp_blk_ctrl_domain(genpd);
@@ -273,10 +321,12 @@ static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
 		return ret;
 	}
 
-	ret = imx8mp_hsio_propagate_adb_handshake(bc);
-	if (ret) {
-		dev_err(bc->dev, "failed to propagate adb handshake\n");
-		goto bus_put;
+	if (bc->pre_power_on) {
+		ret = bc->pre_power_on(bc);
+		if (ret) {
+			dev_err(bc->dev, "pre_power_on failed: %d\n", ret);
+			goto bus_put;
+		}
 	}
 
 	/* enable upstream clocks */
@@ -287,7 +337,8 @@ static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
 	}
 
 	/* domain specific blk-ctrl manipulation */
-	bc->power_on(bc, domain);
+	if (bc->power_on)
+		bc->power_on(bc, domain);
 
 	/* power up upstream GPC domain */
 	ret = pm_runtime_resume_and_get_genpd(domain->power_dev);
@@ -322,7 +373,8 @@ static int imx8mp_blk_ctrl_power_off(struct generic_pm_domain *genpd)
 	}
 
 	/* domain specific blk-ctrl manipulation */
-	bc->power_off(bc, domain);
+	if (bc->power_off)
+		bc->power_off(bc, domain);
 
 	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
 
@@ -380,6 +432,27 @@ static int imx8mp_blk_ctrl_probe(struct device *dev)
 	if (!bc->onecell_data.domains)
 		return -ENOMEM;
 
+	/*
+	 * num_domains == 0: blk-ctrl instances (e.g. media) that only need
+	 * the regmap/probe side-effects and no genpd provider.  Power on
+	 * the bus domain so the blk-ctrl's own registers are accessible,
+	 * then run its probe and return.
+	 */
+	if (num_domains == 0) {
+		bc->bus_power_dev = dev_pm_domain_attach_by_name(dev, "bus");
+		if (!IS_ERR_OR_NULL(bc->bus_power_dev)) {
+			ret = pm_runtime_resume_and_get_genpd(bc->bus_power_dev);
+			if (ret < 0)
+				dev_warn(dev, "failed to power on MEDIAMIX (ignoring): %d\n", ret);
+		}
+		if (bc_data->probe) {
+			ret = bc_data->probe(bc);
+			if (ret)
+				return ret;
+		}
+		return 0;
+	}
+
 	bc->bus_power_dev = dev_pm_domain_attach_by_name(dev, "bus");
 	if (IS_ERR(bc->bus_power_dev))
 		return dev_err_probe(dev, PTR_ERR(bc->bus_power_dev),
@@ -387,6 +460,7 @@ static int imx8mp_blk_ctrl_probe(struct device *dev)
 
 	bc->power_off = bc_data->power_off;
 	bc->power_on = bc_data->power_on;
+	bc->pre_power_on = bc_data->pre_power_on;
 
 	for (i = 0; i < num_domains; i++) {
 		const struct imx8mp_blk_ctrl_domain_data *data = &bc_data->domains[i];
@@ -461,6 +535,9 @@ static const struct of_device_id imx8mp_blk_ctrl_of_match[] = {
 	{
 		.compatible = "fsl,imx8mp-hsio-blk-ctrl",
 		.data = &imx8mp_hsio_blk_ctl_dev_data,
+	}, {
+		.compatible = "fsl,imx8mp-media-blk-ctrl",
+		.data = &imx8mp_media_blk_ctl_dev_data,
 	}, {
 		/* Sentinel */
 	}
-- 
2.43.0



