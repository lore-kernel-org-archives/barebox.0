Delivery-date: Mon, 11 Oct 2021 11:52:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZryz-0002lN-I1
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 11:52:33 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZryx-0004jk-9w
	for lore@pengutronix.de; Mon, 11 Oct 2021 11:52:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+RVLpzhh6ROBv1OE8uRL/aWZ+wUsLgBiOItM8QPGkM0=; b=EHC8S+um5+T2jGPxAiPvfk8hrI
	SmMd6d8ZfUK3FmnKH7BYV3uLHFMdxGs0NoMCC6JciOHH5NM/wRVWZjZjn9FyLBguuuoZoZCpkLfVF
	nDNU8XoVSLWHfitHsLV0u5rlXAMlfpSyEc1uqHRIifvF3L5DlYEm7QATmeOvQQdPEcCr70dO6lvE7
	xRd6HzpBB1sGwuSnfroRzG7Cdw62sUpehI1lc944JwGirW955HvzBl7ASIbOmSPeAxRZaooqfzrTy
	ZOIOWo0pkTrblCekKQugODh9YQIQNs8dI22+xhRRq1ETv2dawt2RJ3Wn9h+T73+UH+QKt1CB4BvV9
	m0UAmI6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZrx5-008eFA-1r; Mon, 11 Oct 2021 09:50:38 +0000
