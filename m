Delivery-date: Tue, 23 Jun 2026 21:21:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc6h3-0096HU-2o
	for lore@lore.pengutronix.de;
	Tue, 23 Jun 2026 21:21:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc6h3-0005aj-0R
	for lore@pengutronix.de; Tue, 23 Jun 2026 21:21:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0Hl8o15yyEliWuiyf70ywq40Fn5poJ4ijmbrJrTjNjs=; b=WdBGBeWCCZsC1JP4CdSXRbTCGe
	39FDhlsSIgihS6t/Z+CgVZvjKbcjzHXfbzPPlHb1xcc/G/EyXyaHfCutjODGJqz0HibFWcX1mWvgQ
	E5UcQYTkg6n07NzoAM1V4RbveJMyMbAXdD+gRSWkTFl1QRS0zB/S5cZXhoVgwyFptQVb8AZTH9n5o
	eLpChFpPLrnWwvye78lVqEBUEo1CVzh7tWTpupRWMwtBOtWebzEl+hbTUJ2vhf6PNt1OWJiJvzSok
	Apq+Puk+BEctjAGQJkmY6FzDuNqOldwlJtq3zAhQ2PJGRjNeVMz2fWzhR7E28JjjQTEGF634eiofq
	5NK8UsCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc6fn-00000006n8C-3GmF;
	Tue, 23 Jun 2026 19:20:39 +0000
