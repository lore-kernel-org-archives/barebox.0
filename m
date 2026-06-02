Delivery-date: Tue, 02 Jun 2026 06:11:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTI-001SVQ-02
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 06:11:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTH-0000qh-5z
	for lore@pengutronix.de; Tue, 02 Jun 2026 06:11:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c12r4sFInU1U7Z5jiRGy/k0bAmVHAAVqPdgddVgYVQE=; b=cl+cKMFsevNffi7gg9tAfjjB2Z
	SfSjDBaaX8Ch5nRPRnsZWHXbNAgaGDNwvz1JnRD0JiyOa4oViQXuNp2qIu2pH1tmU3ySvstWQXwUf
	wLLW9qYrAf5StczEi25t1oUewv3Zft+9ze7F0wLU3uHlSxOpVXRhwgNNx7j6uKL4FMA/utmW0YRRa
	Btuxr0wHgUOm3Ximk/gUrPbmi9JyqxUZ2wHYvJpLP/I2I6KtEqsS/pHica2+KH6/gbqEKbFV332w5
	5rXkRXqjf3tzRLNAo7tjuQdcnsXDqNf4e9hXGlPl6GNQ8et1en6g7JiK8HEM7Iv2zU8N5B0u4VwO+
	cLVxPxKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS4-0000000CGEa-0PDO;
	Tue, 02 Jun 2026 04:10:04 +0000
