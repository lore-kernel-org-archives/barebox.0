Delivery-date: Thu, 28 Oct 2021 15:08:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mg59I-0007S4-Bb
	for lore@lore.pengutronix.de; Thu, 28 Oct 2021 15:08:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mg59F-0001bI-PL
	for lore@pengutronix.de; Thu, 28 Oct 2021 15:08:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5p0lXH8m1kyRGFbxdHflNeJkd+7qFERPmxjmwqNUnk=; b=LeDXsu7cRa2pbU
	FGjCYmbWXYTlj8M3ZnJn9p6Qjzvcm7+MY1a4T5BS8pRW/IEeKhYf1ltf+AVKj6wHV62IREj7B1n7P
	AeOd8zkPVuNzRWIja4mL8Fk+KJQhwc0mzWIwUibrhhrvv8EvxRcIZuiQPjIy4tng9VT0KmUqLR+6H
	33uLQhU7aU2RRmP0EUpl3Bmmft4LpNAjoExHE/nXOGDNbMDpi5FFORtD9bahIbTQl44xZAKUoHowP
	b1mdQqxT7rzBvXl16sbA8U3X+BEPrOIRmW2B0ot3Mej4kWdkfkBOSVmkFskIjIo1txJHbxcXAxUPA
	vs752C1sSk9qWRSi0nMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mg570-007t3m-UX; Thu, 28 Oct 2021 13:06:31 +0000
Received: from mail-eopbgr140059.outbound.protection.outlook.com
 ([40.107.14.59] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mg56u-007t2t-Uc
 for barebox@lists.infradead.org; Thu, 28 Oct 2021 13:06:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bTWf7RRpnsP/+Y/B3yh86biMahHy8o95l9/Nf//fbWiMHZ9xnq9Iu/RF46yUFANns2m0le43IGFDZqlUCZBgaTGwF+kihTszaoh/Uep+/pC0kVFKyDAobia1KbZUB19M6IQcGch3E7L+n6cw1oGog5jU5eVP8HflBoNoBV0yb7ynJqcS/UdLhuYVjm5Ts+/gR56A6vlWj7YNA+GtnLxPqvuqtdtXOdjPxZUP1Ohtnmg+YmEeDnj+fI8ZnYSVSfaRaJIH0OW+wDZTN14zVt/FK9cX6mojap4MWjZPzEUj/TEZiTTQJhWAHHKNgNoFPlY+SLxgPEPoE1yfORFRERlkPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y2ygp/EQ0kuwxRDa6XK7rursczVc3PG4eYvJ/3cyb3s=;
 b=ECpo+K/4qgu0YmQCbNM5hmpTUua+v/NPn2BB95kFdPaMSTAxioEk7OGIgJbn3jaGSMvjA1bJQjGzD7DaIg6lM9Ui/YWNmr2f7iOmN34ts8ZhGWwcDNYXBcclv9toP3E8mz5j1fcXO2o+dwfLzzvMVdDcamjaBugzW31KyrJ1Ymv8HzG6SlS+VdfW/glYYxQEl/Iium2ITzXKlx2mii33t7EllUphkKMz1812Nruns0pZET4P+p5PvJAjZgvEH0XqyMchET0tAJSDvPh0fAzbANW4Km3tyEJKyo65oh8/8f3QFQ+52BSReMH1paRaDBGp3fLPF2Kha8rRSrpi+q84cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y2ygp/EQ0kuwxRDa6XK7rursczVc3PG4eYvJ/3cyb3s=;
 b=tZelQNlA9OsyDdmBH8Cbju2f/Wt6TzP7jr7Sp6m4jm+ax9d5B3daZoaDuKwGsCi0SiBqFIYtJ23Hek70Mz1hY5CXWz/HVlBu7HJSTHEWflLEXve2Nv/9NH25WAfZA1BmKOm7pXJsYGs8cZqQgs2Gbm45VJEUuPHHdkQn9ncBADc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 HE1P192MB0043.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:101::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.18; Thu, 28 Oct 2021 13:06:16 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::c48e:d79:44c2:cca4]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::c48e:d79:44c2:cca4%6]) with mapi id 15.20.4628.020; Thu, 28 Oct 2021
 13:06:16 +0000
Date: Thu, 28 Oct 2021 15:06:07 +0200
From: Joacim Zetterling <joaze@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Message-ID: <20211028130607.GA275094@wsevst-c0022>
References: <20211028084655.GA252698@wsevst-c0022>
 <7eda470f-1d70-3893-62e0-42eed28f0a55@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <7eda470f-1d70-3893-62e0-42eed28f0a55@pengutronix.de>
