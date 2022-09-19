Delivery-date: Mon, 19 Sep 2022 13:43:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAy-009YCD-Fy
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 13:43:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAu-0001Yp-Ti
	for lore@pengutronix.de; Mon, 19 Sep 2022 13:43:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dm5vLB9uQrdCRgujxoe8YLrkhh1Ywi4dXKRvhpxVcQg=; b=nP7FaojHjDlOIQrUXhLV+VEEJq
	+0BMrfeEifzSEUwYhiRJh48K1ZHSicXoxlUxzOFrLe0i1pO8ol8dbgGPNmQeKfdHIjydQ0qEMBUE0
	2WdpwS8/lu4xLNk+YT2feZN654KE6tlr6qEsp5lqlTWTuFSk869QyUBZIJ7hKPueLf7yGuQ4aWgny
	9+qFfaV1vBlpUAagx0Rcbn6WS0j4bXoN4PjV7La7et59IEzjx6eoJoIycljjzuYxbTf768JxSlvwx
	oZimPshCZ8hKZpdfKrimJEsBJRnt2DlLGQfVBVxugmoZtTkUar9U8GFHBpLFmbXXrwMACwR7VI62b
	/CtYmzWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8e-00BY0o-Pt; Mon, 19 Sep 2022 11:40:37 +0000
