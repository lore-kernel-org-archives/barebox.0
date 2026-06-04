Delivery-date: Thu, 04 Jun 2026 08:50:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uo-002Bsh-0D
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1un-0007l7-9D
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jkLAr7Ac+TAILBc3bOmnrNPCKb+vB87ebugqVYU6+FQ=; b=rSIcwgqRbC40QDhu3c1KSnwpE+
	u4Muo96SBcf2gE/xV4oFTvcxPvmOoyU0X2DitOmkd78IV/+Zm7wvSRWAaOmS08r8yuZJM5aycf94O
	I7NMOPwcgj6f5ijfsRkbbqf1dNIE7a4WBA7n7arKS6mqgZrc33O77n478/HzzA+xijYLP3GCOpUOo
	ewp5QIJqE8tEwgo+8WynXQs4zb21qTlBIok8g4iFah9IOc8iZqBZaXoSUKyK7R/55yTndZnEEfyoF
	+SPlt+8rO8iuCXrsK+SuSJUHCugw7h6rhY0Aj9TH5Q/8u2nsNT8BqX0+CXDJQE4SI9JOjQIKdZPNW
	5pnsgkvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uK-0000000GFCJ-1FLG;
	Thu, 04 Jun 2026 06:50:24 +0000
Received: from mail-westeuropeazon11010008.outbound.protection.outlook.com ([52.101.69.8] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uD-0000000GF4a-1oKC
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tmkCUTOQwFxXYhDvq/vOGdWzyBIUq7hCZCNXoo5HwG8Dd1573bJ76YS4G9RX22V6vrl/+dVKtZ1STdlYmp6jAzLkZa5yUigSFJ0JAnV+v8PEv8YpRCstxn90drJmA7cSxt8AOZZvo5HuvvnKW0+Z/tN/4Zqk7FLNBlarqTsKB2e9wR8QmB+FXfg4U0PYXrSjhJoTWvXxlKVfvI95N5TflyL0MjphMxGAV80H+6Srk5YFxM0rgQ5x7eG4fL1HtU5gx5ouc5RnonJStOMdjzdYbp+1GpfcpzjHtHBJ8zmkQbaTNTMNrWH1iuALOw8SGq7llWUDYz0FLVX3Td3T83Zomw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jkLAr7Ac+TAILBc3bOmnrNPCKb+vB87ebugqVYU6+FQ=;
 b=p1908eoBwMOL4+ssmAW7hUSjubJx7BpIT49GtsWJjo6VJkYsmjHE1DDdGVCPEXlm8VCaeMMz5P6SVQ5lNBqAD/nDL46VV3J+gljVFH9S9/QFjmx3BhARg0ieSWlffoq1mItvdb4cJBcngbdaFA8h7cYNUkCpD3CDjPXB340+wma28ufVtxOLARaZqU3hZkYWd4WhTIwkHgQd4c04sH2qzcD/pu/mB3cfNEz10Elsc3IPtj3v6MVrXwC4hHJcoizU5ph7PLn+WYjWWfrfs+LWY47j0w4ROQCMAT9e6J7cox/fBQPtBLfOKzH3UtmilXHW79qa2HLgGtcKJG24t3E0Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jkLAr7Ac+TAILBc3bOmnrNPCKb+vB87ebugqVYU6+FQ=;
 b=syXIIc7ePJ60ldFTkgLQtClgJE8gtPx5WqA3/yQ+kXpuumaJydUBgyhPGGlmGiVWL9Xo4B+xmcrdtTfFzvkIeVJ5QtG+TML681WIkF3Ky18xfpjFwJJavGz3IRqWV2rvZwejEfmJqGXOMeG066ZDnlp07x1rT3EAD82F7FjobpE=
Received: from CWLP265CA0461.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::9)
 by DU2PR06MB8352.eurprd06.prod.outlook.com (2603:10a6:10:2e7::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:13 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::41) by CWLP265CA0461.outlook.office365.com
 (2603:10a6:400:1d4::9) with Microsoft SMTP Server (version=TLS1_3,
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
Date: Thu,  4 Jun 2026 06:50:03 +0000
Message-ID: <20260604065006.2933142-9-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:11.0562 (UTC) FILETIME=[63C0D4A0:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|DU2PR06MB8352:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 05771efa-ba9f-436e-e02f-08dec205872e
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|36860700016|82310400026|56012099006|11063799006|22082099003|18002099003|6133799003;
X-Microsoft-Antispam-Message-Info: +YKJw+5YQ30spZicua/UWZcBVExvd++u2gS9b9UlskNEKQXOFtclb4ZKoONsA9H++FNyd9kViDj4Hjfhy/eBKX0Q8tjEtWX5jMPhFf0BmFYfd0Gel1XsMRCyz3w7hmMIKXD/JiLc367+qjt13VDb1po6oz/06B6gmdq5EJR3x0S8WUUTCJ/oA5WEP8zoTcYa2zBaDjM0CSlkljH+NV0/srwgrMtFp0Tc921lMNaCd/qz8M/QYBRmp8PnI0pVc9qzUB3xbIPJ9NbezbcbWN7msvB41QwhPWJOA2BYEBNg2e6f3RE2NGeHCXT02yVG3FRNj8DF4hocJLa7foczF8K1QXIB5eZydp3aCq429xctvaaGZMx+MQbltx12VV2WNNdpNlYX0APRg98R6kYZWoHwvTYi/L/AT/J/8Q4RGB4dHCdz2f3nhuF94QLEKVeXKaie19sISkTcP3v3jIiyj4y8tdD6Ogw3kPblmrT8fzLcbJ993WGfy1gm9yLrQuYoFTATaOdcYby/kAfHjeTmBLxAeWhI1oZ2GKh3lL/SpeqayJAVGucY9sxiD/FoJj3Rc3VtJMZyo297QVQ94ZCAqWneHjuVSc8V1n7ybHglauYrc9foyfH7AverVdgfGd5OY7TjB8KqIZL2pi9cKGfWg+OWzAOlWq6rC80IURE1aAXYhMI0x+vqvTWtfjLjFGaYAF6E+kE4FjS+aOMNPcKY2fVsViMrwL5Ezp/sQH4KRRDof44=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700016)(82310400026)(56012099006)(11063799006)(22082099003)(18002099003)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: X9G7fqjTDDhmOA/ZoI/CaEdCxzVt+Z9n0FBEa74jgSd6inFGY3nA8IrMcQSWUovcfXoqquomD5xD8V6FLgn6AOQKJU+cWUPDZy/b6xZlnh5kTNQkV0G3hh0E4kJAnuW/4DaPtYvrleARWLIE6bTAIpyCzX8+kltR1qeRf7B2nPEH7PRudFpCF58ksyq6omBf5bLNULkZKjZXDT5mZhokEOZaENsyG5NDiKWcFT6LgzTFChfaDtJKLzcI/WZlc9s4HE6MgTyr1rB4TzYtHETPWdszM5aECnAPXooNEeWkp7mDaDjmwc/FbH0yldwSb+Yy7pwG8duFJ+SEe1aqCrroOVGLI+jfy1BGhPoa6MiY0RvwRzgquqoij74QWISqkrWNIAZrW6AUg/J+Bzvua3SAXYFRni4wIPL4L4CQU4Nnh4IcJ3Nmo1xbxVHkpLLH6TrX
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:13.1416
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 05771efa-ba9f-436e-e02f-08dec205872e
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR06MB8352
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235017_494948_61D94AA4 
X-CRM114-Status: GOOD (  11.71  )
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
Subject: [PATCH v2 08/11] video: lcdif: register simplefb fixup and enable framebuffer at probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

Two changes are needed to use lcdif_drv as the primary barebox boot
framebuffer:

  - register_framebuffer() leaves the cdev disabled; the splash command
    opens fb0 via the fb API and never goes through the cdev open path
    that triggers fb_enable lazily, so it bails on
    "fb_open: No such file or directory".  fb_enable() at the end of
    register_fb so the controller is up by the time anything blits.

  - Set info->register_simplefb and call fb_register_simplefb() so
    DRM_SIMPLEDRM in Linux sees the boot framebuffer as a
    simple-framebuffer DT node and keeps the splash visible until its
    native LCDIF driver binds.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/video/lcdif_kms.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/video/lcdif_kms.c b/drivers/video/lcdif_kms.c
index 5487d1298c..e3d1985dc9 100644
--- a/drivers/video/lcdif_kms.c
+++ b/drivers/video/lcdif_kms.c
@@ -459,6 +459,16 @@ static int lcdif_register_fb(struct lcdif_drm_private *lcdif)
 	if (ret)
 		return ret;
 
+	/* expose as simple-framebuffer for Linux DRM_SIMPLEDRM handoff */
+	info->register_simplefb = 1;
+	fb_register_simplefb(info);
+
+	/* enable now so the splash command can blit into a live fb */
+	ret = fb_enable(info);
+	if (ret)
+		dev_warn(lcdif->dev, "failed to enable framebuffer: %pe\n",
+			 ERR_PTR(ret));
+
 	dev_info(lcdif->dev, "Registered %s on LCDIF%d, type primary\n",
 		 info->cdev.name, lcdif->id);
 
-- 
2.43.0



