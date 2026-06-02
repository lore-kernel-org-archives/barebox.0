Delivery-date: Tue, 02 Jun 2026 06:11:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTG-001SV5-12
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 06:11:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTF-0000pM-1I
	for lore@pengutronix.de; Tue, 02 Jun 2026 06:11:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CE8NA2lLDYOGf5lsNH8TyerJdEWFnn9BHgcXLW5qR5M=; b=W1/lF4dmB8o77uv37sbeEEHPdD
	m6HMjM6tj5eauWHnx4lUAboW92kZ1nObIbZdwWkKRtOwgUXv3K/VieYssn3zwU05HB+GgoMbjId6I
	kGRBiIx7ZViGCVTibPtwNL7+8JXD6FKLNCuRCzlmEtck7ba5EeIKLtVj3e8R30ocRWzR8t1gQE1uW
	qcbfgVG0iYc1qrhcmV3daF/4T9eHC+e5doWHduuayIjIcMahEN3ay/GHlWbbJeFShj/Py3lfC+K+N
	i5burxUK0cqojosaPUp60iWNKVbX7QKQjYLAXmRg6XdvYNlraSVuUPrlj9ejEU5Ufh+5WePhZ4LkU
	tAhsUefQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS9-0000000CGHh-3VFv;
	Tue, 02 Jun 2026 04:10:09 +0000