X-ClientProxiedBy: HE1PR0502CA0017.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::27) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
Received: from wsevst-c0022 (90.229.138.185) by
 HE1PR0502CA0017.eurprd05.prod.outlook.com (2603:10a6:3:e3::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.13 via Frontend Transport; Thu, 28 Oct 2021 13:06:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ee5803a-2906-4c7e-c9b8-08d99a13b9cc
X-MS-TrafficTypeDiagnostic: HE1P192MB0043:
X-Microsoft-Antispam-PRVS: <HE1P192MB00431E2AE584DEBB2F96736E9C869@HE1P192MB0043.EURP192.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AE5LWE8XZTJ7LfhbfE1k4Mv+2V++64Ca6cIuwXFyd4W2n/hbE4xLQQ0VHYnTDN0+uWEcdpAHbW9DzXi6iDHNATJWV9W6z4fIfS468Tolr0uVMwF09iTgXYxZHhBJhELIeEJ0Btsq3PZUp/cCZfZB20Dpmq0307j5y++V0W1XGzsvxq99IQwfYQPYsDkroyvMtU/mm7Rqo9naRVbYd3WVpGXyL/AzEJr4Hbq67Q1G7cDmodY7ezOKSxkOoaODn5eODWK6iMXSRIzAkzEjqhGMbQ5IiPSRcWRl0mIrRGYx1wUXgFNsm0xFo2esaeObM9ypVKN8rnMzDSymgPjtC2C+9HOmXpbUOIWCLZHoujDaT1XdXOHGYDTwcklkX8DgZ90+BUlLuJwtmVk5OLghyz6btKF7EcZgQT9ohCclhqMpq/aLYBn/kUvhrYCXJMKDUE3+OW0STNl9QmsbvzVLelZX9flUTs5zRqRGQGo0lF4xRTtgbFwFqNN8WcnSewVKnWNCA0G+lZBsmV6y7nE+cQGDFQl4PtY5uebbxY55HjVRUppjNIEaYNevAP7I+1MWfYcNX+Kd2AS+sz0hC03v842ObWHribv7ArT6jNjGn9BxTRK7ZRfDAh+s1yzjsjKxp7OFWkaZGD7xVuOmd5b21TqwLxcjr7WHyJogD2HGTKFPVXD/08yddzbDRNZrp6l/uDiRbNxKkCTWyqFpCHQM4vd4xwlltEYysH8K13IZEs+GgkLJOBry3lsY+kJBKbVloVJU8t1fIOMB/KtDlX12W144WEaZOWiklFeTyWlkt5Z6dOo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(53546011)(38350700002)(55016002)(5660300002)(2906002)(38100700002)(316002)(186003)(83380400001)(66946007)(1076003)(966005)(8676002)(508600001)(956004)(4326008)(66476007)(52116002)(26005)(33656002)(6916009)(6496006)(8936002)(6666004)(33716001)(66556008)(9686003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VTr4eDCFERj/BW+LrSWo+3MplTywBlNq2DUSmENjxRd0RZf6U//FDnKDirdV?=
 =?us-ascii?Q?AMFwpMTwQYmuVs6744UPmXiOTw9S1knt9EgVBVrFsK0UD/sYFXxE/scPy67n?=
 =?us-ascii?Q?3tCcNCuPyvuG56o3JAbCRrbf3ibuuYp94hTQ1c2hbIEAG+Snz69HbxEfORFs?=
 =?us-ascii?Q?KFLfCWCwTEDzyy9zanL5Uk2eiXg5NfbfL7OK7FopSgCebGbrL2wheID/FkL6?=
 =?us-ascii?Q?fdOTibnXGPjMRSKSVqC2RWGQ1GNask89vfLRUEktvMmHeJlFcNeV8/EKHS5c?=
 =?us-ascii?Q?5RThO0EHajo8+NMPeabU6VWdZUOAIuM/Zk9/ZsdOzHhuQmJDX6IBaTQh4qxj?=
 =?us-ascii?Q?xp/ll5gbs8rxQoDUl6hlrqbxxHWizl15J/08RQJ/M5kinMrYZm34p9O/C66J?=
 =?us-ascii?Q?1fAmVCmwEaTS6HjxxmxTnt0py4mkRaTFRWHWY3omYcmqwRjlwurtbZehhGnt?=
 =?us-ascii?Q?9phVfDmbveFLXkOXD+uvJhay6KoZ3kBXx4SSQTok27qFZHeZ8NnAVCleI/6x?=
 =?us-ascii?Q?sgqHVVyvTgfaCzpXid+6LDeV/UwM4I0KdE8NOUGR0MhxwhUKJcCKoInMo/Sd?=
 =?us-ascii?Q?Ljn+k4Q/6AmANSw8H26QRhPSSP27QEztxPT1bXPMrszk3fipxMMZZYX0AiAq?=
 =?us-ascii?Q?P+ey2mgZ7xal6ddT1lh/jHHId0Vyn1Ebmsg1cZNThpjro17imT51FczQZGe8?=
 =?us-ascii?Q?QHlCllWUSblYbgUF5joCKfd7aaN1dKFx7uvdazQc/1HtdKxrocutXxCNcx0l?=
 =?us-ascii?Q?ln5GaShqQkO6skwSJDG0oE9QeKJ1rbPlWjD8Xppi2dnNuz+66/mdF6fI1c22?=
 =?us-ascii?Q?pOwVPD9ymd6YBqjLjbWfHvSEB9J3Vk1243ryAsWxzk0X1oYGw9HbhnssWexo?=
 =?us-ascii?Q?P+m/UWbDp4pzNIfAGoxY4mm9evPy3P4MTG2dgC1OvI8rSZr30WPxqKTy0kNB?=
 =?us-ascii?Q?aEieiKNCZM+y3xPNetGqnUslXIN6k8IExXjzeCJDy4lcwN5kKPOhOA+GiL8M?=
 =?us-ascii?Q?P8NVv/oAECYjZBgfTscH4OfqsFqgt5mYApD4NvzlYZZkL2P8Rkc1WSYQAL8Z?=
 =?us-ascii?Q?AhpPQYnIxuqkf/yPr4G2dIrUyKxY3mTx190tl5vojAuLjygJgAAGY6fNm435?=
 =?us-ascii?Q?uoHYkMZ6CfvLFNTszqpqOoub5YKf7QrdrUVP48OyvrtYVXmrFB8p0LEfv8oW?=
 =?us-ascii?Q?R7GoBP7G6HAxLuUrVFwD75YTK0SZpX914QfBuRlNoyosVtLfE55P/8CgVygz?=
 =?us-ascii?Q?TcDJpUmIitQ1+YvXY7tc+0cp2WbzvcKyRpF2UlRdg8V65IP9gpB/5mKhWyeR?=
 =?us-ascii?Q?NCH2/6MFXVJsxaPOQ3/XxrNMuUZHMleiWHF4vMNheamzFkRebYaZ9Z81vkLs?=
 =?us-ascii?Q?xwdkDJMs/ur0KvogTf7UPEs/Ty1KI1FjeZs/OLZHiP8AWG9iTaslPbE2amZu?=
 =?us-ascii?Q?8sF09m074f0PEojq9NTI8E+PGHKq2PqBb7i0LCDv1GVSKr6wcvmapuY9FhB5?=
 =?us-ascii?Q?sMcZ/hnLOfC4Kb2NRRqOK2PE8Me1jVqHcM3Rl1ZlACxPuhxg6+I3E3cmAWPg?=
 =?us-ascii?Q?4V8KLnhtkJLvbxetW9SLAcbatA/uLM4a8UfHPbW8amQnlHxoyFzY5idr1Mzb?=
 =?us-ascii?Q?ryvfm1GWXdVbfk/PdXzZmz8=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ee5803a-2906-4c7e-c9b8-08d99a13b9cc
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2021 13:06:16.4476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sR0jthsHoXKOp2JOgAMNV6262gVqaxsHrTxJo/jVo4+s87HJx6faryCTUmSAniu+s7Et+Tk6AdijAkzQ7f2lRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P192MB0043
X-MS-Exchange-CrossPremises-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 90.229.138.185
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: HE1P192MB0043.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_060625_102448_69996DD6 
X-CRM114-Status: GOOD (  37.30  )
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
Subject: Re: [PATCH] ARM: imx: Fix problem with imx_ddrc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Oct 28, 2021 at 02:19:18PM +0200, Ahmad Fatoum wrote:
> Hello Joacim,
> 
> On 28.10.21 10:46, Joacim Zetterling wrote:
> > The imx8mn has a 16-bit SDRAM bus width access but the calculation
> > of the memory size treat it as a 32-bit width bus which makes the
> > memory calculation to be wrong (meminfo wrong and memtest fails).
> 
> I missed this because of the /memory node in the device tree filling
> up the remainder. I removed /memory and tried your patch on an
> i.MX8MN DDR EVK, but it doesn't change iomem output:
> 
>   0x0000000040000000 - 0x000000007fffffff (size 0x0000000040000000) ram0
> 
> The 8MN DDR4 EVK reports FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr) == 0b10
> and FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr) == 0b00.
> 
> > There is a difference between the imx7 and the imx8 familys.
> > The imx8 family has a device config field in the master register of
> > the DDRC controller which the imx7 family doesn't have (the bus width
> > is 32-bit as default).
> > 
> > The device config field together with the DQ configuration tells us
> > the actual bus width of the device for a correct mem size calculaton.
> > 
> > From the imx8mn reference manual:
> > +----------------------------------------------------+
> > |    Field      |     Function                       |
> > |----------------------------------------------------|
> > |    31-30      | Indicates the configuration of the |
> > |               | device used in the system.         |
> > | device_config |     00b - x4 device                |
> > |               |     01b - x8 device                |
> > |               |     10b - x16 device               |
> > |               |     11b - x32 device               |
> > +----------------------------------------------------+
> > ...
> > ...
> > 
> > Tested on the IMX8MN Evk with 2GB DDR4 and on a IMX8MN custom board
> > with 2GB LPDDR4, checked size and made memory test.
> 
> What's the device_config for each?
The device_config for both platforms are b10

