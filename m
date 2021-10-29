Delivery-date: Fri, 29 Oct 2021 15:43:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgSAY-0001VO-6X
	for lore@lore.pengutronix.de; Fri, 29 Oct 2021 15:43:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgSAW-00031S-P6
	for lore@pengutronix.de; Fri, 29 Oct 2021 15:43:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LcsogLg17SLMPKPtiIBSgiOi1/KXbTHvKC8cDvcwbI=; b=XDA6DjxxrzYazs
	FOoi2eHrBONOyWu20cTpBxnwlZqfA6XKIRH3nRhvrQbU+YGe3QFhRXHmd53tH37KrdvZdq9PR6sei
	Hqfgu7nmZ4WoWYO7QLK0pU5xYrWMifBLCPH6dy4T3H26m7aBiTy92N8EAKuuEAzvnafgcw5zCyPKg
	YeiNxY3Du7Zvei4zMuMfA+tL6svlhLloPFrP4wCTPjQZKk2aup9Bs0GXTe2lLrKc+as64CrDKzqtl
	pEe06exIIoac3rPMf/qL8V339IiXqOTJK1PKc9YRFEA8VnsksAGOchCrclsN7sYqEDHhAliK5A8/9
	bzJKKityssQw/hzvGcfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgS8q-00B4Zs-DX; Fri, 29 Oct 2021 13:41:56 +0000
Received: from mail-db8eur05on2056.outbound.protection.outlook.com
 ([40.107.20.56] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgS8k-00B4Ym-E5
 for barebox@lists.infradead.org; Fri, 29 Oct 2021 13:41:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DyH+/CYSBVY8JO7F+WjKbmJTTTMcjxvMW6zjmHFNNlBr0bcGiB46MWxOZlytYRlZHdm4zPVQA49jceJ0k8PEguio5DAr0hGTM1Czybo4BYMGseOtqIuzkAIYqpuHknnyPMtAORZoIYyGWVwVRs8WxnMMAuykNyenNQcT5IyEQxqfpaoVR6OmB21bMTC3OuiXyjpCenzmD2bmxP6P6+FWDGhAbwmAKRR1JPqLC/JLSWiqhQpcPtkkcB+5JTaCIRHsP6P5NjGzIN7a1A7aqJzBEQ8oy2shGwDyG+89UeOOuiplUmmlBUAomZscK0bXM1MNfzsKqzM6hqjnDGV6vKqj+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wl0gR9v+ciu6P5+VKfastBbo+2xotQ111tL5TXF5Rvo=;
 b=S3Y6tPGLVBHDehnUpd4RlCS4uF6XlL4HMnG2c3mXx64Xd+gTxWKUk4PifrJIauS4UjyyRViFHZuotHEgM7u7Ka6PrkaYu/UcA6kVtQsUL/SxGf1Ulx92Sa0C6gHqpQ2yy490cUxNio5+ViRsRwqIMUxmCIz1uy6xo1iInxs5ng0RVkWt9Zn0nsdtfKZIw1D1w+HfmlgC//uRjBSHC1HYc0ZZ18Qb45pmp/DA+uCrn+Go0p0xuo+K4mlTGlz9x7xQgk/iYuWLpYsCv/gqFRdyzxCwZBAy8kDl1puEODeEWx3FAyRw1+WOnpEKDWzrX1bRwcgKP11JRRMClb7cmYopmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wl0gR9v+ciu6P5+VKfastBbo+2xotQ111tL5TXF5Rvo=;
 b=HJ3WXkXt8/w/QiAAQpVoZ/kfWfSw/uXajishDQFvfi00jqlmxi7tLFn7l/ZlACcFZgfmmaVxx+DbThKMuSDJQ7YrYLBTGPL51VRz6sWtJZmp0C1NBczHD3YD8Q8aGRnXXfzy/u1GqNKJz07r0KV53osv1tLOEOoWxWIB/lhWU8Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 HE1P192MB0041.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:106::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15; Fri, 29 Oct 2021 13:41:44 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::c48e:d79:44c2:cca4]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::c48e:d79:44c2:cca4%6]) with mapi id 15.20.4628.020; Fri, 29 Oct 2021
 13:41:43 +0000