Received: from mail-francecentralazon11013011.outbound.protection.outlook.com ([40.107.162.11] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc6fk-00000006n7k-2EJn
	for barebox@lists.infradead.org;
	Tue, 23 Jun 2026 19:20:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j25a1lxcvhfyrWAdVKWtkNFsnDRXE5X18vr0T40alvKyUsk8nqZbBm5WRrviSkN8Ba59xv/PoHkBD4qYckaBQWcvuoSIqIncaw289VkdzD8navIF5cbYyCZkhdwady2Y0FkwuB2SHoGjl7VzUcuV6YBFtyK3v5/0Tx+csdhCFYzNXBEOWXCL9D4sIIeHnUHPJz2nZAz3bMoiVVVXqWFR7VwJsfkWsbEuxu3D5xPPDhumVKYBECQzYxbxgQks41Toiy6DcCWKuyc3KwLgvS9W5B2xkv++Njw995VgPRQ05e+SHhFZjxO6fQPr/qHuDBRDkfGk22UM44xjcq3JS6d/Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Hl8o15yyEliWuiyf70ywq40Fn5poJ4ijmbrJrTjNjs=;
 b=c3ls4UfS2vImnN07dd26zVHc7j+qS/Rn3AOwidr4z7aWqB/8WnUgo7qIityR6AobMaXxUDLPL5uEBhxrQZq+qiE7lx4hIo6upfDTU6Fo1V/gAqV9hIGrAg95VkYufPDUpaweEZ+UgDZZzH4jh7DICnYXodWoBLRPIzFcTck3/xkFZ0+Rs+35av0dnQ35LuCgek3/Ys4aNvFd67u0EbXgjF4zPo6hIupP1W/FqF7X+sWBMXjao3gIy5gEcpzf+Mkub+F7eZ/33ozKthhZ+zh4++Cl18HNGb9d23F4tm1FYtaUzPBe8LZHIPh0Co1t7/53sSDQhK3qL9NLaZ0Xsscz6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Hl8o15yyEliWuiyf70ywq40Fn5poJ4ijmbrJrTjNjs=;
 b=CY7glJy5lgSCwpe5l/gVhLbSpeTAEhd1R/TZAVmwgTm9PYfm9Yqm72h2l1I5Y0Zw59xNJHSWVPISEagw2r5Pl4AseUNiFGFV3ef3QT/IwOfOV3PvtRylgycKFgyru4GkPLbdLskNs+5VZda6gQdfXiJ1AeVnXqk8AhnGmLJm4Xo=
Received: from DB8PR06CA0039.eurprd06.prod.outlook.com (2603:10a6:10:120::13)
 by PA6PR06MB10355.eurprd06.prod.outlook.com (2603:10a6:102:51e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.12; Tue, 23 Jun
 2026 19:20:32 +0000
Received: from DB1PEPF00050A00.eurprd03.prod.outlook.com
 (2603:10a6:10:120:cafe::1f) by DB8PR06CA0039.outlook.office365.com
 (2603:10a6:10:120::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.20 via Frontend Transport; Tue,
 23 Jun 2026 19:20:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF00050A00.mail.protection.outlook.com (10.167.242.42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.159.10 via Frontend Transport; Tue, 23 Jun 2026 19:20:31 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 23 Jun 2026 21:20:31 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Tue, 23 Jun 2026 19:20:17 +0000
Message-ID: <20260623192017.3338905-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 23 Jun 2026 19:20:31.0548 (UTC) FILETIME=[5B9AC7C0:01DD0345]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF00050A00:EE_|PA6PR06MB10355:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: f67a505c-3c62-4dd2-33d7-08ded15c7e4f
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|82310400026|36860700016|1800799024|376014|18002099003|6133799003|56012099006|11063799006|5023799004;
X-Microsoft-Antispam-Message-Info: O6rZsTl0bweVow0l49+i2BFV6Vj5NoKpfW2JVioBfQnfOWwjnBR69OQzUdn3QxNvquQ38/19WRwyVB2EdZ5Sk7xqhPvc7bTr8BBHUvkT+xScXc/Ht3vRaQd6gnj95fE7ngZQIPpEAcy+x9zTQVuvn+eDBW13lSHjfPaL9+96gcfng7LdNaWBp4F6rTl+PASc8oEvnMTzK3t9SWJ/T5NfzWoIPmG4Lxjf90ZAGMn3pY8/mSMDSHnQ3grnp3OwYXm8VkelPTYYPjnWAAal/uCc68YDvqNLH6qWi+iGRH+VWlCYCpJLR7JOADfaqf3pPP/PNXp+lOHFOrA+mcp3VDtE+YLMjbHaVkNnpa1gJMYnVxZk1O5NsGyj8P0CLy56pH3+i1sLdttEalTsRdC64DXozw1QzrDPYEUVYF2PpclsMGDabbx1TI2Zmq72VNTtmFBtBtmcZUcj7OcLSpzjYi+ubvBUiIF+5UBDV5AoLU1HmFlsj18Pa06NuE37H3bTS+bsrOYtNTKBc2tmdAQ3KHhXXqU0BalZMLnfvQSaJkRLAWwhMWGSbXHgRBrnhZvN+CgjH1u6bhZJH3ih2U7AW9jLBgjrCAN3i18dBwI+vxk2r1j2UGNXSYOz/HS3/0R5MTufhDd8rVfYMCtWnypV/ljUtXj35j2jK51a78wUJl9+mgOTaxObOx0o6Ek32kqbf3Yzpwmt2mV7Frq8k59TMTRYtg==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(82310400026)(36860700016)(1800799024)(376014)(18002099003)(6133799003)(56012099006)(11063799006)(5023799004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: lMPCOtAnALsq83fL+L9Y1cdmc2xblj1oZbY6vDf2Sm2pZhOp/pDe30VklCZ8AkbuLlC4O6G8yZwdbTaXvqY9RZoUiT44RbkHTwAjZqiKTWr7c3ibfTZVJKpEkQK1xqX+EkrQNxo7dHIO6d/tl0RBWBVygPfJYrTs61Pnu8Q46a3F38GYIfo+yjsZhvF12/6oQkqZImfMWxGx74LGU0a+8xKukTI4TL/txc10/sc3cHb4/oN/6Px5cxV4aSbfBXR9IrUh536+MivK6oVGEKwxMIf2slMwHCJOg7sLWiHTVvNNaW1KP9lYVkluYuDKxk8Xlmh9/mvvYUMzTOJNdCztzctQxy7a4fR0IGnXT9Y52IKkSXrg9cOq4v/QCoYkGLMPLGDTX8RYoPxABRnkaDsFixK0ssulqky9z57dqZ9jwMksd8d/RSck+RCikOnreEIT
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 19:20:31.8869
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f67a505c-3c62-4dd2-33d7-08ded15c7e4f
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF00050A00.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR06MB10355
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_122036_617106_C242ED16 
X-CRM114-Status: GOOD (  16.23  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] video: lcdif: skip framebuffer registration when no display modes available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the downstream VPL chain reports no modes (e.g. the panel-lvds
node was runtime-disabled by board code on a unit shipped without a
panel), the driver previously fell back to a 640x480 default,
allocated a framebuffer, registered /dev/fb0, exported a (bogus)
simplefb DT fixup to the kernel, and tried to fb_enable() the
controller.  fb_enable() then bailed because info->mode was NULL,
but only after we'd already exported a non-functional simplefb to
Linux's DRM_SIMPLEDRM and wasted ~1.2 MB on a buffer nothing
scans out.

Return early from lcdif_register_fb when num_modes == 0.  Drop the
640x480 fallback -- if VPL has no panel, there is nothing to scan
out and a default fb is just misleading state.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---

A usage example where this becomes relevant and fixes a bug:
we have a "modular" hardware design, where the same base-board can
have either none, one or two displays bolted on - all running the same
bootloader+OS. The barebox boardcode for said base-board reads a
configuration eeprom and would then runtime disable the panels
devicetree node - leaving the framebuffer driver without anything that
has valid modes, leading to a NULL dereference.

---
 drivers/video/lcdif_kms.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/video/lcdif_kms.c b/drivers/video/lcdif_kms.c
index e3d1985dc9..bbdbf4eed3 100644
--- a/drivers/video/lcdif_kms.c
+++ b/drivers/video/lcdif_kms.c
@@ -431,18 +431,18 @@ static int lcdif_register_fb(struct lcdif_drm_private *lcdif)
 		return ret;
 	}
 
-	if (info->modes.num_modes) {
-		for (i = 0; i < info->modes.num_modes; i++) {
-			xmax = max(xmax, info->modes.modes[i].xres);
-			ymax = max(ymax, info->modes.modes[i].yres);
-		}
-		info->xres = info->modes.modes[info->modes.native_mode].xres;
-		info->yres = info->modes.modes[info->modes.native_mode].yres;
-	} else {
-		dev_notice(lcdif->dev, "no modes found on lcdif%d\n", lcdif->id);
-		xmax = info->xres = 640;
-		ymax = info->yres = 480;
+	/* no panel downstream -> nothing to scan out; stay idle */
+	if (!info->modes.num_modes) {
+		dev_info(lcdif->dev, "no display modes from VPL, LCDIF stays idle\n");
+		return 0;
+	}
+
+	for (i = 0; i < info->modes.num_modes; i++) {
+		xmax = max(xmax, info->modes.modes[i].xres);
+		ymax = max(ymax, info->modes.modes[i].yres);
 	}
+	info->xres = info->modes.modes[info->modes.native_mode].xres;
+	info->yres = info->modes.modes[info->modes.native_mode].yres;
 
 	lcdif->line_length = xmax * (info->bits_per_pixel >> 3);
 	lcdif->max_yres = ymax;
-- 
2.43.0



