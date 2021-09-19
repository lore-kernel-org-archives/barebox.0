Delivery-date: Sun, 19 Sep 2021 08:34:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRqPe-00018l-9M
	for lore@lore.pengutronix.de; Sun, 19 Sep 2021 08:34:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRqPd-000778-21
	for lore@pengutronix.de; Sun, 19 Sep 2021 08:34:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gUDWx4fjj67uQ4ee3mAkA+O5bLx5yNe5EfyP07DP79M=; b=Zz0oI8GrLlaod/LgSHDXVPRMCA
	MKYYGdVgIlS8fvXz21fxkx2XlljHgZF/scEL1tJ3GVaX7raj1DLRB7H+AgkAcXwkZ0m2RxL9opWwB
	Y5opEqpHHjP9FsSuPnLv8r2ZsfSpZLKQ7D57kzdJKd2ay0g6IeV8O+ijGWLKEedMuiD3xWFoKNIrw
	H4LaSmIr9iloSkpC9VISJuj1RzfnEzcuVfCiIPPtI6nufqBW2Bya1MZrKNRX5memrMzMOvmIhKuw2
	gs4tteypfa0e62dv5Vdq7biudsL9Yps9QJxLa9/vnXsVlNrEgOccu35IJrqRFlOkejOrkSDcfVJmw
	vqFTX0UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRqNM-00GqRz-7R; Sun, 19 Sep 2021 06:32:32 +0000
