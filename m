Delivery-date: Mon, 11 Sep 2023 13:50:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffRO-00BRvz-7E
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 13:50:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffRM-0006m8-6I
	for lore@pengutronix.de; Mon, 11 Sep 2023 13:50:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rJiRaZvzf/H+xsjH1gayHu2PC0MA5bowsjEO/QXm5Ok=; b=lxLXs2yXSc5+XVlWgZPC0MiDJD
	gJaWMpK/C5QqXGanrZ0V3gOtLgoOC4cIctD+Br0EuA1TzJLgk7zdENZAyrVWwOA0JSy0C66Cfnet5
	eywX86Nd+x70RHPnJdoDp0ROAF61uLzJgm8TaP2RDvdjhVHhCoYwye5MB/uMdpWYG6NAoXU2bV8j4
	EB1EzRxvnjebv+DFemp380nKVoywPLUCbdg42lqL64I98fHOUNugOKagKiC4ljrMQ/Sg1oWZkf2/O
	jdJ457Jvf/regD/cNQJL+VaKrYKWmrpnixdNuQN2qiEGQyMbvXw2clKQ+QJLfP4RqbXg3RXj2sOQk
	Vxii/dgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qffQE-000PVu-2i;
	Mon, 11 Sep 2023 11:49:42 +0000
