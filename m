Delivery-date: Thu, 29 Feb 2024 17:31:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfjK2-00GGuF-1s
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 17:31:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfjK1-0001y4-Nt
	for lore@pengutronix.de; Thu, 29 Feb 2024 17:31:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NRD4bk+0pRfvGr4w0tBtt40fidUj7GcYxzTB2ALtuQw=; b=cXDB4x+kM7x4pYGcxEPe9+P12G
	Jdg7YmZOZ5HQEwUK7XvM2kRb6LFMQh3B/4Ez6n6ADGLaZIA6+DpjDx3JZ7xj2SKFm9mHIWc2UFUSZ
	afzho1vn8B9HfYEU2qGig7ko5no5nIXwWSXee1osADdepOgb7peCUx3x9Z7R1JI7U5nvdNouxZF1/
	sKfxvNUsk2GOpoSCz7COZLAIAxJROWG593FQlSVhHqncq8IJnbcPmycqnYfJ1VG/6EUo2NG2o/ocF
	bbtbQJP0D8qdA08+QymWLLYEYK5veV9CT+FG3G6S3lpWaG1ZwqONhwdUYkNyKJ5+gwWYaNyiNUE5q
	oszBRK3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfjJU-0000000EJVM-1eXv;
	Thu, 29 Feb 2024 16:31:16 +0000
Received: from smtpout43.security-mail.net ([85.31.212.43])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfjJQ-0000000EJSP-0SHv
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 16:31:14 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id 5319530ED2C
	for <barebox@lists.infradead.org>; Thu, 29 Feb 2024 17:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1709224270;
	bh=5trAkzpjMaIWggXX0ifeSiH41YEpFutdqMMAiG2xGpE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=E/wBeSUbmDvzz6E3pyhFnunAE0z29kAeE6jiYETpC4sTl38trdZjbd/AxHu4aFakn
	 WFJKJJxSr+ceIly/JIrTa6TbtXD82RcAbhKrpuhEH4rSfykmDoTuD8wrEWhnrrlGQy
	 TjbrJ1QIMpaGmS7IMI2Vgyj19G3RInovGsx4Vg/A=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id 230CA30ED1B; Thu, 29 Feb
 2024 17:31:10 +0100 (CET)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on0100.outbound.protection.outlook.com [104.47.25.100]) by
 fx303.security-mail.net (Postfix) with ESMTPS id 93E9C30ED86; Thu, 29 Feb
 2024 17:31:09 +0100 (CET)
Received: from MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:13::5)
 by PAZP264MB2622.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.41; Thu, 29 Feb
 2024 16:31:08 +0000
