Delivery-date: Thu, 24 Oct 2024 14:40:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3x8c-000Cee-0Q
	for lore@lore.pengutronix.de;
	Thu, 24 Oct 2024 14:40:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3x8c-0001dE-Iq
	for lore@pengutronix.de; Thu, 24 Oct 2024 14:40:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eG2qVKVFMkEqSvqyTqIMuUC9ZO4QCgDD5bwv78j+LcE=; b=qL3YmKzKQSCNcxRdiWHxpj56IP
	QF1+pZbDOxms4si2ZDbRIiafTVu5cIeTRrKPeXF7rc3sf6eL3Oh1n/MHuf83k0MHK+zoZZpyhKxAT
	gSFmQOafVMsQJMxZX2bZJngi9YCfaoTHgVwBGpcRgPqi7zWffMGaxKxADYsXPJ9Z/x+W5Shr1mLp2
	+5c+wIZB92xEu3VIL5r+fdlpzTjydMilsKxzFy5KKF3Mv6+uyw1jp1wVPyDClTyTsVG0nzxd/P4VY
	M0lsWeVu2wnd2hUXXUFtU7eGxEGWwCBJzlpzexhgBbmmaYodEYkm3UftUmA84ucbp/93pMnsgrl/l
	wwkomRYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3x7o-00000000MzK-3dpa;
	Thu, 24 Oct 2024 12:39:37 +0000
Received: from smtpout143.security-mail.net ([85.31.212.143])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3x3k-00000000MGv-1xLP
	for barebox@lists.infradead.org;
	Thu, 24 Oct 2024 12:35:26 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id C97615FC1EF
	for <barebox@lists.infradead.org>; Thu, 24 Oct 2024 14:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1729773320;
	bh=HLAn4pq6oysFNmRfyYrVd1KnBOzsIFQE3NZ/f8jy38Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=B8b2utujbCi2dETZ4zTiMgaiuYVZIzT5J1EjPmAATvtiol4MIhe4dvgNd2QyzBnj4
	 HloF30U67nQL0aC1e5TY2WDuHt7DXaO/k7oLHmTffv7q/YnLNtChO4tqOisy6818LI
	 jWCQw8GvuNrRIp10MoWoRHc09Gnpd1hAM7aN5fk8=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id 6879C5FC17F; Thu, 24 Oct 2024 14:35:20 +0200 (CEST)
Received: from PAUP264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17011027.outbound.protection.outlook.com
 [40.93.76.27]) by fx403.security-mail.net (Postfix) with ESMTPS id
 5D7395FC63C; Thu, 24 Oct 2024 14:35:19 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MR1P264MB2866.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:37::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 12:35:17 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%3]) with mapi id 15.20.8093.014; Thu, 24 Oct
 2024 12:35:17 +0000
X-Secumail-id: <b466.671a3f07.580af.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JTHvP/tFlPMGAaRoo7rjvrocFX8sI/MOhYvUn7BMVP6DEUZVdkB0N+jmwZduFjX9WEIL1XF20dJhchnMkancEkajpjVNkgQxruN/xON9psBRxVxIW+ZGyfgg1t/uuNkGQ44vE8t7h3ZBHt2R2+XzmQXRmqgi7biXHgfgbZNdkeghhi7WToMewyoauwZKVjWnDApiKcIl2fo4NXdUTMdLste+SwsWnZYDLaGaoh5kyHOhn6RpA9rqTckMAJBSaplq0kC2VNpKE49CZoe5DWb7oGDHynyciMubJRG/07VjGXnFHCu7Zba6mctWmMGkPfzazt5zHwaMv5ZCHC9BKIMAyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eG2qVKVFMkEqSvqyTqIMuUC9ZO4QCgDD5bwv78j+LcE=;
 b=ResNi8i9E14AsSlmldRszax9bD2NZbZ1oE08srDAzaJHH6BA07lNVZf3nKwsWR8DagWIXKIsFaM5XLvRWCJtlYmZHmuTl2ccuxzjbibMjBTpja1y8CF3Uq0lzMyYYLoRV/RM3vC0nPQnQ9vR5iMs4NIvAMycdzfKN4iwzXFnksJowezt6+OAdigan+jqgnsBN7v4Zciq6cK527z4x0ZRVJGFourOfrPrVD8CpDHymME7lngWG8mH6TuM/WgiL9mjxgddS1Ij0AhpOn8GOT8aQK1mL44mgcFxcR5m9XI03IIIkMNCM1bi5z4lz1+q4DdlnAeqYQpFKy79fRA529GA6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eG2qVKVFMkEqSvqyTqIMuUC9ZO4QCgDD5bwv78j+LcE=;
 b=X8OJIUMAqCVsVYhbtoWjFah8zYTAyCdKJnFSwgPtW0cf9QbQSTatLtsmHzg605M0MbPYnQacjh6JY3TwhqsK8WIV2f5Xy4RcfNCXd+LH793dUoJji/hrSn1s2toO/IQwbe27+CDG6Pm92yTfsf0gK4k0MayWeK9XfiauMG1tay6F4GfQ8XAG4yrgq7u0CQJpygjjAOOiEETU3H69+XXGTweKz8JCHpZ1D8Ld7byJKRX6l2z4bhFLkBEsVxSEiUkmdAA0azGclOBH0OcgJwzrQwlOamvvx3Me3p9L1bBcX25Esq1epPm2UxIChipJYxC+4VUtUaE4+qB5qQwGl/X/ew==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <1afa7a34-5a08-48a8-b037-9ea59507aa43@kalrayinc.com>
