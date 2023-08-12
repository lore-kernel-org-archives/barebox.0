Delivery-date: Sat, 12 Aug 2023 08:23:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUi2Y-000JqS-8B
	for lore@lore.pengutronix.de; Sat, 12 Aug 2023 08:23:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUi2W-0006Ju-DZ
	for lore@pengutronix.de; Sat, 12 Aug 2023 08:23:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QFQM67HX0zH35Gi/IN7O3lVmhMkTkzPpc1tm7DKlfP0=; b=bEb56omm2+hGNyyYI2oZTHIRik
	IwEjD9X7CLZmamA5Q74FeXi1O4Y9Q5HxQcfBhPwSN5qSthqQZxME7LYqZD9eJPNO9pVu+1o/RxLJU
	Eyij8ok37xXbkSMfDhoTw/kFfd9oQXz+GFDTE3YUPXj69gfHv8zyW1GKY9V5x0+Qh4Trbe5fOtMra
	kpT/7Z/P/YjS1B8pZ3qgJCzvhdL8w2EIsdU5k2L9YEjreyq4JYLFazU8BCBwTO9l2jwjiQsI/9NCw
	sn73wFXEXtL5nDZtoUOfk+FEFxmWqDuceOES94VvKoe8IB1FKuY3uHXCE1XOZNlmQE3PRikBRRY1r
	nUx3J51w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUi11-00CmMP-26;
	Sat, 12 Aug 2023 06:22:23 +0000
Received: from mail-fr2deu01on20602.outbound.protection.outlook.com ([2a01:111:f400:7e24::602] helo=DEU01-FR2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUi0y-00CmKl-1o
	for barebox@lists.infradead.org;
	Sat, 12 Aug 2023 06:22:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LcKYxP63VUNu5KzG/vdigz+FXyxVFTjrQ0RDBbVCFlJZsPmtosDtNF4h9u4XDmfzLT3uRuNgCTlqO+b5LXGLyAQKJsmRiq8Cgls4psCRPfkgLWAGjg6u8/ZcY7z29LVfb5AisVaaAY4NqJOT7U8VQlm7nPDf0us+G3/IjGFN+a6MJFv2VusT+GtDNHzaMrT4RZ+DRROd0FJ9NPT9q6ypH3romcCID9Z/BzGxbvKFcn/cM/AcOL1YK+ChfcMODmkZhysh25vtKuQBHUtHv1I2BJslE3/b2Nxp76SaEa4kAhl+xYFmuo4r0nEkyqWggGN7DjfZ8KMWyjxgZKi/e6fm5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QFQM67HX0zH35Gi/IN7O3lVmhMkTkzPpc1tm7DKlfP0=;
 b=hfJsiH0rYhBuFU7wHi/bFhNaWXa/efTjBpi4wdxBjHN9+s1+2g8/G+vo80PH/VT6A6xCQNklu1M7g1pwagACsIK4QxUCSanvnm6AUFHzkGHi14EAuSzZqXmUs8TUEvSIoWECDdjTab0+q4TFk/fq23BjKpwzTJM7nU/CN4QH3c8ZOnM2bSjIQMkV4v3FB7DJ78vFUj0sfRgY/xPwzzf17vzA1lCbmdmTxiBA6+/Wu0A5yNpQGOGAtTVnDtg6IDXp7ahTnQsuIaOpALoKl5ppD0jrme7i1PmnfW4Wa6MtIRaIApNrjAVWwAHFDTCnfEGQChZxnaBVYCIm4dX5Lj4Epg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QFQM67HX0zH35Gi/IN7O3lVmhMkTkzPpc1tm7DKlfP0=;
 b=dZriQfOUJLQKDJhpJ+0epTKySlWfanpMX9ogIklp/I8UvKBAYK0AB8EYk7o9oYDG6Fo0voMzA5gCJtG8Jhg/soL3QlfFFWyf8OosMdQrErX3SwC29uxtdUx3PnQwt9OyptLQg4HM1H6T/A8lJ6V5Vk1ZQ9Tw+WUC4+l9ELcgDt0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:69::5) by
 BE1P281MB2066.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:31::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.22; Sat, 12 Aug 2023 06:22:12 +0000
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::c726:6743:8f0c:3632]) by BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::c726:6743:8f0c:3632%4]) with mapi id 15.20.6678.019; Sat, 12 Aug 2023
 06:22:11 +0000
