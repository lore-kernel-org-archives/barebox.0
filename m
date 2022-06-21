Delivery-date: Tue, 21 Jun 2022 10:38:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3ZPQ-0094Dv-6v
	for lore@lore.pengutronix.de; Tue, 21 Jun 2022 10:38:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3ZPP-0001xW-S0
	for lore@pengutronix.de; Tue, 21 Jun 2022 10:38:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HzOfr3gS56Mg7XbWMvbte3tE4jo3cXJA1gZXowscDpA=; b=X9Lz9ci2ABcSa+JEnSPz8ExIkU
	I7ZPAMZfPIQJsscyvaSExEyBntX2jfwVJbFAqg7JGl8tvtMkhk7S8DkkLYbsJ/QnT6pFYnI8rcaei
	JuE4w/yNsHnnLGxp7hoSGLU6Xl2YAozimIiL8+39s7U8KTDzieIg8iUga9SkL7KXOtqyyJ8sVAWpu
	Zf0pdW/BiIx4bZXp00CI/xMWXkKcjda+BPxIjvuA0IodBRfoMg1nhmkiVD4+fs2Eos07vl8k/xuuS
	+7Ulet9+OIbNFkVnmVezhHUJVdv2ymew1O13Wq77J91iBSFgUmGEkUa66nEgW3xGwE4z1YqBFO16R
	1iU0snLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ZNc-004MoX-24; Tue, 21 Jun 2022 08:37:00 +0000
Received: from mail-he1eur04on062a.outbound.protection.outlook.com ([2a01:111:f400:fe0d::62a] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ZNX-004Mo2-1C
	for barebox@lists.infradead.org; Tue, 21 Jun 2022 08:36:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PA4VEiXk6+XpsxEpShqNVhZjrcIK+/LVOWKVg0/r8xN1vR2AmjIq9C4hJk5b4wC3uFyXgEP6830kE9380YfKdWgt3Cr5YWWTHIWixcTILDioFjup/962/4pUH+uql1RiWPEWmF7EROarx6+tFyUQnbMQV0FqV8UByTteoLZ3x1fy6UEHzq4VfpOvVYv1Wj53IZ8bSWxc67xjshmnSYS4ax+rVGAge/+tfMpxhU75uz/bQ2p6l8iKzS3hFVFyZzgo2EG1DM9ct2DfFDwxfqyhppz8PvaA+IQAlRtGWFenPirLzXAs4nfZ7FMfPDAvkquoWqk/kywN0FQlBoownlxn9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HzOfr3gS56Mg7XbWMvbte3tE4jo3cXJA1gZXowscDpA=;
 b=ambzloHchBSglgzkNM3scStVMpITAWn0bjlX0zEcJ5rk7ql0x+1k6XUr1jJOyz1WDfImPkgX0a9YAVx6Hlbu9lFSVH/dMIhTIBG78x7f9LHnaTqfXFRQZmATE+zvDkDP5CPjmdHPcKP/APA+/G5iffsouMDmW/sip/oyvgL1JQR+Wce3dn5bKSrqn7uPzaT6/rrJaKAXa9sw9Iv8CqCaJP5aIhs2R5Fl3wJcbjNwGDf9tg+vv7NVhkbSOgCjh7jzg5DjLU29thaQPTI226JEO0FupxGVQQGwfHAblHY/u5bh4zKwuGEI5rnpcxP6ZjF+u/HNoNd+LEdyVxbwUcgoNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HzOfr3gS56Mg7XbWMvbte3tE4jo3cXJA1gZXowscDpA=;
 b=GCnggrGe7jq0isItMAfsyqqC+qW/ZzyJKq7PbNWs68ObUti+LxtOWnGr2Uj9HFeeI7mFpHN1YrH0QrX4Wjbco3myMEcXKy+irHTqh3V9r5vhQUXJ0QXtSNi9ovuGKPjMMNV2ogUnnrbqJrKzBruAuPpy8Rwd8m7m9XDfFx2qy+Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by VI1PR08MB3678.eurprd08.prod.outlook.com
 (2603:10a6:803:89::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.16; Tue, 21 Jun
 2022 08:36:46 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::dcaa:905c:ff8:1f5b]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::dcaa:905c:ff8:1f5b%9]) with mapi id 15.20.5353.022; Tue, 21 Jun 2022
 08:36:46 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 21 Jun 2022 10:36:37 +0200
