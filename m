Delivery-date: Mon, 19 Sep 2022 13:42:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAr-009YBX-Tb
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 13:42:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAp-0001X6-KS
	for lore@pengutronix.de; Mon, 19 Sep 2022 13:42:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Un+4gB1eQ4CE0+C+LYlprBRjgNdVDc951KmDVIigMnc=; b=NQ8B0OAA7f+sQYDxoskn7SIffY
	DASp4DcpY/KoDo0x/mC4FRdfyoUdx8VPTdz/qkT1GZM+KH/msS03zGaUoX/U4Tl4qAR6FusenHQfE
	sFOImiWDUxu9pqiyEr9mDoZIZoIDAUfNw/ww5ME8RO0+8mJz+EVaBmDkH/twxDbNNH5u7XUGKBbkR
	zNQoWmZGb6mnhTGF9aG9WBWxZhebyX0CIZdCfs0Z9kEMfdgRZk24njd+nHbXMaX8yzL7edsaaglUh
	0uIBcGZ2yLAhdbgcj5Z9j6c6p4YN19kuQHIl7nj9a2bHo2vq+zMfzICBPWzM2b272WicxDUOTKOMo
	6cD7kzCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8l-00BY3z-M7; Mon, 19 Sep 2022 11:40:44 +0000
