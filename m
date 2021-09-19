Delivery-date: Sun, 19 Sep 2021 22:35:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mS3Ws-0002TR-8S
	for lore@lore.pengutronix.de; Sun, 19 Sep 2021 22:35:14 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mS3Wr-00032z-2E
	for lore@pengutronix.de; Sun, 19 Sep 2021 22:35:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sUU0e/NQhM7t+9D0+cD5AGAX9kMAnPrca+i7AkYnSPU=; b=k0f2WWZox0mNI16sYClrQwf3Jb
	G6Cf8Q1wcn3EsGPmsVhN0AOfeAW8gUHuejGoH3CljyN7uqFMAL+uxJtGmPOT1T26jnBDwYSNzf7qh
	XZgEZpNO/b2aKBlqdbF+rJ4Mhw1F5zUD7OUNrgV2HB2g34A+/Jm+qlGEqCd1aZjDKZhyBk5uUYx6p
	aXwduz/rwAQUBG6SrX/cWixdpDMIf3QdXNjbvoodvuW1p4W2ZrfdsLlvVpXFv6t6p64IDwjpx4XdS
	KXHOCmJOAQXbMjw/lVd6WYJbAZ6Y1gYfcrB0NqRMlbH3gMuoRMH4t5hSWCLRWBBmhcpvrPGK0po2+
	YOhn6AXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mS3V1-000BjA-7x; Sun, 19 Sep 2021 20:33:19 +0000