> 
> > Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
> > ---
> >  arch/arm/mach-imx/esdctl.c | 16 +++++++++++-----
> >  1 file changed, 11 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> > index e56da3cb76d4..f80d94f2fca0 100644
> > --- a/arch/arm/mach-imx/esdctl.c
> > +++ b/arch/arm/mach-imx/esdctl.c
> > @@ -320,6 +320,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> >  #define DDRC_MSTR_LPDDR4			BIT(5)
> >  #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
> >  #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
> > +#define DDRC_MSTR_DEVICE_CONFIG		GENMASK(31, 30)
> >  
> >  #define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
> >  
> > @@ -361,7 +362,7 @@ static resource_size_t
> >  imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
> >  		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
> >  		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
> > -		    bool reduced_adress_space)
> > +		    bool reduced_adress_space, bool is_imx8)
> >  {
> >  	const u32 mstr = readl(ddrc + DDRC_MSTR);
> >  	unsigned int banks, ranks, columns, rows, active_ranks, width;
> > @@ -384,15 +385,20 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
> >  		BUG();
> >  	}
> >  
> > +	if (is_imx8)
> > +		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
> 
> for device_config == 0, size should be halved, but instead you would get a
> width of zero here.
Good catch! Need to treat bus width 4 in a special way when calculating
the memory size. i.e.

	if (width)
		size = memory_sdram_size(columns, rows, 1 << banks, width);
	else
		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
	size <<= ranks;