Received: from mail-northeuropeazon11010001.outbound.protection.outlook.com ([52.101.84.1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS4-0000000CGEB-031l
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 04:10:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yLSA6NGGyHFjKOLcUmk537NJY1n/OoCsVO6brY1Q2ipHkUUib2q2yF/0nRGTec1bgVOPfz3ysI2UMsS+kBR9d51nQxy2UBBiiaK3XGW3U8Q/86JGEOi92ndMqyFzhEf3I69O0AVYbJLgj3Fr2kpVfWdjsI/zFztS3PsIxChuuFVIx0+PcXMqfVyOH8whCPWmFZUhdzDWoRk2h8GFPct+0OXBSU9RsFxf3fIQ6Fh94zzKQYEsLiV+e0uk+pvY2t5/phCX2X4TmaVj73arzbapjVi8YYESH+Wi6CYy6mjkcukSyZMV/MVlWVz6eS7u0Y4DxO95Ss2a5zHPyf/MQAw6kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CE8NA2lLDYOGf5lsNH8TyerJdEWFnn9BHgcXLW5qR5M=;
 b=QoDD6PzwyhbD8cPLZKqsDBX5bUdoQ5x/2m00CorQ8l9Qu7ysvZZ6ZxvlOteitde12/A5g+EzNjyD9B5+Kbr5L4pIcmTZl/Jb31UoA7NrXoyNWXxKImVxgjcTfK6YbHf5DH7nlXNgdlC2j8JhXoMBhozXF0IA5RuGk3tG4adSXYpbGiuR4VeaT3AuTn5kGHFaMO1FHVMDW8Dko3vtTWDhXgFK8LXXEVZB/B7T4yM5syZ3PSeMTKT5/5qcBghnj0e+LjUUmmPZOINLpOVnAnpjRT/6Ud4L/SnM+r88z3GS6tAbjSu3E46ZWyLmGr41jd7Jt3gDnQstGUgOzgZuLb03Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CE8NA2lLDYOGf5lsNH8TyerJdEWFnn9BHgcXLW5qR5M=;
 b=Otbt2FHEugdvzeH87q2TD19BMc1+aesBEBdJgGUJ4VaQ95OJshVTiRqYxI2Vk8zNGoJP7vyiV7h656gLZMsQZwK4SklTnlkBO8200Zsx0GRxXt1vzpn/4NGJwNvgyXiTEIgYUzZm2uxzuHn4Tr+pYZz3dnbf1s/nxj3s2DuWe+s=
Received: from DB9PR02CA0028.eurprd02.prod.outlook.com (2603:10a6:10:1d9::33)
 by VE1PR06MB7168.eurprd06.prod.outlook.com (2603:10a6:800:1aa::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 04:09:56 +0000
Received: from DB5PEPF00014B91.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9:cafe::1b) by DB9PR02CA0028.outlook.office365.com
 (2603:10a6:10:1d9::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.71.16 via Frontend Transport; Tue, 2
 Jun 2026 04:09:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB5PEPF00014B91.mail.protection.outlook.com (10.167.8.229) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Tue, 2 Jun 2026 04:09:56 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 2 Jun 2026 06:09:56 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue,  2 Jun 2026 04:09:48 +0000
Message-ID: <20260602040953.1060278-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Jun 2026 04:09:56.0101 (UTC) FILETIME=[ABAA6B50:01DCF245]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B91:EE_|VE1PR06MB7168:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d5c1605c-e3cb-4bfb-4ee4-08dec05cce4f
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700016|6133799003|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: kMfiT9x9N4ofFNkPDR9AGanbDKgtxs7xxBtVG1+noBPAphbMN3ZPc5InOIB+IEpAI30fE3b5BnSlp34aBVj2tl0m1Kdkcgl7q1bfQ/kcBnZ9jSpTWw66peg3lz9hUsEUyzc0nQWz92rggOzsc2LRnXNzidALdrYqnQ+PtHGuJgTyv1tkMoDsko3sNRvs9x+gu1fPmrZrUko/2vcBODMsb2Bd3p0RBUvfvLH7GY1Dz3WUWu10pICVUqzWFWnbHUQh9U3Awwek/KfsKOT3eroQTEhS53r7tCE2zesBJp22E7+XG1DKLozSqC3aunOJdkU27b9bjYIWR0I+kMeN6HjWB+64hSEtf3f3a5r2wvDe9MdTqAhwRpHUSZZkJU4Z3sPp7Age1nQydU7M7/+RQoETwHJ9pnwwNUMSGaxKX0d5bRH+QSu3J/GECmKOCQ41aZAEy4xFjxX7HBv4umMbfwJ+nvG/ojQIKK1Vz2Lr3PvDmvm6u6J5F8cR6+QpCmUWEC5Hsih/guCY/5uDf5TwIngNFL1GxHVNjRA1Cq27FZ1s/cX2S30g391LmpzvDpWYhu/PvxaCbin/8oHZK2KbLXg6We1FAgv2InlsgQHKIfJdm3mLoY+iYZ/87+rDJr8esqLIO/1bJZmke4fB0Je8o4y19H6Eqglj1+egE+ueIcQulcCqPQSbAgjdMiARgWv5rJ+qT6lifnJjOybkG7Z3njhmB6uoGlQ9Jspk57kdIQTIWA4=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700016)(6133799003)(18002099003)(22082099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: AmYgqyGpuvn1bVNEU4VKgbUxwxbC6pbln+UXkNvnez4EgF5eov/aj/X+Aef7IkhrLxkF7jGn5EMpvh2UmGOaG4fcptHHBGX5GHCQ7xG+MtUgScAW283LB6aR8yr7RO92MokhJgROayyZ8tT816hZTihuJoIKiDOYp0IGsZxSUFDvuASFf9uhInUc6FFvZhimLinzH3WRruHuhLEejrZZfIgGZ6krECkPNWYLBBKDtKGNaMhmoUutiTxuE/Ty/vdiBcsl204/R8/o5K06ZsGctFDOfdyxzVaZH3Ckpogtw5bunBoVytVa/mdrZFuJmex6O9pQGA0SHr+K4qdg52TIAKpnZUpqawl173xuAvXlu22taUSS8mYm/9Gjhq142sFW7aYXp3XcRqpF8z1UQIGPA9sLIiltfY/KIFj4hkVAQbDSMBuwTiZiP6ZYl/YTdX9S
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 04:09:56.3390
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d5c1605c-e3cb-4bfb-4ee4-08dec05cce4f
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B91.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR06MB7168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_211005_706753_8AFB1AC5 
X-CRM114-Status: GOOD (  22.97  )
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
Subject: [PATCH 2/6] pmdomain: imx8mp-blk-ctrl: add media blk-ctrl power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

The i.MX8MP LCDIF2 controller lives inside the MEDIAMIX power domain,
which has its own blk-ctrl to gate clocks and control resets.  Without
enabling the MEDIAMIX bus clock and de-asserting the block-level resets
before the first register access, any read or write to LCDIF2 registers
causes an AXI bus hang and barebox locks up on startup.

Extend the existing blk-ctrl driver (currently HSIO-only) to support the
media blk-ctrl (fsl,imx8mp-media-blk-ctrl) by:
- Separating the HSIO ADB handshake into the HSIO-specific power_on hook
  so the generic path is clean for other blk-ctrls without such handshake.
- Adding null checks on bc->power_on/off to allow instances without custom
  callbacks.
- Increasing DOMAIN_MAX_CLKS from 2 to 3 (LCDIF2 needs disp2, axi, apb).
- Adding media blk-ctrl probe that enables the MEDIAMIX bus clock and
  de-asserts LCDIF2 clocks/resets, mirroring what the Linux kernel does
  in imx8mp_media_power_notifier.

The media_blk_ctrl DTS node retains its syscon compatible so that
syscon_node_to_regmap() continues to work for the LDB bridge sub-device.

Assisted-by: Claude:claude-sonnet-4-6
Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c | 117 +++++++++++++++++++++++--
 1 file changed, 108 insertions(+), 9 deletions(-)

diff --git a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
index 3d302cbde7..87e0114c22 100644
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
@@ -51,7 +57,7 @@ struct imx8mp_blk_ctrl_domain_data {
 	const char *gpc_name;
 };
 
-#define DOMAIN_MAX_CLKS 2
+#define DOMAIN_MAX_CLKS 3
 
 struct imx8mp_blk_ctrl_domain {
 	struct generic_pm_domain genpd;
@@ -155,9 +161,14 @@ static int imx8mp_hsio_blk_ctrl_probe(struct imx8mp_blk_ctrl *bc)
 	return of_clk_add_hw_provider(dev_of_node(bc->dev), of_clk_hw_simple_get, hw);
 }
 
+static int imx8mp_hsio_propagate_adb_handshake(struct imx8mp_blk_ctrl *bc);
+
 static void imx8mp_hsio_blk_ctrl_power_on(struct imx8mp_blk_ctrl *bc,
 					  struct imx8mp_blk_ctrl_domain *domain)
 {
+	/* propagate ADB handshake once before any HSIO sub-domain is enabled */
+	imx8mp_hsio_propagate_adb_handshake(bc);
+
 	switch (domain->id) {
 	case IMX8MP_HSIOBLK_PD_USB:
 		regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
@@ -259,6 +270,66 @@ static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
 	.num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data),
 };
 
+/* Media blk-ctrl */
+
+/*
+ * MEDIAMIX BLK_CTRL register offsets (from i.MX 8M Plus RM, section 13).
+ * Bit SET = reset de-asserted / clock enabled.
+ */
+#define BLK_SFT_RSTN		0x00
+#define BLK_CLK_EN		0x04
+
+/* BIT(8): bus/APB clock and reset for the MEDIAMIX interconnect */
+#define MEDIAMIX_BUS_CLK_RST	BIT(8)
+
+/*
+ * LCDIF2 (mediablk-lcdif-2) bits in BLK_SFT_RSTN and BLK_CLK_EN:
+ *   BIT(11): lcdif2-axi, BIT(12): lcdif2-apb, BIT(24): disp2 pixel clock
+ * (from Linux kernel imx8m-blk-ctrl.c IMX8MP_MEDIABLK_PD_LCDIF_2)
+ */
+#define LCDIF2_CLK_RST_MASK	(BIT(11) | BIT(12) | BIT(24))
+
+static int imx8mp_media_blk_ctrl_probe(struct imx8mp_blk_ctrl *bc)
+{
+	/* Set panic read hurry level for LCDIF interfaces to 7 */
+	regmap_update_bits(bc->regmap, LCDIF_ARCACHE_CTRL,
+			   FIELD_PREP(LCDIF_1_RD_HURRY, 7) |
+			   FIELD_PREP(LCDIF_0_RD_HURRY, 7),
+			   FIELD_PREP(LCDIF_1_RD_HURRY, 7) |
+			   FIELD_PREP(LCDIF_0_RD_HURRY, 7));
+
+	/*
+	 * Enable the MEDIAMIX bus clock and de-assert its reset so the
+	 * internal AHB/APB fabric is up before sub-module access.
+	 * (Mirrors Linux kernel imx8mp_media_power_notifier BIT(8) writes.)
+	 */
+	regmap_set_bits(bc->regmap, BLK_CLK_EN,  MEDIAMIX_BUS_CLK_RST);
+	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, MEDIAMIX_BUS_CLK_RST);
+	udelay(5); /* wait for ADB handshake, as Linux kernel does */
+
+	/*
+	 * Enable LCDIF2 clocks and de-assert its reset within MEDIAMIX.
+	 * Without this, LCDIF2 registers are inaccessible (AXI bus hangs).
+	 * (Mirrors Linux kernel imx8mp_blk_ctrl_power_on for LCDIF_2 domain.)
+	 */
+	regmap_set_bits(bc->regmap, BLK_CLK_EN,  LCDIF2_CLK_RST_MASK);
+	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, LCDIF2_CLK_RST_MASK);
+
+	return 0;
+}
+
+static const struct imx8mp_blk_ctrl_data imx8mp_media_blk_ctl_dev_data = {
+	.max_reg = 0x138,
+	.probe = imx8mp_media_blk_ctrl_probe,
+	/*
+	 * num_domains intentionally omitted (= 0): skip GPC power domain
+	 * management for the media blk-ctrl.  MEDIAMIX is already powered
+	 * on by the boot ROM/SPL, so no GPC sequencing is needed in the
+	 * bootloader.  With barebox deep-probe enabled, lcdif2
+	 * silently ignores the missing genpd provider and probes directly.
+	 */
+};
+
 static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
 {
 	struct imx8mp_blk_ctrl_domain *domain = to_imx8mp_blk_ctrl_domain(genpd);
@@ -273,12 +344,6 @@ static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
 		return ret;
 	}
 
-	ret = imx8mp_hsio_propagate_adb_handshake(bc);
-	if (ret) {
-		dev_err(bc->dev, "failed to propagate adb handshake\n");
-		goto bus_put;
-	}
-
 	/* enable upstream clocks */
 	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);
 	if (ret) {
@@ -287,7 +352,8 @@ static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
 	}
 
 	/* domain specific blk-ctrl manipulation */