Date: Fri, 29 Oct 2021 15:41:41 +0200
From: Joacim Zetterling <joaze@westermo.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211029134141.GA328085@wsevst-c0022>
References: <20211028084655.GA252698@wsevst-c0022>
 <7eda470f-1d70-3893-62e0-42eed28f0a55@pengutronix.de>
 <20211028130607.GA275094@wsevst-c0022>
 <9d107209-1cd5-4e74-1ed0-6ae50da0abea@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <9d107209-1cd5-4e74-1ed0-6ae50da0abea@pengutronix.de>
X-ClientProxiedBy: GV3P280CA0085.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:a::8)
 To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
Received: from wsevst-c0022 (90.229.138.185) by
 GV3P280CA0085.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:a::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14 via Frontend Transport; Fri, 29 Oct 2021 13:41:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: da0f3434-0f14-4210-7af3-08d99ae1d840
X-MS-TrafficTypeDiagnostic: HE1P192MB0041:
X-Microsoft-Antispam-PRVS: <HE1P192MB0041F6F3B459936A2031EA2A9C879@HE1P192MB0041.EURP192.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5pHkw5TFg+RZ45m/zUfsHkXqHCCh8BLFTJ+OXRdbzCGsETeR5ES+aWWnANyH1h+63mHhJYnrs3DWTGqN60htYa8p7kIEonOGCHLtWnAGQ5iOq2qqbnvac9P9R7VuVK3ihD5JGm0y74COPz0jPCuzhgaRwtb567b9R9llTLrQiYxP6CzBePrm3P/EZ4YsQlO2hFoFhsoNUQW+CVzio3rXVOmKE+q8m9dhvV6aTQQ2u+abgBU731+GDcZ5zK+Xrx2gP1yV19YYkn7PhatSMNIqCyxawKiUc7W9jzvQ8kBBYkgzYuYUBJjHK4fVtdd20QmFCDxfGidw52aDXtCjj+3DGTEIshXK4ZXyqkU6EM/l3WzVllVupwSBaBmTsPn1XE4LazxpHCTkq7kvRjhULEOZc4GxauiY/ZlRIV8y3ZtiB5qFjD8gCT7iWdvZh04a18fgyBTISvpSYmIthlknu94LeewTGEVHnMjfdPzy98ezACwAnHY+BeSTs3yVicAeMO6yqSxT3ZOKACXKMnmfUR7gQNrIpPCAUhuYcqtG5uHii0Ae6RipXQfaE1QEF9sOYKqvcPrT8Zl3WT7n/sbgwmhlmOMFp9emriTMVrThnKgaukJDC6pmIxwVlATIHfN3op4csAY4DJn1PIXDcQGF44llBUyGfKKZ2RlkGamkFYbafbof5+bkwmxVv9dy2GdmP6E3EHQGTBC//DeJnBA3fj26JN1vn27i4kyp9T+HMo/pS+NKSxC1ANqSI3DwwdazGxQYrpAtoUJTblNmb9oJWHeavqdEC023ySshGk6b/eN1Aig=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(53546011)(6496006)(2906002)(52116002)(55016002)(9686003)(316002)(1076003)(83380400001)(508600001)(186003)(33716001)(5660300002)(26005)(4326008)(8936002)(8676002)(66556008)(956004)(38100700002)(38350700002)(33656002)(6916009)(66476007)(66946007)(966005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nmJKi0E44KHNI44FvhlImkN6X12c7rKVFuFjmGZrs6GZs8E8H2gm/zVOK6Kx?=
 =?us-ascii?Q?nbpYS8hGpThIsAwzd5gefMzeBIk4obN+r8myJtNhVTmPQQv4z8FV0gDBSnRY?=
 =?us-ascii?Q?oyrev9jA0cUcu0ma+rKoM/OPvcvo9MBa62+RbZ4Qx84DZ2Owgx05+usjDbaw?=
 =?us-ascii?Q?6VxwxlZBT3+YxtW/1d0dPMv3ggRFBTzVbhFMJ4XAh2MxsFru9gEZNA2+rcuq?=
 =?us-ascii?Q?ZFxXR4TgAJHgLsvzK09TejbZLXxLXRxGWnsH4r8n0INHSgSzEqq1pvtrAgu/?=
 =?us-ascii?Q?Gff8WGywedIBOstvyV+zsZcnfbVtg9jq/lADPvfPYBq0zQrwfzvoAwi3YM0z?=
 =?us-ascii?Q?vdX9kd3tU4jmyU2g4Mxi2QRqGEegMoaRTJSxFbX+R2DnoQjSByb5zSlHR4Hx?=
 =?us-ascii?Q?wrfFcuzAYWLGdhOOjqeJx7sAzqAM+tPkoKkM/kWBxiExNFursPLAqAT5FGX2?=
 =?us-ascii?Q?nvWs4MoQe3JbW6fSEQXTDEW4qaCoUL+CmUiNPBRCGEfnAdj4bSNP+Sqly+Qc?=
 =?us-ascii?Q?WO12her6Svhtw6zL9bjca4E8uRwAwuthCXE75HA2xcYdiQQ69INiSJ/y98B1?=
 =?us-ascii?Q?pEA3Tbv7yzSZL31qAyf5xaONlAbPeQUPab6bKM6K6m3tiJJbLZVivwhF8TkJ?=
 =?us-ascii?Q?xFrZj0WptKV4Y3TZYUkqSy6/cPCmf8nLoL7ex2VwqzhLsdSpW+E4fJx5dWPy?=
 =?us-ascii?Q?XzWmZKEQVd+PQyEYoMBht82zb35aRDZ2YMWBcXmYfhDinzzGHwHsZ79J53vW?=
 =?us-ascii?Q?G9cb/3IHd+Kjx9dRMCPasZ5gHodq1aqXIHlY2tEWvpqi+2MLUsxHRkrPzloU?=
 =?us-ascii?Q?vh+MLyCleks66jOjCq3698Fs2fiBHlxAN6qEH0Mbh+cZFz9WAWnl18eIdBCY?=
 =?us-ascii?Q?0zErxYcrlshG+Xir+YH+7ewQBfxO93w/vA1eqgoWmVYHfCe7QbgCQQW/1TJT?=
 =?us-ascii?Q?7wkavDj0CzbidfrPoNedGpzzWS2P9iLpq7Wcm16m6+gLAHYJTwGUq7Y04MGG?=
 =?us-ascii?Q?xurHFtO1K3Byqowv7mM5OgDBmbCYyDgFlZTW7xaO8UdYZGhClhFY6DiUiNTq?=
 =?us-ascii?Q?+APOlhQC+7sEaeJEbv5frnpl0uVmTwL4dapx/pC5ZJwTEQPzb+BCrOBuXJQA?=
 =?us-ascii?Q?hm841aDHkr1LwTVgFxAZopOorTngir/aCoPWha+UGRFEQYrBZGbjSzFwBnhW?=
 =?us-ascii?Q?ZHmQ0ec4BisBcaXQdGGchZNwXViJhnIBgO5hbU7TmsKrHeAR3ERBWShiRFAC?=
 =?us-ascii?Q?q/9Z5zaZ2KR8REXAwwLhE9DLCy57jBuSsmsKCoXr3sICAT44KGQlalPSkmNR?=
 =?us-ascii?Q?1Zql0SbKXeeMEv+6X/8itfRI4pzEdCuHTGU513CynPKeqc0npMcsLZci/olk?=
 =?us-ascii?Q?3SxFpRLeb42K8E26w9pKRA/wRoQ0xFLF+6jZYYYc8CPdZNrodoqvhSJbZzvZ?=
 =?us-ascii?Q?RqIk0VIFiA0WxAOgpos1c8/JwPV9pbMA6OQWdGQtME14M4a8n/KlMcWV78K4?=
 =?us-ascii?Q?u9iuUBsB+1V8bLENtF5tHKRZFlb6VI7NUty0iUvmxxVMDLdeiBVNKN12wVps?=
 =?us-ascii?Q?qZITJebSr9mJE+c4bYTynPGuYua/q/QKBK9c1Cs5M7MatiAdyn3cFQUGBSeT?=
 =?us-ascii?Q?rYCIWJpH+mqrSj/TFGZPGto=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da0f3434-0f14-4210-7af3-08d99ae1d840
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2021 13:41:43.8098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jE8eN+hmKFkSITmFQjH6HI+EM/kSJHE7BKtBL5EWGjiK3qQSon1BQJ8NPPKwpaEme+KonAZl5bEo9kxsM/khHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P192MB0041
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
X-OrganizationHeadersPreserved: HE1P192MB0041.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211029_064150_730282_6FE54E5E 
X-CRM114-Status: GOOD (  40.16  )
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

