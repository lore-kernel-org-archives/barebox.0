Delivery-date: Mon, 11 Sep 2023 13:50:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffQl-00BRtw-1Q
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 13:50:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffQi-0006f7-MO
	for lore@pengutronix.de; Mon, 11 Sep 2023 13:50:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HMgn65/BdXh990y3RGXDhc9r5dPQH41Fb3ys3TZy+LU=; b=iYsEGAt6nrP9Xq/C0dVuv9tbJf
	dUXycgWGXJMMArGZibjkAIi63pp14aK6aPJjuVZfF4sIwGan6sMHHlqNtDR+F9+4/q8NrNhtZRDdW
	bDBb///ISMzImciYzowWMLlqYTxbX/BE9gNKPKOR5UxdUwAJtgeLIQopj45ibBaN0+2NcAL7ZDbiP
	VeFrWao1OqK+fnCy1YQUq0JdI3x0q8In2LEvHIIqi1F1gA8rnxIwFCNsPtLhaMBudhCMku4XVZKI8
	runouUWywP+4z0PmY6MbnSnyJc2Hb3FYtCsnZz/FDBRtV/v3LhlwvC/HZQ84g4evsxJWpUMzGm+l6
	g0Fm2cpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qffPe-000PPK-2D;
	Mon, 11 Sep 2023 11:49:06 +0000
