Delivery-date: Mon, 20 Sep 2021 12:24:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSGTE-0001AG-Rw
	for lore@lore.pengutronix.de; Mon, 20 Sep 2021 12:24:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSGTD-0000AS-JE
	for lore@pengutronix.de; Mon, 20 Sep 2021 12:24:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1HW8notxMD360rMGwos2p5em3+UzGyFg5JB6fV6dTqs=; b=YAbc3SukUKBcI6TcSqiIJ4Uq8e
	YmgFsJ+xaPiG2Yj6J8X5sxr4P8pd55r+tGJi5nW9OZGbbCxD8ZL+/TxmcPzAoRWbqT3QxOd0rE6pz
	2QCzihK3ojmU3anuvdYF1zWwdPzRyNG76wOOB5hENansjuLw50ezyQK6xyKvaEc6ELXQ8Dt1baBjI
	JnNM9P40/Jil3LXWKffrWg/l9+Fz7kdyluP86HIoPxt9cnDvg6Fuaz95+qMgv0HaoqLpMfonTY4ac
	yAfQ4bM6AoUBQbqoOozilQ6AI0FaLcoLKy3psg5cF6laFPODVIiA9S369hMn1sCiUGX8tP16Gz/Xa
	gRiFgdZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSGRR-001Gxn-9o; Mon, 20 Sep 2021 10:22:29 +0000