Date: Thu, 24 Oct 2024 14:35:10 +0200
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>
References: <20241023085517.1594242-1-jvetter@kalrayinc.com>
 <bd3b8651-6108-41d6-8ca5-4c2968a55186@pengutronix.de>
Content-Language: en-us
From: Julian Vetter <jvetter@kalrayinc.com>
In-Reply-To: <bd3b8651-6108-41d6-8ca5-4c2968a55186@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR02CA0185.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::22) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MR1P264MB2866:EE_
X-MS-Office365-Filtering-Correlation-Id: 12d95bcc-4c80-44f1-8a73-08dcf42850f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|376014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: p1damA1eIAHutF53mXgiEimsqyZFGuZ/9mSFgJR2tNZ4CHLJoz983kcK1kBI3W+NnTt5DS5aaV4/X80ZV9nicwa6/KCdUC20q3aW20i25x8oo1J39cHzTxUPFoQO2eoyNVGNsTa9lujAeiBILK0Il6WmayxSvLYEt4S2JEhrvQFPLsHfjoel6ZiL9rdJkUrsGdOZ0R776TXJfmJzuYjpbYR6YEuCro0BHQAkBzYr3NIyZCoXfQ4keVPCnHNHSzZydSryEljK5bttT2jheQdmWaCRfPi1HqRR8R2l7z3ukK8NmcsJ0cMzQt2VqgYiDr8cR+PLDL/RVYxekjDlRIXIjz+iGgRjEdmIaVeTGMSstP0i4rC+BZxzZLpRUThx0v6qKOzFy36C1vygAWMf1wHzrKblW/nDGE/FegOmFjav790kNKfQJY1cBApS5u0y7u10M1ozx4ZMCEIkjyG/Edv9s5ULuVv01fo3YgEzLFt68mwQDnxXwNhZNDoK0P8DetQX4DgsR9smR5QxAxWQmP5pduMqAzHDFaVRF7YURNVAvjSIAOmMrrsYSvm4O5EP9xOHAXwVdccW2tL1s4l0y2PNW4YI8srFzOVmIK/F1/wGx//CbbflrmbS4d+wxioHx8CeX0+DfdxxUxrdpRTYYqKy6VP/MpEpx0IuBpmCepH7RUKeQXhitBg12LhYUr0TbGcO8P+6jXF4u5B3sy93FCIk9lap+GTZgZRhrCnoywDHX70y4ZdoJlrOHfN6Xf34Fwl23tW/lD+5uoSh8E9J7CkOAwBqHqeBvnCNxISY7R9n0Qlqzvn7D02cr8s4BQzVne9svyMGO1vFCDaM9PxvUQ4y9WXxwrLPkG0E9IYFWMK+AkgOFRuvx8BCEIyrqlPuFsS4poduXieeHrh9F3kfDrWkrZ6QlUTFb4uREihj4OJNgVrGK+2idseAEGDEJMnUpoZ7hqU
 sOYht1g9kinLk8pjQC0OBpSBpTwpspb83gUI7BkWZM1EiiPsxJxpewd6JaF+hbqLKzWtaJo450Q8DBeRjHDupibRMpLy4MYpVtHaYBzMZU2lwjrgHKhksQI1Z0SO9awRsW0iHlcXb+0uZd7JPLvh8sJZbEwQymeU9Z0oN3ZabvvtSS9hkiFMqxQJ2lV4noqzMe+pCOZ1XYr/xSCATt4uXRaSGbYOp0ugH/L+ISsbYE8mHaT3fU25CpIzsKehOcCe8kQUYhwz6DW29V+WsoTss89KdlrLEZpshFthEFOFR1bZ87mcTlUDa4vcfB7jNHnWgo8/4qolwCVPXtMZDc/dplqIYD5ViPfE1EB27jj1XpXXmDdK2r42mqv1lrGXw7Pyhb4GCS9rtHg7o1Ap1IKrPUuxOuD6CAju0JGi0rc0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: uMYKvxBgqecu3arkyzNsDkco5HWUpB5YZwF+OMfDoZBLQAc1Cf3RCnithu19L3euk667k4M16ebLqrXxGWAK3boFQ1drArhXunor8BrGU1Szosub+V5SYf133yLSpZIDmZkiquUgezgi/g24sTi+20rvqHL+zqU5IXT5dLyjoaD6bc24K7v4EGc4SvpTQNWroQr4zTtUE3Pf0ZTdzp4jnrt6bckxuH3yhwgZlUjxrfWYQYuEfkMTONAIRknBgIQf5VKtK53PGvCZINjhXGkUi1F2CKBy7GFoSsMmyq4VE9lqh1rVKw6Oyvy4N9zzIzbCkPUKMl7TdY8GNaaP0H2UXDRrBV/T8BwxDtvF00l4cE3qxalj8/sGHHQZHcmgLmqaQVgTMpvbkBkX1zwb+TtvF5We4q066zXMpRG/WT9JVupHh8zSniDLqgyaebltO0A+SaXzpbs/QCcJeZknMcvvFu7iFUzwVdUnzWP4XwHSnyAOtONklyD31nnnMWy9UU63WUWDZxt/Pt414H5+IGcTCSG+y88tJ3DXGA/zus5RJ/XcIuGwLDCvNS5lU3Dju1XHQTPi4tMAF3EyebSoyPhy+kS4l5UvjIIo2iYLlU5kRLE/a3HsbZ5NG5piI5lpHNdvqzqlf+rjwZUQnI8pgyw//sWySSRiq6L4yh7UqIEWAF7WZFgmCpMVurizS7fCAHpvrK3BoOIW4PD+P7vJ6rapKZ3XuJ84aZjTPG1psjXcktWxxkGEsUd0oMa96Qxyc44SPh45nDYAcBMkBO0Igxgdv69qPXicIW5ArZyS81Meu4cDPo6ZLEKL6TnXqvgW8d4oXMI+JWo99vd2lcr6msrUrsld28g+JEt0hsfcEJ+Vrhc+HtA2qWn3jIK2luRn65hy22jHCMnAsowK8OyEmfxf326HF2tccU/dR5kVwaazZ7cA2ukT2GJZZaODoTIgaXNu
 NyjgwB+kjuxnodN+dYmVe6n2SgwQgir5mLTf90AXea2gCMXrqJQBkl6ziNm4gSTSN/aI6I3h+35ZibevW6N1rj6IcQJx0BTtBRPAI8VT/rUEm0K853pA2HDeLGPrR7D5TF2ZBlT+QgupJ5a4gJYNxDqemCG6Z3Iqf9amrko6iH3MuRfQn44JxrQ/KPu1PTyiWH297KV3WuDj3dDou7qEWH5YPCSleN5MrXt514poloPf2ZdGilm3y7KB/hcOSdOJE0eV5z5mTyR3GY4/K9VaVNoTLTPYkXGqPR7q1aYMcoNpo8DZHSm921Wdl9jOlPMR5GFoN0Wv7w64E+ixIhsp21OFiQEcXvW7A+DOFoR6J94z1r3JpbQQK7mPHFs6Gv7BCcL/sZIG4Jhm6+/VA7qwbtmH49XYFKpa9EKsI/02z/6pVY0WfqHKKweTqhegV7Fj4GG8CiFa7r0VCaMvH67vJoorrk30JwIUZsAq3UnFlT04xO6Fqddhl8uXg8QQspYjFFED21ZA+H8UFsEcP7sBXbXODQFQq0fiRFyilmq/PaAqOHrnZlfI2u0PtEdjFul2MV06uFron4Ii+Ox5k5RYOf+f9xbRISFNIwj2WoVHfJ5ncALsaa9uU1x0RhMzwwyW
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12d95bcc-4c80-44f1-8a73-08dcf42850f8
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 12:35:17.5115
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lxIjYEyoczVFZZtcCnw3zJCSr9DranuOy/Ku6zR/pAhm4S95t7iECLbh5Kg3u9qwWUgzvg4SH9JwWgPOJ9jahw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB2866
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_053524_812486_2F7B54D9 
X-CRM114-Status: GOOD (  18.82  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kvx: watchdog: Add early watchdog init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 10/23/24 11:25, Ahmad Fatoum wrote:
> Hello Julian,
> 
> On 23.10.24 10:55, Julian Vetter wrote:
>> From: Jules Maselbas <jmaselbas@kalray.eu>
>>
>> Add support for a watchdog that starts as early as possible in barebox.
>> So, if there is an issue the board is reset properly.
>>> Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
>> ---
>>   drivers/watchdog/Kconfig   | 13 +++++++++++++
>>   drivers/watchdog/kvx_wdt.c | 16 ++++++++++++++++
>>   2 files changed, 29 insertions(+)
>>
>> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
>> index 762e37c9c2..b1924b5b05 100644
>> --- a/drivers/watchdog/Kconfig
>> +++ b/drivers/watchdog/Kconfig
>> @@ -89,6 +89,19 @@ config WATCHDOG_KVX
>>   	help
>>   	  Add support for the KVX core watchdog.
>>   
>> +if WATCHDOG_KVX
> 
> `if' and `depends on' are equivalent, so just drop this line alongside
> the endif.

Yes, thanks. Fixed.

> 
>> +config WATCHDOG_KVX_EARLY_INIT
>> +	bool "KVX Core watchdog early init"
>> +	depends on WATCHDOG_KVX
>> +	help
>> +	  Activate the watchdog with early initcall
>> +
>> +config WATCHDOG_KVX_EARLY_TIMEOUT
>> +	int "KVX Core watchdog early timeout in cycles"
>> +	depends on WATCHDOG_KVX_EARLY_INIT
>> +	default 100000000
>> +endif
>> +
>>   config WATCHDOG_BCM2835
>>   	bool "Watchdog for BCM283x SoCs"
>>   	depends on ARCH_BCM283X || COMPILE_TEST
>> diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
>> index be6b08b71c..3e66aa38ba 100644
>> --- a/drivers/watchdog/kvx_wdt.c
>> +++ b/drivers/watchdog/kvx_wdt.c
>> @@ -91,3 +91,19 @@ static struct driver kvx_wdt_driver = {
>>   	.of_compatible	= DRV_OF_COMPAT(kvx_wdt_of_match),
>>   };
>>   device_platform_driver(kvx_wdt_driver);
>> +
>> +#ifdef CONFIG_WATCHDOG_KVX_EARLY_INIT
> 
> Move this down before the core_initcall
> 
>> +static int kvx_wdt_early_init(void)
> 
> Add __maybe_unused here.
> 
> That way compile test in CI tests this function even if option is disabled.
> 

I have tried what you proposed but the CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT 
is only defined if we enable the CONFIG_WATCHDOG_KVX_EARLY_INIT. So, it 
fails if we have the watchdog enabled but not the EARLY_INIT. I could 
either keep the #ifdef before the function. So, it will not be covered 
by compile tests or I add something like the following to the function:

int wtd_timeout = 0;

#ifdef CONFIG_WATCHDOG_KVX_EARLY_INIT
wtd_timeout = CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT
#endif

What do you think?

Thank you.

>> +{
>> +	/* Set Start watchdog counting */
>> +	kvx_sfr_set(WDV, CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT);
>> +	kvx_sfr_set(WDR, 0);
>> +
>> +	/* Start watchdog counting */
>> +	kvx_sfr_set_field(TCR, WUI, 1);
>> +	kvx_sfr_set_field(TCR, WCE, 1);
>> +
>> +	return 0;
>> +}
>> +core_initcall(kvx_wdt_early_init);
>> +#endif
> 
> 