On Fri, Oct 29, 2021 at 02:15:29PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 28.10.21 15:06, Joacim Zetterling wrote:
> > On Thu, Oct 28, 2021 at 02:19:18PM +0200, Ahmad Fatoum wrote:
> >> Hello Joacim,
> >>
> >> On 28.10.21 10:46, Joacim Zetterling wrote:
> >>> The imx8mn has a 16-bit SDRAM bus width access but the calculation
> >>> of the memory size treat it as a 32-bit width bus which makes the
> >>> memory calculation to be wrong (meminfo wrong and memtest fails).
> >>
> >> I missed this because of the /memory node in the device tree filling
> >> up the remainder. I removed /memory and tried your patch on an
> >> i.MX8MN DDR EVK, but it doesn't change iomem output:
> >>
> >>   0x0000000040000000 - 0x000000007fffffff (size 0x0000000040000000) ram0
> >>
> >> The 8MN DDR4 EVK reports FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr) == 0b10
> >> and FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr) == 0b00.
> >>
> >>> There is a difference between the imx7 and the imx8 familys.
> >>> The imx8 family has a device config field in the master register of
> >>> the DDRC controller which the imx7 family doesn't have (the bus width
> >>> is 32-bit as default).
> >>>
> >>> The device config field together with the DQ configuration tells us
> >>> the actual bus width of the device for a correct mem size calculaton.
> >>>
> >>> From the imx8mn reference manual:
> >>> +----------------------------------------------------+
> >>> |    Field      |     Function                       |
> >>> |----------------------------------------------------|
> >>> |    31-30      | Indicates the configuration of the |
> >>> |               | device used in the system.         |
> >>> | device_config |     00b - x4 device                |
> >>> |               |     01b - x8 device                |
> >>> |               |     10b - x16 device               |
> >>> |               |     11b - x32 device               |
> >>> +----------------------------------------------------+
> >>> ...
> >>> ...
> >>>
> >>> Tested on the IMX8MN Evk with 2GB DDR4 and on a IMX8MN custom board
> >>> with 2GB LPDDR4, checked size and made memory test.
> >>
> >> What's the device_config for each?
> > The device_config for both platforms are b10
> > 
> >>
> >>> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
> >>> ---
> >>>  arch/arm/mach-imx/esdctl.c | 16 +++++++++++-----
> >>>  1 file changed, 11 insertions(+), 5 deletions(-)
> >>>
> >>> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> >>> index e56da3cb76d4..f80d94f2fca0 100644
> >>> --- a/arch/arm/mach-imx/esdctl.c
> >>> +++ b/arch/arm/mach-imx/esdctl.c
> >>> @@ -320,6 +320,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> >>>  #define DDRC_MSTR_LPDDR4			BIT(5)
> >>>  #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
> >>>  #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
> >>> +#define DDRC_MSTR_DEVICE_CONFIG		GENMASK(31, 30)
> >>>  
> >>>  #define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
> >>>  
> >>> @@ -361,7 +362,7 @@ static resource_size_t
> >>>  imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
> >>>  		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
> >>>  		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
> >>> -		    bool reduced_adress_space)
> >>> +		    bool reduced_adress_space, bool is_imx8)
> >>>  {
> >>>  	const u32 mstr = readl(ddrc + DDRC_MSTR);
> >>>  	unsigned int banks, ranks, columns, rows, active_ranks, width;
> >>> @@ -384,15 +385,20 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
> >>>  		BUG();
> >>>  	}
> >>>  
> >>> +	if (is_imx8)
> >>> +		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
> >>
> >> for device_config == 0, size should be halved, but instead you would get a
> >> width of zero here.
> > Good catch! Need to treat bus width 4 in a special way when calculating
> > the memory size. i.e.
> > 
> > 	if (width)
> > 		size = memory_sdram_size(columns, rows, 1 << banks, width);
> > 	else
> > 		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
> > 	size <<= ranks;
> > 
> >>
> >>> +	else
> >>> +		width = 4;
> >>> +
> >>>  	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
> >>>  	case 0b00:	/* Full DQ bus  */
> >>>  		width = 4;
> >>
> >> I can't really follow. Shouldn't this be dropped to take the
> >> value of width above?
> > My bad! Should have been removed earlier.
> 
> Now I wonder, how could v1 of this patch have worked for you?
> You should've had double the really existing RAM or am I missing something?
There was a mistake from my side when I prepared the patch where the
width was mistakely set back to 4. Before the width was set to 2, I got
as You say the double mem size and the memtest command failed.

