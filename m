Delivery-date: Mon, 22 May 2023 11:24:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q11mg-009UL6-Et
	for lore@lore.pengutronix.de; Mon, 22 May 2023 11:24:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q11md-0001l0-Vt
	for lore@pengutronix.de; Mon, 22 May 2023 11:24:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yKa3rnTGhCWKj93wQnX/SEb7yybd9t4nnMXXfnOSANw=; b=uYEJ3lkLgvzHh83NO6H7FuuBR9
	M70L1kWtyLSqXM9mzAVc1OpVavMzI/1fZVRvqwbebizkjAwZLy2Sr3iUD4p0V+5PEoF33qEpi1ejW
	GInZFySsyRzVk2TK8kvw781r/VLptKXQLtwc21+1jVq+aMLvBEblWqVf/0TZNQgySZHEpxALEeHfb
	/qKRlLxnbNHgzdkOcAVQGM5wT8OVVkBqz1IMpiMA+i/nzVTrtelyqZ5+4qCfCL9PGxrSTSWAwHDKV
	v/Ztg9Q8npKyl8C8cUL3Auy5nbOMgQQxOCcQzFI+mjHIFsh+6RUhJBQPiRagym5ZMeZDyZCuQY4fa
	58JXqEmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q11lM-005rpJ-1Y;
	Mon, 22 May 2023 09:23:32 +0000
Received: from mail-db8eur05on2061c.outbound.protection.outlook.com ([2a01:111:f400:7e1a::61c] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q11lJ-005rnE-1K
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 09:23:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XOuGJfVSyrq0QUPx8WAwBvQPG2SBfuaVFLZdvX7OkS0mo2lOU0JbsgGiov36c/FNsWMbJlUdWgcSWk5fE65KT1pSVVxYeV3I2sb3xVXGTCLIng6xmWkfP3lkwiIBHTh3jmaMzjX27Qwe3U46dLPGyIdJa+8aZuzr/QHi7QStWzdUfXND7v3ikfpRS3oCkTj6UA/zmZ01NJCZKOZmSSXBC2qCDc/yJPWXyVMLZcwySrafDZIEQOsQRRg3+Gx89K6xS9hl1L/A7RVECMzsjxXyrdQsUpDnpuKxF6y8OLTAAl+0KpncSATYplAB6nvMHA+MRjCiOEHNzBVpU6O9fYKv7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yKa3rnTGhCWKj93wQnX/SEb7yybd9t4nnMXXfnOSANw=;
 b=NmkLIcjp5s4WgXtlOzWsZMhljj/uGhVZ0d2g/kAaZWyHYzAB5KuD/GHHxOv9s/lH6tnUAM5SNd8+AcqMdtmDZAUyI7rlmpV9KE13bbkaTLwywPTY86V51XuXCVfM/JEkuT+YIke/EPbAVpwDoENwrIIjuX/FEsclQzzLO+hUx/MXA3azeg4M72Dq5RsVohUTYTASoGHPUzQUUGFvCOmj8a5yb7hP3/1TE9Zh/j91NqVhxUk58UX+2NQ0LtSNbmdYMAeqP2d/Okds//0BroLxiauMmm5X5F16/cyQ9s2ydd7/50mDo0pe4zYDDTu+n6r8UN70vNdSNmssBYBejrIONw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=t2data.com; dmarc=pass action=none header.from=t2data.com;
 dkim=pass header.d=t2data.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t2datacom.onmicrosoft.com; s=selector1-t2datacom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yKa3rnTGhCWKj93wQnX/SEb7yybd9t4nnMXXfnOSANw=;
 b=Z2KSl8zJmKByVgRdYH9dy7f0PGN0KQ/SVLxOapXH5LA8cFZXoQDyWc97VW+M5IY8iIsAJOEX+/HwWkfEA0nG8WMwwtH8a9z+JCjmI12vCzebAemJaPv3GiNzwJ5qfppTYZUq4y6becZjLjp7eJxgfjUFEiTHqn3KW0OKOR675PQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=t2data.com;
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:334::22)
 by DU0P251MB0573.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:328::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 09:23:23 +0000
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::8870:34db:67db:6e1f]) by DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::8870:34db:67db:6e1f%7]) with mapi id 15.20.6387.034; Mon, 22 May 2023
 09:23:23 +0000
