Delivery-date: Mon, 03 Apr 2023 12:06:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjH4d-008Pkk-GT
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 12:06:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjH4d-0007tt-11
	for lore@pengutronix.de; Mon, 03 Apr 2023 12:06:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EQJ/2mw5c16E+VpWOgtjt92MssrlKpqK8aHoH3c4tRc=; b=vrE9vCEO+EW+it4itZDjNYSP+M
	W/boe49snisQAZCvgBzxPAjmKMDW2rzqJOCMTE6krOhi+aUTQBHkwEDJ4iOddSDcmDqI5DX8Pud5w
	I2op4lS5jzbNFhcBls6w8agx3s3CFw+unEXMy/6jqhIGMETGtrZCi4CgW4LNaVV0dY0jevKkF7MKm
	bVUDWjRErRI924/nS+1977YADVARLVY/BhQvh+3Da7sk3BF27fw9A2yEmYRZ+7g6h5bI+Hoh7ly8k
	Ehact7EXvwN7ELUqQjCFnv+coILvWt2cqTZ/donhsiG1ruZEIBLhBqzGukn/iDruOxcyKNnRNIadm
	o49fIPeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjH36-00Es2B-08;
	Mon, 03 Apr 2023 10:04:28 +0000
Received: from mail-db8eur05on20619.outbound.protection.outlook.com ([2a01:111:f400:7e1a::619] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjH2y-00Es14-0M
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 10:04:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fAS2QthG0EotTIsFRdv4aUkRTi1xf6Jw8MwAU/mXDbR+QCZSfVuIi1NTS/C4xqbxF5RKGKoQKxzE09tm2SsOtsc/WfX8WUe0fbqfJYCi0Hp6LLmVZcijrJQMRjeW0gprTXz4yvPfjLJfOQGevLmFCgTlXNgFF5atuRQ4UCTd6xsmOxjVjfeUcb+eVrkzPYBpkjTePZjFsWk0LY62ZzNhgmSGw+GQ/PJJHSb9xj9SMpxGRcOZkLTyjfVpdR0VIuAULZfRyxm2fLxDr+W5rUPU5D5wFwZcjIfe8eWlskYbg1FrDwR7obVy8CzEePz2tR5WQdvN3okwsvt/8ILgB6nnxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQJ/2mw5c16E+VpWOgtjt92MssrlKpqK8aHoH3c4tRc=;
 b=AO0kr5JFW92Q1MqmDV90Zz93L6Y3ycNIjkKuLJ1VsR0YoEoCU/QIBb5t4mteLepCa/xgM7CvpTuMRZPzVpPouNMFp1Wlk+wBzwB+1ZLHHQio4d2Kq7yIDitAKIfAYSz6Oy5STeuoHhJ6+3oAI4nwgn2+D0LTyf/vCMJQMwG4SNGWsEVR92Rmlp+czOCtk6qjXt9S6PCkjCD20jz4czYNxQ1b0uo9kNDnPKdEUB2LC4S+PPxoXDlduY96qOcRkDJMyTw2rX/mzAOir9NKDWwNlPkOWafFEaqWQS5cl7Ubr5LrJTcSDiDP2eP1bSxzMPzRPMgpPkcpu1hC5ah6BI/dHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EQJ/2mw5c16E+VpWOgtjt92MssrlKpqK8aHoH3c4tRc=;
 b=tmPWJBoE8XvuMp1tWZEtJs43fb+Gp/7N3tr8JjWBqvZCyuAfFPVNvmyfXilqeOJN/RvqWsbGuO0XlxOBuNFOcEisbcPD9lK99zSopc/B4ax7jQPPEadUki+PzPgVZn2K5e4kDiuvn6hZergLu3g195ynP4PIMk69KWrWy+Hae/c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8366.eurprd08.prod.outlook.com (2603:10a6:150:b2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.29; Mon, 3 Apr
 2023 10:04:11 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1%6]) with mapi id 15.20.6254.030; Mon, 3 Apr 2023
 10:04:10 +0000
