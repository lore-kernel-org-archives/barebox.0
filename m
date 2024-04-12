Delivery-date: Fri, 12 Apr 2024 15:03:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvGZH-0093wE-2U
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 15:03:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvGZC-0004gc-Br
	for lore@pengutronix.de; Fri, 12 Apr 2024 15:03:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EihtUQR20b3MDYlEET/E4y0db4fZmHV0hBKZkGLRM9E=; b=M0z1r2skJRRMoYkLNCM9t34ywZ
	MNnhKzQoukb0tv2YC0L8xUGjcMGSe1LqgIzwfgxfsyzXzmNkgiPSI8sAH/MaMhy0gkfKr01P2KR/E
	0fzSyJqMzjPvawB+LBKMCBFzNegRj69MvAIueNvoF9mcFJR4FfJ00gWPZMkkqO0LSp7MWkHIakWDI
	8NiZMZ5J6Mg52oVa5xjL6nmfA3UowRqinu1PoC+ff2ox8moW3aP6oXNf5eyrRGeSIM33Gf0L4/jJF
	spGJpbRtGUUCJrbUoX25iwO+6W+zPsi3BwKZgA0PxpBrcuQ3CYtsR+HoNRcNUhxHRlToUq0yM6JAm
	6TLgQrcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGYD-0000000HD5t-39AP;
	Fri, 12 Apr 2024 13:02:41 +0000
