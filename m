Delivery-date: Thu, 01 Jul 2021 09:21:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyr0t-0006yO-Dj
	for lore@lore.pengutronix.de; Thu, 01 Jul 2021 09:21:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyr0r-0002SK-UN
	for lore@pengutronix.de; Thu, 01 Jul 2021 09:21:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y8dw0Wc5TVjH/FOTW53h/egGv3NNi19VxqLfgmbMbgQ=; b=edvKm+FtFi96Knnz21Y9oa2+Iq
	W6CTQWgovaDc0lTvh52aKIVGwoFw2DKx9BdIzLq68oEpWZUJNDmxSvh/6j6NqDpZvFydKjz1FztBY
	JhXMD4VgoDqFvYQ/57w/NKW55/Qs3Z69O1xWea57937puzV7tJCxdVycEsZzXOImHV85YFVNbmSYk
	0nIGyMmunZZB/eS4b2ZlH3pMamp0PHbpQzjqv4HAL2hbAQ/UntAn16mHmWzg2CqTRCjXyYWmynv71
	jwiPf33ymzMCAamwEQ1DAkKD7sNwri1Duoila6W1VNYme+lU35AYyytUXNKSZ1hCDlhsmpMf/5utO
	v68iO8hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyqz0-00GNVV-Eo; Thu, 01 Jul 2021 07:19:34 +0000