Received: from mail-eopbgr40061.outbound.protection.outlook.com ([40.107.4.61]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZrsy-008cEl-NN
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 09:46:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHw42Yd/KpImUgJVR9tKCEcpdCEBFF2K+UOcs6FCPr+RmY/9iw/cljnogQ36HXIXSMYj/+t768WcuypUKzG1pLsvz3FXOvHdRDmL+3zJqWB4JBRQi7AqkgOzHMlNCzZVi3t7QLvdXisDu9oOAXv5zm6olOGD2wt/3lmqc2asueg9w3HUk/mVOCoAV7gCpll5mUDaiKJ5YaeHSX03hlZZSW8uM2iq2DVcSebv2fDpFkdxsGYK/mqw6coCBVPeAuPCcejwNc40zJ3hCRdSj9E4Ev4Vp7pjcVZVbWS2xOj7ZF+a6YxgxTptGiKvANm4Hh52XYPu5yZxRn0lZQMVHAW0JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wU+wR0fnuEYTQHPeDZhC+RFz7HV4U6XS/p/fWRxcdsY=;
 b=dBXKn8lzdTcha+Yi94WnYhtO8DxMMBZfPmUOQpA8Qw3KznmSQNXqXqygCYSlQ8e433+CaOswFkbWbyzSwbtk/aytRNQKmhVifFMJmoESGAdtyve5UEpN/YM4mRSoJajbHlXKXaYk2+2quy1frzJKmhXSHyQdBE0hMjtFUI+tkzSEwRSaIIZuO8igNKmyTMSoSL2sYOV4TlpUKGft2P7zWBLgp+JqrGPuXD0K3Pdkjkx8e4xz/3d5yomZiFslYy0TUAw7/JmMgOtyu/mQ6yYez24B3EFirB0vPNEGbbvW3RfDNrsqAi6OqGDlv9JX+Ck9KsNDSUFABDBCTtj+6bhVjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wU+wR0fnuEYTQHPeDZhC+RFz7HV4U6XS/p/fWRxcdsY=;
 b=N8GNnA9sJYg181MxslMnYfPFkNypVNtyDb61D2At+6/S0FLcM1xIJUaFb05FjGi5UQzgoNarhRS0r3bBqY0Kv5vEkThC6v8mw2ikpJzIYitVjwSX2mpGt3D1aL7iuVv/iUGQuB+jWGlPxMNxdlWi3i7p9UFqZ52OqVcEf01sSdw=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB6PR0802MB2390.eurprd08.prod.outlook.com (2603:10a6:4:9f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Mon, 11 Oct
 2021 09:46:13 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4587.026; Mon, 11 Oct 2021
 09:46:13 +0000
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
 <20211006142254.1751864-6-s.hauer@pengutronix.de>
 <19559eab-4ba0-f96a-028e-a748da9b9c29@wolfvision.net>
 <20211011071812.GW28453@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <9ffdc27e-1e8a-9e92-a982-f1c140f2bee1@wolfvision.net>
Date: Mon, 11 Oct 2021 11:46:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211011071812.GW28453@pengutronix.de>
Content-Language: en-US
X-ClientProxiedBy: VI1PR07CA0233.eurprd07.prod.outlook.com
 (2603:10a6:802:58::36) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR07CA0233.eurprd07.prod.outlook.com (2603:10a6:802:58::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.4 via Frontend Transport; Mon, 11 Oct 2021 09:46:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e6cd0cea-4d02-4704-b90c-08d98c9bf69d
X-MS-TrafficTypeDiagnostic: DB6PR0802MB2390:
X-Microsoft-Antispam-PRVS: <DB6PR0802MB2390259BD75A5D2982EAD3D2F2B59@DB6PR0802MB2390.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QoMyHfJ5dzfqb/Ak0SxTKh+WoqUYbyIthmqRYG6Nl3BDtdJNFFtMZ/1MAcvA1iULNaFHCywKBgbVFw/s7YfPZAFb0jmk3yrOyVPaz+uOsBkx7cSS9oN7J4krdrHz+W75NfNiTmCsDWLNRuLNBcrooFRvESgswhJfXW68SEPsRpoijoJX+lEpPvjQyOIlSmDzyaN9S1l20hiUHtWx7L8VXiwiaMIkqhJ7pGOszAwzzGxPZXT+nObefs1d104i4xoeWoTMHVSubi6jZCGKXPvE/jpeUqDCFP9oP7zP7Nih+JNp7lKjvm9MLoqe7TPDQS2oh3ucOvQgAKsDnf5dCEIur1KaewQOEP5+LP860tfUNAPS6RPqQlszTTdomc7cvI86uog/E9h7ZDFQSovenvvb+NExubK0i4Tc2fQX6nOQn2LiJXy8++exhpxaRDZXhTnbMXXIVf6Rh89Q40KTtL66a+2GFnZux3g4DCtC0jZhUx2FCIPkw/paftvhH+KgUKQOgNPkRGJkXxPW7yxDwZ19jy0BRPtqwQcv/O0KbJ5M7yyJDmu1LoH0xGewXDCFK4D6wzKUtjQY/v9c4jfNnaMpFgQZ/0OnJiPAQDwQQWBUca1W88pjrSyy7db0QweSJjk2wfxbqj7Ui7sDNMd4upWA98PMhyFDLE4D1sLQu4Nj74M2pucdR9NL/7jn0BlcG3BWIUzY+xd4Yo0VC3NDXZS6CUtkeER6cW0pBOjc+OwQflOliobWc1pwy+LnyKrhwGI2FT+huV1UhMAzjAIKm27f+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39840400004)(396003)(346002)(376002)(136003)(44832011)(16576012)(4326008)(316002)(83380400001)(86362001)(31696002)(36756003)(31686004)(38100700002)(38350700002)(2616005)(956004)(53546011)(2906002)(36916002)(6916009)(508600001)(5660300002)(52116002)(8676002)(186003)(66556008)(66476007)(26005)(8936002)(6486002)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDFEQVZEbm1XUjVKdHNqU3pQWFVqc2Z0cGdCUGdIWlV0UVVHSm9UL3ZEdFJP?=
 =?utf-8?B?ZFBCaUtoSnpCYXlnd1ZPWU9DWW5SR0VFa09pbUp4N1dINy84K2VKbStZQ0RN?=
 =?utf-8?B?RDh4SlppeUo2VVc5VGlRVzAyVnFPa0xFOG9lV0ViVWNpcWdPRlkyenN5Nmtt?=
 =?utf-8?B?WUFKdThzay8wSzRON3NRdzdtZnY4TWxpYVNZeWJxN2JTSHJEZ1c1enUrcHlt?=
 =?utf-8?B?aGRONVFQWHBHb0RVdlhTaWVIWVVJYkFoVStmUG40N1ZLYlczOGtlcCs3ZW1r?=
 =?utf-8?B?d0hYb3BHcnpsSVlXYkMrbUlwYU01aTlZaHlrVXd2VllHaXJ6L0VyNFB5aVFP?=
 =?utf-8?B?cXl2ZDZXV2J2QUpVM2c5eXdFQXhQNEFaaGZmTFJBeW9hcUhzNnl4WStVUmxi?=
 =?utf-8?B?MVl6NDNqZXpBdmhPQWdNeForZml5YW5TdklmbGxzRkdQaThSbzR3b2hsNVVr?=
 =?utf-8?B?TmhWMG9ndG5FTGdlb3ZDbmZiaVNpQmMvRXdnWjZQZGFOSWJOOTJMd1IwMHBZ?=
 =?utf-8?B?NGYyK2NTUkw4YnRXc3RaVWlnajhyQVR5TWlYaEJMcndwNHhxVFFVNXJxUkRn?=
 =?utf-8?B?WEVGaExicElZd2g0UjNsbW1sejE1VnRRNjBRQTYxclZuQktJUGdjN1BvYncy?=
 =?utf-8?B?WGVTVWJVY3ZCNnV2V2dvZFhHWVdua2hsUkRINUVZOEtoUS9KbmZpOVhNdG1h?=
 =?utf-8?B?bDV4bkdYOXVlZE8vM3Y2YVlBUHhpRjhRUDJodUNMYkpwM2R4NWpkZGpVQXpI?=
 =?utf-8?B?MnFGU3NITEU2WDJ4VGZiRkFoTUFTdzU0b1RIcVdYQlBlMjFDalFjSFk0U2M0?=
 =?utf-8?B?cFpaRGdwSitDL2xZVmlabzRiTTNHYUlRWTg2czFkQ2ZFb1VsTStSRWlKU1lr?=
 =?utf-8?B?Z2djaHpnMno4UlVvV3pveklWV1VzVWpodTJLR1I2NFRFYzRlYm8xWE1OZU1G?=
 =?utf-8?B?ZlIxWnVsa2l3YlpaN2t3TFdTdVVwbFdzUXE1YkVBb3NUcHIyTXI0OTR3OURK?=
 =?utf-8?B?UzFzdElpVytXZm9xQVJZQ3gyL2FKc1lWKytTUXRCSmdaL0RucytMaGxDY3Rm?=
 =?utf-8?B?RG8xV28vRlVRbHVuSk5OL3gweHVuVmx3K1FJYjgvYzBqNndIR29CMUtIR1ha?=
 =?utf-8?B?cnRGVEhNUUhmZnc4TG90ZnM4dkhFN1lOZkVPTnd0ZVZUMVB2blhwam5JM2pr?=
 =?utf-8?B?TG4rQy9SdXV2TXVaSlVDa0IwWE5DRHExek9zaEpyY0d3MjA2c0hISXFlcnk4?=
 =?utf-8?B?My9MSUNGNmpRbjhCU0t0dDBwTFJFY3VFY3ZCY3VUR1lka1ZPNkFzVDZKTVRj?=
 =?utf-8?B?Ylkxa1F2bHdldzNlSTlWN1cvdDN1WWJkNXpQbTVZb2d6UDR2RzJXcEZiOGZx?=
 =?utf-8?B?TXI4QUpqd0xoOFh6Z2Z3bjFjZUlpQU9QN29OSFhIR0p6Uy8xb2pYVHdWUGVS?=
 =?utf-8?B?WjRZTnhhWVAxeWREcUNOdjlZc0o4cVNBdEExaHJTb2VzSG5mUDdkbXlxQlBP?=
 =?utf-8?B?Y28rd3BzYUhTUTV0QTJUTnZUc0RRN05XSFJ1WmJNUlg2Z2NPOHcyaDhBTTAr?=
 =?utf-8?B?ZC9tWEc1OFBUR0pHTlRPNmsvT1pRYldzTXZEL05HbWR6cFJIbCtiKzVSbWli?=
 =?utf-8?B?bENBbVJJK0dQWVZmTU5PaWdITnZHQmVXdlNFblduTjJjVlhkWVA4b2pnL1c1?=
 =?utf-8?B?czBrdng3amRFdk05d3I1NkpmTExMRWlOS2JtcWdpQlVKWE03R3ZlKzNRUWhR?=
 =?utf-8?Q?0PUP4/zJ7bbyqD73iu2Np0QQVNIAvUSzDaL9LgI?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e6cd0cea-4d02-4704-b90c-08d98c9bf69d
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2021 09:46:13.6116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lc13YQiXf3owMcf8LOOT21ool/WBh1wyN3rxAuvGjusYxhK18f2ohzQoNNIVO1tuRf4P9yXv5YFkJ5mL88SsYS6FRM94hg1jMx4kkZDhS2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2390
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_024620_899921_7071151F 
X-CRM114-Status: GOOD (  23.53  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,PTX_BROKEN_RDNS,
	RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] scripts: Add rk-usb-loader tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 10/11/21 9:18 AM, Sascha Hauer wrote:
> On Fri, Oct 08, 2021 at 04:25:58PM +0200, Michael Riesch wrote:
>> Hello Sascha,
>>
>> On 10/6/21 4:22 PM, Sascha Hauer wrote:
>>> This adds a tool suitable for bootstrapping barebox on Rockchip RK3568
>>> SoCs. It has been tested on this SoC only. It might or might not work
>>> with minor adjustments on other SoCs.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  scripts/Kconfig         |   8 +
>>>  scripts/Makefile        |   3 +
>>>  scripts/rk-usb-loader.c | 324 ++++++++++++++++++++++++++++++++++++++++
>>>  scripts/rkimage.c       |  32 +---
>>>  scripts/rockchip.h      |  35 +++++
>>>  5 files changed, 371 insertions(+), 31 deletions(-)
>>>  create mode 100644 scripts/rk-usb-loader.c
>>>  create mode 100644 scripts/rockchip.h
>>>
>>> diff --git a/scripts/Kconfig b/scripts/Kconfig
>>> index 5cba520f4b..5118269c2d 100644
>>> --- a/scripts/Kconfig
>>> +++ b/scripts/Kconfig
>>> @@ -102,4 +102,12 @@ config OMAP4_HOSTTOOL_USBBOOT
>>>  
>>>  	  You need libusb-1.0 to compile this tool.
>>>  
>>> +config RK_USB_LOADER
>>> +	bool "Rockchip USB loader"
>>> +	depends on ARCH_ROCKCHIP || COMPILE_HOST_TOOLS
>>> +	help
>>> +	  Say Y here to build the rockchip usb loader tool.
>>> +
>>> +	  You need libusb-1.0 to compile this tool.
>>> +
>>>  endmenu
>>> diff --git a/scripts/Makefile b/scripts/Makefile
>>> index 53568573a3..db2168bfab 100644
>>> --- a/scripts/Makefile
>>> +++ b/scripts/Makefile
>>> @@ -36,6 +36,9 @@ hostprogs-always-$(CONFIG_OMAP3_USB_LOADER)		+= omap3-usb-loader
>>>  HOSTCFLAGS_omap4_usbboot.o = `pkg-config --cflags libusb-1.0`
>>>  HOSTLDLIBS_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
>>>  hostprogs-always-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT)	+= omap4_usbboot
>>> +HOSTCFLAGS_rk-usb-loader.o = `pkg-config --cflags libusb-1.0`
>>> +HOSTLDLIBS_rk-usb-loader  = `pkg-config --libs libusb-1.0`
>>> +hostprogs-always-$(CONFIG_RK_USB_LOADER)		+= rk-usb-loader
>>>  
>>>  userprogs-always-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
>>>  userprogs-always-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
>>> diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
>>> new file mode 100644
>>> index 0000000000..87bc7b94a9
>>> --- /dev/null
>>> +++ b/scripts/rk-usb-loader.c
>>> @@ -0,0 +1,324 @@
>>> +// SPDX-License-Identifier: GPL-2.0-or-later
>>> +
>>> +/*
>>> + * rk-usb-loader: A tool to USB Bootstrap RK3568 SoCs
>>> + *
>>> + * This tool bootstraps Rockchip RK3568 SoCs via USB. It currently
>>> + * works for this SoC only. It takes the barebox images the barebox
>>> + * build process generates as input. The upload protocol has been
>>> + * taken from the rkdevelop tool, but it's not a full replacement
>>> + * of that tool.
>>> + */
>>
>> very nice! I was able to load barebox images into the RAM of the RK3568
>> EVB1 as well as of the Pine64 Quartz64A boards. So it works for the
>> RK3566 as well, maybe this should be reflected in the comments and the
>> commit message.
>>
>> Also, if it is not too much to ask, a short hint to this tool in the
>> documentation would be nice.
> 
> I added a text to the documentation and also a note about the RK3566 to
> the top of the tool's sourcecode.
> 
>>> +	dev = rk_usb_open(ctx, 0x2207, 0x350a);
> 
> I hardcoded the vid/pid of the RK3568 here. Is it the same for the
> RK3566 or did you have to change it?

The RK3566 has the same VID/PID:

ID 2207:350a Fuzhou Rockchip Electronics Company

and I guess the IDs can remain hardcoded for now.

Best regards,
Michael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

