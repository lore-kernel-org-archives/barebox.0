Delivery-date: Thu, 01 Dec 2022 08:29:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0e0U-0079UT-V5
	for lore@lore.pengutronix.de; Thu, 01 Dec 2022 08:29:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0e0U-0006Bg-2R
	for lore@pengutronix.de; Thu, 01 Dec 2022 08:29:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KLI35ZR9u7ABMmgbUNdBgIVDWLi728aqHKq0MYtcUDk=; b=R7UqC0e33HkSMIxNDLJ5qajq0b
	DgxzPl643NBRjz6Sb+vyWoc+7dIOgPaY4QMxhLAAcI83DklKBtakfvl1roj8fnKyVtXqouPRiTxH5
	HzUnpT/irB65gnp5wyDw9g3mdXDlOc/e9e2Byf/HcapjxuhE83/RdsYnATSS0Tya37SqRP/VfbG06
	gsFpHVn5rBgwOfRhe0JWi4VrFTzxNtHvXY+0hIeOmhHgiXf7F+RjI7PU14LEQnInEUoKDqFwiWAk2
	z0x6MP88tJo+NjiupaNX0EFJKu9criFhitJoBfaccPUwZAIqVXeBAH62UnPWCHmbhs6RRRhCJxt5i
	SrL7123g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0dyX-005WEk-RM; Thu, 01 Dec 2022 07:27:18 +0000
Received: from mail-db5eur01on0623.outbound.protection.outlook.com ([2a01:111:f400:fe02::623] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0dyS-005WCu-Cm
	for barebox@lists.infradead.org; Thu, 01 Dec 2022 07:27:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ggGACt7YRTnyXl1/atmfGqEPeM7wm8ahVhydO8f6xmjy1VVfzS1YHlHScj/EMyk3xoiFcgEUzSGepmj6YrWYv5biDaFLJRqrXA8e3Xpy/LanaO60n8sRxPB12h2nchmMoajyyiUT2aGWG4/swDFeTuIpRTg9lvk7m/MENDCoGs5QjWKwqFSAU6eNNoWOKVoLrM4DMiInOvacRCBYbKoYF52ThSNafM5DGkC2lxSfhP79oEE9ulC6vNKUUfU8LgtZ/7JqMjU7qx1uhSf3/q705snSNWMnDhLOX4B5/4UCZFvl3T3q85iksiIZ5I3bql9ty7nTAaLMoV3n3Hqicq+wmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KLI35ZR9u7ABMmgbUNdBgIVDWLi728aqHKq0MYtcUDk=;
 b=h4N0S/CIzds00hFIPobdSIxRd8bYEwJXw5VY7BwhWPOmZnGjj8FZ3L6n6RoR7WoJomkIErW/hrKtntICLAl2CSAAOH2LNI1h08CPGDGAbzGQmpG6w5lO1nohOrgQkV03SY/pnN+Kp5zt5YmNgj9DF95/oqg3sX0FbQz+zrBq5xUkdF6r2oAd6U79DpxREfSjSpt0P/C+N0t33fIYlNnNeJRUVsUO6NEdqz+2F5DD2/JxaQilS0rO0ScVoqfi2DbzNfkT3xgRlk16QtK1ltcYZ8FrKUCLHShhkjUfp35ANcfVxsE2wnV8Hb0TV5IE3e39QFYzkvPEZUP9KtDZ7dR77A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KLI35ZR9u7ABMmgbUNdBgIVDWLi728aqHKq0MYtcUDk=;
 b=d95fkcP8Z7JBAGE19Pn6ZlEHmJk73n4DP0/NHNw+mt1ODYWZVeMC1ylHnCDHZK6khiGKclyja0ZqsP7boTVTW/zhuDjSD33XfoDxLPJuNU8c8kecM3qwFmrd98F4Ke/OXucmb8XDSVckj2cVbXrEN30ih9wDA/MnDb7lm3iKUyQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AM9PR08MB5892.eurprd08.prod.outlook.com (2603:10a6:20b:2dd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 07:27:09 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::3643:6226:28c:e637]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::3643:6226:28c:e637%2]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 07:27:09 +0000
Message-ID: <eb9cd275-e27f-a3a4-7934-56e741775605@wolfvision.net>
Date: Thu, 1 Dec 2022 08:27:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20221130171439.2928344-1-a.fatoum@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20221130171439.2928344-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0189.eurprd08.prod.outlook.com
 (2603:10a6:800:d2::19) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM9PR08MB5892:EE_
