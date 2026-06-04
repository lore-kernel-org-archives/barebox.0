Delivery-date: Thu, 04 Jun 2026 10:03:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV33N-002D7x-0c
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 10:03:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV33M-000229-EE
	for lore@pengutronix.de; Thu, 04 Jun 2026 10:03:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oF+QOa1aGsNTzyUN8TND126dsFtIMRA/lIdiZQVzZL4=; b=wh6/wITxTwVqKvnDWatGm611SO
	xviXzvwJ+PcOwG4nHYRe2xUzlVF74MfLGINrwL+25Mou+YwWolP2k8amqfEtbBSiLqkpYA5qqDjqI
	+mN+Cj+ll8+BwLgIAUBD7IqTjkWZKdll5K5ToMyiPan9sc9TCM76lTZhpyiZTXHKRZv4tDyeH6sjj
	DzOn36ceOWJKLm95l8zVzAJoheeVhW129Wi9PybK1kUiXBXI92bLHUJ6W1LxOASC6ik9iqDy5mywL
	gh2HwhRNonBThsnbQs3dan9ImHh6TmgKxID6TM7QlF/wpnz4HvBzMWUJ/kWsqKs5M9uAAi3DuqF34
	d3TLL3gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uG-0000000GF8a-34zA;
	Thu, 04 Jun 2026 06:50:20 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uC-0000000GF4E-3dCi
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HuICm/VWYaf9gvhtrZg2KySnciV08GCuF2e8fx/ERqHJsH2FKBHioHKqAUIgKXEPz1Z1nZPmQvgk5YU4PI9SePIgc57gPKCkWD/Ty/E+yS4u3OT2KY+XHF4eNL/6/rDF72hhODip1PBzwhDIcKFviF6Gv5AWFHvEqlEOnOaD+YJV1YqqhOzk7Xce00nGy2v4UNYYIYUHNWwUgskuOPCY1KX2AnFB2HJCYiSf8xIVvNLHZFjQSu+UrOkUUJALp68vBfBks32J0pERB2h4N9A0c9uZcXEd5KxzbvGjB96dmemCOV+K2EDX0Iy6TLWWXWfcrg38FWyJoH6irwOzRNabkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oF+QOa1aGsNTzyUN8TND126dsFtIMRA/lIdiZQVzZL4=;
 b=ksAzVuZ+9Zpxh2fMezheo23wghcuyh6q4nAk6gq8F+z228rU/KB/oltdadT/a3SX52NalXBHPSHx0N5cJL5exOJD8pyZXqx5wRFo/hJh1WTLlmeJ65FJ6tfgYvd0H97hZjM91h7eTlscQyZraHuDSFo1iYl5CVuHdhlknM3HstjxqXyuIkoSaVltKTqA9lSi4BZCgktXGq8JLfHBx/05nJXXLkZ12Ktg8Qtke7yUdg6r97fcs6JC9oIZHqXim35ldUgIeMIuWz9IuvlDs1f456fMZSCFWoviUDHqUeNhVs6S6lzVIzDk+bW+Kj5SEB9i+5HYPxe4kKVpTideUZYbbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oF+QOa1aGsNTzyUN8TND126dsFtIMRA/lIdiZQVzZL4=;
 b=qENSiEo8xu9FgAhpRFaVrAoJWSFEBQjNDavoAtVGengrSwQjB7lwjqNiMmLqiQ/0SXpn/KX+fGPfH8tbPSTrKHhtU5FGag7oBNooSoJPe4wnYRrlQjntCXMP2JBwdvCKFPAIvWbxZAX6lRkYgkquOGgOkOQ1d6Qhq52J1eN5rMM=
