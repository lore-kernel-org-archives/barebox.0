Delivery-date: Fri, 14 Jan 2022 09:27:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Hvt-001sAe-N5
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:27:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Hvr-0007nj-H9
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:27:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/vaYBcuNW3hmlSa6cQvLbtaMkAMoXy2hysNh0TgNsww=; b=MOfA0vgT+UhfbhnFXXXtsmQC3Z
	eCUlJ0y2v/CyFM4BOQcSahL2s+6zIc1+9NixYO4fEw3/zpLtKvTu3F/7RozBFnSXZ/BBkW4IPgifW
	MI8Y20lA3YTOF4o1GbRzk+ufWyA2ie2gTgHn442u43eb9D0gHGtJ09Vrz3hOIpqTqWCNVSbp44FcR
	8t17kz0HkIQ2xBG1hf65zjga1evO7znW4Ots57efzenS/bTNjUsp5MOZzUS4v6HN9ZG0fpf//Hzo4
	g2/G5Uc9JMdI6jnLRow0UAmhvvivsb0Im2cnoJNAVwMeYMfsNfAj8ZeVRSCOfYmfqVUhLJ1RlK6rd
	ERTZJnDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8HuY-008FAH-Fu; Fri, 14 Jan 2022 08:26:14 +0000
Received: from mail-eopbgr10041.outbound.protection.outlook.com ([40.107.1.41]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8HuQ-008F7R-Gh
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:26:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nk5o3paFNR8s4r0+bruryXqPJYoZxHssXi3iWPlJgkNBx+q7XxewkpBJ5EpFONVDlC0GWaw3Ln9IjmdoXrm0DmtxAh/pcQ8Uz9s/uuYl6uYVQykxweLughPLGCo+IPXYNbiK61FUHl1uZbILHhw3FT7xMDwqZxdYplE1TqrL8Y+3ik+fU1ta1WRsVact8sueUBYV5A9AP8q0yzDXBJs+/NV36jfI1Sk4QwmNcnVLAeJx/dqgTH/I7Vw5ffJoPAe1+Hiy17ysjdIhHYRiWnDu2WWlgdk3nO1XbYW+VP6a4KGLzvPz3qoRaXArmfTjHPQ/txqv8zPjfnYDEz2pY2P6Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mfKzAS9bxPqhbwUXjogi7cn7S1hpbpWOLsNXLlxchyQ=;
 b=Si37//pjqwhnaZgBu8UKfhOEXR0RFxROmON+G2fka0ddvmU3PretldP2aIEBADW7RhHGkyCyMxaDqEAVInvP0wFarUpBmb+nIwJ85lcKr166LbGC1w0djb9UISOszBRCKRYfGmB0yWJKYjsigd4UlZOVCN67Hs2BhPoVzqvyJoP4AN6gjVG3tst2t2m7ZM16MNjxp/ek3QI07yACUzAKwnkNxX/brhHq5zTA784+FEcgFz+HeInuA/nCvKADuppz5EXIGYkmLiWMDHEgvJ92g/WkY0NnSPx+3DXFea4D5N1WuXwt7yFIe5aZhHxpdFMepw5D67AvcG7lCazdhKlDBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mfKzAS9bxPqhbwUXjogi7cn7S1hpbpWOLsNXLlxchyQ=;
 b=D7iazMcmHmfOC60EpR5QPKw/B8gF5cbTLqVEZpp41dtAB7gnrxsnPJSsDBfjhSWHOeTPDtxP/aKvEsg6qDWRG/shoq6xmyr2hFrJZ+CA+4h4zB1/3bV5S8g0A6axvNKaWYaBZIRmbx0/9w9Mx9rzEzIGtpM59Cm5dvV0g5y6MuA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by HE1PR0802MB2491.eurprd08.prod.outlook.com (2603:10a6:3:de::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Fri, 14 Jan
 2022 08:25:59 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::809:72af:1fb6:1294]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::809:72af:1fb6:1294%4]) with mapi id 15.20.4867.012; Fri, 14 Jan 2022
 08:25:59 +0000