Received: from mail-db5eur01on0617.outbound.protection.outlook.com ([2a01:111:f400:fe02::617] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qffPc-000POE-0o
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 11:49:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0EUeBpLAn1z7xBaWyuG7ivlh3rJ1sEsOntnwOzNI5ceyarm7Glm4w/q6lTRUapry04hbduocUESZnsjsjTHD8G+F/XtMLKDkLStIBfgczT97XefpIbhhlomIK+lkbGYqv4h9UZAxC7WYK/6VzoeEmXJgwqIDmOzjfyz3h9H42No+Kex2OpzenmMHgxI0fmZgMezKOi+oZxQG1DjtfEDCSuJkGcHNOws9Z0th9hYMAZEVRfVSbGaoBlzm+gg7ybzOwvvqaZmvEDf/jVLK/Q7a/Cj4yvbN8diQim5aKS63LyUTkcF6HfRETq2yt/yS6owfzMwn6E+/6aDZ+uV7hrwIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HMgn65/BdXh990y3RGXDhc9r5dPQH41Fb3ys3TZy+LU=;
 b=oZVf2vJX80047TcnRSp0qAWQxGYXGLyphoufm0WcifP8GMtLo+pIVrVSMZyCGnPO9DLuXjMX/Af7m/2NWlWkz49ZVcC44t4nvwoUR8GOPq69uSPsISINLj5lQS9lXnVS7KZGRyDodmvOUFR8dIpZffEQLsCjtcUXLn/WMESogmod7S8SBsIf98fnLjt9QPa4AsjYmrMRAxzIiESoVZApbPwcWVM/mEI5922g4QJ71UESod0PPsk/2u6/HsYrOqKc6I0Km2X9J8chJK7xEAfnWb3BYOR5v3tfXw3eIU62DXqnTPYX80ezxpSmibtmqv7OegoFfR71nTvhwGK8lZ49zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HMgn65/BdXh990y3RGXDhc9r5dPQH41Fb3ys3TZy+LU=;
 b=JoCqzJ50BH24VUUv6skMl/aMPPT3WQwD0omGtbLiIsm/y6DGMxvvvn7ASbM5Wo+ewV5lik6hRZZF4o89B3Qe+/uxRRG9RdSe+VwH67YvPC7CC7P0IX+ZWKewgoYMU6f+tL2p3/C2HACtYItsf09nRYfi2YaVNLQgOmloul3d/SI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4539.eurprd08.prod.outlook.com (2603:10a6:10:cf::22)
 by DU0PR08MB9298.eurprd08.prod.outlook.com (2603:10a6:10:41d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 11:49:00 +0000
Received: from DBBPR08MB4539.eurprd08.prod.outlook.com
 ([fe80::eece:e868:23c8:9476]) by DBBPR08MB4539.eurprd08.prod.outlook.com
 ([fe80::eece:e868:23c8:9476%4]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 11:49:00 +0000
Message-ID: <4b02bc9f-e21d-8211-9559-18eb44c88cc9@wolfvision.net>
Date: Mon, 11 Sep 2023 13:48:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230908131117.1769957-1-s.hauer@pengutronix.de>
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230908131117.1769957-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA9P223CA0023.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:806:26::28) To DBBPR08MB4539.eurprd08.prod.outlook.com
 (2603:10a6:10:cf::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR08MB4539:EE_|DU0PR08MB9298:EE_
X-MS-Office365-Filtering-Correlation-Id: 42c11797-284a-4fad-d87d-08dbb2bd16ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Frv+A93q0Yr2Gl76UEWrpHx07Y/I52p+G5kGh5hWmYUnbZENenGLdyPi7g7jLO1lwWQteuXFgfcbn19voQKC9B9Ci7NSX4rM81sBwAmfMV9//CvFTvIHzg3LYa/PdVtOf3mOtfePOYYE12Tz200jqfSNO1MYLyqDsawagpu6C2AgBFfbJ65mkuAXHVPnj5ghKGWOiBkkLWwGgRJx/8kxoBsYfMnCZjMEAu4C6axqjZ1ADrv5c04F9Tpwt1wZlHC93NHr7Iv/rnZpPaWvlVIesjIHsqn6Nf94dU2MmBPuNmsRic69JRcGLqWkZfW9u9d3Sx16vq9TkxfhaCmZAcfPPqUGB9jweIrl2NCFzlmgUB6rgoIkUZZbGlPVLkTciczgrPuZStKAdu+cgnYaj8nAzcRrMURXSKs2a8UzXnu4MUxrcYPzUDDqU6mVf5KEVgfnOud8j/yRF/HjlP2X9n+1bfMwtE19qw3+hOMXarFJNfAZYc4OF7uG9CPZ/DY/ExS70vCBMD6UVbWis/7HmGCgDH8UJRBNbhj5mD/y8B3AM0+z5IDcXDr5g7CYIFUmT/KCeRrUbcDER6N2pF5wKyKfdbiWCsNiFPhqLuLl2EfNAxRurQ10X8C2X1+HnGP498iJAy3KAhjCA3IhTmmiR8JmBQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR08MB4539.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(376002)(366004)(396003)(136003)(346002)(1800799009)(186009)(451199024)(6506007)(6486002)(36916002)(6666004)(6512007)(478600001)(26005)(2616005)(2906002)(44832011)(66476007)(66556008)(66946007)(316002)(110136005)(41300700001)(5660300002)(8676002)(8936002)(86362001)(31696002)(36756003)(38100700002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mit3VmlycHh6VkRNajgrQTkyRmxTRjdqSE1uYml4MlBKa1kvWjhyNzZJNytE?=
 =?utf-8?B?THhmU2ZMRTZtVHNidEtKUEZ6d09yN1RLTVdBaWMyTFJrZmNrTGIwdEp5VXE3?=
 =?utf-8?B?WVhEVnFEeG55aE04YjEwSUt5WTJQYVdVOHlSNWpKY0p6Z3FoUlpLYzUzbmYv?=
 =?utf-8?B?QSt3NC8wTXh2V2d2K2NBUldsZGFJRFM3Sm1PcFA0OWk1V29VUTBaQ3hRMzlV?=
 =?utf-8?B?UzNEb0J1WW1YT05jdVRCb3JtNkNNVXhBSmlER3NGT2ZVdWNLeEkzQ1ViUFJp?=
 =?utf-8?B?ZG56bnBJUVNqdzRTeGI4Y3krK2c0S3h1NjJSdG0zelV3UXRDNTBldTFTbnFP?=
 =?utf-8?B?Sm4wL29sUCtEcDB5ZEZzM3l1Wm1mS1hScVJZTk1JU3ZpSmJkb3pKU1VxUUQw?=
 =?utf-8?B?UWd3N05mOHgvaFBuelFnN2k2MUdyck9hbmpMd3dlSHhnTXlPZjYzN2N2aW1H?=
 =?utf-8?B?SkV1RVh1VHA1SlVLaUxETC8yRndTdXRidnBvcVkzTkhmcVUzUldpY2FwNHNi?=
 =?utf-8?B?MUlIVU55NjNDdkdUTy90d0VxUzNOVGtFQ0VYa1ZIQTJ0SHBHdWhhcDhjMXNq?=
 =?utf-8?B?NTRFd3M4cHBGZEhOT2tLU0VuajZLWTk4bHBnK1Q5VDZnTjlJcnZiRDVtRm8z?=
 =?utf-8?B?ZjRlMUxENVc5bU1aUG9uYmRuZ2ZNOVQyV3BuSmIwMnBUWE9NS1RrNzF3Tnlk?=
 =?utf-8?B?alllempMUllRUzdLb1cxM0pZNzI4N3lkMkt0NVZKOWZuN1BabDFCR3Y3aE1D?=
 =?utf-8?B?WmViWnJzWmJGN3MvMUJrdnhsZGhpZWxXNUNzVWR1YmdNcWNQc1JSNEszRkdv?=
 =?utf-8?B?SlduVFhkQzBXK3owbTVadDBXSGFmZmREdTdncXhjN29zSExTYTJPOEc5b3F5?=
 =?utf-8?B?WDdya0ZXa3VZb0theXdmNVhmTzBnVS9sQW9KTVNJZmQ3RXN3SVAxdWhrT3dp?=
 =?utf-8?B?dHBsN2dHbUNnblVocjlTVDBkMDQyQjdaODlrZHhtQVlLQ2RvZVI3SU9jQXcr?=
 =?utf-8?B?RzFsbnQ3S3E2Y3ZZaGZEYnVBZkFveWp3V0pJVkNuMFVSUGJ6Qm9aNlE1YU1G?=
 =?utf-8?B?SW9OTEpTRjljUEI5T1lEcUJSUUV5NWRVNnZkTkcra3F6M2IxZG1UNkxDUHUz?=
 =?utf-8?B?czIyVGRVc0NEUEJjMzg1MU9pMnE0MkZWejlsK3Q2bTRPeVZaR0VMMlpNYjRw?=
 =?utf-8?B?WTVVeE5pdXRPODBPSSs4aEMwQzVKWjhBNXZEZlR0V1dFZmtJaFlKempjVFhy?=
 =?utf-8?B?eTJQNHRSbVhQczg0Mlg2UUJPSWpqL2FuQnBYK0g1NmhmQnhaajJIK1Jha2c3?=
 =?utf-8?B?RmZhUS9kOWFNWWtFRDBPZjFiMUVlVFY1V0xMY2VGNDBCazlIaUdhNklhZWxE?=
 =?utf-8?B?KzEwZTdmVG9JVlkzaEJWdmdXemVFRlRDczlTYmNmU2ZTY1hSSW8rODdYd1RE?=
 =?utf-8?B?Qm9PcHpTQ1RCbFJWVnR2WGV2SnhVamFnbGVJY2VTU25WTDRJemZCWWNGekdU?=
 =?utf-8?B?VTdldmhodmlTU0VLZzl3RUxHbVlVMGZuUXVtdDMyWmxaeDBidm9Kbk1pZFg4?=
 =?utf-8?B?eDdTTUxoYk1wRm8rVmFnbmJGaWx1dXRrcGI3WFA5c1p4cjdxZ2VQd3pHNWw0?=
 =?utf-8?B?aXNPVlI5a1Y2UmhOUTZvVkVvbGFTSkhLZW1pVU5QS0NLSVI4QzBLZ0tUSFRO?=
 =?utf-8?B?OW05NnhvdlV4RkVEeEIybnIzOFFYZGd3ZHdKYVF0aEZZamVWSys3TExQTTkx?=
 =?utf-8?B?WjAvUkdkdEJwc0o3N2dQbGJ1M0xBekJ4WFRhSG1OaytPa1RvN1c1aEVZN3cy?=
 =?utf-8?B?eDQzVEFNWm5rY2NoRnlvY1d2NkI4TXpVcnQzYjlOV0lxNEdJbmRIbS9jZ2xS?=
 =?utf-8?B?eVFITy9jVU1LWGtpYmlENm5vTS9qV2xOSDhERloydjhDRExJd0JrWUdNVFg2?=
 =?utf-8?B?TVdHcHRRNmIwcE5pN0RLR3NHUFpDT2pnMDBDSllqMHlOT1c4V2pBRzFRQVRL?=
 =?utf-8?B?WUxQVVpXWFVRVC9nNXZoTmdRRGRtbUpQRHFQN25VRG9kUmFzWmluTmFoaDQr?=
 =?utf-8?B?UFpVS01LbDZGMS8zRllNdlhJNnFBOXhoT2NOYVJmbGRVdzZialJrcWRhQW5X?=
 =?utf-8?B?YjNFMXJTY1R5Z2JDbHA2VDlwY2liR3BTdHpiQyt3Rk5YMzhJN095SU1OK2py?=
 =?utf-8?B?UHc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 42c11797-284a-4fad-d87d-08dbb2bd16ef
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4539.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 11:49:00.8463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MZJIaoQTq1FbkwcZiKX+4RA10XMIl2qxLBWIFpfYgOs6kR1y89momFAtb+v/RNw+/rJM83iuT9Hx3MWndICGKRv2qDtHUVUBE4MvjjDgifM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9298
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_044904_291450_62D5D34F 
X-CRM114-Status: GOOD (  15.39  )
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
X-Spam-Status: No, score=-105.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] i2c: Add slices for I2C adapters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



Am 08.09.2023 um 15:11 schrieb Sascha Hauer:
> Add a slice for I2C adapters so that devices using I2C in the background
> can check if a I2C bus is busy.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Gerald Loacker <gerald.loacker@wolfvision.net>

> ---
> 
> Notes:
>     Changes since v1:
>     - Add forgotten slice_init()
> 
>  drivers/i2c/i2c.c | 7 +++++++
>  include/i2c/i2c.h | 7 +++++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 300365bd1f..70d1b810c1 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -23,6 +23,7 @@
>  #include <init.h>
>  #include <of.h>
>  #include <gpio.h>
> +#include <slice.h>
>  
>  #include <i2c/i2c.h>
>  
> @@ -62,6 +63,8 @@ int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
>  	uint64_t start;
>  	int ret, try;
>  
> +	slice_acquire(&adap->slice);
> +
>  	/*
>  	 * REVISIT the fault reporting model here is weak:
>  	 *
> @@ -96,6 +99,8 @@ int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
>  			break;
>  	}
>  
> +	slice_release(&adap->slice);
> +
>  	return ret;
>  }
>  EXPORT_SYMBOL(i2c_transfer);
> @@ -721,6 +726,8 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  
>  	list_add_tail(&adapter->list, &i2c_adapter_list);
>  
> +	slice_init(&adapter->slice, dev_name(&adapter->dev));
> +
>  	/* populate children from any i2c device tables */
>  	scan_boardinfo(adapter);
>  
> diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
> index b1ab72850c..4fc278f800 100644
> --- a/include/i2c/i2c.h
> +++ b/include/i2c/i2c.h
> @@ -18,6 +18,7 @@
>  
>  #include <driver.h>
>  #include <init.h>
> +#include <slice.h>
>  #include <linux/types.h>
>  
>  struct i2c_adapter;
> @@ -121,6 +122,7 @@ int i2c_generic_scl_recovery(struct i2c_adapter *adap);
>   */
>  struct i2c_adapter {
>  	struct device		dev;	/* ptr to device */
> +	struct slice		slice;
>  	int			nr;	/* bus number */
>  	int (*master_xfer)(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
>  	struct list_head	list;
> @@ -318,6 +320,11 @@ static inline int i2c_adapter_id(struct i2c_adapter *adap)
>  	return adap->nr;
>  }
>  
> +static inline struct slice *i2c_client_slice(struct i2c_client *client)
> +{
> +	return &client->adapter->slice;
> +}
> +
>  extern int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
>  extern int i2c_master_send(struct i2c_client *client, const char *buf, int count);
>  extern int i2c_master_recv(struct i2c_client *client, char *buf, int count);