Received: from CWLP265CA0463.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::15)
 by DB9PR06MB7387.eurprd06.prod.outlook.com (2603:10a6:10:259::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:12 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::45) by CWLP265CA0463.outlook.office365.com
 (2603:10a6:400:1d4::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.7 via Frontend Transport; Thu, 4
 Jun 2026 06:50:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF00000199.mail.protection.outlook.com (10.167.16.245) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Thu, 4 Jun 2026 06:50:12 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 4 Jun 2026 08:50:11 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de,
	mgr@kernel.org,
	l.stach@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Thu,  4 Jun 2026 06:50:02 +0000
Message-ID: <20260604065006.2933142-8-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:11.0140 (UTC) FILETIME=[63807040:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|DB9PR06MB7387:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: a275e5e0-dfe9-440c-32f6-08dec20586ea
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700016|82310400026|376014|22082099003|18002099003|5023799004|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 1uFQNj5k6s4O5bwGQFdH/J2Hzz8Vd4OiMK7vChWQ0vQB0TPnUL9a+AmxQjamtxL8zhsJ1xXweCbeDrGV+6AisCS/1lUISbkJ/CmMQP7XX8P5MxoheNY8MZdrSy62kwAMAVTWRmwBqMeDmS70ZUv6M2FgT7GFY7Cnd5hL1npisAKeaZW/Cs1jGs/QaOOG6RNi55WCra/TKq794HamoDPdmRIUNADKniHX86/quaeVH6Fu1BhtZPvHR/FBL7QqVbXpwIhoMSrsByqI/ptadCm+GuqSIHduilmrXO5aJN+9C+DQQAkW6BhEMoY5UQBYv72PilUVHFOuPBc0GmTwhSmvVCtx/jLNtB810/X9xA7nuFPLkAZYLV+hG9lBXS21/c+13lfoel/fzUFlV0X3DXF0Tt/SV1tIB48zCKfOkJFdlcE9KWeG5k9pndMFn4C4vb9Eu5BPGfI/I4bBP7rS/mQK8A3PgagcxYo9//bi5A5uobMTGqm4Qrci96wg1bPcJk0L37xUeVUegWDtqnxWtMFfT+nCeQ8El0xyhWYpXAjG7UwPMpPMfOvmguxJHxtrNGko7kYayYp4lSc8+DuKGl/RTSkuj9eo63ycwiZWkKVQijWViNjMNCqxFYxl2FO8gD4qG9h+DKNcWoaWKw6m1adJ3kqn70CcRHZ0+au5D6IP3qSvldsShNfetMn4J6dkpZ82fVo4/Ovtu6eSqyhjsQmAm5qAUkhYNIn2J45s5Ovbeus=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(82310400026)(376014)(22082099003)(18002099003)(5023799004)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: CXGTiykmjnI7vvZVhOw2L5P4vPaRGXUTlDJw27CB5Lxfjv+BVSFeZDTECNCvDempxp/zQDmdjwgsA22F7hW3Hcn4ShKR1pPN7yV5jpeBpLkUgRBbN+n4MZopgOuAPn+kPVsNbJ12mpbH8Uy+Ju4pf9Ie/21Pi0TbXJdllZDw7XjPqERC7ELOJFqU+Kb0O+kIPP0vgv/TugOqT6G2tWFu8lU9hihCUzyoPSXGhrhsAkJxC+YISIpNWEp6x3yoAKdqU1R5XwnFpfTkH8Wjrau1kIY1yyWeceipjW9HOZ0C7iSXZqpWixpz3cUb/zcKm6g1FDsDN0416LbQmf6ZsVQpDR/NP+REL9d7u+pBy8Q/O92OiwQ8ORnJ7jgKiGGC6jOLRDE0+ifzrQU4F7nqzf9ktkt0lyn2Tc8KnMklmfv0EeyEzRtLDd/Fv4jm7UXkQ+rG
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:12.6952
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a275e5e0-dfe9-440c-32f6-08dec20586ea
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB7387
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235016_955936_CE18B6ED 
X-CRM114-Status: GOOD (  10.37  )
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
Subject: [PATCH v2 07/11] video: lcdif: default to RGB888_1X24 on VPL_GET_BUS_FORMAT failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

VPL_GET_BUS_FORMAT walks downstream through the bridge to the panel.
Today neither fsl-ldb (which forwards the call) nor simple-panel
(which reads a "bus-format" DT property) succeeds for DTs that follow
the Linux panel-lvds binding -- that binding describes the LVDS data
mapping in "data-mapping", not as a discrete bus-format integer.

The driver currently aborts enable on the -EINVAL, leaving /dev/fb0
registered but nothing scanning out.  Default to RGB888_1X24 instead
-- the parallel format LCDIFv3 hands to every RGB888 bridge regardless
of what the panel ultimately drives onto the wire.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/video/lcdif_kms.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/video/lcdif_kms.c b/drivers/video/lcdif_kms.c
index a113f3e681..5487d1298c 100644
--- a/drivers/video/lcdif_kms.c
+++ b/drivers/video/lcdif_kms.c
@@ -364,8 +364,11 @@ static void lcdif_enable_fb_controller(struct fb_info *info)
 
 	ret = vpl_ioctl(&lcdif->vpl, lcdif->id, VPL_GET_BUS_FORMAT, &vcstate.bus_format);
 	if (ret < 0) {
-		dev_err(lcdif->dev, "Cannot determine bus format\n");
-		return;
+		/* default for panel-lvds DTs lacking bus-format / bridges not answering */
+		dev_warn(lcdif->dev,
+			 "VPL_GET_BUS_FORMAT failed (%pe), defaulting to RGB888_1X24\n",
+			 ERR_PTR(ret));
+		vcstate.bus_format = MEDIA_BUS_FMT_RGB888_1X24;
 	}
 
 	ret = vpl_ioctl(&lcdif->vpl, lcdif->id, VPL_GET_DISPLAY_INFO, &display_info);
-- 
2.43.0



