Delivery-date: Fri, 08 Oct 2021 16:28:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYqqv-0002o9-VD
	for lore@lore.pengutronix.de; Fri, 08 Oct 2021 16:28:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYqqt-0003ay-Vn
	for lore@pengutronix.de; Fri, 08 Oct 2021 16:28:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XU/elhOUZYu+iRIiXORqjeb2OZPU01yUDsS56dtfqRk=; b=cUpeL4U27Ar3fB+OX/w7PQ0xzn
	iUbGsrSKwn7B7keb42QbV4M3VFn/LM3ORqQlsV4wEE7u9e5717Tn5TtQxJZic0XlPhFHGpn+lHZnp
	24egCjM9MnIs9DT0Tpa8bT82j8UsetglC6THMk0G0/3bJKpOWelh4zWIRUw+d43+ENl+sV/Yd5wA1
	EILvbL9YuZLNTMtXdRiapWzuUkFy2gEBFzz9ZJswogKbEfZg4CztPnMElmDmaA7DWWnB6ZAfuo91E
	wui+YRyqyVW+9Vy6Rk3zVLaJOFqld6TUOvsrERnVZl5i7cWlTQkuThE98guSRGJBEB0sDqGdKropI
	qgjp7O1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYqp9-0035HQ-SU; Fri, 08 Oct 2021 14:26:12 +0000
