Delivery-date: Wed, 10 Nov 2021 11:47:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mkl8m-0002Gx-2a
	for lore@lore.pengutronix.de; Wed, 10 Nov 2021 11:47:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mkl8k-0005l3-RU
	for lore@pengutronix.de; Wed, 10 Nov 2021 11:47:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yrw16uTTqXVWjWil9TTyGGKH2jgO3xFxzB1fy3WKoiI=; b=EE1+BbGNpIK5Ea
	dnoG7JH/fb7dHp9PSuZgAObXt1VSYj4xFBtSreiezQUClqAInwnLubLnEiC11opvHaBimf1OY6gV/
	WdQAaQ90waLSnFBWxx67bnwr0gnoFa3D2kVJBQppH0bNNi48YfDc0FLgreyx6AvDpOSS4ygeaDdHM
	AAwtfla81z1ahMxZ1C8j1GCY89SXxjhnh8oRbbx3e2hYZGDYIrFZtuFRgA7MrznvcHK5nHpjn51su
	n7NAv5havSIz+JB7oUFHqCddbG/eEkWbuUU19+7UweEo5K5YVMPv4+XIg9H/tpSOXJ+UhFDInqohH
	xJ+lOurN6qVc6RR5ggzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkl7B-005Aey-VF; Wed, 10 Nov 2021 10:46:02 +0000
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkl76-005Adl-Ev
 for barebox@lists.infradead.org; Wed, 10 Nov 2021 10:45:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLe1UgzhHe7Ah28DMru5TEeNiG3gc/grhBWvQq96d8IO3JHimSbklefBkfkKtPGacmjEb151DvWFaVhCJYVs311vV7+zviMSgzS5gOLbiQixtJxK0YjkudeDMs99bFf8Hg3L5W4I/EzWww+UHK1hUlPc0vp7HyQc7lPdErsObqsYGgx3tSPAlP0JVkVaHm0Ck4OQdT0lKt7urp2SVLGhURCJSxscMb91tLFCdb0ujluW12VBjp3z6jU7oBbKUnggFn+uj/ab/3iDCUvUrxA3wOOJMc5FqVbCpTdj0ejIyrWu2l30TgQ8mDBAm8N0g2dDzd33KeloIjHGqvChF2REkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/iBspfMelh8ZghwI49o/FFb8ZIV2d45risZJ377ZA4A=;
 b=Cec8Y2hiHBCL71+xZbW59PN15PFiMA0w7LCXX+0zLix+zttBHXptiuaTD9rSle8N9Twtwxcnz3uY5iR0chdSxO+HoNIOtZNEY6iqXuwTnxmjaQDxx7z05aqoBTQa3VlF6fb9fZ1CkQ7BKdr9K37wDOie+9jFBt/BBEYQYUw82a1crrFb8g4OZBFJD8ddjj8PBYyZl/S2VpitqY2JQecj1OzASL7VmIcto7vfQKathqvuPU2frLAKMnHaRmlbB+U5YC0dcZZGTIIMI4YJ+mlb0mzSC6c49eSjHqx014+6D0UoEy9XhdjB5NOLcV2GO4OesObsXWNnmpwgxSal4Qjw8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/iBspfMelh8ZghwI49o/FFb8ZIV2d45risZJ377ZA4A=;
 b=QPIga3zHydye7JywmgTOwkwv/ObLzwa/k/QSje5NnbJMZjWayLDjDoPOv4RWDOmaiEj05Q36/gwvMPQSuGJKsln8r/E/BNRBwWGEZU90McZXAVtw26kHvkY44+ng/lW00DqJ3aeXY0onNv32n/LBhWNoaLpf48htdmb2yHMXuMg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB4393.eurprd08.prod.outlook.com (2603:10a6:10:c7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Wed, 10 Nov
 2021 10:45:48 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4669.016; Wed, 10 Nov 2021
 10:45:48 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 10 Nov 2021 11:45:29 +0100
Message-Id: <20211110104530.980192-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: VI1PR08CA0123.eurprd08.prod.outlook.com
 (2603:10a6:800:d4::25) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:7d7e:927b:463c:154) by
 VI1PR08CA0123.eurprd08.prod.outlook.com (2603:10a6:800:d4::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.16 via Frontend Transport; Wed, 10 Nov 2021 10:45:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 19232881-26ff-4c4a-9a44-08d9a437419d
X-MS-TrafficTypeDiagnostic: DBBPR08MB4393:
X-Microsoft-Antispam-PRVS: <DBBPR08MB43934E1C0414420DE25855D3F2939@DBBPR08MB4393.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tvQxul+vYAMiknDuR9q8wMJPP5G5ozzB8Uz4uGtLmFzlN57IftmFPM3yoKEZzY5sGT938lwxnkqCxRgzG7Z2AbVWvxaPlvFgFrfcxTbBaUlJXxi5wmQXvq4euV02hgpa56gIjyO7XzDZokmvWt7TtGHfymeRAy8EGSNr60AsbtSBaCHZBszd4Wl8ZnFQzBs+mQemnUJJeNcC1RcPppEdXM79XxfnErnhKx18tdYUQ06155PsfsgTvrXOje5V5pZIU6Kx+C8UbmBtK16+MKzGoMMxexLJMpPbpbPBS7d0ynpXj/qwyRj6ArQ5eJC/920zKuWxgsTiqhpFc41h51+P4eVtsbNvo5q7B/mr08gTqA5ScHV1n+bK98hEugw9QAKR8nNezusZwKHS1aiNdMpniMY4DbFTxc5+jCh159gVwcwrvCqBCXl3c46+BOLoLK99WSZ9L7OGaHY/XBZdagMhf/iUSmZ4g1DWfO5HgJVlOZi2zMhFmnWyN6ThVoFoEJXGeO281t/vIWd+jEWSaNhKOoP8R6X/44ouCyJnpBVB3qTlYHeeH4+omHedpKsXssBFZIDwHrDwV8QywNHDxDwaymkOoLL7O5TXzpHwnxXHVv5f515U2of37nfFxVQEb6VodYWwzBbh/VfXNPZm9dRd7g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(346002)(366004)(39850400004)(396003)(38100700002)(66476007)(66946007)(2616005)(316002)(6666004)(86362001)(6916009)(107886003)(6512007)(6486002)(508600001)(83380400001)(66556008)(5660300002)(186003)(8936002)(4326008)(44832011)(2906002)(1076003)(52116002)(6506007)(36756003)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h6rsvvCKn4l8p7IUyAeKkHhUMNDXVRKsBuWfRTRccvKme34ozoBsfoH4AVhf?=
 =?us-ascii?Q?asdBAVzGlf0Ot5y2lILprPYZYAvmyefQ8PtgFKAni1v7Ne4Cos2IwvQZG4VM?=
 =?us-ascii?Q?1HmV8S3LVYYPV4gHcrrMqJKYnXhsmfm4aXr44xFfCMQWqGy1Ibdq8/Ev5+T1?=
 =?us-ascii?Q?/x2ktG8R4ROogwV1EnBaAQf43DaJf0XuxT5trEyBOk1LkWPqEd5H9KG2RnvS?=
 =?us-ascii?Q?wCKXhm6NrIhs8BEBU5HYAbCEYgcHSbwvwimWPHpcN31yZraid0NHDPxZ4t5k?=
 =?us-ascii?Q?LR56PouFTi2aAWHs/i74BxEy2gpKgAACJYysWZyO6HXnLfeVGHjC2REyKxpK?=
 =?us-ascii?Q?V+RxWQw5OCsInnFyTuURmkUCWMWWiuq4ADA+qD7SeLBAws1fSaqXmyvsecpL?=
 =?us-ascii?Q?FEyjigMAfCoEgpd5IG8Ls6kWBGqEtWiyh0IAz3EgPYmuyMnGxeyoOHm3Lppg?=
 =?us-ascii?Q?BfaCdZbZUjYGZG5761iqOP+3OBKVw++I2TQh5yY2VTke5oZVhSIh2Btmo/Lw?=
 =?us-ascii?Q?xwBA5Y6n4VquMJYhMNwQr/dgcqZtEiOfzNHS+u0qAqZiVDFoHq5yCV6xyOOH?=
 =?us-ascii?Q?qdEkKnAEW/U2oU35YvrV3iaPVGd8LRtk4l81qZnPzKMqx9AEo+2n8dtUrYwC?=
 =?us-ascii?Q?N9i+RKtMHI9gMtbpdNCXHPvwgSaqPVzaUNQNXKapQUq79NxsvtCYKA0cxLtm?=
 =?us-ascii?Q?7a1l9iBRiKbuV+8nneIM96Gdt2NIA2a6panke6u7+TtxCAGfQ+GBUWn/z8km?=
 =?us-ascii?Q?Iuri8wj4XdYuxqt/d+ntTwaBo/Q2ZJtbXJlVxWtmWFFkWMPP5xrKu0/N1fFT?=
 =?us-ascii?Q?YSV1CffK+naf40bQO+usYvoF4BnMLldYDwFa2bJGf2L9Gub7/XFoRq67AUhW?=
 =?us-ascii?Q?nIF+URuMW8q5B0ITse748xx3mY4VHNL2VRBJQx7cQ6J3PgRwLjCzMCZwt6Hj?=
 =?us-ascii?Q?+jA5nbzRAbWB3yIPTRDGP7oJwVbKrFIFGNVEVtthbqqoaMpwhiXu0NjjWoX1?=
 =?us-ascii?Q?owxLPhy2Yyml1GMLSPDkCMrgGVzyXB/92rI4/ttijw44kaquJSSK1OioOqUQ?=
 =?us-ascii?Q?pI/+a8u8ZNNQas4pRrfAP1VrxcdosxJ3CwueIW30+QraQ80t5PWtx70YkcmC?=
 =?us-ascii?Q?Su8MVQc/J/dMp55xIqyOzXCka89P+EtX/ElPKw7rabu3Ae1uDnmWgGqEVg2v?=
 =?us-ascii?Q?aviAFipJENcrENOy9Z3L7yzW/u/XCgng5NZp6jq+eLiGj5nOh0n5xNNIBC53?=
 =?us-ascii?Q?0kgRwbkpwx1ZzmgbcD1AUcMRrluW1799Pjvm9SmjeFHWXAxctcTu7Z4LO7rY?=
 =?us-ascii?Q?wYa4f4un1LObOD6lb4Zpy8DN9sBfykMQqxM1OFNJvez/ePeMJNL+CipqB/a7?=
 =?us-ascii?Q?EPzhpPD9c8nK9nFZ3BXaYTT9FxTu6YSiiNkFIXSGB/yorvaucMVqpmaDGdhk?=
 =?us-ascii?Q?uwm8sFYaoP4yv+vJs3eAsKI8SQ2MsI9u8HhzXxn4Sfjt/98dH4h1BC2rR1aj?=
 =?us-ascii?Q?XD+M1n0hCg79LPFfy+amcPoekuGf7hfVp4WxZW1NzAALbzbf+XenvWJGqmed?=
 =?us-ascii?Q?Hfx/98BGanWDWNxC5lTWOlYO7SAVx/sk1Ge0zRmdExciycrjH3opA0xyUUm5?=
 =?us-ascii?Q?81DyXj7OKMPAB3/sFC9Ij5lEo5e5S1R8BbWOxiuHSH0I1xX08SgX5RiTyVrl?=
 =?us-ascii?Q?39IxSHnKzS9BpKPSzwfDHUQGYFg/rX0Z03BqARKn+2cVoW59oBExdUpJ1IxH?=
 =?us-ascii?Q?0QlMDZMwDQ=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 19232881-26ff-4c4a-9a44-08d9a437419d
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2021 10:45:48.2479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ja6ljbrWvBDFZ4b/DxCm4NkycbM0D8ZBLixeUwM1TzzXeWW6CIq+1B0yAbDJ/xoEEXo5levmuJb7BtPa6aS97kk1VJ814GyK6XzfwU+ASVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4393
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211110_024556_630759_8F8743DC 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/1] arm: rockchip: add support for the quartz64 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

