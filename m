Delivery-date: Mon, 13 Sep 2021 14:16:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPksY-0003LQ-Py
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 14:16:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPksW-0007bH-4q
	for lore@pengutronix.de; Mon, 13 Sep 2021 14:16:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENZ0BRTcLpqtFgDUiL+riehM5DKHJ89rMKixcu2o3HY=; b=eOCykTNGoJTy2J
	HT4QuV9VxUtB9G2yWOgFDpeGlYyI/XWAgi8ejyfpVnBh31ot47ACHGSMHb35YEiLiUOLdeNLI/vkL
	MEaXsQVwTuewCbREp7vKAmC69lzkZDQ1n1+W/awgarlQvg2Z4LcTcSBmNUA16kySlbEOmcF9GWeo9
	zkNUvfS2jGqrA6p+7kUrmGaJnTgFd5+2AvVnFrnVAblHgUVQBqOAdEbrST0lnzKqcZnAktrwwkD2q
	2Cc1chsRW9uAOfUQhQ+yeLqtwJyXDDYDEUYALvbSrmh0BaA6mBtwWqO9NmkhDmgWno7QnSrAmkDJt
	G7v7Ukob6+163JLhul5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPkqz-001YZq-Qn; Mon, 13 Sep 2021 12:14:30 +0000