Received: from mail-eopbgr50112.outbound.protection.outlook.com
 ([40.107.5.112] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mS3Uv-000BhH-Ik
 for barebox@lists.infradead.org; Sun, 19 Sep 2021 20:33:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jy3x9hWyrZNY7pSfWaXktPa5NQfb7voaKmcPOWBO9MR/Bv0bBwjABrBHgMY258/KKAf3C/YIXIsRb9TerIeYSn4vZH56VEf9KWOtybe+G4tNZdi69RcI11l6xTMT0x60fE3U2mx/XFwsHmcg5yLyqAKDTDGGIslryKxs8Timap80aopR/iSVSkI9ANf5AetR9Mjyl4AoCMg5z2w48AubaSkPqBB9BkYMRrNnm+fr6GCja14hk/cQlVDrF+CnhpwIoKbpWTEsMSf8juHCvSkl92WWjI+qcAXLcnjFSiTdZkvXUZq8nmiZmapdR6L2RJ4s6BMK3U7OI0+w4ZF5bNkyow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=J54Kp+9YUJ+qksncZ/NgIxEeyZFRqUv6wDv3ifyjjmU=;
 b=RUbzUA8uF0guZojvc7TEIYzjFH31sS3/6kAlPgpCKrcNgqNKIS3BFTLDirePzcOzCHZ9imvnFaTk1LJW0VopYF59KZ9kRzT5ERkqUgJNw/IQTe6P50nIJNEZNZwcAu+Qf9r7t3Udpv9poSz8NqHTyWduT7aaZqRWnSsC5bzWjaKSqbpfeTJDO4m3LWwKKpRIiyuaf7A/E72OF60i2RIfuwj4ROr2EZsVAn1DWmNrlL1awQfY3X8t81y/PuZjURu84xqsNeLUY2fpGA43sq11P6KNvPZCnagk/AM7aOCxl84U1x4YptiEI1UcrWsbxiIrhfpjo9EHnLzGiIErnt2Jfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J54Kp+9YUJ+qksncZ/NgIxEeyZFRqUv6wDv3ifyjjmU=;
 b=lgkBxstjypFB2dpEOoQKGnbOxT4SWrQG7mA5bsn1MvLdRGJDfmnMm2XMX/BDBDBnCxwUSom/KwqJl/9+0leZ5ur3+dSrj366ncreiCc07YFuGkgYIeeDZ3gU8PuTwiTM1InPQCj0ehV2Xn3r+rHwU6Zelk9q/X4RCeS6n/JeuJY=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB6PR0201MB2167.eurprd02.prod.outlook.com (2603:10a6:4:44::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Sun, 19 Sep
 2021 20:33:09 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Sun, 19 Sep 2021
 20:33:09 +0000
From: Peter Rosin <peda@axentia.se>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
 <d4eb8281-121e-91a3-7300-83336ba0f285@axentia.se>
 <e14fb2eb0ea344ac272b823c51ee3a4049a51c33.camel@pengutronix.de>
 <02b09328-e300-f36e-4cc4-daa7afb47ad5@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <148368af-c744-3cde-1a5e-f895c6e57784@axentia.se>
Date: Sun, 19 Sep 2021 22:33:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <02b09328-e300-f36e-4cc4-daa7afb47ad5@axentia.se>
Content-Language: en-US
X-ClientProxiedBy: AM7PR03CA0014.eurprd03.prod.outlook.com
 (2603:10a6:20b:130::24) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 AM7PR03CA0014.eurprd03.prod.outlook.com (2603:10a6:20b:130::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend
 Transport; Sun, 19 Sep 2021 20:33:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9921f420-4ca7-416b-30a2-08d97bacb172
X-MS-TrafficTypeDiagnostic: DB6PR0201MB2167:
X-Microsoft-Antispam-PRVS: <DB6PR0201MB2167729B39B4C8B2DE37126ABCDF9@DB6PR0201MB2167.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0aKfiHcrEXGE2tsIKGpeRfeMrFUvwlCD50V19Gk6HCQGeeMEkyfcqsArNB7f8XCm9qNoZtPNoVNcDOpZNXNkvPa2Z3QG1vJreoJHE/tJaxtaBvjDPLx6Bxg830SycqJ4hexuGNyBDS+vbeEELmnWNpck7MbDxW2g8pVDVc+mNRGkeJL3tmUnTP9DAM6+WkEf9we4ooNhW6S0Ap9ykX46id4w/erQGM8rnqqCERjD+tado+oL7OLh9nOWDKjJOwnTyoqez+TtHRGg9Ai8DqV/CYsYyN0eiicfQHacP/HYOxC5f6pfyz/u/c4VxOHrs/y5Gq/HQaeZcNQ27mn7O5m0n4MJQ5Rb9D2/uMWlZ0mf0u8s6IlS6BheYAe6OetdFC1yCkLZeWtVtEUvHnnCHFxPdogcRa3lYtaP5En19jbERjr99ZCuWCkEjonkweq5YzBNN3/l+dmQ5Tv9h2ASmi17zCZMiKzBacQTOKgUsNOFxlHbzu21B802OCvRIWrdGGS0LfopN7ZwCoFHB/kOXlilhhebIWAMXDbOOIBettuhtavAdPEeCesYsNsXHe1bqdZwKjBxGZd75fcb9JFaAkkGqxHb8GvFgIuP0wFYxbqU5ySpBE7Rq5V3/k8M4InvD51pVp3D8ZPjBb6NuWLwIrgYH+hVgoweN4toRCpHiMmG2G3o/0L2McxWii706b0NWofoNglD33Acwt7zlGD8jMq+ZM6SLx0R2PW2GRn03caeHxA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(136003)(376002)(396003)(39830400003)(53546011)(36916002)(66476007)(66946007)(8936002)(2906002)(26005)(31686004)(83380400001)(110136005)(186003)(66556008)(8676002)(4326008)(16576012)(956004)(86362001)(316002)(2616005)(4744005)(36756003)(6486002)(31696002)(5660300002)(478600001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2pCUTRmUHpIRTJGRU5MTFI2eWN2U05Ncnk1K1lzZ3VhWTloMFdsY2V0M0tp?=
 =?utf-8?B?aDliZ0s4QU1GQXVyRTF6MzNjS3g2YXd6ZEliUG80bWZMOVVKMW5BWXByelhw?=
 =?utf-8?B?NjVXZTRkcGJXeVhVbXg2Qk9Kc2ZRYk5qV1VWODJMei8vTXFUSmRnMGhYbjFp?=
 =?utf-8?B?SDQ5aEJTeFNKV1VJWFBlRWNFcE9aTnpFcXhiNUJpVGtYRXM3MDI1VUVUdFVP?=
 =?utf-8?B?OXpWeC9BV2hKZ1RSb0wyWGJiZ1hEWDZCZE41WUpHUnQ5aCtFcHFrV3Bvb1Vr?=
 =?utf-8?B?UGUrWHR5cEEyTWJlOVJqL2E4ZmkxTnZSYzBIQjI0MDFCbnhoMXY3OUJvRXQw?=
 =?utf-8?B?ZjlOSDB1bnpGU1pCVTQzZUZwZi84dzY5NnpXQlNCb3Vhd3ZQTFlwSjdOM2xw?=
 =?utf-8?B?MGZveTBXeEZtV3c3N2QxUFk2TW9ZNzN5aERJMWMzS0F2RGhNcTdlbVJPZU4y?=
 =?utf-8?B?SFFuRmpCL2tIS2UwMVlHWDhadVAvK0RjMWhGMEFWV2U3djdrMkU2eFFSd2Rw?=
 =?utf-8?B?Z0xlelJTVjJPOCs0aW9WV0kwNElCeXQxb3psYWNUNXBUV2xLWFVIRU9mWU4z?=
 =?utf-8?B?bzBZZ1hIQ3BTRzNrSmx2bzIyUnJaMEJNZzZBcXh1VEVxbURmZjg0Q3c4UWNQ?=
 =?utf-8?B?U0I0YW5pbWJVL3NxTzFyS2EzL2hNcFJadm1ESHRXVFlCQUcybUNDeE80OTRU?=
 =?utf-8?B?MG10cGZEMmRNZU9qVW1keFQrNjA0Z0RkTXNpV2FMbFlKL0ZyNG9XNncxZnBO?=
 =?utf-8?B?R3RBeVpFMTZ3VkJEaTVrM3RjK3BVNnlNcHh6alFSbzlGTW9uNUJjVGZPWEZW?=
 =?utf-8?B?RlRpWkl3M01HR2ZXN21DZWh4UzVCVkllQ25pRlBObHlRRGNVVTV0WlRyeDA0?=
 =?utf-8?B?cUlJY2JwdmZON2lTZnFrejlVcXJRZTg3UmhmbTFORHVZSVpJY1l2SEZTQzhO?=
 =?utf-8?B?RVRYb0ZPQ3hwSXBHUGl1NjNaVDAvRHA2NmJ4bUpXTndld0FNNjZFY3V0dFNW?=
 =?utf-8?B?SjlKMWNDcStQbXZTTXplSURFVS9ZVHR0T1A5dHhSeWttYmFLYTJBRVBMeWR1?=
 =?utf-8?B?bmozOGRmVDA1SFl6L1ZsWUVpWnJDSHJzY2lmaWNBTkV6b3RSNmRNa3pFOXhJ?=
 =?utf-8?B?NUcyZUpzTFlpRGxjRFZROVJQMEZDUGxESU1PcnpreVpmMUlaeW56N21CTDEw?=
 =?utf-8?B?VDdaUnAyT2gwby9weXViaVBEY2pYcXJRdzlzOXlaN09VSGtqT1NXbGtUa1hk?=
 =?utf-8?B?OHJ1dVVRM3NnRjNVVWNiN055eXNpOW1BK0NDUW9JM2tSOTJaWDhZUkhPaVpN?=
 =?utf-8?B?ZGxWL3lEZlRGQk5obTFYQjdWT3U4R0tpdEVZYkhibEI4ejU5MkswcHBSZUlK?=
 =?utf-8?B?bUJZUGlMek5qUEYraUdnVHdVNHB3VjgyK3hZK2dSZGM3U3FaZktvUWpBK1dJ?=
 =?utf-8?B?dmp5OGpKWm0xbVlNUExMM1J2SndHODI4TVBiVlBTdTIvdW81MmpDYU11dVVN?=
 =?utf-8?B?aDE0VWdYYWxPSjdYelFMQWRoMmNpY2VpWm1NMzJJaVNPbzZSaHVDOThGaXdQ?=
 =?utf-8?B?MkNJa0djUHNNUTl0bVhKQVFJUFM5b2lPMHpMTzM4dnlaK0RwRlFYVGRpZ1Ev?=
 =?utf-8?B?dkJ1QUt6NVNGYy9CMEUrNTBkZlR6SU1Pdi95aWdnWkFxTkxCYTNyb3pqZCta?=
 =?utf-8?B?TFMvU2M0MitrQ0t2aXQrNWlBMXBUQ0NhVDNKNzREWFlDNjY0ZnUvK2lrd3VZ?=
 =?utf-8?Q?5HQDuzFFuvuQolJuCAR4XugsQjbKWn70s72aGml?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 9921f420-4ca7-416b-30a2-08d97bacb172
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2021 20:33:09.2847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +IPidoEVfvLq//R05PvHD93xJhIklWdBa/3J0ivvCns68kJU5oduwDfXsA9SLbF6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0201MB2167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210919_133313_894028_7645B21B 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,PTX_BROKEN_RDNS,
	RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] Revert "ARM: mmu: use client domain permissions to
 support ARMv7 eXecute Never"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2021-09-19 09:50, Peter Rosin wrote:
> On 2021-09-19 09:06, Rouven Czerwinski wrote:
>> processors. Are you calling into SAMA5D3 ROM code somewhere? If so an
> 
> *I* am not calling anything. Maybe the board code for sama5d3xek is,
> but I have no idea as it's not "my" code. How can I figure out if it
> does?

I did some digging and I think calling into any ROM can be ruled out
in this case. The only ROM that I can find in the sama5d3x datasheet
is this one:

- One 160 Kbyte Internal ROM Single-cycle Access at System Speed,
  Embedded Boot Loader: Boot on 8-bit NAND Flash, SDCard, eMMC,
  serial DataFlash, selectable Order

AFAICT, the internal ROM only contains the first level boot loader,
so the ROM is presumably never used after that stage. That said,
I'm by no means an expert on the internal details of the sama5d3x...

That, and there's no external ROM on the address bus.

Cheers,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

