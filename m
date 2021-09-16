Delivery-date: Thu, 16 Sep 2021 13:51:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQpvp-0001TQ-Be
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 13:51:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQpvn-0007J8-Ur
	for lore@pengutronix.de; Thu, 16 Sep 2021 13:51:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uRZcZvZaCXNUal9lB8VWZGh8G2GHeMMumTjRt8NI3SQ=; b=txi1/TcH3b26wE5J4fvLf188b+
	CdLMEVssfw+dVc+PaUv3764P/dz3su4+0E0WQ8sFx1GT+/WMS599NNKp9hfmWxPUozuUuORsPOol9
	mHpK1ZwlRwrz1d604b+BXjbhT3mTGdE0MOQ1Ofl5M5M6bAh4Bg8e8SRxoUVlb2uOZiGz/JWxu5HsL
	u5uzQ21zXsidfwraSudSSEXDoy5UicFcLZTUWckfP7/i9IpbypXV9dRsLZ18GIY3FHG6irA2i6fYO
	/uhV2y6OHCx9LsyGHzwTIv0IWN5aA9xFMP8vjqTe/lHzLiDv//BU/lgtzPBj+VbKvICLgRN3hVW9M
	MhmvUNIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQptN-00B2JV-Kv; Thu, 16 Sep 2021 11:49:25 +0000
Received: from mail-db8eur05on2051.outbound.protection.outlook.com
 ([40.107.20.51] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQptI-00B2IR-6m
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 11:49:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aibr98DOhiozf9iibGAI0rMo3OPJQHjluY3olR65Pi8THeZN7RIMrJbHnWT8ndN6yEFWeeZJeKypft1FWlbdrC8Tuai0mIznBQkiNS6ka4RV19kFjSLASYHDUdihEtcO9Pv9aWXHE0s+Yqadm4aueUaCJCLHSsX9kLwT2isJboR4S0FW3rsLOXePvEcja+AfJ9AFFL2QNQ+vQRVd9U/UhF3nSGJO9xuzmHwV7pVG+r2SDcdD6OgeIMAeMS35pEcQUczizmzoyBdD0bHXURzbx3AISSr6JDyhBVpsOFSBvKnsk3g51S1w9RqcJl4ijjzFGWm5wxS3o9W1ZXCOWt0Q8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=vmYgoS17Pvl973XnfdfwaSev2/UayqdbEkqXfxi2nqw=;
 b=LIwugSl0uR2h5h9qzYsgI5I1AxAEFyRFrmvrFoan8Kwo2DAW31ZJ/q6+aRKt2jYbStqc4NxgnMrqOoZwDRCzcKMYBJqeSSc4hoovjP8bpWB7VjffBz3nyj1vSYarmw3LGTg3MB6vAY0grScMBL0wTuCtKh9oGMCSovoolGfZJsBnNxubD3JewADxseFB11V4N/vIpgjCp3Q3pX+qSTfAoXTsFtDSaIApUPi9KPd4Z+yT4aHZdkigUahCbAU9ed32tONDEBvt1FKTg/+jKAFaCJTvbpltzS4jOHaG7/1hkCXDoabw13/3KN14VV8uBYXd9kjLJvq7y3TRjdGSP29p5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=t2data.com; dmarc=pass action=none header.from=t2data.com;
 dkim=pass header.d=t2data.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t2datacom.onmicrosoft.com; s=selector1-t2datacom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vmYgoS17Pvl973XnfdfwaSev2/UayqdbEkqXfxi2nqw=;
 b=mNBWkEYelTzIKhWxQUhHotkg0tD8vj4Lt3I2uKlvogwOF4H81YbP/jKZtff+FLJzWiVqdybSzX+IRzTsCfqP5/e9OQKmwo3VgSM3f0fztqq9ADO09/LBY7Kn4bHKSaRhLfR7iGqaTRRV0yUED0SezI22fZAYit7WGrBhfSTY+K8=
Authentication-Results: t2data.com; dkim=none (message not signed)
 header.d=none;t2data.com; dmarc=none action=none header.from=t2data.com;
Received: from AS8P251MB0167.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:403::21)
 by AS8P251MB0261.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:345::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 16 Sep
 2021 11:49:11 +0000
Received: from AS8P251MB0167.EURP251.PROD.OUTLOOK.COM
 ([fe80::dd37:4003:79e5:4b70]) by AS8P251MB0167.EURP251.PROD.OUTLOOK.COM
 ([fe80::dd37:4003:79e5:4b70%7]) with mapi id 15.20.4523.016; Thu, 16 Sep 2021
 11:49:10 +0000