Message-ID: <4bf40dcc-5cab-ef34-5624-9d09bf08638f@t2data.com>
Date: Mon, 22 May 2023 11:21:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: jbe@pengutronix.de
References: <20230522052526.1038966-1-a.fatoum@pengutronix.de>
 <20230522052526.1038966-2-a.fatoum@pengutronix.de>
 <a67a1e6e-6f82-0f0d-ac06-b25d42d11a1f@pengutronix.de>
From: Christian Melki <christian.melki@t2data.com>
In-Reply-To: <a67a1e6e-6f82-0f0d-ac06-b25d42d11a1f@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: GVYP280CA0008.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::17) To DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:334::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9P251MB0618:EE_|DU0P251MB0573:EE_
X-MS-Office365-Filtering-Correlation-Id: a81b00c6-8ff7-493f-b039-08db5aa630a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	4YvgvjYhPJl9a5Tb0rI5UXrCEAF2EQwIpzqxYoopi5kVNNAVaj6yPnYwrdau57rUs8ICjem62/utaR3puca3G+RMmiv5Tf8mWoKQYVcOQbDvIYO9VMxTDZzI5DHgId69z7SM3LcnkxdZGJB7oQiZ/WJNdaLRWJDLprYBC1giGb4X/ud2VhICfcRBdoxdOl8osM3+0y7wTcLMV3iaAvbpDe4n/l0zN5bPYcTrK4ufcTMV2YPiCVVB4iLVB0Zo9f08IopXNwE8H70vueAaK1rhqIkgr6ykQ6FL9mOYGdJgW+Ng1FjMN777aHOYSYQGEarbFs3gHbRBJtSeKbVo57mFRVcyo/TVRLWBt4EtUV7wbGIOrdVwXu8u1uElw9ICUkaAqLswQIQNJzy1tIVevgkhrcY+Nr1SsvYV0PQeredg02yaUcepBi7paoQhR7SeQ1Hfl6fye4hAHR6K4ES6JMqv70Zy8Z9kDRm/CvZIElPWrKwa4alt7/dL2ce4WiQYP4NH1k9EIG+mbNnTyUNs/vCKjaccoWTq5rXYTXZGK5UMR0jxwiCIv3DKWy6daH2N/DdZLgQY3qmwHALbZOA1UkWcECDjVOoXvDM2M2t7CCeZRwfMXMiqJimAYppfO7DlXRyr8M9QGs700mBIfwAK3Zxrng==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9P251MB0618.EURP251.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(136003)(39830400003)(366004)(376002)(346002)(396003)(451199021)(6666004)(316002)(478600001)(6512007)(6506007)(26005)(53546011)(31686004)(41300700001)(66946007)(66556008)(66476007)(4326008)(6486002)(8676002)(8936002)(5660300002)(44832011)(86362001)(31696002)(2906002)(83380400001)(38100700002)(186003)(2616005)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?bXZVM2JRMDh4bW1Pb2tONjcvT3VuOC9UR21rRXdVV25lLzhJTTl1V3IzR1Vu?=
 =?utf-8?B?Y241QzVlSXAxSU56Uy9JeFFHQUtDLzUycHJrdWptemtVKzVFSDVLOVcvMXZk?=
 =?utf-8?B?ZjNGSVVnN1BSKzBucE9heFNOUm9pN1BnN1JCcFRDOTJuVVJWeXZSTnlQT0R2?=
 =?utf-8?B?dVY3Yk5IQlZ0b01ZbnFTejNDVWhpdmdkS25sN0tkUnVQUUZFSVdXdGJFbStw?=
 =?utf-8?B?bWFSazZiRy9RamZNNWljcHZEMXlHTTRmUnprem9HY1hZSFlJSnhPVjBNbzFu?=
 =?utf-8?B?bE4zc005djNIYWYxdXVqc3A5aVRZQ2RUS0p0a2FmQ28xVGh5c1BtVTZVcW1J?=
 =?utf-8?B?VzlBbFlsTVJwVXBrVUZabzY3Z0NVOG5ydmtVOUpsM3lqdi9uQ0FWNDJWOFhM?=
 =?utf-8?B?YXpESW5pbmFHcCtTY1BaMVczcXNoQ3JxS3VOWVU3dWxCenlDY3VmOXZCUWVy?=
 =?utf-8?B?RGdPenEzYXNIRGlDOEtiYkJvMU1vWlRiNGd0VDVOSzdRRGxWYm1hbTlaNWlJ?=
 =?utf-8?B?dFhKNG1EN216c1dvKzZWMWVVd3ZGRy84ZEwwZkkxSDFoYm5JVFdxWU5HaXdL?=
 =?utf-8?B?MW0va2lnTElsaWNQY0I1WmFSS0lBMnNZdDVOOXY0R05jTmR1K3dTemI3MENG?=
 =?utf-8?B?VlVwMXJ6ZkFMZ3FYREw2U2NwUHFwR1N6ZDZkUFFRTGhQd3FoZEhWTS8rVjZ1?=
 =?utf-8?B?SkNEcG5EYkJLbDJlL1FEVWw0dUhHMDYySWovejB2ZHpLRVkxelQ0M3V6ZTRE?=
 =?utf-8?B?MEJJWEdicmEyc2x6dVZCa3RRdVBWTFFiNW1xUGdadzE3YVI0MWlzVEVyOExx?=
 =?utf-8?B?WmdEdEdETDF5alUxY1VaUFJ0RGZWUHFsdnJPZis1Q1BUTlFZbitKRmM5d0h2?=
 =?utf-8?B?Y2o1SEM0Sk5WZ0xCVytmTjZhaEZiVlNVT2wzajdvYVFKRko4SllvVmhCMjBk?=
 =?utf-8?B?K0N6bERqdTBWWXU5WnROVlhtbDJtdjRxMnNPbE54VjVKQkRwdkdaU01GVS9V?=
 =?utf-8?B?QUpadjU0ZmdKZ2crbUo3djNsYTVFSSs4dE1MVmdBT0VBRFQwSEx3QUFSTCt5?=
 =?utf-8?B?VGJLMGY2MjRlUW5FMks0SkxHbXp4bW1yb08xc1UvYk4zMk5oOVFrQ0I3bHNU?=
 =?utf-8?B?VExnaTN2YU1QZEFMVkZpSUZYdmsybFpFSlZXSUhZam56eDFpRGlzSzZoSzc4?=
 =?utf-8?B?eVNQU25nYnVXUnA0MTZZZ0ZoYXBvbzFpcHRWMlgvcWRnWHovMXNBUjNrTHZn?=
 =?utf-8?B?NU05YVl2M1gxL3NDWWxOT0FHbjZvSkdaVEc0eWxLcVJvM2xMdnpONUl4L1M4?=
 =?utf-8?B?Z1Nwb0FXUEhwTmZWdmFGTERYZ2dUbFpCOUNmVTJudURlSTVSNEpjVUJiZlNt?=
 =?utf-8?B?SVpTMkJHSmx4R2RTNndOL3U1bGROK2tGa0NNbFZIc1JySVBPWW1Kc296UEZU?=
 =?utf-8?B?RExha3g0U2dXejZBUU1ybE1iZmNkZGU2SFZ0aDZhU3NDbzNyV1lRdmwwMktT?=
 =?utf-8?B?N0RrK3oxdHBib0c2Y0hMaVJqc3FZZ2NNRVQrbWtSQ2FLRjRVSlhZM0UvL3N6?=
 =?utf-8?B?R2NQa0Z6MjhkaUdHcmY2TTlsazVSOUtPR1FRYVBIYzZhTGNQOUhtNkFHU0t2?=
 =?utf-8?B?NWxzMDN0bTRnTXBacVI3Qk5Ba3BXOWphblI1czN2VmlzSzl2b3NSZ3RaMGM1?=
 =?utf-8?B?TDF4ZUxGUnA5dG8va3FoTWtyNGhXZjVleDhHTTdYNkpENlNsTVJlUG5SMFhT?=
 =?utf-8?B?RU5id0E4M0gyZzNQcFM1amJnNm5ST0t0QUE0QlBJVnNNQ3RVaFdVek4rNTFp?=
 =?utf-8?B?TFgvZmJjaGVXOGVLdTZ4cnVJaEdzUUwwWU5WS1pPckplMFhLNnFUSEdZcnIw?=
 =?utf-8?B?YllPQkJnd2QrMGhpRmRiMDRzVklEdndSbEhPK053WElDNEJqendBMWVwdGRw?=
 =?utf-8?B?K1VhQUFFa2pMUHM0SjkyWWVnRGRmbG1GYWRnSGNIWlJjM2hGUWs0dm5jWkRq?=
 =?utf-8?B?cExPd1RTVnFDTDFsZVhKblVyQzNiU0dNVlZ4RlBNK00yMy9FVDZWdXZpYWE3?=
 =?utf-8?B?ZjM0Q1lqaDQxbDdPSFNaaHFGa0FzUTlJTWtza3hnRmpNdnJKT1pVQThkcTlU?=
 =?utf-8?B?RGZtN2c4eFJqOFAwbW1sQVVTL3lueThRVnRxb1Y3T0pRVWI1d3RTYVROS0tv?=
 =?utf-8?B?Rnc9PQ==?=
