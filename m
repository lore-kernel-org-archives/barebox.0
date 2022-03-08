Delivery-date: Tue, 08 Mar 2022 17:23:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcc7-004qAt-WB
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 17:23:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcc3-0008Nc-HY
	for lore@pengutronix.de; Tue, 08 Mar 2022 17:23:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q3MgsE/l6EF7E4rigs3MLFtzyOKYySWM/HOt3fnPhMg=; b=T5pgQVmtNjmZw2
	VZsTTMxQH5XosvueWiNOhxYjzfZcvhK0P9413EjQML5i14WZSjWHxkDmgjvCMBtqdlbNw9yFJ0Dnn
	TrVHJGh1rY66T+N/0HlnL/n/aWAa50Ms1KxSZArQzrfLqkFrdIFFGRZqtJnlwE+l/musHzKcdb4hQ
	PHZ2WmJytzYG5VsCNeCHK1dZjwHSlGbR1eI0X8MNsIuP+NV04RRb0IXzBprbBlDDvfO3riLnC6QeX
	hmuUBh5m/zKLMSfVxoxpvWiFZLnwoXciRDEVpkbPd1bLx+HbpjxYEI4ezwYTMg7b6TNrXAdl2N1vh
	+MjZLRUq2FyvNZwppDTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRcZg-005Aq5-Qe; Tue, 08 Mar 2022 16:20:39 +0000