Received: from mail-francesouthazon11011056.outbound.protection.outlook.com ([40.107.130.56] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS1-0000000CGDO-0pKV
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 04:10:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y3z1lvJvU7sejzWJaKGScvG6PACxA5IdZP5E6G6ixiTRPtgtjCGYUimur1cCHlqQeasBfedRRBpakR5lyFhE/GkzWF/2t9ZyngSCMcV4lV4hy3745n4f7bvXhw8+3s1E4Sq/AYTzp/CjNyykxCHm9o1zBmkPmmpc1uIXmYPsTFroObjU2gGGYM2eoC3y/IcwnBuA/+iqeTz5/mIf/NZQfyRYCXg5QB8kFrtltNfuyvHyafh8HR6uC/4QCr9vvF9lF6hXTgy6f9L4IptkzP5HlYSWqhhJ/Jg+YJm379QB2qsIOIzLftkQt4SJZ9cAu3nGJ4ljCJgjZQrnw2qWGTRJhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c12r4sFInU1U7Z5jiRGy/k0bAmVHAAVqPdgddVgYVQE=;
 b=kkEoI+1V44bmGV1qmo+AdFItR2U+VW68l6LmWGAVjt7ER9fqWY6T1Ot1PrwyyfdAiXaY7xNnk6PYRXuITEsb0pn+UrSAU9EfhnCUz1WZqb57VSoPbwpwXNuiIqe4gZzo7WAfRkDR/7XrifpkoitMlLRVYdJx5ghUlUWIlFm4bY3eCYN58gLoXI1Ln9dVED2O5QtX0oFgOxth18H1cbB8gpAWhTIfh2oCcYBPGDD37dmpavYBgk7heNaCijVD1ZtI7ndyaNB6KuProkHCWtR83BhLaIP4VhwpVxHK5qadwwpHjtuYOE3Z4Mvd2Tubgci4rp6g4kd6dbqeVDkiXHr55g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c12r4sFInU1U7Z5jiRGy/k0bAmVHAAVqPdgddVgYVQE=;
 b=kcLBCZgmEmCMYmnn9G0/8kK32mM0vFL5KpiAUfyCzD+gFHp7SuLolU9UlBAVysNHgRVzwhdkQJJGY1KkfNROBglWs/mf19jh6+zmhm/uRV4tLqxyagJznxj22LYgXvlLrF9mmSp+BiE+uJ1+/G8LhYP4UgzAmbl/hiH3LkefTxE=
Received: from DB9PR02CA0021.eurprd02.prod.outlook.com (2603:10a6:10:1d9::26)
 by GVXPR06MB11067.eurprd06.prod.outlook.com (2603:10a6:150:31a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 04:09:56 +0000
Received: from DB5PEPF00014B91.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9:cafe::73) by DB9PR02CA0021.outlook.office365.com
 (2603:10a6:10:1d9::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.7 via Frontend Transport; Tue, 2
 Jun 2026 04:09:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB5PEPF00014B91.mail.protection.outlook.com (10.167.8.229) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Tue, 2 Jun 2026 04:09:55 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 2 Jun 2026 06:09:54 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue,  2 Jun 2026 04:09:47 +0000
Message-ID: <20260602040953.1060278-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Jun 2026 04:09:54.0805 (UTC) FILETIME=[AAE4AA50:01DCF245]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B91:EE_|GVXPR06MB11067:EE_
X-MS-Office365-Filtering-Correlation-Id: b3f648e1-f362-4599-8c41-08dec05ccd92
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|36860700016|82310400026|18002099003|3023799007|22082099003|56012099006|6133799003|11063799006;
X-Microsoft-Antispam-Message-Info: YhVdjFQl70pnWKYOFEWse4u97nloLAHioDVMqy0oN7PtnmAwbS2lCqL0Fs4IWZX6CLCcRGh1Hv6rbKmaocQOPMp46Q2YF67xMKeJlYDK/NjRCrdaykYFUd2rxZ1jCBTiqwhEL9ZCBGQnYASNzqWCPwmwzqylEWqHMn4Q0CNADgUC3QWoXVD6X52r5/KfW1atOlrmQtc9s3Vswr/yvklPVepjsI0I0cNrorGxsVlRsHDHjv3OV4Xolp6rcXGVznR8CwMuGZQXmjZxDxI6KQo1NrlR8K0NvwxYMao1nsr8AuQIWdJ/2kr5oitFlJIwxvYCF3b9NNjoSGv7Lm8z9eQS+GCwQ3Ul0e2ai94OgF/HC4sKM5Ng8KZjOAOk65ooXj1VL6kfB6cvkJNXzDBMsXPrLXf/tPZ9WSqy+eNO+3malsJf72Zosvq2cD3EE/kf2e0TZmtj0XhYoq0TXfd4cPPLbMQqm3rZ1sqkApCOJgkFgzR3KevbYydzL3YqaMAawMVJ1N5snQer+FdRJnW5KnkeWExRNYF/93OBLGV7t3uoydfEpyYPmporOtfUrh8dxxhdDttd7LcEMG9ijZHPH1rQaXIMoYBd5GK8S7BNm8VszEkEv1ieMqoT3WgmEH3O+Nb0NlsUjR5QXTNZPT5ebj3sm3MIpcU0yaVO7YB0WSIF7QGOH2gGlAsYdxbd0KIdOn2dozJxLMsjMfso7xSR95p51nnGfnBXyy7S+QJDPHlKLEs=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700016)(82310400026)(18002099003)(3023799007)(22082099003)(56012099006)(6133799003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: TWtC/M+KxaPLai6PmBMzUugAMj1WW6NgYxHaYUJN/vGjfIjNKLKl2HHysCeJHJB4lkeDcGKqZigm8x7n9wITexQPfWis6oYGw/YMHGLg2AYHHgyuih6PzpzkQfXfv9yO05CjmObhSDe5ibd7+sfvo37uIcqKMYXKalbq55v4obV40ay+wD4O9oXUhBVvuCO9GMTUbk4paQPJndchfa+vHfEQVPZ2jIo7vrWrcp/wY/txfid46GFXbquGU3IhA29vfP8J0gUU3zMWxhTqfLQ3tb12Od9EFD58PWlEJ+PPBYUcA59pc4Pm37mOI3FC6Q4URGKiyVAVs5dSP1SmjNy+uuvgcThnib+FtAR3KLY6SiBIKV2qdwjiW8mcuRDSscDq5u+gqh8QSHjwd65X+l4kJbAzqoO17DBjC/90WnPakb4dJUMLKx7hSnYMfYSt3R2l
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 04:09:55.1013
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b3f648e1-f362-4599-8c41-08dec05ccd92
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B91.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR06MB11067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_211001_241285_849431A6 
X-CRM114-Status: UNSURE (   8.69  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] clk: imx8mp: add 700 MHz rate entry for VIDEO_PLL1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

The LVDS serializer requires link_freq = pixel_clock × 7.  For a 25 MHz
pixel clock the link frequency is 175 MHz.  VIDEO_PLL1 must be set to
700 MHz so the divider chain (VIDEO_PLL1 / 4 = 175 MHz) produces an
exact match; without it clk_set_rate() rounds down to 650 MHz, yielding
only 162.5 MHz and causing the LVDS transmitter to output ~743 pixels
per line instead of 800 — visible as a black strip on the right edge.

PLL parameters: Fin=24 MHz, P=3, S=2, K=0 → 24 × 350 / (3 × 4) = 700 MHz.

Assisted-by: Claude:claude-sonnet-4-6
Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
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

base-commit: 81fbe2e8d0d445032498a0bfecf9fd270f00985a
-- 
2.43.0



