Delivery-date: Tue, 04 Apr 2023 08:27:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pja8p-009PVJ-3p
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 08:27:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pja8o-0000oh-BY
	for lore@pengutronix.de; Tue, 04 Apr 2023 08:27:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Cih+nqwzlrx/BfpdyyxFm4veNnScLn5s0hgh/whTIw=; b=jfs78aRWCURTjyo7TfQk6LnHI7
	BNY7JQivW1jz7Xw/ZguA89VFdXZyn9od1dXoZrJG8AgyTRH9TFO3GG3j6gCKQMS0kcrzW64n9lgrG
	XUJfjgAfoK+dOm1zP2j29znNze3ffS/W+BuKGPmPRRp/BPwPr+dQRCKwVF3/harYXVzuCqSCdsKTE
	vJwOH5+ByhkCas3TjowsMv2sGBEF+d5olrR7IwC3g7U2QyeR+xr9QeGEO80bWpfiOcSZdUO48xaUS
	CaQv9w58xonX55bnREoqBUe/DwNqEnIB/w6yrzCowhQSFmMb8Gdw+g8Gm9pqxb8S66Cw6eEY7xw5u
	z/kzFBhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pja7I-000Cxn-37;
	Tue, 04 Apr 2023 06:26:04 +0000
Received: from mail-db8eur05on2062e.outbound.protection.outlook.com ([2a01:111:f400:7e1a::62e] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pja7F-000Cwa-0J
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 06:26:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TY5OKm9hbdyqDGNzdtd9D2Pgpr3FPpnWRrXrV6DZXayBxvngmR2rUPKf/s0d6UlqscRgiZ9NQT0iNPxUJMS8l2UaJKoQOFonr5ZXMVJg4Ml7bYEdRMSfE0J9NEC2gauRSwklNhUYck+6RKjNAKZdPQMtVis3hjQqYjN7Q7Zel5FXhlw+ts40BbX/Y05EcQwcUsg9yDhbXgFK1wAYTgX2tWAVu4vBNJ+20N4q677mixR3vv5G5LEuIWPPbBd7OjjmY9nfdssiVjcwYShDg4P9nqUV7f9/3BtImSdYTQ5UAWtsMmLnholsjTZY/Go5VpQpel7epIlZS68/lMqvwhJMww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Cih+nqwzlrx/BfpdyyxFm4veNnScLn5s0hgh/whTIw=;
 b=d2HZ/T440Lpm8myJ8Ax33zx30A4uQf6Fe39eifpOU4kVOTIDGgkxrrynSPdtbre3t3l9miux3WS0ZlWCHXXq93pF8LJip9BoDZOhLBuAie7T6toE3eNcLZ0NXOfk/L2eLb9GBskAcnZ1R10ywh6umnjAxAZlN63EHKTIWLpLXiXEwEc9nHEhU95j44Le6cxndKcoisxHvfCGcEkPeBL+j02JH3FEKQpwp7MOuiopOidPA2wQqF4y6QMc+c8iZaStQqf4sZ4/vi4qt4FgavoOlrE98p0smjH2b/hv3bMdnwYqe36Ib1AhYLpVj/3GFRWyR08AuVtTlPiU/IbU2awa+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Cih+nqwzlrx/BfpdyyxFm4veNnScLn5s0hgh/whTIw=;
 b=T3wXfZolLe3mtr6t7bGvaQyHbvg3BnFk8BrQwgA30gSXp4Q6QUa+k+tWX8UFx2okdTEqljIAh+nCFaY9Zc3PdFu84FSAZCuxnNEKN1EGH57UUNun2RkTv6TIlmMOrOtQaLoG4ceTaKULhxszs9xBfDbcaYDH0hsv/473MAbtCrY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DU0PR08MB8188.eurprd08.prod.outlook.com (2603:10a6:10:3ef::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 06:25:50 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1%6]) with mapi id 15.20.6254.030; Tue, 4 Apr 2023
 06:25:50 +0000