Received: from mail-eopbgr130072.outbound.protection.outlook.com
 ([40.107.13.72] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYqp4-0035GX-5q
 for barebox@lists.infradead.org; Fri, 08 Oct 2021 14:26:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LLEdqoeAc3FFYLFwK3RlUoUw5N8S9I8IIke+43LbjRh09iLXbQEZVwh+uzyomYtyzGfVgmoNEbgDuCVwhSsRe4aotC3BD/3rt1BaQVQA5m7ZrCeMsJgdkePhH9s1WiDo3nRfarvyTafiPtv24ENvyVOr0urYE6yXe3ph0sQs++0JYYoZulAfgIySwtxphayzo4IjsboGl32axptKP2/uUHftuWKv3G78zdM09HLRJULEulDHFGC2ibGab5Wb9UnwSMgBDI//ZnY4JKeYjElZAocYNO57kx08r3Fmg7bdvYdcp+VAeMWc7Ptz0qdSeqaL8FVyHKNMGcevaBA33EYlJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3PNsBP5G9k2iWDuvgfPVGTIha6IpRxzAd3x0gLhp7RA=;
 b=EISvcZXq/Hun4Lt+L5VvaiAdDgdTF84uWmeYnfrbxXcrh1VT6rDgm9KkPPoIMOZDP0J2YfY9USiwBsIUHXkx8Dihacc7OuFRNb7TNwQygwxJ3CG6BmHcAsTzB+nwp7PoCWfH9s1xXh6X9fU4p7SgLRPLHZCdbbpJicJSx9X5HyK5ajXLTGHbzDhHHGupNntkL6peHRAj7H5mdTmQz815hx2oTblNi7+MDzoYwr22QrnqouRqk1wffUtoPgLUvHT9kzYw6L3RmcPKqPbv6m11+5IienZmJsxybrCTfMaG1wxywqN+7iVkj7Gb8z20Po3tuZwfTnsEFxnxhE/O2AO+Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PNsBP5G9k2iWDuvgfPVGTIha6IpRxzAd3x0gLhp7RA=;
 b=vQli+oYC25GfH/3PWGGLfmFmSTd1ZxwDO9e3ZgBC1dwauar0eUBEh3x5JkD8ilSQW1Q7B3TAOmjCOMPO3olALd0rrbWNrV2Jl+OQW53GGfYMW1WP09+eRekaQ5gvYnP3p55xWeRntWfbwdtw0R+s7CVRB0ZLUcrDO3ZZej5EdGM=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6875.eurprd08.prod.outlook.com (2603:10a6:10:2aa::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Fri, 8 Oct
 2021 14:25:59 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4587.020; Fri, 8 Oct 2021
 14:25:59 +0000
To: barebox@lists.infradead.org
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
 <20211006142254.1751864-6-s.hauer@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <19559eab-4ba0-f96a-028e-a748da9b9c29@wolfvision.net>
Date: Fri, 8 Oct 2021 16:25:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211006142254.1751864-6-s.hauer@pengutronix.de>
Content-Language: en-US
X-ClientProxiedBy: VE1PR08CA0013.eurprd08.prod.outlook.com
 (2603:10a6:803:104::26) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from [192.168.100.125] (91.118.163.37) by
 VE1PR08CA0013.eurprd08.prod.outlook.com (2603:10a6:803:104::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14 via Frontend
 Transport; Fri, 8 Oct 2021 14:25:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e24cfd63-ec96-49ec-df20-08d98a678c72
X-MS-TrafficTypeDiagnostic: DB9PR08MB6875:
X-Microsoft-Antispam-PRVS: <DB9PR08MB68757C249A30EE6DFCF50832F2B29@DB9PR08MB6875.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XO1C9mxpBKFiYuEQ5XYgXmT72oe0xpuRQuT0PcADuLpTy1iOBA4zzRI+TRDI9Zx9K433UQh9FdmgbMui+0/yGx0IzxqiL3F7EKydTIZNFAjl2bqS+cjCMu1nd3q9cpsaKtrsxlu7niJdEZm3LyYpZv1+dal38kRWSsrk6tphUioQhLhA1H5sNVfA/pFhSi/mJwww6BcEKDJRoyR06A9+L2qNjeReSNKS1ttmVRxaWPTYntyyJT3Man1STxQG9R+F4MkjD25JKwqmzix46Sig8yXzO03VzzRE+Mv2D4FRb9QxAsVYRMUUBfWZWcutOdz3HDI/+2lKDXDMvKxXRFDekKOPU0VmqawgwOWZifR1yL4gGQfiSzMPBR1NCks0B8g9f/1xEOOlwNEcBtaOipTmlNAELh9d0N6HK3JCpXAkIu6ImRN7o1dJ1QSh4ngh8WyBS/StmzX69U2KGmtaSdjMHNb1CJjGB32bQun4bZtKVFLPAzg58Ms/LheVqc/yjhurUAn+P72rzyZDoDk08yEC2xBCHT3H+XihlB4jKFu3Sju6RYEW7MY4QR/qWYrz6xrcIE+7YlzOv/QkmgkQXaUUD8Ex/SbyYczqwMIlw8tLAcB+YYzBLo+NDNIWMZg+VkPkhaD3k42MitDz7HseonFZq/D2gDBt9ys4Mz71pgVxSeRcgWgBUm5ffgBvHlVUY80fU8/FtjmQzs9ehUgYcM6ToVn68/S8AWm4RlGWU0D5yUgwt5ucUegRllsQwqSG2z5ACAw7q/wFlQSIr43WjyfddA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(396003)(39840400004)(366004)(346002)(5660300002)(66476007)(316002)(36916002)(16576012)(508600001)(66946007)(36756003)(53546011)(8936002)(6486002)(38350700002)(38100700002)(8676002)(52116002)(66556008)(31696002)(44832011)(2906002)(2616005)(956004)(26005)(86362001)(30864003)(6916009)(31686004)(186003)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXNzRlJBUDRJeWdTd21ZcXBTb3BDMmRRT3Ewb1htN2N3aXR4bFdyRDc5Q0pq?=
 =?utf-8?B?YzBVeXgzTzZRcVQ1MjhCbzZUQW83RUFTbEEvcHd2bVoyVU9TNmhOUkI4bVI5?=
 =?utf-8?B?NGcxWUdia2RzVUZFZzBRemxnNU9EZzh6NGVUaXV3THVCRW85Sk9LaFRNN1JN?=
 =?utf-8?B?NmJ2ZGo4MmpoOCtzUlMyOHM5c09yRW1pU1ByZUZIN05sYlRUemZ0YUJMa0R1?=
 =?utf-8?B?a1o5V1A1VCtrRW0vQXB4UU4yV2x2Zit6czhrRmY4WU9CTUNyc0k1V1hnMHBw?=
 =?utf-8?B?MzBWYTh3b2VhYzQ1U2QyR3dCamdnUWY3M2w0VkRWUlFQUm1MZXJpR3VhMnk4?=
 =?utf-8?B?ZmR2SHQ4UWFMSU1icHdVSEtLY1NCR3V4cExjR0Yrb0R0aUxqMDlIRks1Tkh0?=
 =?utf-8?B?NzZQSUxNbWgySDhBT1h5V2U2eGpZOFllVXVpQnVhYktMNHpMbkZtL01wRnVp?=
 =?utf-8?B?Z0ZMTnh1ZkljaHI5NFg1c1pRMnZmampnNjBFc1Y1QjFnL2x6Zy9tL3g3MDhR?=
 =?utf-8?B?ZGFDbE1La2x4Q2l2czRnVklmOFBCa3VwR2wyQ0dFZjdyZlMvOHZrQWRpUUVx?=
 =?utf-8?B?Q2tWVk1jOXNUQm10c1ZPTWZFd0dwNVFJcWVLWEl2YWxLTkNMVXluUE52VzVJ?=
 =?utf-8?B?eHU5b3JHN3ZDWHVkWFN3NFRjVG43dGJCSk5mMHh0Qm85UjVwdS9UZm9aYWIz?=
 =?utf-8?B?VWRzZzMrc3gwQ1FNNWVjZjBJT29TWk1zMXI3Z2VCV0pFZzlmZXd5OE16VnV4?=
 =?utf-8?B?TmdUSGs4OXNyOC9heVNCa3RuMlY3WStjaXgwVFpjYk1BZTBXdEp2b0tydE02?=
 =?utf-8?B?OXhOdmtwN25jajNockRYbTBtYmx5N3dkd3YrTDUvWmFBY09GNndRRjQ1RGZm?=
 =?utf-8?B?VE0remRHUXExRzdFOWoxMGtUdis4dGRnVDI2RmROM245MUppc1J4SDFEVlkz?=
 =?utf-8?B?aTZEbzhuRFhvYXZsZEJiVWQ3OUlTNkxoWEdKVXFJckoyeDBHencvdkx4bUVI?=
 =?utf-8?B?MURRT0lFa2hOeCtOc0dzcFZacSsxeEpzZld1LytXK1JCYnZaMU5DMW9PYlFa?=
 =?utf-8?B?Z2oxQVNxOGd3UnorL0tkRnJGenZIdjVXKzBzS0J5bU0xVzVEenFSNGN0K1k0?=
 =?utf-8?B?N2Rwbk5kUEM3eDRRbDZ4YWlTbDFuMCs5Q2NkUDJzUElLUldhbjNPbzFvenFM?=
 =?utf-8?B?djB2T250UFl5RkI5Z3hYamtka3kvbDRGWWhrdWF0ZEx3WlJ0d2xKa2dGNmF2?=
 =?utf-8?B?aVUzbEVPS3lKUzh4cC8ybjVlSlBMY0RpNkJhY3piL2lNVGJyUUFXY29UUU1F?=
 =?utf-8?B?Qk9iOHRsbURmczhqY1VKRk1zUkpEZnpBL0hLMWxudFY5TXNIQ2RjVDZ3TWtm?=
 =?utf-8?B?MkVXNlIzL25HR3FSNnBhTEkzK29VWWROM2h1N3FXTTQxSTVPZ0JlYmc1U2NI?=
 =?utf-8?B?OXR0S1dUcmR3dXdqakdzNVh4QlNpYTlGclB0N0xPYUxRUVQwb2hsMXJhTHJG?=
 =?utf-8?B?SXMvZnRESGw3cEI3VGVLd0ZyODUzRStEL2JNMEp2RWxjbFhUZ1plRTh1ZW1K?=
 =?utf-8?B?Yk5XcDk4RU4vSFp6cTBaUzV2YmFvSHFSMmt6K2FkYUZyaGxKZWZqdEdTeElx?=
 =?utf-8?B?c2JEV2tLNU1rVlZ6K2djY1BUYWxYbWE0S2NxUUYrUVhHV1AwZTJTZjdDVEs1?=
 =?utf-8?B?OTF1TEdjQ0tXVlpCVVhIRnNuNmU0dUdNRm0wQTZHb2QzTFRvTjlhR3c4MENM?=
 =?utf-8?Q?hfH6AIqNsgaPzeQr4xKM8PI+VBtGP7thZFfTxu5?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e24cfd63-ec96-49ec-df20-08d98a678c72
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2021 14:25:59.3847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2964ZeTc7iuOdwTew46H9rhvv+CFpyKbZ7S/+QBYGwTuuuDiXP0kZeyCxJHyYMzed6cVzXI30DdKd5AZgganmdfDWDEoXmjsuibRd+CyOfk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6875
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_072606_519173_09A18FB6 
X-CRM114-Status: GOOD (  35.05  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] scripts: Add rk-usb-loader tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 10/6/21 4:22 PM, Sascha Hauer wrote:
> This adds a tool suitable for bootstrapping barebox on Rockchip RK3568
> SoCs. It has been tested on this SoC only. It might or might not work
> with minor adjustments on other SoCs.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/Kconfig         |   8 +
>  scripts/Makefile        |   3 +
>  scripts/rk-usb-loader.c | 324 ++++++++++++++++++++++++++++++++++++++++
>  scripts/rkimage.c       |  32 +---
>  scripts/rockchip.h      |  35 +++++
>  5 files changed, 371 insertions(+), 31 deletions(-)
>  create mode 100644 scripts/rk-usb-loader.c
>  create mode 100644 scripts/rockchip.h
> 
> diff --git a/scripts/Kconfig b/scripts/Kconfig
> index 5cba520f4b..5118269c2d 100644
> --- a/scripts/Kconfig
> +++ b/scripts/Kconfig
> @@ -102,4 +102,12 @@ config OMAP4_HOSTTOOL_USBBOOT
>  
>  	  You need libusb-1.0 to compile this tool.
>  
> +config RK_USB_LOADER
> +	bool "Rockchip USB loader"
> +	depends on ARCH_ROCKCHIP || COMPILE_HOST_TOOLS
> +	help
> +	  Say Y here to build the rockchip usb loader tool.
> +
> +	  You need libusb-1.0 to compile this tool.
> +
>  endmenu
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 53568573a3..db2168bfab 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -36,6 +36,9 @@ hostprogs-always-$(CONFIG_OMAP3_USB_LOADER)		+= omap3-usb-loader
>  HOSTCFLAGS_omap4_usbboot.o = `pkg-config --cflags libusb-1.0`
>  HOSTLDLIBS_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
>  hostprogs-always-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT)	+= omap4_usbboot
> +HOSTCFLAGS_rk-usb-loader.o = `pkg-config --cflags libusb-1.0`
> +HOSTLDLIBS_rk-usb-loader  = `pkg-config --libs libusb-1.0`
> +hostprogs-always-$(CONFIG_RK_USB_LOADER)		+= rk-usb-loader
>  
>  userprogs-always-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
>  userprogs-always-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
> diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
> new file mode 100644
> index 0000000000..87bc7b94a9
> --- /dev/null
> +++ b/scripts/rk-usb-loader.c
> @@ -0,0 +1,324 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +/*
> + * rk-usb-loader: A tool to USB Bootstrap RK3568 SoCs
> + *
> + * This tool bootstraps Rockchip RK3568 SoCs via USB. It currently
> + * works for this SoC only. It takes the barebox images the barebox
> + * build process generates as input. The upload protocol has been
> + * taken from the rkdevelop tool, but it's not a full replacement
> + * of that tool.
> + */

very nice! I was able to load barebox images into the RAM of the RK3568
EVB1 as well as of the Pine64 Quartz64A boards. So it works for the
RK3566 as well, maybe this should be reflected in the comments and the
commit message.

Also, if it is not too much to ask, a short hint to this tool in the
documentation would be nice.

Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

Thanks and best regards,
Michael

> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <stdint.h>
> +#include <stdarg.h>
> +#include <string.h>
> +#include <stdbool.h>
> +#include <unistd.h>
> +#include <getopt.h>
> +#include <errno.h>
> +#include <sys/types.h>
> +#include <sys/stat.h>
> +#include <fcntl.h>
> +#include <libusb-1.0/libusb.h>
> +
> +#include "../common.h"
> +#include "../common.c"
> +#include "rockchip.h"
> +
> +static void log_error(char *fmt, ...)
> +{
> +	va_list va;
> +
> +	va_start(va, fmt);
> +	fprintf(stdout, "[-] ");
> +	vfprintf(stdout, fmt, va);
> +	va_end(va);
> +}
> +
> +static void log_info(char *fmt, ...)
> +{
> +	va_list va;
> +
> +	va_start(va, fmt);
> +	fprintf(stdout, "[+] ");
> +	vfprintf(stdout, fmt, va);
> +	va_end(va);
> +}
> +
> +static int debug;
> +
> +static void log_debug(char *fmt, ...)
> +{
> +	va_list va;
> +
> +	if (!debug)
> +		return;
> +
> +	va_start(va, fmt);
> +	fprintf(stdout, "[D] ");
> +	vfprintf(stdout, fmt, va);
> +	va_end(va);
> +}
> +
> +static libusb_device_handle *rk_usb_open(libusb_context *ctx, uint16_t vendor, uint16_t product)
> +{
> +	libusb_device **devlist;
> +	libusb_device_handle *handle;
> +	struct libusb_device_descriptor desc;
> +	ssize_t count, i;
> +	int ret;
> +
> +	log_info("scanning for USB device matching %04hx:%04hx...\n",
> +		 vendor, product);
> +
> +	while (1) {
> +		if ((count = libusb_get_device_list(ctx, &devlist)) < 0) {
> +			log_error("failed to gather USB device list: %s\n",
> +				  libusb_error_name(count));
> +			return NULL;
> +		}
> +
> +		for (i = 0; i < count; i++) {
> +			ret = libusb_get_device_descriptor(devlist[i], &desc);
> +			if (ret < 0) {
> +				log_error("failed to get USB device descriptor: %s\n",
> +						libusb_error_name(ret));
> +				libusb_free_device_list(devlist, 1);
> +				return NULL;
> +			}
> +
> +			if (desc.idVendor != vendor)
> +				continue;
> +
> +			if (product) {
> +				if (desc.idProduct != product)
> +					continue;
> +				goto found;
> +			}
> +		}
> +
> +		libusb_free_device_list(devlist, 1);
> +
> +		/* nothing found yet. have a 10ms nap */
> +		usleep(10000);
> +	}
> +found:
> +
> +	ret = libusb_open(devlist[i], &handle);
> +	if (ret < 0) {
> +		log_error("failed to open USB device %04hx:%04hx: %s\n",
> +				vendor, product, libusb_error_name(ret));
> +		libusb_free_device_list(devlist, 1);
> +		return NULL;
> +	}
> +
> +	ret = libusb_claim_interface(handle, 0);
> +	if (ret) {
> +		printf("Claim failed\n");
> +		return NULL;
> +	}
> +
> +	log_info("successfully opened %04hx:%04hx\n", vendor, product);
> +
> +	return handle;
> +}
> +
> +#define poly16_CCITT    0x1021          /* crc-ccitt mask */
> +
> +static uint16_t crc_calculate(uint16_t crc, unsigned char ch)
> +{
> +	unsigned int i;
> +
> +	for (i = 0x80; i != 0; i >>= 1) {
> +		if (crc & 0x8000) {
> +			crc <<= 1;
> +			crc ^= poly16_CCITT;
> +		} else {
> +			crc <<= 1;
> +		}
> +
> +		if (ch & i)
> +			crc ^= poly16_CCITT;
> +	}
> +	return crc;
> +}
> +
> +static uint16_t crc_ccitt(unsigned char *p, int n)
> +{
> +	uint16_t crc = 0xffff;
> +
> +	while (n--) {
> +		crc = crc_calculate(crc, *p);
> +		p++;
> +	}
> +
> +	return crc;
> +}
> +
> +static int upload(libusb_device_handle *dev, unsigned int dwRequest, void *buf, int n_bytes)
> +{
> +	uint16_t crc;
> +	uint8_t *data;
> +	int sent = 0, ret;
> +
> +	data = calloc(n_bytes + 5, 1);
> +	memcpy(data, buf, n_bytes);
> +
> +	crc = crc_ccitt(data, n_bytes);
> +	data[n_bytes] = (crc & 0xff00) >> 8;
> +	data[n_bytes + 1] = crc & 0x00ff;
> +	n_bytes += 2;
> +
> +	while (sent < n_bytes) {
> +		int now;
> +
> +		if (n_bytes - sent > 4096)
> +			now = 4096;
> +		else
> +			now = n_bytes - sent;
> +
> +		ret = libusb_control_transfer(dev, 0x40, 0xC, 0, dwRequest,
> +					      data + sent, now, 0);
> +		if (ret != now) {
> +			log_error("DeviceRequest 0x%x failed, err=%d",
> +				  dwRequest, ret);
> +
> +			ret = -EIO;
> +			goto err;
> +		}
> +		sent += now;
> +	}
> +
> +	ret = 0;
> +err:
> +	free(data);
> +
> +	return ret;
> +}
> +
> +static int upload_image(const char *filename)
> +{
> +	libusb_context *ctx;
> +	libusb_device_handle *dev;
> +	int ret;
> +	void *buf;
> +	struct newidb *hdr;
> +	int i, n_files;
> +	size_t size;
> +
> +	buf = read_file(filename, &size);
> +	if (!buf)
> +		exit(1);
> +
> +	hdr = buf;
> +
> +	if (hdr->magic != NEWIDB_MAGIC) {
> +		log_error("%s has invalid magic 0x%08x ( != 0x%08x )\n", filename,
> +			  hdr->magic, NEWIDB_MAGIC);
> +		exit(1);
> +	}
> +
> +	ret = libusb_init(&ctx);
> +	if (ret < 0) {
> +		log_error("failed to initialize libusb context: %s\n",
> +			  libusb_error_name(ret));
> +		return ret;
> +	}
> +
> +	dev = rk_usb_open(ctx, 0x2207, 0x350a);
> +	if (!dev) {
> +		libusb_exit(ctx);
> +		return 1;
> +	}
> +
> +	n_files = hdr->n_files >> 16;
> +
> +	if (n_files > 2) {
> +		/*
> +		 * This tool is designed for barebox images generated with rkimage.
> +		 * These have one blob containing the SDRAM setup sent with the
> +		 * CODE471_OPTION and one blob containing the barebox image sent with
> +		 * the CODE472_OPTION.
> +		 */
> +		log_error("Invalid image with %d blobs\n", n_files);
> +		ret = -EINVAL;
> +		goto err;
> +	}
> +
> +	for (i = 0; i < n_files; i++) {
> +		struct newidb_entry *entry = &hdr->entries[i];
> +		int foffset, fsize, wIndex;
> +
> +		if (i)
> +			wIndex = 0x472;
> +		else
> +			wIndex = 0x471;
> +
> +		log_info("Uploading %d/%d\n", i + 1, n_files);
> +
> +		foffset = (entry->sector & 0xffff) * SECTOR_SIZE;
> +		fsize = (entry->sector >> 16) * SECTOR_SIZE;
> +
> +		log_debug("image starting at offset 0x%08x, size 0x%08x\n", foffset, fsize);
> +
> +		ret = upload(dev, wIndex, buf + foffset, fsize);
> +		if (ret)
> +			goto err;
> +	}
> +
> +	ret = 0;
> +err:
> +	libusb_close(dev);
> +	libusb_exit(ctx);
> +
> +	return ret;
> +}
> +
> +static void usage(const char *prgname)
> +{
> +	printf(
> +"Usage: %s [OPTIONS] <IMAGE>\n"
> +"\n"
> +"Options:\n"
> +"  -d          Enable debugging output\n"
> +"  -h          This help\n",
> +	prgname);
> +}
> +
> +static struct option cbootcmd[] = {
> +	{"debug", 0, NULL, 'd'},
> +	{"help", 0, NULL, 'h'},
> +	{0, 0, 0, 0},
> +};
> +
> +int main(int argc, char **argv)
> +{
> +	int opt, ret;
> +	const char *filename;
> +
> +	while ((opt = getopt_long(argc, argv, "hd", cbootcmd, NULL)) > 0) {
> +		switch (opt) {
> +		case 'h':
> +			usage(argv[0]);
> +			exit(0);
> +		case 'd':
> +			debug = 1;
> +			break;
> +		}
> +	}
> +
> +	if (argc == optind) {
> +		usage(argv[0]);
> +		exit(1);
> +	}
> +
> +	filename = argv[optind];
> +
> +	ret = upload_image(filename);
> +	if (ret)
> +		exit(1);
> +
> +	exit(0);
> +}
> diff --git a/scripts/rkimage.c b/scripts/rkimage.c
> index be89c1ad34..7262f320eb 100644
> --- a/scripts/rkimage.c
> +++ b/scripts/rkimage.c
> @@ -15,6 +15,7 @@
>  
>  #include "../common.h"
>  #include "../common.c"
> +#include "rockchip.h"
>  
>  #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof(arr[0]))
>  #define ALIGN(x, a)        (((x) + (a) - 1) & ~((a) - 1))
> @@ -37,37 +38,6 @@ static void sha512(const void *buf, int len, void *out)
>  	SHA512_Final(out, &sha512);
>  }
>  
> -#define NEWIDB_MAGIC 0x534e4b52 /* 'RKNS' */
> -
> -struct newidb_entry {
> -	uint32_t sector;
> -	uint32_t unknown_ffffffff;
> -	uint32_t unknown1;
> -	uint32_t image_number;
> -	unsigned char unknown2[8];
> -	unsigned char hash[64];
> -};
> -
> -struct newidb {
> -	uint32_t magic;
> -	unsigned char unknown1[4];
> -	uint32_t n_files;
> -	uint32_t hashtype;
> -	unsigned char unknown2[8];
> -	unsigned char unknown3[8];
> -	unsigned char unknown4[88];
> -	struct newidb_entry entries[4];
> -	unsigned char unknown5[40];
> -	unsigned char unknown6[512];
> -	unsigned char unknown7[16];
> -	unsigned char unknown8[32];
> -	unsigned char unknown9[464];
> -	unsigned char hash[512];
> -};
> -
> -#define SECTOR_SIZE 512
> -#define PAGE_SIZE 2048
> -
>  typedef enum {
>  	HASH_TYPE_SHA256 = 1,
>  	HASH_TYPE_SHA512 = 2,
> diff --git a/scripts/rockchip.h b/scripts/rockchip.h
> new file mode 100644
> index 0000000000..8cc14f8f2f
> --- /dev/null
> +++ b/scripts/rockchip.h
> @@ -0,0 +1,35 @@
> +#ifndef __ROCKCHIP_H
> +#define __ROCKCHIP_H
> +
> +#define NEWIDB_MAGIC 0x534e4b52 /* 'RKNS' */
> +
> +struct newidb_entry {
> +	uint32_t sector;
> +	uint32_t unknown_ffffffff;
> +	uint32_t unknown1;
> +	uint32_t image_number;
> +	unsigned char unknown2[8];
> +	unsigned char hash[64];
> +};
> +
> +struct newidb {
> +	uint32_t magic;
> +	unsigned char unknown1[4];
> +	uint32_t n_files;
> +	uint32_t hashtype;
> +	unsigned char unknown2[8];
> +	unsigned char unknown3[8];
> +	unsigned char unknown4[88];
> +	struct newidb_entry entries[4];
> +	unsigned char unknown5[40];
> +	unsigned char unknown6[512];
> +	unsigned char unknown7[16];
> +	unsigned char unknown8[32];
> +	unsigned char unknown9[464];
> +	unsigned char hash[512];
> +};
> +
> +#define SECTOR_SIZE 512
> +#define PAGE_SIZE 2048
> +
> +#endif /* __ROCKCHIP_H */
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

