Delivery-date: Thu, 04 Jun 2026 08:50:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uq-002Btb-1A
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1up-0007mb-8i
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mYucNXygs/flvaKGQtZigOnivu9D1o0a1jObHWMWWNI=; b=ttN43eJ/N1cfawnyVEJWyHEnq2
	1Y+ICfaRDUKAMk7panBah7s/jFjcygCQswDCNE2xVaHYQazvuqDAA8kGTe3NZWqusM7cjBi5dcUoe
	/hMH0/DgCaJkle+cRQ0eW2o5B+LXAY1zoZqNAidrPU6KvU9Z2g0QaTQ1/V4LlKdoCMuMQYwQhDiWA
	lX8quNaagf1QV1HakWhA4XoSNY1mvXfRvl5KtJITE7AvNrXX/edr1XNgP+dLZgMaj3naNn/1U7avi
	FIL9oZAuTf1IBEMa4H/rNKi5KT0OJpCa8AJjDXGSdHj4spQ+AND9aJVEQlDs04HnMRTTtJupgq2R4
	SYFsjLPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uK-0000000GFE8-3rnU;
	Thu, 04 Jun 2026 06:50:24 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uE-0000000GF5a-1etb
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M4bBUUfWtBLP4NQ5Tl70ywPeIw/x691Mcfk9WeUtRmrs3lUEGIMqYny9nanKf97gsSFgerKNijLNTP3PIucGfOuYGrrdEnU44o2oVUGlgVIuIK6H4sde1pfgpRIvF4YIm/04iISw3vpVjRQIl8cbqMMbQ15K8J0mnpbEIdDNfC4srZe8Cf4doU2igmivETfO/hairsclFNYcXPSDUBrgH2YnFLGxGeVz26SIr6lL36eSAwYiatF0JitXP+QKTMl1yLWt/vTsfGC545l3AZUqIfd7eIywEVlni+uNFDz700I8UjeQT9zWzzHeZh4ypCYyNht1grnhWO7sLBbM3bGJpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mYucNXygs/flvaKGQtZigOnivu9D1o0a1jObHWMWWNI=;
 b=h8hj2ADsp5hUi9vAkd/+QdNb4HEHBVwUyxFoX+gngv2Jl+smOhRAqfy16Ov639IebPHp7xB5IzjQhoHgSMIlvOv8Key5Qm7yg+cE7tZ2p1djiIW0IXPdgxNZ6qRPyDd3bAFF2YCDjT6HxIs8WWNVBKy26OmRu3NkeBTyTM+m1QbVK39JJCezlIzI85TGZJVc1dXsHxj7OK8FWGCxWC8s420h9nDRDRqsvdvLpkveeIKdRlhURi2nvFBAHe8l8SWSo/Irk1ViUFxCcSynSyTdJPfPcP+MxfxYYCpCcMaQIYqlytSpvIUDgv/trawFIMugSH1kLRliGfhKrjOkdpN24g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mYucNXygs/flvaKGQtZigOnivu9D1o0a1jObHWMWWNI=;
 b=BobQFJLLkK8n5s1GufA1y3JT/2R+lhuNeL4c2IqrjwYmtWq2Vuf2k8AawLaUSe1etB1I+xFiTfLa1eQ5WJmJiRhI0+N38wd4Hhg4AUA0UtFF4y+pTX7pdSeJWSJUJfx1CVDHkuHESon/HsQFyDB2iXCr536at1YaDbPp0vBTLNQ=