Received: from mail-am6eur05on2091.outbound.protection.outlook.com
 ([40.107.22.91] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSGRK-001GxC-TJ
 for barebox@lists.infradead.org; Mon, 20 Sep 2021 10:22:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MxlkgWMeigcPhN5RtK0FXVL6dFyVCXQ/5Ud3YVqMfPW3tqztlwK1FeTJOpWKFe03wRCqSZXc8+dmwKQskQ0YY33LVGVGuhCTlgVsMBt7qCQ3bQ5tIvlthlT6CrK6t6JdNPgZBEZCdeNBQxDBr1spXPSY+ZgeEWbpc0I14gT7kNbWAoxVCWvrdA5dmxBi/rVvdV3C/TU+6WXh/FgGt5hfghzpZj/oAstOoW/nUnFHbMzgB6nOgvFZhH6CJg0qZNfQc2t8djNweuAhyaDVyjUZYS7kWl0nrsvmx9NCyv3r64XuFazflOKXkaK0DAuN9Opyv1XYwQXUlbw5mb0YC3FFcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=3q0bLUj7WhVMhBKWNbERYr5lU9BG4yuffsoq+BrFyjs=;
 b=NloINU6gR896R5uSCO1o8DAALPcLOiISky3wqYZ4xny7LNjz35P1GSSwabHZyy6dXntnV5evIHEX64j2t6i5Exm5z+ndA9XNvsSLYZkzvsyal+LClar1154OZbJnUnyLAHq+3TfhdnJiYbnSHRZBbvsDrWbmOf8oyoGzZf3TAZjcVFz92kfVjUWW04wvVVTMtz2X7FEHflxzGBgqJY0q0s0qhnhUuQAqF2BZRCwmmQXhMd96wDJxxWzRM9/REkvV3XsWUBnt0sOJqPyDgj3coTDWkDq/uq80pKwloa0SidJL+pULCrH7zPDNEVCQEO0cMEVbONuddDkMj1tREMfEtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3q0bLUj7WhVMhBKWNbERYr5lU9BG4yuffsoq+BrFyjs=;
 b=VRRSw6qXKuHoPJjI7OOOdIN/Ghjfz94/iTX24sVxkVoz/yLWmzwnIgJbVisDdlROx/BS33HVIgj1exZ5QFaTPZbFxReF1p+vtYd7esfjsC/ztdo1i74wGx6xJ6KlxQq9+vKQ/x1h7kOz4JmR1EJlobgHO1FLHmu6PROQaIpjpe0=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DBAPR02MB6024.eurprd02.prod.outlook.com (2603:10a6:10:179::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.17; Mon, 20 Sep
 2021 10:22:17 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Mon, 20 Sep 2021
 10:22:16 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
 <d4eb8281-121e-91a3-7300-83336ba0f285@axentia.se>
 <e14fb2eb0ea344ac272b823c51ee3a4049a51c33.camel@pengutronix.de>
 <02b09328-e300-f36e-4cc4-daa7afb47ad5@axentia.se>
 <aa1fb3a8-6d97-1c3f-ec7e-82489c8ceb0a@pengutronix.de>
From: Peter Rosin <peda@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <67c53b6f-0d7d-53e9-6441-a17984197198@axentia.se>
Date: Mon, 20 Sep 2021 12:22:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <aa1fb3a8-6d97-1c3f-ec7e-82489c8ceb0a@pengutronix.de>
Content-Language: sv-SE
X-ClientProxiedBy: AM6P194CA0095.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:8f::36) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 AM6P194CA0095.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:8f::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.16 via Frontend Transport; Mon, 20 Sep 2021 10:22:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8597bb6f-69bd-4c08-81f9-08d97c208551
X-MS-TrafficTypeDiagnostic: DBAPR02MB6024:
X-Microsoft-Antispam-PRVS: <DBAPR02MB60242AA9767D7C2CF949FF29BCA09@DBAPR02MB6024.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r7OT+ydoxwgFVHNt6Qd3JuO3kO52xMsPf5xb8EdE+3cvJNEi92Z/u7U6OVUmqTzrIYV7TvMrTbTCmwU4rU5V9TGqkb62anhwunPor/6H6fr6rBx0dYpFqcJk5ZgadeIBY8GcZG/TlJviLK7I80QceKx83ykTKd1T5BKLSGg1auceUzn1iQXb2TTePMXTKmrKkqzUcAdclB5GdqbZhKfa8rY8oI1NJoJmRvl2P5m+UhECQmOPpclhebeziF9WgRogPXfSygcqC8vzSziAddZ1ey5zFmeXlnBhOsOPDjANrE+ZHUHwIdhg1qwPJ6JGH5VGNaSXy4q5bdIGAh07ozM4FJ4+jzqtpEsDwZtdqo8my0FroeJ0gFQNp1FOByGL/pdB/RsvUM60v70qeLYUl+g/0hVLQIwiiMvzjHW7Ds1+1ustvNuSgHAT/dv1ehUz7wl9qMBZMjFA1wMuNgUbU6bEBze+HcXV8+3DoIDen9jYtsk+WCTmiiC8YjtR47CuFPV0xT0hgPrs7UaUjZyyEe2weoeG6UvqoyuIRIgMsuFux8grDHhJ6ckArGMMFhGOET75iHV/IDlJbaeXTip533WlHz6iRkh+HFnjKsAbKcKf2TpSCU2QhILilU14k6fTLsf2jOG3ycPI5Jc10ncQXodcHH9Y7g3pYvvWdoD3CuDVfR85B8JbdeKyjbx3/Eso6zGjdA3o5LIBzIiKuwZ/h1vUdcN4z8MSsJEQ1U84Rf4CF9g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(136003)(346002)(39830400003)(366004)(38100700002)(26005)(5660300002)(186003)(31696002)(86362001)(6486002)(66946007)(8676002)(31686004)(956004)(8936002)(83380400001)(478600001)(110136005)(2906002)(316002)(4326008)(66476007)(53546011)(66556008)(16576012)(36916002)(2616005)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzhmRlhxcWhzK1FMYTF3RWMrcjhxOU9pa3BpcUs3aDEyL1ovM3B6SnFvbHZP?=
 =?utf-8?B?bWRRYlQrVGl1NEtobUl4UkMxaXN2YXlxK0FqRk9OMk53Z3NGTWRJRXBvWDdj?=
 =?utf-8?B?ZlM4dmI4Z293VDVtOFkxb1Q3OVV0TDFFK3l1TVlRaW9maUJ2R3Ivekl2NTRm?=
 =?utf-8?B?TVg3dlJwQ0hnem92U1dRT29KTnlxaUUvN1k3V3hZc3dPQ3o4MWV0QmxaRGky?=
 =?utf-8?B?ZXJNSTFPaUVUcDVIR01JdmlZSHRFN29NOHA3dXVCeDhwMGMrTkExQzJuY0xY?=
 =?utf-8?B?cWpWdGRhcUhXbHVUbTNyUzlCTUNtTzBGc25rSFgxaDNyUnlSaHlUR0ZLUHp2?=
 =?utf-8?B?S2l4K3VFK0RrVzBJczdKRVdFYmhUWnZjWURrVGNwSFE3WWNLVEJsTGZPM3RY?=
 =?utf-8?B?aDNKWXZqVkNhUVdJcll2aElNOHFNaXp3NWNpZjErY3E2KzlVNUZrSkNYTE5a?=
 =?utf-8?B?T0pXajdXcytWT1g0RW9aTjRzeE83Wk85Ynp0TUI3US9uMzB2WjZVaUdDVTRq?=
 =?utf-8?B?MVE0K2xGcFRTM2hROXg3ZGsyS2ZOYzJwQW82U1VRK0UyK1owNElMdnRZWWp1?=
 =?utf-8?B?dmw2YklsdUtPaUVDR3B0cWVKdnBPS0ViQWxhbkVodllTS2drTVJ5UCtZOG12?=
 =?utf-8?B?VWxuaWQwNEJqNTJtK0ZIOWs2bHpUUElOUHA4OEVRd1RHNVVYa3lRbk9LeGYy?=
 =?utf-8?B?Vi84dG1paGE2M3dCNTVubFlRcDhrNkh3VzZ0ODlhVHM2TmFoR1VVRkNvbDlX?=
 =?utf-8?B?OEVvOFNGVnNoak9LOXl6UlkrRkRmS0pHZXJOTXJCZThkWHNTU084bFljdUQw?=
 =?utf-8?B?TWo2WldXTVRUcGlKeTdybmFZdzBLbnA1SmVuZTVxd1FOajBwQ3dZMkpNYnc2?=
 =?utf-8?B?QVdPNnJFcHBGVWkzZjQzZWtNTWxLYmJJRmRWMzB2aXoxckpPMnlGQ2J2YjJa?=
 =?utf-8?B?QnBYMFFTK0ZDK3NnK09EMzA1aWk0UGt2WEFaWTBoLzNYOFRBaUo3UncvbEtD?=
 =?utf-8?B?cWV5azZPaHFLR2VMR2o1L0tDSDlLVStrVTBMcnVJWkdSWmk3OXoxMG5rZ1JC?=
 =?utf-8?B?WEQ0MmZTdUhyYStpaUY1TWdLRXloRVhBYVNJUkwrVHdEZEFXNjlrcm9iNjNx?=
 =?utf-8?B?T3FuU2RmN3lUQ3Zyb2Zodmh1KzJkWUF3M3I2VHZidU9UZlpESWtYaTdSa3k2?=
 =?utf-8?B?ZUlRMnYrYzVMa0dBdDVWS09Jc3N4UlNaajF5L2Q3TjdnbldrUWZWcjdJVGRK?=
 =?utf-8?B?NTlXaFp3a08xSnNQUnFvYy9XaitpbTNhS050TVlqaHhnc0FOdUx4S2NzNDVy?=
 =?utf-8?B?WHNjYk1zWEZpWEtFWERUQnVBVTVqbjBKdDBwRGpDY2hIU244SE52MGsxekd3?=
 =?utf-8?B?cWdvYmlZU2hkbmFSOXR2Wk5FMVBpbWhrTUpoRFZDQ0p3Wml3Nzg1VHZSZkFH?=
 =?utf-8?B?dzdQWktjN0JHSmdTN1FNcml2Qk5mem40dUFiWkZvSkUwc3VOOWJFaGwzejJ0?=
 =?utf-8?B?MFVMeGlKTmVNeDNTKzFnR2xVVTdhV3hPZE1CTDNPV2xnNm5aZm9ucVdndmlT?=
 =?utf-8?B?VVhaU0FKRC82Kzl1T0dDWTB5ckRRbTMzbFpuYWtNZU1XbEpBYTh4VXVraXJB?=
 =?utf-8?B?VHhodFRqZk5Nc3BjR3A3YTRaZGtDTDIzcjhUazRsMGdUUVljU3BrVDNLK2xV?=
 =?utf-8?B?N0ZSWHl1VldPQlIwYmlxVE5HaG1Pc3k4blJyMitnUi9HRVhMaVRUNTJGcUpT?=
 =?utf-8?Q?OOfBDXM3PhXKDtSO80sXV+ZgrSb7oH3HOvoj+k7?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 8597bb6f-69bd-4c08-81f9-08d97c208551
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2021 10:22:16.8324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vqX2PGJmnqzKkagy1NlolxPkMBwlUTpr1KfHewUoeQjsY6ClO2fISdx8K3ZP8P4T
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR02MB6024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_032223_226763_8CAC2B6A 
X-CRM114-Status: GOOD (  16.92  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] Revert "ARM: mmu: use client domain permissions to
 support ARMv7 eXecute Never"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2021-09-20 11:14, Ahmad Fatoum wrote:
> Hi Peter,
> 
> On 19.09.21 09:50, Peter Rosin wrote:
>> On 2021-09-19 09:06, Rouven Czerwinski wrote:
>>> Hi Peter,
>>>
>>> while this may break for your board, it fundamentally introduces the
>>> possibility to speculate out of the RAM area on speculation happy
>>
>> I'm aware of that. For me, speculation is not an issue since *any*
>> rogue code running on the embedded device in question is a major fail.
> 
> We have seen Cortex-A7 CPUs speculatively executing I/O memory. That's
> why we mar everything eXecute-Never except for known memory banks and
> expect board code to mark any further regions that are safe to execute
> manually. 
> 
>> Also, from the cover letter:
>>
>> "I'm going to follow up with patches. I very much realize that
>> these patches are most likely not acceptable as-is, but I do
>> include them since they are probably the best description of
>> where the problems are."
>>
>>> processors. Are you calling into SAMA5D3 ROM code somewhere? If so an
>>
>> *I* am not calling anything. Maybe the board code for sama5d3xek is,
>> but I have no idea as it's not "my" code. How can I figure out if it
>> does?
> 
> If you don't revert this patch. Do you get any output at all?
> If not, enable DEBUG_LL and see how far you get before hanging.
> 

No output regardless, if the patch is not reverted (patches 1, 2 and 4
still applied). I only get the following from ROM code and bootstrap:

-----------------8<------------------
RomBOOT


AT91Bootstrap 3.10.4 (2021-09-16 21:12:56)

NAND: ONFI flash detected
NAND: Manufacturer ID: 0x2c Chip ID: 0xac
NAND: Page Bytes: 2048, Spare Bytes: 64
NAND: ECC Correctability Bits: 4, ECC Sector Bytes: 512
NAND: Disable On-Die ECC
NAND: Initialize PMECC params, cap: 4, sector: 512
NAND: Image: Copy 0xa0000 bytes from 0x40000 to 0x26f00000
NAND: Done to load image
-----------------8<------------------

If I also include patch 3 I get this:

-----------------8<------------------
initcall-> 0x26f025f8
initcall-> 0x26f07024
initcall-> 0x26f0d108
initcall-> 0x26f0e218
initcall-> 0x26f1fd5c
initcall-> 0x26f39b74
initcall-> 0x26f4090c
initcall-> 0x26f427d0
initcall-> 0x26f239b4
initcall-> 0x26f239a4
initcall-> 0x26f01494
initcall-> 0x26f1f8ec
initcall-> 0x26f1f9f0
initcall-> 0x26f34c08
initcall-> 0x26f3961c
initcall-> 0x26f41204
AT91: Detected soc type: sama5d3
AT91: Detected soc subtype: sama5d31
    probe-> at91sam9x5-gpio0
    probe-> at91sam9x5-gpio1
    probe-> at91sam9x5-gpio2
    probe-> at91sam9x5-gpio3
    probe-> at91sam9x5-gpio4
    probe-> at91-pit
initcall-> 0x26f0fc40
initcall-> 0x26f40878
    probe-> atmel_usart0
Switch to console [cs0]


barebox 2021.08.0 #1 Mon Sep 20 12:10:05 CEST 2021


Board: Atmel sama5d3x-ek
initcall-> 0x26f025f8
-----------------8<------------------
etc etc

So, debugging is working (I added DEBUG_INITCALLS and DEBUG_PROBES
in case that would cause earlier output).

Cheers,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