This patch introduces support for the Pine64 Quartz64 board that features
the Rockchip RK3566, a reduced but largely identical version of the RK3568.

Please note that the corresponding board device tree is not yet available
in barebox. It is going to appear in Linux v5.16-rc1 and will be synced
shortly afterwards (hopefully :-).

Looking forward to your comments!

Best regards,
Michael

Michael Riesch (1):
  arm: rockchip: add support for the quartz64 board

 Documentation/boards/rockchip.rst          | 28 +++++++++++----
 arch/arm/boards/Makefile                   |  1 +
 arch/arm/boards/pine64-quartz64/Makefile   |  3 ++
 arch/arm/boards/pine64-quartz64/board.c    | 40 ++++++++++++++++++++++
 arch/arm/boards/pine64-quartz64/lowlevel.c | 39 +++++++++++++++++++++
 arch/arm/dts/Makefile                      |  1 +
 arch/arm/mach-rockchip/Kconfig             |  6 ++++
 arch/arm/mach-rockchip/rockchip.c          |  2 ++
 images/Makefile.rockchip                   |  7 ++++
 9 files changed, 121 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/pine64-quartz64/Makefile
 create mode 100644 arch/arm/boards/pine64-quartz64/board.c
 create mode 100644 arch/arm/boards/pine64-quartz64/lowlevel.c

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

