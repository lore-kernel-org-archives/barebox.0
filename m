Delivery-date: Tue, 29 Jun 2021 11:27:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyA1I-0001q8-Vn
	for lore@lore.pengutronix.de; Tue, 29 Jun 2021 11:27:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyA1H-00064u-Jv
	for lore@pengutronix.de; Tue, 29 Jun 2021 11:27:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XIec0EKQiYsRsceCIl7RuGb+SDDBAwiChZ8L4ncziaA=; b=kYJQnM6LJLDH3PdEvqRWOAKmeA
	u6zfHjieSq07qXA5dQP8wQN4KDXlL1F7XZCEbV9Own7u/qmgPkmstWuSR1DoaX7zHtlycWAeTfA2I
	N4uPI4AqUrsHp7weCh6wClBqfY34G2ySZdII3b2c6KTVUvwVT0iBehE7hQVXwLNOaxX+6xWwddfeZ
	5nWhA2cQT3lrssGugKqJzzy+UYpI6HoWJivPXJ72ziINT4HUGKS/+GYK0k0+5Ut82HOR8aln8T21D
	LlMzQaMdcHwfw/jdJLO6UqHbV6o4iR1FdmB602jLGisJBKROVu0Ogq9rIy7EQsXKkW0EC6AN8+ZG0
	k1qYieag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ly9zU-00AMe4-Qv; Tue, 29 Jun 2021 09:25:13 +0000