Received: from MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 ([fe80::9c5c:2fbf:64c6:1dac]) by MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 ([fe80::9c5c:2fbf:64c6:1dac%6]) with mapi id 15.20.7316.039; Thu, 29 Feb
 2024 16:31:08 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <ddf4.65e0b14d.92dec.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b91sLa/UTmT0F2JuRr5YJJigJ6g1jsvo7KypXzDTt/UbLD8b5SS1mUxBTbiza/SLnv9eexzxlbhC5c8uA4Y7/y/wtR4EDa82WwjmjFuyg9o/r7BnKBhLGyZLDckEz13nDw9bmwo0BErzCm8RSc/O2NYexjdhdI6xpybvJwMzKaiGf6+LRkJ2GGlfU1X4ryRyt0sEV7aH67g+5uemlA//mNPpzo/fJKZPUJivpyFJUd8518Ax/OiB2C6XsffSJb2xOIWLT9pNGLqjHnhL3R9dw5zBhXRPHfK68yijgwP20ZCh5kQVEXf8WL3wxYxHUt+ahOllqY0K7S8oqu7LCxagPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NRD4bk+0pRfvGr4w0tBtt40fidUj7GcYxzTB2ALtuQw=;
 b=beo+nw5uml0VPcNPyoonxTpUBFaygnxaWY2vwY9/oZjtzjDIqVYwzIVR6OtBgxMU9lI2zv/Jhmxa4oaQCWyAohQhDZ/ePWT3YZXKDAZ2oNiEuJHyskSuKRs8GCuqq3vnxVXIh/1mhqmm4GN1Um8P8jYnc/+xxYSmR08fwZSpy2ZoaWlNKbHCdRuHdC0saaSzM/fKF9ArsH1/m8sVk2gFJv5aHzV8bMENh6Xqz8Qw/UbKqnY4YnghF0K6xzOBrbXE+iIGTQIvPQ8MAEAt/t9DIqLed4JGy78KXsVpgonHJvMtvxtnPyC0gfFrAu2yX8kHudALeUHidtjj0+GJCDu5Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NRD4bk+0pRfvGr4w0tBtt40fidUj7GcYxzTB2ALtuQw=;
 b=CgKryAnhZGErMaHT4mOB1qpR86IsIw7MB9CfvU3wJuVGd87CezL//9MFUyBF8cf7VhVqySG3q7KCclus05sBiH2lQwkHYLoFz2V7zkHOWm3N1BZXpnXzpT1rJJ3Ia04hPFnKuVPlMtH2TldYHuOqrnkCxh8qnkUbCxNtxlndHhHHYVAOCju6OampomPX2jyP513wR2cOz8/8aHdvILPBG4vjis1Hg8Om+HUxwztRUUPlmpV0p219rHyqdNKFuXHEdIeG3vK3paZHRjGYUHbXXnPS4aeiGRpXhHUFBeSI2WBVR0b9yL4D6uNOoLagXFFoG2Sq+n7x6d5F+0j7Kp1mGA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <46562300-8056-95c5-da6e-af247efbe62f@kalrayinc.com>
Date: Thu, 29 Feb 2024 17:31:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Jonathan Borne <jborne@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>
References: <20240229155700.17443-1-ysionneau@kalrayinc.com>
 <20240229155700.17443-4-ysionneau@kalrayinc.com>
 <213af923-0b5f-4a49-a982-a7a40ef1c25a@pengutronix.de>