Received: from mail-db8eur05on2066.outbound.protection.outlook.com ([40.107.20.66] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8I-00BXou-2I
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 11:40:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bsYF3aHLCMyLH/Lig1KU/BqQqzekkcKXMc0mdAJQua2lLqUlDIX/WSnJtqligo188h2DGAdTAIViKj0b5rFH0nHBGQBXU0S4vs+LMYYWW5R35W1/QdMAWGRtyKmgcxO28DAuE1V2qJdOH4XzgrQHTAxfUaOx2/EnUcbve5YnaRSJ89VGIheqOxPBCFlGpf44ZTu0taX5HPDG/+IkOKG90vFz5ApO3f5IAxOeZOCJPZ4P0wl8VySMLGT8+ur3oTFTc8KZ3vmaD4eHYU7sbMJqfVz2nqZ4pEleVdUBZG13hvOs7uSzm7PdDeVg8JdcS1W7SvmpVA1BHo51vOhCoLRV8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Un+4gB1eQ4CE0+C+LYlprBRjgNdVDc951KmDVIigMnc=;
 b=UN+tRoQOsrT7ri4t0J2If4H+kaWsIzl45bLiDsQ1gp4NSqqfwa01HUoFNa3YDonUr8YlnozXxJNORGB6U0CXWjc5cHHMPYLpqqCJ4F+qa5/2SeMEPqOICw6aa021I7dDtTLR6Z4nCVKdCb3Yc8mzIStLMopHxHUes/ClIbsAkUKrii+WP34vImpJLXug+mzlXtfuflyL7W1OkvM+hVI8HvI3yL0Vqll7QlEBqsX8/wbVAlkcAUVazRsy6zWlug/iMal8aysekLUeXXW0Kfd2rf/MpkAEgAJSPN2gYHUzw+95olCNF27vrvpigH3tS8WEjK5OJOGNDExPOfSu076MeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Un+4gB1eQ4CE0+C+LYlprBRjgNdVDc951KmDVIigMnc=;
 b=YM725agjLAspn9J5w4TBdU/v40gKY36xg57ZN0OU90h2gZrBK4yiA11d6RuAZpMQJPYD+XPho4y3A/ZmWlWqEEQdH3+A5Ubyx/gh00eTjpAfavIEwbR1LMa5zINK44euFJgZA2PFyAq1auVY3gS0PupdGYIoVFimYloyXTXWUnc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8272.eurprd08.prod.outlook.com (2603:10a6:150:b7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 11:40:07 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Mon, 19 Sep 2022
 11:40:06 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 19 Sep 2022 13:39:48 +0200
Message-Id: <20220919113948.991245-8-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919113948.991245-1-michael.riesch@wolfvision.net>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VE1PR03CA0042.eurprd03.prod.outlook.com
 (2603:10a6:803:118::31) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8272:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ffc6c59-6465-4496-cfdf-08da9a33b34c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	ZCgbqS+xqNqN2T6FRJfMpYMicQEUAS3fIU4WErYmgjscvBOPemhnm+/GlhwSzo6gVVjiAfM0nAsuBiXSxb4cGQEJhVJQQRhfZAmNn+YLNU5iOx8RZxYVhqVL/gGwqYvYjl4y+JCaUd8HwOgFJQf5qJJbrF+ip+XYJcJ3cfLxZGlS6Du6ZCwOtBn5VhhKHzEMC23IDoWzgFxbDkPhY7N3IfH4Yn3tnZdZ9+BNm8s8SJey/tj6mB/47/tHdAoMxlLJcIfWY4ypS5vCLQSTUPi4dH+TJN2Xd83H88rmbm9337hqyl8uSUth4LRJgGGTxvg9LFikhzYK5HbHoipCdKZ6TsmjRFOv81Cm8j0AFL4oileg3QFsegBdUnQnzBwzwYh2LPAwvX2GEmyCU5dZmPoMSZuxqXcBxD8NtmBdvyOus3s10c80alVYG4bgQLkmH4AUX3Yg6BGBkAQWniirIYvBoPjml3IE4XmZbBLIY1zfIG/+gso7X6EtjTmEnleK+Mco4CU3ho0NZm3Z1gi9zWOpltgiSdLOoRjxmfkx7zIFliYFfqnxvorrEhBDQUtfQ1AiCt7tWsAoTyEnVqcdQYB2s8P2EXbXuM+GAdE5HJbNughNuBQ5wyf6SiBfH3X/Frxeo0BMxB9LaQo78BB8LolK59TjPptfWtB/YXt9fr+FxN0UxCnbZviVXH4/AREHVKGd5vQpcfc+S5iHe5yBqpU08g==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39840400004)(396003)(366004)(451199015)(6486002)(6916009)(54906003)(478600001)(316002)(5660300002)(8936002)(6512007)(83380400001)(6666004)(66946007)(8676002)(41300700001)(4326008)(66556008)(66476007)(86362001)(6506007)(52116002)(2906002)(36756003)(38100700002)(1076003)(186003)(44832011)(107886003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?VQ+ptg82uDwFHHMcgV9REe0K/izQxPV/5Yr7cCcC1z0ZJsHE5OVBsP9ZQVJ1?=
 =?us-ascii?Q?4DzcyrCPuibUBNDKX7P2NhqVCgMoE9388yO4wNgSYSVOOdYvW803zoEyvCJ+?=
 =?us-ascii?Q?4Z+FtyUaV4+OWx4LV4GKMUEX4gSrQzHpk1QLnPG5YllQt2w1H08COl6+ULh4?=
 =?us-ascii?Q?ZKP7OcvtpNfGEFM5bcA96zXdEzzgH6msqmX0kIe2oK0Dwl2WoMOSanQX4guI?=
 =?us-ascii?Q?nUkNKBm0bMI6c2Qh71NfKFKv3yZFN8H+EqpITfZ09eigW8B8x4nx4afg78yj?=
 =?us-ascii?Q?PKaqTsOK2ZUJ2DtRjy3azCoulxsE4nKILNsi65nyZCiKKwf6W6mOykxYcgtO?=
 =?us-ascii?Q?WQs3VxqPcx6PwEl6q7sbL7/bNDvy43qNwWJrw8H7vK+I5O5RgYPcpw3jgqaU?=
 =?us-ascii?Q?IruxlVxnkGdqqZLeqnN+3EajRaknNuDx2tCnhuF4cJrZJG++jIlb48TWLwto?=
 =?us-ascii?Q?rI0DSl3v5B8SloW7/PgPlhjGvXDK3opgML1btr08iwJLajNoMxpKLmwKGmrD?=
 =?us-ascii?Q?PQxRx/JFB2DwSDl+rm6S2cR5jwVSJPZW/EGrmH4ASWBH4RL89AgPCL49qKsY?=
 =?us-ascii?Q?6zetlHjzrajRuDNVciwbvN6PHLTzONg0kBWP8KDKvgEk2mO5ZJ/0/yACjXcE?=
 =?us-ascii?Q?F+ol2SMsyasmk+JwtXWXHpQrfbKZ8aGmRwox4KGRxdFZqZOgjCF/VcPrGeFL?=
 =?us-ascii?Q?gnxmXvC4V85/kdjI7AgDRrqrAwQLMWKeyVNHv3sjpLDZH9TodGpGlePXiaRo?=
 =?us-ascii?Q?TSDXarkNntGojhnvOAO2JS8svj3Dfsiv025VdxrOmi9M0OdsI7RCGpBdRMpX?=
 =?us-ascii?Q?WfJFMl+1hBVI8p/ZeQB0jtTro68orvD5PtgWlIeLMmGb0ovEO2k4Ae5rEF9N?=
 =?us-ascii?Q?LoIHSDDWWkSUbej1IdmZ/6YTIUe3cBIxF0M5Df/OLzjKi5ExNwHZsx5AsrMp?=
 =?us-ascii?Q?wN16TpmaWV+EeQcuLKZbPEv5I0/B4Mkul3v3aX/HoUk741+okzwahoQgF5Xv?=
 =?us-ascii?Q?gTIKajqnb2yeL4H2jg0CIulNnYBypxnXGsKDz20icT5NFksGA8JGya60djA5?=
 =?us-ascii?Q?8RoknAnE4c7KYm5X61ALS0fDtajyPT3w3hsZgqvC5vu7OsvX1dR2XEWlbnjS?=
 =?us-ascii?Q?HE3QFV7rNRUqAX5lFlsWjQcLdA/kIP8jDhx9cnyOSiMB8X6hY8Ytn4YXYV8F?=
 =?us-ascii?Q?wXkdboXBa/xl6iFjT2/aHGP15YRvdxPiwqYMqrZr4nwOrMGfZsKNthDFt+pu?=
 =?us-ascii?Q?RATpin0I2G1MmrGOoEOkr9SoHKOg4VOFBAIpEBKbPyezu/Rzal3XDCfTfXO7?=
 =?us-ascii?Q?r+mvQupoJGu9t+N0Nz7MKNOrUU3FOw44Fm3+p9C0Yv1dt8JNo4r3mDrtJ0wL?=
 =?us-ascii?Q?G7UkffhPrwdEDs0xt9XbC4BtrzyQmJT2ZtQASJl2t61ZTlQmoAA16Alrbqdh?=
 =?us-ascii?Q?mSVK2VpxCUcjj0J3B2zgFuOuJ48rWZBdND8uTthZs6QF5eCWsWjMMlaE6VVG?=
 =?us-ascii?Q?G+trwLQgMe5CfVJAY0Z8x6gIHCUlxAY2UUDTnExp22H0kPD7kzR7wlI48p6E?=
 =?us-ascii?Q?6Dr+KGuhtaiWCws+xRuXC3A1bF1ajbQ+JoQUj/Ct6m0uVieR+0ufst0POPFI?=
 =?us-ascii?Q?gMu2cR/PyagJBAZeCjmJ8NVbtIHMfebn6BKstx0R2a66H4qREyk776k2DNKi?=
 =?us-ascii?Q?+/iprRPZ6sZmAuYferbOBPpQuAM=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ffc6c59-6465-4496-cfdf-08da9a33b34c
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 11:40:06.9376
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XSBps8hoCht4FcRb9NeXRYjnn24ErYzNInW/yh666EymjSfxHsEr2UGR1hFICcdazU55dL9HuveZ530MZowsJ6XzBkHnb+X9JJwqeIvJels=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_044014_179969_C1418520 
X-CRM114-Status: GOOD (  10.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/7] arm: rockchip: rk3568-bpi-r2pro: use common method rk3568_start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After the removal of the IO domain configuration code, the common
low-level initialization  method rk3568_start can be used to remove
code duplication.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../rockchip-rk3568-bpi-r2pro/lowlevel.c      | 33 +------------------
 1 file changed, 1 insertion(+), 32 deletions(-)

diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
index 36f7acd7d0..8b04dccc1e 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
@@ -1,43 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/hardware.h>
-#include <mach/atf.h>
-#include <debug_ll.h>
 #include <mach/rockchip.h>
 
 extern char __dtb_rk3568_bpi_r2_pro_start[];
 
-static noinline void rk3568_start(void)
-{
-	void *fdt;
-
-	fdt = __dtb_rk3568_bpi_r2_pro_start;
-
-	if (current_el() == 3) {
-		rk3568_lowlevel_init();
-		rk3568_atf_load_bl31(fdt);
-		/* not reached */
-	}
-
-	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM, fdt);
-}
-
 ENTRY_FUNCTION(start_rk3568_bpi_r2pro, r0, r1, r2)
 {
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
-
-	setup_c();
-
-	rk3568_start();
+	rk3568_start(__dtb_rk3568_bpi_r2_pro_start);
 }
-- 
2.30.2