> 
> > +	else
> > +		width = 4;
> > +
> >  	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
> >  	case 0b00:	/* Full DQ bus  */
> >  		width = 4;
> 
> I can't really follow. Shouldn't this be dropped to take the
> value of width above?
My bad! Should have been removed earlier.

	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
	case 0b00:	/* Full DQ bus  */
		break;
	case 0b01:	/* Half DQ bus  */
        ...
	...
> 
> >  		break;
> >  	case 0b01:      /* Half DQ bus  */
> > -		width = 2;
> > +		width >>= 1;
> >  		break;
> >  	case 0b10:	/* Quarter DQ bus  */
> > -		width = 1;
> > +		width >>= 2;
> >  		break;
> >  	default:
> >  		BUG();
> > @@ -466,7 +472,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
> >  	return imx_ddrc_sdram_size(ddrc, addrmap,
> >  				   12, ARRAY_AND_SIZE(col_b),
> >  				   16, ARRAY_AND_SIZE(row_b),
> > -				   reduced_adress_space);
> > +				   reduced_adress_space, true);
> >  }
> >  
> >  static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> > @@ -508,7 +514,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
> >  	return imx_ddrc_sdram_size(ddrc, addrmap,
> >  				   11, ARRAY_AND_SIZE(col_b),
> >  				   15, ARRAY_AND_SIZE(row_b),
> > -				   reduced_adress_space);
> > +				   reduced_adress_space, false);
> >  }
> >  
> >  static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> > 
> 
> 
I'll send a new patch version.
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://urldefense.com/v3/__http://www.pengutronix.de/__;!!I9LPvj3b!UEEry3YzdrJRIMGgQgDd_crPHhM_0abIlHJq7-FIV6hTs9m7uhtHdAcHsA99yIw$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