Received: from mail-vi1eur05on2063.outbound.protection.outlook.com
 ([40.107.21.63] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ly9zQ-00AMdh-6I
 for barebox@lists.infradead.org; Tue, 29 Jun 2021 09:25:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8acKl1suPxD7fX25Z/yqBBfv6LZRNK8R0Pl2s7P2Q78PAsAXOmGYcT9NMUQ8d7+FaJfkKCd3d1vj0OSEPKNXGpQYXajnPekVb+LuCCC1NiEpjlWGcdcqNbQ+56F7evLfDueVNtkUv6O7xoZN8SHszycBJd3bTcrRyUCiMjnv361IHhIk8288A/FvzRS3Dnyie3z5z+hVqihp0U4bh6zoSeTirl7icFch69y/Pm4v8SwzyYs5T8896giFt10W/aUyDm6B4KF42/CdaKJGfx8mp4ZZvpPI1+hQlrvB3dZEmiLGI8N7xQ0bNsw+wUpqHq3dwfTNn6isXPPcUvJAdQ2+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b6zTELA+eb6M6mK5rdl55SjneGMgUvhjrA4ZijZ2ldo=;
 b=N67EQ6oBkmHcw3Eph0sfjeXIU2tACJxbyxL8T29xbIU2ob5gDHZnmmuESSNDlHw7E/vcys5oiMIZT44EMG8XDCnk9k2dWLTmyrrdeEAzMQzl26bJAiQU/ksF690dFhgg+pM0/AV9+Ap9D8vOv85h+wubRcSulZoC9SltQqqekCZu6QTgWfz2ZurkdNtAlKlxiYhd0bndQkA7BLS8X+Z84Cp38U9CqcIcAWx6+3q1CZkS5SMpXxqbnkdYcpEIlmNemDk6Y+A0V/XzDBcalqC99sX3C3WZJHq5bkEvzZHTtBgYGM2L0Cs4qGRaX+hHSSdajd8otSaQHhCfAInmrBW32Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b6zTELA+eb6M6mK5rdl55SjneGMgUvhjrA4ZijZ2ldo=;
 b=24bt3uEozIkBI7rGGynim41FOhUjTO1vh012ypNOGuNlMMfWR6xUXQQ9ttYVj+amlYsna1uoV/eWlFOV853u4BX42TNQiiwy9mvGPuVMeznUEyYxUXkIl9WG90hv/4ZWT4Q/+I/Uxm/xt8Gh+rd7AgmGzdssEHaGdOJ3SJWy7EY=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB6PR0801MB1718.eurprd08.prod.outlook.com (2603:10a6:4:2f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19; Tue, 29 Jun
 2021 09:25:03 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4264.026; Tue, 29 Jun 2021
 09:25:03 +0000
To: Sascha Hauer <sha@pengutronix.de>, Yunus Bas <y.bas@phytec.de>
Cc: barebox@lists.infradead.org
References: <20210625160555.3699702-1-y.bas@phytec.de>
 <20210628202314.GR9782@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <f692a44f-e182-0091-3c73-5d4191ce7d62@wolfvision.net>
Date: Tue, 29 Jun 2021 11:25:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <20210628202314.GR9782@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR07CA0288.eurprd07.prod.outlook.com
 (2603:10a6:800:130::16) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR07CA0288.eurprd07.prod.outlook.com (2603:10a6:800:130::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.8 via Frontend
 Transport; Tue, 29 Jun 2021 09:25:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bfe24674-94a6-40fe-3dad-08d93adfc673
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1718:
X-Microsoft-Antispam-PRVS: <DB6PR0801MB1718B3BB4FEFF6F15D8A44A3F2029@DB6PR0801MB1718.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZhSQZWplOhmA24dJLX92fluR7aGI7LtKTdfzL1vMtNnU6MEWBPMJojSLzdfIrhUqr1t8M6L8b0oq/6iXacsAHVF55Q7t2xj0YMTs8wCYv4KIktgS4A3JTvICAKfye7mN5VevBii66umBQXwPu2YbpVjV30wC9l0qVaLBhqSGuw2AvGuzPEuQkEXpgJ9uWhjUpYAWcO+pFvA8Bhg+c5uwOpmE6hINkY5FgNgljJnlrYdq+Bld47dTFtrGVWuw+wIcOvuQVOA2KXAq1X1ocS9Gzq08Z3BsAkF+sutvDuPNRn/RQuURxBOMHTnvfmQN2RG+Y/yrkTNl3O8QHtWQ7paAIWxO8v2FA3VDGcKsG9SZ8a4rWkjssNS5vwVt72HPl5RtAfXlepeug18QrF6hdAJdya8JSBCLh2M1khdrs9+2iPQEryAN1AQ0ExAsRV4fxgn4GpTUUa2ilII9rFS6opCm7cXkcDZRFsIm1IkzbYqfQt+x1JjuQFi9py+N+TUwPfU+FBsJoZrbJ7xujDAqDW+dyVWtUqbzdcB+xnyaFbITcCVDdZCuKujNPKwnvM052lUol1xTGJ72jljfnnjWLxRwVJiDFw+PrwmXiwlfFouzMnoq+Gtb0aXkjQbaVsnl0q+UllUNRSQHDWKj98ppGYbBUHeCZz9DPmRVr8Gi874XmZUdfZ079yF7DWCIGWBKKL4TJ+BLsYPM1XSCVyVwyju9cEXh6ThZgW3FGoJsZsepH1BZ4s0YrQFyVccN+WGVTxMX8+qY7Xa9K+3hOihkZg4bEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39840400004)(366004)(376002)(396003)(346002)(44832011)(478600001)(6486002)(38350700002)(38100700002)(31686004)(110136005)(86362001)(83380400001)(2906002)(316002)(16576012)(2616005)(31696002)(36756003)(66946007)(26005)(8676002)(4326008)(956004)(66476007)(66556008)(36916002)(52116002)(5660300002)(53546011)(8936002)(186003)(16526019)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEZHWGdPQk1hNWFYNEpPaFhLL1RSOUREVzZma2RYYVJYS3JmcFFzU1NPZEw5?=
 =?utf-8?B?dDkwRTNCSmo3dlBqVnl6OUdGK3lxWTRlMmc4b05NNjRYeWdTbmMvcmxjOWlM?=
 =?utf-8?B?RElsck5yV09zUE5MUHpnaC9nWjVGUnVNZTVlempKWGVJc21VS2lKMXBHMnM5?=
 =?utf-8?B?MXR5MGNYUHNDOFJhREtHODhHV2hNOW1pb1FBeUlTQU1rVDh3RCtMK3Y0OElI?=
 =?utf-8?B?N2NTQkNHTWh2S3NaWGxGNXZCNmQzOENnZ1M3V2lCTTFKM25ZTVptVURZY3Ni?=
 =?utf-8?B?M3QwLzVram45YjZGL0h4MEpQbE5sYWU3aHBqdWQxNllRTGRLeHh2U0E1Z1Fo?=
 =?utf-8?B?NFh1VGpvQm1TQ3preFNpRUE0Nm5RRGdhUklFU0U1QXRZRWlzMG1CYlJaclN6?=
 =?utf-8?B?OUVoTzdUR0xJSlBtTkxoYTZWQTZlNXEwYWU2ZTA4QkRNWEx3V1YzNUw0TllM?=
 =?utf-8?B?d2xrZGU0Q0VvZnJZMjNYLzdPTmNPaDdXcjMwZTlUOFV3aUMzWEdTWEZGbUk0?=
 =?utf-8?B?N21yU2lXWk9xMFQxQlFHOEk2V1hLTjhIdStQWFMvMGovN0lTRWp0ZWhRYmcy?=
 =?utf-8?B?T2RKNDJJSEhiMDJsRk5zdVBmenE4MmpIVDhRNVhmb05nQXVSYlJKa2lJODht?=
 =?utf-8?B?N2FkeXRUa1BEVHcxaW9TdTR5R3JRMUJlQnhXTmFrTm4zY0N2bGt6UUJvNzMz?=
 =?utf-8?B?eWJtRXV5ZVBIbHlaNmt1ZGxyTG14cGprOTBMeWozY1RVbHpNN0tHM3piWTRE?=
 =?utf-8?B?Vml3NkQ3UW0zVTZrclVZVUEwZUdKcVF4RXpoaHhKL3d5cEk1VTBTYVZWWEE3?=
 =?utf-8?B?OGJSVzJ0aXZJOVBSM0gwUTBLSkc3aTBnazBBak8vOExsSitwQXVXVWZITGFa?=
 =?utf-8?B?OFppZWRCVU41WkFIYXJBU2g5Q3hDbVVnRTVPQmtBTTkwRVdlZlF3RzZ5UWJ2?=
 =?utf-8?B?elJGOFU4ZDZoY3RVaHliOEpCRXdhc2xzNEdMOVZLTzhGallVZytPRStMYkwx?=
 =?utf-8?B?b1pacjN6dTB6c2FnYmtaRVhDNXd1ajhDNERnRlZMZEpLVzluUzdqWGpNWENr?=
 =?utf-8?B?VXdmbk1lN1B4NDd5bk9pTmxsMGhMK2FPSVloS2dvNW4yUTBOM00vMkpuaTNS?=
 =?utf-8?B?WFFrSmlZeXNrM3ZINUFNemtRYUkzKzNKNFlCcVFobGNzOW1XWU03YjR4Zktn?=
 =?utf-8?B?NStOM2FzK2hBdldRYzZWR0RndkkxQzFqSUlnNkNwVnQzU2hDMGVMVk9yZnk4?=
 =?utf-8?B?aU8vc0p3TVRSWWVoWjhNVjNMSnRlSXB2R1pKckREeWdjR0NCRnoweTR4aGhY?=
 =?utf-8?B?QTdLSXdwQmlhSUhBRHBoVHlERjc0OFBtOHMvTldkNkZCa2N0SkJKeDk3OFdv?=
 =?utf-8?B?Z3VSeGlMcjRGaUdDdjF4NEoxNVZwU2d5RXZYajlCVy9GWnlHbEp3RUdld2lG?=
 =?utf-8?B?WFNja2ZRYjl5WnRsWS9HWWxRQWl3bmZ2VUJqdkFFUWorWExUMTNMWTdxOXlL?=
 =?utf-8?B?ODhLbDVkNGZVbFhmWnF4L01STENLNWlzUFNmVXRsbFN6bk5adWxjZ1F6V1F3?=
 =?utf-8?B?Q0pLVkRDUG9INFE0aTV6Y1E5dERXVVVBVFpQbkxhTEx5bjR4RXZERWVLNjBN?=
 =?utf-8?B?UWlZemN3NFVzWXhxcFFNajE3L1IrWHlGQWoxL0JsREFLSTZVa1ArZ2tEVlp5?=
 =?utf-8?B?clhCTjhJQzdsZEdpeFpFTlpaS0VDVmhQeGs1YmNpVHZCWXZCMC92RU1xSThz?=
 =?utf-8?Q?hu1aYFpSUHRecy8a7sJC/HAmDwMeNuefbbJdrk6?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: bfe24674-94a6-40fe-3dad-08d93adfc673
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2021 09:25:03.2774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hXPb6mrV4F03sI5ksnJ/9R401wu+gvgdHawCI6wK5fMUKzhJtrKDy6KjmQ6L3C8/uw27oknbXd6mf3+1QaKNBLLmMNnZyOpB5Aojnghnp2Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1718
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_022508_360272_B622C010 
X-CRM114-Status: GOOD (  18.30  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] commands: of_property: Extend command usage on
 external dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 6/28/21 10:23 PM, Sascha Hauer wrote:
> On Fri, Jun 25, 2021 at 06:05:55PM +0200, Yunus Bas wrote:
>> The scope of the of_property command is limited to the internal devicetree
>> only. There is the possibility to add fixtures to postpone the operation
>> until boot and after the kernel DTB is already loaded, but this does not
>> cover the case when the property value needs to be phandle adresses
>> defined in the external DTB, since assigned values are evaluated
>> immediatly.
>>
>> This patch extends the of_property-command to use it on external DTB's as
>> well. In case fixup is not used, the changes will also affect the original
>> data.
>>
>> Signed-off-by: Yunus Bas <y.bas@phytec.de>
>> ---
>> Changes in v2:
>> - Use %m instead of "%s", strerror(errno)
>> - Not fixing devicetree anymore before save
>> ---
>>  commands/of_property.c | 74 ++++++++++++++++++++++++++++++++----------
>>  1 file changed, 57 insertions(+), 17 deletions(-)
> 
> Applied, thanks
> 
> Sascha

on the current next this patch collides with "fdt: Check blob size
during unflattening" as the call

>> +		root = of_unflatten_dtb(fdt);

requires now an extra size argument.

There is a variable "size" before the call. Is it safe to use it?

Regards, Michael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