X-OriginatorOrg: t2data.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a81b00c6-8ff7-493f-b039-08db5aa630a3
X-MS-Exchange-CrossTenant-AuthSource: DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 09:23:23.2319
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 27928da5-aacd-4ba1-9566-c748a6863e6c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6X0WoMqTl5z33aul15fWz43afixwzQW8sMOR2onl4arbY82KLRz1r05INoS2Jg7i0T7Kng3ubBB9KNCfcztquT+H/ijFCAulANLp3bC3O/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P251MB0573
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_022329_495565_9416AD36 
X-CRM114-Status: GOOD (  23.86  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFT PATCH 2/2] mtd: cfi-flash: call ctrlc() during CFI reads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 5/22/23 10:38 AM, Ahmad Fatoum wrote:
> On 22.05.23 07:25, Ahmad Fatoum wrote:
>> Memory mapped flash access can be quite slow on older processors. For
>> writing and erasing, we already call resched() indirectly to feed the
>> watchdog, so let's do this when reading as well. This fixes an issue
>> of short running watchdogs triggering on PowerPC, because kernel boot
>> takes too long.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>   drivers/mtd/nor/cfi_flash.c | 12 ++++++++++--
>>   1 file changed, 10 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
>> index f1555a72a42e..10542c710118 100644
>> --- a/drivers/mtd/nor/cfi_flash.c
>> +++ b/drivers/mtd/nor/cfi_flash.c
>> @@ -25,7 +25,9 @@
>>   #include <io.h>
>>   #include <errno.h>
>>   #include <progress.h>
>> +#include <string.h>
>>   #include <linux/err.h>
>> +#include <linux/sizes.h>
>>   #include <asm/unaligned.h>
>>   #include <linux/mtd/concat.h>
>>   #include "cfi_flash.h"
>> @@ -891,10 +893,16 @@ static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
>>   		size_t *retlen, u8 *buf)
>>   {
>>   	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
>> +	const void *src = info->base + from;
>> +	size_t i;
>> +
>> +	for (i = 0; i < len; i = size_add(i, SZ_1M)) {
>> +		buf = mempcpy(buf, src + i, min_t(size_t, len, SZ_1M));
>> +		if (ctrlc())
>> +			return -EINTR;
> 
> Christian mentioned in IRC that it may be surprising to users that a boot could be
> aborted with ctrlc(). Thoughts? Also, the POSIXy thing to do is to return a short
> read count, but I didn't do that, because I have not vetted that everything handles
> that gracefully.. (read_file e.g. does, but I don't know about others).
> 

I think short read handling is the way to go.
Did that in my local version, but yeah. I didn't check all callers either. :)

> Cheers,
> Ahmad
> 

I have a solution here where I have a somewhat constrained boot flow and the console is still available for some initial choices.
So looking at this, I think that from a developer or just bench style perspective, a boot that can be aborted by default is a nice feature.
But from a immutable BareBox or a constrained/schematic boot flow perspective, this might come as a surprise.

Imho, I don't think ctrl-c checks belong in any lower layer.
Given the current BB design, I think they should make sure they don't hold the CPU for to long(reading, writing, erasing, crypto, hashing, compression etc).
Then the caller (some resonable high level) can then decide if they want to check whatever.
But even a resched is a pretty large take on "not holding the CPU" as my primary focus here was the WD.

Maybe there is no pretty way around this.

Regards,
Christian

>> +	}
>>   
>> -	memcpy(buf, info->base + from, len);
>>   	*retlen = len;
>> -
>>   	return 0;
>>   }
>>   
> 


