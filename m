Delivery-date: Thu, 04 Jun 2026 08:50:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1ur-002Bus-1q
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uq-0007n2-37
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7wRX3Jod3U33xdRMpJtin/47AJFXmAxsxGYRrBPDZTs=; b=1VHi5dgtZytbnTwXP1kzs6YYnW
	p2Y4dkD9ulvD8spiRY30tB4yv7IC2E6a4M4ziKsJ6PpFPGI5OCRlOvphfutuEsJQc3PsOz+QShpWM
	35ErMvJlYmSRq8ALHeIv7hnp5XTC9N8kfHDA5NfvNafQPJfuvI4a/uNtZsNPwKehCViaWefWGUepJ
	+BwOL+78FGc8023F0+WPumIgSTsVDYi+/8PGUv46nu96qLa1j1gIPX3MjO+LpvCIXLHbOsXJnpMcL
	fWkJHTaYzHPuToC8ruTVfelDju0cUMJJJteSLgRTDngy9w4qkSHNz/dMn5YKZOKUFcCVDiGnw14AZ
	NH3/doPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uK-0000000GFDi-34e5;
	Thu, 04 Jun 2026 06:50:24 +0000
Received: from mail-francesouthazon11011050.outbound.protection.outlook.com ([40.107.130.50] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uF-0000000GF6g-1A5b
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AECdW1r2mF4vqyvqgBBrjOyD9R1HFHrwjHXFnVaqfhSHc0/BUEoixtAcuWDtq0cZ3NSKnmtcUpXJPfj96gumojIfltYkqfcomh1vJ3JFsh/Br8RpbS7WIrIMjw9xRhZxe0403mWALwi+ZFw8cjmIvt5OadfBFblFmTpKSvF3zqh59eUjTy21qX1Jg23mmDmM+pVELiWX8TbqJtM6kaxJb46B8pn9sAPO390ygJhVe7W0zmtKOF19oMiyP4FqIOWe5JIes95x1frXEOa4bjZP2cv8Z8NGkdl/3wZvGkJBbj1/c/z2Qi5LGALgYsPDpSqqW7aNIJWowuQofFGJslsnNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7wRX3Jod3U33xdRMpJtin/47AJFXmAxsxGYRrBPDZTs=;
 b=okJT4Amt6bmB88RARIf50quFz1gBvy1ZTa+nhmW4li8SDKEdDFRGhk3z/XR1lXKBQUw6cRf0ePoxvUfmwcT385EGTDmXtF/6h7Gng0Elie4VZfhfRCxhghV/KkvfNzv5oakONqqf7lKEfWpa5jlQeCglnxzF2sR3c4K3gTptqa8z/5aatWuui0Il9w2Y7H0HCF0v4WF/Kz+WEMM2tEi4zksXj+DzXXH+ku08XgvWtys16F0VEmZyJKcXp90cVj6+x8dcECA08mjQiLB1Z+Ria2yRbNGNhI2BgI21qr8A08husQeQvTJmoGKnRocJxJ+QJ/obTPHowg+0nHXsSVT4Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7wRX3Jod3U33xdRMpJtin/47AJFXmAxsxGYRrBPDZTs=;
 b=tBWISGH2uZxifsrd4yIdlgZm4djns+kpZbksqUi6lHHbH1t04s1KD9PB/y+g924bR4NPbKX/6bntwxBb+GqOK1IEzh8m6Tw4nC0sfiMh0bnXUzfRWuvTZ3+7RJZu3MYIfHppgnVkeHKplUtu4wELFL2GMPK4Ut/jjl6SvebeGvg=
Received: from CWLP265CA0470.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::16)
 by VI0PR06MB10723.eurprd06.prod.outlook.com (2603:10a6:800:32f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:14 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::61) by CWLP265CA0470.outlook.office365.com
 (2603:10a6:400:1d4::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.7 via Frontend Transport; Thu, 4
 Jun 2026 06:50:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF00000199.mail.protection.outlook.com (10.167.16.245) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Thu, 4 Jun 2026 06:50:13 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 4 Jun 2026 08:50:11 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de,
	mgr@kernel.org,
	l.stach@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com
Date: Thu,  4 Jun 2026 06:50:04 +0000
Message-ID: <20260604065006.2933142-10-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:11.0937 (UTC) FILETIME=[63FA0D10:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|VI0PR06MB10723:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 5661093c-bfc1-49bd-d940-08dec2058771
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700016|22082099003|56012099006|18002099003|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: FxDYuqKS7z8l0jXL+yGjquCyhNaidiUYliFLc7iVm2049eYMTeeHrnXtjpouxFX46AcZhoIYlqeX54eoqRvxLZErM/38+6QMC3tz6xZZJrYfK5074BCKvnmPxyQVLKXDTqFXW5T2YJd0SFoCkGRKU/BE+33N8tzqB3xc1IU3tqQeQTemJ2L2Nq7myLKTXprLKzpn6uab7HAj8t0F4e6O0cgjNQVM7Ft8PG49dkb2Qfk4ogsuAMUax3KlUReTDxTeUYR/2MZHr42TbPVIMZUa+Gg2gRKfC+kW5PCorONBZrSvo/hHjsykFzH0bmHffyf2bEPxE2VGAH4XL9+Y0dfgpxfHwXOSR3Sj89U/T1ktoHEd7oCVPz5sLXajjM1l5SOP1o/4lgZ0nW3wxUZY2gkt95VlGeRatjMjN4s5yF6pkmb/ZtpptuxPuiAh1E88wVk03crMROKsle8mVY9jGyTf4uEb1/2Cu2yVao+sR7/8oTxkb4NMjpHOmMksqhsNL/UA8hKkhhHZ8mUTkSEOYzeEr6jaOPBXvN6MXxVZSV2yQXAEHRScRrorWJysENQ9Pn4+NdlgNV9sFSaohDPKcGtbBujqMvydklzfPkOS8hqQTfxWPHbcFrxYNp0ykYBopj83P1rNDuwoWcZRCfGirkoJXzxFQHv1UZJZP69WOr1cl+LRenusq33qFYgwXUVv1jBBpWBw0DOBgM2YcWy8JCHPr/Cgomb3HO7WfczkntFviyw=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700016)(22082099003)(56012099006)(18002099003)(3023799007)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 7XxHo3KztQQ0MDd9f6L0pEAZyVbNvyHupUr0bYC+g00L05vP1KVocWfClD2ZT+px/PCGKhREWbmPtb1fTy27wXcpuEuAOKqOhphGO6B/7jc4MtqzAUWx9BEvRTcvQrbK2pPvmgWi86pcNQGHcpZoFlEMpXns/3lORcrwnGH8x5LFRx9lkAIINHGdeoUa1nBNMzMhoaLEY1e7dRMmR57mkAHdXEYrbqNgJzMfpk/xHa1KyE/UfIdzpcd9pcm1ge6w6WxlTOVeu3YAy2GwbLKEHqrHvq1TpQK/02SxjEua8h2129deAtyBolWBQK+4YEJLpvJ52Uv+h7hoFYeCaKz3KSpHZMJML/96qzgFnLsh15ZvBwNje4ChubUfVfRLEvDBIPy04s/aMgc5TW8DrDqWTfmROEeH8JVyXj8X4JZz3hbM773huHTCq/RRaT6Y/Zye
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:13.5832
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5661093c-bfc1-49bd-d940-08dec2058771
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR06MB10723
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235019_354486_D4604D66 
X-CRM114-Status: GOOD (  11.41  )
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
Subject: [PATCH v2 09/11] video: lcdif: drain write-combine framebuffer in fb_damage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

The framebuffer is allocated Normal Non-Cacheable (write-combine).
After the splash command's memcpy() from a cached shadow buffer into
the hardware framebuffer (see gu_screen_blit()), stores may still
reside in the CPU write-combine buffer when scanout next fetches --
visible as partial / corrupted rendering at the bottom of the image.

dsb() alone is not sufficient: it orders subsequent instructions
against the outstanding writes but doesn't actively drain the WC
buffer to memory.  A readback of any byte inside the WC region does,
since the load cannot complete until prior stores to the buffer have
been retired.

Wire lcdif_fb_damage to do that readback after each blit.  Keep
fb_flush bound to lcdif_crtc_atomic_flush so the SHADOW_LOAD_EN
re-latch still fires on fb_close / fbtest paths.

Suggested-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/video/lcdif_kms.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/video/lcdif_kms.c b/drivers/video/lcdif_kms.c
index e3d1985dc9..57ca92b4be 100644
--- a/drivers/video/lcdif_kms.c
+++ b/drivers/video/lcdif_kms.c
@@ -396,10 +396,17 @@ static void lcdif_disable_fb_controller(struct fb_info *info)
 	lcdif_disable_controller(lcdif);
 }
 
+static void lcdif_fb_damage(struct fb_info *info, const struct fb_rect *rect)
+{
+	/* readback drains the write-combine buffer (dsb() doesn't) */
+	(void)*(volatile u8 *)info->screen_base;
+}
+
 static struct fb_ops lcdif_fb_ops = {
 	.fb_enable = lcdif_enable_fb_controller,
 	.fb_disable = lcdif_disable_fb_controller,
 	.fb_flush = lcdif_crtc_atomic_flush,
+	.fb_damage = lcdif_fb_damage,
 };
 
 /* -----------------------------------------------------------------------------
-- 
2.43.0