-	bc->power_on(bc, domain);
+	if (bc->power_on)
+		bc->power_on(bc, domain);
 
 	/* power up upstream GPC domain */
 	ret = pm_runtime_resume_and_get_genpd(domain->power_dev);
@@ -322,7 +388,8 @@ static int imx8mp_blk_ctrl_power_off(struct generic_pm_domain *genpd)
 	}
 
 	/* domain specific blk-ctrl manipulation */
-	bc->power_off(bc, domain);
+	if (bc->power_off)
+		bc->power_off(bc, domain);
 
 	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
 
@@ -380,6 +447,35 @@ static int imx8mp_blk_ctrl_probe(struct device *dev)
 	if (!bc->onecell_data.domains)
 		return -ENOMEM;
 
+	/*
+	 * Skip GPC power domain management when num_domains == 0.
+	 * This is used for blk-ctrl instances (e.g. media) where we only
+	 * want the regmap/probe side-effects and not genpd provider
+	 * registration, which could trigger GPC power-on sequences at
+	 * unexpected times during boot.
+	 */
+	if (num_domains == 0) {
+		/*
+		 * For the media blk-ctrl we skip genpd provider registration to
+		 * avoid triggering full GPC power sequencing for every consumer.
+		 * However we still need the MEDIAMIX domain to be powered before
+		 * accessing any of its registers (including blk-ctrl itself).
+		 * Power it on via the "bus" domain and keep it on.
+		 */
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
@@ -461,6 +557,9 @@ static const struct of_device_id imx8mp_blk_ctrl_of_match[] = {
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