Content-Language: en-us
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <213af923-0b5f-4a49-a982-a7a40ef1c25a@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO6P265CA0027.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ff::13) To MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:13::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MR1P264MB1890:EE_|PAZP264MB2622:EE_
X-MS-Office365-Filtering-Correlation-Id: d7efd5e5-b792-4f7f-529b-08dc3943d505
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b8KV7bsE8lCYWYr0YgyKe4AAZIBdNInADKfhGvCh6mWU+7QN4SOiTjv24H+kn9zK5B9NXHcx5YgIMjc9+D2PXTkKpeiy/xN0ctC/sa5uOjJp1rMMtrsIjUU/96/45XQWD3a9Ri9YewKFGpLpFcuQg+VMjLdMKNmTby2St+V/AUWh+lBT2Is32YGsqZmIV9V1gg6EccpWJKY5PE/xwoE7y8klhtDrtRr7xfIpEsGSqK0AHwB/bk0YHUZygxIu/6rD2h3Rt5s4cmFp8ZSK0Zv8pbQPlagcWli14Bgv+ly+wddSJYQw3VOwY4Kf2sjhWMMV4Qwc34BFUW/9uzxtfkzqAxaTzEmPeQt0K37j6eMlrSIBT/h3DHHogNJU91ZTygtq087MC1+YHyje56CEJ7qg5JGurplgY7Bk3wPcz91bwYVp7QJEEAXzbA6G5QzSvGgve+zacSRjX3pNdzYVb4ONaejVp30qnxZcpJx/+NZbwcaNHHIyg8SPN4vsT5u1rRfh4Q2G6ZPhVW4k1mGCJ1BH2TGb/wDimweCLasjeHXqjKmLtS3zSOKLNI5Rremi832uFQn5fTZBMCvolPJhrs67VA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: OJscuF9wew8J2q+JyFhTqLcKz7o7UZ3W+ps1kIPtxjFCKQIp06c784jPmz5BJ9BOhX+CGw70jUjF8UjxUctIllgOpAEt13nXlR9T/JjBsQ9pKOVf7BufIow4jbM/zoRSg0xIerJdtTdhLnpyEmiumnE4Ehv6+QtTD89Xw3TDontRBMy1ruCxdXbhyuLMd6DzcZjhO2rKQo+V0TNfsi3BEVbA81uNCPJHQylK8r8dNxjm99+cAG7F86t88i5GCdIQC93FwLWLq0d/XiYS6WPOhNFPNmAAQywfTWrWMUAL/iX+KmikQ0zP2ERYmBgXcyFzVIFdToRW9Ymsr5cYu27/BJobotnSi8ONouJh7sKJtVzsfxWY/5ibUNV2PKHDp7/hjcMCG3jjgIkddNdVjuTg8jVOPTqG9hd3rbW71ox1dCKvijU6xTufA2+WcyjDewWjiyGF1U/K2Pr1vzrBb1GSHGOZd7mmJcjNgJ27x0xfXWtbetbryhg2OSiGG4UMom64ZHz5VgIUV6JvE+PMm4gbg8kupwN4bz0R0qsa5KqkEr9sxTZJImz39gBzXbOYW+T7jGYqTH0Oq6nhQWeBXt3g8P4qL7X2N0VP+pBuhTLgPuqxCHQi8biyFZzTen1ZgxsfeZsrhxqsO3HGPj31pVak4I36mJPsbc3+enSnYqidimY0WutIDRXJfr7R+hujg+XYCnQHL8SvOvoWvh5T9KeTgz5DkOw7NB/J+TzaSnzOeU4T9fepFuRPcZ3w5EamSgOn4OM/hCZpz0fk7Z5y53b2iPl92MQMaMdtjsHsBg1CGSJmIXyTPdWynaAoC99Ga6maDD4Ihxp9mBozyrByCl/Bs9+9mqLqHhteZ5zl2RpGYBoatfFX4eCjYg397NhCTOOf/UNtriQGrEaG8+B3/b/Qs820BR1pc7y6hEN904AlQ/cz8/0ae285lI0rFtR73J9T
 9iGxcYqI7jz7hYsEbJIKYeppNI5jeUS7ADfSewGGWye+UY+F3ZTDSBYdXtpFpMFUMneXhf8wzXDtQHOWW7jaUCKuuMr1XDLYqxbUTrMciCJ2QXU6ar805uL41FQSYmX4tagpbO6Zl1tLk/riSQ0BQg/CG6Ak1kuuDe89q8EAFNsOVfF9vWqEGuQc+BbybWE/vrfHyHJZOLcp6uflKG7JSPMmpyd+6K2hIVrcEc+pOyqaDQrnVBbV9ThiRGq6GMINQ4TxHzRcu6as7SaWPZWjJrUErRgKqdoODUrf3bypZvah7Kmp4Z9tdoC18YKn23C6kTcd2jq1LIc5ezh2PvVL9W8LXgQYDH1sp7QaU0kx3SpscmHzG1KV9mxkOH7rrGKq/bhkynk4KdspaloF9uYCTJ75jIIsV9exuKxKP1bkZbiKQ4XpvNLHAO9uJb2StkMvaeLRRF8hCwXWc2VgIg3lk3KLXLxvj2HaJFiTAIzqWmcmJ0Jd2FEtlPtO34O3I5vT2x4/uDb5VgHdxZizET5yictJPvs9d6w6SGLYioEzSqDKuukUBcRS9Ie65zqof60KSnDLKJ0Z0xDi9NpOOsoOJc6uh/eD6XB3+F2He7fqUc6m5ptclA8eSr/ot+mUn3/alGTgUqG8l+v46qZXo8nvSQ==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7efd5e5-b792-4f7f-529b-08dc3943d505
X-MS-Exchange-CrossTenant-AuthSource: MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Feb 2024 16:31:08.2239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9ZO8qjaxXtzPhNsq0OyEzrWhkAFxAp0Wf8wwFfhrAur/sbq2/y4yx6YYw69ILIj6DY+oXV48rpuflF4jnMWgzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2622
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_083112_480587_145C2701 
X-CRM114-Status: GOOD (  22.46  )
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
X-Spam-Status: No, score=-7.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] mci: dwcmshc-sdhci: add support for Kalray Coolidge
 v2 SoC eMMC controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 2/29/24 17:19, Ahmad Fatoum wrote:
> Hello Yann,
>
> On 29.02.24 16:57, Yann Sionneau wrote:
>> Kalray Coolidge v2 SoC eMMC controller needs static tx delay tuning even
>> for basic standard or high speed modes.
>>
>> This patch also adds possibility to do some vendor specific tuning
>> in set_ios().
>> This will be needed for Coolidge v2 for >50 MHz speeds and HS200/HS400
>> modes.
>>
>> Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
>> ---
>>   drivers/mci/dwcmshc-sdhci.c | 40 +++++++++++++++++++++++++++++++++++++
>>   1 file changed, 40 insertions(+)
>>
>> diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
>> index d9c51752db..5017a1f56e 100644
>> --- a/drivers/mci/dwcmshc-sdhci.c
>> +++ b/drivers/mci/dwcmshc-sdhci.c
>> @@ -9,11 +9,16 @@
>>   #include <dma.h>
>>   #include <malloc.h>
>>   #include <mci.h>
>> +#include <of_device.h>
>>   #include <linux/err.h>
>>   #include <linux/clk.h>
>>   
>>   #include "sdhci.h"
>>   
>> +#define tx_delay_static_cfg(delay)      (delay << 5)
>> +#define tx_tuning_clk_sel(delay)        (delay)
>> +
>> +#define DWCMSHC_GPIO_OUT  0x34 /* offset from vendor specific area */
>>   #define CARD_STATUS_MASK (0x1e00)
>>   #define CARD_STATUS_TRAN (4 << 9)
>>   
>> @@ -22,6 +27,13 @@ static int do_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_dat
>>   struct dwcmshc_host {
>>   	struct mci_host mci;
>>   	struct sdhci sdhci;
>> +	int vendor_specific_area;
>> +	const struct dwcmshc_callbacks *cb;
>> +};
>> +
>> +struct dwcmshc_callbacks {
>> +	void (*init)(struct mci_host *mci, struct device *dev);
> Why is dev needed? There's already mci->hw_dev and mci->mci->dev

dev is not needed per se, but I thought that since the callback is used 
to extend dwcmshc_mci_init() called from generic code:

https://elixir.bootlin.com/barebox/latest/source/drivers/mci/mci-core.c#L2015

Then it would be a good idea to provide the same arguments.

But I can remove it.

>
>> +	void (*set_ios)(struct mci_host *mci, struct mci_ios *ios);
> You don't actually use set_ios. But I assume you intend to add in future?
> Maybe add it when it's actually needed?

Ok indeed it's for the future, in the future to support HS200/HS400 high 
speed modes

vendor specific tuning (tx/rx delay lines tuning) would take place in 
such callback.

>
>> +static void dwcmshc_coolidgev2_init(struct mci_host *mci, struct device *dev)
>> +{
>> +	struct dwcmshc_host *host = priv_from_mci_host(mci);
>> +
>> +	// configure TX delay to set correct setup/hold for Coolidge V2
> Nite: If you are going to send v2, please change into /* */ comments
> for uniformity.
Ok!
>
>
> Cheers,
> Ahmad
>
>> +	sdhci_write32(&host->sdhci,
>> +		      host->vendor_specific_area + DWCMSHC_GPIO_OUT,
>> +		      tx_delay_static_cfg(0xf) | tx_tuning_clk_sel(4));
>> +}
>> +
>> +struct dwcmshc_callbacks kalray_coolidgev2_callbacks = {
>> +	.init = dwcmshc_coolidgev2_init,
>> +};
>> +
>>   static struct of_device_id dwcmshc_dt_ids[] = {
>>   	{ .compatible = "snps,dwcmshc-sdhci", },
>> +	{ .compatible = "kalray,coolidge-v2-dwcmshc-sdhci", .data = &kalray_coolidgev2_callbacks },
>>   	{ }
>>   };
>>   