Received: from mail-dbaeur03on20700.outbound.protection.outlook.com ([2a01:111:f403:260d::700] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGY5-0000000HD4V-39ps
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 13:02:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FryImoyoLH+z6H27Uu9IR2thbHuphDwAJ01kmSNTOy0JEwFow+8Ve/Y2lMdzjorjn/7GJgQURdTnwrOVC3cyNRWGGCX7h5Z/z+iDAhdHsZihmG0jmWTPu767VI+WnqB/UD9xKBfMQOlxElZ6TLZzOsn1wJqwYzJ/pnnX3040A/6iJROEsWJXEA/C7Dw1cVpYgPCLLVOIQLivOn7OEJxyjsBZFtFuGEYQw4uBvD670cRslpwnJWierD7/634c/Fz+eifv3JR+v9ou5RJYMcjmxMEv8sGBxsFTToGCWwahIk9thG4n97tJxrrSEHqZ3m5uclioLTg1STW0STWznYPv2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EihtUQR20b3MDYlEET/E4y0db4fZmHV0hBKZkGLRM9E=;
 b=XuOZwHkOQ3kRhVW+AVHdYSOASRqi+AeERHCoHHB0d7/gCFS8Dswl5K4/qj3dwbtbFnW9jph7gRtyZTgwYCZvcakdGxmJpDRqok9eb5xPjVPCnsMpPOhW4JARu1CF1m+ML4kJzfnDrJD2hEIb2YR5iFc78zXadGE39yHSB2+mAYArGRU8COltTfwl2cMFmnZNnEovDr7S6jg6OBtML0WfQ/AVrCpdr6TaOju+6cHWf4M214hNDvo8F6wbTQdlJwfGqfvsQzVGCnCKPY4VfCkWo0NXsP5HzfD29AoYtOKh6XTC7dYdw8GB300xcbg/Y++MKuGZU9Ofnt+wvsUJCypWGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EihtUQR20b3MDYlEET/E4y0db4fZmHV0hBKZkGLRM9E=;
 b=rwW5M3XWZpC0uJdmHcpa+YQYdk8/h8sFshzfrkIaj7OOHq9bGVGTTfwDhLKyF3d1l6rqx7gOb0UP/s9dUAQgsN8qoJqmiSuTiSYn23Qez3dNMNt5/7E4T7MEkSZHvoQw9hsKL1ikUvkMEtMh/hu64k/DEayE+H7ctOWt2ueXFks=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAXPR08MB6591.eurprd08.prod.outlook.com (2603:10a6:102:150::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Fri, 12 Apr
 2024 13:02:24 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 12 Apr 2024
 13:02:24 +0000
Message-ID: <12f46e93-c50f-4c3b-9052-eb25c5448d88@wolfvision.net>
Date: Fri, 12 Apr 2024 15:02:22 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
 <20240405-feature-wolfvision-pf5-v1-1-e4a29c0e7fe1@wolfvision.net>
 <20240405170223.k4yijw7wffr3fy4j@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20240405170223.k4yijw7wffr3fy4j@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VE1PR08CA0021.eurprd08.prod.outlook.com
 (2603:10a6:803:104::34) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAXPR08MB6591:EE_
X-MS-Office365-Filtering-Correlation-Id: 31d799c1-0904-4006-7758-08dc5af0cbf6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2A7RF8eL1DiGlb9tqTkLcdQb3IqvuoZy3wGeFhvnGhT86Dik5mbbTIkj0AsJr8kh3KumNLmnunARsR5wRZELQhSjIcLkSf/Hz/l6iMIwlCH49NPhFZHxEnr9y1Vu43vuyatHzHNIjpJJcxLPpaPFk4gEemze6ygg4DZKR6EFrCsPVPMwYaC+68Yo8+W+/vqAJ+0rLp2hyLlTrUMCdgCrc4P5EptBHHrhdVjIoqTOaZNtsjMwCHe0ldIIPa5S6eC/I9PYOSs/JHkAF0tqKYDhR3lgh5CYxA6rQMtWJbXRoXzW2pm3mVTiJFO9u/9g1KNyqFztksjPrrjrvdNrOj01GBXs1UszryDl+tfwuj6rg4fsRHNc6Wo5sulqqGf05qwvE4mCu8Xs4WD6xp5K/BxyC5BekHUKmo+Sr1x8suqXrwmVz9xpsCI+7WhWYOy7Lv3mNity1jfrT77TcBkMiGGHxO/1ePbpDfUoWxEWAaV+SL7m3MqmG2KAb6VtcKfQ/cUjugPriR5ARb8V8viXXhZ4K+yjJdolsxoc+60FepKhZjYS9SVuusSEScpBnv5Oeg207WOeLAFuNgfKZd9i12IDmNlAIlhGHi0Xxjp9T+L2bMgWoTNKMqG/l4yLLARaGp5EhiTkqRlKlpm0uuKlYKfBZ+605xhBYppRP9CzCgp49+M=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RWRMdzhTQVR5S3k3YVV6b05lYVUzZGgzY2g2bHFlVG81eGFZb2hDei9xRUVt?=
 =?utf-8?B?UWZOT0NTUjByQW40TkU1eGIxTmdqc05jZmIxdGxqTmNyRHNQSFp6bDlzWWpL?=
 =?utf-8?B?UnpsN2tHQTFCbFB0YTBVZnA1Q2pjOUhmZytGVmlLVS9xcHgwNVM3MXJRUldV?=
 =?utf-8?B?Yno3THk1djQyVnlzQ2Y1MkdVdG55MllTOTRBWFM1RWt6VzhwMWNJRzlNbHpi?=
 =?utf-8?B?TlZZSHp4cW9abXZQaWpVRS9hRlNSRlB5dFlBemxaR3UzVkRoanBFWlVJUW02?=
 =?utf-8?B?a0cvQjRhdkxjTEZpdldzWGcrQ1FidXdkck53VE4wcmI3QUkzUFlYVW91UWdy?=
 =?utf-8?B?ZG9pYW5MRXA0WUdYbmlSV25pUGJlbDZYYWZXcTVIMzRJTWxEMlpPZWZHVnhY?=
 =?utf-8?B?WUJ6TDFyMEVDZFlqMlRlalQwTkxFRHh4b3lzWUVzc3NYb0RORExaQVlwaDIz?=
 =?utf-8?B?Rm5GZ2pPYlZTeXVHZlQ1RHZ6bHpuVjNrRFlzMnJRdnNaWU4rOEtIQnI4VjY1?=
 =?utf-8?B?WUNEODlmOCtUQ0s3eWp4ekIweXRSZmtCMVZCM1UwanNUT3BOUmEzbEptYzhN?=
 =?utf-8?B?RGMyWXZ3bTJ2MSt0a3ZDOWV1N3ZUU3BEQlV5UEozRm56SUlVT2RFTyt3Qk5I?=
 =?utf-8?B?bTl2eGdLNmhyRkZvcVVNbVgwTzgxaFhJaE1QeitOTEsvWVpoS1M3b2hrQjVn?=
 =?utf-8?B?V0tRVHhSbjdhOGJ2UVBkZ2NTSmRlVkpETHRpRkViTHQyelJuNmkyUmE3V0lV?=
 =?utf-8?B?dmorZFA1dmRjOGp0bDVsNFJkc01WSmY4TFRMLzFNVzkrTDgrUXFsU1lQNzJm?=
 =?utf-8?B?SlZkZUlXeFFuenpqV2UwbXZRcU5nUmtJK3hoRzY5QWJzbFhUMDZiMUNWbVA1?=
 =?utf-8?B?SnZnL0lSeTdkMytDc3FkZXpxYTlvNWV2L01MR0pseXlWKzFGUmNDeXRvcmVu?=
 =?utf-8?B?dE9wNFg5OWUwV3g3NXhOOU5BbnBvM1FwVDRHVmx3RWp4SEJjcitURUM5emUr?=
 =?utf-8?B?WHJ5NVNZcmM0eG1nVk10SkQvSnB5T0EvTG54SnNLcnFQdXhxNlBiZHAwbEk0?=
 =?utf-8?B?M2ZDWm9XYyswNmQ2VzhJcm15YVAvR3YrV3lGblJ1N0s3TGE4bUs4TWl6ZEJU?=
 =?utf-8?B?aVlqQXlTQStoWDBJc3VXKzlIR3E1UVBlejJDcVExYm9hRmtlUnp2QkMrbFhK?=
 =?utf-8?B?WDNyeU1WbHNyVzdnZ2RJMDlPd2hBQmlNdTZEeVU5UUx6VCtqWk9vV3k1TTBE?=
 =?utf-8?B?aldxeC9QbWNxbFVDQmpOTEEvOHpUUGw2ZkM2K0h0N2lzVjJxZmlhcUJDVUQ0?=
 =?utf-8?B?TzhOTGNTOTd3ck5vKzdTOXBRT2g0RUo5c1J6WkVRQmR1RDFqZWpDMXluMllR?=
 =?utf-8?B?RFo3bmZVVkZJNWUzWXo4b0dUTVpxb29ma0c2bjBpLzB4OUlvamRMazE0MFJa?=
 =?utf-8?B?VlE3L2RBanQydjAyNnpycTZwbjZHUWdTNUhJTEhkKzFEN1lZZDBibnRiUGRJ?=
 =?utf-8?B?NU4wR2ZFbUNEQ244NngvMkZlNEVsVm91RW0vbFdTN01CeGZyMDhYS25oVXNj?=
 =?utf-8?B?Qmo0TkhYeXNpNkErdDdPZkUxczRuclMzVTlpcmhvOTYrZXR0WHN6V1FYTVJQ?=
 =?utf-8?B?Zkdib2NFUmlNVGdGeFhQWkg4TkZxWEx1V0FRcVNuMFpkR3kybmVxazBWMWox?=
 =?utf-8?B?RjF1SFRnV01saExVUXV2TXF1SFVhZVA3WWYvSG40UjJKQzdzMFJBZ1BtKzQ1?=
 =?utf-8?B?MGc4NjFQVEdsZFpyVVpic25aQUNTaXI1a1JycVpVenNkbXRwQ25HYTE5UXI4?=
 =?utf-8?B?SVRCQ3N1aVhRVkhTdGIxZFlXN1lsYjc1emx2Sis3RHZEaENBallBcFNrQkpz?=
 =?utf-8?B?SVBkQVpmTnFieEVnRG8wT3pJcEFKZTh6bkY3UmwrR1VvZFdDaC9memE4NzNk?=
 =?utf-8?B?TWtwSzZWR0FubC9PNTdYVG5mOVZrbFFwb2RSdFZOa3hWd2dpRVhaZXhyUUs1?=
 =?utf-8?B?MWE0b1I3YW1PakMxTjNLQVVFU3JOVndqQzk2emNyb2xLbUNRWHRzOVhRa1da?=
 =?utf-8?B?YTFNTTcvV2hPK3lQU0VyQ1dTUDZqMHpCbU1VeUcwaFN1L3RMMFFVQk95OTQx?=
 =?utf-8?B?QS9DclRscUZab3I3MnF1bmRiS3piS2F4a3ZYT0FnU08xYzQxM3MzTVhhOUVy?=
 =?utf-8?B?UVE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 31d799c1-0904-4006-7758-08dc5af0cbf6
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 13:02:24.1467
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z6Vkx66+UFjt5A8+WUzrxsuEMqLe0DUmWji0gYuBXEwO+0/x5gn0wYxnJyD4xoYIvfcoWvKkc+e2S/9+EAOA2s1aS6NImIvvYfMiyC73E9k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_060234_006259_1644C75E 
X-CRM114-Status: UNSURE (   9.64  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] DNM: dts: arm64: rockchip: copy pf5 device tree from
 mainline Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

Thanks for your response!

On 4/5/24 19:02, Marco Felsch wrote:
> Hi Michael,
> 
> thanks for your patches.
> 
>> DNM: dts: arm64: rockchip: copy pf5 device tree from
> 
> I suppose DNM means "do not merge", instead of marking it this way we
> put the not yet upstream Linux dts files into arch as well but mark them
> as upstream dts file, e.g.:
> 
>   - arch/arm/dts/imx8mm-innocomm-wb15-evk-upstream.dts
>   - arch/arm/dts/imx8mp-debix-model-a-upstream.dts
>   - arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
>   - arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi

OK, I'll do it that way!

> Once the files are usptream we can remove them.

Is this something I should keep in mind or may I expect that this
happens automagically?

> On 24-04-05, Michael Riesch wrote:
>> [...]
Best regards,
Michael