X-MS-Office365-Filtering-Correlation-Id: e82fcbc1-991a-463d-f50f-08dad36d7409
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	dgkj1ktMkGJCl80jUAnv6zM74yMpCODP4nbc/W97ClbD+GqxRs3B+z0OxngjA9iM75ovgJgY/hTe1Ji9V7fwFqjphKtmmNLhKS9a41Vpe+gFdANblLZwp7o5XXBIoXF+P0p/hoVdxw368tU5KdGjEXngWGUc9HgxKgDKUjbqPbKqIYWadFcEnyqeewxsZq2hVD6LVKPod4Y4SNdR516R0cllL38BmF9WcO+SlyttYTlaLbQp29F9D1MH36oKyFV7P1qoMlDGEi0q6psFDClPSuyQlOfWjG8k/cnnBTrt7ZSiOkWUrn3KDJ4wSvtviHraWIkuoQwYJ7a82f4wsyJwsBL614+Tgr9g1/4QE3DoiFhoTigJoA/LGHUYmYnYBZin6zmTgKQIjfio3VrLKntB+BfHD207odwWMcj0EjpSkK7fhMk7BTAbPfcARtb6w/lHuixiDrA76ENm7S2k7pKnvUqgJ4LyFcwcVOW7rpV1y5JYhKFkndq+fQINQMLfCzuRiFl3nr/u5sPXI0UMiuhmp1DSWHoRDqsxrrdoPSnnfOiDw1VaDk4oh8kNlSJyc94Id/uBKmhTiv6/PHmH/iyqWXN9vTW6X0lo6gDUarNnKKZjIzSxuRf/40FquU3whLb9+hIMnMG4tr4BmU6mT5TEIe/yCgU+bxqcyfN67cBzhKijmfjq594oI46To6kB5lC/2/ESCEHXFg1DC/75w2w+zIhtwwKDmioX+epbJA7ewgNnvCuwwBfKzy4DN5ccSgVj
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(366004)(346002)(376002)(136003)(396003)(451199015)(36916002)(38350700002)(2616005)(316002)(38100700002)(5660300002)(86362001)(478600001)(6486002)(44832011)(31696002)(36756003)(41300700001)(66556008)(66946007)(186003)(66476007)(8676002)(8936002)(53546011)(2906002)(83380400001)(31686004)(6506007)(52116002)(6666004)(6512007)(26005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?WitiL1gvYnNpWWtva2VNWDJmWDBLejJSRzNLaWw1ZVpQUDB3SWI0SjFLOUtV?=
 =?utf-8?B?YlRYMFJLZUN5SWh6VDlJcERLMXdwbk5NNlgyMFFjWFF0bFRpZmMyVEtOTlJX?=
 =?utf-8?B?QkpDQ2xnTnJHaUM4WTE4OWpiUU1zR01oSnljY3RyVEtVUzQ1dVFuOHl3c0lB?=
 =?utf-8?B?Y3ordlErZzRteTNlNGl5WGo0WXMvY1VKZHFnWml5YnRFSVNUSjlMNit6akdj?=
 =?utf-8?B?czB3bFlSeFowSlRxQlZia1FQcDY2VmdIaGt4OEY2NDJsZ2pGLzV5dHlVTWEw?=
 =?utf-8?B?TzJIYkQrMVNQQmxvaFVNd2hLa0lIUmJyejVQbEk4RDVzemdiQ1hRK0QyZXZ4?=
 =?utf-8?B?amNvaGl3bXdjTEtFTjlwZVNRNDd5bGxsdUk0RHFDMjNDWjdqaU14alZLRWRj?=
 =?utf-8?B?aVZ4UGRvS2hZQU8xV1dQWDFmWWozT1FnZFBpNVpJUkhwbzBYYUZSZjZFREY3?=
 =?utf-8?B?cVZQditISEhvMUJzalJjYXJ5UmtBeDNRLzBOQjliSUFIYmx0R1Ztb1NoT0tj?=
 =?utf-8?B?dlhWOFZLV3RDZlRDUk53d3pOalBVME1RbEpmeTNFd2NSWTIxTXFHZEpDL2RF?=
 =?utf-8?B?cC9GanpSUDdQeHVOY2VOR213WmdTc3Z1MzBZTFd2N1MydWxCYU1ybnhkOGpm?=
 =?utf-8?B?RTlBR1ZEQXFFZ2dDd1E2OFBWQ29TTmY2TUJrWVhubnBuenM4bWt1MjJTdVdz?=
 =?utf-8?B?NTN0TG8xZGVpYm1IaFY0YnFvNTYvOVVVS2J0eUF6MnhGdVZkRjI5TGh3OHBu?=
 =?utf-8?B?dE40UjJaUTRtTzZiWGswcG1idUJQODNGNUNHUDhaVkVDU0p6QlJ0dUNqQmpp?=
 =?utf-8?B?cjBUYXNOdi9uZkorRnFxNkVqVi9WTzJqc1pONXBDT2JFQnVEYk02SFdEdXFa?=
 =?utf-8?B?UkswZnpmV2xMLzhHS3g1MFJVazRwclNuU3I5QXZWQ2xGUE1tMTZUeGEyRXBn?=
 =?utf-8?B?U0diTXBzVWd2VllzNXZaOHEwSGZ5Y2VEUzBYQ1RhVXZSRjZqbXYxSWxOVWlk?=
 =?utf-8?B?cEtHcVY0a0VMZWJxY2oxQTAyT3NlMkVGclQwalp4eGFKR2VxUENVTS9Kek8z?=
 =?utf-8?B?dGxFQUhjNUZpdVFpTnBTdXFUamNFdm5YZjBPSVZaYlF2YUFXT1o4RG91czNs?=
 =?utf-8?B?N2FkQ3JqUWdRcWN2S2gyUXpETEhFdGNRNlF4Sk9qeWt1cmJXdWJjV3lvNEU4?=
 =?utf-8?B?eEJkcUpnTDVTR0x6WHQyY3RSSFR5eGQzMnZjTUlQeGlVYlVBM0hkTkd5MFpz?=
 =?utf-8?B?S1BCanUzQ3FYTjFzMVJhRVBIVnFGeiswbzF3VTJjdnV4eXhiSzVrMU5UTk9k?=
 =?utf-8?B?NXZrRkJkYldSdm5GRGdEWm1kdWFCeGJTTkNtRGpZeGRYS0lWZXVmVjRaalA0?=
 =?utf-8?B?VzZzNytKdGFvVHp5OUN5SmVjYXJHTThhajNiSHREUFpaVVk3QzhPVHJFckwy?=
 =?utf-8?B?U0tIY1VDcDQ5SnN2YW00ZFp1dG11aUkrWXpiS0VLMEh4dStSRzNUKzBobm9u?=
 =?utf-8?B?a0s5WTBRWW9mU3B6Z2xZZis4dGNxeGRvZjdpRlI1bFBORnMzOWRqL1VhTXJR?=
 =?utf-8?B?MDRzSkhZUXpDM2ltVUZoQTlxeWJ0Vk9uYkJyT3Z4ajNMNHhDY0xmQ25TRmUr?=
 =?utf-8?B?djdTMjZ2N2J5YVFBY0FZQm4rUmY1U0RMSXltdGF0bUwwUWcrWUlodERGS0VE?=
 =?utf-8?B?YkhSRWFTZG5XRmd0TnZVUG9ROWpmTXdrazNqa1RrSWN6WTRxSkhLL3UxRmpV?=
 =?utf-8?B?TGFxb1dSL3kzTDBhRG03VWs5K2FKWWk5WjE1TzVscnRmNWRHNy9vNE5jUU44?=
 =?utf-8?B?TWZPNHk0YWVtdUlZZlpUWC9CRHFLaDRsb0N2VDYyNklrMFphdzJ0bjRSNk5I?=
 =?utf-8?B?UVVMZDM1aXdyWjlvRHhhQk10b0krdVdjZ0FhaXZhWURNamN3QUxHcTZkWjZL?=
 =?utf-8?B?YXNwb01oZzVVOFlKKzg3cEg4WG5NTTFmQm1DWThNamZwczNlMk1laS9vUUxN?=
 =?utf-8?B?elg3Zkl2dk5uVFVOQk5wQUpxR0l5THM1MDEyc0dQVXRhSlllS3VVaktYNzc4?=
 =?utf-8?B?a01jMnQzaTBuUFcxbk9DTk0wcHFJVXpLai9mUFJMZ3ZOU01rbmFPTVUyZnZL?=
 =?utf-8?B?ZlZOa2FUeTdoRUlxc3dxWVFwTzFGU1Zsam1Wa29ZdHl0QjljMUpjU0NudUkv?=
 =?utf-8?B?MVE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e82fcbc1-991a-463d-f50f-08dad36d7409
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 07:27:09.4767
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BP0BEo4axDJNKIW9uIXASARyLlmKnLlHbUOuKaOrz78Oc68pP8L8V3OWuXg8jK25vfU+pYzQFmUFcQoWePcyNvY6rsN7JnuYbgUsUYg1INY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB5892
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_232712_463363_8583CB79 
X-CRM114-Status: GOOD (  16.39  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v2] regulator: rk808: fix misplaced DCDC_REG5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 11/30/22 18:14, Ahmad Fatoum wrote:
> Driver was written to mimic existing stpmic1 regulator driver, which had
> the implicit assumption of a 1:1 relationship between of_match_data and
> regulator configuration with same indices.
> 
> Yet DCDC_REG5 was not at the same place it was in the rk_regulator_cfg
> due to likely a copy-paste mistake, leading to possibly the wrong
> regulators being controlled. Fix this.

Cool, thanks for the fix!

> 
> Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
> Suggested-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>

> ---
> move entry in rk809_reg, not rk809_reg_matches to keep same numbering as
> enum rk809_reg_id.

Note that I haven't tested your patch, but v2 is identical to the fix I
have applied and tested in my setup. So it should be fine (TM).

Best regards,
Michael

> ---
>  drivers/regulator/rk808-regulator.c | 27 ++++++++++++++-------------
>  1 file changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
> index 39eadbd3ebe5..f8bc31f354e2 100644
> --- a/ drivers/regulator/rk808-regulator.c
> +++ b/drivers/regulator/rk808-regulator.c
> @@ -526,19 +526,6 @@ static struct rk_regulator_cfg rk809_reg[] = {
>  		.enable_mask = ENABLE_MASK(RK817_ID_DCDC4),
>  		.enable_val = ENABLE_MASK(RK817_ID_DCDC4),
>  		.disable_val = DISABLE_VAL(RK817_ID_DCDC4),
> -	}}, {{
> -		/* .name = "DCDC_REG5", */
> -		.supply_name = "vcc9",
> -		.ops = &rk809_buck5_ops_range,
> -		.n_voltages = RK809_BUCK5_SEL_CNT,
> -		.linear_ranges = rk809_buck5_voltage_ranges,
> -		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
> -		.vsel_reg = RK809_BUCK5_CONFIG(0),
> -		.vsel_mask = RK809_BUCK5_VSEL_MASK,
> -		.enable_reg = RK817_POWER_EN_REG(3),
> -		.enable_mask = ENABLE_MASK(1),
> -		.enable_val = ENABLE_MASK(1),
> -		.disable_val = DISABLE_VAL(1),
>  	}},
>  	RK817_DESC(/* "LDO_REG1", */ "vcc5", 600, 3400, 25,
>  		   RK817_LDO_ON_VSEL_REG(0), RK817_LDO_VSEL_MASK,
> @@ -576,6 +563,20 @@ static struct rk_regulator_cfg rk809_reg[] = {
>  		   RK817_LDO_ON_VSEL_REG(8), RK817_LDO_VSEL_MASK,
>  		   RK817_POWER_EN_REG(3), ENABLE_MASK(0),
>  		   DISABLE_VAL(0), 400),
> +	{{
> +		/* .name = "DCDC_REG5", */
> +		.supply_name = "vcc9",
> +		.ops = &rk809_buck5_ops_range,
> +		.n_voltages = RK809_BUCK5_SEL_CNT,
> +		.linear_ranges = rk809_buck5_voltage_ranges,
> +		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
> +		.vsel_reg = RK809_BUCK5_CONFIG(0),
> +		.vsel_mask = RK809_BUCK5_VSEL_MASK,
> +		.enable_reg = RK817_POWER_EN_REG(3),
> +		.enable_mask = ENABLE_MASK(1),
> +		.enable_val = ENABLE_MASK(1),
> +		.disable_val = DISABLE_VAL(1),
> +	}},
>  	RK817_DESC_SWITCH(/* "SWITCH_REG1", */ "vcc9",
>  			  RK817_POWER_EN_REG(3), ENABLE_MASK(2), DISABLE_VAL(2)),
>  	RK817_DESC_SWITCH(/* "SWITCH_REG2", */ "vcc8",