Message-ID: <94991d12-6b3d-ef27-82eb-cf6ac0d22109@wolfvision.net>
Date: Tue, 4 Apr 2023 08:25:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <ahmad@a3f.at>
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
 <20230328074037.1202993-3-s.hauer@pengutronix.de>
 <20230403194339.GH15436@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20230403194339.GH15436@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0003.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::13) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DU0PR08MB8188:EE_
X-MS-Office365-Filtering-Correlation-Id: 949abc20-62a6-4587-3ad3-08db34d56efb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	IkduotJOwNHVnsTr5kExqYFvOwz5UA/kAfVMJUArl6w+fZA5lzkPLv1sRVOsEtW1X3z36muJCjoo5ok7eU2/oJaiEs+1wCcrrjfcHXBfns5VF2PFy1YcSrTt1r7HNK9d2sj145kiANmcLbJiP4plFxclya1b59YfL+HKI6F20nHiljNtj9pGJmCMMzdaXU2FWI0Blpj/I3Ains49W5usnkCnzmkuCioIy9Km+3Vx5YXpYhPGptdlT3Kccfw5SaxtIZEgliAiRVSCVMQ4J1YcjGj05ZoKGyTNRJWtH6arSKmX7HdiiXkPvJ9+sYoQvACB8ESBgWpeb3pkYQY5LitXbcmNboiXfL8DVlKUM8xcCjUstsYIliK/ZzkSoHF5GBIlfeH5r50d5ITaqor7d/PKmd8gZLIrl7Alg403u1WpSevdR913h76mlVxxP58kdRLSRZMgAhVXKrd+GQdkBTSc9SJe9VBc/ixwBoXN78nKFJ2d9qVLaruVkgExfBvmb2D8PS+TMaVmnU0t3gXB/HgVa/bZqBnOH7HAllA6ILNpFN6rALDXNrEzsUir9fYtvMaPXvJYlLMZedqrjDH14EVThcDPtLYl2BbnLiQ3AzyomsAQ36/Eo+r03XfGwx78mbQVdkGNhKl1kI5bOqYsj3by4w==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(366004)(136003)(346002)(39850400004)(376002)(451199021)(38100700002)(31696002)(86362001)(36756003)(6666004)(186003)(2906002)(6512007)(4326008)(6506007)(66946007)(5660300002)(41300700001)(66476007)(8676002)(478600001)(66556008)(316002)(31686004)(110136005)(30864003)(44832011)(8936002)(53546011)(6486002)(83380400001)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?TjFCUVZpdjMybFRTNFRmcHV0d0xtWFVNOTBQbC8rNEZyZHluWFB1aENraGNJ?=
 =?utf-8?B?MlJpcXVMU0wyblpUMDI5T1RPTUx0REtrLzRQOGR2bit1bWJuRVBsTlBFWXpq?=
 =?utf-8?B?cGd3aXc4RUpDK3BwellWV1VQMnJOOGljZjJqVW1hQm1DYVhYT3ZzK1JUZ1hH?=
 =?utf-8?B?RDdGb3Z5VmV2ay9BbzRCTTBvc0RmYmJQOXU5WkN0MUdnZm1qZmd1NUViYmhH?=
 =?utf-8?B?ZWwyU3N0dUtpOUZIYkVKaXB1Q21TUm4vZDRDRE9aT0NITHBOSUwzcUl6b3hL?=
 =?utf-8?B?NXUxYis3QjUzUDk0K2l6d1plcVNTNnNGYXJLWU9zOVdiWXJydXUrOTRkOWVC?=
 =?utf-8?B?YXAwOTQ2b3liaFVkOFlxRjJiMVBRY3ZQaG8rV055ZXQ1RUFRNzc3aktFcGZp?=
 =?utf-8?B?SnNFaFRVSjRmakpJYmJqazBNSXg0akkvRVdOZkdVdjBRckxpdkhUUXJGa3VX?=
 =?utf-8?B?WHhGbTNCSXhBVjFWQ1FObzh6RzJ1Q3VwNnFobFJJNnNBVm5ObVBOVjZHYzhS?=
 =?utf-8?B?a1JDTmlJaE9ZcE1semtTbERnallBVEYyeHJPbERGMUI5akUrNzRsRUZEd1Vv?=
 =?utf-8?B?M0lQVStYK0t0cFBnQkF1MXZ2Mk9hVmEveVRxVVhKN1JUMXE5MC85UDAzZFRs?=
 =?utf-8?B?OWhOY2xzUm1nWTNKSDIwdTQ2djN3QW5vQTl2dXpmTm55T1FFS25JVnovaVAw?=
 =?utf-8?B?blM0MTMrSGcvLzMwSUNHeVdHRkhpNCswM1crUmxyckJVb0QwYU13ZTBmT0F6?=
 =?utf-8?B?elNBQU5vV3BvYzc3b0xSVW1KZG5PaTI0NEo0N2xiRVRjR21mNlVhYndpVFVO?=
 =?utf-8?B?Nm8rZnNqVDJ5T3pMR3M0NzJkVmdURngyS1VJS2EvS2NJdkptWnBYcU5LazBI?=
 =?utf-8?B?M1ZDU3lheXMyVEZrekRzQmFKWEw3bGRzL3E3d1Y1K3VZS0xvNDNmN3lKaTF5?=
 =?utf-8?B?UVRhSzRTcXV0NVBzd05yamtQU2Q2U25TcC9XS2F2L2tTMWtDQndXYkRnQnhT?=
 =?utf-8?B?UEdiU2NVbm9CbC9FUEZOVHdZQU1SbXdrOTNyTmZ5cHdaS3o4aEVlWTRZU0Fz?=
 =?utf-8?B?dzVtTEtydkFlRGk4Z29ZTVF4RzNBN1l5cm4zM0tISGZVQm56UVdFM3ZvMlVl?=
 =?utf-8?B?Y0RXeTJ6eEtVcUZWa090SmF0SlA3aWJwRVkvcDErdENPcXE0NHhNaE0wNlo0?=
 =?utf-8?B?SnRIZzRXQ0xRc216elhkY0poNmJ4ejBFMTB0TlVpSHFVMm51ZklEUlI0SkdU?=
 =?utf-8?B?UVR1YnJCWVFZY09HendjSVhEdzdjUG92WVp3dkorREo1bTg1alpQUkRpMm9G?=
 =?utf-8?B?OCtYMXZ5NVk5TklQamNuVVkxZUdMRjJrS2RSU0c2V2x5TkJZdzA5WVhYTnRY?=
 =?utf-8?B?OGtEQ0t3K2VrU0ZXYXd6K1pFRnErengrVG1HTEU4ZjRNdTl6dXBXQWJqQjZa?=
 =?utf-8?B?Sm4zejNsRk5mZU5OT3lJUkk0V3QvcU9veWJMdWYzRS9LN1BSeDFMNkl4YkpW?=
 =?utf-8?B?bEZtREdQSlk2S2VlMnNsOFY3Y3VRZ2JWMW5NV1J4ODFOeVIvRE5XYUU3ZVZS?=
 =?utf-8?B?TDhhbmJjR1BEYnZIblI2SFAxV1VmbSs3R21tdjBTaXRna3FkRmVOb0Y5em11?=
 =?utf-8?B?RGlaemJOalhqRkdaZTQ3TXMvM3NOZzdtME5TcmtGdkcvSnVUcWlJRHBja2FV?=
 =?utf-8?B?a0Vjd1E2MTN1Z1RWTXFrd3RodStJb09GMW9tM1paNlFJc2tzU1NOR2oxcWZR?=
 =?utf-8?B?N1lCSVdCb3hGcGc1b2VaOVZXQkxZVXlZQ3g5amJHL1grTHBHdzAxQWNYUzJC?=
 =?utf-8?B?MTFRbUFRWlU3WlRMczJrVXFvUXc0Rkl1bWVValZKd1NCUnpxcGMxU3lpcUsv?=
 =?utf-8?B?cHBnenpqNXhFWU1Pajh4dG1vR3R2NnZFNG4rZEVJRS82YjA4TU9TVmFXNHZu?=
 =?utf-8?B?Wm1tajJONkdVcFY3THlRMFBtbS9icVZJZEZiL2MvQTg2cmx3NFlNK1c3MWxZ?=
 =?utf-8?B?dHBnZlZqaW5nWkxpYnlURUxBRTBsc1Flc3BOUUFheHNlZ25nUFlib2Fkc2hK?=
 =?utf-8?B?VHk5eEw1QlVHM2ljUmRUbndVZDNvdWZPSkhBNWs2RFNzSWZJdmMzNm5vZUVy?=
 =?utf-8?B?TlNBNWQ5a29JQjRxb1UxUk9vWFRMYUtGb0JWazlPWTZDa1o2ZjVjQ1VSOXVk?=
 =?utf-8?B?ckt1ZzJNd2MrMDZWZW1kU1FpcEVsd1FTZG02QzBpZkViUVF6WkpnM2JQVFJQ?=
 =?utf-8?B?UnZaTWJCQWFJRmdyc3Z1TDF2Q1V3PT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 949abc20-62a6-4587-3ad3-08db34d56efb
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 06:25:49.8853
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1rcZjVdKAXolUAznPip1i/clFwFEyXAllK5Xs4MqPMQ/zMb1Sracc6Y8zL1P01xHpLwBc2Ur+yU2dccAVIMiiJ1meUlFmjRXsJx7sTl9HWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_232601_479410_01159B7C 
X-CRM114-Status: GOOD (  36.56  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/6] ARM: Rockchip: implement memory read out from
 controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 4/3/23 21:43, Sascha Hauer wrote:
> On Tue, Mar 28, 2023 at 09:40:33AM +0200, Sascha Hauer wrote:
>> From: Ahmad Fatoum <ahmad@a3f.at>
>>
>> Add a driver to read out the amount of memory from the DDR controller.
>> The decoding of the registers has been taken from U-Boot. Currently
>> supported are the RK3399 and the RK3568, but decoding should work on
>> other Rockchip SoCs as well.
>>
> 
> This patch needs an update. The RAM is divided into two parts, one below
> the SoC internal register space and one starting at 4GiB up to the end.
> The previous version assumed that the RAM address decoding skips
> the internal register space, but it seems the internal register space
> shadows the RAM behind it, so a board with 8GiB of memory has the
> last address on 0x200000000-1 instead of 0x210000000-1 like the previous
> version assumed.
> 
> ----------------------------------8<----------------------------

With this version of the patch Linux boots normally on my ROCK3A 8GB.
Thanks a lot!

Best regards,
Michael

> 
> From bc9baa7ac71c4a8e75d000317d85d6bf6a85a8e4 Mon Sep 17 00:00:00 2001
> From: Ahmad Fatoum <ahmad@a3f.at>
> Date: Thu, 5 Jan 2023 08:34:40 +0100
> Subject: [PATCH] ARM: Rockchip: implement memory read out from controller
> 
> Add a driver to read out the amount of memory from the DDR controller.
> The decoding of the registers has been taken from U-Boot. Currently
> supported are the RK3399 and the RK3568, but decoding should work on
> other Rockchip SoCs as well.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/Makefile     |   1 +
>  arch/arm/mach-rockchip/dmc.c        | 219 ++++++++++++++++++++++++++++
>  include/linux/sizes.h               |   3 +
>  include/mach/rockchip/dmc.h         |  86 +++++++++++
>  include/mach/rockchip/rk3399-regs.h |   1 +
>  include/mach/rockchip/rk3568-regs.h |   1 +
>  6 files changed, 311 insertions(+)
>  create mode 100644 arch/arm/mach-rockchip/dmc.c
>  create mode 100644 include/mach/rockchip/dmc.h
> 
> diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
> index 2529af7c7e..f6c575854e 100644
> --- a/arch/arm/mach-rockchip/Makefile
> +++ b/arch/arm/mach-rockchip/Makefile
> @@ -6,4 +6,5 @@ obj-$(CONFIG_ARCH_RK3188) += rk3188.o
>  obj-$(CONFIG_ARCH_RK3288) += rk3288.o
>  obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
>  obj-$(CONFIG_ARCH_ROCKCHIP_V8) += bootm.o
> +obj-pbl-$(CONFIG_ARCH_ROCKCHIP_V8) += dmc.o
>  obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
> diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
> new file mode 100644
> index 0000000000..dd60db5830
> --- /dev/null
> +++ b/arch/arm/mach-rockchip/dmc.c
> @@ -0,0 +1,219 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
> + */
> +
> +#define pr_fmt(fmt) "rockchip-dmc: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/memory.h>
> +#include <pbl.h>
> +#include <io.h>
> +#include <regmap.h>
> +#include <mfd/syscon.h>
> +#include <mach/rockchip/dmc.h>
> +#include <mach/rockchip/rk3399-regs.h>
> +#include <mach/rockchip/rk3568-regs.h>
> +
> +#define RK3399_PMUGRF_OS_REG2		0x308
> +#define RK3399_PMUGRF_OS_REG3		0x30C
> +
> +#define RK3568_PMUGRF_OS_REG2           0x208
> +#define RK3568_PMUGRF_OS_REG3           0x20c
> +
> +#define RK3399_INT_REG_START		0xf0000000
> +#define RK3568_INT_REG_START		RK3399_INT_REG_START
> +
> +struct rockchip_dmc_drvdata {
> +	unsigned int os_reg2;
> +	unsigned int os_reg3;
> +	resource_size_t internal_registers_start;
> +};
> +
> +static resource_size_t rockchip_sdram_size(u32 sys_reg2, u32 sys_reg3)
> +{
> +	u32 rank, cs0_col, bk, cs0_row, cs1_row, bw, row_3_4;
> +	resource_size_t chipsize_mb, size_mb = 0;
> +	u32 ch;
> +	u32 cs1_col;
> +	u32 bg = 0;
> +	u32 dbw, dram_type;
> +	u32 ch_num = 1 + FIELD_GET(SYS_REG_NUM_CH, sys_reg2);
> +	u32 version = FIELD_GET(SYS_REG_VERSION, sys_reg3);
> +
> +	pr_debug("%s(reg2=%x, reg3=%x)\n", __func__, sys_reg2, sys_reg3);
> +
> +	dram_type = FIELD_GET(SYS_REG_DDRTYPE, sys_reg2);
> +
> +	if (version >= 3)
> +		dram_type |= FIELD_GET(SYS_REG_EXTEND_DDRTYPE, sys_reg3) << 3;
> +
> +	for (ch = 0; ch < ch_num; ch++) {
> +		rank = 1 + (sys_reg2 >> SYS_REG_RANK_SHIFT(ch) & SYS_REG_RANK_MASK);
> +		cs0_col = 9 + (sys_reg2 >> SYS_REG_COL_SHIFT(ch) & SYS_REG_COL_MASK);
> +		cs1_col = cs0_col;
> +
> +		bk = 3 - ((sys_reg2 >> SYS_REG_BK_SHIFT(ch)) & SYS_REG_BK_MASK);
> +
> +		cs0_row = sys_reg2 >> SYS_REG_CS0_ROW_SHIFT(ch) & SYS_REG_CS0_ROW_MASK;
> +		cs1_row = sys_reg2 >> SYS_REG_CS1_ROW_SHIFT(ch) & SYS_REG_CS1_ROW_MASK;
> +
> +		if (version >= 2) {
> +			cs1_col = 9 + (sys_reg3 >> SYS_REG_CS1_COL_SHIFT(ch) &
> +				  SYS_REG_CS1_COL_MASK);
> +
> +			cs0_row |= (sys_reg3 >> SYS_REG_EXTEND_CS0_ROW_SHIFT(ch) &
> +					SYS_REG_EXTEND_CS0_ROW_MASK) << 2;
> +
> +			if (cs0_row == 7)
> +				cs0_row = 12;
> +			else
> +				cs0_row += 13;
> +
> +			cs1_row |= (sys_reg3 >> SYS_REG_EXTEND_CS1_ROW_SHIFT(ch) &
> +					SYS_REG_EXTEND_CS1_ROW_MASK) << 2;
> +
> +			if (cs1_row == 7)
> +				cs1_row = 12;
> +			else
> +				cs1_row += 13;
> +		} else {
> +			cs0_row += 13;
> +			cs1_row += 13;
> +		}
> +
> +		bw = (2 >> ((sys_reg2 >> SYS_REG_BW_SHIFT(ch)) & SYS_REG_BW_MASK));
> +		row_3_4 = sys_reg2 >> SYS_REG_ROW_3_4_SHIFT(ch) & SYS_REG_ROW_3_4_MASK;
> +
> +		if (dram_type == DDR4) {
> +			dbw = (sys_reg2 >> SYS_REG_DBW_SHIFT(ch)) & SYS_REG_DBW_MASK;
> +			bg = (dbw == 2) ? 2 : 1;
> +		}
> +
> +		chipsize_mb = (1 << (cs0_row + cs0_col + bk + bg + bw - 20));
> +
> +		if (rank > 1)
> +			chipsize_mb += chipsize_mb >> ((cs0_row - cs1_row) +
> +				       (cs0_col - cs1_col));
> +		if (row_3_4)
> +			chipsize_mb = chipsize_mb * 3 / 4;
> +
> +		size_mb += chipsize_mb;
> +
> +		if (rank > 1)
> +			pr_debug("rank %d cs0_col %d cs1_col %d bk %d cs0_row %d "
> +				 "cs1_row %d bw %d row_3_4 %d\n",
> +				 rank, cs0_col, cs1_col, bk, cs0_row,
> +				 cs1_row, bw, row_3_4);
> +		else
> +			pr_debug("rank %d cs0_col %d bk %d cs0_row %d "
> +				 "bw %d row_3_4 %d\n",
> +				 rank, cs0_col, bk, cs0_row,
> +				 bw, row_3_4);
> +	}
> +
> +	return (resource_size_t)size_mb << 20;
> +}
> +
> +resource_size_t rk3399_ram0_size(void)
> +{
> +	void __iomem *pmugrf = IOMEM(RK3399_PMUGRF_BASE);
> +	u32 sys_reg2, sys_reg3;
> +	resource_size_t size;
> +
> +	sys_reg2 = readl(pmugrf + RK3399_PMUGRF_OS_REG2);
> +	sys_reg3 = readl(pmugrf + RK3399_PMUGRF_OS_REG3);
> +
> +	size = rockchip_sdram_size(sys_reg2, sys_reg3);
> +	size = min_t(resource_size_t, RK3399_INT_REG_START, size);
> +
> +	pr_debug("%s() = %llu\n", __func__, (u64)size);
> +
> +	return size;
> +}
> +
> +resource_size_t rk3568_ram0_size(void)
> +{
> +	void __iomem *pmugrf = IOMEM(RK3568_PMUGRF_BASE);
> +	u32 sys_reg2, sys_reg3;
> +	resource_size_t size;
> +
> +	sys_reg2 = readl(pmugrf + RK3568_PMUGRF_OS_REG2);
> +	sys_reg3 = readl(pmugrf + RK3568_PMUGRF_OS_REG3);
> +
> +	size = rockchip_sdram_size(sys_reg2, sys_reg3);
> +	size = min_t(resource_size_t, RK3568_INT_REG_START, size);
> +
> +	pr_debug("%s() = %llu\n", __func__, (u64)size);
> +
> +	return size;
> +}
> +
> +static int rockchip_dmc_probe(struct device *dev)
> +{
> +	const struct rockchip_dmc_drvdata *drvdata;
> +	resource_size_t membase, memsize;
> +	struct regmap *regmap;
> +	u32 sys_reg2, sys_reg3;
> +
> +	regmap = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pmu");
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	drvdata = device_get_match_data(dev);
> +	if (!drvdata)
> +		return -ENOENT;
> +
> +	regmap_read(regmap, drvdata->os_reg2, &sys_reg2);
> +	regmap_read(regmap, drvdata->os_reg3, &sys_reg3);
> +
> +	memsize = rockchip_sdram_size(sys_reg2, sys_reg3);
> +
> +	dev_info(dev, "Detected memory size: %pa\n", &memsize);
> +
> +	/* lowest 10M are shaved off for secure world firmware */
> +	membase = 0xa00000;
> +
> +	/* ram0, from 0xa00000 up to SoC internal register space start */
> +	arm_add_mem_device("ram0", membase,
> +		min_t(resource_size_t, drvdata->internal_registers_start, memsize) - membase);
> +
> +	/* ram1, remaining RAM beyond 32bit space */
> +	if (memsize > SZ_4G)
> +		arm_add_mem_device("ram1", SZ_4G, memsize - SZ_4G);
> +
> +	return 0;
> +}
> +
> +static const struct rockchip_dmc_drvdata rk3399_drvdata = {
> +	.os_reg2 = RK3399_PMUGRF_OS_REG2,
> +	.os_reg3 = RK3399_PMUGRF_OS_REG3,
> +	.internal_registers_start = RK3399_INT_REG_START,
> +};
> +
> +static const struct rockchip_dmc_drvdata rk3568_drvdata = {
> +	.os_reg2 = RK3568_PMUGRF_OS_REG2,
> +	.os_reg3 = RK3568_PMUGRF_OS_REG3,
> +	.internal_registers_start = RK3568_INT_REG_START,
> +};
> +
> +static struct of_device_id rockchip_dmc_dt_ids[] = {
> +	{
> +		.compatible = "rockchip,rk3399-dmc",
> +		.data = &rk3399_drvdata,
> +	},
> +	{
> +		.compatible = "rockchip,rk3568-dmc",
> +		.data = &rk3568_drvdata,
> +	},
> +	{ /* sentinel */ }
> +};
> +
> +static struct driver rockchip_dmc_driver = {
> +	.name   = "rockchip-dmc",
> +	.probe  = rockchip_dmc_probe,
> +	.of_compatible = rockchip_dmc_dt_ids,
> +};
> +mem_platform_driver(rockchip_dmc_driver);
> diff --git a/include/linux/sizes.h b/include/linux/sizes.h
> index fbde0bc7e8..1d222daeab 100644
> --- a/include/linux/sizes.h
> +++ b/include/linux/sizes.h
> @@ -47,5 +47,8 @@
>  #define SZ_2G				0x80000000
>  
>  #define SZ_4G				_AC(0x100000000, ULL)
> +#define SZ_8G				_AC(0x200000000, ULL)
> +#define SZ_16G				_AC(0x400000000, ULL)
> +#define SZ_32G				_AC(0x800000000, ULL)
>  
>  #endif /* __LINUX_SIZES_H__ */
> diff --git a/include/mach/rockchip/dmc.h b/include/mach/rockchip/dmc.h
> new file mode 100644
> index 0000000000..ff197d50a0
> --- /dev/null
> +++ b/include/mach/rockchip/dmc.h
> @@ -0,0 +1,86 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
> + */
> +
> +#ifndef _MACH_ROCKCHIP_DMC_H
> +#define _MACH_ROCKCHIP_DMC_H
> +
> +#include <linux/compiler.h>
> +#include <linux/types.h>
> +#include <linux/bitfield.h>
> +
> +enum {
> +	DDR4 = 0,
> +	DDR3 = 0x3,
> +	LPDDR2 = 0x5,
> +	LPDDR3 = 0x6,
> +	LPDDR4 = 0x7,
> +	UNUSED = 0xFF
> +};
> +
> +/*
> + * sys_reg2 bitfield struct
> + * [31]		row_3_4_ch1
> + * [30]		row_3_4_ch0
> + * [29:28]	chinfo
> + * [27]		rank_ch1
> + * [26:25]	col_ch1
> + * [24]		bk_ch1
> + * [23:22]	low bits of cs0_row_ch1
> + * [21:20]	low bits of cs1_row_ch1
> + * [19:18]	bw_ch1
> + * [17:16]	dbw_ch1;
> + * [15:13]	ddrtype
> + * [12]		channelnum
> + * [11]		rank_ch0
> + * [10:9]	col_ch0,
> + * [8]		bk_ch0
> + * [7:6]	low bits of cs0_row_ch0
> + * [5:4]	low bits of cs1_row_ch0
> + * [3:2]	bw_ch0
> + * [1:0]	dbw_ch0
> + */
> +
> +#define SYS_REG_DDRTYPE			GENMASK(15, 13)
> +#define SYS_REG_NUM_CH			BIT(12)
> +#define SYS_REG_ROW_3_4_SHIFT(ch)	(30 + (ch))
> +#define SYS_REG_ROW_3_4_MASK		1
> +#define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
> +#define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
> +#define SYS_REG_RANK_MASK		1
> +#define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
> +#define SYS_REG_COL_MASK		3
> +#define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
> +#define SYS_REG_BK_MASK			1
> +#define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
> +#define SYS_REG_CS0_ROW_MASK		3
> +#define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
> +#define SYS_REG_CS1_ROW_MASK		3
> +#define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
> +#define SYS_REG_BW_MASK			3
> +#define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
> +#define SYS_REG_DBW_MASK		3
> +
> +/*
> + * sys_reg3 bitfield struct
> + * [7]		high bit of cs0_row_ch1
> + * [6]		high bit of cs1_row_ch1
> + * [5]		high bit of cs0_row_ch0
> + * [4]		high bit of cs1_row_ch0
> + * [3:2]	cs1_col_ch1
> + * [1:0]	cs1_col_ch0
> + */
> +#define SYS_REG_VERSION				GENMASK(31, 28)
> +#define SYS_REG_EXTEND_DDRTYPE			GENMASK(13, 12)
> +#define SYS_REG_EXTEND_CS0_ROW_SHIFT(ch)	(5 + (ch) * 2)
> +#define SYS_REG_EXTEND_CS0_ROW_MASK		1
> +#define SYS_REG_EXTEND_CS1_ROW_SHIFT(ch)	(4 + (ch) * 2)
> +#define SYS_REG_EXTEND_CS1_ROW_MASK		1
> +#define SYS_REG_CS1_COL_SHIFT(ch)		(0 + (ch) * 2)
> +#define SYS_REG_CS1_COL_MASK			3
> +
> +resource_size_t rk3399_ram0_size(void);
> +resource_size_t rk3568_ram0_size(void);
> +
> +#endif
> diff --git a/include/mach/rockchip/rk3399-regs.h b/include/mach/rockchip/rk3399-regs.h
> index 57033b6510..6db082da9b 100644
> --- a/include/mach/rockchip/rk3399-regs.h
> +++ b/include/mach/rockchip/rk3399-regs.h
> @@ -10,6 +10,7 @@
>  #define RK3399_UART3_BASE	0xff1b0000
>  #define RK3399_UART4_BASE	0xff370000
>  
> +#define RK3399_PMUGRF_BASE	0xff320000
>  #define RK3399_IRAM_BASE	0xff8c0000
>  #define RK3399_STIMER_BASE	0xff8680a0
>  
> diff --git a/include/mach/rockchip/rk3568-regs.h b/include/mach/rockchip/rk3568-regs.h
> index edd5ee268d..55d28790dd 100644
> --- a/include/mach/rockchip/rk3568-regs.h
> +++ b/include/mach/rockchip/rk3568-regs.h
> @@ -16,5 +16,6 @@
>  #define RK3568_UART9_BASE	0xfe6d0000
>  
>  #define RK3568_IRAM_BASE	0xfdcc0000
> +#define RK3568_PMUGRF_BASE	0xfdc20000
>  
>  #endif /* __MACH_RK3568_REGS_H */