Date: Sat, 12 Aug 2023 08:22:10 +0200
From: Thorsten Scherer <T.Scherer@eckelmann.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230812062210.jhxxvqtfjjxkcazo@nb821.eckelmann.group>
References: <20230811084028.2629771-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230811084028.2629771-1-o.rempel@pengutronix.de>
X-ClientProxiedBy: FR0P281CA0210.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ad::14) To BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:69::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BE1P281MB2529:EE_|BE1P281MB2066:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a6e8ca2-9ee9-40a5-0f26-08db9afc7674
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T0FCAFMP2mapjkTx4Vrkl4+mI2qatvGutgLB4Tb+tohVQYHMYz9ZEnoYcGeVdVxTXD31lHgmhUUNEV26bcy5j5TR+nTvS5CS71ozEuaHG65JkIYfUd/ODTx2nDBpathW5t+8Id7ORHivUOQ4Tjf/xGFapIQCU5gQ9qpFGGZMzjGIePTy2OdgZGPzY8PMQDoqQWL87dRY01Xl4KtPDi34TD7+tTqkGWw4WGNABB4ObN/uOSu/npUnSkdAP9NZcXX8R12zO5I9fGEkZxyJRk28tgSU2BwMiVcmZWqfu7afPvuCHOHMsv3U/E9Mo97puHWXsEXkrXEG0tBtkuTcXSi4alA2VeBJEfUUZgHaRUfQUrhEL2luuZP5SLsZjQGYjo6rAvJYEmA3PHk3CRypnSyCo3vf30w2ZBplEosp23AM4XttfW2LKNJNABZcCOxFeNKzwwqH5W0hznv88QMTh6bpYEvI9qyyF6KMYdTh5QnYSDCLj9Zhsnb/Xw1EmEzw30NF/2G6t9AzdBrhFxcB0G8R19Mrdml1DsMm0XjO/xkpfdcuFcR6ih1xUqUnKJCygQ3d3wyNpIrMQJ0u7YZZf/hiy82X6jaXA1lZnaB0LK211iyOb87zz8qJbfDkkMHP2nYQ0P767YTqN8SrxYOs0V93lg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(396003)(376002)(39850400004)(136003)(346002)(366004)(451199021)(186006)(1800799006)(3716004)(2906002)(8676002)(8936002)(83380400001)(15974865002)(12101799016)(86362001)(1076003)(41300700001)(316002)(5660300002)(4326008)(66476007)(6916009)(66946007)(9686003)(6486002)(38100700002)(478600001)(6506007)(26005)(6512007)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QVeP1NTEtQUOUAwwxCN9QEzSrxaoZN7jkwLAFcA4Xqh+pQ3Q6BMrXuqZw1GJ?=
 =?us-ascii?Q?pc3D938fdP/VMp5QkEVGc8ONaU1LxcPVC+E4vr04euqiZDXAQBGlKZxND2PH?=
 =?us-ascii?Q?4DYC9jI+4OoAIMlyBtg44TEo9djmdxjQgSppmitfIIqcf+BRbqjYh1+s3KzC?=
 =?us-ascii?Q?PdC76LCgbjA/8CuvpfPUZ+kJw3iUMkflvyACWfvpQtmQD+N8FGYmbptlaF/I?=
 =?us-ascii?Q?Dbh6GL355CefwU6UuW6I/PXGFww6DdsW+BoIsrVJdCyuX4SvYguSqbg5Naxi?=
 =?us-ascii?Q?EeKMuEwHXicbr8eQl8bbTgXq5M0SsgP2RMT+Hc1eYqMh0iBE86Gpu9vvRTZW?=
 =?us-ascii?Q?KB7nEuev/2Mj6Xh1djo0x27PHymnwgd+VU/yY+mDlLa2Pe6pKZDejyAl7aFO?=
 =?us-ascii?Q?TzQz119DudJJu3TW/dFCSjtp+8C+S8Gub4hn6VS4Lbb/uck4y4kzfQ2F2BVF?=
 =?us-ascii?Q?/P+xwtIPA5n+74uGu5Sgcs9qxVVlfPjwo0S5JyUKk6InDeQTPb0mwqE4Q8A1?=
 =?us-ascii?Q?+CAHMbB4BTqv+JEq+DAT29+PvehzzcOtbkEg2PzPf4U/ngODhAionPM0UhT4?=
 =?us-ascii?Q?A80cVqJQqPPtv1+K4+uIgVdknKPaPwR3PKgg8C593RpF/HHk4pkHPqAOSqMe?=
 =?us-ascii?Q?b8kcgmsa8ZfbDV7NpeT+pMHb9J6oMz+tV/nT6lPFjQNAcRbO2AvS6xo72EHQ?=
 =?us-ascii?Q?szJNwPcQ5FJc6UKw81yYSCJv0mFhZAYOWhXx6WnfZOs7bvN6H6pKBM6bB+R1?=
 =?us-ascii?Q?Rq4X/p1sGDYM8gYWtl+5815BUKLJY5WABSGgI8KXu5H09jp8oShan6G6zuwY?=
 =?us-ascii?Q?cSl7hU5UCz7aJlwgdlVrnkqEpb9AUL3N889ep3Hqxu8R8KETs9BGxCPSOq0T?=
 =?us-ascii?Q?IhpED/SFeKyFDPpnvBCywArFLEOcplCX6Hy8Fw+HRk4UqtwsrI0iw0G7UaY8?=
 =?us-ascii?Q?EUrMkk/178A+V+ia+yV2cTblEx0dKRv78k6kNMZJiM+qkh0gXkGLjNp6KM6Y?=
 =?us-ascii?Q?1njQTwLT/W3HjHPH57fORJi+7MxJ9bYLdtBnEg31rm3TlihNpxnyoLL3nxpZ?=
 =?us-ascii?Q?gOqrMVYE8AKhRRv9peQSNuhp2jy9ZsIDsg7P3XX+gUIgUWvwuKF+udBIK0zI?=
 =?us-ascii?Q?pJIRZ3HxgdH42+A0yN3TQtRQSgP/NcClBZHym1mDNggsaoMbr4teIrSQYue3?=
 =?us-ascii?Q?iVJnl7/Zwcyo/nnGEWqdrhaP6WD+YP7fHJ0C9NJrO6y0eslwsjUPEBzFrD9S?=
 =?us-ascii?Q?M1qms8erkylqrkjBu/vXVxyou+gTjwvOFP28SVcTRatkVN1IRQwKvhY8GUUm?=
 =?us-ascii?Q?SR5OPXETpP70KQtgt3dCJkvz7RZC78KTExa2D/kY6IQHd8LoKxNkpvW/tC6p?=
 =?us-ascii?Q?kjRnQBaR9H2cqZhxE+gyiLoehnrkyorHdyo7btsmT/np9Rx03Mpkkps2xU/D?=
 =?us-ascii?Q?wppvRRxf9puSwCmkgfi/LFnl7TtypHz0RXZ3BaJmny/4QYEe6Cp7CBsAd6tx?=
 =?us-ascii?Q?B7M+wqlS/MUUJEkdtGIatQ8tYPTaYJyDylfDe8sBR9OOfqWwTHOBFmiChM/5?=
 =?us-ascii?Q?nfhsi2jhAvz/Na+qMKonlkjuycx8jK+UvczTO4cbppJnOvymDP8zvPH7jTpx?=
 =?us-ascii?Q?VQ=3D=3D?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a6e8ca2-9ee9-40a5-0f26-08db9afc7674