Message-ID: <ffd88538-ddb2-3b0b-0ca7-3d6bc2533caf@wolfvision.net>
Date: Mon, 3 Apr 2023 12:04:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
 <2b65b588-aa9c-b6c7-a020-807ccea5dc58@wolfvision.net>
 <20230403073202.GS19113@pengutronix.de>
Content-Language: en-US
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20230403073202.GS19113@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0171.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::9) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8366:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ae39589-f388-4215-255c-08db342ac55d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	9nzn3ew2D8fzlj65675fkRlnHGDGn7TXOQxvG/kE9O8/Rrw+npUimMMP8WpGQDQypEgf24EV5Li+xLjF4PB0vGKbhOhjipteGfcvjwPs72saObegFjnMqzUi1n165dsewdjA7bDxMGoElk9pFenXluQjVP6VTrZuYb9iU5SeYfOLXMWTbQbdIbcZkSWmOardAInGzjsQmPTQfQUKlhM3dKdj2ogC0Cxq/Q/9GWuH7pHRUBEjxOx3o8UV/d6oWoPSENdP6CKcJI+zkXDpbttFtzz9/OpdZ5N+lrvrGGkLpDgWGsCQN7+uu9cyQ1ZheyjD/cAFT3tse+Pth7iZx4aquIb7TMeoSO/CGp1WR6oxRXq8dgGClytpn0+RgsvA00otc+q1Lmdz+Jv98bQ3Glsfs2Vw+53BPggaQCv6khMK3UNrIyIbTur1Ol2FLBL9x9eiMkFHuBmuuipfd1V3Za7cnSfnFk7ZFSpLJ7sCKRxOWZRT63NdteRfBnyziAr+DoUjhzIYPX6qUKkYFvYGrzQKEWDbK3Y57FkffuT9DK4C5iKQbc6h5BK25u7hKkKN6teFIEzgreBKyVNM0H7hVW4aBRyNkfr8l0C/iuKvUrZv+/H/ijGD2xGNzw/31Cb7cnGZr98e+OnAyaGBwOX3VbzSqA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(136003)(376002)(39840400004)(346002)(451199021)(478600001)(83380400001)(31686004)(31696002)(6512007)(86362001)(6506007)(66946007)(66556008)(316002)(4326008)(66476007)(6916009)(6486002)(53546011)(2616005)(186003)(41300700001)(44832011)(38100700002)(2906002)(8676002)(8936002)(5660300002)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?ZUZJQ1M4QzdYNmVNWlQ0TjFDdHd3TEdwYXI4cnBsN0VWYmZoLzBDaDhMQkJY?=
 =?utf-8?B?bkxPY2JTb1VhRlFRVXV1ZUxhU09NUFcwK0VJR0hMamI0ZlZBc3BwMVoyalRq?=
 =?utf-8?B?aFFld2d2VkdPUlEzdFVJV2g5ZE5MWC9aa1ZKVW9zTTlSMXdVQWhVZTE4UUlk?=
 =?utf-8?B?Z2NCRkhUbXJYd1hrTmdRSjJEd2VFZHhUZk9nVDB2SytadVFuUUQ5eWgvS2l2?=
 =?utf-8?B?UGU1ZHRTMm5CQ05hY2lXSWNrMzBjd21lSWhqMWY3ZjBYcFVta24yam9CM0Zt?=
 =?utf-8?B?MG90NFdFSjY1T2RYam16T2hKNzFPd0V4WXNldmZiMno2cGlFbUdVUGZkZFcv?=
 =?utf-8?B?dDk5Y3psL0Q4QmI5R3JKdDUvSTJnYk9URjJMNnZFQzRxb1BYMDg0VmYzRVBh?=
 =?utf-8?B?L1dmWU1sS2NsdVBUdTRQampaTTduNnBqUzJ4WWVIc3dUWUt1YWhFUVZqRVUv?=
 =?utf-8?B?NmVMdzNielBKdmlYMlhmQWlUbVdFZjQyS1g5N0d3K3J5Zy9EQ2V0SEp0VStE?=
 =?utf-8?B?RjBkVVd3WC83ZXpPOG04RlgxSzV6Slp6MEhoZi9FMnlyOEhwTXd6UDFHZ3lC?=
 =?utf-8?B?TjJvWS9YbHRrVE1sVGU0dVVjcEhkTVdnVUtJbllOdUY5NTdvMHk0VnRkSWxF?=
 =?utf-8?B?SHBVREltRGxDaDJ6SFE3TnVaRjBqdFlwaDFSc0hyNHNMWGZPaDNlcEMrU3JL?=
 =?utf-8?B?QmduekdjYTdPOC9ENWxCc0RBUkVjWkFuQzVzSUR2amxPZDVrR0FkbjlQTGFH?=
 =?utf-8?B?VFNSTTd3V0pFTnAvT0Jpb0kvb3VrMDlXM29EK3h4amwwUVdBMldack1sMThi?=
 =?utf-8?B?R1JvdXJMbnp2ODJWeDAvZ1dRYnN5WWt6YzNxODNUeWt4b3F4VVo5dG9neVdC?=
 =?utf-8?B?V2I3TXBIWkxuNi9LVW1JTHJwdmcvKzE1dU4rZ2dtUHE2clk3WGtlWFRjZmpj?=
 =?utf-8?B?OUs5dTVLOFVmTHViNXE2UHNHcEJyQXZ0K2dUYzlyc2d6OFgrUUR5eTBnUWlL?=
 =?utf-8?B?NGgyVS9ZV3hXZWxlV1NUbG54ZmlqTzRSYnJxN0ozTkdsUzdndjJJcVJWaWFk?=
 =?utf-8?B?R3Q5cW92WTR6cEdkbFNwNkg3MGEyZTlOOUlFWHNtcTVhUllBb09iaURSK241?=
 =?utf-8?B?T0owOTE1MkQ1SlV2Z01vMnY3LzJoNmFIc2lmYXk1ZVBRQjhHOEVLK2N2aWxu?=
 =?utf-8?B?R1lqL1VGbER0MXJnT1JKM05rQXh0bldiZERhRlJKOS9pbzQvSEx3RnpqUU5k?=
 =?utf-8?B?NE1wb0JQRnc4YWZpUEIwYmc3YWc5ZVFCU0N0akJaeldPUHpxemU2UDVhTVJw?=
 =?utf-8?B?Y3lJOCtnU1kwS0U0NUVvZ3E0UHowdE53RU1pWGZsSHJWUmpKUEJHeGtoRm83?=
 =?utf-8?B?M2VLR3FidlhodFVJemZKakJvQmFaVjQrSnU3cGUvRnFaeDhZVzNaRS83T05z?=
 =?utf-8?B?MUN6ZzlXMG1wc0Y2MTV5dWNicXpnSTR1OWdIU0VocHIzT3RUckUwYzQ1SGxO?=
 =?utf-8?B?djFBUnM0N2lVa1d1ZE1lWVJna3MyNjJEOVMxWVdXUXJ5WWV6M1J0c0UwNjhU?=
 =?utf-8?B?aGZYV1J6dlpOR25sNi9LNTdhMm5ZV0pOZmVrbUdReXpHeS96NXYxc3VZc2VI?=
 =?utf-8?B?bENWcGdRVzM4ODJYcnVMaWdMd3NxVTFZR25LNTZySlg2eWJ1RXgzZS9WMnU0?=
 =?utf-8?B?T0Y2RjRKakhLaVNBdjBYY0pOa3p0Qm1reTA0NTBzZTA0QU9RcW01VEJQMDNS?=
 =?utf-8?B?WVVSNTNjSHBtNWl0K012U3RiSm5pbGk1WkRyazdMalFvQVBQNWhsc3Z0UVV4?=
 =?utf-8?B?ejRCbFFQU20waG1Bb2hUVWkrYXB0UlZMR042UnhVRVpIRnFnTU0xcnZnckMr?=
 =?utf-8?B?OGVvUXpTMTBWS0xIN1BQTFFkT0QyOGJaYzRZcm1ZSldIYURESEVJcTkzTnFz?=
 =?utf-8?B?UXVuQTFXOUxIUHNWTmxKMUh6dlEvLzNvY2lJbnJsWitseDZEcFVWRzB1NlFi?=
 =?utf-8?B?TGVnZjVFbTRzRXBuRU1jZ1lYVGY2N2RsUFBEaW9NRHZIdFc2eXArQkZqdHky?=
 =?utf-8?B?QnVLU0JhWm5oYlZnemVsanpLSDVpTmwrMTJqZTVhMGJzWkNiNE5YTkd0LzMy?=
 =?utf-8?B?RGxXWERid3RhWmc1eGVpVWtWRjJXTHF1eVhBRkRQMGRsN0JNU3dXaGFaaGto?=
 =?utf-8?B?Yi8zblRUQTdiQ3VnSjlQbGE3WXhGcXFJWmFoZk9nQUx3bXMyZnhhUkhBeGZB?=
 =?utf-8?B?VEZHWFdjeXBJQit1S3Q3c2JDb1Z3PT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ae39589-f388-4215-255c-08db342ac55d
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 10:04:10.8923
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RmzwsoE0kWX46W1BBGPB1SoBn/mK0S0RmWOch+e4Rx1B2i/Rd5MYDGrCdvu2UUOnKp1tXg/dh/EkAYO2g1puMF9ysuDNyUnF9xZbErkSjlg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8366
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_030420_488072_8F8C2390 
X-CRM114-Status: GOOD (  28.36  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/6] ARM: Rockchip: Read amount of memory from DDR
 controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 4/3/23 09:32, Sascha Hauer wrote:
> On Fri, Mar 31, 2023 at 05:42:54PM +0200, Michael Riesch wrote:
>> Hi Sascha,
>>
>> On 3/28/23 09:40, Sascha Hauer wrote:
>>> This series adds support for reading the amount of memory from
>>> the DDR controller. This helps on boards which come with
>>> different amounts of memory like the Radxa Rock3a.
>>>
>>> This series also fixes issues with an upstream TF-A firmware. With this
>>> the IRAM where the bootsource is stored is no longer accessible in
>>> normal mode. We have to read its contents before starting the TF-A.
>>> For this it became necessary to add a common barebox entry function
>>> for rk3568, to get a common place to read the IRAM contents.
>>
>> Nice, thanks for your efforts! Now it should be possible to remove the
>> memory nodes from arch/arm/dts/rk356*, right?
>>
>> I tried this on a ROCK3A with 8 GB and the memory calculation returned
>> the correct result. There are now two ram devices
>>
>>    `-- mem0
>>       `-- 0x00000000-0x10fffffff (   4.3 GiB): /dev/ram1
>>    `-- mem1
>>       `-- 0x00000000-0xef5fffff (   3.7 GiB): /dev/ram0
>>    `-- mem2
>>       `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/mem
> 
> At first sight I was a bit puzzled that both memory regions start a 0x0.
> That's correct for the devinfo output of course. The output of 'iomem'
> would show the situation better here.

