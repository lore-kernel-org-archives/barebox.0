Delivery-date: Mon, 15 Nov 2021 15:08:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmceT-000374-Fe
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 15:08:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmceS-0007iK-A0
	for lore@pengutronix.de; Mon, 15 Nov 2021 15:08:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0QAP/cMrx+nQrwcnjbr0Qmc48sHCX15tPBEcXUq5Z+c=; b=VFtiRGY6mOuYS5
	zJ/RkpVDoeQ15rNB90OaL1SerhhWj7sLQtv4IZcLU3rveDXL0ng9zDQ3swWmGA3eySoXyKDAbzLkm
	jx9BWiGIsStVUN38voNLaJ1eZk50w2qJjawLxhpJKHAy3UEQ8X8wopmdw57WxuXX4LuQlV7/IfDcO
	B6z++vdTZxHDEm4i8zxkPYOsw3HKapUWRS6Z6e88t03NsmA2dDKMPRLc8I1cnqoWK5ABlDQcLKVTq
	GKniWVglMGk3zvwUZZMdGdYGfDySHOP3fC8iprmEJ5ZmvXYLM0t67ijohC7VsoRcejkNaC+1z/EA6
	RpXAGQI2cA1qrGyse8+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmcco-00FoIn-ET; Mon, 15 Nov 2021 14:06:22 +0000
Received: from mail-eopbgr130081.outbound.protection.outlook.com
 ([40.107.13.81] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmcci-00FoHC-FU
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 14:06:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGUaHWF3DQZ18T6S1iA9Qk3kMG90kbbHEAcsI20W6ANuW8V/zt2oQPEQ6p8g0zU9ZlVaIKXtAtLqOdlBIAp7YPAoUrQg7ptDw9t6MRo9fbd1bFA/8oTsst5S7tWTKVApaTkN96SyBzuKV70wuV5EWE9dXoO+gpvu6aPeXuKfwCxQHvNNypyl32S5JL82VnQmWEJAxV/6nVqerBS6yKEnHjfZikKVjv/ZAW/wFUzYr1fS7l1Aw1HbyYcK5cAT1m82aGLZsz83tIBihAabWJI2tJxOCaC5s2UgTstGDOXlJHQmVjzYGgMucCmhhOW5pSSkWA5Dd4vqyvLyWtAGGUrBlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1jytJYIzXPuwVbQT4hy2y7eqpjylerVlQ7ZxMFDAv+c=;
 b=GdOs0MLrxr4A4E3rCC0jlYN13KZOnCFGyFhfgMa3NBM8HC7TKF4ldctQIQk6Nqm9PK//+hZnQu2UyJ9DNd8RJtnFwaPYhgO8ZrJmaL2ExLk18sqT2bmqv1nBUPBJcRWW2154chtQURuvr3jx90ZBbteQgvvkA1B7Jat6QUYc3LLDY1KdieFjSfwFmCcYWHeX+fRfYOuKicqyRphxIiPGrHqsv33lw8GKwSt4mYrjq7FUDbWg/4aOjixFYbPJhWlQOPmfRKGB5wc2RcQDr9U+3i4HcocAO4WaR3cyryDq/rtYECzpPI/Zlexv/uA34eYHpYf4kZew8ugbeG9xBNoh0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1jytJYIzXPuwVbQT4hy2y7eqpjylerVlQ7ZxMFDAv+c=;
 b=cCa4I80Ja9keGvP/L0tMW67YO2XyVyTuUsCpAVmLrRyfc+o82I7oDG7qemQH6yWY/xtv/YXkXSeDZafLhhl88TzDCwDY5MRdWuyIQYk5NvVOsXJmJbn23QpGByuk6i+VBEW2yY3PXo7rg2sR1X+MxluCTc41VtOB544TEYdXSOk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 HE1P192MB0219.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:103::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.26; Mon, 15 Nov 2021 14:06:08 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::cd56:de39:90bb:7466]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::cd56:de39:90bb:7466%12]) with mapi id 15.20.4690.026; Mon, 15 Nov
 2021 14:06:07 +0000
Date: Mon, 15 Nov 2021 15:05:39 +0100
From: Joacim Zetterling <joaze@westermo.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211115140539.GA118449@wsevst-c0022>
References: <20211101121109.GA56533@wsevst-c0022>
 <20211105093927.GI25698@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20211105093927.GI25698@pengutronix.de>
X-ClientProxiedBy: GV3P280CA0064.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:a::16) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
Received: from wsevst-c0022 (90.229.138.185) by
 GV3P280CA0064.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:a::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.15 via Frontend Transport; Mon, 15 Nov 2021 14:06:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a0b3b2d4-b5cd-4bb8-8258-08d9a84111da
