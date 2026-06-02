Delivery-date: Tue, 02 Jun 2026 06:11:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTK-001SVn-05
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 06:11:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTH-0000rX-V5
	for lore@pengutronix.de; Tue, 02 Jun 2026 06:11:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ZcQjbTnY10GWBVQtS7cGhfC5I0L++WKnXrswWuwuJ8=; b=gwFdTIIzKONo8+1tdrVdnWrtVd
	NtRO7X/USCZ47pn4IPcgNtTR12P+4xFqnZV4wsjLb3B6zTBlM5Jpry/zlH+TWuQRfYwo4C0gPb0C6
	Lsr/IPX/yk04Bgjwh/Yf3KvsbpvwWdV9r77+c33O/oodHRH++3vA98r7dKu8ePKKbD2DjYdjh8AOn
	5kCVEqLOi77yGAzPS6YxZPbfFitSrNyR6TYprSnM4c0ROqBC7oPALO6MphNhdytvd5AYyT989qXfj
	vhn8AZbjZwahsw4FdmYFcI47Xrw6Lj+Ydo9yiVdOzcb2TWox0UOJwWimypzuGOCpj5z/TxQWN207T
	ai0HkwsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGSA-0000000CGID-1QEf;
	Tue, 02 Jun 2026 04:10:10 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS4-0000000CGEH-1JKW
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 04:10:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t/UzkrV4REZnbzdapnEFRIi8DhhZ7agYua4F9OqdTM7kUhxRRNdkXFWj4osfab0716IMCPvcqFUY9Zk02KV0nEH/3FB10nzx2qTk7xdVhEm0SNLVh1BKvRDOAs4tLz+v3NZJdiyYskeQzkevDLt3MrGZmRBbC5qhgVwyRBlQkj0TrTgS3K93WUBfZ8f8skBXXGW5ANnWWHZeBCR+EdXdNr3gJiDEBjVAn9PiwTljKCakKMsuqt1Xk94DShXG1FDR9IOHWl6FRfz3xDOfMxBI833vED/YauQ7k6BsL7yLZy5ryPZUMIbaqlPtiTP9EsitHg6RvI8T1UqnqBVITqhyLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ZcQjbTnY10GWBVQtS7cGhfC5I0L++WKnXrswWuwuJ8=;
 b=XUSri7supjufzJiHXRjWcoFcIo6sMuyAZAqZkY2Nye5km0sczo4MZKb21Trzt8em9ljO6jfdMr7AS1bywnOOsBYXwL4MDLLym5oILvBVHgSvO1BmGU1RBM31/mhrblCAb6MV4oZFUV8dDSm45RV0MSTQy+t5OJPKD4HiyGqIvh0SiBNN/IlleKwRx2+x23QNVass2y38u1CWbnBX8chYZNygEHnJpJfyh9v3uZaoxOTSdPoU30gHAOd3iv8TXGVYxsAX70Ucn5lxczKFeHGokCZhK5tJGhqLcpKAjnjkEwN/F2BnbPCBU/ZDUsZhNTFN8UNJBEE23w+LgwDb27p/TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ZcQjbTnY10GWBVQtS7cGhfC5I0L++WKnXrswWuwuJ8=;
 b=BrKI5Iz8djqAUIv2qASU1WSuw37MPgJWT/EOmzKqUD+I07jVjR8NBQzSbJfM4eSzpMQ9GzMxA6KueS/TX+lAnhi9WrBr1jq/QOZZQ5Lc7osgjQhszOxGu/75P4bDKZ13Swac47t9rTmflqSizpoXCZpwsY0wzBifcNjp8rNF5+8=