Received: from mail-eopbgr60086.outbound.protection.outlook.com ([40.107.6.86]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyqys-00GNUq-7q
 for barebox@lists.infradead.org; Thu, 01 Jul 2021 07:19:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QEp9BnBcws2mfCVV8eOBGdoRlX6TBfj9KJttcFjRKiKZtPpar7sPJiMkz/6zceAR86dYfFUpPyBgpu+Uk7oH/l6ebEnR4LNkrimf7VqHJvsjK3ocTTcQRmJvD3ZtHbRh4Ygr0YDEQaMvQq1REKfDGrj5vkHXmYXJPu7RP9iYK9ShUCCfL3FZVM80wWdLZiL+4woVZBxgcbcODg0dlYLXAHwMBT+la9kFtyhF7Cnrc4X4hBBl7D6Q/8IGkmCaCPJGV/qPsgqiv2iWexXhlYmMKsKG4A7iRyktPhZCbzTAyKuhzfuc0GTv12QpKvHa5I58qp0ntXmuywQTivvtyKoxAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QBK4K+G0ukF7uCcSM3lSdLtPF2rfJyDz2L+QrFKGOAE=;
 b=ZAGzdE38AU44tTNSkkf9aYmlDW/SpZprTwk8cK7QpcQaqZNcdd+e3QZ46emFUIh7EiVPEFPmgPgYnngW1woKF6ugAScU8JX2ymIV7oVmjJz0hcplcYH8JC/rX43dNTMfvfcY1cCwQuq2S7To2Qid97kFReJEYISq8cIoH0TQ5sJNfglxD5G53u22EKDUmwMaxNe7vTewB9ZzPu6e3h8qCN9vnUtZbkOwYo5YsB1AUqihT+Osdudn61UXHV/jNAjDrisJOjgpaOuq7MMoDHT7mfdWTVjdrivGrxKhMha9XB28OQEnaxNcq9SzZ//CTaI7+6WI4Q7MvPms97Xo3kLqpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QBK4K+G0ukF7uCcSM3lSdLtPF2rfJyDz2L+QrFKGOAE=;
 b=dDEFet8rJtyn4s6c8uQi8pClf1iaay/ivHlKVUb7S5ZGJozUt2oDicZEZPoureMKVhgvqjeJ81cdl9NXtFbvu596uOP8MeQVC76q5lp1SNGNRKa7uOLyb9qkw/iHFXa6APl51A809ApndDhzSt5ZVzoyLZ43kqgmjba+JQ8jiWA=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3194.eurprd08.prod.outlook.com (2603:10a6:5:25::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.23; Thu, 1 Jul
 2021 07:19:23 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4287.023; Thu, 1 Jul 2021
 07:19:23 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20210629123104.13818-1-michael.riesch@wolfvision.net>
 <20210629123104.13818-2-michael.riesch@wolfvision.net>
 <d230f623-b7e8-faee-98c8-1526e2840425@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <7f7e89e9-4941-490f-6171-f61e3a39ad73@wolfvision.net>
Date: Thu, 1 Jul 2021 09:19:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <d230f623-b7e8-faee-98c8-1526e2840425@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR07CA0186.eurprd07.prod.outlook.com
 (2603:10a6:802:3e::34) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR07CA0186.eurprd07.prod.outlook.com (2603:10a6:802:3e::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.8 via Frontend Transport; Thu, 1 Jul 2021 07:19:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 04048a89-c217-4d46-5a2f-08d93c608d1b
X-MS-TrafficTypeDiagnostic: DB7PR08MB3194:
X-Microsoft-Antispam-PRVS: <DB7PR08MB31943D259BBBDE6D4F1312C7F2009@DB7PR08MB3194.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fo7/2nd6qkkXp4/NIRzzNSJnR0c+6lPuoIw8IHzyzaSjg6ZvS6JpHJCzvFN6CtSSCEcJ6xrVlcKyYHWzWxhRlivbMN7TPdebVVrS9oEOSABoXyBW1LXsNLxEKIBeHRdx62kBB+Dgx2+0XZf1Q3Bdb88lWcFI4UShM2IaIq1oLwS3D9RxGv5VPZg7qFioSpcmuPsinqaQiUVo77QI2WTVUjGpq9SkZEpt0F6139ZiXGtI8e9RZfNituJCaM3KSypg6Hby7zJixPu66tPOVIzgOCLsO06099odoIYwu+LwsK3wqBiLKq8GSHVzteETWcOdvPxnX8ikHyZ98QX+5EBT/XxvYMNoLH+wP+4UIvK//T/6KtMvkTAD8EZ543MJ44lSXZFmq1seE+VpV4Q4yqkzgriYEgfu7XRYHkebHti3pnhccbVZIXYuTGJF4017jc52c6c4xkMzsI0keGEogmhx5gMssmGF69m3hbp/weDk3aI8iAf+rm8ou5emBNZNSOgY10ZN0MEy50WtXw2rTnRWgNgEHHNON47TzJpQnqGsKkFv3S0zDR7n/aAplEMcJ+8kbUVAwgmJPOQeaSRGd2fBqjt4Qbn9rAU90uSMVxvg0Cw8t7hy/deuuoPPjs2/kktajVCBb8ELlNJq4PMHqFFvbNjKRT3rQbyCaabovjTXhi6/W/QtMys4fj9fU3Ya2msSVOcoCubJLEzOE3lW42sefuSdZMyA38oP9/3CuHZyFnakAs8z/GjLc/JK6idhrS7SJcCVsDL2azeSi8tsrgbZfw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(136003)(396003)(39840400004)(478600001)(44832011)(66556008)(16526019)(83380400001)(186003)(66946007)(66476007)(26005)(2616005)(36916002)(316002)(8676002)(956004)(36756003)(86362001)(38100700002)(38350700002)(53546011)(5660300002)(52116002)(8936002)(31686004)(31696002)(2906002)(6486002)(16576012)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0tVcDRKVHRJa2RPMDIwZXc5QjZtMzcrUmZCRXVrdVZ1U1kvaHNaNGZlZ2tG?=
 =?utf-8?B?eFhBaEs0SjQ3ZVVIM3lxUGFMSVA2N1VmYVVYcDNMenFndzRYeWVJajA0VW1Z?=
 =?utf-8?B?aEEyZ3JCVDhSRGdCYXZRRDBQYzJkV2Q5WDUyeFJ2Z2pDNTBGci9mQ2ltT0Nn?=
 =?utf-8?B?dEV3WWxBQmFMS1RhSlZmYnRyMk1KOXhxQUkraWtIN2RpQlI0YnduaVVHWkN1?=
 =?utf-8?B?MWlSR1RtZ3E4OW9nM29HMkRxVVFGRGg3NUJVd0xLS2VKQmpWa3d6d3pGYjAv?=
 =?utf-8?B?bDZhZyt4S1NqNXRWdDFNODFKeDA1dVViK2JCNUhnT0xEdUNCaGtiYmFFTGQ1?=
 =?utf-8?B?VU8zOWlBa1BZamUyaUU4WnNObTMvWkU1MW53dERwUGlZTU12eHBSdncvbitL?=
 =?utf-8?B?WjZmQVBQdThSSkpHYVI0ZTV4b0RES1ltWHNTZ05qa0Rwc3RrNFNGYWVraStS?=
 =?utf-8?B?VVVlV0Vuc0NHcHg3RGNyR0ZGd1ZsR1hrTk1XUnJwNDFoNnhPbGl2Y0hBUHR4?=
 =?utf-8?B?eGlRR21ld1IwRnBYTFQrQnF2UTdmRVVqdUoxcVZ1YzZhVksydEtjdjIzOEJ5?=
 =?utf-8?B?SUZJMXJuOHU3WGRIdkM0RlFvcmdtb0RnT0ZoRTdsK2RFR3ltZHFGTEthOWpP?=
 =?utf-8?B?dWZrR2RDNGl6WUNtd0ZCdklqS2FLKzV2TlBya1RsSDdENEw0a0lvRVRidWRt?=
 =?utf-8?B?TVVEaFkrNWZmdXF3ZUs0c0tSTnR3RW5qVS83Vm85aTZEUENvZTFqTno1T2VQ?=
 =?utf-8?B?WjRGZGF2MkVGeno2eEdMaWEyOEJEQWlYUnlYNHcxd3M5V05mKzZsZGVFVVNG?=
 =?utf-8?B?d3I1MEJXOUdMODdHUVpDZkZOMmZVdzM3Z2QzZHIxV29NcHFiMmlzQjU3VDFa?=
 =?utf-8?B?K2ZYeVg1VjdPaVM2UGh3bGJEUFJvS1Z3MlFsSGdBYXlRZ3ViU3h5cW1DTmNh?=
 =?utf-8?B?Tm9LaDluMm12OUQrMnl3MjFJNUlML2w5SWxNK3VqcXp6OUhOdWNaeGEzeXhH?=
 =?utf-8?B?NUtTZFdtSUQrNnBWanhuMFlQeThzazR6emFMbWdrTWN1ZUgwYk1XNVZUdHJN?=
 =?utf-8?B?RkVLaWdRYklQWERmdmFIdDVVdXhLT3U4SjM2TVpMOXFrc0lVNXpkSjJoMk9i?=
 =?utf-8?B?R3hnZEQ1RUZTRVVOWFZTY05Sek5qSnptWFFVMkk2SEl1aCs1dFNQYXRaa1po?=
 =?utf-8?B?b0lacFVnNjNyL1NoM1Ava0dMZU9SbzQ0ZlNZMTZzVUd2cG43eGdwWlcreTRO?=
 =?utf-8?B?MlFzRDJqMVRVdFJjQ0F5czd6OTlkOExpcnhER2NITGVwQW04WFlVS01xQ2ZW?=
 =?utf-8?B?SllJQTUvanpMbWYrekxqNHRRT2UreGFIbHplUzA1dG1aZi9jaFFhSFhidkpi?=
 =?utf-8?B?VHdkbzg5S3RmQk1RMUxwNWVvQVA4WjROMTJkeTdqWkVkdG9pZVlxM0lFYVY4?=
 =?utf-8?B?NXYvK0N1Z0xzWUU0NVJ3WkxvYk1RTzZOSzBiSXNwRDlhVXBBZ2NoQzV5K0Rl?=
 =?utf-8?B?MUI1TGhOaElCVzhJZm5zQ1hmbTkwc3hmUjdTc1dZMDFMaXlUS0JGeFNveTFX?=
 =?utf-8?B?YXE0K0lSZHBjRVFkbXV0T2lnOFczTkJoa2ZOZTZpeDJ1dG9IZm5qaHM2aWFX?=
 =?utf-8?B?ZHEwZkNIam9yMDZUYzZNNmpvMXQvbFo1T243bXAwU2xybkI4Z1BScng1OHNr?=
 =?utf-8?B?b3RDdzFsVUJmUXY1TmlFckswTytFM2ZabzMzS0NZaFBHR1ZpV3pmMTdlSzZq?=
 =?utf-8?Q?ULxFx/SBptKwV9cr4SrzUWP4r8pmtiEAt1PgYbQ?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 04048a89-c217-4d46-5a2f-08d93c608d1b
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2021 07:19:23.3131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kEjIHvE0RsPs9Irj1+lrYV+TQoFTn0AZPOVx3AOULlSPI1AyN5A/7PGN7LYrR5b21SodgYeIUMFY5DhBrLVbcMElVD8mKGs3mToxvHyo0f0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_001926_423248_D46A89C1 
X-CRM114-Status: GOOD (  34.08  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 1/2] arm: rockchip-rk3568-evb: add hardware id
 detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

On 6/30/21 12:17 PM, Ahmad Fatoum wrote:
> Hello Michael,
> 
> Trent already commented on the device tree overlay part.
> This commit here seems applicable regardless,
> so in case you want to resend it for upstream inclusion,
> some comments are inline.

Thanks for your feedback. OK, I'll separate this part and resend a
non-RFC patch (not sure when, though).

> On 29.06.21 14:31, Michael Riesch wrote:
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> 
> A short commit message here would be nice, e.g.:
> 
> The rk3568 EVB uses a voltage divider to ... etc.
> 
>> ---
>>  arch/arm/boards/rockchip-rk3568-evb/board.c | 36 +++++++++++++++++++++
>>  1 file changed, 36 insertions(+)
>>
>> diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
>> index 57c24ed3c..ee8e1b979 100644
>> --- a/arch/arm/boards/rockchip-rk3568-evb/board.c
>> +++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
>> @@ -2,6 +2,7 @@
>>  #include <common.h>
>>  #include <init.h>
>>  #include <mach/bbu.h>
>> +#include <aiodev.h>
>>  #include <bootsource.h>
>>  
>>  static int rk3568_evb_probe(struct device_d *dev)
>> @@ -34,3 +35,38 @@ static struct driver_d rk3568_evb_board_driver = {
>>  	.of_compatible = rk3568_evb_of_match,
>>  };
>>  coredevice_platform_driver(rk3568_evb_board_driver);
>> +
>> +static int rk3568_evb_detect_version(void)
>> +{
> 
> Once more 64-bit rockchip boards are added, they would all execute this
> initcall if this board is enabled. For this reason, you need a compatible
> check here.
> 
>> +	int ret = 0;
>> +	int evb_hw_id = 0;
> 
> Nitpick: Initializing variables with values that are never read risks introducing
> silent bugs once the code that uses it later on changes. If you leave
> it uninitialized you get a compiler warning if it's referenced without
> initialization.
> 
>> +	int evb_hw_id_voltage = 1800;
> 
> I am not sure it's a good idea to report the EVB is v1 when the
> driver isn't enabled.

This default is based on the assumption that the EVB1 device tree works
for all variants and does not require any overlays. The other variants
do require a specific overlay. This assumption was somewhat valid in the
scope of this RFC patch series but cannot be applied in general...

> 
>> +	struct aiochannel *evb_hw_id_chan;
>> +
>> +	evb_hw_id_chan = aiochannel_by_name("aiodev0.in_value1_mV");
>> +	if (!IS_ERR(evb_hw_id_chan))
> 
> In the error case it makes no sense to continue here, you should early exit.
> 
>> +		ret = aiochannel_get_value(evb_hw_id_chan, &evb_hw_id_voltage);
>> +	if (ret || IS_ERR(evb_hw_id_chan))
>> +		pr_warn("couldn't retrieve hardware ID");
> 
> early exit
> 
>> +
>> +	if (evb_hw_id_voltage > 1650) {
>> +		evb_hw_id = 1;
>> +	} else if (evb_hw_id_voltage > 1350) {
>> +		evb_hw_id = 2;
>> +	} else if (evb_hw_id_voltage > 1050) {
>> +		evb_hw_id = 3;
>> +	} else if (evb_hw_id_voltage > 750) {
>> +		evb_hw_id = 4;
>> +	} else if (evb_hw_id_voltage > 450) {
>> +		evb_hw_id = 5;
>> +	} else if (evb_hw_id_voltage > 150) {
>> +		evb_hw_id = 6;
>> +	} else {
>> +		evb_hw_id = 7;
>> +	}
>> +
>> +	pr_info("Detected RK3568 EVB%d\n", evb_hw_id);
> 
> You could populate a variable, e.g. global.board.revision
> here. That would allow using this info in scripts as Trent has described.

... so what should happen if the board variant cannot be detected?
Should the variable be empty? Not set at all? Set to "unknown"?

>> +
>> +	return 0;
>> +}
>> +late_initcall(rk3568_evb_detect_version);
> 
> Optimally, you would call the function from the board driver probe above.
> At postcore initcall, you wouldn't find the ADC yet, but if you
> return EPROBE_DEFER on error from the probe, the probe will be retried
> later on at which time it will succeed.
> 
> With the deep probe patches Sascha just merged, it is possible to directly
> probe dependencies instead of retrying later and hoping it was probed
> in-between. It's still not enabled for the EVB here though and it also
> needs some code added to aiodev, so for now you could go the EPROBE_DEFER
> route (or add a compatible check).

I think I'll stick to the late_initcall with compatible check as this
seems to be the most straightforward solution right now.

Regards,
Michael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