X-MS-Exchange-CrossTenant-AuthSource: BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2023 06:22:11.8499
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OY74IgaUojyg3A41esXnSz2pVSGwkEkdPDfRgE6Mm2kOkfFu0/j5P9UUv86ymsheXLcGDXA6U1jV8R6PRJNlYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB2066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_232220_671920_D6D8FDC8 
X-CRM114-Status: GOOD (  15.76  )
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
X-Spam-Status: No, score=-104.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] net: designware: eqos: initialize MAC address
 specific DMA channel configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij,

On Fri, Aug 11, 2023 at 10:40:24AM +0200, Oleksij Rempel wrote:
> Make sure we use predictable DMA Channel Select configuration. Otherwise
> bad thins may happen.
> So fart this fix is not related to any know issue and was noticed by
> investigating other bugs.

Typos in commit message:

s/thins/things/
s/fart/far/
s/know/known/

> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/designware_eqos.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> index 5e5c9ebe68..845f9f51ef 100644
> --- a/drivers/net/designware_eqos.c
> +++ b/drivers/net/designware_eqos.c
> @@ -351,6 +351,11 @@ int eqos_set_ethaddr(struct eth_device *edev, const unsigned char *mac)
>  
>  	memcpy(eqos->macaddr, mac, ETH_ALEN);
>  
> +	/* mac_hi is only partially overwritten by the following code. Part of
> +	 * this variable is DCS (DMA Channel Select). If this variable is not
> +	 * zeroed, we may get some random DMA RX channel.
> +	 */
> +	mac_hi = 0;
>  	/* Update the MAC address */
>  	memcpy(&mac_hi, &mac[4], 2);
>  	memcpy(&mac_lo, &mac[0], 4);
> -- 
> 2.39.2
> 
> 

Kind regards
Thorsten

--
Thorsten Scherer | Eckelmann AG | www.eckelmann.de |