To: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
References: <20210915123644.1292607-1-ahmad@a3f.at>
From: Christian Melki <christian.melki@t2data.com>
Message-ID: <86e53303-2c4f-27ca-21e6-d1f07174b6fb@t2data.com>
Date: Thu, 16 Sep 2021 13:48:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210915123644.1292607-1-ahmad@a3f.at>
Content-Language: en-US
X-ClientProxiedBy: HE1P195CA0003.EURP195.PROD.OUTLOOK.COM (2603:10a6:3:fd::13)
 To AS8P251MB0167.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:403::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.16.234.94] (212.247.174.226) by
 HE1P195CA0003.EURP195.PROD.OUTLOOK.COM (2603:10a6:3:fd::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.16 via Frontend Transport; Thu, 16 Sep 2021 11:49:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3eaa9b87-4afa-41f6-43fe-08d97907ff67
X-MS-TrafficTypeDiagnostic: AS8P251MB0261:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AS8P251MB0261D4B7BB716BF339D51432DADC9@AS8P251MB0261.EURP251.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YBWZWSkgBQpfJ0Vit+f5E7s3ZbC2ZhipVy4M+ygxwqF3Be/hAJNHlcq+SBLh9gww/8mhkrDhFnReffPoOUlkQ++TewJxUQRcP4ZpQYlT6aNEsXxrsdPxH97hZB4AQ8ycs2XYjM2rk1TBd0NETgX/A5yRtJ6r0f0T3ttErdgTGqkPqAlM8Cu34pkmSOxr3EwhR1ZU/6x1k7DnIN5PqeMOeWEMXuf5SwhqHS1DGQWDUrcuDPj0r7eJ43tEL1gkTIay12UAWPeIBBFB+2NUjlq8VFpK6rQWJrdaQlMAy4qHznf+FeSEUNrFEHSpBhhvm8sJrrUtvlHoOOsg9wLSNt4wgznE2JeiexrTvbKQGhliNZtV4bRg9uFTr6bREYGd1jLLKehaSisgfA54ZAL/zzXUkVTyY7+fH5Sk92NwE9UDkuxvm6oeYCs2w4JNPVmGnEMRYlUuQZ9qkxY3/5qt6DF03gaihudCxCbHWmtdohVL1Sk763EzrnKs2GUygeDW5rWU4TpGxpKsT3/j+GKmXP4Wy/DFi0VmaRjvFfZUSWCzGEke97657ye7u5f1B+Lp5bTng7vTrUANvGT0f7kMtKpY3XGwyi/MB4KG38zuWFtmzkWyowIjIRmphYMgx0GU9F7X4blxG2ovwFLZ0LfCc6lvxQ1DTuRbgspZJMRYRlBm9jwbYg9kPt+obyOp/FbRFM0dfmzxYxyhOC8+f4jofixK5UOw13okWwmiuw6+enHTX9Di+8gdSZ0knPhb1c9wzF8Q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8P251MB0167.EURP251.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(38350700002)(31696002)(86362001)(26005)(6486002)(5660300002)(508600001)(44832011)(66556008)(53546011)(66476007)(186003)(4326008)(31686004)(6666004)(83380400001)(52116002)(2906002)(8936002)(16576012)(36756003)(8676002)(316002)(2616005)(956004)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTBPMEh1ZGFjSTFjTTJuS0pmdVYrWHp6N0hNUFpzOHFORldFK21tMFRTVjRU?=
 =?utf-8?B?QjY5ODE0S254S01EUVdqZ2lvSWdUckk1VFROVEUyYW4vaXZGb0JhbThQb1Jl?=
 =?utf-8?B?VHZ1Tjd4Z3k5UTNBZzhtOU1GZ1ZRNEJUZGdETkF6YVppSTR4SmJyRXBsSExB?=
 =?utf-8?B?TnF6SE9qcmx1bEJlaHIzVCtLY3loVlBGcXdMeW1OTWl4cCtNTkpwWDZHclJp?=
 =?utf-8?B?UWNMOVRkUlhrT29idm1YRDhVbVkrcFFoUlgxS2NoQlR1VVVQejVSb05jUWsz?=
 =?utf-8?B?SjFhR1lubm5kMzVVZFUvY1FaenRxNTFOTzhhdXdkSGYxb0ZKUkE3Sk5wd3RG?=
 =?utf-8?B?dE9tMkxxZjhjdWw4cjlsNzlXNUJtb0ZRVWdXRFNGL091bzB2RWFPSUg5WWlG?=
 =?utf-8?B?TXJVOHpTV05FZE5OdE1mdG1SNWxGZndhMFlBSEpjYzZIOHpKU2c2VDNpbHZr?=
 =?utf-8?B?V1grQVhNL0ZDT0tpTlg2NElLNkxodDM4TWtCem9TMnNuQ3FFRFh3UXV2TXZ1?=
 =?utf-8?B?bFN5UE90UXdBazRQS2loQWRtNko5d09PV2tyVUNvZk5xeXR1blI1cTMxRHN4?=
 =?utf-8?B?NUhDdXVwY05JNTMyQ2ZDSG14OXRQaE9TTXEzK3FoRUcwZ0kwdUMxQzZXbytm?=
 =?utf-8?B?d0hoTDM4NGhyNGlXelNFWi9aeEhyV09yamx6ZlNJTDh4NXhRT2ZGcUsyTy9O?=
 =?utf-8?B?eXVnSW92VHJCTnlOb0lIV25pUENiNlJxcjdKNHV5OE5jWXJjS09SODFXN3Z2?=
 =?utf-8?B?aThVcFpjdytjMmw5dUp6SEw5ZkRlN3N4cy81MXFRRVNSUkZiSHA0QlFRS0Zj?=
 =?utf-8?B?M0VlNFAvMmNMbTBFYnZkcHNDMFdWNkc2eW9GMmNqOTdnUmRRbXBCS2Q3RmFC?=
 =?utf-8?B?TDVTR1dOSTZ3YXJhUjRETXBNcnZXYXZJZEJVR1BqNmNqRldCVFFrKzMwL2FK?=
 =?utf-8?B?NEtGSG82dmtzZUV4eUs0S1g3NjZENjdCOFRSVHllQnhaa0pib1pUTGxqSlFl?=
 =?utf-8?B?dDVVUklXQWVVL3kwZW9hMThOeERnNVNCOVcwekp6ZzYwK1prRE9FNGwrSkN1?=
 =?utf-8?B?QUY2clg3dndHNndldnBjRVExaE13SWhMNDFhMWZNYUY5dlBWaDNOVThZMlQ2?=
 =?utf-8?B?VFFrYmYzMFFNamNzbVpFQ3EwRDJJNCtoY2FxSVZiTXBRcFNVUyt0dUMrZGxp?=
 =?utf-8?B?eWhBampYam4wSlRZVkpIRDdPbUxXanQyYjA1TGFpZ2c1MmlLNzlkVnZiWEZr?=
 =?utf-8?B?ODVDSDBydTg4RW9NeFFyc1Zpc2lkcWZXL1JkdjJlNUNVcktkN1o2bDJOZlE0?=
 =?utf-8?B?K1pQQVhqNVorNXl1SVF3bGZhQ1pnTkZ5a3dOT3ZoblVodmJWVk83djNnY1U5?=
 =?utf-8?B?d0lIcEE4aHhRWEdHeFpKUXlYdUxhVHpZaVRIbGdUWjFOV0xGWUc5aFhoZFk0?=
 =?utf-8?B?WVd6OG5ZTVpLN1IxcUhod0E1S3dYWkZvdzY1aFhINnZmSDlpVFlXQTN4WWhO?=
 =?utf-8?B?V2FZRDRIK3hrNE42Q3hqT0VyTTVtM09PRDJWcHEyZTZIdk9obEVUV2dGNFZP?=
 =?utf-8?B?ZGl0UDE2TG04OUlWODFLWnRxQ0UvMzRvWnJZaG9xSlcrUjJHaTZ2ZlY4aEpS?=
 =?utf-8?B?bXByTXpoNVp2ejhrZjlVaHpnNnFaVFN6cDZnVklEN2Y1WUk1Wi9WQlJSNWNY?=
 =?utf-8?B?WDlrOFpPTDhoY2xGYmJncGJMeVBPa1JVZ1crZ055dUxNcHBJQjhhdkxKclB5?=
 =?utf-8?Q?oo8Y5zpd6YQOYu5U7RWHVQz08CxXYrkRkALAuqt?=
X-OriginatorOrg: t2data.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eaa9b87-4afa-41f6-43fe-08d97907ff67
X-MS-Exchange-CrossTenant-AuthSource: AS8P251MB0167.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2021 11:49:10.8227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 27928da5-aacd-4ba1-9566-c748a6863e6c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DhctLmgtLYV4by/0aIdhS/rOhlglTpO3O/47q0gGHr/kELQmJ3fJDc1TEHKfhZAdNskLG+5B23qwDjdgi6m9r+vf/Jy6/1VpfTr/Mp7Orac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P251MB0261
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_044920_372301_23548871 
X-CRM114-Status: GOOD (  27.87  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] console: add new CONFIG_CONSOLE_DISABLE_INPUT option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Works as expected on top of 2021.08.

Tested-by: Christian Melki <christian.melki@t2data.com>

On 9/15/21 2:36 PM, Ahmad Fatoum wrote:
> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> Add CONFIG_CONSOLE_DISABLE_INPUT to initialize the consoles without
> input support, making default bootup effectively non-interactive.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 is <20201013075925.2984-1-r.czerwinski@pengutronix.de>
> v1 -> v2:
>    - Make it the default for CONSOLE_NONE. This allows skipping
>      count down there early.
>    - rename write-only to disable input. This is arguably clearer
>    - allow re-enabling input on a per console basis. This way
>      e.g. a gpio-key with limited function can be reenabled,
>      but all other consoles have input disabled by default.
>    - add new CONSOLE_STDIOE to make the three bits easier to
>      write as a group.
> ---
>   common/Kconfig          | 11 +++++++++++
>   common/console.c        | 12 +++++++-----
>   common/console_simple.c |  5 ++++-
>   common/startup.c        |  5 +++++
>   include/console.h       |  2 ++
>   5 files changed, 29 insertions(+), 6 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index a9feae2ae866..9ae9238f88dc 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -812,6 +812,17 @@ config CONSOLE_ALLOW_COLOR
>   	  compile time default for colored console output. After boot it
>   	  can be controlled using global.allow_color.
>   
> +config CONSOLE_DISABLE_INPUT
> +	prompt "Disable input on all consoles by default (non-interactive)"
> +	def_bool CONSOLE_NONE
> +	help
> +	  If enabled, all consoles are initially configured to not accept any input,
> +	  making the consoles effectively non-interactive.
> +	  The active device parameter can be used to override this on a per-console
> +	  basis.
> +	  CAUTION: this will also disable input devices by default, since they are
> +	  registered as consoles.
> +
>   config PBL_CONSOLE
>   	depends on PBL_IMAGE
>   	depends on !CONSOLE_NONE
> diff --git a/common/console.c b/common/console.c
> index ad1a6aaab2a0..0368c72d0b10 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -328,7 +328,7 @@ int console_register(struct console_device *newcdev)
>   		return of_platform_populate(serdev_node, NULL, dev);
>   
>   	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev, &baudrate)) {
> -		activate = 1;
> +		activate = CONSOLE_STDIOE;
>   		console_set_stdoutpath(newcdev, baudrate);
>   	}
>   
> @@ -349,16 +349,18 @@ int console_register(struct console_device *newcdev)
>   
>   	if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_FIRST)) {
>   		if (list_empty(&console_list))
> -			activate = 1;
> +			activate = CONSOLE_STDIOE;
>   	} else if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_ALL)) {
> -		activate = 1;
> +		activate = CONSOLE_STDIOE;
>   	}
>   
>   	list_add_tail(&newcdev->list, &console_list);
>   
> +	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT))
> +		activate &= ~CONSOLE_STDIN;
> +
>   	if (activate)
> -		console_set_active(newcdev, CONSOLE_STDIN |
> -				CONSOLE_STDOUT | CONSOLE_STDERR);
> +		console_set_active(newcdev, activate);
>   
>   	/* expose console as device in fs */
>   	newcdev->devfs.name = basprintf("%s%d", newcdev->class_dev.name,
> diff --git a/common/console_simple.c b/common/console_simple.c
> index 42224842c5ea..3b95570e5e76 100644
> --- a/common/console_simple.c
> +++ b/common/console_simple.c
> @@ -92,7 +92,10 @@ int console_register(struct console_device *newcdev)
>   		newcdev->setbrg(newcdev, newcdev->baudrate);
>   	}
>   
> -	newcdev->f_active = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
> +	newcdev->f_active = CONSOLE_STDIOE;
> +
> +	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT))
> +		newcdev->f_active = ~CONSOLE_STDIN;
>   
>   	barebox_banner();
>   
> diff --git a/common/startup.c b/common/startup.c
> index d170cb8a7c5a..0c7033f38186 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -241,6 +241,11 @@ enum autoboot_state do_autoboot_countdown(void)
>   	if (autoboot_state != AUTOBOOT_UNKNOWN)
>   		return autoboot_state;
>   
> +	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT)) {
> +		printf("\nNon-interactive console, booting system\n");
> +		return autoboot_state = AUTOBOOT_BOOT;
> +	}
> +
>   	if (global_autoboot_state != AUTOBOOT_COUNTDOWN)
>   		return global_autoboot_state;
>   
> diff --git a/include/console.h b/include/console.h
> index a71d0da42ed0..5d5783ca6668 100644
> --- a/include/console.h
> +++ b/include/console.h
> @@ -18,6 +18,8 @@
>   #define CONSOLE_STDOUT          (1 << 1)
>   #define CONSOLE_STDERR          (1 << 2)
>   
> +#define CONSOLE_STDIOE          (CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR)
> +
>   enum console_mode {
>   	CONSOLE_MODE_NORMAL,
>   	CONSOLE_MODE_RS485,
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

