Delivery-date: Mon, 09 May 2022 13:38:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1no1iW-0076OU-U5
	for lore@lore.pengutronix.de; Mon, 09 May 2022 13:38:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1no1iV-0001Pz-4o
	for lore@pengutronix.de; Mon, 09 May 2022 13:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQ+1GPYLXfIAUDOumC5+E4kNG5h1pLQd2YdMxw4NEWw=; b=oDYyoa/TBFsq5u
	tDddJbXXAgkCwa93PpfYDSeqN/B2Ds2Lw5OSBXyqGtTmeRYF+bFst53ZpSB4FVy5TgGTBnSHfzXad
	LFhr1mlwO+luMQld+sKLbjzUFVxa+CKs5Hz+qB9K2SISqtjrKN+BYIqKNmTey8C++ArI6kny92mTs
	BW1hVe5HMaJJ1G6mUMyXKv4dyZZejYfe90g2mAMbDmi2C8RT/+K7uGBRTlkHlKcnczfX1YUPbZog7
	iItFe+lyJFYFRYhMSlJmoOvTKRijiCauI4Oru+JVt5cxfpO7RYZjfkfGrlN2HJn0KgO4VI9FPo+KA
	o6ZFOV1C+/xgCG+vHyaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no1gv-00E85p-T7; Mon, 09 May 2022 11:36:42 +0000
