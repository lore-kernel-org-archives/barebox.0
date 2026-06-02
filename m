Delivery-date: Tue, 02 Jun 2026 06:11:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTK-001SW8-1t
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 06:11:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTJ-0000sV-NB
	for lore@pengutronix.de; Tue, 02 Jun 2026 06:11:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tAeWVTnEx8+FqxpCDwQ1pzqHiyRcNhitfgMLBMJw3as=; b=3BwttA6yBUF2vTI3JHUarcgwzI
	SFr/0KivLby1XIiciS0AbXRUHPTds/7j+jwSaSzfkDhKaR+4N80vIXzDqY5n57x05TwtvFZ8uvOpL
	sju/8waFwDQoRculzXBLopTPHzXY0pa9tFmpRtGssAm0Sq9nq+RyVl/JbJr+VBxI8QcUtPjRCq3jP
	olYA/9HAkAzvZPGaPHA5/9rf5Vjv3ZzearsT39v3X410g+qt9B82VT99iBl9QYASWcetswXXgE6rS
	Pw6PTAy2FV8ojuObmPSTHlFWLiQ9PRLFL5ZiO9JqSNR+dFfgbSt4w+jwj7CaaYMsIOHBiIHTUQIPu
	rW4yEJBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS9-0000000CGHO-1JdW;
	Tue, 02 Jun 2026 04:10:09 +0000
