Delivery-date: Mon, 13 Sep 2021 12:55:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPjcq-000105-I3
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 12:55:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPjco-0005kU-UX
	for lore@pengutronix.de; Mon, 13 Sep 2021 12:55:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iXrE4HXQop5d1FoXDN2CT2WnIeq91I068FlHyFn8nGU=; b=sNtBDoHeAdkA/CNf6Zbmjr+i9P
	6EEfP7K9p9SSadIo+4KFXmZQfvtgic3yveiV5pQS8b7S6JEJmPzYjssmcGLMPv0sqH5XrO+gYJ+EP
	7KC19SUdmcs+6JMrpnpZ3zOoKJsZYXQD/qbzWEBLMha0Wk1B6ffoR701MoQtzsGMj76j3DlHyHY/v
	KwDcEjV+kNuqkY4NtNMc2LbYmaHQAUTuvSo5RFwCeyeCBiVK8GQDFEN6DjfHeZ+rrhwayoapFT+b4
	tP892GgPXiXRX7RofvxyAVd4QzzxC5cSrmLu4QzO12CAHXm8uYv7hmk/8rGcTddrai1dSenMKjvrb
	7Gnbqpkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPjbI-001OTF-38; Mon, 13 Sep 2021 10:54:12 +0000
Received: from mail-eopbgr80079.outbound.protection.outlook.com ([40.107.8.79]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPjbC-001OSa-4A
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 10:54:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ct+eOgB/RxdWapE1jc6d9vGPO6uSK9YJLPtlE9m1/CrT0YsuidfKd6gaQ19UBTY4FhSFYLM5qdJcYSwjftjvH8pLim/BLvMKUtck/qMIkuTfOJ00L7E2JolwkvWqjU4Rp0Xw9U0sAPG3s84ricHa2HZEN2ORf11LgGwOme+x8rWyG5Y48xyhNirXecr1Au79gyRoMyHfsZa2Xza9ohZW1/hRYXhYyZzLRK5n/RTTdKuBmV87gs+ZQpPN2+x3c+nkd6OMdfnfAMwvt9QBa/NPXGZdoLNtYn2ELi4tBN+eeiID91pchytESC5gsNeMDSB1rLDAIDH294zSAUfcfXj0Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=yLh3UsFSFqOWTmCKDDzZF4pCNqdpJzWxMRQA0cmpJKE=;
 b=kmMBOo8/isDqzTVKFtMn5IxNF+stqgU/xEYFjTMA4EK61JGjIQCb3e/L+Hguox39OPkm07Qg0iKIwC5wBjN7+jRw/y6rKxJ/GmbNKVnpN45CVVb0jC8SyrVFl0JPLXpG53nLTFyo6U6k5JgEeiRBubkd77LeQJbWaBp914fFXCHlFd1DE35/Q4DVpcUgr8gpsVZ4N4kVbtbKqZqd4OIG/7mdLtieZe/mF1TBW3O9ivUXT4KE0+wm364+Bv01aTUGmU4AIZVkVCe0l7OWnjTgvlTlOeZztHK9Zv9s7fol78Q5X0JfG+aMq0gUBGNtEsO16lHobOYXx4E0V+FREVRPDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yLh3UsFSFqOWTmCKDDzZF4pCNqdpJzWxMRQA0cmpJKE=;
 b=oht6rLh9wZ74HnEULTJpUeO1xcrLp3JDicSSWL6KngQdcXL5IV85QZAvwWnEYwMexU57ELMISlz7xr2ghtHZSoHof20iKCTIbZLyAWUoIbmq1TIw20AQYpiGJ/bxEJSDlLGtbWU6zzhTa1HTbf09iGHCHn9fUdoGnO3tEtfGdXY=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6697.eurprd08.prod.outlook.com (2603:10a6:10:2ad::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 10:54:00 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 10:54:00 +0000
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210910134323.26136-1-michael.riesch@wolfvision.net>
 <20210910134323.26136-4-michael.riesch@wolfvision.net>
 <20210910135933.GA24395@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <18d58ffc-c93b-e350-24a1-b4338a2a2ee9@wolfvision.net>
Date: Mon, 13 Sep 2021 12:53:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
In-Reply-To: <20210910135933.GA24395@pengutronix.de>
Content-Language: en-US
X-ClientProxiedBy: VI1PR0601CA0007.eurprd06.prod.outlook.com
 (2603:10a6:800:1e::17) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR0601CA0007.eurprd06.prod.outlook.com (2603:10a6:800:1e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend
 Transport; Mon, 13 Sep 2021 10:54:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 503d7206-d95e-4dbc-2a41-08d976a4cb20
X-MS-TrafficTypeDiagnostic: DB9PR08MB6697:
X-Microsoft-Antispam-PRVS: <DB9PR08MB6697837158E0912E2CE25A4BF2D99@DB9PR08MB6697.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rGxKcKO0u29VCwz8vLV7yUc2Unb1gG2BlMUHM7k2GVgrU+4XmhH04EzvcH/PdwTcMm+wz1QVRzZddRAHyecbNLCV32PartnlILySOn0S8jVAnhdfcJuPX8JZEkgPZIaowP5gAF+a+g0Swbe7nrXw77uU8pYVIZkDg/xHEKoRSYDoSq9IDLPzeozgbXCGjNQcdH08MsuqPFWIsdvqWVko1Toe7CxfdhHG2MeJ08dRAapZ3aNztqJRt2pGQ3rMpdZSPUphMFG0uMyyr5KcQDfbeiro3uMq1n7fuzJ352IDhqDgRl9rvH/jnB4bj2xaHra+nyWaNpXQLiTDy4DwwpZOvSY7TqD/KjSwGpqdkM5DLLHjoYppKhhmdMOCa3IpWSyMoYQqGoVH0g996mDoaHq/HWFanSUlk9q3BDPKqbK6uNJzogl4U9ReAFMV779dlgrkQp7pT7zKdBaY/brjzXUHnAu7TaecBAjUkD9iHTGM/Tpp97ADNwPHd/bKPfiUV1SYIv9xLocRjjpA2PXaBxACtFTsdx5OAEMVlDMqmbQDhKRlz2GqIhPeTrxiuIy48ZvUvLaTt1QYis2wqf/P5N9BHMmnRr5554Jg3Y78XePC2yieh7ByHYRSF/N3sHSvUC/nYQipRXtGgnFyS4l2AuIIEzJ5V7VGhMEFVfJ6VX7NTWRLuuoTB2ODtW1BCiTiQlPwnlBlPQPRFnzRn9iyXTQXGWWwTZoBWNxLIz34gF0zMJDJj+G4GatQxTq52/F7KfRUUK1i3emipZ7ec2r5AU1sKI2bl+nVz0YNeGhVlT/N0pt948yTzNXfV+ceTL+gEm9amVu2ChNrm/fDf0DvGVlu3zR4xSPjEFuBolw1u1J5L38/Y+uZ94+PL56tjeWiQSkD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(136003)(366004)(396003)(39840400004)(966005)(478600001)(2616005)(956004)(5660300002)(31686004)(86362001)(44832011)(6916009)(19273905006)(2906002)(4326008)(83380400001)(36756003)(38350700002)(38100700002)(31696002)(52116002)(186003)(36916002)(66476007)(66946007)(316002)(6486002)(8676002)(16576012)(53546011)(66556008)(8936002)(26005)(45980500001)(43740500002)(563064011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1VHMkh3bEp3MmtjVnRvNWc3OVk4cUlGa1dHK3FLSlBjMmJIOVM2VHIybXBz?=
 =?utf-8?B?aTE3S05kMHBKSDNBejl1OWxSb2ZKK2hZTlNLS3pmZXpLeDdNSGZEREFkaGVO?=
 =?utf-8?B?SHorajU2V2tvK2loTjRveEJJcDRMNnExODdjaWF2Uk1FSWgwbEdYSGNaTTBG?=
 =?utf-8?B?dHVCaVNyWjhhU29YN2wwcEE0eFduVzBKbjF6ZWMxUktGdzRjazNMY05RaGR1?=
 =?utf-8?B?RW9lV3VLcTM5bWUxVmZDL1IwVWltc2Y5R1ZHMk1kZnR1eWVqWktwSHl5MWps?=
 =?utf-8?B?aWFZWTNvZDhHTnRSb1pMVStmSjR3UnBocXF5L0xVdm5XM3hPOWZjQW1PL3dD?=
 =?utf-8?B?b1AzWm9rM2N5ODhwOU13QnA0MjEyQUxpOTBmL05hUXJIQWZycGFMVFJzcGVt?=
 =?utf-8?B?enJFaVQ5QnZCSXhvaFpnQ0txQ2FDdUVvYzFzTVV2OUVBUmpDb3ZPd1BqQW5o?=
 =?utf-8?B?TVBidTB5UXpuNmhwWlRjUW1tM2FqU1VxdCtIOVZPaVZZbHEvM2dYaDB3TExv?=
 =?utf-8?B?eW5YWjZOU012SXFyYzFDV1d1L0ZUaHpBOHUxUldGcURQR2lVTyt6SVM1V1RK?=
 =?utf-8?B?bitlYVVQRFFHNjBiQkNMOGZhODJ1dTFwSWRNUDVOQ0xGc0dsYzE2Yk4xN3JN?=
 =?utf-8?B?WjE5R1B5UVFkVVc1aXpab01CWVFEZ0R4RHV2U2NFRXl4a1RhMlZGMzJQY2V2?=
 =?utf-8?B?YU9VWFg3VTZZeThaVnhIS1NEZFVYcG4xSkhCNDFXWGRFWTFNWnorS1RQdWR6?=
 =?utf-8?B?UlF2MlJOYmd5RE1sOHVnQTJsaU8vZXBCR2VlTWhJY2F0RlJhZElkNlFVV0lU?=
 =?utf-8?B?QlU1alZZL1pXMWxXalF0cW1yUFdkSFN5eVlZSExRa1AxeVhDVFRYenhNR2oy?=
 =?utf-8?B?ZDZkL1hFRXVaaitaYXFxRU5hUnhzcWt2V0FXY3hRL0ZIN3J2YU5jN3VCVnht?=
 =?utf-8?B?bHl4UWJTZEFjZVJ5V0Qwcit1NEY2a0VmVEYzaUVNVjFDOGRzQzZNa0VDQk8x?=
 =?utf-8?B?eEExa1hudlZ5bWtIR2xMaVdzdnp4MzVYR2ZBWFZuWENkclFLbUgvOXJZcjB2?=
 =?utf-8?B?T0JnSEJSU0tNdFVuRGs1TmMzZitxRkJYdHFxaEQvTHZTSzFnd2liODcxc004?=
 =?utf-8?B?YVBweHc2QWQ0QWNqWENleEhrK29yQkdDYUNOeVRITGlGV3ppbEJ4aWlRcXBx?=
 =?utf-8?B?MS9UTGVTZ1dXdlNtdlliOWZjbXN2aXBLalRDcjNLWk5JVWUvUncwMVZBdWNs?=
 =?utf-8?B?QXVnWjgrNmRnZVJwVXhjRno0TUNLWlJJc2tmZ1F2eDl4cElpSXhkdTgzNTk2?=
 =?utf-8?B?TDR0ck9PaGpkaTl3S3JVZURQeC9RZVVFb2tnL3Q1SDJFY3h6RFlCc24zQURK?=
 =?utf-8?B?RGM5VVZGOTBjdE9iZ04xMFlmMlJPS2wvK3RnT2xlUndhckppS0hnVzdlQm5H?=
 =?utf-8?B?U2xwNzFPeEg5NjNQbWcyUTlteklNSUJab1hpczBrMmtvMTg5T1dBYlBkdGYw?=
 =?utf-8?B?d1dsbUQyV3RUamJURDlVd1dZQVozdDFrbWowS3lkQis0QlpmQUNVT2dTd2hK?=
 =?utf-8?B?Q01ZdmtyK1hXSWR1eGY5RXd3L2p6SWhqOTFwM3F0bitMcDVqYlpmQkZidWxy?=
 =?utf-8?B?YnErMGE1Y3JuYTBFWTJhT2pGSGoxa1Y5NzNhUDlHUGNlL1ltTUF5Q05tNGg3?=
 =?utf-8?B?blZDMlpBTm9PbWdKc29QV3pINUE5bno4ekRGbjd3VE5ybWttK3RWZHB0cWtu?=
 =?utf-8?Q?AohQ1zJxoJ/7Jfa4SEFh81GpuflYyKxIxVmwEK1?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 503d7206-d95e-4dbc-2a41-08d976a4cb20
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 10:54:00.5412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MJqxkgARP7P5OP/tFMgeBcsHxyOsR4vQzF67covFPWbahRiO7WS/VnehxorkGYlwGTsgreRZz0JA1JoDMlU1/uccaFTJRTjKguA6GwZQrqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6697
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_035406_289980_8C242CD8 
X-CRM114-Status: GOOD (  23.76  )
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
Subject: Re: [PATCH 3/3] arm: zynqmp: add boot source support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

Thanks for your comments.

On 9/10/21 3:59 PM, Michael Tretter wrote:
> On Fri, 10 Sep 2021 15:43:23 +0200, Michael Riesch wrote:
>> The ZynqMP reports the mode pins sampled at POR via the register
>> ZYNQMP_CRL_APB_BOOT_MODE_USER. This commit adds a function that reads
>> the register and populates the boot source.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>> ---
>>  arch/arm/mach-zynqmp/zynqmp.c | 43 +++++++++++++++++++++++++++++++++++
>>  1 file changed, 43 insertions(+)
>>
>> diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
>> index 5871c145b..262bc0dd4 100644
>> --- a/arch/arm/mach-zynqmp/zynqmp.c
>> +++ b/arch/arm/mach-zynqmp/zynqmp.c
>> @@ -6,9 +6,11 @@
>>  #include <common.h>
>>  #include <init.h>
>>  #include <linux/types.h>
>> +#include <bootsource.h>
>>  #include <reset_source.h>
>>  
>>  #define ZYNQMP_CRL_APB_BASE		0xff5e0000
>> +#define ZYNQMP_CRL_APB_BOOT_MODE_USER	(ZYNQMP_CRL_APB_BASE + 0x200)
>>  #define ZYNQMP_CRL_APB_RESET_REASON	(ZYNQMP_CRL_APB_BASE + 0x220)
>>  
>>  /* External POR: The PS_POR_B reset signal pin was asserted. */
>> @@ -26,6 +28,46 @@
>>  /* Software debugger reset: Write to BLOCKONLY_RST [debug_only]. */
>>  #define ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS  BIT(6)
>>  
>> +struct zynqmp_bootsource {
>> +	enum bootsource src;
>> +	int instance;
>> +};
>> +
>> +/* cf. Table 11-1 "Boot Modes" in UG1085 Zynq UltraScale+ Device TRM */
>> +static struct zynqmp_bootsource boot_modes[] = {
>> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
>> +	{ .src = BOOTSOURCE_SPI, .instance = 0 },
>> +	{ .src = BOOTSOURCE_SPI, .instance = 0 },
>> +	{ .src = BOOTSOURCE_MMC, .instance = 0 },
>> +	{ .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
>> +	{ .src = BOOTSOURCE_MMC, .instance = 1 },
>> +	{ .src = BOOTSOURCE_MMC, .instance = 0 },
>> +	{ .src = BOOTSOURCE_USB, .instance = 0 },
>> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
>> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>> +	{ .src = BOOTSOURCE_MMC, .instance = 1 },
>> +};
> 
> Thanks for the patch.
> 
> Please make the mapping of the Boot Mode value to the BOOTSOURCE explicit
> instead of hiding in as the index into this array.

OK. This approach is used in mach-rockchip/rk3568.c and I took it from
there. But if it serves readability I can rewrite it. I think I'll drop
the table altogether, though, and use a switch instead.

>> +
>> +static enum bootsource zynqmp_bootsource(void)
>> +{
>> +	u32 v;
>> +
>> +	v = readl(ZYNQMP_CRL_APB_BOOT_MODE_USER);
>> +	v &= 0x0F;
>> +
>> +	if (v >= ARRAY_SIZE(boot_modes))
>> +		return BOOTSOURCE_UNKNOWN;
>> +
>> +	bootsource_set(boot_modes[v].src);
>> +	bootsource_set_instance(boot_modes[v].instance);
> 
> Don't set the bootsource as a side effect of this function. This function
> should only lookup of the boot mode and zynqmp_init should actually set it.

Again, this is pretty much taken from rk3568.c and I didn't see any harm
in it. But the way you suggested is fine to me as well. I'll prepare a v2.

Best regards,
Michael

> 
> Michael
> 
>> +
>> +	return boot_modes[v].src;
>> +}
>> +
>>  struct zynqmp_reset_reason {
>>  	u32 mask;
>>  	enum reset_src_type type;
>> @@ -65,6 +107,7 @@ static enum reset_src_type zynqmp_get_reset_src(void)
>>  
>>  static int zynqmp_init(void)
>>  {
>> +	zynqmp_bootsource();
>>  	reset_source_set(zynqmp_get_reset_src());
>>  
>>  	return 0;
>> -- 
>> 2.17.1
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

