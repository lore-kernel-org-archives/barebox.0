Delivery-date: Wed, 21 Sep 2022 13:59:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oayNh-00BIBs-ID
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 13:59:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oayNf-0003J3-OA
	for lore@pengutronix.de; Wed, 21 Sep 2022 13:59:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YY3GW4S1y9RdHL54Lzy6Gfl9vrpS1Vm7ovEGDynpM4A=; b=3iIgFx+7TuXlytGfN82LxAXbp0
	3bWiDwCn3FIivaW8+n65oOj/RNx50ztLUtEdkJmPcHwUJjflg46rX7w6XedokG0yKSeVrmeTalFWf
	YEzxVwaHZuytoS8guYOnc8Huoyye1+7BfX2jsMJuGpfydNG0k+6aNvfTej5BiUUIhEoDJvTFMjkug
	gLDAWFHDAmKLyhLUvA3xQpqqaBf7Has2tj3pbe2Di54pxWllVYIyVtuPhz48ssmo9ka2dYubtuy4C
	cgT/9BhjSEJMIOKKvkEOXsS6sHrak4VxqqXSxbtL/ch4x9gBEgqsc+KoVUVUxfTYq+ZiXOTsNQf7D
	2+N/KEYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oayME-00BDMH-8c; Wed, 21 Sep 2022 11:57:38 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oayM7-00BDKg-PD
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 11:57:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEAfQAb7srshdr7njCeCSIxauxgUaIrhQBda/NrXw9tT/tc8F+1b7oWCAq0OygjLL15Ul+6XsZfebupBIEsGqO2FZMNyb9U+lWXjiZW1Tk3mDcvjBxSkXqtsGkacAUKKGOGl7iWK9deTy8WB33l5+LD240hgduUaEAPWXMADFrHMS86EyQhntb7kCFYxk+eGFpvZkQqV+58ZxKPGEgIPg8wIRrNxAMfad/FyG2cITn9kz3Xy+uCvf5PDG/i+3SFdejgaSEYkf1dVtoSZq3B6dvngPsCPPXBm+KTpXnXYnBZ0Six1TrMChhsVMpuBa6SP0hys+eSgsMQmut9r9cOWEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YY3GW4S1y9RdHL54Lzy6Gfl9vrpS1Vm7ovEGDynpM4A=;
 b=hDYksoziFhDFhdWdeadiXyhWMOuCorE+NqWtng5iQT1MxEaMUYoBU2DLhPJyca+vsJr4JiuHH1b0P0G+ejbOr/6lyvNRIZBRrbThh0PhUHO/R6cYrFerNyYI436PH1d+2r8Up7M6AvCQ8DtBE9hZVLbfQl482irq7IxjCozHy3KrACwrI8LbRPlySR7C4B5hebEBnIYCHypHMW+XWUXcweuFGeIQDSL0OSEkpwUNweDGyhClxhqgIpD6ltyBI9ZyibiZ/T4yiQkADpPaqz84TFKQq6yGB0bFw/OB8ARgt5TlFQOjYtvLgrbkV4b/0652SF8H3NA9RkQ6vOWsjpJOjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YY3GW4S1y9RdHL54Lzy6Gfl9vrpS1Vm7ovEGDynpM4A=;
 b=MBeNspbKg+s38iZSJ9dYGMTaCzSuudDT1VE6RU0KMzRJRVEJsJnAribQ4EUqeC3S6PCJbRj0Dcs4O9vNwGC7+D0EXjxZk2IPwRjF4PKxh2JAUpvWwZgheUFQM7Jpk7Rr3/657QCd4JrXB52Wxwjx2nsD0FnCXNXEv3k/Ytvw+Yw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB8PR08MB5386.eurprd08.prod.outlook.com (2603:10a6:10:f9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 11:57:27 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 11:57:27 +0000
Message-ID: <f78a05c7-3142-626c-3b02-f969c729b40f@wolfvision.net>
Date: Wed, 21 Sep 2022 13:57:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
 <20220919113948.991245-7-michael.riesch@wolfvision.net>
 <20220921091724.GB986@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20220921091724.GB986@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P191CA0012.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::15) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB8PR08MB5386:EE_