Message-Id: <20220621083637.33660-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZRAP278CA0012.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::22) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fbc9ac01-8e0d-40a4-bfe1-08da53612d64
X-MS-TrafficTypeDiagnostic: VI1PR08MB3678:EE_
X-Microsoft-Antispam-PRVS: 	<VI1PR08MB3678A6421F972028A1ECC8C5F2B39@VI1PR08MB3678.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	4khPZKcdEUWAsYw+3Nuo1aFHT124rtVeiWa5H/4tXFrgkDw+fe7OG+FMpGCIErJuRgbpwL+AUaPfoBQcranxmXRxtvWGoFlCqFpgaNPKJg0rmNCsUcqm7Ch1unA2q2w0m66htH1LOCobP6KZGfCjGjknnhsyiBs9RQnKxg+k9GdXr9hKDc+ZaVrP610EmSMMIvjsth4fz+2SFcu8agvmYVnByjDfx1UdmtPAN0RBjrJCRdJvZrTu6B0EhCy28Zl8yLFMWCuolcVv70q5F0md7lIZ4rsmmsJR52toc968B0ivlaHLfnDdkLgkGS+vUlNq81rXAwGhA4WSITOqvij/fLfK9xKIYWzkYocz0q0YGfQeSNBjYHBN9JZ8KnHzJKawEPfIVZhcXCcLmWHBBNZFS/WM678Rtt2hnAa/2girzVFJ6UnCggEn5dX/gM85I6WkPSPp5qPRyzoQLvxxDdDRSgYvscAZnvIQrOmVaiEbjX3F6CTh2PZ0ngwxbd5qQyvK658ECsF+Z8l0u0VQGwy7ATgcdmS/y4wBtPbgKxUTXXOFag6n+XpsD/NhXsFUwCJSEVeRhDNzI1Zxcm0jmGxD11iX08PPQ1L1qeXGabNqSYh+VKLCdYZfyyCTnSX2vDJYkhGYLnH4PNDs1qT2eo/ppw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(39840400004)(366004)(376002)(346002)(396003)(36756003)(6512007)(41300700001)(478600001)(6506007)(316002)(8676002)(8936002)(52116002)(6916009)(6486002)(6666004)(1076003)(66476007)(66556008)(2616005)(86362001)(4326008)(107886003)(186003)(2906002)(38100700002)(5660300002)(66946007)(44832011)(4744005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?NG4V4n8KkK9MRwUKt3NlYfloTbhqum3lAxxC9iSyz23rP7wN73GhGM3NGAUC?=
 =?us-ascii?Q?zefARK86Qpa7BXsv6UjgF7Cg8hTP+Fr2ColbpTYJl/Vrm4MUAT6FG4Sxb/XM?=
 =?us-ascii?Q?nQZAVa/WR3Lq3rW+olbJZkaRZnezvVsqigYKfraIdtk2WxyA2ULTVl2FxXA1?=
 =?us-ascii?Q?+8RHXCAFtxDBnsz0TsbFVKuBvBFBQU6cWbR5pYcv+OLVZbnOCbH+TGJ+gZk4?=
 =?us-ascii?Q?WU8gP/bqT0wDsN0WXmXKge2bZaDH7Pc3STPWfT/fqFoNLhZdlEooxuj2PsnU?=
 =?us-ascii?Q?ihWn6Klj6jA9SGLNfrSuuY0C+FT3AVyrff+Y9gvF+jnlVLI8prZ3bAIy81eA?=
 =?us-ascii?Q?2mOz/HhM3fXtb/ar4kQvVXdBAkFmPDFOqN0g/LQLyWdctp294a3hjJRaV+nM?=
 =?us-ascii?Q?6+FyhFYLfzAS39KTZA5W0o9Xvf2E0xz1qCTIkeaxCA6DDmkjZzhvZe4K5J4G?=
 =?us-ascii?Q?MkdGwE8Pw6tFSwgFjB+4zJe5igxX9CcOAt0/fVe0l7yBZse3bSOUVPPdq41V?=
 =?us-ascii?Q?CGjrBDqqOl4w/HNMq4qLDVnyuPEvCI8L2Oijf6297k/f/KG9xcfZSRgni7Wp?=
 =?us-ascii?Q?/Eo9VsgHN3Z0j/3+AXX1W3HKlezqkpI7yE9e27oAtpEBobw0djYj4U2DwTsD?=
 =?us-ascii?Q?6R4Rlslz/t0AUIQ9JIIbSIJkNOVaFoKtcNsTMelx5O+CbdwUCNDoXr+GuSb5?=
 =?us-ascii?Q?ckIOpugSjcSAYiS2XBF4P2rA0/my9TrzQKO1jSl9F4cEPzin9h7eOlqsHecK?=
 =?us-ascii?Q?B83gejbLfwF9M8wk7pCHrNWk6X76eTn4YpoDn0TldecmhXOW4RehHHY7DYNQ?=
 =?us-ascii?Q?6AmasnHEwS8bPBZi/s35V4bz1teLyFi8bCJ2k3pD+0xOCxCiGztrTfXN6mnQ?=
 =?us-ascii?Q?AMHiMxrUbd2xPPoZt0fMCgs0baaHwTcRcSWe92GlSY62MDXvaDaeZNqKpxmH?=
 =?us-ascii?Q?19neqbYq6LzhcPK3QY3feUf8iBVU1wEJGv1uJBXYVWd49tfv6bwdD1YHPo9q?=
 =?us-ascii?Q?S/vJ9L0ABQsNuIuIQkkZU+4pNBlly7dulXuS2sgdYA4n61ZSE8VFf8shWlc+?=
 =?us-ascii?Q?k0M9mnQO+Z09M27vCJwjl7bptm8FGWLzFv0bxdGTbV7Ccf0kf/3E3ZS+jBpr?=
 =?us-ascii?Q?Cvi8nZpm6QhAaM/f4u6zgmY7/ChUIonC9EqNIIWLCJ4bRfkCovSyNT4fNG83?=
 =?us-ascii?Q?uVXOSkA8FGG5ICCUAs1PQR1GKtyGORLSalPvp29As9k035X+Q24cAV+7Iqvs?=
 =?us-ascii?Q?FZkA8tY/VmOs9J2WomMpAf2PI0t3UFYZOYfn7xBaWSfmxB4U0iwp+JU8sDeg?=
 =?us-ascii?Q?Nhp+Po2Ww1J10uq5qwyrxYPLvbCev4y+h/jTVVxKYCG2VpmVvxar27/af04L?=
 =?us-ascii?Q?k85AWblPyR5vqQMREPtSLCHeM/VtgFCkZb32MNSz3KIBzW9V4UVN+yN3gsff?=
 =?us-ascii?Q?2fWMS5XbIAzIU49r7weMKF4yOoeGiI7nloz3ZCmRRixsnyyQCCRb0V49zQwz?=
 =?us-ascii?Q?cevHmTdhN+M1JqVtc04ncA7xpD41i7h2WocnIRMqnwnlK0fYtVnTLOP7RSuJ?=
 =?us-ascii?Q?I9RCPn2kYpgCMyNKNDcG7FEEXoOAOqd5E68sjisjtobY26YaZT7xmmawvI9N?=
 =?us-ascii?Q?0LVZV/WlIRPZ91W2Q63sjKOeccesXU91lryrGLdmkqPIuGFO5x2KzBcalmhN?=
 =?us-ascii?Q?AHAGIBPt7ePmQRTW7Mjk2tt65Yb8SkkGM0JyElhe1hnUIUKUEcWryvpGOAW/?=
 =?us-ascii?Q?v3sgUNG+MhpceuZk37DgNDL7NwW9ydc+M7WiPiCF7Ok9uHhCjM9F8edqhscm?=
X-MS-Exchange-AntiSpam-MessageData-1: 	kdNEgH9uBe3Tki3+lqdWQnWF5g6ptn8D3HDKNeDVkfCg+53zOt3NRWJJ
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: fbc9ac01-8e0d-40a4-bfe1-08da53612d64
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2022 08:36:46.6575
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VF6jxVOuVWY62QD18aRbB8l63cT4GwunIdOJfMGdUz4uLiQLI5tOKlUCZIvy206cINzS2K+d1lF1t73TsZy8sFoVfp3sOABxE/aXpgzf/9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_013655_306478_BCF8162C 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: rockchip: radxa-rock3: enable deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Enable deep probe support on the Radxa ROCK3 boards.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/radxa-rock3/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
index 30ad594d0a..aef5ec5df6 100644
--- a/arch/arm/boards/radxa-rock3/board.c
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <bootsource.h>
 #include <common.h>
+#include <deep-probe.h>
 #include <init.h>
 #include <mach/bbu.h>
 
@@ -50,3 +51,5 @@ static struct driver_d rock3_board_driver = {
 	.of_compatible = rock3_of_match,
 };
 coredevice_platform_driver(rock3_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(rock3_of_match);
-- 
2.30.2



