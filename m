Delivery-date: Mon, 11 Oct 2021 12:05:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZsB2-0003Fx-5U
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 12:05:00 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZsAz-0007FB-AW
	for lore@pengutronix.de; Mon, 11 Oct 2021 12:04:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S9kQqKVJAX43vZOFOGGhjnFWXBaIy1hGtc4zcIBl4vU=; b=yDQ0HYeVDNcoprUJRICkRLnONm
	FJzFdVFxMTDMGvaI6UbKm2XNU0jfeAsTBJ+DD0KMlJzP/S2KVltF6VFF1wlfGKdja5soF/B1+BMfj
	joBG46caLDEOQsHvsTyz6H9SXSR5/Sj1kiKZ4Lv82ReKjlDgeeZLJ3npb6THnOuoNgjt89FjG+rOW
	Qpx6t5s2Z2g4vY+jr74BfZPMgsE/iM2Y0md8gh4jDaBPAHOZuUIpDyq0gB228v8qk9KlOQWhHyeFh
	TywVwm0DuUTfUFKdDQekyA9HGju/cfEUtfzoeoc98YS8TE0BlCfg5LQh5uDhtF8jomlTsel9qVCQq
	Ckj0Ql0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZs96-008jgG-Nw; Mon, 11 Oct 2021 10:03:02 +0000