Received: from mail-he1eur02on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::626]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRcNn-0057hl-3G
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 16:08:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nPsjFZiRM+TvjC5blkN936QEEAKDOdTMS04Z13cCCirEAS+jpdpc3Y0nTZpskH/GuA8oiKYCKcDWC7HlcgJXEMQ/7UUuFx4j3QmrnpcFVhAfaeNlyRtiYcSomLFWQrOAeXDozwuu+T13DLGux7Xt9//i5QZIM1F0TiCWnUvXxDftZdKifm2L7dSaPfAhfRtVwdfEpJKnitqWUx8ZCtVEpBNnRtJJX/C/QjRklOBnl5nNfDU2suKdN/dmu4BUy4UBZHgXtUyNWavFC0xCcoOpr7YMcoPG6JQJpEDKx/rTmguLRw9mrTaukiC9tKL3jqPofZ7iAJWoBYkAGkej+Ug+aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ANk4UecbQ7XPQENijiXna46y5R2dBZYQTzDTr7mDiY=;
 b=iy+acqLGOrB1+Fubl99e2Zdv2D4y5VDu+5dz9eIm3fRlKrh2xCUE8bdt4RJmu2ZIOVW9ViGmFGyzW7I1YQqsT6eYRjDN5A5BEMLtsFILpwqF9vSSGWdFtx01vklIUqtK06ZywnADCTRBSA1rCTjdoTD1yDuYcpR7UmNqg5227ZgEjxf9MZgUQoBt8IOqvMUxZzgzgZOZlLXuVqp1VlOV1w/vBcs3was5Y8r23BcCB9K3GrOTAVzlccoo6Qu0XWdsJmie2q3u89D1Q/RaEXEdtnfFIUDuTnU9VkOmL/ySE/oC/Jh6zAcq6yyh/XFyUSG/sfGmEl50CDJuTiIW9InBOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ANk4UecbQ7XPQENijiXna46y5R2dBZYQTzDTr7mDiY=;
 b=zsWsT4uG6KtlMA9dwyC7fO1VYZojzfKTMlAMxm1OY6FF5mDba2UUYxg7nV9LtifvQTxjU/NxcNThc9m3fWxc4JN7wzynIu+aHp/AevAkmQZ603ENM9u4KL2GUGG421z6bMfQIEU9gfrlUcOJOKXNNvNmbB0vGQgAvrZxRzPEwn0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AM5P192MB0036.EURP192.PROD.OUTLOOK.COM (2603:10a6:203:83::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.16; Tue, 8 Mar 2022 16:08:10 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 16:08:10 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Tue,  8 Mar 2022 17:07:58 +0100
Message-Id: <20220308160801.782206-1-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0091.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::25) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 336230d4-56bf-488e-b256-08da011dd723
X-MS-TrafficTypeDiagnostic: AM5P192MB0036:EE_
X-Microsoft-Antispam-PRVS: <AM5P192MB0036C97765DA461B64B4ED0A9C099@AM5P192MB0036.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9cLhGTwcMWWmUHThWhnRu0Mf3Sy9nJN7oxqwIW0IcQ8qYEoY+gPpnQf2k40zTuUOc/m5B54/sT2W/TG3J8m04TsUMIKFzSmADEtEBE7eJaM6Ra1Z2Nb2NXtD+ZEIfrQxDGZis8shR6bA2MuqBsarAb7/bFW3q0RlPzggMVnVlOeUPKsq4PGfOggL4n33y1RExYMuRLBBqQd6J9O3amEGjaU/2U1MtTxVAtpYUayBwtotGRp3sbopaAtgP6PWuVvx4TLDrfIaiRGVenJAEp5Q4yYmcDvnrATDrnKyl2nMNwa/UVBO+w3Unbu0p3UChflkwGDARt8ghoNWkKeQUR2wboChMaCitwgSNWIiivbck4x5JnLuHZWUGg9wfyPnMn9xKdCAoxgeW8n5eeqKvdEt15zcqXfocx5jEfp+WO7EDQ9InJoKwaTxrw0rfqPxIsjYQIt6zu9ZM6AEU2bIhf6IaC+hkrChixDjj4PZzRnCn4dONKafO9b5nmuF0C+RatBEwKcSvem41kkwcQFvXdGEWrK0SXqm5bZwT5NiUCphKSHcp51J63EA16tVqOiKK6RKCokg3nBOsBcgyormLr6C5vdEYfauJFEKuPhzsHcdwezQVzWC+sd85cyW+3s9RsoheEgLPqQaOYTid+Q1NhJcAGsLO0B1bI1d1lqoogxM/kuxfWYi8aoEJSAtKKUg63t00mfrhcgJ4Avkk42vMPdqiA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(38100700002)(38350700002)(6916009)(36756003)(83380400001)(6666004)(8936002)(44832011)(86362001)(316002)(6486002)(508600001)(2616005)(1076003)(66476007)(2906002)(186003)(26005)(6506007)(66946007)(5660300002)(66556008)(4326008)(6512007)(52116002)(8676002)(36916002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SE/RmGX9bpg2td2ULGpjbwNxs4KIMsPiHgipo6eYTfubK8L9FL5CNsUONLu0?=
 =?us-ascii?Q?GaPx5oMKS7diVGx65oWkT1addgmLzlduGsoMqHX4UY237M03DM23nCTFP7G7?=
 =?us-ascii?Q?kBpXJRKpesdI87/KP/EOEeFT+s0rhM9fKotL9HjFxOEQ9TwwXzwcSdRXxh4T?=
 =?us-ascii?Q?v0FV+8ElXorEUjnRRtgOQM/AMbJIGp7VpGIPZk7fJlk3VNJuEx/+C1aBzHrm?=
 =?us-ascii?Q?sxlHha7c0z2mZq5Drp1r9lM9X63d8Fd0L9MFYUHCykFEvEo/rjIeREFMFjt3?=
 =?us-ascii?Q?T2st5haPCeom+xjiTTuGPrs+Z6DrrnjtX4UbFLDBodENNcvQ4m/frinN4Rd7?=
 =?us-ascii?Q?ekTa7IapBaQiI8/Ecx7moWvi+cylEvE4f61le1M8Bn71+Ap6dWNP1RTPrDK3?=
 =?us-ascii?Q?xXu7z5WAwI08c64nKyGUAV5712Yju1+yl7YdPLNHuT+5IKVkUabP32YhnMGu?=
 =?us-ascii?Q?l57PFZN2HU8pj4s3Fi3H7nA23F0JSbjPMYOfAs3qh3zUxZ8iGmil9J1azmAa?=
 =?us-ascii?Q?2X/rpHjgljcSlGGEiwQu5/zcK77gSDaAuQpcN3xRmOOpUh1WGCX55nMbUoGM?=
 =?us-ascii?Q?1E0FdwP/awKySWlWGfULvDhd8ggzQL9cuzsiwkBPtqRTnqQyori4u9WX+37E?=
 =?us-ascii?Q?iIP7nAexn8nEwidaaFt1CjyTlJYW/SRabnYqk8pM/QU40Z5AHXJJYzoqSB2I?=
 =?us-ascii?Q?AEgRxgUBp6tOzP8hrKkW5nWsF8wNSIxylW6fSf+l2O1bWgk57anwjAg+2FJK?=
 =?us-ascii?Q?m3f+ODCi5rQDOeitx9ivPg9GdS78A7lzR4J0puI5/YYVMwB3DcVdH4/6qfsL?=
 =?us-ascii?Q?pRw9tlXV2MQwPM9LTNHU08iP1l9eePKO0Vu0Uv/H4xLA83lWze/UR3UXjc+u?=
 =?us-ascii?Q?RCxuewZOrMmCFnBuwZBnoDfN92ii5oVug22eO3B0xonuNff0i6lhC/Ro9+tK?=
 =?us-ascii?Q?S+sN9sxzKCXL4SuDHovCtT80sOwo2bqLAatk7g91zqAijimjFf6aG56RM2WX?=
 =?us-ascii?Q?SlJ/xMCB+iKrpWcABAtQnBbMN4CkR7NTZtjTPzj45zfJrhbiLOUXZLAIMBJp?=
 =?us-ascii?Q?C8kHL30L4BWEd96x5sKCP6mYJycYkUykvBonyUlCWhDxi0RhO5c8MvAiUAnF?=
 =?us-ascii?Q?QGkvae01JWqo+fCrFBe3FTOiDXnd/uZxdVvWQWrq8NCQwnAi7dH8lrd/Z1DI?=
 =?us-ascii?Q?RdupKYFvvxGkbXod9lVMMASRwZZpNOouHGbt1QPyDr6S7C5NEqaqD4mq0/L2?=
 =?us-ascii?Q?qoPswybjsQRrs3zpj+BctJeY2LeaSZ0tHeP79zvS/9AYGzRgZlEmDzyuL27W?=
 =?us-ascii?Q?cigli6qfplYBXuBKHOtR6/tREFC+JVLQ6IUSEyL5mhsVN4PTbtN1vIWGzb/8?=
 =?us-ascii?Q?Sy7aDFinhJdr71NFjRYSJqCRKgn5/HSqM1d9HaSJOpLDrnAY+vNcbH9fipzi?=
 =?us-ascii?Q?kuSlZjpTrGHGKtWWnHUcbo4wk6zRGwsgsBsg62M/pdM4ODoF1b5MPEjA+LLc?=
 =?us-ascii?Q?qTWdSBbE8hINiymxH5orAZc/opgfGgv7sRkwJXeUfpDWsX1tzQnL0BxOveCz?=
 =?us-ascii?Q?eW4vfCTC5nPORaaT1XEmaC38otpHvLrwV4nAzDO+BthSn6jETbNEYCRIKD9I?=
 =?us-ascii?Q?JPdqOY8j9T4/eMngqPhObXY=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 336230d4-56bf-488e-b256-08da011dd723
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 16:08:10.3810 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lPTsSji7pwhNv1XrgIgY119oVTI+LfjrDvTl3ivtXEasYCQwcwIx5lGmXTBYl5PoUytL3EdQDsOmf5UUgrs0NQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P192MB0036
X-MS-Exchange-CrossPremises-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 78.70.143.124
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: AM5P192MB0036.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_080819_265179_535D98E2 
X-CRM114-Status: GOOD (  11.86  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] arch: arm: imx: spi: Add QSPI boot support to the IMX8
 platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch series adds QSPI boot option to the IMX8 platforms.
For the moment only the IMX8MN platform is supported.

This has been tested with the support of the Flex SPI/QSPI
driver on an IMX8MN-EVK board configured for QSPI boot
(SW1:0110) and on an IMX8MN custom board with a QSPI flash.

Joacim Zetterling (3):
  arch: arm: imx: spi: Add QSPI boot support to the IMX8 platforms
  scripts: imx: spi: Add QSPI boot support to IMX build image script
  arch: arm: imx: spi: Add QSPI boot option to the IMX8MN-EVK

 .../bb-cfg-param-imx8mn-evk.bin               | Bin 0 -> 512 bytes
 .../flash-header-imx8mn-evk.imxcfg            |   5 +
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c     |   3 +
 arch/arm/mach-imx/Makefile                    |   1 +
 arch/arm/mach-imx/include/mach/imx-header.h   |   2 +
 arch/arm/mach-imx/include/mach/xload.h        |   1 +
 arch/arm/mach-imx/xload-qspi.c                | 145 ++++++++++++++++++
 scripts/imx/imx-image.c                       |  25 +++
 scripts/imx/imx.c                             |  67 +++++++-
 9 files changed, 248 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin
 create mode 100644 arch/arm/mach-imx/xload-qspi.c

-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

