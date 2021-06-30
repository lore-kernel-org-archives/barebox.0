Delivery-date: Wed, 30 Jun 2021 11:21:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyWP7-0007B0-Mz
	for lore@lore.pengutronix.de; Wed, 30 Jun 2021 11:21:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyWP6-00044p-BB
	for lore@pengutronix.de; Wed, 30 Jun 2021 11:21:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WvoDG/LE3dbT6XJDzBkhhK8OaPfdq8YsjgpUG0xYLlo=; b=cWSoNm1bWLLYAKUFE3HagHCQ0p
	IuFbT4LoBfZ/HlWmji+RxJGPZYwWU8AksWelVZlyeXoScSMhI1DzhBvIPSPKYsYyDT9lEM0h0ZSLh
	AE/vk72F3eXTHCHIeK2B4sEZcLtnk+BwOBASoYfeJ/pzcVhCrQQpNmLsubCa2ORJSlBF7NWGFyP/Z
	Ey9HnDVLadqQFyR2siwPhWz6huYskRyOOUrZHYKDxDqZQbPDSCTK22fia1zITraRmcLGCK8Ho9hic
	sbOl/ahhyWHzuDLHt50pX3cXd09zn54FIKzKgDk7qHSRaCoUCUdYmnMnWlCYj4WrTlj/DNQORVr+p
	FG/v0ONQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyWND-00DSj9-1Z; Wed, 30 Jun 2021 09:19:11 +0000