Received: from mail-eopbgr140132.outbound.protection.outlook.com
 ([40.107.14.132] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRqND-00GqQ7-Ad
 for barebox@lists.infradead.org; Sun, 19 Sep 2021 06:32:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iovRTp5bqzTJ6f4MTwVkppf7suhPE6NkKyFC0SGDjDJcN+kcnY61Wod1oVmFewbZ67ozeFrHc5yq/B8qWh9gXKBGIJSY5q/0DofX0V4QPMAREIvXTTXjDk4OseVNfpAKrDEmAspo/jw8v+wYZYB5XuWkj5fRnb3GQFLL8G3Kkerf94fHy3HnVVWJn5wbsiPqk2BULuSPrDbXo/7HEHImPc5WcpXnSJ8/BHQc9AzjpVGdc+U9Y0BeN1yXVMDahQKO+cU6BW57gV8dvuNZTrbQT4wVp8tA1u0yesqinYt1fDoKGdzJ+RcMbTKMOG6Ajp1IRVh5lgmcJ2eQZtKt5cNJ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=JxL8KHAuqTCi4BFADw297oMLz+ogzrZKByuoJxsuaYM=;
 b=iOVPYL7FpnXPimMBmdr9aZ8psPorm+9YXT+Xh40tfdGHMyCVbCGamCm3+kKNAfCOzJu5/BKTbdc3q3+3qYSlduFGZ5dj6cyHF65ujXsgk9a6uh432JKAbPq+scBoZno6WIVc73IE9253qEQu6Sr7XAGjdrPA+mThlCTmwI0egmIcsLUHeBCgpUpq6fyufUdZaAXdSL5/4dWsFWrcLXnkPwQ27pTYsMw3Pnh1Lb3J23TM8be8v074AInBmqnPdPxueufnCWieRSumsI262zajdGmhKNI+H/FttimA0L6HsDLccG5thi84jJjEqOrBYcKsbDagKoZCCg7qpcYNpNG0qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JxL8KHAuqTCi4BFADw297oMLz+ogzrZKByuoJxsuaYM=;
 b=IyUsNbNv/hxVj6y0KrQJznUrT1Ky4J2TCMxYkWByILAEWjFhojtanD69UvHupqGIiEKd3rLOxDw349SwvxsKAOfnjiOU5T1CmGVbwQdElGxgZTsbSJv8oYNHs6QLema0FKQaIM89vUZnVA2VAaiPC2K3KLVCE1tvMPMYk6qmEQM=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB7PR02MB4346.eurprd02.prod.outlook.com (2603:10a6:10:47::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Sun, 19 Sep
 2021 06:32:17 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Sun, 19 Sep 2021
 06:32:17 +0000
From: Peter Rosin <peda@axentia.se>
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
 <bf4bc5ce-8206-ee40-f36c-1e5dff759b6e@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <237cc091-69e4-c49a-9c7b-eb195515da63@axentia.se>
Date: Sun, 19 Sep 2021 08:32:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <bf4bc5ce-8206-ee40-f36c-1e5dff759b6e@axentia.se>
Content-Language: en-US
X-ClientProxiedBy: HE1P18901CA0021.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:3:8b::31) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 HE1P18901CA0021.EURP189.PROD.OUTLOOK.COM (2603:10a6:3:8b::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Sun, 19 Sep 2021 06:32:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6f91e158-80fb-4bb0-ae5c-08d97b3739be
X-MS-TrafficTypeDiagnostic: DB7PR02MB4346:
X-Microsoft-Antispam-PRVS: <DB7PR02MB434649A3D4064F1F3D633925BCDF9@DB7PR02MB4346.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KGqcIW5+NT/n6Rw0qw3XLn7YHznUnjhMb9mTMWGmG0NsegQEzPUaED01UHV/ubOuReK3ky8vHf3nMFDQKebjmU8x8BiqlnIPEffvZeOGIjzZqLhhZLv8hp4FZ6a/48NvQkhaC4roPI3JUIhirj8painSEw7Zt1SmYUtGv2Ozs/uo+8mGiX0653ZAwHkd+rdiOKJ8czwLilXtoGBojkTuVqV+wTIw+w8qsb75gQHa0LVGtwI+8v+ud/R+uCD0SwzKvJQe+3POUZ6hSSzUXfU1EM691lfMHqlXST0gHIVyUsPaei1YURxN/JOVV08s2PIwLSgCqJ3uIHNNP6PbqEUOkcg0KSClC9p8xTQ3ucZVqAkFz8WGZLt8J0dHfqtgDBizguStlGjTsgpFNNySGI/LLNlpvHrs2+JWd4ggH/IHYqvuhxDYv87Sto8i/TJd7pWrJYFrC5p8F/QSEM9hijOL7X6CdmTmjJ1OPH6u9to6cbB+VnPxiOxQf0RrkhR7shpjspkEIw9EVmr5vTalHsU2ghUYss4uprCojGD+Wp0VSbJTuhsIU8TfkyaNzsl9WEOrFUvi02JmvG5yHmmZ6mRG0IzNUjUBcURu8Yju9ck24SFXG0fealYA3xjcnOH4VUe+RDVofwm/fvzlMez6Lu18RZPY9L7ELtF/WmvmXeDci54GW8IUjuQLE7vgc5fYYXkwVqKblaZ8rhXKoJIZp9aMsApunmfQ3C9pmMrE7T6Hr70=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(346002)(136003)(39830400003)(396003)(508600001)(186003)(2616005)(66476007)(66556008)(16576012)(66946007)(31686004)(956004)(316002)(110136005)(6486002)(5660300002)(86362001)(31696002)(4326008)(36756003)(2906002)(8676002)(53546011)(38100700002)(8936002)(36916002)(26005)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0NBNTdXTlZrYmJhUTQyYS9Xc3NpcU9GTFFlbHc1Ky94Mi9hY1pSVUs0SmF4?=
 =?utf-8?B?VUZhTk9oU1lLM3lzMG1ta0lKaC96cVROa1VCVUJrSFhkSUhocFd3c3dTaFFU?=
 =?utf-8?B?UFRYc3hSMEpQQmYwSUJrZGNwYjdrU3htSXR4Y1B3UWR5SjVpN3d3enlUMU4z?=
 =?utf-8?B?QmZDd01aS21BSUp3dEYxcGtzaG1Hd0RDVVlJQVlaSEFDNnlKTkdraHFJelZx?=
 =?utf-8?B?d0t2OGk4UHFPblRocnRYUjhQcEZUZGZ0WDhQMzJ3VlEwTlltTVI1UGc4QTA1?=
 =?utf-8?B?bDQ1cGVRRzhwckVKQ3NXSU9ZUm5tM2RnZmhzSlpWbFk3V0ZXWDFiTkFSVEV0?=
 =?utf-8?B?eXJsVGRYR3lUbEY4S0x1dDEwTFJIZnJFU0FKTXNKZ3d3WkdVWHdnNXZyREE3?=
 =?utf-8?B?ekRvVlppZ1NJeXlHOWRtY0I0bGMwd0Q3VzRCTEVyeWJuczgwM1o5M05BRkJE?=
 =?utf-8?B?ZnFuREd6Y0kzQUdMOEVmVERjMVZDcDIwVjFtSlZLVEJRbjF1Zmxrc2VEbU1O?=
 =?utf-8?B?TDJCL0VzWkUyQ3lXeENBOFFGeWJyTkl0ZFdQL1VJWDRZTGlNTmVUN0RVKzNX?=
 =?utf-8?B?dlJSWE9yL0V2WWh5UHdWTnQzMzJjRkhRWXNycTAxeGt4ZS9LZFhjU1NqVzdL?=
 =?utf-8?B?dm1BVzg2SEtzT0VrLzJPaEswVG15Y0Y1UEE3RWhENytQdDZzd0hNMUk2TDQ1?=
 =?utf-8?B?eUdZM2huNlZwZXNrQ1BFTVU0eVNDY2htYUxva3R2eTZ6aGZDMDZWRXdqYWZq?=
 =?utf-8?B?UGlQY2YvYy9tdG9hVThBcDBzV2FiR1JUbGNLQ1IreEZ5WllxWTZoRndRTEVp?=
 =?utf-8?B?WDhEYzZ1ditWcFNqU2JRWW1KNnFRejhhMVpDSnRHZjgwR3ovblFDUHh0dzFK?=
 =?utf-8?B?Rm53dTRMaUg2WnNLMWtBcnkxUlVWUjNIaHF1Tis2bUxvNjdNQnBQbzZSelIr?=
 =?utf-8?B?ZjY2UGNseklYT0tIZ1V2ZVMwOXkwZnVidU4wcTljZ1h3OE53WGVENHMxTzJO?=
 =?utf-8?B?ZWxYWVFsSjZjNm4zSll2bEVvRFVXeVRtT1NSWUpMVE5HWG1MYlQ5UzVIOEtj?=
 =?utf-8?B?UXBwcVNnazVmbk1UNG5uOEhXZDVtUW51aExmQmcwbWs3ZGd5ZzU5dG5DVzJH?=
 =?utf-8?B?bllGSXJLSFZHL1JuVkRUdFJCckthOWVJaFVqMFM2LzVVd29iOXpWRTZDTzYv?=
 =?utf-8?B?UlI2dlFzVmo3aWNLd1gybXYxUS96K3o3Y0Y2cFlOemtFUnlTeWU1OURJRUdi?=
 =?utf-8?B?NDY1VmxDVG1yb1NjTGp3VmM2UFJSdDFGY1JPbC9IKzhZUnA1YVY1MjR2dVhJ?=
 =?utf-8?B?MVlnOWNVMjZyV252TEhPUHNseEYxNXROQndtUkdaV1FOQnBnRzlPZjJCaEFO?=
 =?utf-8?B?aUg3OHNVcDZDYlZQeW9ONTNCS1daNmFrTFR0WUtxQVpPN3VON1JCcEVHVzc4?=
 =?utf-8?B?TlpmSDJqczZWOEVYQVA4d3pjcjZ3eUpyTzBZcFMreEdoTldYNEdFTHFEOXVY?=
 =?utf-8?B?RlQ5M3hMYUc0ZFZYQUk3R0lFRUxFZkZMWExseWoxQmtOQ0tkcE40TzZVS1R5?=
 =?utf-8?B?anpnYXFUem1lWDZOeklnbmNraFFOT3FyS3ZDelowSW1aeXhoTnpCOHBKZExJ?=
 =?utf-8?B?N0lNN0RHYllsRjczVjJCOEJCWUNmMTR1UUhXSERTQVExNDRCYWZROFkvMHRF?=
 =?utf-8?B?a2xYYmVtTFpGeWJhNTFISWZ3ZWx4QTAxcWtIQnMwM0swR0hGUXkrQWs2dUlX?=
 =?utf-8?Q?tIWrTSoIA8eFAk6hdbsG3+1EoKkX4k1YLEFAMCk?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f91e158-80fb-4bb0-ae5c-08d97b3739be
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2021 06:32:17.3440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aPPZpfzgT8FVGiIouq2eXGznjiiFMr+vWHfYW8QtWmcp+QOWDvyJPBk0ksOGhJ3z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR02MB4346
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210918_233223_651325_5F8CCAA6 
X-CRM114-Status: GOOD (  17.03  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: at91 sama5d3 "regressions"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2021-09-18 01:57, Peter Rosin wrote:
> On 2021-09-18 00:37, Peter Rosin wrote:
>> Hi!
>>
>> I have old boards that I'm trying to get up to current
>> revisions of various pieces of software, and I'm running
>> into a couple of problems with barebox. After bisecting
>> and sorting though git history for a couple of days,
>> these are my findings...
> 
> I meant to mention that I'm using this extra patch for my board.
> 
> As you can see, it's been a couple of years, and it is not at
> all unlikely that the root cause is in these files, and that
> there has been changes in the other parts of the sama5d3 code
> that I need to pick up.
> 
> I will dig into updating these files, and check if that help.

Ok, it turns out I don't need to do that update, because the
only thing that's actually used from the extra patch are the
tse850_defconfig file and the environment. But since the
tse850_defconfig file fails to set CONFIG_MACH_TSE850, the
actual code in the extra patch is not used (not even compiled).
Instead, the board code for sama5d3x is what I have been using
all along. Big blush about that, and sorry for the confusion!

However, the above also means that the quotes around the
"regressions" word in the subject can be removed. The problems
are squarely in the upstream code base, and I do need fixes
for region overlap, eXecute Never and RO_DATA_SECTION.

I have this hunch that the region overlap is what triggers
the other problems, but that's a pretty wild guess...

Cheers,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