Received: from mail-db8eur05on2080.outbound.protection.outlook.com
 ([40.107.20.80] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no1gq-00E84T-RD
 for barebox@lists.infradead.org; Mon, 09 May 2022 11:36:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QfwfxHeqGybh5pe+aTweiBx4zgZhGvZnjBuLB0EP1KFqGcmgbECSb4Akw7sbzvPprUfK7mqBUEmuflmNkF2sHtV5/2oLjyffceYLahqaNIK+m5M3bzNTRj11nrEWUDw1rHm/w2MwLVUnaJ7txsd9MRbQYVEdK2Ok3V9ukvK0eDQbdKSKR9BURnI13mO5gNjAGt1MOCiZR7Vjz07s9py0LWYK7FdfcBje+TekX6qGqoPYY3ANS3WlR5LnqcUorp+I55nBOFu13Qp5i80uKOCq0TVBw0tDiV7sbl4a2hlIdFZcbJsjr+iCW1cyS/Dj+RCGvbFrwtLuSA7sSDdRrNy7zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ygaAOr5mTTBsnAiP2UovPCGPDcfzwTkLY2CMJXYdM1M=;
 b=N3RaVwQMzhG/pN1pvy5ERTG97A0yYlG0LragWYJgEzXak77NsDHr1f621Mjcl0GnPPH85TTmhANCvZ6L6MJ210q2ams12wbqwMg4bGfMu/DRIoM12cyLA/q21uCvnFxAUxLxmtkMd2H4bgwcCavS90wGEO0ijuM4wj3gWVddOW2zbIa8WFr9qzPVRkExnOdJlOwbIckRvC3rPDA5aNFEAdVbZVz6ZmPOc+fZwHrHg5c0h7PBXjydkeM4S1igBSxfBDP09VZsZhteNWZ8gs24VLpwdhgRjaSmFAZMOjYHdCZPwdT9wLX0azPxgr9udfh0xRGhuPqNZAa1tZv7RAvBlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ygaAOr5mTTBsnAiP2UovPCGPDcfzwTkLY2CMJXYdM1M=;
 b=vCYSKiDye6/s3OaSMNA1pC90YQpt8YwE9y97pAJgfS/7owW1GVVlRwagrYkQr3x0bNgpweUT9wGI7r3k6iLq7yHN2asq0KvMK3ok0+LGyq3rqWtcf0/1brNK2sfNsEiOKZm4j+NQjF+hAJ6z5w4fVw4syGkRwvWGeZomc9w9rUQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4348.eurprd08.prod.outlook.com (2603:10a6:10:cc::10)
 by VI1PR08MB3023.eurprd08.prod.outlook.com (2603:10a6:803:4e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.21; Mon, 9 May
 2022 11:36:30 +0000
Received: from DBBPR08MB4348.eurprd08.prod.outlook.com
 ([fe80::fdf6:eff9:d68:ea9]) by DBBPR08MB4348.eurprd08.prod.outlook.com
 ([fe80::fdf6:eff9:d68:ea9%5]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 11:36:30 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  9 May 2022 13:36:17 +0200
Message-Id: <20220509113618.1602657-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220509113618.1602657-1-michael.riesch@wolfvision.net>
References: <20220509113618.1602657-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0111.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::8) To DBBPR08MB4348.eurprd08.prod.outlook.com
 (2603:10a6:10:cc::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b957dd1d-19cf-4066-612f-08da31b02922
X-MS-TrafficTypeDiagnostic: VI1PR08MB3023:EE_
X-Microsoft-Antispam-PRVS: <VI1PR08MB3023B78D0632C9C5D8569866F2C69@VI1PR08MB3023.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u/MeVeE9n8JSL69wdGwuVRwFyfpUZHVihPC2ZMjJOM8iu6t3ULafaEwXmVNPN8pA++A0FnqSxahcmeRQ4Od84UyCDVRyQ8aTO+Ru+RO2GFMvFzrvSMIWUDVFapD1T49KPStL5ildr+dW2lhh5Js0hRAS3/JJsLtzksdX50opDcIdLpxtxBSoKwZrjG36kAINcyaFtU6kuhSKFWViuGiTnriJCLU8uJTWqpGrzIqlgDe944Mw3jtn5jiskwPhm9S2Jw8zVM0AzIcs+neIDVw1dfzTCQTfAjNP4nKV6Op1mrUxGEM5gc+fS6YWJRXN97hcSc7/V7Zvz41aXw7G9nGHADoXNQYgm3PgmHJhdxw8gXpqC0CVEdZNpFT8X6Jc8FzwyIEH7nrKX86n/rCfOycqMlryFpd4B9ESOG5MSvPUU9EUD0HFflFA54JTz/YAhTcN95+lLgr+vXN3WzDfrosT/DLWzC8rN2TsgR1I4ZpmhxabuNAB1iIvA5aztw8Rr9Eew/MqIXpq28awHn6u0MUjhLtWQzMRxtR6wPSEsDdNkeB7txIlELnQkmU6fm9BPosq62wFngH93Yl6gGG6Uoz2srleNQjMqOkslewIOWVELVPoUeykJ1oxuOOeQNkHcqgMB6mgBbQ2B05AsnLpZksxlw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4348.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(54906003)(8936002)(2616005)(4326008)(66556008)(66946007)(6916009)(316002)(66476007)(8676002)(6486002)(38100700002)(107886003)(1076003)(86362001)(6666004)(2906002)(6512007)(6506007)(52116002)(508600001)(36756003)(44832011)(83380400001)(186003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yw2Kk8Ph8/12woAGAPIJVvmS4neTAAD54kbfNliym1QsUXpGA0GEMsp1zBRI?=
 =?us-ascii?Q?TPLW+Zw2p3JelAO2Umh+BS3aa6jSwlUXD5Kjf23V6LtHPGMFJV/0n2z+pkXS?=
 =?us-ascii?Q?vfVeS+2Ysml7p73RbNaZc6dBSkyoXuk4En+1SfeIuJFcJnFzT0vQLcRt8WcE?=
 =?us-ascii?Q?vJ1BtbyynMuKmJXEQQ0kK8NA2JF3dEacAgy8OJl9yLEYoZmEqRItvuffR5Qt?=
 =?us-ascii?Q?ccP0uvqpKrH1TFxBReP1vhdMbJ/WIWazl6p13R0xIOZgSe2IS39DxzOEkPat?=
 =?us-ascii?Q?U9bsgAfupgj/GzdYTfbm1QUxwwIsLPF7s7Ll7BAHYJdQ3Ap8kv/zGlEn2PlM?=
 =?us-ascii?Q?de+uESRjkYUlqZHNurakWFpEhx9vOONyiDoG2dMmRaNHhk7ccmoA1psjjZwZ?=
 =?us-ascii?Q?kr3lR3cRg0jtT+rcsNQ7XxxaXX7j6ter8Gf8VCdJrLaZOQElxoyY8hsffE/1?=
 =?us-ascii?Q?vrcrcCRRKABhNX8bOaFXsyR8YGLbbhDOALFZmNY+OI0115kladZKvJunNr3Q?=
 =?us-ascii?Q?j+HisLodMC53tXo+cC4wsDLsVbw7aqcOT5V1xainBUVO2lskU/pS4XmohFHh?=
 =?us-ascii?Q?R3NP+HeZ7uuTcszMtabIxnWoU+3Gc1tmvVlMAWowiGhJ+TLuwJkxF0ZoMpYg?=
 =?us-ascii?Q?RodQ3mimdnff33Tjhgdudgy/UZfg/iOfaRXiDPjHw5/xNQZYEKn0Dog7s/MW?=
 =?us-ascii?Q?w379hBS5f3ekFHQRG8JvZlAoUfHBEQkAGpSz2fZNUec03MhS0w66NxvIXn5I?=
 =?us-ascii?Q?7h5Veewe4h3cBaqG+vMZvgXFz4CX9Ui+01BOduvZZpbrAjzeSldjGu3mX3Dc?=
 =?us-ascii?Q?7o16EmBoe9JK4D2mPDYO2KJnc+wpsKS61nfgcTIpC8H1oupJ+VSOZRTQIUZE?=
 =?us-ascii?Q?KEFufWhSZ0VqPE29koq/k0jXffPhGgUmyMfv1vykmZuH8IuLyX71QVjbWQ3S?=
 =?us-ascii?Q?kJNQ1A8usXIrWS7btEwitaLGIrhiQGV7HNbqA3Qb001EeVUpFq5nBTux4e7B?=
 =?us-ascii?Q?G/3hO9dZucrr9VTIrzBmF3hmJUyx6uhG5mTwbtrvZmrJCjXXV2e7u/frzhMR?=
 =?us-ascii?Q?th/E22IT4FiG0ItLyly48rDDDn2mEQ05YDvZ6+KcV9gx+4JSZjANw5a8cwOl?=
 =?us-ascii?Q?a/Qi8t2BvzJdfGDB/AhielYnsXEzI+rrd34q2GncgbEgIEL6VInMnC2kHLqh?=
 =?us-ascii?Q?JX39y3d06cYdE/2cPePCsKzzIFN+GLag1IstnKdm3e3KgxIsOf3BsfJmb+hl?=
 =?us-ascii?Q?S8V4lEC61gnvULrw/IR5MJ4WNMMJaOABhpLqvXhXYDDY8mEF5rtBa50wVZ/n?=
 =?us-ascii?Q?59PYAmbZjfVOI9b5Lep7CtT/AOCt9WIKKBp2SY6xyExACmkj8gMUTmpKAZpx?=
 =?us-ascii?Q?vofLH+z23fm8MWfclN5MuvNzwtW8esngVtXlvNXyMT0pxQdOKROhm76ZitYc?=
 =?us-ascii?Q?Alu9yi2wK8GIxyuS0AnsVyagJfEKJlSWcaGdcztkWxgBDcuhmdIhawmm0O9s?=
 =?us-ascii?Q?0PvVUWM16lgLzlITK3P4tV5KY03n7iRppWVPHEWaRtzsSyzWpjLNKtxVwQat?=
 =?us-ascii?Q?Wx0bkl5GQB/YvHcy1LA6F+vY/uFSvhSZUILCH6vZnSyzLYGGaUHAY3siAy8z?=
 =?us-ascii?Q?uc14kb1i8Zlm9Do6lkbjYnvjzzlZueMpBCCEMX1rhpWP0oO9HHjCLDiHYGKo?=
 =?us-ascii?Q?qWZjcf6OAudqG5ceHv1SOSH7ZOFWYVS+g1Vn0cu7/ijtOc1pNKu1AI0QvIRz?=
 =?us-ascii?Q?dGE+gdJDLlSovUT8EeJ5QocL+qPgBv5/RZhBDWlRMZvxAFo26QP6E59QTxhq?=
X-MS-Exchange-AntiSpam-MessageData-1: Uzzf1uNp9HIauuylTey/Pn4yIX+OZDAoQlYfSrGXsGoeq1OyoWdhv3Pi
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b957dd1d-19cf-4066-612f-08da31b02922
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4348.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2022 11:36:30.1564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 50PyUTSYg5/MVv/ac+4+mUsunESuv9DPUWFBwxxXXNBGbA2cljZDy19wOAcYMcbaMhJN9zi5LL7hWnEvfsk8tL6JApM8WDtwQrYT0v474BA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_043636_906581_0BB71952 
X-CRM114-Status: GOOD (  12.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] phy: rockchip: align naneng-combphy clocks and resets
 with binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There was no device tree binding in mainline Linux when this driver
was introduced in barebox. This has changed in the mean time, hence
we need to align the clocks and resets in this driver.

This step is a prerequisite for replacing the initial rk3568.dtsi in
arch/arm/dts with the mainline Linux version. For compatibility, the
former is updated accordingly.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/dts/rk3568.dtsi                      | 10 ++++------
 .../rockchip/phy-rockchip-naneng-combphy.c    | 19 ++++---------------
 2 files changed, 8 insertions(+), 21 deletions(-)

diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
index 0f19d3f0c0..28121dbdf3 100644
--- a/arch/arm/dts/rk3568.dtsi
+++ b/arch/arm/dts/rk3568.dtsi
@@ -367,11 +367,10 @@
 		#phy-cells = <1>;
 		clocks = <&pmucru CLK_PCIEPHY0_REF>, <&cru PCLK_PIPEPHY0>,
 			 <&cru PCLK_PIPE>;
-		clock-names = "refclk", "apbclk", "pipe_clk";
+		clock-names = "ref", "apb", "pipe";
 		assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
 		assigned-clock-rates = <24000000>;
-		resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;
-		reset-names = "combphy-apb", "combphy";
+		resets = <&cru SRST_PIPEPHY0>;
 		rockchip,pipe-grf = <&pipegrf>;
 		rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
 		status = "disabled";
@@ -383,11 +382,10 @@
 		#phy-cells = <1>;
 		clocks = <&pmucru CLK_PCIEPHY1_REF>, <&cru PCLK_PIPEPHY1>,
 			 <&cru PCLK_PIPE>;
-		clock-names = "refclk", "apbclk", "pipe_clk";
+		clock-names = "ref", "apb", "pipe";
 		assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
 		assigned-clock-rates = <24000000>;
-		resets = <&cru SRST_P_PIPEPHY1>, <&cru SRST_PIPEPHY1>;
-		reset-names = "combphy-apb", "combphy";
+		resets = <&cru SRST_PIPEPHY1>;
 		rockchip,pipe-grf = <&pipegrf>;
 		rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
 		status = "disabled";
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 445703ecd8..2d86d86334 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -83,7 +83,6 @@ struct rockchip_combphy_priv {
 	struct regmap *pipe_grf;
 	struct regmap *phy_grf;
 	struct phy *phy;
-	struct reset_control *apb_rst;
 	struct reset_control *phy_rst;
 	const struct rockchip_combphy_cfg *cfg;
 };
@@ -317,17 +316,7 @@ static int rockchip_combphy_parse_dt(struct device_d *dev,
 		param_write(priv->pipe_grf, &phy_cfg->grfcfg->pipe_sgmii_mac_sel,
 			    true);
 
-	priv->apb_rst = reset_control_get(dev, "combphy-apb");
-	if (IS_ERR(priv->apb_rst)) {
-		ret = PTR_ERR(priv->apb_rst);
-
-		if (ret != -EPROBE_DEFER)
-			dev_warn(dev, "failed to get apb reset\n");
-
-		return ret;
-	}
-
-	priv->phy_rst = reset_control_get(dev, "combphy");
+	priv->phy_rst = reset_control_get(dev, NULL);
 	if (IS_ERR(priv->phy_rst)) {
 		ret = PTR_ERR(priv->phy_rst);
 
@@ -579,9 +568,9 @@ static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
 };
 
 static const struct clk_bulk_data rk3568_clks[] = {
-	{ .id = "refclk" },
-	{ .id = "apbclk" },
-	{ .id = "pipe_clk" },
+	{ .id = "ref" },
+	{ .id = "apb" },
+	{ .id = "pipe" },
 };
 
 static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