Received: from mail-vi1eur05on20621.outbound.protection.outlook.com ([2a01:111:f400:7d00::621] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qffQC-000PV3-0d
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 11:49:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ibULpMYeNA8J0KMK4YzmB/PW6kZV/7UiluUQeqJqXQjvzQCiyYeoFbASW0JGGo+hDl0KWeqR/ZehpJfDEfPJ8wwnH7NVj3quKFnIxAW17Xmdu2XnRLhddlTVeZ9NDATe1RO4BUmH5WN9j7Utc0pf1bpWOjl3UjgyyKNHw+s7d2OhyixzIQc+rP1+85ryJkNaZXOnhUASZiI/Ljeq+Ud4tsXYpXFchcLnIbKPrHlsQ796BOIaRxALsk/aJSwK/xiY+ghjWh2oRkFlZ8ZILG/9UvqpPb8jC3zE3pPTq5/3Twj2QUbE1CZKsvVhEygwk2rJXNImXmZ+GCwOnXx/gQLMOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rJiRaZvzf/H+xsjH1gayHu2PC0MA5bowsjEO/QXm5Ok=;
 b=knrv3WvqY+ZGDHXuWo+a2Ui17K1ftdxu8dQ3hL2hDrSsJOXCIepFCjZnCEcQdLhSpYptlgmlgMjp1DrLnfFVeooVstzI7k3VS1cCn9RFEkxfF8vcaQoI+IHBDL00/CpbtxMFDlOnbzLhcmesQm/03B0BCLGPrw34flfX1J+tSbnl3TjT/4bVDjKgWadiKJkjmOTzUMCmmaFM2cLUwc5lnlB9WaPe8lUvJWu59S07EWtVptnZcwAHHKqlF/cckkcwvL/XpbBJ6I8ahvgH2SFLFoBD8ZpHT06VlfB/hgsCfssHzP42hq8Nra4NFdplOQ5P+qyLbDoIRjwSWkp0U1T8nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rJiRaZvzf/H+xsjH1gayHu2PC0MA5bowsjEO/QXm5Ok=;
 b=TAxWl4NEih0PnLIusZogmaY1n5jyp1dseUFjDrQGLjcnfqDEokUeAklr3XtA1o4q7yiIx/1E31/gMP2dd+TA15HkU3rr78/duDvRgZ/k44Iorl30RupyvPmGRZdyweQgRPPcCKJlN+deLdApRCiyks7/DpkunHf7R+I8gfVvlUs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4539.eurprd08.prod.outlook.com (2603:10a6:10:cf::22)
 by GVXPR08MB7702.eurprd08.prod.outlook.com (2603:10a6:150:6c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 11:49:30 +0000
Received: from DBBPR08MB4539.eurprd08.prod.outlook.com
 ([fe80::eece:e868:23c8:9476]) by DBBPR08MB4539.eurprd08.prod.outlook.com
 ([fe80::eece:e868:23c8:9476%4]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 11:49:30 +0000
Message-ID: <b6ff64b4-137b-0eb9-34e3-ec92d05df2a7@wolfvision.net>
Date: Mon, 11 Sep 2023 13:49:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230908131117.1769957-1-s.hauer@pengutronix.de>
 <20230908131117.1769957-2-s.hauer@pengutronix.de>
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230908131117.1769957-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA9P223CA0010.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:806:26::15) To DBBPR08MB4539.eurprd08.prod.outlook.com
 (2603:10a6:10:cf::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR08MB4539:EE_|GVXPR08MB7702:EE_
X-MS-Office365-Filtering-Correlation-Id: aadae464-4c7a-43e5-1234-08dbb2bd289f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bRrvZzUbMxmN/5EUl/e66F7CQAiTL4E3mTGGPSVg7OSD3BtOuEhy2/kqUsBpMmrG6+eVSB8fmHlncUvmUNXjViuLJW4B2/24cN3uswtKAqjZM++AHd/FuAAVuK7jzBaFOIleYmPMD7vL7hl+SWhN/FgHnvyJXNP4w9VxTF6TK20Qcb3xEzufSkTQfLS0fGQ466z91VyyIzCubd7BIEYKJWERPoZwtreH145re4+7ctYLiJHhABfw/HQQU6GKrlfxhbAFDxYJwd/OYirUIx1vrDG82p2nj3BgiwwHCUF1CEpM9IfzLWbBDiQVGaqDwx0oLPdufepMhUXVx/Nf8DNYF/YbE436av7j2RVEpf/umbZG34EX1fBXm9reMWv2CjVqjCcYDxDpz3d5veU1fiWkG+aHwLlkiWKuM+9U46zm0w0ORjPLZKpzq6LhWqw1AJrTbGt58SLDN2jYeYASqIcY/44T3Sqhv2jb4Bn3DVPCJFa9nOtqcMbfR5RaKu9LJIHSPqhmOEVWjYlLJ9844hc73py5WUo+OSh7wOkgUZW0xkA6+ESh97U7mB5QctLSTUKsplYJAuZTi2z4Qojt4ds4egOKqjK9Ao3HxyabTUGTZcBWQ3SIKPwSm1DtEggKUVHR1cVffaQSM+qfx03PDtQz2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR08MB4539.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(366004)(136003)(396003)(39840400004)(1800799009)(186009)(451199024)(6512007)(6666004)(36916002)(6506007)(6486002)(2616005)(26005)(86362001)(2906002)(38100700002)(44832011)(8676002)(5660300002)(8936002)(31696002)(41300700001)(36756003)(110136005)(66946007)(66476007)(66556008)(316002)(478600001)(83380400001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aytHdTJCQ2hWajNtakwwS0JjNkI1N3Z2OFZwdW9BeWw2NGkvbzFrMTI2ZzMw?=
 =?utf-8?B?SzkyYkVYbGpvVmV2c3Rna3dSVlNiWUpQdWdwcENwWEcrY1JYWTd3UitEN2h0?=
 =?utf-8?B?K0M1Sm96cGhjNmdnOFhhdG9tbElhOVVoVmNlTkc5TkFIOWxvcWVPaUJScnNN?=
 =?utf-8?B?STFPeVlBb1lablRISUFpV0ppV1kxWnQvK3hSc1lnamlGYkdzWVY0TDdobVVU?=
 =?utf-8?B?RTNqQjY1eEtNZXVrYUhWODEzM0h6cnRTL2g3N3BYZnpOS3R5MlZVNFU0M21C?=
 =?utf-8?B?em5OVnQwTjVvbzdJYnQ5NlB4NzhWOWw0NXBPZ2tJbVd6RjRqQUFnZTBpekxG?=
 =?utf-8?B?c3dIZFF1MS9LUHFMTGtJdkFCTmIwcFpKZ1h6T2oxYVJPSko4SzZRM3g3R01h?=
 =?utf-8?B?NFUxcmVDN2puT3dWMU9rMlAyaVMwVTYyOHg0VGc4WTBET1gzajRXWlh4STh0?=
 =?utf-8?B?cFFKaGJLRzdMVitxdW5jcGR1NHQvWTRDNDNYNUVYVzcrZWdNQmpmZ242bERF?=
 =?utf-8?B?amswK3g0WUlZYlUzVEhXVjIzbUpJYlFRekVCa0g5S25WNGE2MG05cDNSK0Ry?=
 =?utf-8?B?MFZoOXBtbW54WllPeXd3WU4zaW90Vk1FQzN2SmFwZGhyNkpPVDZwSFVNaDZz?=
 =?utf-8?B?UW11aXZXNStDSm81K3VkYndlalA0ajdRUDN2ZDljc3VDRzdTSzJkNFo4MG1F?=
 =?utf-8?B?U0NhZGk1b3FaQTFSNi9oT0pQejVmOThocG5ndDl6bnA2MTN6MmRWaG50STcw?=
 =?utf-8?B?eCtvWXlCWUlHKzQ2dFZlU3ZmNk9mM0pEZEs5VHVlNzdYZXhVeDhWay8wV0JQ?=
 =?utf-8?B?NEVBcXFxeDZqYlo5Qk5MeUNHTDBrUXl3cXhRN0JIM0hGS0krN01TR2hFemhW?=
 =?utf-8?B?R2JhRytuSXRSQ1N0a0RDM3NHVnA3ay9TVWZDa1BDQmEvUVY4bU0vODdZWXN5?=
 =?utf-8?B?eTAzZDVXSEdIMlNPRmlhc0JUWGNsNjB4bXZNaEhkZS9ydjkvOEUxdzVTV2V2?=
 =?utf-8?B?SHdFemNJdXNzTlVGMHJDNURkWWN0UjZuYVBnRlhDaHR3NVRwY2VvVGpRVlV3?=
 =?utf-8?B?RHlWWmxxT1FjVGFTZDU4OXJSdFpRMk9Fbmt1Q2oyS0dwTDc5NkY4OXdWNjBJ?=
 =?utf-8?B?UnVUYjJ4bUJPNkFHWXlGQXZqMUxvN3YrM2ZrTnhuaVhhZEtNaUlTbEZoU3Fv?=
 =?utf-8?B?eTcvdlB0aVNUUTZ4cTBmYW1aNnRPamRXSWlGb1M3b0FaWW9MeXc5dEZQZDBL?=
 =?utf-8?B?NmpHd1Z0eFlkaDV3cXVsWnNzVWo0KzIvMTJoNW13eXRORUlITEloYXI1aVFB?=
 =?utf-8?B?ejkzL1NFNzRiOHdXNS9MN3BrT0R5OVU5OVk5T3Q4VDhCc0NEdnJFQUJiZHNW?=
 =?utf-8?B?Rjh1TXVzVDhnQlE4K2FjNEVuSXF0YVVRV1ZxSjd0ZE5Dekp1bUJ3cy9OU0Iy?=
 =?utf-8?B?SFhBa2kvUUVMTXFiOG4wcHlsY3hNdzgyU0IxbTFHazFhN3l5THVjWVFJNDFw?=
 =?utf-8?B?cXN5dnMxY0RhWGwvYXZFakVtR2RBN01mNWUzU2tqU1NNT1cyakovdUpkUk05?=
 =?utf-8?B?UXhtWjFwemhvTlp4Wjdlb3ViNW11MXIrSUNyK1VKZ1dFS3p1T0M2cVdBcUhP?=
 =?utf-8?B?bkRjRmdlblJRSnJtcFhDUnBVTGdBUktvaXhMN3R4S3Nya1VQQUthSHJvTEt5?=
 =?utf-8?B?L2xsMFkzR1pDZkFYRmJWNCsxZllrL0dnM1R2WU9lRmg4dmhLZ3hSQlRSemZS?=
 =?utf-8?B?WllOZkd5OExlbFRaS1AvREVsL3lTcC9IRGFSUEw0NlRGdnVmajJkOE1XTXFk?=
 =?utf-8?B?a2ZMdHgwYTJ3cmF0S3BFRDhHSEZUSjV2YWNWYzYreEdtTlJwUEs3cUJvc0xm?=
 =?utf-8?B?cGdEeFdjWUxJbXlBeEIyZDEwSVVtckgySEVBb1dnNHZlVjBFaFlydXR6RFcr?=
 =?utf-8?B?MjlSdFlwKzFlbjlUUE44Qkk4ajllS0NTT3ZHSG5vVnV3MFh4aGxnblNTNGJo?=
 =?utf-8?B?RFpNVHRKNnRDQ3dkdXkyT29rcWhqcWloazhqa1A3dFVpSElKS3ZJaWVQdlBp?=
 =?utf-8?B?UFMyajVGeFp2Q3BzNEZWU2F2ODNnQnAxZkhJeGdpdkNVNkFKYzFPKzhCQnFU?=
 =?utf-8?B?akYxWjFLd2xwRDVUYXR4NFplU25sVEN6TFk4VjZ1Z2k2RzlJOUlSMVJZL2pj?=
 =?utf-8?B?aUE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: aadae464-4c7a-43e5-1234-08dbb2bd289f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4539.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 11:49:30.5309
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6709C4fSxa1IDVe2J6ZCrnz8eEz1STHTh4etin7oeA8rNoPSsTgIb4Hd1XWd5hdBWYuW3Plofwk5jstXmgCT716zhaBNzJDCjoHkW7Y+WdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_044940_242036_6B06BD7A 
X-CRM114-Status: GOOD (  19.10  )
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
X-Spam-Status: No, score=-106.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/3] spi: Add slices for SPI controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



Am 08.09.2023 um 15:11 schrieb Sascha Hauer:
> Add a slice for SPI controllers so that devices using SPI in the background
> can check if a SPI bus is busy.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Gerald Loacker <gerald.loacker@wolfvision.net>

> ---
> 
> Notes:
>     Changes since v1:
>     - Add forgotten slice_init()
> 
>  drivers/spi/spi.c | 12 +++++++++++-
>  include/spi/spi.h |  8 ++++++++
>  2 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 584d4ab777..83f2b0ee1b 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -12,6 +12,7 @@
>  #include <spi/spi.h>
>  #include <xfuncs.h>
>  #include <malloc.h>
> +#include <slice.h>
>  #include <errno.h>
>  #include <init.h>
>  #include <of.h>
> @@ -269,6 +270,8 @@ int spi_register_controller(struct spi_controller *ctrl)
>  	if (status)
>  		return status;
>  
> +	slice_init(&ctrl->slice, dev_name(ctrl->dev));
> +
>  	/* even if it's just one always-selected device, there must
>  	 * be at least one chipselect
>  	 */
> @@ -352,12 +355,19 @@ static int __spi_validate(struct spi_device *spi, struct spi_message *message)
>  int spi_sync(struct spi_device *spi, struct spi_message *message)
>  {
>  	int status;
> +	int ret;
>  
>  	status = __spi_validate(spi, message);
>  	if (status != 0)
>  		return status;
>  
> -	return spi->controller->transfer(spi, message);
> +	slice_acquire(&spi->controller->slice);
> +
> +	ret = spi->controller->transfer(spi, message);
> +
> +	slice_release(&spi->controller->slice);
> +
> +	return ret;
>  }
>  
>  /**
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index f806c7a30b..45d6f5931c 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -3,6 +3,7 @@
>  #define __INCLUDE_SPI_H
>  
>  #include <driver.h>
> +#include <slice.h>
>  #include <linux/err.h>
>  #include <linux/kernel.h>
>  #include <linux/string.h>
> @@ -161,6 +162,8 @@ struct spi_message;
>  struct spi_controller {
>  	struct device *dev;
>  
> +	struct slice		slice;
> +
>  	/* other than negative (== assign one dynamically), bus_num is fully
>  	 * board-specific.  usually that simplifies to being SOC-specific.
>  	 * example:  one SOC has three SPI controllers, numbered 0..2,
> @@ -601,6 +604,11 @@ static inline int spi_driver_register(struct driver *drv)
>  	return register_driver(drv);
>  }
>  
> +static inline struct slice *spi_device_slice(struct spi_device *spi)
> +{
> +	return &spi->controller->slice;
> +}
> +
>  #ifdef CONFIG_SPI
>  #define coredevice_spi_driver(drv)	\
>  	register_driver_macro(coredevice,spi,drv)