All this is corrected in v2.
> 
> > 
> > 	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
> > 	case 0b00:	/* Full DQ bus  */
> > 		break;
> > 	case 0b01:	/* Half DQ bus  */
> >         ...
> > 	...
> >>
> >>>  		break;
> >>>  	case 0b01:      /* Half DQ bus  */
> >>> -		width = 2;
> >>> +		width >>= 1;
> >>>  		break;
> >>>  	case 0b10:	/* Quarter DQ bus  */
> >>> -		width = 1;
> >>> +		width >>= 2;
> >>>  		break;
> >>>  	default:
> >>>  		BUG();
> >>> @@ -466,7 +472,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
> >>>  	return imx_ddrc_sdram_size(ddrc, addrmap,
> >>>  				   12, ARRAY_AND_SIZE(col_b),
> >>>  				   16, ARRAY_AND_SIZE(row_b),
> >>> -				   reduced_adress_space);
> >>> +				   reduced_adress_space, true);
> >>>  }
> >>>  
> >>>  static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> >>> @@ -508,7 +514,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
> >>>  	return imx_ddrc_sdram_size(ddrc, addrmap,
> >>>  				   11, ARRAY_AND_SIZE(col_b),
> >>>  				   15, ARRAY_AND_SIZE(row_b),
> >>> -				   reduced_adress_space);
> >>> +				   reduced_adress_space, false);
> >>>  }
> >>>  
> >>>  static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> >>>
> >>
> >>
> > I'll send a new patch version.
> >> -- 
> >> Pengutronix e.K.                           |                             |
> >> Steuerwalder Str. 21                       | https://urldefense.com/v3/__http://www.pengutronix.de/__;!!I9LPvj3b!UEEry3YzdrJRIMGgQgDd_crPHhM_0abIlHJq7-FIV6hTs9m7uhtHdAcHsA99yIw$   |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> > 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://urldefense.com/v3/__http://www.pengutronix.de/__;!!I9LPvj3b!TjpjVc01M7G9ikkRLRYrBUaGfra3FdKn89fwomU_lqiRKADVGxObbSWmFlqXHdE$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

