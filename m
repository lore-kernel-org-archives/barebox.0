Delivery-date: Fri, 10 Mar 2023 15:48:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pae31-00GBhI-ML
	for lore@lore.pengutronix.de; Fri, 10 Mar 2023 15:48:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pae2z-0006Ew-Rw
	for lore@pengutronix.de; Fri, 10 Mar 2023 15:48:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7ek3mQF8Bjc+KBlaQywmK/eGxZdPP3d9mB7jPVQ6CMc=; b=2LB3xL1mBGuUx5U1966C9e9sD5
	/a/PWJHUpCNEXUGU6VL1g4Lt1bN0CNEc/jgtlkoSVDjAK5l3cp5fnOq87Om5s1NXwHewt24fTz0IG
	J1t4l762ajGMSZPyTJVLMfT0gk8vkGopiXbtEw3MpL1zyYzFfb7UAgjlJi3/i/nWMSdfbMpgPlVuy
	KvZCcEg8J4eXlMPA2my4JBmHT7wppef4CygdNZY/u0N1LTJAEF7uMRQPT5paK342U+2p1QKOf6tpR
	H0tncvna+h+itosMwwyPcETAetAhdoCJqZtxuATHmjrb7ni7vLM2CJ9z2LRWDCvwQSDchgrUgh7te
	NKcb1ZSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pae11-00EmNm-PL; Fri, 10 Mar 2023 14:46:39 +0000
Received: from mail-he1eur01on061d.outbound.protection.outlook.com ([2a01:111:f400:fe1e::61d] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pae0x-00EmMT-4J
	for barebox@lists.infradead.org; Fri, 10 Mar 2023 14:46:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+HmqYiQ9TtlnWXzUGiyAQI9aJihAMssRmC50VBrrKjFniUAOeIN/HzByOF0vOeLyq1lb+GcadpjQGTBvQc+9bU3xM5WyjayFjV/G+6H0d5svkoTDeHrMqjsXir7oGh6DDSE2Mx8fV4MOEDHHcVkIFq+wXbqVx16DITifcaQqQjlysC+rix9KB8EDb9l0mS3iHZ+sIlFkjc2rZmtszl1tz+YONvmd76aTDTHDu2sJkHsHydWEqh5+5VjwoOUEgZHYYIabSIK8jt8xKVDC7UBYSMXmJrcVLXaI0manQvmHjnAJFO9kahISvhoD8Zlp1Yewp9VaGDU21C01DsXyrH4/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ek3mQF8Bjc+KBlaQywmK/eGxZdPP3d9mB7jPVQ6CMc=;
 b=byz4yIDOOhBvrpcgEYAgLCI3sUYchcRnF+y9OAMUfBOXEnZrwMsZD9i6o9xpwkHbtijBIj2UtJlT0TKVPYHyjj7v+7DbNkL0LUArmYnBVCwhswZJFj+BjyREx8ByYQBhH7BaVIDj44n4JjCO3TQp/aXRSkRehlGdPpVkXDYfLMPosHm+1YaBb7pXRcGtx1x0V5Kg0+Pls10xs1rrK0i971oAhW41KoOpOOiB3FM4lL87ZBM8vXJr+4mbB7en+bI082L4wOWflfy56etwyhw1khfwVDVJFV+fecMKQgwqkaQuv6Cd43m6eT/NW7x51K6zlbhQ6W7Aglzozyrzyx38VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ek3mQF8Bjc+KBlaQywmK/eGxZdPP3d9mB7jPVQ6CMc=;
 b=GOmJisQOPQ24yLt8DI7do4Safow8WOYqUuG1Et54RNiEeiStYdjdPEzXEC3bkBFK6cqAKX0+qssPJ05fbjLFAnYb11YUazWlzv6iLCJJ8FfcS+P55n1wSVZUl/NOZR6BgbXmyBVlxS2lDE0TCYrJ2yMijgXFQWX+WgNeZG1tPuQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB6374.eurprd08.prod.outlook.com (2603:10a6:20b:338::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 14:46:27 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1%4]) with mapi id 15.20.6178.017; Fri, 10 Mar 2023
 14:46:27 +0000
