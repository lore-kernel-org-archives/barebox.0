Delivery-date: Tue, 02 Jun 2026 08:09:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUIJs-001UJE-04
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 08:09:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUIJr-0002bY-2o
	for lore@pengutronix.de; Tue, 02 Jun 2026 08:09:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MnGVQ8h3du3/tpI9jfPp+23KKCCppcOWRVOqiqx7BaU=; b=iQ0yCRQtYZ249VWh8tmessuJRm
	lCJ52TpofrhPDgrGjG3mYvzhX1b4j7exvh7hUsw86TghXop03B8CKgmq/CpBiJ1VvnIZ0MyP3FVl5
	qKrJRy4Ryjx7voi+5ghWChwQM0LqrWhmmmX3EY1Nki/fctDKPYYxvaIIQcsRPSeyDuWbTy9aCE4Cv
	MJfvVmAJzt6/FeJQEI2HwXy6CGnD8Lu0UpQPC7U+iCntReC6X+vL25pr9ldEUa50JzKhGuJApmTxe
	X/p77FPx0nysbQeo2un4yrP3X1RGWWprEDNWICgxm+qsrymUhmylOZm+6Kum0+X2i3tpeGF9Jqk5U
	EZVRZJbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUIIg-0000000CMoZ-3EIg;
	Tue, 02 Jun 2026 06:08:30 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUIId-0000000CMoD-1GzT
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 06:08:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A3kGe7U4LU6GmbEBRcKPaxPOtt7rSJreKx5FELZUQjPkAIqVlFcabswaNWIaLT6+pIiEMjSB9s5uLsESFwC35L/6HFM3tbZpHsufPIqOzDvSpcC/GcB/Uau3alG6itBfbDNOR36mWoU5isWVvaWmLX29AXko1nA63d/NNJgCCSzz3amli7paiFEWcpyXB/m7Nt05cC38GSz2PizXxX50ti40SSbsWA0lPDneVqye6eShiBm3TQaumT9LpiSOaT1Y4hlwa3hR74r9C8+o7rXBgYUUe3MpV6rgYC9OP8Aux5pB5QVjdXU2XCJjXCp6AEYNzsf53VymxFm/GPjtBhKiiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MnGVQ8h3du3/tpI9jfPp+23KKCCppcOWRVOqiqx7BaU=;
 b=l5BVYlk12Dzt1xIACO5WK6z6jABmsihVXt6kZxTBFMadQB8fo18J9HBYTmcAU7saa9iNibSIX/sSXpVG1zPJ/Qk67QlQnGfXGqo/Lrmd1AndNKI3HJ+QxWUx8h/fZWIQE0J2pNjTCD/xPdr1foWCM1zfJh99DI3eslCvQzI8AbuAUOwhPunSPPJ4xZJd3U42W6ZQvz3Acs+H5CKZ8TTUAQJnAeutvv/w5cdWXJozNZgEcgxNRtP0fqJrfWQS5OOmLnoAb6+KX/Iku0FUzlMz35Mxao4fuFTd8x/lckFeoqzrTVKH4trW4LXvuW0sZ0q2oHNPfdbaYz/rOqhw7ig7TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MnGVQ8h3du3/tpI9jfPp+23KKCCppcOWRVOqiqx7BaU=;
 b=F1H+oxIGRpktI8SI+JQGbjimsBMfFe2SmQkiQ/T9mHnAcOZrnxNOEGajb96LBCxNvS1tzqb0Qey/ewVm763mN/fNRWRe4+s4ejM3KiREgY/qzh9QCJrNHPmAuncwGScaZNExTm1HZkg2cWKV8CbBJUbG8kHfXagFmRsSb9k7AAs=