Received: from mail-francesouthazon11011065.outbound.protection.outlook.com ([40.107.130.65] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS4-0000000CGEI-2UxG
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 04:10:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZBZV8qxiZqCLgF7dQejA4wOj0EmOhKOqsNKdtMtYHLjYdOg0qygLzUWpQQlV2uV82+MsGqC6FbApRbZtSy0KmATGP2qoPlLylGOAiZtvC0uHUUB2CGJ5vcZ3DAw5R+zp1NJuyqpU7xgti68GKP+3Q8PVNjtaw5xQaNDZE6UaKtS9Bx0/nQnmKV1h1R+bSS+cBVHgrrTh+7WWaeGPCVWbGq5E407j7rOuaqIVv8n+h41HR8OCAw1iFAzjyh7qbxRnMtos/ZXhGHNHefFkkJM8I1drLvx57fZB9t694tBollvAdR/6TGKvIHlWSHdQjzRYEHktdF1O+R6lYuL3Zob3EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tAeWVTnEx8+FqxpCDwQ1pzqHiyRcNhitfgMLBMJw3as=;
 b=ngUoJyb2+KVTB9cgv5SnF4GfHeb5okckqB7DzTgRTA+r7uSK0UHqnFkVkqTpXw1A6wol18ciQY2iptVzl94dhFYFYUoP1eNCDKwMWKGdesvhWb5MmQ3HrlstldR0K2TdUX+88FkUJTlgVo1BnEjk8CsTx5uZe0Ywg77hxtSgQqAwuxQT7vqZg8peiF1r9BvzplOSiUqBURFvQDMKA4ISBkDuOsu6QdzI2JQOa2832t/W33V0Nq62vehC79S1Tt35GhZ1Ob/ulz8btl076ImOxSZ3gywjQnxGY/sumhXRAMaBVD90l948LcNwJVY6hKeRpj+u3LMv+Rsr6+6MR7mxjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tAeWVTnEx8+FqxpCDwQ1pzqHiyRcNhitfgMLBMJw3as=;
 b=ld3t8DoExWin04nTDp8Co0YTanHTC4Do7/jV+aidL73AVuss4wvkEF3x4PVhYixaL24oGga/Wu8XxGMZple55bzNKicPY0IOpkdmV4lE6J3VdT4sHoBS8VaB/d2kDkUfnrmW/Cczi1Wq5wxSLcYvKXCL4vWhppDtFQAn2qwnPRg=
Received: from DU7P195CA0025.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:54d::30)
 by DB8PR06MB6538.eurprd06.prod.outlook.com (2603:10a6:10:127::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Tue, 2 Jun 2026
 04:09:59 +0000
Received: from DB5PEPF00014B92.eurprd02.prod.outlook.com
 (2603:10a6:10:54d:cafe::40) by DU7P195CA0025.outlook.office365.com
 (2603:10a6:10:54d::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.7 via Frontend Transport; Tue, 2
 Jun 2026 04:09:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB5PEPF00014B92.mail.protection.outlook.com (10.167.8.230) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Tue, 2 Jun 2026 04:09:59 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 2 Jun 2026 06:09:58 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue,  2 Jun 2026 04:09:52 +0000
Message-ID: <20260602040953.1060278-7-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Jun 2026 04:09:58.0601 (UTC) FILETIME=[AD27E390:01DCF245]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B92:EE_|DB8PR06MB6538:EE_
X-MS-Office365-Filtering-Correlation-Id: 349f4a52-af89-473a-9576-08dec05cd02f
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|36860700016|376014|1800799024|6133799003|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: dXNTiDozv+BzecI1B/e0LE4pFsxaQe1LvekSklYR1Tu4nvc52yFTMRlfPpJkV4U1wdJ7Yb8ppBRsW1VAmwZcepp8D/uqzxHRUrTRI2Yhap6dczLrpGxff2Cmux1zhQNw42t1znWtYMGPnQtgRtL2UIUfa5ommlzCnxOvDZlywsPfUavzfUbn1g79fCt666pACLiQGSKEMeWiONH9LlqPXX/pk5Av1dJ6mFtO69PHMEf7NQxEzp58fIBomrU7baK74pWA3fmjAD+wcAieVl2M+dR91LQiOi7CJgG2pIzRcLIUK9sHv0WE4eU1LXYm64LywdQ8/F+ueIJrXHVwqp8ig7xhmg0/N1UCEyTB9nUDDL9c4LoTOkKgwecou/+RWDLuRTuB/UVVPFhqoGOqzwzBS1GwUpJickse85+EvKM+QkoDswa1sXFgGN2P3HfHLXz0i0cWbOIx2C72nnW5PsCSrZNG99ZqJe2KuruqUFHZSzTvTaAAvQ/oy1VeSOTl1WIJgwSl69X3PccHmM8cL6wJry4ILpAlS2tUi5YtesGcMXfV9P/uqepHlCilDoKk++e4N6Kb8Su2tmtOpbBxh0afGeNBXYfm58Fmylp3qT1/LanINR8rGFpSqsRm3eFXsojZQEKoV4yP3ghyEdwGhSCAF8ZgrO3PPsr/Evoahje2mCYj4hJNnHYHNoLmrn15AZeYe1YyHdZ67kDDo7AC9//wt+qzrYmLawBItS/UgCsgO1g=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(376014)(1800799024)(6133799003)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: ywHioOVPmYxXxAs6TLofNQAOLTfTnZW1njKYDPP14eLhBhtjY3Dtan7Y1oPW1OSVw5TYBlVjZeh6RSapkqxByJcmFRB8iwSXsvL2sTFFqzb5jcQgWfSKwlW+o1H4xAQYWyEQMuQGoXP+BZ07/yRlSgMA+Mg3xvo4kfAmFf8zwIbWtN/Me7+NIU3MgVTt7pZd9q2Vd+T1cMoZUDxAPvldPr43e7cCPjmXz/919aeBwokl18weoVVH63k89zdNNWLt2+h/57xEspsUZLd7sa0k3VicUk7G77cL2JnmHVEzvy/mthnN9/Zv/n6tyWl778bo6HwJ/6g8RbVE8rWee5HvsWhurdCF2ZsF/W9sPINMNli5icrtqwQ6jjKyhiIrr1Ou1LeTm4wYrXYauYiKUR6axwAgyDzMPqLemPFBQWjQmcxWGvhMLdyxhw1slxhDd1z2
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 04:09:59.4866
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 349f4a52-af89-473a-9576-08dec05cd02f
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B92.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR06MB6538
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_211005_700541_BA2C516C 
X-CRM114-Status: GOOD (  12.50  )
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
Subject: [PATCH 6/6] video: imx-lcdif: drain write-combine buffer before LCDIF DMA reads pixels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

The LCDIF framebuffer is allocated as Normal Non-Cacheable (write-combine)
memory.  After the splash command calls gu_screen_blit(), which copies the
decoded PNG via memcpy() from a cached shadow buffer into the hardware
framebuffer, writes may still reside in the CPU write buffer and not yet
be visible to the LCDIF DMA engine.  On hardware this manifests as
partial or corrupted rendering — the bottom portion of the splash image
renders black or shows garbage.

Implement fb_damage() to execute a DSB SY barrier after each blit,
ensuring all pending write-combine writes are committed to DRAM before
the LCDIF reads the pixel data.

Assisted-by: Claude:claude-sonnet-4-6
Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/video/imx-lcdif.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/video/imx-lcdif.c b/drivers/video/imx-lcdif.c
index ae5976c771..8d9b40be0f 100644
--- a/drivers/video/imx-lcdif.c
+++ b/drivers/video/imx-lcdif.c
@@ -20,6 +20,7 @@
 #include <of_graph.h>
 #include <video/media-bus-format.h>
 #include <video/vpl.h>
+#include <asm/system.h>
 
 /* LCDIF V8 register map */
 #define LCDC_V8_CTRL			0x00
@@ -262,9 +263,21 @@ static void lcdif_fb_disable(struct fb_info *info)
 	clk_disable_unprepare(priv->clk_axi);
 }
 
+static void lcdif_fb_damage(struct fb_info *info, struct fb_rect *rect)
+{
+	/*
+	 * The hardware framebuffer is Normal Non-Cacheable (write-combine).
+	 * Writes from the shadow-buffer memcpy may sit in the CPU write buffer
+	 * and not yet be visible to the LCDIF DMA engine. Execute DSB SY to
+	 * drain the write buffer to DRAM before the LCDIF reads the pixels.
+	 */
+	dsb();
+}
+
 static struct fb_ops lcdif_fb_ops = {
 	.fb_enable  = lcdif_fb_enable,
 	.fb_disable = lcdif_fb_disable,
+	.fb_damage  = lcdif_fb_damage,
 };
 
 static int lcdif_probe(struct device *dev)
-- 
2.43.0