Received: from mail-eopbgr40083.outbound.protection.outlook.com ([40.107.4.83]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZs6G-008iQk-9K
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 10:00:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hj+e1twgdm7LeSdoPVtuj0bFu17VBFN0jgOlTARf7o3A9ItvIjrMliAw1wwY+25FdBCzHO5dCeRv2eratv5ItuLGBnV/PRtKscWJo/eJBe/pjlrDeZf+BcNbLRX4S2Mg8Dp5ly11DvpEOJVTP6sTnJxuv5nyjf75bmkhgtr+jbJ5XBxlVYyEaKywpFb9T6zxlen0biqL/LAn6l8+8DVNc+R5z+46rEhOHaB1gr72P/v3Q/cvRA6Ye+CRgW73uHrGrIsRxb0YbSNFsESdDs2c8ASsQ4X9VbC3Wwv1jT9LiWbigBBUo/xods1uvmhZxAkBS7PmqolJUEo16EjUvaHobQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQx03qLo1l9DZjYIS6gHN3vz89gXlYNLNZNB9rx4BWo=;
 b=KDvkG/1EmILVNDs9V9fy5CnO1KOgSD6kZ1mBOgjNauzp7lBEHeoRiLR1eT2YBRjObn1PZfKSK/M7NsMR8SeHnPXPl2rzSqhj/BrBo6wAYpqT4iXKaG6m0eBlOzrOwiYvId3QZzDYN7sxbJFCk2W63qHzhh21fnTQqZYOuneFQifgTPktjcqEtDPhQdeRWb9SwhdV6Q/G9eJUS6yddWvMqiyH51/B46lFFzZB36ztzhPmA825M0lq4GFpK0itXVwOnUvgz2YrLUrtIbGNI4nodvYhY7ZtRapFUcAV7ash0+hj0g2nl9549TK6v6ALdwMDj0AhBfrWvXxkbb1683+Leg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eQx03qLo1l9DZjYIS6gHN3vz89gXlYNLNZNB9rx4BWo=;
 b=laigCzjtqFkIHJJyidAk8D1eUvSFo5Ze3x6vulyfmTYT1davV/1SYNpe+jrB6cL1WcceRt0pFZVAaJttIyTgZuXuMn1AMRSLJG1R5POdgLt9LqP9aSLkUe0fS1LYC+TxE9lcHS7W2mcfG724gGIQLK5/+z0dDmrFOl83d9Su0uU=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB6PR0801MB2086.eurprd08.prod.outlook.com (2603:10a6:4:7a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Mon, 11 Oct
 2021 09:59:59 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4587.026; Mon, 11 Oct 2021
 09:59:58 +0000
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
 <20211011080346.37197-10-s.hauer@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <8691baee-536c-5f89-d788-3687add471b6@wolfvision.net>
Date: Mon, 11 Oct 2021 11:59:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211011080346.37197-10-s.hauer@pengutronix.de>
Content-Language: en-US
X-ClientProxiedBy: VI1PR08CA0097.eurprd08.prod.outlook.com
 (2603:10a6:800:d3::23) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR08CA0097.eurprd08.prod.outlook.com (2603:10a6:800:d3::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4587.21 via Frontend Transport; Mon, 11 Oct 2021 09:59:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 27fdbfa5-d055-4ab0-fea4-08d98c9de275
X-MS-TrafficTypeDiagnostic: DB6PR0801MB2086:
X-Microsoft-Antispam-PRVS: <DB6PR0801MB208614CC28331BEC0E951827F2B59@DB6PR0801MB2086.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ox7DmtTtgMXDeBFNtHSb3tmsqh0Qt1euSKykSso/m04jj7PTZQVTqriRvyqKK2noL9OIszx6RWIMqTxlIBHajkbHeCxRvjXntt0AGSllBIY6Ecjxt5C5gehbmgQelmtUpwPRNkiI/B0SXK1kd6L+3THtskNPaynE4mgMwE3aD09mNfyGhmW+7mbR+2rgNqfqE7n5aZ9X8r/lbBzfeiUgHltDGpxzSOmXkeH58sR7Ka2OXDeUuGjgTg4STp97t6qbwC4hyaY0PrUFYJnIxOtvYVFKp8ZbiOUvQpM41+t3wUxyq824tSK5a4HZ8KrZdCgURfopopnvGe96yxqVaPUBwguwoVsYfV+BwTS2p7VLy6zAPLQKUgHlWbGNioBq6cmE9tWoY5sZInTT83WYgMA9bz1DZqzFfTidKSIejIMQ6tCZsR2r7qv4sYzWSkUkbjxMp1H6QlrBoS/eoShP0n0AhN3t6Jqzt1RVKOnPCFJxi1ZvEPxaIZ6Wmasyvgtz/bu/Lj7X6E/qlsJX+NbxRhy9FxrMLn8XUFchm8rJDmFQOp8hVKxi4Oj6mYwZSrz59PiMf+6hf/78cWvW00Pv1Y+lKNdCGB7+hwkCK4zWno2O36cMvIOKbM4xJytsWy4uwq1yCy/cBFW1nSjhppYFsjAX/zNCpTZgMSYn41qvVES9f7Hg0ZKQJpcnfdx8H3jXPUvkXypY3KtQKK5CZYeML6FKoSPtWq/I2bev7IwVmAPCJ7YMfUOzko1VZXhK7Ca11oR8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(136003)(396003)(366004)(376002)(346002)(956004)(316002)(26005)(38350700002)(38100700002)(5660300002)(31686004)(2616005)(16576012)(2906002)(186003)(66946007)(44832011)(66556008)(66476007)(31696002)(8936002)(8676002)(86362001)(53546011)(6486002)(6916009)(508600001)(52116002)(36916002)(36756003)(15650500001)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXBRK2pVOXh5aUdvVWpObW5wSVRuaGM4aHEvRVFDaEx0RGIwTFNiakVjcXpX?=
 =?utf-8?B?NytzQW1JaDZGTTYxTWpKVkwzdE83OE1wc2NIT0VCSFBTaVcvUDlkSThZNkR5?=
 =?utf-8?B?WElUYWVrS1BTWEJlZG9ncDFNdllDemgwcDU1aHVtT2pFcXpXT1FjaHE3dkdw?=
 =?utf-8?B?a2NBdU8vMU92c041Y0dyMzA3MmpONzJKWHNVTnRKNlZNS0lTdXB2cWpkUyts?=
 =?utf-8?B?TWdYemNhcGpkU0h4c1RUcGUrMTJ4c3h2aGw5RHRJMXFBY1pENUdIb3FlOWdO?=
 =?utf-8?B?dzZlaEJZYkJrZHhXejBiK0Erb0licG1GUldZa3lPMWZDMnJUUVBqVTdhVkZj?=
 =?utf-8?B?cHBpM1lEM3FFdUo2TGdQWEFKZFU0TG1ZNjhUN2xoaklvZzdUK1krMk1oa2JU?=
 =?utf-8?B?bmpUU1JKMDA0aG84TzBiYVNQWFJzVzJSSWsvT3pmeC9ybkcvak9sWjRQQTEw?=
 =?utf-8?B?VE5FOENmblhMV3d0MUJ0S3E1SUgrbmhuM1I4dmlpYWZVT2lLSTQ2YWVZL2pR?=
 =?utf-8?B?L3o3dER0SjRKeExHczNEaHRMUUtGbmNOUnhjcXdTcDdFdnZoejZuZUZrb0ht?=
 =?utf-8?B?S1JIVXRpTGFGaWs1RjJzYURkZUhZWFlNUmdUaUZFL3c3UitrSnJma0JSR09E?=
 =?utf-8?B?WGExdjcvVGpCQWNkR3c2Mk5UWVIyTVRXc2Q4RDA5TXhGTi96ZDNvUTZmVi8w?=
 =?utf-8?B?Rlh2VUtmNGZ1OEN3Q3hDQWNsZ2dna3ZhS01vTUI1VkxKVCt0WWRKWlR3OXNo?=
 =?utf-8?B?cERoOG1Vd0c5RXNOK0hkSDc0ZksyY0t1QVhkZ0o5cGFQYkUrV0FHZHRGK1Va?=
 =?utf-8?B?dnE1YlQ2d1NkVFhLTHNDeEQrK0JUTkVMbTZ2Vi9oOFNXaDVGb3NnOHNrOWtO?=
 =?utf-8?B?ZDNtdWpSRlczWko4b0NybEpFdkI5TnY0bmV3NmJ5M2J4WklDL0JaWGJtVlNW?=
 =?utf-8?B?dWJ5ajl5czk2M2Q4YUZndGpHajFIZ0szbmZleGh2cDhabElHb0xSWTNPMUxS?=
 =?utf-8?B?VzlWajlpQysyK25pKysxY1lUQ2FkN3ZncjhRREV5WGxKS0xGSmtJdXV3cjkz?=
 =?utf-8?B?aEsxV1NaMzFxc3NsRWtMdjIzK29JUHFRQmhPUVE3aHkwRFdJMVljRFRtNWpO?=
 =?utf-8?B?dEtkMzQwOHBqTnJoZ0w3dXVyVzBRdXBKY2d5K1FBM1poSHh1SXAxRHc0aTV0?=
 =?utf-8?B?OVZNcjFXdDlWVmdYbmtsUlJ6aUlWdVdtZWNscU16OVNicm03c3Rod0V5c3pw?=
 =?utf-8?B?QjNjL0tGOFh0TVFaWkV4eVp5TTB0THdPUGUxVm8zRTZVSDhUMjJTZGtXT0lE?=
 =?utf-8?B?TXo1ektnYUVWMTRIUlpYQ3V1b3EyblJKWHVGVFZqNmRKNUZIWHJnT2N5RjE3?=
 =?utf-8?B?R1I3K0ZEWEJUTXVvam4vQ2R3TGRvZFhwNGlJZlhrYVhnWWVNZmRkUHJ1VlVR?=
 =?utf-8?B?QlJwbUJnbXJMNGx5NjFxNzBTMk9Vd1EySm9qc1ltbFg3T3hJYVhEVGNZWTRB?=
 =?utf-8?B?enh6Q0IydTE0amhyamhHSnpMdlZzVjdJS3dUNzJIdWl2bWNZcEFrOFdwdzdW?=
 =?utf-8?B?dUlMSzFYSGdGUVp3Uzk4bGcxSEk2WE9MVk1JUXpJWkxrL0t5QmY1ODVjY3NO?=
 =?utf-8?B?RWV3aVF4V1h3bHR0RkppWHRhVjFsZXRWN2o0MnRnMmh6QUM1WjJrY1dPcmVI?=
 =?utf-8?B?ZFdHakd4STFTREVCSU9aNUFuYTVMcHFwclorZ3J3MWVCSk9aUTNPSmpZQmF5?=
 =?utf-8?Q?ExDT0qLSB5ZKaHkUvuJ7FgQKs4T4HyWaR6CVBld?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 27fdbfa5-d055-4ab0-fea4-08d98c9de275
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2021 09:59:58.9262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uegKzbKPZTjgWTxx8eJA3O/O0zre/aJi8RvvbixKeAzmZBmm8kRIN++QTVdbtncO+nOxgJcP0U7o3fkxI7CH8c+hIrpkEiBfOSogD8pqvJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB2086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_030004_541392_EDF5907D 
X-CRM114-Status: GOOD (  34.89  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,PTX_BROKEN_RDNS,
	RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 9/9] ARM: Rockchip: RK3568: implement failsafe barebox
 update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 10/11/21 10:03 AM, Sascha Hauer wrote:
> The RK3568 ROM searches for valid boot images at different positions
> on SD/eMMC cards. This can be used to implement a failsafe barebox
> update which is immune against power failures.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/rockchip-rk3568-evb/board.c |   4 +-
>  arch/arm/dts/rk3568-evb1-v10.dts            |  10 --
>  arch/arm/mach-rockchip/Makefile             |   1 +
>  arch/arm/mach-rockchip/bbu.c                | 117 ++++++++++++++++++++
>  arch/arm/mach-rockchip/include/mach/bbu.h   |   9 +-
>  5 files changed, 126 insertions(+), 15 deletions(-)
>  create mode 100644 arch/arm/mach-rockchip/bbu.c
> 
> diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
> index 2d472d1331..09385bea29 100644
> --- a/arch/arm/boards/rockchip-rk3568-evb/board.c
> +++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
> @@ -28,8 +28,8 @@ static int rk3568_evb_probe(struct device_d *dev)
>  	else
>  		of_device_enable_path("/chosen/environment-emmc");
>  
> -	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/emmc.barebox");
> -	rk3568_bbu_mmc_register("sd", 0, "/dev/sd.barebox");
> +	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/emmc");
> +	rk3568_bbu_mmc_register("sd", 0, "/dev/sd");
>  
>  	return 0;
>  }
> diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
> index ebfd45ada8..6f1eebc619 100644
> --- a/arch/arm/dts/rk3568-evb1-v10.dts
> +++ b/arch/arm/dts/rk3568-evb1-v10.dts
> @@ -475,11 +475,6 @@
>  		#address-cells = <2>;
>  		#size-cells = <2>;
>  
> -		partition@8000 {
> -			label = "barebox";
> -			reg = <0x0 0x8000 0x0 0x400000>;
> -		};
> -
>  		environment_emmc: partition@408000 {
>  			label = "barebox-environment";
>  			reg = <0x0 0x408000 0x0 0x8000>;
> @@ -506,11 +501,6 @@
>  		#address-cells = <2>;
>  		#size-cells = <2>;
>  
> -		partition@8000 {
> -			label = "barebox";
> -			reg = <0x0 0x8000 0x0 0x400000>;
> -		};
> -
>  		environment_sd: partition@408000 {
>  			label = "barebox-environment";
>  			reg = <0x0 0x408000 0x0 0x8000>;
> diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
> index ebaa3a5450..66bcdba2eb 100644
> --- a/arch/arm/mach-rockchip/Makefile
> +++ b/arch/arm/mach-rockchip/Makefile
> @@ -4,3 +4,4 @@ obj-$(CONFIG_ARCH_RK3188) += rk3188.o
>  obj-$(CONFIG_ARCH_RK3288) += rk3288.o
>  obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
>  obj-$(CONFIG_ARCH_RK3568) += bootm.o
> +obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
> diff --git a/arch/arm/mach-rockchip/bbu.c b/arch/arm/mach-rockchip/bbu.c
> new file mode 100644
> index 0000000000..6bfba95133
> --- /dev/null
> +++ b/arch/arm/mach-rockchip/bbu.c
> @@ -0,0 +1,117 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +#include <common.h>
> +#include <malloc.h>
> +#include <bbu.h>
> +#include <filetype.h>
> +#include <errno.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <linux/sizes.h>
> +#include <linux/stat.h>
> +#include <ioctl.h>
> +#include <environment.h>
> +#include <mach/bbu.h>
> +#include <libfile.h>
> +
> +/* The MaskROM looks for images on these four locations: */
> +#define IMG_OFFSET_0	(0 * SZ_1K + SZ_32K)
> +#define IMG_OFFSET_1	(512 * SZ_1K + SZ_32K)
> +#define IMG_OFFSET_2	(1024 * SZ_1K + SZ_32K)
> +#define IMG_OFFSET_3	(1536 * SZ_1K + SZ_32K)
> +#define IMG_OFFSET_4	(2048 * SZ_1K + SZ_32K)

That's five locations, isn't it?

> +
> +/*
> + * The strategy here is:
> + * The MaskROM iterates over the above four locations until it finds a valid

Five?

Best regards,
Michael

> + * boot image. The images are protected with sha sums, so any change to an
> + * image on disk is invalidating it. We first check if we have enough space to
> + * write two copies of barebox. To make it simple we only use IMG_OFFSET_0 and
> + * IMG_OFFSET_4 which leaves the maximum size for a single image. When there's
> + * not enough free space on the beginning of the disk we only write a single
> + * image. When we have enough space for two images we first write the second one
> + * (leaving the first one intact). Afterwards we write the first one which
> + * leaves the previously written second image as a fallback in case writing the
> + * first one gets interrupted.
> + * This mechanism assumes that the first image is valid which isn't the case
> + * when the previous update has been interrupted. Two power failures in a row
> + * can leave the board unbootable. To prevent that we would have to be able
> + * to detect valid images to determine the order in which we write the two
> + * images.
> + */
> +static int rk3568_bbu_mmc_handler(struct bbu_handler *handler,
> +				  struct bbu_data *data)
> +{
> +	enum filetype filetype;
> +	int ret, fd;
> +	loff_t space;
> +
> +	filetype = file_detect_type(data->image, data->len);
> +	if (filetype != filetype_rockchip_rkns_image) {
> +		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
> +				file_type_to_string(filetype_rockchip_rkns_image),
> +				file_type_to_string(filetype)))
> +			return -EINVAL;
> +	}
> +
> +	device_detect_by_name(devpath_to_name(data->devicefile));
> +
> +	ret = bbu_confirm(data);
> +	if (ret)
> +		return ret;
> +
> +	space = cdev_unallocated_start(devpath_to_name(data->devicefile));
> +
> +	if (space < IMG_OFFSET_0 + data->len) {
> +		pr_err("Unallocated space on %s is too small for one image\n", data->devicefile);
> +		return -ENOSPC;
> +	}
> +
> +	fd = open(data->devicefile, O_WRONLY);
> +	if (fd < 0)
> +		return fd;
> +        
> +	if (space >= IMG_OFFSET_4 + data->len) {
> +		pr_info("Unallocated space is enough for two copies, doing failsafe update\n");
> +
> +		ret = pwrite_full(fd, data->image, data->len, IMG_OFFSET_4);
> +		if (ret < 0) {
> +			pr_err("writing to %s failed with %s\n", data->devicefile,
> +				strerror(-ret));
> +			goto err_close;
> +		}
> +	}
> +
> +	ret = pwrite_full(fd, data->image, data->len, IMG_OFFSET_0);
> +	if (ret < 0) {
> +		pr_err("writing to %s failed with %s\n", data->devicefile,
> +			strerror(-ret));
> +		goto err_close;
> +	}
> +
> +	ret = 0;
> +
> +err_close:
> +	close(fd);
> +
> +	return ret;
> +}
> +
> +int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
> +                const char *devicefile)
> +{
> +	struct bbu_handler *handler;
> +	int ret;
> +
> +	handler = xzalloc(sizeof(*handler));
> +
> +	handler->flags = flags;
> +	handler->devicefile = devicefile;
> +	handler->name = name;
> +	handler->handler = rk3568_bbu_mmc_handler;
> +
> +	ret = bbu_register_handler(handler);
> +	if (ret)
> +		free(handler);
> +
> +	return ret;
> +}
> diff --git a/arch/arm/mach-rockchip/include/mach/bbu.h b/arch/arm/mach-rockchip/include/mach/bbu.h
> index e61e0615e2..7fb08a0a9e 100644
> --- a/arch/arm/mach-rockchip/include/mach/bbu.h
> +++ b/arch/arm/mach-rockchip/include/mach/bbu.h
> @@ -3,12 +3,15 @@
>  
>  #include <bbu.h>
>  
> +#ifdef CONFIG_BAREBOX_UPDATE
> +int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
> +                const char *devicefile);
> +#else
>  static inline int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
>                  const char *devicefile)
>  {
> -	return bbu_register_std_file_update(name, flags,
> -                devicefile, filetype_rockchip_rkns_image);
> -
> +	return -ENOSYS;
>  }
> +#endif
>  
>  # endif /* __MACH_ROCKCHIP_BBU_H */
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