barebox@Radxa ROCK3 Model A:/ iomem
0x0000000000000000 - 0xffffffffffffffff (size 0x0000000000000000) iomem
  0x0000000000a00000 - 0x00000000efffffff (size 0x00000000ef600000) ram0
    0x00000000afcf0e00 - 0x00000000efcf0dff (size 0x0000000040000000)
malloc space
    0x00000000efcf0e00 - 0x00000000efcfffd1 (size 0x000000000000f1d2)
board data
    0x00000000efd00000 - 0x00000000efd99a4f (size 0x0000000000099a50)
barebox
    0x00000000efd99a50 - 0x00000000efde59ff (size 0x000000000004bfb0)
barebox data
    0x00000000efde5a00 - 0x00000000efde8d57 (size 0x0000000000003358) bss
    0x00000000effe8000 - 0x00000000effeffff (size 0x0000000000008000) stack
  0x00000000fd000000 - 0x00000000fd3fffff (size 0x0000000000400000) xHCI0
  0x00000000fdd40000 - 0x00000000fdd40fff (size 0x0000000000001000)
fdd40000.i2c@fdd40000.of
  0x00000000fdd60000 - 0x00000000fdd600ff (size 0x0000000000000100)
pinctrl.of
  0x00000000fe000000 - 0x00000000fe003fff (size 0x0000000000004000)