Received: from CWLP265CA0484.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:18a::20)
 by AS1PR06MB8489.eurprd06.prod.outlook.com (2603:10a6:20b:4df::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Tue, 2 Jun 2026
 06:08:20 +0000
Received: from AMS0EPF000001AF.eurprd05.prod.outlook.com
 (2603:10a6:400:18a:cafe::b) by CWLP265CA0484.outlook.office365.com
 (2603:10a6:400:18a::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.71.17 via Frontend Transport; Tue, 2
 Jun 2026 06:08:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF000001AF.mail.protection.outlook.com (10.167.16.155) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Tue, 2 Jun 2026 06:08:20 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 2 Jun 2026 08:08:20 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Tue,  2 Jun 2026 06:08:18 +0000
Message-ID: <20260602060819.1646815-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Jun 2026 06:08:20.0183 (UTC) FILETIME=[36074E70:01DCF256]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001AF:EE_|AS1PR06MB8489:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ca20d272-14e4-4297-779a-08dec06d58a1
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|82310400026|36860700016|1800799024|3023799007|6133799003|11063799006|56012099006|18002099003;
X-Microsoft-Antispam-Message-Info: RAUAQBgg9XGQ5rFIaFtG4OhlOsdbqNOvpnc5ee1W3SoPKwnhGGO1IEFmFILM60dXbI5o9I7KtASCAU7Tbg+EkKQKKzg7SFkxXecjmhqzUlhLRrefMmfBdxjOWa4gF09VNUC+MJYUUwJoE772vUj54l6s1E+pQkb5UVP85Z+m3CuqNhsxtKhlvzw09IwjGFj/AWqw6TchOkAakXviBeTqC0g4MrCYeY9jx6RJjsTCwNWhI00wuzzlz2JDDyw51v8V4Hju9VBeWIXeCquo/i1GZbHaNuOHKMpjIVSOQlyw9efy/T8l53ro7NnffTpp7AKZ943iG/A2BlrWUx8FbiRgUgWs1JyZK2V74RjrWyku9BWsjqqRM4UGF6cX9XB8X57FWaBKY43yaks6iWm2TONFm7LG5jRTkG18FLSyeZAuQX/rQ88gj+vXGj0QYRhnCP9ucyBLGkex9rwVVdxvZQOUPhd/ei0S1BqjlTQTCvEyPjwkMHbA1vQdBJMEdo/zfAEucrpb/DQhBM7g3N3zXiF5bjcovl9kqzsMFeq0YNVpjd37hY7cVi4IaHasIgtN+IsNSuNUsIS2+4lnElurcgSTLjz/qSuano+Ce0lTpQhIjBRuKr1AgSYEHBFNSQPXHxVB7oO4lAky7kKPN/nfG1KxF7kjpqPZhcBP2BnE7I/8Wvhs4Bg14uj88/jB/QnWLfObwodNmwvF22BmSeq6y199c7tPQ3faGEjnSUKw0R1AwS8=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700016)(1800799024)(3023799007)(6133799003)(11063799006)(56012099006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: XL2/D95u7R3SxLlxW3a7fNEUrWUl5fdmHgGIaYJKdHE1xLNXV3X/NL7M3zXoJNe24SSzb25nJlBKLpNod3wPdaLW/JK8UhkHBwgUv3+7tI9COLLGVU2wfprIJzcdI/temWtR6/LmqHXKjOgnVPCkzW0AXfSNmlqQdCq1OJOJZ8/+x4N9HBbtQI+L88MWYJ6QSc1M4UiWYQQP6vOcaH1y3Vw/+VNy4uwAIzgld+clBNJO3U3YdWVX/mE4V0xsaN57kl6P6byOAlFmNw+K/9VTuNJW8xR3NegDmtp0GvR5mFoxZid9kk2PR/3eKa4R4PBJO5bEWIhOS8U1BC3wL4vJAdYmRgpkXGtA555HFB4+nB9j6wm5ru8Ayajh61BY/+9zI5R7sCfuTQIG/ZE8wsaq20EwJxXqAFqgMmYvVopYKEXZmBd3r8dwF9a2tsvV5KMc
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 06:08:20.3753
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ca20d272-14e4-4297-779a-08dec06d58a1
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF000001AF.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR06MB8489
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_230827_403776_C2F56906 
X-CRM114-Status: GOOD (  13.72  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] lib: logo: support a single pre-rendered logo file as an alternative to SVG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a "Logo source" choice that switches between the upstream behaviour
(BAREBOX_LOGO_STOCK -- render Documentation/barebox.svg at build time
with ImageMagick) and a new pre-rendered single-file mode
(BAREBOX_LOGO_FILE -- include one PNG verbatim, no conversion).

The single-file mode addresses two issues for vendor-branded splashes
on fixed-resolution panels:

  - The multi-size stock options can be combined; e.g. enabling 640
    and a hypothetical 800 variant in parallel embedded both blobs,
    even though only one is ever displayed on a given panel.  The new
    BAREBOX_LOGO_FILE selector replaces all of the BAREBOX_LOGO_<size>
    flags with a single configurable PNG path -- exactly one logo
    blob in the resulting binary.

  - It removes the build-time ImageMagick dependency in the
    custom-logo path.  CI environments where Inkscape and ImageMagick
    versions drift (see the SELF_CALL=xxx Inkscape workaround at
    the top of cmd_png) can produce a pre-rendered PNG once and check
    it in.  Stock mode keeps its existing convert(1) chain.

The new symbol is barebox-logo-custom; the resulting bblogo blob is
embedded under __bblogo_barebox_logo_custom_{start,end} and exposed at
/logo/barebox-logo-custom.<ext> in the running barebox.

CONFIG_BAREBOX_LOGO_FILE_PATH selects the source PNG, relative to the
barebox srctree (default lib/logo/barebox-logo-custom.png).  The
existing BAREBOX_LOGO_64..640 size options remain available, gated on
BAREBOX_LOGO_STOCK.

Upstream-Status: Pending

Assisted-by: Claude Opus 4.7 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 lib/logo/Kconfig  | 35 +++++++++++++++++++++++++++++++++++
 lib/logo/Makefile | 19 +++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/lib/logo/Kconfig b/lib/logo/Kconfig
index 7e5a6fcb63..ab64ce242d 100644
--- a/lib/logo/Kconfig
+++ b/lib/logo/Kconfig
@@ -35,6 +35,30 @@ config BAREBOX_LOGO_QOI
 
 endchoice
 
+choice
+	prompt "Logo source"
+	default BAREBOX_LOGO_STOCK
+	help
+	  Choose how the boot logo is produced.
+
+config BAREBOX_LOGO_STOCK
+	bool "Stock barebox logo (rendered from SVG)"
+	help
+	  Render Documentation/barebox.svg at build time into the sizes
+	  selected below.  Requires ImageMagick's convert tool in the
+	  build environment.
+
+config BAREBOX_LOGO_FILE
+	bool "Pre-rendered logo from file"
+	help
+	  Use a pre-rendered PNG as the boot logo, taken verbatim with
+	  no build-time conversion.  Suitable for vendor-branded boot
+	  splashes; no ImageMagick dependency.
+
+endchoice
+
+if BAREBOX_LOGO_STOCK
+
 config BAREBOX_LOGO_64
 	bool "include 64x32 pixel logo"
 
@@ -50,4 +74,15 @@ config BAREBOX_LOGO_400
 config BAREBOX_LOGO_640
 	bool "include 640x320 pixel logo"
 
+endif # BAREBOX_LOGO_STOCK
+
+config BAREBOX_LOGO_FILE_PATH
+	string "Pre-rendered logo path (relative to srctree)"
+	depends on BAREBOX_LOGO_FILE
+	default "lib/logo/barebox-logo-custom.png"
+	help
+	  Path to the pre-rendered PNG, relative to the barebox source
+	  tree.  The file is included as-is; drop it at this location
+	  before invoking the build.
+
 endif # BAREBOX_LOGO
diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index 9792a4699f..7bd7fbb352 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+ifdef CONFIG_BAREBOX_LOGO_STOCK
 OPTS_barebox-logo-w64 = -resize 64
 bblogo-$(CONFIG_BAREBOX_LOGO_64) += barebox-logo-w64
 
@@ -14,6 +15,14 @@ bblogo-$(CONFIG_BAREBOX_LOGO_400) += barebox-logo-w400
 
 OPTS_barebox-logo-w640 = -resize 640
 bblogo-$(CONFIG_BAREBOX_LOGO_640) += barebox-logo-w640
+endif
+
+ifdef CONFIG_BAREBOX_LOGO_FILE
+# Strip the Kconfig string's surrounding quotes.
+barebox-logo-file-path := $(patsubst "%",%,$(CONFIG_BAREBOX_LOGO_FILE_PATH))
+
+bblogo-y += barebox-logo-custom
+endif
 
 obj-y += $(patsubst %,%.bblogo.o,$(bblogo-y))
 extra-y += $(patsubst %,%.bblogo,$(bblogo-y))
@@ -62,6 +71,7 @@ endif
 
 CONVERTOPTS += -background none
 
+ifdef CONFIG_BAREBOX_LOGO_STOCK
 quiet_cmd_bmp = BMP     $@
       cmd_bmp = convert $(OPTS_$(@F:.bmp=)) $(CONVERTOPTS) $< bmp:$@
 
@@ -76,6 +86,15 @@ quiet_cmd_png = PNG     $@
 
 %.png: $(srctree)/Documentation/barebox.svg FORCE
 	$(call if_changed,png)
+endif
+
+ifdef CONFIG_BAREBOX_LOGO_FILE
+quiet_cmd_logo_copy = COPY    $@
+      cmd_logo_copy = cp $< $@
+
+barebox-logo-custom.png: $(srctree)/$(barebox-logo-file-path) FORCE
+	$(call if_changed,logo_copy)
+endif
 
 quiet_cmd_qoi = QOI     $@
       cmd_qoi =	$(objtree)/scripts/qoiconv $< $@

base-commit: 81fbe2e8d0d445032498a0bfecf9fd270f00985a
-- 
2.43.0