Message-ID: <8ab39746-bd15-6b72-f544-df2c12f971bc@wolfvision.net>
Date: Fri, 10 Mar 2023 15:46:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
 <20230210165353.3601175-2-a.fatoum@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230210165353.3601175-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P18901CA0012.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:801::22) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS8PR08MB6374:EE_
X-MS-Office365-Filtering-Correlation-Id: edbcb837-96d9-487d-5b17-08db21763a4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	DAEr5VYLppfPdI7+bXygKKn5Nn+GkA4hMZqyq3AZK9Sa6p3j/Dlu7ZJGMrzu6t8cIu7OWRnUaVklu7XIPXbWjQM89YVzUqaW3kdDljzklu4QyA1dde016AQlMRG97hek5QLYCVYzu5gsHJRvYdXFL1MQCQxDjk2/BZNrBWzEVJDwD9F2NWeswrph2poYIQTCR1A0kt8eiIcrW4cUQGS/rZ0i7P094bKuozJdvK9Lg+npUveFu2+COLvNGW2QtQkIDB5LlMXraUH5zXIWUivtR3cmtC5y0NSZC6X0r3NaqMa0SI++sB8uHXTmLr4dzs6au0CHBt25rtDqKC8XQ5jHhvNl1JBTiv+omhpyh+DZQ9Lwms2O6LZTqm5/D15BmE1eokL6xuHAyPIjJ0A5lSiAw6c/PhB/KoMHDZ3Um3YnoxTXoSRTkY8R0Ri5ejUMkPfSsjZVARaHyXxUCqMBHd9bDaSwZAswvpTBVplTpKE+16e0m4nD3y4ckz6rX0J7aG0cac4OFlaCYVEo7Yz5PymVLua6niYyvbS1MKYLP2qGeESko8itUPOlllyV4bKjySNEFfwQ9t50XHdu/aeQTVEovziMzlOKYXU4Hf+Xf0WxVW9fjpCz9HTRrjvGUN8X4LlVGKxb+Q6pNJDmmBFUA/ocRU5BEVVmL3GAhYqmoJQhQGk0dIdIqAzLE6KDmL36VS43qosnoIdM6EPOSEq+dn3DcO5FuEhHTyfSD44/IOsU9BA=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(136003)(39850400004)(366004)(396003)(376002)(451199018)(31686004)(66946007)(44832011)(2906002)(26005)(5660300002)(8676002)(36756003)(8936002)(66556008)(31696002)(66476007)(316002)(86362001)(36916002)(478600001)(6486002)(38100700002)(53546011)(6506007)(41300700001)(6512007)(186003)(2616005)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?MGQ3WEFQMHcvYkYyMXQrTzdIVnY3RGI2SGxLTm03aUFMYnVrZlV4d3hBTXRq?=
 =?utf-8?B?bVRYSGFsV25Rem9neVhZWnlka3RqUmdIWlNKSWtBZWhkSXlsTmF4RVV1WXJ6?=
 =?utf-8?B?czVYWGZOSzh2TG1DYXNLRzBVQTc4R2RCWTlyM1B5M3Fzd2doT1NsMWU2S1Y5?=
 =?utf-8?B?cXIzcUtyWVZwR0ZXSExOYnI2cGJhWk1MQy9QOFQzd0JzNUliWUdQbUp6OGE3?=
 =?utf-8?B?bElpYWluOVVKdWRuY0FuaHdKMHJkRS85YUMyS0FFSjRlcG9RSWl1cXFwU3NK?=
 =?utf-8?B?ZUxRYVpnNmR5RytwbXE3MlRXZzZOUDFtNWc2aDlKanJXSGorYUZ1VGc1QWlh?=
 =?utf-8?B?SmJtUGx4WURpVWtuUkRIakUybXQ4YVpra1NDdGVJSmI2TnVINlpzWU9ZdnRM?=
 =?utf-8?B?cUtmM3JnZk5hdTFpM2doRFFlK2YyZWY2NE1Ca3dHNnVINUJaUk8vM2hTQ2Y3?=
 =?utf-8?B?bjYvOTFtR0p0cVc4QkRJWW1HUlpTVjNXcWI0NlAwSGVUbUZzVU9MblFHK3Rr?=
 =?utf-8?B?WlhxZnhxZ0NpMnBXMGJ3bVlqVEpELy9HMzhSLzdJMjRtL213a3k3ekhYTUI1?=
 =?utf-8?B?dmZ5a2dpWjBiVkxPN1ZzUFBYcXVyOHBCam5pbUdhcTI2MFlWOGp3eDNVdndt?=
 =?utf-8?B?QTBjV3RNcmxYYU1OYjRuMmdxdGovNlpWNzM1a0lUOXBMMGVTT1QrY1gyR0Jn?=
 =?utf-8?B?ZVVqSjQvQmRmOVltVkZtT29UZ1V6NklPVFZleitYOVIvWmk4cHdSdG44OW40?=
 =?utf-8?B?dGlCNmp1S2N1ZzJncGtXUlBETjVOR0piTEhsRHVCV1ArbEE2SER4V0pTZFBS?=
 =?utf-8?B?RWtxRTF6ZHBiSWkydVRrdlduaGxPVHdoS0dvY0xIU2dOK0RHeUJyNyt5WU9V?=
 =?utf-8?B?TWpZQW01ZDdnUEorMk45RStWaW1wWWJ2WUdONmcvUHZDT0dwQTN0OUNHOXNC?=
 =?utf-8?B?OGhHYlhrNjljeVhYNm9nT0lhd0ZOTVdWaGNBdUpEMS9pVjFuUUd0SjdaT3Y5?=
 =?utf-8?B?U0pEOGdSbW8wTU80STIvY3U3M01TczkwN0N2NGtMTlcyc2laMnFPMmtzUTBE?=
 =?utf-8?B?RUJNcGpudzJ2eDJoRHVwT1ZFNCt0TmcyYzBzTHdrdURvd01JUTI0REdDam56?=
 =?utf-8?B?di9qZld2R2JXNmZXSFkrOFh5THhmNzNRYkNqc2J0QWVWcDBaU3dRWS9Ya3lh?=
 =?utf-8?B?WW9XY3d5WC9PQkRoaVlCRE5wcWpJMmpiTFhIdXRMQWRQN1hhUUxUN0h6dHF2?=
 =?utf-8?B?YnpFenUxQ1QyRjl4WFo1d3lzT3FEUUtUTFBwTGUxRmRVMjFEVUYxOFJMWnFT?=
 =?utf-8?B?bUtHa3o3V3pvWDBad05zNlNCa3FZWVN6cmVGRmczOEE3UHpvbDBpcDZOZDBp?=
 =?utf-8?B?ZFhscGxrTDQyY0g5RHhOMk5uZklIYVBnMGpBMEJ6QTYveFRUUCtJME5VZjFs?=
 =?utf-8?B?QUZPa0dLRDd4VnZjdHEzOThtNjUwU1p5VncyQ1hsMFFuZ2xyMFBRNFV0ekky?=
 =?utf-8?B?WVJnM1hnOWhzOTFHd0x0TGZpYjhyUytaSXF2b2pkeDdtWkJmRHdmNW44ZmJJ?=
 =?utf-8?B?Z2FLc05CeWZrQzQ3TFBvYWhKTlIrZkJHUEl1dXR4REsyVWNBMFZtQUJ2Vmc1?=
 =?utf-8?B?cHBkcWt6Y0tvY3lrT2pnMm5YbCtCUkg5ZnREeUVqaWllNDhBcnJnR2xQNmlU?=
 =?utf-8?B?SlYzNURRRG9LWEQvS1RDZU40TEJqQ0pkM0VTRGdIb0QwMGJ5THN0a29PUlo0?=
 =?utf-8?B?Z2Q5RU1IZ0R5ME9laWEyVG5HVFlVY3lsT090YjhMZDMvaFdPTmk2cmRnTlNH?=
 =?utf-8?B?ckNnK21jTGI4ZXRmR3Fpd3FqVmFrdVNydzI5OVhKbksrMFZBOC9obkE3aTg4?=
 =?utf-8?B?WnREbnZsdWJaWHFsVEJEUTFBYjlqamRmbDBlSnNRZmp5QWRWR0Z2MHdFbXF6?=
 =?utf-8?B?K0lKMmZPZEpVYWxCcm5GbnJuVC9LWnY5c0VyZk1aUVBrY1BIcG01MkVmbnJz?=
 =?utf-8?B?eXA4czRwZGR3RWZWbjlVT3U2Y1hYUUdjOEwvV1kya1ZxWDVZMC9vR2dFaUkr?=
 =?utf-8?B?QTh4RzhMVk1ReUgveDVvd0dvR1JJNEpsOER4UXlrU1NNOHlsUUViZ2gvS0JV?=
 =?utf-8?B?MGxZbVJUWno0bEZoRGRBRU11dm5UVnhVd0lsaXQ2MzhvcVAyK1BVL0ZIcE13?=
 =?utf-8?Q?W/+kJRpwQzXKT6g71YUaFPQ=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: edbcb837-96d9-487d-5b17-08db21763a4b
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 14:46:27.1869
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UHtIg8CIUKyAY+QpQpEEUVgakviz4xRrgxzj7NqqGZ+UGNBwH3fc0Je2Wi2sk1T41b/0qo7qmG6r3TgdIq8Xt9X3VpwunfuR9VoIx7k1XS8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6374
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_064635_460801_933C9F46 
X-CRM114-Status: GOOD (  21.78  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] of: support of_ensure_probed for top-level machine
 device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 2/10/23 17:53, Ahmad Fatoum wrote:
