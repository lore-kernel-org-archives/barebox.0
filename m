Delivery-date: Thu, 09 Jun 2022 22:09:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzOT5-00999M-TC
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 22:09:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzOT4-0001D6-9h
	for lore@pengutronix.de; Thu, 09 Jun 2022 22:09:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:To:Subject:Date:Message-ID:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EXeg0q/WOLRJEYJquigXa4uXnqpikc0rvK5FJ3wd6vo=; b=Ah1hDqFHl+HjHFfPnDGuUOfBlQ
	6o/NuBcx2VCXpIRCflLOV3FmYvVdoTzUz8AwFy5NQu5KFuxg+r+ha3nPAtg3h4fu846t0mvAgJCTw
	1KWiZTWTOEFSzW4Zu8bHNT6MQn041aJHEoyj9H23o6eV9QScrDNxV0R6vf2Y3TcpLYigwp65P/vc1
	snWD6OUSGlG5bFJhT3jv+kwtMoe8vnXru4B884TsikSOjWgaPbwN120gWa2fh+kRYTc2O/GDKfNLd
	5h8eVkZpTQybkb3Z+ta1yYosHDMqq8bksFzua3BjU43NhGeW4RLvaLjqo/EFriIVUKbDNynu5e4IK
	8W7A9/aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzORK-003uCx-H7; Thu, 09 Jun 2022 20:07:34 +0000