Received: from DB9PR02CA0029.eurprd02.prod.outlook.com (2603:10a6:10:1d9::34)
 by AM8PR06MB7460.eurprd06.prod.outlook.com (2603:10a6:20b:354::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 04:09:57 +0000
Received: from DB5PEPF00014B91.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9:cafe::15) by DB9PR02CA0029.outlook.office365.com
 (2603:10a6:10:1d9::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.71.17 via Frontend Transport; Tue, 2
 Jun 2026 04:09:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB5PEPF00014B91.mail.protection.outlook.com (10.167.8.229) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Tue, 2 Jun 2026 04:09:57 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 2 Jun 2026 06:09:56 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue,  2 Jun 2026 04:09:49 +0000
Message-ID: <20260602040953.1060278-4-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Jun 2026 04:09:56.0898 (UTC) FILETIME=[AC240820:01DCF245]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B91:EE_|AM8PR06MB7460:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 3c7c8129-365c-4caa-e780-08dec05ccec8
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700016|3023799007|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 9kqbr85gi0bJ//wW1ThQqTkSfRd0zO5ZHhLpNnF15IE1S/Q7HyPJpUmSsWPux65wvv7pza8JcGUCnoIoLslk7VBH7njXdblNNgKYGebKj5crDrTnJFFETqnFPqkjjFY3d7xyZUSahJ5a1BNXDEKk9VqPQHUufUlJPwFbuVLo1FTBTu8IjJCJzWugg6/Uv0beeICTnso1zYb49o6C4fTd2iKto++pKyyuxDfgIfvduxOOqJyVaQ71fOcILNtnwS4MeuPEL3JCjljpqhlfMeRZL+/jaSU+dzp8aWuXy8zTfS4BS/oTaK/LBIntiVrJsQ7DrSlU+Kq7Jo2vaGyKGDyzYQAnc9ZG3sAsedfZY5D7c40K8yBOuH/8lL9BOa7zhoLJNFp9k5eBw8oiS1K4ElWb5DYRj0u2YF3vnRdcsG3ZUr5Ni3MyQvK4v6ADmnWf8bwOp7qMvn5/atWUW/t2nvhhCSu2vpGGvJopq6iuwtZW5LD2wvGxHYKOzjOoH2GsYuPtY/lUtFwm9oSDdWbbCjzOW7JbIvjzLEF+YDEYjaOZOzMDWoOFAf+c9yBhy08CkLmvXw7BiHVLHv7avjPLhSx8xreouK7r22g4sKmSsxJp8wSV/MeKeWwsu3aeiEEKlNL41+OAWOD5nrDsVoJan1tA9lNyHplMwgJI76Xb1uzgN4n2SrAoVMv6Fy52Ebgcxe6QI4A6AQtyD1vfSbWRCoU2qTQa3h7sg7eovMSa+JeEZrM=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700016)(3023799007)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: yOBRsORe1feCXmuruMd4CKLNFEA7dE58qNCPiW/eJIk1dKWSulBpOkqHF1r4vBVwAvQ7xeyKSWGWUxksVLxFCsPACjuAT6Iw/faj4VhxJf5W+7LLa/lREFrX742DDQio/3tPowX8C9Rd9o/Dfo2I7Y8D17fTQCS3JBYrR3guzpBcorOEcRiKvUQA+khDhoGrX+uatGmujydefHbTXb/cjZtWyHKLZG2TW6tQRb1AdNOIqk4dXNYQ8mWbq/eJMrxpg2o2wCxLpYe3X97pfEFkj14ypciBV2GJGh3jj7UNZZp7eL/Qwkq6GH3kKGrMPYBPIKdNyjMu51YH09bfXN9KQQ+fxeCvC9LQELx6fZizzIQQlJxfOKKIfQhs+mmNo0l4+IHDvvgLGMoZ6KnD0OtGMvNxnULhTBdcanSWkFR689CPNyrwsLQY+wpJpoCRz/3u
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 04:09:57.1360
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c7c8129-365c-4caa-e780-08dec05ccec8
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B91.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR06MB7460
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_211005_712929_6BFBC398 
X-CRM114-Status: GOOD (  12.08  )
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
Subject: [PATCH 3/6] video: backlight-pwm: make power-supply and enable-gpio optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

PWM backlight DT nodes for board displays often omit the power-supply regulator
(the rail is always-on) or use enable-gpios without a supply. The driver
previously treated both as mandatory and returned -ENODEV if either was absent,
blocking display initialisation on devices which use an always-on 3.3V supply
and no separate backlight enable regulator.

Guard the regulator enable/disable calls with a NULL check, handle
-ENODEV from regulator_get() as "no supply present", and use GPIOD_ASIS
for enable GPIO so the initial pin state is not disturbed.

Also improve the "Cannot find PWM device" error message to print the
actual error pointer so probe failures are diagnosable.

Assisted-by: Claude:claude-sonnet-4-6
Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/video/backlight-pwm.c | 16 ++++++++++------
 drivers/video/backlight.c     |  3 ++-
 drivers/video/fsl-ldb.c       |  2 +-
 3 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index d3c81114e0..9c8fcfbe93 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -37,7 +37,8 @@ static int backlight_pwm_enable(struct pwm_backlight *pwm_backlight)
 	if (ret)
 		return ret;
 
-	regulator_enable(pwm_backlight->power);
+	if (pwm_backlight->power)
+		regulator_enable(pwm_backlight->power);
 
 	gpiod_direction_output(pwm_backlight->enable_gpio, true);
 
@@ -55,7 +56,8 @@ static int backlight_pwm_disable(struct pwm_backlight *pwm_backlight)
 
 	ret = gpiod_direction_output(pwm_backlight->enable_gpio, false);
 	if (!ret) {
-		regulator_disable(pwm_backlight->power);
+		if (pwm_backlight->power)
+			regulator_disable(pwm_backlight->power);
 
 		/*
 		 * Only disable PWM when an enable gpio is present.
@@ -148,7 +150,7 @@ static int pwm_backlight_parse_dt(struct device *dev,
 		pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
 	}
 
-	pwm_backlight->enable_gpio = gpiod_get_optional(dev, "enable-gpios", 0);
+	pwm_backlight->enable_gpio = gpiod_get_optional(dev, "enable", GPIOD_ASIS);
 
 	return 0;
 }
@@ -161,7 +163,7 @@ static int backlight_pwm_of_probe(struct device *dev)
 
 	pwm = of_pwm_request(dev->of_node, NULL);
 	if (IS_ERR(pwm)) {
-		dev_err(dev, "Cannot find PWM device\n");
+		dev_err(dev, "Cannot find PWM device: %pe\n", pwm);
 		return PTR_ERR(pwm);
 	}
 
@@ -175,8 +177,10 @@ static int backlight_pwm_of_probe(struct device *dev)
 
 	pwm_backlight->power = regulator_get(dev, "power");
 	if (IS_ERR(pwm_backlight->power)) {
-		dev_err(dev, "Cannot find regulator\n");
-		return PTR_ERR(pwm_backlight->power);
+		if (PTR_ERR(pwm_backlight->power) != -ENODEV)
+			return dev_errp_probe(dev, pwm_backlight->power,
+					      "power supply\n");
+		pwm_backlight->power = NULL;
 	}
 
 	pwm_backlight->backlight.slew_time_ms = 100;
diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index 6d8146ee5a..bf7d40b59a 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -94,8 +94,9 @@ int backlight_register(struct backlight_device *bl)
 struct backlight_device *of_backlight_find(struct device_node *node)
 {
 	struct backlight_device *bl;
+	int ret;
 
-	of_device_ensure_probed(node);
+	ret = of_device_ensure_probed(node);
 
 	class_for_each_container_of_device(&backlight_class, bl, dev)
 		if (bl->node == node)
diff --git a/drivers/video/fsl-ldb.c b/drivers/video/fsl-ldb.c
index 0ab720032c..09804ac329 100644
--- a/drivers/video/fsl-ldb.c
+++ b/drivers/video/fsl-ldb.c
@@ -287,7 +287,7 @@ static int fsl_ldb_probe(struct device *dev)
 
 	/* Only DRM_LVDS_DUAL_LINK_ODD_EVEN_PIXELS is supported */
 
-	dev_info(dev, "LVDS channel pixel swap not supported.\n");
+	dev_dbg(dev, "LVDS channel pixel swap not supported.\n");
 
 	fsl_ldb->vpl.node = dev->of_node;
 	fsl_ldb->vpl.ioctl = &fsl_ldb_ioctl;
-- 
2.43.0