> Creation of a machine device for the top-level node has special casing
> in of_probe(). Export of_platform_device_create_root(), so it's possible
> to ensure probe of the machine device. This is required when doing
> of_devices_ensure_probed_by_dev_id with the machine compatible.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

This patch breaks my board code that calls
of_device_ensure_probed_by_alias() in the probe() of the board driver.
The function always returns -ENODEV.

Do I have to adjust my (downstream) board code somehow?

Thanks and best regards,
Michael

> ---
> v1 -> v2:
>   - new patch to facilitate patch 3/4
> ---
>  drivers/of/base.c     | 10 +++++++---
>  drivers/of/platform.c |  2 +-
>  include/of.h          |  1 +
>  3 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 1221cd316cdf..7ba0655401cc 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2512,13 +2512,13 @@ static int of_probe_memory(void)
>  }
>  mem_initcall(of_probe_memory);
>  
> -static void of_platform_device_create_root(struct device_node *np)
> +struct device *of_platform_device_create_root(struct device_node *np)
>  {
>  	static struct device *dev;
>  	int ret;
>  
>  	if (dev)
> -		return;
> +		return dev;
>  
>  	dev = xzalloc(sizeof(*dev));
>  	dev->id = DEVICE_ID_SINGLE;
> @@ -2526,8 +2526,12 @@ static void of_platform_device_create_root(struct device_node *np)
>  	dev_set_name(dev, "machine");
>  
>  	ret = platform_device_register(dev);
> -	if (ret)
> +	if (ret) {
>  		free_device(dev);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return dev;
>  }
>  
>  static const struct of_device_id reserved_mem_matches[] = {
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index 69f9ddec50ca..11cde8924f94 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -421,7 +421,7 @@ static struct device *of_device_create_on_demand(struct device_node *np)
>  
>  	parent = of_get_parent(np);
>  	if (!parent)
> -		return NULL;
> +		return of_platform_device_create_root(np);
>  
>  	if (!np->dev && parent->dev) {
>  		ret = device_detect(parent->dev);
> diff --git a/include/of.h b/include/of.h
> index 1a38774615a4..63c90255cd64 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -298,6 +298,7 @@ extern void of_platform_device_dummy_drv(struct device *dev);
>  extern int of_platform_populate(struct device_node *root,
>  				const struct of_device_id *matches,
>  				struct device *parent);
> +extern struct device *of_platform_device_create_root(struct device_node *np);
>  extern struct device *of_find_device_by_node(struct device_node *np);
>  extern struct device *of_device_enable_and_register(struct device_node *np);
>  extern struct device *of_device_enable_and_register_by_name(const char *name);