Message-ID: <0a914276-723d-69fa-cee3-42b517435d6f@wolfvision.net>
Date: Fri, 14 Jan 2022 09:25:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de, a.fatoum@pengutronix.de
References: <3fb6debc-4891-c366-94df-0d7c0b80685c@wolfvision.net>
 <20211117142448.2091017-1-michael.riesch@wolfvision.net>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20211117142448.2091017-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR0501CA0047.eurprd05.prod.outlook.com
 (2603:10a6:800:60::33) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: db9d8234-a1d4-4631-b65d-08d9d7377e4d
X-MS-TrafficTypeDiagnostic: HE1PR0802MB2491:EE_
X-Microsoft-Antispam-PRVS: <HE1PR0802MB249147DB7A34E18C944BFFC9F2549@HE1PR0802MB2491.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1443;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PGB2I8WMO1N9lN3zczHd/U9OfvmD6hdIRX54jfEvshL02G6B6IIWAp6vH1rtQdHmAH430o4jPCBjasjYNSPayFI9RYWjw+Sakvx0OFlK2fXNEUBafc8gVS2wcR0Yy5fCohv5ake53ikrGF7PGXSSySBKCGq9IzkO7k5WA1Nya8wcU0GaY6VcxSQPupnIMyyNWyqJJHJlan9uj2bvEvm+v3kzRiWSEyaaZ0cj+zDYmSncjdAW3+6jP7W6I5tf/xgvfpxMwoHsE4NrhweUlHP6jFvdBsLTi1vhrUljXOEowpZ+p8h8Wjj1tcYbXHj7dsFn9ZWBGPG+zM7SWVjVWb1ZHbztvKSDoESxzix+/JsH+7CZZ5+7UFT9qac9wOTRxX60kAzhEVG2xcQUWF3eEbudNElXt6CKeMkhCxYbAke9utz7FFjnmYGTDfWhObWyXV3l9hHyNI0TrT5KLhvykVDe+mnIACBN8BpHs/NQzzt5/KfxSebvKWsfhdtQ4MkQyWxCPyPpef/j6KVSsZ6ZIUpvU8WinxGcsJTG2+SC9m6CnUWt7byJJYCptlkNATUu89KztthsDNVuHTEaBb1gl9kP+bbAM6p/w8y39IoetaMo2tKR+CO7uviJefYsRJk4QAj8scA08fSb3DDd+/m8JvLDnL/YXLC6ZzPY5p9m7BFBQ56Zm/nEH7YY/jT3SaB44CAcqZkf/vnGs3aFGwVMQTJRc+GF3b19XBeAhD8yCogRxkU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39840400004)(66946007)(31686004)(66476007)(2616005)(52116002)(316002)(38100700002)(83380400001)(66556008)(44832011)(6666004)(86362001)(6512007)(6506007)(6916009)(53546011)(31696002)(36756003)(5660300002)(8676002)(508600001)(4326008)(186003)(8936002)(2906002)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFRzUFMzTjVBaVdlaFFQeWtzeXpkcDE1RnQ1SlhtaVlNUk5JRkJ6THRrYWZu?=
 =?utf-8?B?T0p5YWtWdlJieTIzYXVCT3M1dkVNaHdLTEgzSEJ1anNrakZweGt2QjByeWcw?=
 =?utf-8?B?V2NZRGhYdU1BenBrUmFveTR5cGVlNC84bTBZZ3NRMkhOOGJXL3NmdHZlZ1hY?=
 =?utf-8?B?aGJEbnRGejNhRWtMblFlQTdBQmJTMFhnQityYmk0K3hOY25SQlpmcXVlY3J0?=
 =?utf-8?B?eWcyQjFYZ2RzZkV3YlZ0SHQ0K0J1OUltRG9pMmtZbTNQb0lRVnBIaXZXR2Iv?=
 =?utf-8?B?akR1bDEzT0JXbGhlL0V3NHFZS1Y0NDU2bDRmYSszai80NWthYXQyaFBlL3NT?=
 =?utf-8?B?dnFYb055Z0FGTkgxOHRVZ2t1L0NKalBBMzdGWm5GYjhubG02ZGV1d1VJK0VK?=
 =?utf-8?B?cGRvK1RNNkpXai80ckp1VXduT0RoNC9NcVpYLzF3QWt3RWEvTnNWNjRldG1B?=
 =?utf-8?B?QUNUa29wamdHVlRMek0xUmUrcTh2OWRrTlIyWXZxRmxjTllBTzZhb0V5QmtO?=
 =?utf-8?B?a3VocHBrL2RaeW9jQ1FFbmU4YTZLb2RFSnNJWDdQZkZidU8yUTRiN2JUb0Rv?=
 =?utf-8?B?MitjVEtvM0ZIQ1NNcC9wMmdNclRUelF1ZmY1Z1NVaDlzSFMzdW9vcHJ4UTJh?=
 =?utf-8?B?aEZoNVdZcDVzRVN0bExpYm8vVFZOai9VR1RHbUJadE5ESGZjYWh4cGJIUGZQ?=
 =?utf-8?B?TWh2V0dpVzEvVVFIR29LTFV5ZExrQUthcHFhb3BKa1EvNEJRUzFiTC94Qnh0?=
 =?utf-8?B?VnBCd1Q5b1FZa3hOWU82YnBjQ01jQ1VObFI0WGVSV29iRytCaFI5aGxLS0RO?=
 =?utf-8?B?NHdVZlEyQi9GVThqeWQrek9NWC82eklBRU1MTmNEVzNmN3VSaUV4UmJpOE0r?=
 =?utf-8?B?Qy9pc3JsbU1scHVKdjNiV0h1WUpnb3BUandEeTFZWGVUR1FoUXhORFFLN1Rj?=
 =?utf-8?B?NVFiSmc3M1I3b3RyaFpzRHZqdUR5UGdkdEhJWlFFRkt4Z25mM1pvV1V3OVkz?=
 =?utf-8?B?UXdDbnhSWVk4bHowWWg3cUV5S09XMlNZTzB5NU1MRUtOVGRoSlVRbGxpWVUw?=
 =?utf-8?B?Y1huTjF0TmRNQ1RBdlpEUEpQN3RuOTQrV0JsUXFiUWhtWFp0SW5NTlJEWXpG?=
 =?utf-8?B?RjN2Rm5JWUFCMVNkUW1Hd0NsZjRTeEZZckllQ0h5RkNLWHd4bGZkTW1ld0tH?=
 =?utf-8?B?ZEtlY1ZkUTBwRWNoTnFWQW9wQlh1MTJXVU9NeVZrSDJ4MUJBZEZQM1RKMUx1?=
 =?utf-8?B?K2VmM0MrbEo3OFhkbFRyV3IvOE9LZkYxZUtiblA5bFJhYUJzQ2srY05VejY1?=
 =?utf-8?B?ZGNkOXFaR1Z1TE9NeERjQWxIdmlXRWoxRC92UUQzbDlPbkkvcWQ2U2d3Mmt3?=
 =?utf-8?B?R0I2SU4vdXEzMktWS1pzdUZHTXRhdWc5bW1MeHc4SXhJUHJEd2p4Z3NoUXJW?=
 =?utf-8?B?d1lCNE1ESXFQMEhhbEtrbkNFeUNsSU1GTTB3bHRGZGZsaUFnWWVQMTlHZTRv?=
 =?utf-8?B?VU5wZFNUUlNFV3I3Vi9sMkpVLzB1aGpIRkkrU0xsSFNBNmR6T3VpVk0xd0Rl?=
 =?utf-8?B?YlJ5MFlXNWsvUmdyNWVEMnprMVZoTGJjZzN1L1Ayb1dDY0NtcEFZYlAzUTJk?=
 =?utf-8?B?OUc4N21QdHVoL2J4eWpibHR5d1grWmNwS0V1QmRhZDNJaDIrOGJSejdaT0s3?=
 =?utf-8?B?VmpiNVdGNGt1STlSbHJtZXJEdTkwNkVqWUJ1elp0YUR5WXc2V1ZZSzl2UlR3?=
 =?utf-8?B?RDhtbnNOS2NCMmkxOXJmQXVPRnEvaXgvTjFnUWdrSzlaZWRtelo3V0ZBQlJp?=
 =?utf-8?B?SjhjNFh4Y1FVUE5SNDR1SWsxbDFSb29PWmZzT2RKMms1Uy9wSFNFZEgvcjFz?=
 =?utf-8?B?LzBsM3J6NEltVWhNOThDc0VsYWxXT1BGUVZDN3EwNHI4Y0pDVDFlSjhuV2d4?=
 =?utf-8?B?eW1kVWdyZjVUa3d5NFUvbDFhT0E4emdEM3V3elNKdzFNTlZVd1VWWCtWaE5k?=
 =?utf-8?B?cS9VZWJwL3lCdnl6YzNiNTJkNlA5K2ZvL0JSNkxGQUluZDlCRnVPZGhhYmUz?=
 =?utf-8?B?dXUxemFuZUFVdTgvWDdVYnJvN1RkbFNYdFZaSTJiWTU0UnppZWMwOTAzSEFX?=
 =?utf-8?B?RFpxUVlJWmNMdTNQKzBZWTRCUmtXbGdLQmMyckxCYjVxRFNVQ1c4aktMd2dD?=
 =?utf-8?B?UE9QZ0hvUzhoUHZMZm9QTG41NHhaL29KWjR1Y0dYUjdaNC90M1FkeG9pYmtI?=
 =?utf-8?B?UW1CVnpML0dHVDNEbFBvZkpla1pUZUxxVXBiS2FBa2NNMUF0eWpqOHROMzVs?=
 =?utf-8?B?YTZOUXhnQ09XUFgwaHJXaWlzYUZ2N3BCNkpZcllibTFKSlJpZEx6QT09?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: db9d8234-a1d4-4631-b65d-08d9d7377e4d
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2022 08:25:59.3549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /+hLjMe00IUNgMjBqg4Hd3ChbmyG6kwdrOqJfFNYnXMdL1lK1rxUnS1VObSxAxF/YyC6cyuYT4ctU3iOC20isGsAbLzV3r583jiRG3ubZ+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2491
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_002606_667801_B9360E69 
X-CRM114-Status: GOOD (  25.66  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] bootsource: add helper to set instance by name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha and Ahmad,