Received: from mail-db8eur05on2087.outbound.protection.outlook.com ([40.107.20.87] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8G-00BXqM-DY
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 11:40:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g5OapcHjO9djBkGL7zwoGqzTN7I+cHMdF1NBxl+Yd+WIgZGxV/ott3ldhajfnhijz0rmlP941dqFXRVsuW3MatcH6CNjqbJ99D+zBgZPfFPMgNjSahxfl6nKAAVsS47MqX/SNc+s7H4U/F5aVPWtm2CT0/iutOjO+mZYqUKzGqirYd37akocXXv5eymA0rsdeEaHpYTbQl8Ky/NPTYWNCmgD62Kj/rquagbplsmnmhsv3IUV+rEcWOW09AmDHNJBZfypOnP2IL3x/rol89SIXYs1XN6RuIgZrq8iyUW/b3uQRln9zfFIBoHGgaFvVwcG+ZRadaP+I2BBjwl8c3eTgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dm5vLB9uQrdCRgujxoe8YLrkhh1Ywi4dXKRvhpxVcQg=;
 b=OuST2WXiKWNjiCxZGF8xh+7fFrrmKb1z45oHMKBtOKv3XgxU4HIXk/VGCkKhFh9nLFkNvphWRvne6mdFp+NeqK7f8wjf7p+nTRxZZKTmY/IEG/KAweTOmDRH3mKTAMOQeWCfE4/Gt/cOrRyRH/WYLJ8esFB+2n4OvP0OGfqf6MzAsjcS0n67qoVSWalcL94yhNYYCdhxbO7AUvgxa9/pqEkUTnHbi3CVKJEF1Mg6EG4mTWdyUUbM5TaWycgmLuIVN/w4YEQhr1m24V0HMSCFv3+rVcXk4BQ/R5BqqxDJJXgyvlf1mM6sJyMnVdRyFxc1cuxMvC4UTqNFxh5iRBGjsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dm5vLB9uQrdCRgujxoe8YLrkhh1Ywi4dXKRvhpxVcQg=;
 b=U/tFOweH0CHd+kTLBukKDtflNCtXOYJ5PqlWcjJQq+UysvVRr+/Ua9EsYWXLBZpcbJJLrYRsIKVUtjmtB8WMTwa9hHrDRiINyJZo6JiaRwzZuEFhLnFokPVHRD7Pb0Jehu0NuPFTxGRI74qbV4VcP56usopcqw8wVqq1lM4yOHc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8272.eurprd08.prod.outlook.com (2603:10a6:150:b7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 11:40:06 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Mon, 19 Sep 2022
 11:40:06 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 19 Sep 2022 13:39:47 +0200
Message-Id: <20220919113948.991245-7-michael.riesch@wolfvision.net>
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
X-MS-Office365-Filtering-Correlation-Id: 230fc459-1317-43cb-4a7e-08da9a33b2ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	kQxjryjdno3Bv4GYt+Yv2AqtvCCefmOKR4gFDl1XdNB2Md69fnC5CLJqwPKbshxgykDBXMsTKYKzI8PXAvbvjOCvKvyFz4rziDL7BvhhY2ndz+cX5wZlK2f+4htb58IqzSJlQio9D1M6fySbK+M9ylxnSNYkCcCm9VEhYZ9JwhKHewJ6yFw69ayGCz9XrGU7tweZ8vV9AfK5JoJgDx6l6i5ov5DaviXzOVbSR5qmEh3nu2AG26AxEXRP2BM/6a+fzEmz6+XTx+pXsZ5xreH/bMSPVt7noduwTXh5+O7rWYsg5IqDrSePl/w96ZfOiVLaaM3XL8KyQEfyzzllpXtg7/QA20tA/wm1u6e1ip5HZmkLDYR6r/CKIsUjxoYpEfvg8VZl3IFQif2XJY2h2/8DGuuKQ8OZ1adOhLHqdjeYf8wiOe0czsnIdNAfDscUscdZtM/XuGpXinHHMg4w19pBJdnEBlmWSpDg5jj5HIXTI72uzCVpqXTVaEr+zcpB8vr37FNoJsqJPBzdP4SjjFG87XTYB2iHWRc/4sYAnY00EDGz3YhIZncJM2Hte2nhObg2/XMo7k/sYsChYlBZ6yuKt+fMBaMnx1+ASxxe2wuMhDHB8/ddIiliARDWVwY1dZ3DsCCBErwPzBnofG4ecmGZh/sCvD/EmL6CLQpfyfOZG2gHK56BFZ9UxpBDYp1gxPIss3YyyoeJqv3rdc0gLTzhdg==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39840400004)(396003)(366004)(451199015)(6486002)(6916009)(54906003)(478600001)(316002)(5660300002)(8936002)(6512007)(83380400001)(6666004)(66946007)(8676002)(41300700001)(4326008)(66556008)(66476007)(86362001)(6506007)(52116002)(2906002)(36756003)(38100700002)(1076003)(186003)(44832011)(107886003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?swF3LygpiVke8k1If00SQFzv4DD8mOqGzWUCePf9mfmFHnUi6cy72RPIFoRu?=
 =?us-ascii?Q?vqVERrziep8t8EqnXolRIye1s1zvXhlX3E6liBdkPThPV82nHj+Q3gbLPvep?=
 =?us-ascii?Q?B04x5o91Y8fL2k6m9EnkNq7T9COeB97bu6t0KdiPJ5Bo9BfJAV109Nl+3qUW?=
 =?us-ascii?Q?WSHi4bEDmzFUeNx22yxOLcspYJF7CXz431Q7AXDDhwe9XE8Sb0rko7x9v1Ry?=
 =?us-ascii?Q?j4S7F6wkmVq+Rd5PQ19G7XzXwUJobdhWtJ8ryRS9aYPjZm/j7K3TZbeoi0LX?=
 =?us-ascii?Q?sBxL6Jgazhi0nRc5o0GhAUoGRXnpLROQROt3P3Q+zj0DiYOUtEH97uvaba9b?=
 =?us-ascii?Q?+CbaNTI1mNOyJp0o8BcYw1MtYHLTMx3EJiLzy28ubX7HMQpea+ktIVCCBr3w?=
 =?us-ascii?Q?eVt7zbkTdMXXrBGemSo7TBg6ZXIEJQROMJHMRb9VHgXgRLjmGQpdOWFTC5o8?=
 =?us-ascii?Q?M89zm74QcGjVYdTSLTXGYGX2gkf6Aw4Dk1wlRTZTErsE/JiuoBhetdwq2gEW?=
 =?us-ascii?Q?UFWyajErk04G5ZsZG4HGMnvxRJy7Z10vOTPqy8usx+9QVDxxO3fdJ2SgEPsb?=
 =?us-ascii?Q?DZHLj+TJFqOaIU+FFwBjeRQaWFxgkPjTYFU0M8CZIy4aAIF93Cg2QMJQEEJa?=
 =?us-ascii?Q?zWsDWd9gOlQbf/rMDZoIdRbqYLm/z1L4HC3lF7gl6Yi368M7GCjoWi4uIskA?=
 =?us-ascii?Q?6NnE7W9wAhbgFwQYOOkLUD60BsJe2JTmx10c6lCW4+JlWauUujNVD7i6pOe5?=
 =?us-ascii?Q?+dFVlMIlpOBobUY2XbaVKUgZMClHeMoteADZuiugibtLQmiX4ch0GaYR4V/s?=
 =?us-ascii?Q?1oMDoFJwc/1P+Nw4Mw+71LKkkuczpL1BaU1Sq/7KE8SMqebgD2F+pXpzz9fy?=
 =?us-ascii?Q?VSuqp2WsRIA22M6ac5/Vf452quMfUEnKKCGu1oYeGkUdjyU0jF6NrDKKIAIZ?=
 =?us-ascii?Q?SlYw6NX/KDxJC+5engvecMvW7nJlqvDckGJvvERvRPZgOCyZvIxIiBj26dQ3?=
 =?us-ascii?Q?3m+PFNPPutnCUToXbYzepnAmu71qjuD8Lj2ZA/8eZWQjY1WrjftzD6Mj0ZUO?=
 =?us-ascii?Q?7rr1z002JUVXzJ2yGOgyNVckSIgorP1VpmeKR3HhOt1XNENLc9kg7ieUkacf?=
 =?us-ascii?Q?eqXF+IIXYTgOgTBPoDa9Hrw0ZPI39s30HLtTc2VpECaClWsPEjxusGB0HY/o?=
 =?us-ascii?Q?tXcS2jMlxxOoiizg7msB0GYPDtDGWg8cSJ520oqDxRlQszZKqUeL31AQ6sbB?=
 =?us-ascii?Q?o/ScB+4PNkvYLzkuRNyN4/VzF77RO4+NAXKxnRCuVi8UtVslxvJet7iOqJB2?=
 =?us-ascii?Q?W9BBQbYkrvn24BFlXkXXzWSgBG/iaaX1VQvguizzgLQ4IadrOH6fymtNbH2A?=
 =?us-ascii?Q?shlmVpYrdgOUICLjr0KW9KcJqwboKgHlzIcypGdgRxu6HXry1gL+F4vysraO?=
 =?us-ascii?Q?5ehlGyK8kDqMc135+2QNujhgA7u4G8WwyrdWPeF0McCezAwFqFhVFOww6sD6?=
 =?us-ascii?Q?FXM+3dmRcHDrSISJJfsI7YXWJB1nOg4SIiF62+Pxs5jX7rP435Khdp2glSD+?=
 =?us-ascii?Q?qkgnuCkU/tFhyThGDjc4DpEIE80sDOFeV5xZf4oXyp5VwrSL+/YN8R7YIfBR?=
 =?us-ascii?Q?RuzsPkbOtKaRIemJ/nB63eoccz4vYfZYotE9JYsEkKFa/E7Hr3xsc8pb2GyD?=
 =?us-ascii?Q?5dfwpwb1HxQI2QCGCNaSILeA+MM=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 230fc459-1317-43cb-4a7e-08da9a33b2ad
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 11:40:05.9307
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lSlIcziIe5JtM07v2nMWcR7GnvP+EMIHKnLU0FapBfo7vqP+ZCM1b8bfbwKVfrzO1IbnUp36Fe9jJPMinCeKYLstzuy12AbazEXhxws+gIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_044012_493294_83B272E8 
X-CRM114-Status: GOOD (  15.04  )
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
Subject: [PATCH v2 6/7] arm: rockchip: rk3568: refactor common rk3568_start method
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After the removal of the IO domain configuration code, the low-level
initialization is the same for all RK356x boards. Add a common
method rk3568_start to remove this code duplication.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/pine64-quartz64/lowlevel.c    | 30 +----------------
 arch/arm/boards/radxa-rock3/lowlevel.c        | 27 ---------------
 .../arm/boards/rockchip-rk3568-evb/lowlevel.c | 33 +------------------
 .../arm/mach-rockchip/include/mach/rockchip.h |  1 +
 arch/arm/mach-rockchip/rk3568.c               | 24 ++++++++++++++
 5 files changed, 27 insertions(+), 88 deletions(-)

diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
index b295885522..e1beb3e624 100644
--- a/arch/arm/boards/pine64-quartz64/lowlevel.c
+++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
@@ -1,39 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/hardware.h>
-#include <mach/atf.h>
-#include <debug_ll.h>
 #include <mach/rockchip.h>
 
 extern char __dtb_rk3566_quartz64_a_start[];
 
-static noinline void start_quartz64(void *fdt)
-{
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
-	if (current_el() == 3) {
-		rk3568_lowlevel_init();
-		rk3568_atf_load_bl31(fdt);
-		/* not reached */
-	}
-
-	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM,
-			  fdt);
-}
-
 ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
 {
-	start_quartz64(__dtb_rk3566_quartz64_a_start);
+	rk3568_start(__dtb_rk3566_quartz64_a_start);
 }
diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
index 5c2499362b..9875a3966b 100644
--- a/arch/arm/boards/radxa-rock3/lowlevel.c
+++ b/arch/arm/boards/radxa-rock3/lowlevel.c
@@ -1,37 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/hardware.h>
-#include <mach/atf.h>
-#include <debug_ll.h>
 #include <mach/rockchip.h>
 
 extern char __dtb_rk3568_rock_3a_start[];
 
-static noinline void rk3568_start(void *fdt)
-{
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
-	if (current_el() == 3) {
-		rk3568_lowlevel_init();
-		rk3568_atf_load_bl31(fdt);
-		/* not reached */
-	}
-
-	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM, fdt);
-}
-
 ENTRY_FUNCTION(start_rock3a, r0, r1, r2)
 {
 	rk3568_start(__dtb_rk3568_rock_3a_start);
diff --git a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
index 9c1c7be8a6..4954e9a3cc 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
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
 
 extern char __dtb_rk3568_evb1_v10_start[];
 
-static noinline void rk3568_start(void)
-{
-	void *fdt;
-
-	fdt = __dtb_rk3568_evb1_v10_start;
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
 ENTRY_FUNCTION(start_rk3568_evb, r0, r1, r2)
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
+	rk3568_start(__dtb_rk3568_evb1_v10_start);
 }
diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/arch/arm/mach-rockchip/include/mach/rockchip.h
index ff8b1109f8..7b681c6ce3 100644
--- a/arch/arm/mach-rockchip/include/mach/rockchip.h
+++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
@@ -34,5 +34,6 @@ static inline int rk3568_init(void)
 #endif
 
 void rk3568_lowlevel_init(void);
+void rk3568_start(void *fdt);
 
 #endif /* __MACH_ROCKCHIP_H */
diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index 19dfa9b871..26bc4a06eb 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -2,8 +2,10 @@
 #include <common.h>
 #include <io.h>
 #include <bootsource.h>
+#include <mach/atf.h>
 #include <mach/rk3568-regs.h>
 #include <mach/rockchip.h>
+#include <asm/barebox-arm.h>
 
 #define GRF_BASE		0xfdc60000
 #define GRF_GPIO1B_DS_2		0x218
@@ -169,3 +171,25 @@ int rk3568_init(void)
 
 	return 0;
 }
+
+void rk3568_start(void *fdt)
+{
+	/*
+	 * Image execution starts at 0x0, but this is used for ATF and
+	 * OP-TEE later, so move away from here.
+	 */
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	if (current_el() == 3) {
+		rk3568_lowlevel_init();
+		rk3568_atf_load_bl31(fdt);
+		/* not reached */
+	}
+
+	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM, fdt);
+}
-- 
2.30.2