X-MS-Office365-Filtering-Correlation-Id: 339e2ea8-210e-457d-6d82-08da9bc87451
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	85D0Rxo/kZQrtIrbGUJ1rUdSyP12qDudcSzMUiWtB/PnQVfdaCb6HNHiNONF3gmEGQG1kIHBf9fKvwyxREh9S1HsnFa+gxktGe2aZeJHdpXZsiuAyFcu/cxKusRAuK/S34xRffAff291ZO4Kxe1uZduDY8CYbgvEah3I5vVNXa5pnO7IWMCmAyD4k4JW5J0HLsCmLK/WIlsVM/MoPdMekEbt6RIQ3ey+Np7YIF5quoKG20OBbh7bCRyoyMpH2WSpEvwyArzhkrTAbuZWQt6G8d+Aus4cxc0SLU8k9er4egupPhYpY1t5kUC07NEwthKFCRT7v+lM97hGMvp5AktB6AQtYXMhg8TlXlg8YjfisRB/sUFdBTniUNHcLMS7llztM8MA3dx1Nafi289b/KyhK4W3DDfLi+A+pugQJUnI4RkyUGWdjZyi0La2RVyOfldqmkzFk5wSflEo0elDS7RFEjmlGjJMIgNrVX3LLe61I9IiY3y70VflZpc/xld6H6ZeKayo+RS+VduxyxZOIk4bDGF3pXmpq08t9OVps4YHE3kxP3aNZcK36qhVO0ouxLdWLgGkTR6SytPGJfHbyhT0GxZBvf2MGF/FZtWcVK/W9l6v1RHRszDHHBSUOVzoQ0j6nfdETUHyNjBAvW++npCWjLLH8ihJZ42/F8IiuBdb+1OMD39ggZmQnvU5t5FnwyUtomXBWo2b7dwpPMHngU55AUBOgcC4vRGeISNMXAVD0opHmrEaQOJcH70MecR8X9gJ0Lyftlst/yBp7SS7dNkFpb54QeFVmdNTvASfTbrY4YaByRsP+bj+XmVXLkPcGvUttvS4IjYl3gsU4z5IRSQdQA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(396003)(376002)(366004)(346002)(39850400004)(451199015)(66946007)(478600001)(38100700002)(6916009)(38350700002)(36756003)(83380400001)(316002)(6486002)(66476007)(2616005)(8936002)(6506007)(2906002)(86362001)(31696002)(36916002)(44832011)(6512007)(26005)(5660300002)(52116002)(53546011)(4326008)(8676002)(66556008)(41300700001)(186003)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?aUlud05NM3VMdmJxVU9FeHdrRGJGSE4xcmRvc25lY3RWMlRmVG5Ecm1ta0hx?=
 =?utf-8?B?bVJHbEJheFZ2ZS9FOUFrdlNSVHZCOUNmSTVWYkNsVnprKzY3bklDRkpCanVj?=
 =?utf-8?B?bmZKcm5JRk51emFoNEhLcFNMeWpPc0MvRGVFMXZaZXYxempVOE9ZZFlNNDJ5?=
 =?utf-8?B?UzNkOWtueXZjU1JkdW5ZVGpWa3M1dXBwVjFucGJJWXQ3SFI5SUNzZkhKL1NZ?=
 =?utf-8?B?Rit1azlXeWZVTXhVMkZ5MnhZODU0b2Ywcmx6U1REa2RZT2c1alU0clAxMjJ2?=
 =?utf-8?B?MEs2em85b2tRWnRxZUtZV0loZG9TTTJTMW5FTWw5dDJqYWVuTzNReGJNTWpo?=
 =?utf-8?B?T054VUpYV2kvTjFiVUhHemZaTkwvU2wrY012L242c2ovcEhwSGpNMTdGU2U2?=
 =?utf-8?B?WllmU25aaTZ1Q2NuK3V5YUhtVjJIMVZ2TEpaQitHbGlPT1NoT0FYT3ZscXEr?=
 =?utf-8?B?M0JUSGlxZjJKVi91Y1hFTTRYdWVJY3lvZDg0K2NLbXVSekJOQ3RZWDVLMW8y?=
 =?utf-8?B?MDAzYmJldVRnKzBONWpRZlBWYjBrV2c3bS9JUDVrb3BzMFRnQkJMYVB2bzRY?=
 =?utf-8?B?ck16UVlXbnREa052M1VGZGVqMW1PTEpLMXc4cjBpM2w4S25BUS9abGRFNGt6?=
 =?utf-8?B?RnlsRER5MDU5NENKYTZIekZ2MnpnUU9WaDhXUStGeTFKUTVGMTFkNC9Yd3lN?=
 =?utf-8?B?U085QzdFNHFNYmtaaXoxaGJEVmE0SnF3SFJLbis5ZFREQjZtdnEwcTRVR08v?=
 =?utf-8?B?OVFPcE5NMkNiaWRQVEp4WjYzQUtlOUhPb0c0c01yY1NwdGRJOEE2ZmhkRzNp?=
 =?utf-8?B?djFKUVpsNlNDeE9senR2RFpwcHdkZ2I5OFJXcmR5dWt1QWdKUU5oRkh3dHV5?=
 =?utf-8?B?eE94WE5WTjIzRVFiNzAzT0ZWRDlEVk13NDlXY083ZmZxTFlSQnhEZkNIUEwy?=
 =?utf-8?B?L1Q2aktsNUlxRlZiaGo2dWxMZDFXYmRReFpjRmE4Y01GZ2s2NGVLOFJYaUVL?=
 =?utf-8?B?WXdaVmVRc09SRnRLV3MrZGFtYVVYcnJqZ082ekwwcXYwRklrYTVOY3VrbkR3?=
 =?utf-8?B?VGVEdzVyVStWaDdTNjJLaEpaaVhLVzVxTmlZNVVyRUZoTVdBREJEQnEwd1dI?=
 =?utf-8?B?NUNyazZYY1JNdkNraVk1Z3dqd2FQVFhHVmpiQ0I4OG9KTTdRa1cvUE5HVWZl?=
 =?utf-8?B?dHVCd2pib2dJeFlhNVV4YkZrRS9jNS96Wk5iOTcvYUxEVTJOMnIvcFZnOHlF?=
 =?utf-8?B?bG5GKy9DTGFuUmRyc1RCNE9BSDIvMUpuYS80YVo3YUNtc2Y5dk12V3FzRlpK?=
 =?utf-8?B?ODIyY0JzYUxyTWx1QVNJUGl5VE9VRkRHUmQwOWZlcUZlZzBPQjNDWVg5c2lO?=
 =?utf-8?B?NXRhMHd0Nnc4VlVwbWgva3RhVnNIM2t0UFNadTVGc2orTi9MNFFvcmZUZFdn?=
 =?utf-8?B?WG9KU1lxM0sxNG45TlMvTjNTYkwyT21OUitrbnJPaXE0KytWa1JFRmZmV3Vq?=
 =?utf-8?B?bHgrWGpsMk92bkJtWDY0TGt5eTZsOFZaUU1uUEVDZDltekpHWVcva2svdzRt?=
 =?utf-8?B?QWh2MmhhajJwRFMrQ29XbDA0S2FWZFFJeXFUV3ZDRmNqQ1d6RnhXQkdWNlBl?=
 =?utf-8?B?cVE3Qzd6U1lwcE96dFFnN1lyR0RIYU5OcUNEMVN4WjJSZHlpMG41TnJsaVN1?=
 =?utf-8?B?RkxreWxXcmRWUFVzODNXUHVmZk5UZDZjaHBPcEMvVk9kSnZJdG5McW5IeTFO?=
 =?utf-8?B?NlZpMWdrdlZ3dWNQVEJzdTEvQ2xvRkZtVkpWSVBLbDh3eUMzWlpUNVZxNWR0?=
 =?utf-8?B?SGs3K3BFMm00UWtiU3QxWUJtSlJsLzdmNGlnamU5NGlLa01GT2thTEpDRTRh?=
 =?utf-8?B?eWZrb2VwdGU4WjZvdEUyVkdKd3VyaHBWRkdKckh3UkIyZllRdm80aGRlOERu?=
 =?utf-8?B?cUloTmFCVVFxeFh4U3FFa052Q016SmZOeFp5dU9LSURwRE1YL2VUN25OVXBz?=
 =?utf-8?B?dFpCOU8yQ3ZRc3BZS3FwUlZ0M1dWUXB1NmE1ek11c2Exajk5S1I4akNsUWVT?=
 =?utf-8?B?Z3d1TlNnMW5KNGhBZVFCMmxLV21GZGxXL0ZJaDIyV0xNMnFqa1NXcW0wZVhp?=
 =?utf-8?B?dk5xa2crK0lJQVJjeXVxb2ZLcjdHWitTVVovc20wSS96Q08xL3phNW9EcFJB?=
 =?utf-8?Q?rptFN2XXgLhajjurDv9QZjA=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 339e2ea8-210e-457d-6d82-08da9bc87451
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 11:57:27.4385
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eLVYONVxmg5q+i1YLO0ATPAb8pVfEOcmjeOMuT9TwApw3NFR3V/VTi56EP2ouQ4Isxu9x26+DWzDFVbnVpVZyeqg8f2Fiw8Lz/TwW/lH/CU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5386
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_045731_896309_8CA266FB 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/7] arm: rockchip: rk3568: refactor common
 rk3568_start method
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 9/21/22 11:17, Sascha Hauer wrote:
> On Mon, Sep 19, 2022 at 01:39:47PM +0200, Michael Riesch wrote:
>> After the removal of the IO domain configuration code, the low-level
>> initialization is the same for all RK356x boards. Add a common
>> method rk3568_start to remove this code duplication.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>> ---
>>  arch/arm/boards/pine64-quartz64/lowlevel.c    | 30 +----------------
>>  arch/arm/boards/radxa-rock3/lowlevel.c        | 27 ---------------
>>  .../arm/boards/rockchip-rk3568-evb/lowlevel.c | 33 +------------------
>>  .../arm/mach-rockchip/include/mach/rockchip.h |  1 +
>>  arch/arm/mach-rockchip/rk3568.c               | 24 ++++++++++++++
>>  5 files changed, 27 insertions(+), 88 deletions(-)
>>
>> diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
>> index b295885522..e1beb3e624 100644
>> --- a/arch/arm/boards/pine64-quartz64/lowlevel.c
>> +++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
>> @@ -1,39 +1,11 @@
>>  // SPDX-License-Identifier: GPL-2.0-only
>>  #include <common.h>
>> -#include <linux/sizes.h>
>> -#include <asm/barebox-arm-head.h>
>>  #include <asm/barebox-arm.h>
>> -#include <mach/hardware.h>
>> -#include <mach/atf.h>
>> -#include <debug_ll.h>
>>  #include <mach/rockchip.h>
>>  
>>  extern char __dtb_rk3566_quartz64_a_start[];
>>  
>> -static noinline void start_quartz64(void *fdt)
>> -{
>> -	/*
>> -	 * Image execution starts at 0x0, but this is used for ATF and
>> -	 * OP-TEE later, so move away from here.
>> -	 */
>> -	if (current_el() == 3)
>> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
>> -	else
>> -		relocate_to_current_adr();
>> -
>> -	setup_c();
>> -
>> -	if (current_el() == 3) {
>> -		rk3568_lowlevel_init();
>> -		rk3568_atf_load_bl31(fdt);
>> -		/* not reached */
>> -	}
>> -
>> -	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM,
>> -			  fdt);
>> -}
>> -
>>  ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
>>  {
>> -	start_quartz64(__dtb_rk3566_quartz64_a_start);
>> +	rk3568_start(__dtb_rk3566_quartz64_a_start);
>>  }
> 
> Here __dtb_rk3566_quartz64_a_start is accessed before setup_c() has been
> called. That is not allowed, see the patch I just sent.

Does the refactoring make sense to you in general? Can I change it to

ENTRY_FUNCTION(start_my_fancy_board, r0, r1, r2)
{
	setup_c();
	rk3568_start(__dtb_my_fancy_board_start);
}

?

> BTW this patch breaks compilation, which is only fixed in 7/7:
> 
> /ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c:14:22: error: conflicting types for 'rk3568_start'
>    14 | static noinline void rk3568_start(void)
>       |                      ^~~~~~~~~~~~
> In file included from /ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c:10:
> /ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/arch/arm/mach-rockchip/include/mach/rockchip.h:37:6: note: previous declaration of 'rk3568_start' was here
>    37 | void rk3568_start(void *fdt);
>       |      ^~~~~~~~~~~~

Oops. The goal was to separate the changes that affect the BananaPi, but
in this case 6 + 7 need to be squashed. I guess Frank needs to object to
the combined patch if it breaks something on his side.

Best regards,
Michael