On 11/17/21 15:24, Michael Riesch wrote:
> Instance numbers should be related to device tree aliases, which may be
> board-specific. In order to establish a board-independent link between
> the boot source and the actual alias, introduce a helper that sets the
> instance by the OF name.

Gentle ping here. A rough indication whether or not this is the correct
path would be great.

Since patch 2/3 has just been cherry-picked, I could prepare a v2 of the
remaining two patches as next step.

Best regards,
Michael

> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  common/bootsource.c  | 74 ++++++++++++++++++++++++++++----------------
>  include/bootsource.h |  1 +
>  2 files changed, 48 insertions(+), 27 deletions(-)
> 
> diff --git a/common/bootsource.c b/common/bootsource.c
> index 1f8d053a8..1b45956a5 100644
> --- a/common/bootsource.c
> +++ b/common/bootsource.c
> @@ -9,6 +9,7 @@
>  #include <environment.h>
>  #include <magicvar.h>
>  #include <init.h>
> +#include <of.h>
>  
>  static const char *bootsource_str[] = {
>  	[BOOTSOURCE_UNKNOWN] = "unknown",
> @@ -33,31 +34,8 @@ static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
>  static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
>  const char *bootsource_alias_name = NULL;
>  
> -/**
> - * bootsource_get_alias_name() - Get the name of the bootsource alias
> - *
> - * This function will return newly allocated string containing name of
> - * the alias that is expected to point to DTB node corresponding to
> - * detected bootsource
> - *
> - * NOTE: Caller is expected to free() the string allocated by this
> - * function
> - */
> -char *bootsource_get_alias_name(void)
> +static const char *bootsource_get_of_stem(void)
>  {
> -	const char *stem;
> -
> -	/*
> -	 * If alias name was overridden via
> -	 * bootsource_set_alias_name() return that value without
> -	 * asking any questions.
> -	 *
> -	 * Note that we have to strdup() the result to make it
> -	 * free-able.
> -	 */
> -	if (bootsource_alias_name)
> -		return strdup(bootsource_alias_name);
> -
>  	switch (bootsource) {
>  		/*
>  		 * For I2C and SPI EEPROMs we set the stem to be 'i2c'
> @@ -69,22 +47,50 @@ char *bootsource_get_alias_name(void)
>  		 * controller
>  		 */
>  	case BOOTSOURCE_I2C_EEPROM:
> -		stem = bootsource_str[BOOTSOURCE_I2C];
> +		return bootsource_str[BOOTSOURCE_I2C];
>  		break;
>  	case BOOTSOURCE_SPI_EEPROM:
>  	case BOOTSOURCE_SPI_NOR:
> -		stem = bootsource_str[BOOTSOURCE_SPI];
> +		return bootsource_str[BOOTSOURCE_SPI];
>  		break;
>  	case BOOTSOURCE_SERIAL:	/* FALLTHROUGH */
>  	case BOOTSOURCE_I2C:	/* FALLTHROUGH */
>  	case BOOTSOURCE_MMC:	/* FALLTHROUGH */
>  	case BOOTSOURCE_SPI:	/* FALLTHROUGH */
>  	case BOOTSOURCE_CAN:
> -		stem = bootsource_str[bootsource];
> +		return bootsource_str[bootsource];
>  		break;
>  	default:
>  		return NULL;
>  	}
> +}
> +
> +/**
> + * bootsource_get_alias_name() - Get the name of the bootsource alias
> + *
> + * This function will return newly allocated string containing name of
> + * the alias that is expected to point to DTB node corresponding to
> + * detected bootsource
> + *
> + * NOTE: Caller is expected to free() the string allocated by this
> + * function
> + */
> +char *bootsource_get_alias_name(void)
> +{
> +	const char *stem;
> +
> +	/*
> +	 * If alias name was overridden via
> +	 * bootsource_set_alias_name() return that value without
> +	 * asking any questions.
> +	 *
> +	 * Note that we have to strdup() the result to make it
> +	 * free-able.
> +	 */
> +	if (bootsource_alias_name)
> +		return strdup(bootsource_alias_name);
> +
> +	stem = bootsource_get_of_stem();
>  
>  	/*
>  	 * We expect SoC specific bootsource detection code to properly
> @@ -125,6 +131,20 @@ void bootsource_set_instance(int instance)
>  	setenv("bootsource_instance", buf);
>  }
>  
> +void bootsource_set_instance_by_of_name(const char *name)
> +{
> +	int instance = BOOTSOURCE_UNKNOWN;
> +	struct device_node *node;
> +
> +	node = of_find_node_by_name(of_get_root_node(), name);
> +	if (node) {
> +		instance = of_alias_get_id(node, bootsource_get_of_stem());
> +		if (instance < 0)
> +			instance = BOOTSOURCE_UNKNOWN;
> +	}
> +	bootsource_set_instance(instance);
> +}
> +
>  enum bootsource bootsource_get(void)
>  {
>  	return bootsource;
> diff --git a/include/bootsource.h b/include/bootsource.h
> index 646b0e91c..4dcb969ac 100644
> --- a/include/bootsource.h
> +++ b/include/bootsource.h
> @@ -28,6 +28,7 @@ enum bootsource bootsource_get(void);
>  int bootsource_get_instance(void);
>  void bootsource_set(enum bootsource src);
>  void bootsource_set_instance(int instance);
> +void bootsource_set_instance_by_of_name(const char *name);
>  void bootsource_set_alias_name(const char *name);
>  char *bootsource_get_alias_name(void);
>  

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

