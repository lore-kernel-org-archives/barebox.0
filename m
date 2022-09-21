Delivery-date: Wed, 21 Sep 2022 12:02:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oawYx-00BDiX-SC
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 12:02:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oawYw-0006lg-8j
	for lore@pengutronix.de; Wed, 21 Sep 2022 12:02:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Q+Xb3g4hUO1hgWEosTY+ThY71J0l7V63eMlgX0x5cw=; b=ZIwcadEdQ9IGyPoBvAOqn6qBk/
	GUT9Q54HAMgaJ5dQltCD+kXvBu8eA8kN98FcPsuAhjiWReZjVZYXaHAQG6QNOsFyS/EK3JoRuHJFU
	+5AQwYhnMfafLCj1euH9UgiOAzsj5Ai/FOVrcwAkaOm6PJAGC6ADZpwpMY7BZjrHsSTVUjW3vCDeD
	3FRqDkUe2DeAlqvHVzIjHbxuaOANXXtk9AOFL/4dbJEzwiT/jtYdXY5u6EXbagc7r1XnF/vbyoL9f
	FrRE4NHxoT3l0fioRuf3apSnwPj75V2giEB3iiHRCEiEQwslN9WY3lPeLDaOE+NBpO+RIcC8rC9v2
	SL6E1bdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oawXG-00AhC1-C3; Wed, 21 Sep 2022 10:00:54 +0000
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oawXA-00Ah9V-7y
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 10:00:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cIxecSwX5dbktFpSlloz6emKEMXBac8uhnj6HI8FBlTyHRmtWxBp4HdtmGEtqzSweKy7b3tH+2gTCmHH73GWUOshvguW9BwOIe3Iv2aP3ICgzdvqFkip65+d+63lutO8HTwjT7prCSgfql28j/zE0YVPLLTSYxsKT/kkJSAJ7FrG4V//YUtZ7K1ofom/o27emcwlpWnCPylzA79SLoZ+WIn8EWZiDMuibRBegciQywPVhTqebg69cIBkheuORed8FVkahe1slQH7V9j9W6QllcD2T1oF1PkcxdUheNEv0RZ9m6D22TUqK53cl6F2ABie4ocSBzmyZDptcbjgTJy4Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Q+Xb3g4hUO1hgWEosTY+ThY71J0l7V63eMlgX0x5cw=;
 b=T6apvzdj1JTjpnwQMIM+tKYlX88jtghncWRIXowGyEDg9n6cy+yigg7ilXYztYH0MXh2hImSNY8KWhzjqseQn/zhrpBzW1oEEzRX4lttX5xvf6a1G9CjVzhQTAxoG6NIAgGD0/N74K1dKmi57vEg4DNKpoh+ZdJBCeJSjmIURnTH9m8s/oa7lxFLjNVME3lQk/YumxYa55wu/NwwuPTmT8i2nFHBdKEg4e2jW4AgON1COCGWkLUmDqPsZN85ok36UJw2EmWqaAy48X9/AhA0tR+qUSYkvcrI4PKzcMK12Bq4YVL2yduD2+ptaGQqj8+4+HH7Ni0N5Hg0R1Y9ggYtvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Q+Xb3g4hUO1hgWEosTY+ThY71J0l7V63eMlgX0x5cw=;
 b=eSNg81yV4yPQxeeg/D/IfQlrutKdwKjudJgqpY5vWuFdO7RInwuVx8Tebyqryc+RmV9apbjYHw3pBRZ5ZNBGpEJ8wVqk8m4AArq/csAqe7USCaG/EIx9JF+4cPloos4Z9S+KDum0G0f2ZTtvK7chUG3rILji+0aD74bGv8fDyU8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV1PR08MB8238.eurprd08.prod.outlook.com (2603:10a6:150:5e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 10:00:40 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 10:00:40 +0000
Message-ID: <521707bd-6b5a-af0b-1976-7f971d90a9e7@wolfvision.net>
Date: Wed, 21 Sep 2022 12:00:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220905100717.150557-1-michael.riesch@wolfvision.net>
 <20220905100717.150557-2-michael.riesch@wolfvision.net>
 <2ab1b3d8-eff0-f012-94bb-a6ddc61b982f@wolfvision.net>
 <20220921075705.GD16312@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20220921075705.GD16312@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0213.eurprd08.prod.outlook.com
 (2603:10a6:802:15::22) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV1PR08MB8238:EE_
X-MS-Office365-Filtering-Correlation-Id: a69e2302-ec37-46c1-32a4-08da9bb823d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	L8OsKwvsAEoUXB2nYHkd+KNICi/hTjm2DU3CC2dzRkG6e92E7eA+JGQt3Tfv4gfkBv2g3JhYUyxqPP1YaZn/aLGLEmCcr4CD52isN9qK1OFcyEwTjUOyekk41m1GXlXpxZdDm2gmfIvJxG6OWRFvOhftsFJb87Ce2i1BIYoh4NgZy7pV1ieEkbkDgAH0DeJ/nF5JG19axhWReppPCAcfXVYa4aj3GXnh4XP0HMqVMUZEpWpGRu5oU6XTIORPlaSZrv4rQxtemZ1PskgUiMa/vnsihbognvIkr5ak+Qsim/SyaI/207dXVPxkTNW4XSPUzTLYZ9ydUI1a++oA61pNzPLm2Pmp+YdMxXTK4bgd558LhoseM+mTG0ApJJET2CtIABZ0S4mPzXzCwboAjSyTw9gkA48Svo9rXLoSUeh0hXc8UeA/RJLFwtLCW69lYFhAZ0OlmZYMX5Lx8nsvJLp1dF70AcbY2ahPYpemoib5DajMdR7FjZ9G0fkMFCkAHgjFcYtl/78XcJ01y8VbxTSIt5UdqXXKPeD0jJNh9mRESpkHjYnlEStrBNd0J0eNhFSHm8NzRNcAe/NsQDJHWfKuVXCk/5aX2XvtXyyuNt+n1WdleDMvS2Yb/x5YBxKF2OGTQIaIMQsnysLobbbVhLQ0Ysu7HHRvbefnCp4iDqGFMMD1X+XRJ0L0i/qJIh40nJbcTbY1WwsKwGCu21IWZnfDUmVVa+KrMpLHb1Pzx8P5XLDeOMTxGXpBiYqQpEwFGT4lUAKRed1gCOqzvCsS/ofqhKtZd97Rqec6IP7mxGwsw1nVcxHdqPVzNg4WPs0Vs3EU
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(366004)(136003)(396003)(39830400003)(451199015)(36756003)(478600001)(6486002)(31686004)(38100700002)(38350700002)(83380400001)(86362001)(31696002)(186003)(53546011)(6506007)(41300700001)(52116002)(4326008)(36916002)(2616005)(26005)(6512007)(2906002)(5660300002)(8936002)(8676002)(66946007)(66476007)(6916009)(44832011)(66556008)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?b1ZzYWgxeDFrSEdJd1lWSVZQcGxvMzBweWhIT1pvTlBBYkhoUFJHa09SNjVq?=
 =?utf-8?B?elNwTS9MUmRET0hoZjdlVWVYK2xwRUx0SGUrenMyTVdNZHFkU0xPelIwcUFv?=
 =?utf-8?B?dzNmZ0ZNL1VhaU13MEtYSytjUjBzWU55anliU2lKOHN4b0Q1L0hZQ09DV2JX?=
 =?utf-8?B?NnV4OTRaVVlIN3pjTnUrSHEzbVhyWWtiZHkwZ1djVUk0YTV3SUp6VkVqK2FS?=
 =?utf-8?B?RWdKZCtlZmlGVGIyRGxmUUR2RnJQWjdXQ3VXZkFEZ1JLcm1pOW5mVW90TjBX?=
 =?utf-8?B?K00vMDZQRFp4TmJibzZLUitLVVZidHpRd1R5VG8zbmR3QkVzY2JSVXMrOVI3?=
 =?utf-8?B?a3dJY1RGL0gwYXdtVzltREFqTGNyeHNPck5nZVhoQnliYTVSZ3NEWnIrZHhG?=
 =?utf-8?B?L0g5S25EUjd1MkxNMGZoSHc3V0xpMzJwTmcyM2NvcmJraVIzNGk0T2V0Qy9q?=
 =?utf-8?B?RmxiNXZsdWNJNnE0c01MMUVRNSs4emdkSytLYXl5dGtKWWt0ZEwzSFdRUGY0?=
 =?utf-8?B?OGFLMUNub1RMeCtWOFRQWGNHRmwwT2tzM3RQenluQ0F1MitQTWNJcmxKUXp5?=
 =?utf-8?B?RnZ3ZllRSkxRZ2d2b3lrOUdBRjBuV0QwYmxwV1NnZVVna0E2N3FYSWZUckpD?=
 =?utf-8?B?UmpNQ3ArMytyckVpZXladG1wczlYd2RHZ09aZ1g1UHJXWERUa1llZGxGV0ND?=
 =?utf-8?B?NGNSNG9mN3ppRHJRdFhoUnVHQ0d4dnFEWDJRcjRCTDR5QTUrbCtMRDRaL3ZY?=
 =?utf-8?B?VHdFMHM0V2tlZFhaNXZVLzE0eWtXS3l6L05qTTRZbGxyRkdldmZXbGg4dHlE?=
 =?utf-8?B?eEVDeTI1K0JURGNYVHRKZEtOZHRiTWk1OWxoU2FnNWtzTXl6MVBkSTNwSGNK?=
 =?utf-8?B?Tk9QZVZnbkR1UjJCM3dlbWgyS2tiYmh2M1hTbWdiNGVNcU9sNUNtbGZjaEU3?=
 =?utf-8?B?dDQ2ajRWamdSQ2ZIMmNoVmV3c1NDZG40RlNmc0FzK2RhSks5S0EvVFJFRFFQ?=
 =?utf-8?B?elFGVHg4TzhoOFI5dWtXTURRajQrSTZwbjhLREpFdHI2SndjTWlsSUt6RE41?=
 =?utf-8?B?WXRHWldPeTFxUWkzemhmRXcxS3ZJQXk0Y1lVZE0xcEdKR3lTTFgxWUVzZFZR?=
 =?utf-8?B?QmdWUUIyWXVKWGd4Mis2emJhMDZOcDZ4RUcwNHN2MURBbnpkY0tGOEVOaHNo?=
 =?utf-8?B?UzdqYm1iSkJNU3UyRGRMdUtuQ0xHM05MVGk4SHloc1pLYmRDMzFFazM2Tmw2?=
 =?utf-8?B?aEtKenBNVUdBRC90eXJod1pBZ3RoclhuM2lqM0pqbDhBeU91ZTROaWt4eTZH?=
 =?utf-8?B?NWtwUVlqNnFtRzRMU3pLMWdnbXhVeXBJTTY1OXVwRjB4YW1FWUxEYlVUdU10?=
 =?utf-8?B?U3M3L05GTG96eFRrbnEyTVMwZmNpWGNObkZkQW51Tmg2c1ZNc3ZXKytsVHJ0?=
 =?utf-8?B?N3VkRWtTMkduSmFIRmpBRkFhbG1FcGY3d00reU8wdnFsRCt4ZGY2TlhGNUVE?=
 =?utf-8?B?LzdaYUdoNHJyeFdhanV6Y0I2SlBqSzg0S3FRMStsQUZiZ05GSHpqRjZHUVdB?=
 =?utf-8?B?U1F1UFlaMnBjdk5FcEdsZU15bU9mVnVPME1hNkw3Q2lmdkQ3UlNtcVBYT1hl?=
 =?utf-8?B?RC9WaEpyakk1SmE1WDJrMmlrcGNQYjJzaWtZOG9Pem9ENlhMbm4zSjhzRDl4?=
 =?utf-8?B?MFNOZnNtTC9lQzVFS3NVUXRjZDhyVGxxSTJPdTlJWmNEV2NPTE1yN3JZdmkw?=
 =?utf-8?B?dGxQMTZ3L0RqSGlWR3lQT1pNRHVBNkI3T0hpV0t5bmpwZnE1QjVyTk13RVVQ?=
 =?utf-8?B?VmhNQlY3Q1lXaG1qVk1SWnFhQUFVaklMSTF0QUZuaU5STFc5SnI4Rk0xOFpz?=
 =?utf-8?B?NE9kanZKYTJMaXJMYkhjVzNOYS9PcVh6d0t5YzZPWm0xK2F5blpVSHB6WXZo?=
 =?utf-8?B?U1Z5T2hqcXZ1V0tibmthWjNVY2lRNjJ1VzN2M3VUMU5BREtmcjhhZWFYd0d5?=
 =?utf-8?B?aXRndVZEWFgwdlR1WFFaeEVkbWpFZkVRWVhHUUx2RDBCemhqa0NBWnhuZTVY?=
 =?utf-8?B?NzBGSFEydGpOcVRIN0ZnblV4Y0NiaE9LQUlSNlFHMVpucGxNTXY1aGNQbFNB?=
 =?utf-8?B?Q2ZrTnJjdVc5NEs2LzE5SXk2emFTeWFQbWVHeEVpSHVSRmVNbVc0cy94Nnlp?=
 =?utf-8?B?OUE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: a69e2302-ec37-46c1-32a4-08da9bb823d1
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 10:00:40.4640
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cnelc32Uu3tZsUPjIuRuTTHRo1DeFSLlemZjGko9+rO1/e011N8EwDyamEgePfny5Onkwd8aumijuF+f62ALjGORUp2BNON0sMUpY54NQM0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8238
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_030048_518705_BB65D263 
X-CRM114-Status: GOOD (  30.08  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] of: overlay: improve error handling in
 of_overlay_apply_tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

On 9/21/22 09:57, Michael Tretter wrote:
> On Wed, 21 Sep 2022 08:55:12 +0200, Michael Riesch wrote:
>> On 9/5/22 12:07, Michael Riesch wrote:
>>> Propagate any error from of_overlay_apply_symbols and let the user
>>> know if the provided overlay is not applicable.
>>>
>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>>> ---
>>>  drivers/of/overlay.c | 14 +++++++++-----
>>>  1 file changed, 9 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
>>> index 20a43f5170..20686db511 100644
>>> --- a/drivers/of/overlay.c
>>> +++ b/drivers/of/overlay.c
>>> @@ -115,8 +115,8 @@ static char *of_overlay_fix_path(struct device_node *root,
>>>  	return basprintf("%s%s", target->full_name, path_tail);
>>>  }
>>>  
>>> -static void of_overlay_apply_symbols(struct device_node *root,
>>> -				     struct device_node *overlay)
>>> +static int of_overlay_apply_symbols(struct device_node *root,
>>> +				    struct device_node *overlay)
>>>  {
>>>  	const char *old_path;
>>>  	char *new_path;
>>> @@ -129,12 +129,12 @@ static void of_overlay_apply_symbols(struct device_node *root,
>>>  
>>>  	if (!overlay_symbols) {
>>>  		pr_debug("overlay doesn't have a __symbols__ node\n");
>>> -		return;
>>> +		return -EINVAL;
>>
>> Come to think of it, do all overlays need to provide a __symbols__ node?
>> If not, this check is overly strict.
> 
> Overlays don't need a __symbols__ node. It would be only required, if overlays
> are stacked and the second overlay refers to nodes of the first overlay by
> labels. Having no __symbols__ in the overlay is a success path and the message
> is just a debug message.

Thanks for the clarification. We need to fix this one, then.

Seeing that the patch is in next: Am I supposed to send an incremental
"fixup! ..." patch which can be squashed? Or should I send a proper
patch with a Fixes: tag?

>>>  	}
>>>  
>>>  	if (!root_symbols) {
>>>  		pr_info("root doesn't have a __symbols__ node\n");
>>> -		return;
>>> +		return -EINVAL;
>>
>> Ditto for the root.
> 
> I'm not sure what should happen, if the root does not have __symbols__.
> Barebox wouldn't be able to copy the __symbols__ of the overlay, but this
> still wouldn't be a problem unless overlays are stacked. In the stacking case,
> only applying the second overlay should fail.

I can reestablish the behavior before this patch, i.e., __symbols__ is
optional in both root and overlay.

> Maybe, we should add a new __symbols__ node, if the root doesn't have a
> __symbols__ node?

If this is desired, I can implement the change -- but is it desired?

>>>  	}
>>>  
>>>  	list_for_each_entry(prop, &overlay_symbols->properties, list) {
>>> @@ -148,6 +148,8 @@ static void of_overlay_apply_symbols(struct device_node *root,
>>>  			 prop->name, new_path);
>>>  		of_property_write_string(root_symbols, prop->name, new_path);
>>>  	}
>>> +
>>> +	return 0;
>>>  }
>>>  
>>>  static int of_overlay_apply_fragment(struct device_node *root,
>>> @@ -190,7 +192,9 @@ int of_overlay_apply_tree(struct device_node *root,
>>>  		goto out_err;
>>>  
>>>  	/* Copy symbols from resolved overlay to base device tree */
>>> -	of_overlay_apply_symbols(root, resolved);
>>> +	err = of_overlay_apply_symbols(root, resolved);
>>> +	if (err)
>>> +		goto out_err;
>>
>> If both checks need to be relaxed, the complete patch should be reverted
>> I guess :-/
> 
> What did you do to run into this error? What was your expectation?

Well I tried to apply an overlay without __symbols__ :-) (which did work
before).

Best regards,
Michael