Received: from mail-he1eur04on061f.outbound.protection.outlook.com ([2a01:111:f400:fe0d::61f] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzORG-003uB8-2d
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 20:07:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F04iqK8WVUXnq//KoOl+5vvOuicKf0wV1c0WwPXpcSPWeaKUSxi32KP3p6bGBE/cY1JynJIU8KfaeXbQQo15U1/JlmaQjqnU/J6T8RAYPM8TSCsK+H3dgiFHvtzYCxCN48Ph8Ix7lMtPW/fHvqC8y6Nv6YE7DqFtoztW9Cd1uvvwMB6E7Ck2G4kGgHAowPPVOLB2h/7j0xDaweJACWGyHrPQwfgFlrY6aY4K3viiDUSk53zEZDtjIC3CMvsHnKGqmJe6IX9Wl7N5rpItf8KRCklIa+8GCNBOSrZNZ/5cPbMg0r6UZBhyujM4c0wEm+olsQXDoZsAAB8a/u+ZMq/u5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TVzoynSqLS5BCqWREXOI2unZVKX+b8zbp+a+WC29ieM=;
 b=hT3pBJS/1dwNjK/NG7QcQn4dTGLzlj+w2T0dLZ7SUWYR2rbFLVxGHmniijQHdZfiAOPxjBwYDlnYcvWkLx38oPjF0jZN25as3LfdasaS089mCNYADorviO215uovoHe1hKFUiMdlHqowhgwIIFMkGkYrECug71XkLNDOYmmNavb1q+GTEqZgwnZT/90dIHUL5lJcZhF9C4ncmLTLG7SN9gDWsOFuFeQt0X9Z0nt7JuW9WJeLV30pm2rF+mPqEEYBpSOaF0Acp2kIymOiunZ5kSBFkaUriGGgddduL9UyjABMN2KLiuR/FMGFrWbfTUqQJlNeVEY7c2kEIhXNm0p8qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TVzoynSqLS5BCqWREXOI2unZVKX+b8zbp+a+WC29ieM=;
 b=04eZoapv7T+dDwyHMsjnF9Rswvz4dXQsU2uzhtECSRdH2tyHUviApOdsN820B94RK7o19yEHEMckIs4aXgWVihaO+W/mUoz1y+gI2AxOwbvbtaeGcNRu76NJIzYmiGsE2kcSJ38o13W8zmwl9rjB4nLomhJDRhG1LeuB2V89Hg0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DB6PR0802MB2134.eurprd08.prod.outlook.com (2603:10a6:4:83::21)
 by PR2PR08MB4828.eurprd08.prod.outlook.com (2603:10a6:101:1d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Thu, 9 Jun
 2022 20:07:22 +0000
Received: from DB6PR0802MB2134.eurprd08.prod.outlook.com
 ([fe80::b481:fbbb:aabf:5c51]) by DB6PR0802MB2134.eurprd08.prod.outlook.com
 ([fe80::b481:fbbb:aabf:5c51%12]) with mapi id 15.20.5332.013; Thu, 9 Jun 2022
 20:07:22 +0000
Message-ID: <aee6c95a-a4c1-19cc-7cf0-c156cbdc31ce@wolfvision.net>
Date: Thu, 9 Jun 2022 22:07:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: barebox@lists.infradead.org
References: <20220608051244.2318-1-eagle.alexander923@gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20220608051244.2318-1-eagle.alexander923@gmail.com>
X-ClientProxiedBy: ZR0P278CA0118.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::15) To DB6PR0802MB2134.eurprd08.prod.outlook.com
 (2603:10a6:4:83::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7eab8ed0-a157-44c6-efbe-08da4a53aa0e
X-MS-TrafficTypeDiagnostic: PR2PR08MB4828:EE_
X-Microsoft-Antispam-PRVS: 	<PR2PR08MB482803065C0B643890C1B0ABF2A79@PR2PR08MB4828.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	NeN5BkA49qse/prpaFG/u9v8tuFEI4WsqYI0XL7RG6NqehqZOQ5hQN87jFuHyYG0nroPMb1Iz/z5CBuxsiEIIvuqKs4VCb1e6dNx0U70xM2rSjHnTnZkQJS5gBuBHMTHxJcfckjNLuxQqXwcV/6Tl+NIyxo6SObd2pPm6wFOnwf3dTpMS7bO6pAEerdmRhhcqOg/dvribTBUHTdU2hDuhgTuFNveGrptE4A6VKFVv1zW0Ovq49zC21SDCtABoNToUwtTYuoSjoVyYTdBL+fFSkXbcEhx2ceezXBzmtWoC5DjHIpE1+kKwIe5dourWkxiNZnsDXIF/s5xUO45+UouPvoY7L2SSPr25vqe3EJP/ct1fdef2i7KFFBl/8F+X5OtaXi3Gj0pU5I2zLHiwgFdLe3SUVPQMkYLm5XZsBoweiPEf58TQjasRugWJ/2Z9vXBHCQqnudYzGuUxFcoK8xL6dxDO3jAudxW0b+WmhvGIE63Z1opi+A4CS7SCvcjoyw+PKEVHGBbF8iQGjX1YNd4Rzn6VIJiqlCiup+QaQtTxoSoMq2fRQAZNP+9gOrFKMQ33VGk1w7k1kGRXuf4eIDIxUg/Wee3IKUYNnhXdkF1KMXJJrq0kHvMScQEH0OvugxofigVl/8Mfx3yKtFdv0g8li5KWeSGkh2DxL430+lcHStGplwCMX43zlgVxr6jtZ4qibQlRKq4N+JV/bVvhDga0BmJFuK1eDcGpgmbcQfpdckWgX8aPF+trkT0mFbhDCbt
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0802MB2134.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(39850400004)(366004)(396003)(136003)(346002)(31696002)(52116002)(53546011)(6506007)(6666004)(86362001)(8936002)(6486002)(41300700001)(6512007)(44832011)(83380400001)(5660300002)(2906002)(38100700002)(508600001)(31686004)(2616005)(8676002)(6916009)(186003)(66946007)(66556008)(66476007)(36756003)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?SGxSdmQ2U1BuY0owWDRZdnM3anRzL3d0RzUxSFQ1NHlSVFlhbGh1SFlvaGht?=
 =?utf-8?B?bURTWnBUZGE2VlNhTWZTWkgvaTZWWWFBOVk3SUtMZ0F1OTVZaHJNTGVQWFB5?=
 =?utf-8?B?WUlwc1RDOWVmWGZROTRWYmFHRWZ6b01xcmFzRDdzT0wvVjJKVUQ4NTJwWnM1?=
 =?utf-8?B?TlA3YUhNbWY0VnIwK1RhWm1oMVlIZytHNHN6cWltVWRQY1hraWY5MnEzaHJq?=
 =?utf-8?B?VWI0ZkVUSHp5WDAxd09Fak1BbUp0T0ZGU0VveTQ0QWJvU0R2bG1ONUgwbmxU?=
 =?utf-8?B?VkdQRm9USEphSXVhYXZwbE1ibFNtNFFsQnA0eUJQUVREV0RzalFSQnZ5bmtU?=
 =?utf-8?B?Y3pkdlNJQVhKWXp5YnlVWU54U3NhQ2R6YXA1cldVZ3cxYm5kRXFsdGdXMDYr?=
 =?utf-8?B?MUNCbzZZLzJheUZnRTlDRVp0OEdjRzF6YzY5S2szZWxIcTRLeU40dWNLRjZ4?=
 =?utf-8?B?Z3dKQk5QMCtzNHRRaW9NNHpxVDBScGREeVNoQ0k2bVBTMWhIMmtyZThEZjlL?=
 =?utf-8?B?TlozQVZOeXBWSzhUUHRuZ3FWUldiaEZoL1l6em0wVmhWYzZScWxpQ0FjWmVl?=
 =?utf-8?B?K3lOek53akhMbk1IVWRnbFV3cWFTWFprd1RuRTIvWFd6Y1J0TjFmNUZIOUE2?=
 =?utf-8?B?cHVBWEw1R1VKQzZBZGJUYWJ5THpaNEs1TGU2cS9aOGZnUEM2V0pBd1V1a3d6?=
 =?utf-8?B?TUlJS0JwZmtQcCs1MDdTWjRSOTRqVHVYRzlFWVFHNTg3a1FYWll2UkhPRGo0?=
 =?utf-8?B?Y1lBRjNXZFJPK0VQRE8yTXJxTC84YURFaEZkTW9kSFJ2d2k5Q3dxQ3dweXl0?=
 =?utf-8?B?NldvMTZSdVV5bHlIZyt1ZzZ2LzdudzNTdndyc2tFODBMbllWdzhNL1QvMG5U?=
 =?utf-8?B?R3NxTC9KWkt0RG1wV2U2QzJhRVNzcGhXdFlNU29tcldPYncvTzg3QnR4LzV2?=
 =?utf-8?B?M1pzRkRPT0E3Z3lRbm5kdXBrWUNzUnFScGpxSVNZa1BZc2R0cktobmhsQXdx?=
 =?utf-8?B?MVQ5R3BOd1l2dkVRNE4vc1UyRVRYVFExelpJT1R0LzlhNmtoUUYxSVlvOXBl?=
 =?utf-8?B?ZDBmUS83QURqQyt1WSs4dFF0MHRjWGNOcE5ieHA2M2dMRW9GRjBzWmJXU2ha?=
 =?utf-8?B?RzVHeWc4RldjdmZmKzR6Um8yUC84alNHdnZkTGtyVnUrRkRIaERTRHFrS3Av?=
 =?utf-8?B?WnNtYXM4RTQwank1cFcybEc2bzdxa0RIbXI5bGo1VjE2Y1QwcWt0TXVuTFIz?=
 =?utf-8?B?Wm1rS2l1MFY5c2h0di9OOTlhK3pQTXJTblhTdEZoYzJNRU5kbmdKVlUzMGdV?=
 =?utf-8?B?VnpFL3UzQmFSaTEzSGVVRXYwNDk3TllEK0c3dVZPaEpiYUZPVld1WCtXZnU0?=
 =?utf-8?B?MU1scHJFTmV1TXFNKzBsYjNaeFdiYXMzL28wTFU5RXYwa3BnS2plVjR3eDE4?=
 =?utf-8?B?YkFrR0lwRWY5T3VlS1I2c1dJMFRCNjRJUHY2YjIrQ2xXeHNGMmpVcHNoMXds?=
 =?utf-8?B?YjlKY2x5TkkvVnRqK3JTVWgyNllLcW5zV3NpV2ZYRWVIeFAwa3Uzc0k1VUFp?=
 =?utf-8?B?T3dhckZqdGhqSzR1b1ZYSzBYRVFWUmxKSnVHRzh5aWY0MVdISDJxRFFINGVY?=
 =?utf-8?B?Rm9qRzZZQTg2ZmwxT1A1Qi85SkhYc1BqSGZPYld6QzVqSlZzQld4RTdCWUhq?=
 =?utf-8?B?N2RUMFRqU3JVQWw5bUdHdExNcnRmS0JPR1Y5ckNTZlptOWVFN2k3WHFNZWNQ?=
 =?utf-8?B?c2tuNDdHa0tCUjNTSTg3ZFRuRkVrcFdac1crZW5DREY5TkpJeUphWTBpZTZB?=
 =?utf-8?B?b05MeTNnT05MT202ZkIxOHhjU2d2NjJyeWx2K1lQTDVXaGF3d0VkTWhKT2Rs?=
 =?utf-8?B?MzU1MWdrR3hDNnBLblJQaXBvYVJSQmNpVlRqRkV4VURiMkxsRVI3N3JMYjNo?=
 =?utf-8?B?SlREMXhLUmQ0Qk1NcGNlVTBMMy9JQU5GTFNqeGZienJwRm9hV1lUakdEME5M?=
 =?utf-8?B?WFMwcE1UTzRRQ1VUKythK1Nna1M2ejhoeUVKdnJEazBQWmcvUXBqdUgzVFlh?=
 =?utf-8?B?YTdGdHMvb0FSczNEbVhBc3RkbWNIVDhudXBnc1J1NmUxODY5c3ZEVmdHdmxH?=
 =?utf-8?B?aWlvKytwa2RGdCtacjIwTCszMGowYjF6QWRjMktnZ1VyVDFEQU13Y2dRNTJq?=
 =?utf-8?B?d08xQWpZTEFNd25XVGx5NVdLbFgva0M0Rk9rVXFCNVJ2Ymp6T3Y1M2pycmYv?=
 =?utf-8?B?bnV3WXhUbkxJYmhucUlFemtDeGxFSVN6MFRVYWVhM1hraDVPZElxeEM0Sk9R?=
 =?utf-8?B?cFBtZUEwRjVDYndlN0dVbDlkcnB4ZzBhc2trMENvQnBBWlo1ZE8rUkxyMHIw?=
 =?utf-8?Q?OkE1Y4rzH62UFtDkBaxSpjmj5QsNg48FGtGK9LXWc0XZ1?=
X-MS-Exchange-AntiSpam-MessageData-1: 	1W/zR5rji+6xTaoB2wS5IHBOeXwOzAF5/I8sX3tms4g608bfGp0rbg1I
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eab8ed0-a157-44c6-efbe-08da4a53aa0e
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0802MB2134.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2022 20:07:22.4067
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WRCdiLZGavfZAMy55ehImG371wPrKjYbO0BMrzdYyCU7znnP6T6kyvWM9P2NUbIOhMeiOse/HEBF2mw292kB0dWR96K1yDs2fqxjCm+gUgY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4828
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_130730_381793_1ACFEF8D 
X-CRM114-Status: GOOD (  18.63  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: reset_source: Remove
 of_get_reset_source_priority()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Alexander,

On 6/8/22 07:12, Alexander Shiyan wrote:
> of_get_reset_source_priority() has no users,
> so it can be safely removed.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  common/reset_source.c  | 20 +++-----------------
>  include/reset_source.h |  7 -------
>  2 files changed, 3 insertions(+), 24 deletions(-)
> 
> diff --git a/common/reset_source.c b/common/reset_source.c
> index 3554cbd0fb..dccb683231 100644
> --- a/common/reset_source.c
> +++ b/common/reset_source.c
> @@ -76,7 +76,9 @@ EXPORT_SYMBOL(reset_source_set_prinst);
>  
>  void reset_source_set_device(struct device_d *dev, enum reset_src_type st)
>  {
> -	int priority = of_get_reset_source_priority(dev->device_node);
> +	unsigned int priority = RESET_SOURCE_DEFAULT_PRIORITY;
> +
> +	of_property_read_u32(node, "reset-source-priority", &priority);

This seems to break my build:
barebox/common/reset_source.c:81:30: error: 'node' undeclared (first use
in this function)
   81 |         of_property_read_u32(node, "reset-source-priority",
&priority);
      |                              ^~~~

Should "node" be replaced by "dev->device_node"?

Best regards,
Michael

>  
>  	__reset_source_set(dev, st, priority, -1);
>  }
> @@ -92,19 +94,3 @@ static int reset_source_init(void)
>  	return 0;
>  }
>  coredevice_initcall(reset_source_init);
> -
> -/**
> - * of_get_reset_source_priority() - get the desired reset source priority from
> - *                                  device tree
> - * @node:	The device_node to read the property from
> - *
> - * return: The priority
> - */
> -unsigned int of_get_reset_source_priority(struct device_node *node)
> -{
> -	unsigned int priority = RESET_SOURCE_DEFAULT_PRIORITY;
> -
> -	of_property_read_u32(node, "reset-source-priority", &priority);
> -
> -	return priority;
> -}
> diff --git a/include/reset_source.h b/include/reset_source.h
> index 023b1fe4a0..a98c61ae0e 100644
> --- a/include/reset_source.h
> +++ b/include/reset_source.h
> @@ -32,8 +32,6 @@ void reset_source_set_device(struct device_d *dev, enum reset_src_type st);
>  void reset_source_set_prinst(enum reset_src_type,
>  			     unsigned int priority, int instance);
>  
> -unsigned int of_get_reset_source_priority(struct device_node *node);
> -
>  #else
>  
>  static inline enum reset_src_type reset_source_get(void)
> @@ -69,11 +67,6 @@ static inline void reset_source_set_prinst(enum reset_src_type type,
>  static inline void reset_source_set_instance(enum reset_src_type type, int instance)
>  {
>  }
> -
> -static inline unsigned int of_get_reset_source_priority(struct device_node *node)
> -{
> -	return 0;
> -}
>  #endif
>  
>  #define RESET_SOURCE_DEFAULT_PRIORITY 100

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