Received: from mail-eopbgr60085.outbound.protection.outlook.com ([40.107.6.85]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPkqr-001YXt-S0
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 12:14:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AponcwMYJEkew5LUNlbFE/MDZv/hkGU0YSIh34k6mGuZqH7qULGOOJZadb2TOZUsz4asre1OFuIEZ7WcIpjZF17WpkN+f8dvAcs2wXaBVp5cdVAHkCc52/OuE9UgVcDi/JCyfyvrjSzCnAT52Poy1oRYTNuzn6FEPFqtq78ZdngF4gR1ctzPgHR78xfpMY3SX/j5KnH/7NkrVexvAlJQkbfIXzLdU27292LQf8utgVMgs4o8uMLjGqss+X8LP5gcHZjrswWCV/Wj/XyEN0+10llgiN8sT1kGdhqXd0376l93ywEDKCanQPl8ZxwyF1uYLadEG3+mhqTlBh9dLGY58A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=FGpKKsizhnNxfdVoGECFGfdqTvoehuMGZMsslPUMB3k=;
 b=TJtVfBAFx/LLA0Ct9RyoFA1/qEDomNJDDk6t9ERntYM1xd3Ro9l90EDXsx7pYYQ2K7PUF+pwyDgG9SxJY5qWfU5yWyBoywE95g+Tkgpd98zS0Lmbbq0nNOnPNxMmRmVVm3ZlCnVOPV4tcsYxQB9SVVk2KC1mSjgKO57Fuo1kmG3kJl6IztKJL4HPSk6d8L+zkpDyB1baYIt9VO/Z8jP9Px2wBgRHuzyrnpVamtHhjtcxcv2lG4RtvyskDQHu1nGF04CbOb+JVNich42y2wIRcEEVLwRjjHM9BG1n7tYmPIaqdfAKkQUO9sxEE5HSOiqMPmeP7koyxljepveKaVtzxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FGpKKsizhnNxfdVoGECFGfdqTvoehuMGZMsslPUMB3k=;
 b=YYJLjbJr0kOAZC2Hhbs3vYqfjInwYO1GYBvfIzN4yrV/nF/oY/6IAYU8jQPEcZMd2DM9u6TfJEAtmXBVjuqM8JIpCkE7fyifMYzCb1PB0XEG969+6boYH+SRIz1QFA/qyvvGKzPb//4Hp+ZgQtWPVptdX1EIe3Od8Eyutwx2O7c=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6874.eurprd08.prod.outlook.com (2603:10a6:10:2ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 12:14:16 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 12:14:16 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 13 Sep 2021 14:13:49 +0200
Message-Id: <20210913121350.9307-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210913121350.9307-1-michael.riesch@wolfvision.net>
References: <20210913121350.9307-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR07CA0277.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::44) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR07CA0277.eurprd07.prod.outlook.com (2603:10a6:803:b4::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.8 via Frontend Transport; Mon, 13 Sep 2021 12:14:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c7780ac3-30cc-409b-02e2-08d976b00144
X-MS-TrafficTypeDiagnostic: DB9PR08MB6874:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB6874851E61B6812BD0A0D056F2D99@DB9PR08MB6874.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1824;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k8zxwEmRZ6PZHbnVWlVCbxr5/7NRjAZ3FvLdyWq2NYut4CEkNqFgVkBd0LYKGiXSmqRLvRX5kcpuT8n+Y1SOppHCPFnWvgvoN+EnA8eGxNTJUtOfGU5wmhP5KpWvLX9hFhzR+v4FCbKNXkyDMSw0h0Dz0t7B74LfjgO+qCJX8QuZ6672Jbsb4ok2orJye3pFzx7HORLKM+80kRm2loHLRYxxVpyokdatro8lZTPUTZ89wnImv3dZ5dxKUE8qyXNs23sacphRbZMNSBWebBdMok8eAvr5UP2Q7+lCCFtzaHpM0sKvk21bV6/kdM045JsiknwRBXepxGUi774L5NmYWo3jNMsGNgS1oSdPfbgoOe30A7vcHQGvxg1MJIfaOoKvLAjGY+rZt3j4MXRqQZc2mx1OdY1pp4+P5+BZhG71jdpL0v3ZyYedpHrtTEj6eCy42uP/pVXObdbJVYw6qM8KY8+Z70c3vjA74XlOf9qAfXUHAA9SqPKep6LYgM/ROgbgHz5w5loLcC82sXWfG9t016C+De1JaPldfctVDIvZh5O7qbZqdmoUVXiDmnu7aG0d2DYH77OyxwWF4ONIznYjwyRG4BW62lDXBX01THHmSvjcRBIuZcG+aiD6A4l65OlOUk5uoFFkqfasOkClVnQINNRXtpXzAUX8sMmEGzKuWd3TtdRht0B31IdWuo06hcXrPNSwN8wxjuF4TTNmPLVkVqdq1U7c/1RBPYL4qmNoSFwZEJU0mnZbimEb/9IT1KM/xbXZtQUwns+6DPxZ2GURY2z/FerzcF9P4zWtFtGGVtc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(346002)(376002)(366004)(396003)(136003)(8936002)(5660300002)(107886003)(8676002)(26005)(4744005)(52116002)(186003)(478600001)(38350700002)(6512007)(6486002)(6916009)(6506007)(66556008)(66476007)(66946007)(956004)(2616005)(6666004)(83380400001)(4326008)(86362001)(36756003)(316002)(44832011)(2906002)(38100700002)(1076003)(966005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MU3vHsggv5+NnCGBNiqLqfPGw2Ypy40Q8vspeL7QPgMPvBvCji5xP0lVk95B?=
 =?us-ascii?Q?f92ww9dgWVlZF00sccXmK9DKPoclZI5eWbaGbf/En398ENJJBQZ80ZN5tjoV?=
 =?us-ascii?Q?Hra10Hue0MTTQ4vLSlqZCFLT+E+5EVEe6bXh01RWOe00s8mgQNAubW92uLjN?=
 =?us-ascii?Q?e6chyWM6svnllQXvUnDBq/iceZQa38ojrtVIsgbRlTEMT1yB/hfmT5iz8D1f?=
 =?us-ascii?Q?IeEfmpM9xSeuB5mRHEs3uVOe0qwIqnSxH4LEEi3OS1YSmEkNwIhIfh1lN7x7?=
 =?us-ascii?Q?jpiiVNsue5RcKTlcife4NpGk06J+m2VfhyCvktpHbqGVNJifnRSHp8dcr7k9?=
 =?us-ascii?Q?He0o5yGUd+CcFUizmD51pNpkRwDqGn/Y4VWKlR6LioqhMz/uWqcJzDyseyKz?=
 =?us-ascii?Q?XzbGfiJUWY7PI0CPTKLlH/0eyBcgAwltrLpZiffRfJg2VMVuUHn8ayzNFvA+?=
 =?us-ascii?Q?bd2R7GtrtYt4RETyp2v7g822HmwaDU+LGdPwgr/5J3ZIFqkKyXJgfF+4Yu9p?=
 =?us-ascii?Q?djqOiAsFtAW4RWnuaMrXYsE02x7B1AR0s4M5qlHX4vJ5B1L9O04H24jiKA+A?=
 =?us-ascii?Q?ktVgVOHD5vRo/bo1/6N15567JIdNp1mMwwYjjCVrdRVPg6ZYRmrRryzLJRqw?=
 =?us-ascii?Q?YoskRliJ8fvVWM74GkaMnRzilCXI41oQdlkefWjkLgUOKGqIZWZ8VZWnF1FZ?=
 =?us-ascii?Q?XTMhLn1M2WxGg/tKaqgz2UBGmwbZyOr3Wqb30mcwCX52DbNZo9tBRi0pmB8U?=
 =?us-ascii?Q?p7hgAPWeYibJmmdzTdDFv2PiWI/lyB2ndDt+J3JUFv401HPKZiCBdrVwWZ2U?=
 =?us-ascii?Q?7mIoofWj8bIA/Q5eJXFTi/ilPcp3PW3A7hB7O7/HhPICqYpSeI1QeHjsxhAF?=
 =?us-ascii?Q?lWtfjZeKnJyduAOqJrIsI9zVMJnICv02y6nEmGzcjVUJuVW+sFaOIrHXzbgg?=
 =?us-ascii?Q?weCB4Wdvf3vtVgM3nCtk2epfdz38QpUCxg0m6r8TfGvufCzxoa90H4NB6zOB?=
 =?us-ascii?Q?EZBkvaNeVhtvPZyK+PO+OpZs3RPkeW/OZRLF+GtGN44E2+bWfOZV2rxs2Xdh?=
 =?us-ascii?Q?LoSfi2ncm8EjjC946qq9NCRzJEpxDq7UXpnSatqpPgbMuZhbtky8YFlfKkm7?=
 =?us-ascii?Q?vxGsGsHcPg+jtht7WBSSlzxcb0ILZAilNANtSFSIhMDCbVk9l0n/M4G/cWIQ?=
 =?us-ascii?Q?1tw/D4vH+05PiiTPpP++qktqHVoooiZE5qEO+2TzV+z5OAXLa3DLUlZLtLKT?=
 =?us-ascii?Q?fLyVVBGK6Ckwf+8gu6MWL3HrUHZ7WMuh3kgfvw97QYWpSvnOsUCA2+DlVgrh?=
 =?us-ascii?Q?ITHK8xdybs021v43BFy/KV8D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c7780ac3-30cc-409b-02e2-08d976b00144
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 12:14:15.9420 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gDFnIMDsc9trVGupOJ6zqZ6acTO0u1X1OorIlcMOtgvgZSaF+icdwfBZ2mrS6Kdv0fE/0njJ++eLKa2riEnPwZo9FbwneCIoJ9j35aBILYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_051421_926525_A51F1F63 
X-CRM114-Status: UNSURE (   8.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] Documentation: boards: zynqmp: fix broken links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The external links are not properly recognized. Remove quotation marks
as a fix.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 Documentation/boards/zynqmp.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/zynqmp.rst b/Documentation/boards/zynqmp.rst
index 05d41c401..98fcac017 100644
--- a/Documentation/boards/zynqmp.rst
+++ b/Documentation/boards/zynqmp.rst
@@ -30,8 +30,8 @@ instructions for these tools how to prepare the BOOT.BIN image.
 Create a FAT partition as the first partition of the SD card and copy the
 produced BOOT.BIN into this partition.
 
-.. _FSBL: `https://github.com/Xilinx/embeddedsw/`
-.. _bootgen: `https://github.com/Xilinx/bootgen`
+.. _FSBL: https://github.com/Xilinx/embeddedsw/
+.. _bootgen: https://github.com/Xilinx/bootgen
 
 Booting Barebox
 ---------------
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