Received: from CWLP265CA0472.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::13)
 by DU4PR06MB9671.eurprd06.prod.outlook.com (2603:10a6:10:56b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:14 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::68) by CWLP265CA0472.outlook.office365.com
 (2603:10a6:400:1d4::13) with Microsoft SMTP Server (version=TLS1_3,
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
Date: Thu,  4 Jun 2026 06:50:05 +0000
Message-ID: <20260604065006.2933142-11-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:12.0327 (UTC) FILETIME=[64358F70:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|DU4PR06MB9671:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1f90297f-eab0-4d2a-d00f-08dec20587f4
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|82310400026|376014|1800799024|18002099003|22082099003|56012099006|11063799006|5023799004;
X-Microsoft-Antispam-Message-Info: NKt/cxcdbKdqoUe20JmT1NUf/9DCAfBGdGDOVUHV1bHL97OvALtSHvlSfNUaPLd5ISWLKF8hv6PqyQEBL4ck8ce7NDiEACIIJ7oQMBMdjwbDZ3n/Gw70j5atY0/lyk/tS3pPsZR7p2NLbZ/eGmCjonp9t6TIh0Lk1dyKcsqxwlrDyhaak6DzWhYjaREKffO+9uQaQ+JkUZ4gNIMREsAu+j6qJe9Udz78jmHc4l2zZV7JPHd7qGwMRratI/5B4Tsa+7KqZJzkXnKLZHLe4kPl004zW+JWNRNYSPcexl2gJDBCguLcPeUDn73ykALtHcaiQpPlEBspVElB+fj5xO3hfI4nBsWtXQwRCVzia1bpH0G40k8X1+mgMtNvy8dKI5NfxQ7QwzJMYewpAEi7wDMylSA+fEJQO20+gTSUNi6xhplzkcDXBUoJls1aO9pO/9Dq+iq2JwurCjdlI2HemI6S5uSB2U0981dM2iClYsHsQ0zGe3JIuAl6+LH8uGHihQV36gJQ04ue1Nf/srzeF29+HfDuusn9K1IrAJAC3ku05q4C/0P6c3yWpPPjD3kqWbYO+ZY0v27ALE2+3QfphFgoBmY4BhgNMeanFIPTKKRD9zpiFO8K+JtYfwiDldAUH47NNkJZd+kxvdz5zFcWQfYYBkr1/sooLZHJJJA6rhWAhMTn1RC0z+X+YdMYF53XibgDumAuGXS1WsrmkcSx25K/eg8yG+Je+oK2vcV2B+dKmS0=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(376014)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006)(5023799004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: jBHs57JTJKoUYH41d7QOWFrShb3zkLatZ2rpNoNFcNYCmIKLyokyMjuUDBFn0N4Czhx/ZMwOE6YShg+ExEPhPuvVfyoqHwGT0TjVWBZitGPxL0iWZX8SalmNQXYn7AJ+oK/n/aJiB81/uyXTqywWv9yYuj+9Rwwavn+DVg3BdPlxDJ54wEoMhiY9+1XK4gvcsMlv7HIGL0KnZjrucKwV15enTHfZrII2wpPsRJSvE0Zy7tJ1tlG8eC29cUQAr/PSyMbKK9hLoxmgQZ1fwwJUJ1wsSQkJf5/4rmHnqnO25SrNKzictuIhTycah2hNQFb2KlB9fK0bBoxsDr7l0vnfMdBqSpS5DhIbxdf1LxokhWjrUrwaycLJubTncwMU96+yq1xoLwGa3Yr1xufELft8fH/q/b7xTAqq2Z3KICwyXBZldqwFuc4ToibrHmT7ffNV
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:14.4409
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f90297f-eab0-4d2a-d00f-08dec20587f4
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR06MB9671
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235018_463874_2D5D40AD 
X-CRM114-Status: GOOD (  14.28  )
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
Subject: [PATCH v2 10/11] video: simple-panel: support panel-lvds DT bindings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

simple-panel already parses display-timings, enable-gpios and a
backlight phandle from DT, which is exactly what a Linux panel-lvds
node provides.  Unlike Linux's drivers/gpu/drm/panel/panel-simple.c
we have no hardcoded panel tables, so there's nothing LVDS-specific
left for a dedicated driver to do.  Bring panel-lvds DTs in:

  - Match "panel-lvds" in the of_device_id table.

  - Read modes from a "panel-timing" subnode as a fallback when
    "display-timings" isn't present.  Linux's panel-lvds binding uses
    the singular form; without this, the panel reports "No modes
    found" and the display chain has nothing to allocate a fb for.

  - Switch the power-supply lookup to regulator_get_optional() and
    treat -ENODEV as "no supply".  Many panel-lvds DTs omit
    "power-supply" because the rail is hard-wired; the call sites
    already pass NULL through safely.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/video/simple-panel.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 63a032a9b8..66d519425a 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -112,6 +112,19 @@ static int simple_panel_get_modes(struct simple_panel *panel, struct display_tim
 		return 0;
 	}
 
+	/* panel-lvds DTs put the single mode in "panel-timing", not "display-timings" */
+	if (of_get_child_by_name(panel->dev->of_node, "panel-timing")) {
+		struct fb_videomode *mode = xzalloc(sizeof(*mode));
+
+		ret = of_get_display_timing(panel->dev->of_node, "panel-timing", mode);
+		if (!ret) {
+			timings->modes = mode;
+			timings->num_modes = 1;
+			return 0;
+		}
+		free(mode);
+	}
+
 	dev_err(panel->dev, "No modes found\n");
 
 	return -ENOENT;
@@ -162,9 +175,12 @@ static int simple_panel_probe(struct device *dev)
 
 	panel->backlight_node = of_parse_phandle(node, "backlight", 0);
 
-	panel->power = regulator_get(dev, "power");
-	if (IS_ERR(panel->power))
-		return dev_errp_probe(dev, panel->power, "Cannot find regulator\n");
+	panel->power = regulator_get_optional(dev, "power");
+	if (IS_ERR(panel->power)) {
+		if (PTR_ERR(panel->power) != -ENODEV)
+			return dev_errp_probe(dev, panel->power, "power supply\n");
+		panel->power = NULL;
+	}
 
 	ret = vpl_register(&panel->vpl);
 	if (ret)
@@ -175,6 +191,7 @@ static int simple_panel_probe(struct device *dev)
 
 static struct of_device_id simple_panel_of_ids[] = {
 	{ .compatible = "simple-panel", },
+	{ .compatible = "panel-lvds", },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, simple_panel_of_ids);
-- 
2.43.0