Received: from mail-eopbgr140074.outbound.protection.outlook.com
 ([40.107.14.74] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyWN6-00DSi5-SM
 for barebox@lists.infradead.org; Wed, 30 Jun 2021 09:19:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8k/Ny4PrrWjgKvojZ1FlCsZX0bGcc9/KIUEnX8lSCeai7whj7rWI7ZyqAzUxyvpeIBYIZvcW3JD6HU4vKZqU1XWMCDLsuxl9EGVekIZuJeBo8JxOnugQ2vreMTrDd02qZLemS/aOme+Q4MIrij0ETv4GW8Uolq6k1VeziZnAr2as7sSo+ajQPhsq/qgnTQs4MXhlGDPvIf4D7IRRLhZwcYqLu4NZhJyjPUbH8d1w1gQDfnbq3u2/LsdvEuRqqhU7xKh3LIpwAWPl8gJ9D/ZEbpIbKh88aVUQ2cnEOPKQHPC6C6RMqm9rEG//71zTzbsGH8gxX/jyDblpPH6lIfSCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fk/hs7pSElAWd6ZrDbuq+/utHyIwC0+rD34LbnXZqj8=;
 b=e6PmbpXs9DmHlbz2yCAuA4YI9KhkAy2QgHc6fjvkwbj5V/NvPx0aLkMT3EEU2w55Y0vvMYjRNwnpEZkvUH9d1UkW6/JSqnb76fHjOgRUTt+jMJqgdfXbwQ/PYr4hH0dR0/dBYHJFt8pnmXLTZb7XphocFKHFiPdDCIgGZqZa9ielKMaj8n7U4K/pWdAS3fSo70yPgndPxNjwrVJjt5SYOsL3k4fZy71hxdjQHKANQFYl7Usz9ZFhSW068I/Fn/7o7AZRaT2TfSIbSw7QCbftcTw0wnTb+59Ila2JsfJLQwcz1ub3UirLDNLHbBUcrs8hxU72Zh9GPgPjnq31XwN1yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fk/hs7pSElAWd6ZrDbuq+/utHyIwC0+rD34LbnXZqj8=;
 b=faxs4BmkEbE/hVYkZIVEk0BqIeH8b4BMaFo7B8qw1LMUHcwMZM2XYj8L7aow+eoOCrpVeDlYQMODxehkLU7HMQwXNdotdWOBtBn7zdbZ5pttZ+240VJ99mPofmLsmoyMDxYPrYleZwHr4pYf3bc5fit7jK6XKJjznJaJFogKrUM=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB6026.eurprd08.prod.outlook.com (2603:10a6:10:1f6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Wed, 30 Jun
 2021 09:18:57 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4287.023; Wed, 30 Jun 2021
 09:18:57 +0000
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210629123104.13818-1-michael.riesch@wolfvision.net>
 <20210629123104.13818-3-michael.riesch@wolfvision.net>
 <CAMHeXxOxXLKQWnhQ2Z++Gou=+XVm1jL+U1kGGWm7zzZByEV6UQ@mail.gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <777bb53c-2e00-8455-ccc5-450d1748c096@wolfvision.net>
Date: Wed, 30 Jun 2021 11:18:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <CAMHeXxOxXLKQWnhQ2Z++Gou=+XVm1jL+U1kGGWm7zzZByEV6UQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1P194CA0040.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::29) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 VI1P194CA0040.EURP194.PROD.OUTLOOK.COM (2603:10a6:803:3c::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4287.23 via Frontend Transport; Wed, 30 Jun 2021 09:18:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cde4058d-0ee6-4c74-fe59-08d93ba81691
X-MS-TrafficTypeDiagnostic: DBBPR08MB6026:
X-Microsoft-Antispam-PRVS: <DBBPR08MB602687C196314A41160D2B91F2019@DBBPR08MB6026.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zfVS9LiaIbwUsj5rSAjF/fZpbWg6XU1eUHUdxpqQccklAAOUjt0p7fuEGpNSIb8wTiKZjIBdk7+13bvdRGjwSLzD3GthxR+pagDoEuEvaJD/4+cm2NoOf6xC8O+42iy2TSLLlJL0ay1Ws/ZLu+IaIPZvRrJUIeBhhVUGkGx9FdyF2I6S1yP6AN2gir4wlHGJP7amqzyoOjx3+gU1rmNaikK6yoXR7o01dxOPZxZpmKPTORS2eeghwVXBasgc/TRjMxMl9LKzLnFtnk58G1voSKLddSm14x8qEkn/Eo7jDtL2cGHDtd98PuMHRmkv3wS+x6/tpkohbGZBjXoiyVMgianiFAs+QHCIq9HmntoRsSulVjvlPVH8VdJ5Ae8dB5P/pY7KFim24Y0I4DrZsZB6MJfaSghJwoO/q+O3lm+v0U4PaPacLp/msibqpgZ7w429+B6mdyiDsyC8D9baqNUoClosZ5BHcbsw3pUyi25Nvv31r8+dcJpAitgHAooHOWmnJYWDpztIeUi8ilFE63oF1ByKb1vjDv2/hzMSt3mSbADFBw6yhQtN7RoHZGmyDzCJQzdDRQCHQuIW8gmZFDxBW19H/X39KUMHQecaJjyaubXwT4SjZJtLLbzaQCDtELUkxfXkCQBXUv65uFycqBaFqXUaG8m+NprcLX/lPAgDIWMU2X6ZcU33zCd3PayK6wzd1D3set/xW1jRNuqWVpQMrUOK3oxHZQDUrrLi8T1ip3dI8vsK+zgrWfVMfVnm63I4+QIJ6sM9OQseoxvKQ+LqWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39840400004)(83380400001)(36916002)(2906002)(478600001)(16576012)(316002)(52116002)(5660300002)(86362001)(16526019)(66556008)(66476007)(2616005)(956004)(4326008)(38350700002)(66946007)(6916009)(38100700002)(36756003)(44832011)(6486002)(31686004)(8936002)(26005)(186003)(31696002)(8676002)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXJOU0tMMkowWGF0S043R2c5bmZFUFB1ZnpuQ1ZTNlVpUmN5SnNXR3ZnSzVY?=
 =?utf-8?B?UUhuZWlCaDdDK0lWa25aTHF0Q2VWZ1RCV1ZneEFkbG5SNHhHdkpONkRVMXBz?=
 =?utf-8?B?TkxNTHNobXh6TlVRTlByU0huVVdyWCtmeWFmNy9wemNmblJVKzNLNXlEZzM1?=
 =?utf-8?B?TGJEc3lzeWIrN1BLQXE1QjFjMDBCdk1Va3V6UmtRVGdFU25xVGlWSTZqQVli?=
 =?utf-8?B?dE5KdXR5WjN5Skl4bGNyL3hVYmJCT1RRMzdTaFRDVVZXenVRYVp4cTN3NmNT?=
 =?utf-8?B?UXpsYVQyRVNFYVl0WDZzVnNINTlRU1h6OHpiaVVHMHFEUGl4cG5qV1N5MjJX?=
 =?utf-8?B?YnBtZU5KWlFrdHJSdHNtQUtWczR2RnZDb2ZEZGdNMlEzNDRoZW9xbzRwMmpH?=
 =?utf-8?B?TG1Mc2JPSHFkcXpkaEpDRno4QTlKeHdjSFEwT1ZGOFpOS09NbGRRM2N5cXRV?=
 =?utf-8?B?M2RTMEhGV1NISTVacmRNSTh2VHZ2NjhzRUVCNmlOMmw0TmRqS2t5aGRBSDha?=
 =?utf-8?B?bWhYMnNtVmJTOXRlaGZSSXBVUWpndnN2V3VIeHF0M0UvTnpJb0Fxc3VPLzJa?=
 =?utf-8?B?Sm1pZUNFYzlicVV2RGxCak5GaTZIMEZ6Y0hlTmE0MmVtUUVWU2xSc3hUQVJN?=
 =?utf-8?B?RnVTd1IyOXlXTlNDUlBzdzZxRjNLQkt4Z3FCVnJ3N0V3TmxUTzgvdGs1QWhl?=
 =?utf-8?B?L2sycEU1NmJCNm1vd3hwUkZJV05CS2ZqN2U0bjc5dnJHWCtTWUQvbUhBdm9L?=
 =?utf-8?B?SUJrNHNicjdpUFU4c3FNb3prOGJoQUtibmxHUzFza2wxQ1B1UCtNRTBiVzg2?=
 =?utf-8?B?S2JaZTNJcmJoTXJwRFlUZWtKOXhFR2w2OWhaRXRxcXFJRFpUblNOazZ6ODJ2?=
 =?utf-8?B?dE1HK0ZDeVl3QWxKSlNEeFZCM2RCOWtKV3NrMXpoSytIYnppRnQyRlhxclI0?=
 =?utf-8?B?Y2V2Znk2bGVHRU1VUGljMXlPd1ljNnlMSUhZYlYwYnVINUhPMXRuYjRqRWV5?=
 =?utf-8?B?b3JQSWd5bGRXTkEwNSsrL01TdU9PVVdiUk5uaUdZSkVZbGNSV3NRelQ5ZlFM?=
 =?utf-8?B?TjBWK2wwditRd0hRM202M3Rsdy9hb3dLMEJ2aC9CbjZMSkZGbWl1cDBHMEZr?=
 =?utf-8?B?QlZYa3ZSRGJNL3JmMmNaWFJvY0dOUmZHN2p2QVlPR01UV2hFeHVhclhxSjVz?=
 =?utf-8?B?Z0JSOTZQNTQ1WHl4WmxlbFJNb3RIV2JVaHAzWDNHTGxidnR6aVpocXRFRmtY?=
 =?utf-8?B?Sk9ZMVUvNG5jMmYvcDVyRWtGc3NBL2VYSEtGSnQzaEt0NnFCMVMzaE84VWQx?=
 =?utf-8?B?d1o2aTNZZVVqZkk2MUFKQU1QTlZ6OGNJMWZtMHg3eTdEcTFobzBHSjlCd3Yx?=
 =?utf-8?B?K1RVWE1rZ0IrQ3U1YlVCV0dqZytDUUFsZk5uT1RNbVF0aS9QUDZxdE5ISC9p?=
 =?utf-8?B?RXY0N3g5bjB1VmRKOXdkT2tOaVBVOEFCRVk3OUp3UEJZcE4wZWxwdWF0N2hD?=
 =?utf-8?B?Rk00UWxyR2MvQ21JWE5PK3RVZ3JTeW1IR3pNbXpUV092Q1VvTmtQSnkzZHo2?=
 =?utf-8?B?VVhOd08xd2Z5T25Qdlg4T0xrUHovcDRMNzRIa0JrYjFxdWlSK1MzeWpvb3I3?=
 =?utf-8?B?YW1TRWY2RW9pMmZlMnNrUWZVd21ZeWh2NjNZSXV6NVJZUlUvcGxsQzhjUWJr?=
 =?utf-8?B?dlg0Zkx4ZXFpamJ2TU44WndRZlRYWEN5aTI0SHg3QnpBRUJmOGUvVDJ1dUJ0?=
 =?utf-8?Q?O/EWQvHwKvKmOC/YBN7HmAhhYuEJR26rxa45Ki3?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: cde4058d-0ee6-4c74-fe59-08d93ba81691
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2021 09:18:57.0106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gyxjpmel5LJzkpuGD1hE9PLQJysJSurlt1X6jS0ciN4Dno6YmcckyarWkTrOVOEUPQeln7xgfeA5/GPkhJgsg6diPrsU9EaBgqzpy3He3yw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_021905_047822_8AEA8060 
X-CRM114-Status: GOOD (  17.36  )
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
Subject: Re: [RFC PATCH 2/2] arm: rockchip-rk3568-evb: apply dt overlay for
 evb7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Trent,

Thanks for your comments, much appreciated!

On 6/29/21 11:58 PM, Trent Piepho wrote:
> On Tue, Jun 29, 2021 at 5:32 AM Michael Riesch
> <michael.riesch@wolfvision.net> wrote:
>> @@ -63,6 +64,9 @@ static int rk3568_evb_detect_version(void)
>>                 evb_hw_id = 6;
>>         } else {
>>                 evb_hw_id = 7;
>> +               setenv("global.of.overlay.dir", "boot");
> 
> Hardcoding the location of boot files in the rootfs into board code
> doesn't seem right to me.
> 
> Seems like either creating a nv/global.of.overlay.dir file in the
> default env for the board or creating an init script that sets that
> variable would be the way to set this.

Right, this approach seems to be more flexible.

>> +               setenv("global.of.overlay.filepattern",
>> +                      "rk3568-evb7-overlay.dtb*");
> 
> What if one had a board magicvar, something like:
> 
> globalvar_add_simple("board.variant", "rk3568-evb7");  // Or just evb7
> if rk3568 is already somewhere else
> BAREBOX_MAGICVAR(global.board.variant, "The board variant");
> 
> Then an init script could easily construct the overlay:
> 
> env/init/board-overlay:
> global of.overlay.filepattern="${global.of.overlay.filepattern}
> ${global.board.variant}-overlay.dtbo"
> 
> Since every overlay file is added to the same variable, some care
> needs to be taken to ensure different initscripts work together.  Thus
> the append in the above script.

Thanks for the hint, I think I'll go along this direction.

Regards, Michael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