fe000000.mmc@fe000000.of
  0x00000000fe010000 - 0x00000000fe01ffff (size 0x0000000000010000)
fe010000.ethernet@fe010000.of
  0x00000000fe2b0000 - 0x00000000fe2b3fff (size 0x0000000000004000)
fe2b0000.mmc@fe2b0000.of
  0x00000000fe310000 - 0x00000000fe31ffff (size 0x0000000000010000)
fe310000.mmc@fe310000.of
  0x00000000fe5e0000 - 0x00000000fe5e0fff (size 0x0000000000001000)
fe5e0000.i2c@fe5e0000.of
  0x00000000fe650000 - 0x00000000fe6500ff (size 0x0000000000000100)
fe650000.serial@fe650000.of
  0x00000000fe660000 - 0x00000000fe6600ff (size 0x0000000000000100)
fe660000.serial@fe660000.of
  0x00000000fe720000 - 0x00000000fe7200ff (size 0x0000000000000100)
fe720000.saradc@fe720000.of
  0x00000000fe740000 - 0x00000000fe7400ff (size 0x0000000000000100)
pinctrl.of
  0x00000000fe750000 - 0x00000000fe7500ff (size 0x0000000000000100)
pinctrl.of
  0x00000000fe760000 - 0x00000000fe7600ff (size 0x0000000000000100)
pinctrl.of
  0x00000000fe770000 - 0x00000000fe7700ff (size 0x0000000000000100)
pinctrl.of
  0x00000000fe820000 - 0x00000000fe8200ff (size 0x0000000000000100)
fe820000.phy@fe820000.of
  0x00000000fe830000 - 0x00000000fe8300ff (size 0x0000000000000100)
fe830000.phy@fe830000.of
  0x00000000fe840000 - 0x00000000fe8400ff (size 0x0000000000000100)
fe840000.phy@fe840000.of
  0x00000000fe8a0000 - 0x00000000fe8affff (size 0x0000000000010000)
fe8a0000.usb2phy@fe8a0000.of
  0x00000000fe8b0000 - 0x00000000fe8bffff (size 0x0000000000010000)
fe8b0000.usb2phy@fe8b0000.of
  0x0000000100000000 - 0x000000020fffffff (size 0x0000000110000000) ram1
barebox@Radxa ROCK3 Model A:/

>> that start at SZ_4G and 0xa00000, respectively.
>>
>> However, after loading the kernel the system hangs:
>>
>> Loaded kernel to 0x100000000, devicetree at 0x101970000
>>
>> Is this a bug in barebox or is something special required to boot the
>> kernel from SZ_4G?
> 
> I would have guessed that barebox puts the kernel below the malloc area
> just as usual. Ok, apparently it doesn't. I haven't found anything in
> Documentation/arm64/booting.rst that forbids placing the kernel above
> the 32bit boundary. You could verify that the memory nodes barebox
> writes meet your expectations by adding some -v to the boot command.
> Also earlycon might help to get some output from the kernel.

After having a quick look at booti.c I think that
memory_bank_first_find_space is invoked to determine the start address.
Apparently, this returns the start and end of ram1. I tried to override
the start and end variables with the boundaries of ram0, which caused
the kernel to boot from 0xa00000 but didn't bring any further success.

With the earlycon parameter set, the boot log now shows:

Loaded kernel to 0x00a00000, devicetree at 0x02370000
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x412fd050]
[    0.000000] Linux version 6.3.0-rc2-20230316-1+ (ptxdist@ptxdist)
(aarch64-v8a-linux-gnu-gcc (OSELAS.0
[    0.000000] Machine model: Radxa ROCK3 Model A
[    0.000000] earlycon: uart0 at MMIO32 0x00000000fe660000 (options
'1500000n8')
[    0.000000] printk: bootconsole [uart0] enabled
[    0.000000] SError Interrupt on CPU0, code 0x00000000be000011 -- SError
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted
6.3.0-rc2-20230316-1+ #17
[    0.000000] Hardware name: Radxa ROCK3 Model A (DT)
[    0.000000] pstate: 200000c9 (nzCv daIF -PAN -UAO -TCO -DIT -SSBS
BTYPE=--)
[    0.000000] pc : __memset+0x16c/0x188
[    0.000000] lr : early_pgtable_alloc+0xb0/0x130
[    0.000000] sp : ffffffc009753b10
[    0.000000] x29: ffffffc009753b10 x28: 0000000000000000 x27:
0000000000a10000
[    0.000000] x26: ffffffc008c9ffff x25: ffffffc008010000 x24:
0000000000000000
[    0.000000] x23: ffffffc008010000 x22: fffffffdfda36000 x21:
ffffffc0097dd000
[    0.000000] x20: 000000020ffff000 x19: caaead2f6f13289c x18:
0000000000000000
[    0.000000] x17: 386e303030303035 x16: 312720736e6f6974 x15:
0000000000000000
[    0.000000] x14: 0000000000000000 x13: 0000000000000000 x12:
000000000002667a
[    0.000000] x11: 656c6f736e6f6374 x10: ffffffc007600000 x9 :
0000000000000000
[    0.000000] x8 : fffffffdfda39780 x7 : 0000000000000000 x6 :
000000000000003f
[    0.000000] x5 : 0000000000000040 x4 : 0000000000000000 x3 :
0000000000000004
[    0.000000] x2 : 0000000000000840 x1 : 0000000000000000 x0 :
fffffffdfda39000
[    0.000000] Kernel panic - not syncing: Asynchronous SError Interrupt
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted
6.3.0-rc2-20230316-1+ #17
[    0.000000] Hardware name: Radxa ROCK3 Model A (DT)
[    0.000000] Call trace:
[    0.000000]  dump_backtrace+0xb4/0x138
[    0.000000]  show_stack+0x30/0x48
[    0.000000]  dump_stack_lvl+0x60/0xb0
[    0.000000]  dump_stack+0x18/0x28
[    0.000000]  panic+0x394/0x3a8
[    0.000000]  nmi_panic+0xbc/0xc8
[    0.000000]  arm64_serror_panic+0x6c/0x88
[    0.000000]  do_serror+0x44/0x88
[    0.000000]  el1h_64_error_handler+0x38/0x50
[    0.000000]  el1h_64_error+0x64/0x68
[    0.000000]  __memset+0x16c/0x188
[    0.000000]  create_kpti_ng_temp_pgd+0x110/0x640
[    0.000000]  map_kernel_segment+0xd0/0x1b0
[    0.000000]  paging_init+0x1c8/0xdb0
[    0.000000]  setup_arch+0x3c8/0xa40
[    0.000000]  start_kernel+0xe0/0xcf8
[    0.000000]  __primary_switched+0xb4/0xc8

and boot -vvvv prints the memory nodes:

        memory@100000000 {
                device_type = "memory";
                reg = <0x1 0x0 0x1 0x10000000>;
        };
        memory@a00000 {
                device_type = "memory";
                reg = <0x0 0xa00000 0x0 0xef600000>;
        };

FWIW: I commented out the arm_add_mem_device call for ram1. With that
change, only the memory@a00000 is appended and the kernel boots normally
on the ROCK3A 8GB.

Thanks and best regards,
Michael