X-MS-TrafficTypeDiagnostic: HE1P192MB0219:
X-Microsoft-Antispam-PRVS: <HE1P192MB02197042F825391570AC147B9C989@HE1P192MB0219.EURP192.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tiYk2Sa+dzYiiKLefPKDE5fZHSM+3heSXAjL5dozj9Z1Ewrvcrlmgx7Ynv9UTU7GzIiFaRDiZhNKzmw4ivsOTWsEOL445Vwx8pWph4ME9zhIMO4yH8NYvlztQ82F4tEzeKpYFxIRMlwqhuRRH5NDJBl140QvbYr5q+DxqyxDNbe91GR4cTp1LQOeyTHgGDcsAxKW8HYvEVIbPLE4tCSEWagSI7ay8ezF0qhtMMMFGDQjDNJ15wj/xigc79K94856vPsF3xfSqsLbYegB8lUrBGkawT51srdt9Ko6CEr9MO300LWW0cYNgQL/9/rbxcBYvxAkGcz7ZHO4KrXZuSisfZTZKKp1TioWKiwR5RVi+IzXEnGjd/TH7RggPDZCFJpQuIUx+6jM2y6m2G6FKrAp0UouSyeANOqFN0GZX7JifurpxZnhaoll+i6RjwyXVRnubgjlQfauuxZKdu0IfkViOtyOz2BrzQP/akxb6y6kK2M8dhWKaxJ2JWnA1656B8s3r1eMXCYJuRutixsAadWhdbSAGBlXoEX6SMhe+va5QTeEqUQoaCBQs7dLRzjNURB38qfUOkFFTGo1wfwHs841/s1S1u1rFvHzoIj+aF4T2vBYkh/0WlySl3lPLJ8nfmSzwN1DQo1cqFGdg5Y2A9WC3yflxIyn27eBA2SENoM+M1kVlunkrjqVZAZogFavxReQQIvtnVShuKlRT4MvJgXE3ZF/thLBt6RcMkEEFxwHPD3vwHvoNb+R/zCkqnyYetykB4O2QzPdhWNo75WlRURFyz76nAue0NnoCKyw2DrGNyA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4326008)(52116002)(8676002)(956004)(5660300002)(2906002)(966005)(38100700002)(38350700002)(186003)(33716001)(316002)(26005)(55016002)(6916009)(6666004)(33656002)(66556008)(66946007)(66476007)(1076003)(8936002)(83380400001)(9686003)(508600001)(6496006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fEO2H+TV7t0mndGLts3qzAdIZzLY30+OaEl4x/kjfglo1KGfRubIx0xXvuyX?=
 =?us-ascii?Q?d11ccsW2tgxnWvKP2z6h1OMY1bSIrzRgj0e2ov/w7L1QajHW2p8OKnJnX9ZL?=
 =?us-ascii?Q?Szm6af9UPdc8jQ1XtS1UzBjfzrvQUNylHoSd0hH6U22PKiFQZtRDVkZEgcFn?=
 =?us-ascii?Q?hlX6i8OnChBzNaPHh7R7LGTyDOW0TnoUnsqZ/VbZMqkZShSrMSEtZK+70Kj8?=
 =?us-ascii?Q?xcolI+X8YuglIkbCGN7BlpksgjSk1sc4w6D8YWVjdV+H4LXx+zJmVR/P88yk?=
 =?us-ascii?Q?FcknTo77uqa3vKkyL1YKYJcpT2euVtt9M0a57qtN8S6WrixzFDA6I66CCbdY?=
 =?us-ascii?Q?QMbtxW2yr/+ZIPcNXDiupnb1JSVr1sQNhx6biwSZCkC6KY5TnBqOg/fNhjup?=
 =?us-ascii?Q?oajvwFEYLT8zygS1dNdNWs2EIvEBOpTmt/7DfjZOYQEsSGtjK5oBXxZflK63?=
 =?us-ascii?Q?FUpw2DdYlkl6hMsXEEdSaYfZInwy5Rc3ovl4SfxNLnEhqlSOTYOdhdrm/3qn?=
 =?us-ascii?Q?3QJ3Dz9ocXtUkfcWVuyoGccMHKVLc5yDo2Av/mcYJp6mYCkrF0onjblF9LpL?=
 =?us-ascii?Q?JO8cBaKQUn+J1KCWsnt4mIEWoYbg0t5QeHftKs6bWXex/uMzAmcDnJLV9AiQ?=
 =?us-ascii?Q?d+xyGNuuHDQrTtRoQrSX/Ln0/rUqGzFS5Szdr2+ptVdCxW4v35IkzmUtxuxN?=
 =?us-ascii?Q?gUq0yDNQSnEvm2KsVWDsOcZG86u9xZsTwRuTgVK8X+fn9k/QlNbfpOUej6Ef?=
 =?us-ascii?Q?N24zoA11/rU2Y2TGdWpWvRn9CCBthm6VnEka54eKNh7eiywbL/x1HS8DIj9y?=
 =?us-ascii?Q?xKE8/nxiYqroGJr46mw9j4+R3tuoM7whU09NVynKRki45M4awDROxZQpcHS7?=
 =?us-ascii?Q?Ys7kzlR8/uxW4YmZTWAW43SBBj9ykpWB5YFUOKJ5IDcRN0BkLeX9yE52YcvZ?=
 =?us-ascii?Q?0H1P3H4RD0WH+L/1wcbj3del7CxNNqgHwiYoXsNoaVDqSCBdev9f/WaGmBiJ?=
 =?us-ascii?Q?oqYXscP1mgFONZP6DFL2W7Zp3ZwSPysYBNuHaj7MNp8+6lS6rbg/5CkEc4cn?=
 =?us-ascii?Q?+n/neKXExggzHlDKCTwVEWtjvoBL1Tt1wiqZYxJtMMNfbJgd5nD0dQ/PV6Aa?=
 =?us-ascii?Q?zsO4Jse0w2WPCXzC/RjoAuyCSGCCBHUIoT1jZqCMkC3IousRvG5s1PLV4ukI?=
 =?us-ascii?Q?Q66PYs4g4zMmN8p/mniGe7l151OHNEy+jR4mT1PLJeF2bnjpUMR/OeMhrB6R?=
 =?us-ascii?Q?8mWDJxBDOxm8k5Qlki5bGyP2O2HrTsiiinEzgdhkv/Tt5UX3XpX1GGrgR+MT?=
 =?us-ascii?Q?moXyKCKa1CkIN3qfe9JBjQMokUnt+4G3kKkKMhFzBKrAVmp2Fe9Ybqspgm7u?=
 =?us-ascii?Q?tmNs8g5c+5Exn4Cim9iytayEDkQcYynm8A1W/JSP7wwM0+CN5xWs02PGs25j?=
 =?us-ascii?Q?1eDlxh5eu0f634WnAuwg2CXGOvbevjcL0KucqrUpz8Q8m69hhTt9GuyTkMdv?=
 =?us-ascii?Q?Oo0qAZswFRSoU3q1fAYWBLYp0FmPJLC51u9SucnpMBPw+7qRaN3qAxj+/caN?=
 =?us-ascii?Q?oem1WW8R8zhoi7CmHUkecrkKe3RVYIt5L6h9d65kZNR0fnaptdAWfRan1jqi?=
 =?us-ascii?Q?nzF596Q59IIdIZqSDPTPO9o=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0b3b2d4-b5cd-4bb8-8258-08d9a84111da
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2021 14:06:07.8078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lzM/MpRzsd0IQeI08WcSGo2PCcstSYYVEKeQ0npIbjrUVGqqJSWy2JQXts64HROz8H9qQ95B2DcONwFJgE+9OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P192MB0219
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
X-OrganizationHeadersPreserved: HE1P192MB0219.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_060616_637917_6C6B67CC 
X-CRM114-Status: GOOD (  24.44  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3] Fix problem with imx_ddrc_sdram_size calc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Nov 05, 2021 at 10:39:27AM +0100, Sascha Hauer wrote:
> Hi Joacim,
> 
> On Mon, Nov 01, 2021 at 01:11:09PM +0100, Joacim Zetterling wrote:
> > There was some issues with the imx_ddrc_sdram_size calculation.
> > 
> > If we compare the imx8mn DDR4 evk against the LPDDR4 variant in
> > code and in the datasheets, we see the following:
> > 
> >              DDR4   LPDDR4
> >   ========================
> >   Bus width   16      16
> >   Rank        1       1
> >   Ranks       1       1
> >   Banks       4       8
> >   Banks grps  2       1
> >   Rows        17      15
> >   Col         10      10
> > 
> > This gives us the following problems:
> > 
> > 1. Bus width problem.
> >    Does not support 16 bit SDRAM bus mode, only 32 bit supported
> > 
> > 2. Row size problem.
> >    Only up to 16 bit row size support.
> > 
> > 3. Bank groups support.
> >    Only support of 1 bank group.
> > 
> > 4. Bit count problem.
> >    The imx_ddrc_count_bits function does not do a correct count.
> 
> Could you split this into four patches fixing one problem at a time?
> I am not sure the problems can be separated from each other entirely,
> but splitting this up would make it much easier to understand the
> problems and also their fixes. We'll be glad having smaller patches
> should we ever have to look at this again.
> 
> Sascha
I agree with You that the problems can not be separated completely.
But I will try to do my best. Do You prefer a patch set or separately
patches or a combination of them both?
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://urldefense.com/v3/__http://www.pengutronix.de/__;!!I9LPvj3b!Wb3fL9pyR56wlJRdVF8DNTWkyIIzz62heX4PoFnCqATftaC0TnNM4XTgg1tc9ok$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

