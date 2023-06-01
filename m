Delivery-date: Thu, 01 Jun 2023 18:11:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4ktM-0062Dh-I5
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 18:11:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4ktK-0003ky-4z
	for lore@pengutronix.de; Thu, 01 Jun 2023 18:11:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fLNYMG/AnVWfLBjiMyJkfR5ULd5DxF2k8YGUGoCtlFA=; b=Yin1EDZFPZ9d/pBjncpPwma7qd
	S1vOX8HmpdLkGXQ3pcYBrOL4WYvm27RulAW+s5umwq/my8fgK5ssL+B+r3ZZVd5JqHbhgq2TTIYkj
	wO+yVFrWUEqELyd1j21aOt8Ai7Dwb5uvT6i4GdRhj+IZe8JyfFMLUTCF8e9Ls+DQYAjuTR/8y9BVN
	v+ji4VHoJ1htJ7m3nknqq69J4O1W6SqK9+CLxyWE4nTciutATrgzHikVD1QTIBYFL/2+2BGRg3BxS
	i4I5olCTTOez6kjcH0DV3MAj6bgd14vFv7ww5OKnubXUKrFfyte1PcXfi+/aFW6rEARNIW/kkhAb6
	QtwTJsrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ks6-004AWy-0G;
	Thu, 01 Jun 2023 16:09:54 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ks2-004AVj-2n
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 16:09:52 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 2EDAB35CE34
	for <barebox@lists.infradead.org>; Thu,  1 Jun 2023 18:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1685635788;
	bh=IWyoC8Z6kZh5VI4G3Qs+e0pfEUTq3fwuXLpbX+heEaY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AgypdFJuflMCFQzXS8tHwIaVcKT+hY5Rikh6n44dneyxw6H5tKOYA9TabTFLeUWRY
	 SmnnW+ZLbwWgmdDvCV3w4Yg/+7UyT7rS5vefgktQ93dFbCuPLt0He5XEy2Vtf6IeDv
	 +YPZDQAth9A6xuL9jnndROHvguLPqdgJLieAnxFE=
Received: from fx306 (fx306.security-mail.net [127.0.0.1]) by
 fx306.security-mail.net (Postfix) with ESMTP id 08A6A35CE01; Thu,  1 Jun
 2023 18:09:48 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0106.outbound.protection.outlook.com [104.47.25.106]) by
 fx306.security-mail.net (Postfix) with ESMTPS id 5DA8535CE24; Thu,  1 Jun
 2023 18:09:47 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by MR1P264MB3298.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:28::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Thu, 1 Jun
 2023 16:09:46 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::fb3a:e31c:94e0:db8]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::fb3a:e31c:94e0:db8%4]) with mapi id 15.20.6433.025; Thu, 1 Jun 2023
 16:09:46 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <17f72.6478c2cb.5c4cc.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sp4Mvkkr+7exWNeB9Glbmt6Kkt1c95d8rxOMMLCMwqje4u6gcCRsDbYpnJAfzlNMAZHiuYkOiBjpKvOlPk989SDRwA+oSwKccXL9c9awX3b0q6RaQo5Eb1S5amRGSEUPCMWeYmEld99K3H5+P4hFkxS+7PHibhbNnrKbWYVXlkr6pNDY5UG80BJisBdwNJAbQntkuk3bG6CFdQrBNHfJQgKXgfE/lrPZOulZ9cfrCuzuL0Y24bHutFzTuWszI7sc2YUzfHzPltQtJ9jFRdOFHVObjQe3RprOkc6nP+U8N8KyhnOgMi+JoB7pbwSemfv+znmk0xsJeI7gUZheeWeukg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fLNYMG/AnVWfLBjiMyJkfR5ULd5DxF2k8YGUGoCtlFA=;
 b=PuXXBEAaRMkpzQfgm1I7fkshVewUaHYMHnfbPSVs2xHC7vvZrB4eVRH+iGjRHYTsV/GK0J205MRBoptSj5KIMq5auAFx9aRA3vInOW16LsQDjphIetUxkMNqteAv7KtbJMmo7eXRfZ1k769yJKopb6FKuCCQ1XXHtDFbN4sWGdorJP8qXMdeHv7Gja39dI4YAC83ykDJrxASzvGq7LsFo+JsfvIkjpzlXGDjKeOILdzJMJuWCLTDwfMsQXi9x83Cl3/4/utW4Znx6euVoBp37Gg0M5E+dKhOtHZV7195U9cNELDjZVQ8ifE/OGcd4hHQgM4IAj/jQ3u3RzRSAUMidg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fLNYMG/AnVWfLBjiMyJkfR5ULd5DxF2k8YGUGoCtlFA=;
 b=WDF9qD4Nn/ixEIpx9Wr1b4KrW4xtvQqZdN4u6c1CkKgjMq6Udl74RI2ueQ7Jh5OWbLQpUriNjZkblTscSjIeU7cYOsRgmyvH0V4K9X1ZuR79SwpO6ttB2NkJSIfaVB6LzUhGHhiGwqPL4Oi+F33uETS96mr5Ust+CtCxzmYXHpMGSfw1URbFF2erKknAff+cKiNiPEj5kt08Z4xd65ZBOpD7nj5Ikk5eOevXYFgcXNISN1/lBAiZYQ75JzEzHZfYDSeTlNESqj61MyFiCMpxNDDMVlUk0lNpOdJt56Pdnnj+vZigu+9lFGI/jW1rvpTt83nYKrF0JQBVWJYWvUgouQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Date: Thu, 1 Jun 2023 18:09:32 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <ZHjCvPyB21Y2AWw+@tellis.lin.mbt.kalray.eu>
References: <20230601142506.1069998-1-m.felsch@pengutronix.de>
 <20230601143209.GN18491@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20230601143209.GN18491@pengutronix.de>
X-ClientProxiedBy: LO2P265CA0502.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::9) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|MR1P264MB3298:EE_
X-MS-Office365-Filtering-Correlation-Id: 2df3cbfc-7dcd-471f-e563-08db62ba9e20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xjbLuCxl/NHRe7qQVCsT3QJF11Bkr0ckaX/O7aH7lQM1lmv86a3z2puSkgZUZoLJq/iG8Ymxkl6i6ZNHijpjms2Hl3lX5kOYpR8JNOrPgXaGMtAwywpcRxw/flOTfLPI0B2tWE1q4sSljU2dTE3b9QSqljh6HuiZO+fvCRQ1AJNgyiupNhnFO/iIVmAgbR7vKiXDRk2frzvqMVKnX/20L2wwKhgiM5hP1Yhhhdl+3cckT9z95xkMjsLj9pgK2uX+bhC67GN1nkRW4cjFWa6q9Ym3bydtxX88897NlRkgs3fu4QipAYVAY2MVsIB3hoZbakHIB2/WJYYr99tNjoYvs04xFJNy4k81MRl1SK9lOVcfOxxJAcVHdOxLozTM7rd6uRv+876dMteVbjIfR0R+Hf2bGOC8H3c0+IK79o40SKR3oC0NJEblgLU40MHS/cXtEKbcT8qym857o1Z9bjvNC/LZ/Bx/m4msdCVzdfkfqBWQ/zNsu1AaMEQl48iSxvUb9cMqvfIGy8PFe+lYSjio+hGYBRBBl2DfFOsEDSqM06wSqtqCqne+IPtMyh8ZwaR1
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(376002)(396003)(346002)(39860400002)(451199021)(8936002)(2906002)(8676002)(5660300002)(41300700001)(38100700002)(26005)(6506007)(42882007)(316002)(186003)(6512007)(6916009)(4326008)(66476007)(66946007)(66556008)(83170400001)(478600001)(6486002)(6666004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: AfIeImlwjn9RNiBTu/2O7Uu8yQcXygoaitvITaAJb1M/f0NVWH674ckL2qPcQBwVPzHkdv9LMCK+X8qEYtMHxalneaWhWYMbtcAOBR18gSwfDmXtqdD85rN5CYrEOVh/h8RmD9GO1wJEgYqr7kO0s4Uy9zAhsp3Pdjci0Hy2rV0CwymIqhpHA09GiUczd665hOG6Og+bc59toSjfLVb3pIu9wyXYUeay9/cBC8CN90dZ2YN4oHBLRpUjxrdg/XVPYLfc7gjB8ylYafOQJr9oG91ZachjdbBqtl2EVC2FbY4f8Ej2go0VNlvgZEEKBr4PZYl7JOnxAwbvnkM2cuG6jDfAv56wYkW1f2JKvZpNqe4i7UhBv8IizN8RrAA1A2X+gQcYgCpAMrcMu0M++gqmBjPpqp5TZrJNRmzRMzAeBjyY1BIkvfdsXVIYX5UX/JdySc5bw/xt3zmkOXvw20/QzF8UH15itIUsGtHCi+gLwz5ep66mD4xQeLrJiWj0B5us4ZsBB6sRvdPxtqwzNGV1pivvXzmDcEiAWYQRhcHd/VUpr7gbJ4+mGY1+QW/4Jwt+14zm+sM75ihtjZatbb0Hy40X2vcU/RE05Wg1JnmIZX/jF2OZW3MsAKqyequGrGxPfyMf0LDOiZaJbVrueQ4xjVnia6ISSwHYz1sHRHTMT7++jNPf1XjW7zEo0DU/f8YPS+wdg8I4QVCRUrjJQCUlClc3Fs2Yay8iYLVCzIuxtSVAzJjz/QcQJMtkOBpFwSz3YVtEJ7u9SB0RfusbVkYPFOyqwPb5SAD8pOhBxCfgeRICaYa64oLoztdOPzD0m1UfrANFXL9igKv4gbQuJefi5ga8DrtxfwfInGyKwqsOpKIdX+AVSmf/Qk6P/HpF9OV4Qm/r1uZgJeyck+c/dI7M2FxIJXsR+KHzDrJhXKaWOtO1h8Qa0b5N4JMMCljq64v7
 AoEC56+Pm8J6FhlJlUgMMYzxv7nHQseV+fdti33IsnqDSYGGQSY9v8mc8jdzQDk0Za5lOZHhuo+tJU0ciQWzg4nQH1D95Z/wli89lmwB/m2oKoM72tkQ0TVkSOe/lcAnJ/iUJ9SfHbeG9iWn26JGg4JdaJOp7282NaRWWkTkzryhFn6JLkqbcQEF2uxkf5iUvf190+4Mlh71qK2WljmNQ7vAdgbx7F9tnEzG/JBCYfme1+3yOoPrKlU8Fqm1wsUolxidJDXRk4nPnuvBflWRou6Y9pjgF4l5jlmSKClObJNSVjm/Mh+MyDPgP99cIdHav4hMZt+AVrdZv5fMVgI7FmuGO4R/Cx9F8Y+8dl2afLwzW1V0zWdTNYdnAQI6XVo5z4DZixWcKRyh2DuEWyWfH6pkGoVOW8c96Q3VGLcFeRuyAAarjywWDCu24mBoSjRYLFAgS+7ij7dbMl+/t6hZG1JqLpl3BXM9TeWOZAow2i3EMDb+R7I7prH1n3Z4hTqCDY/VmPRVkN86OI2jeEYK4qTICuDADwQaq4Iv5XzjFCH/EwvY2Ld0eeRMiNOor0XjxNx3wpwn+lFtnbTRQgPx6t8ohHTJMEjAgjTkTK3wUNp7oBm3f4p4wWK/qfOI3Bms7HPIlT9rr3DfRbGWA7t8rg==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 2df3cbfc-7dcd-471f-e563-08db62ba9e20
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 16:09:46.0499
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JepyzMMKfWO6idCr5i40fnxAVDCzrUWx7v0Ml835YFJRzjUsKpjwVHrQTaUFozJltWxJHPG9/+5jqVJYkR+YAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB3298
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_090951_037483_367BD20D 
X-CRM114-Status: GOOD (  12.47  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpiolib: fix gpio-hog functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 01, 2023 at 04:32:09PM +0200, Sascha Hauer wrote:
> On Thu, Jun 01, 2023 at 04:25:06PM +0200, Marco Felsch wrote:
> > This reverts commit 3641d381e63321016e3bf09504852a6b2a2f879b.
> > 
> > Since the of_xlate support the gpio-hog support is broken because the
> > 'gpio' property used to specify the gpio-hog pin does not contain any
> > phandle. Due to the fact that of_xlate was never implemented the easiest
> > way to fix the gpio-hog functionality is to revert the commit.
> 
> 3641d381e63321016e3bf09504852a6b2a2f879b was introduced for sunxi. As
> Jules is currently working on sunxi support this is likely needed soon,
> so what's the second easiest way?
I am not very familiar with the gpio-hog concept, what I understand is:

"gpio-hog" are a description of gpios config to be initialized early on.
The main difference with classic gpio is the omission of the phandle of
the gpio controller (since gpio-hog are expected to be a child node of
gpio controller). Correct me if I am wrong.

In this case the current version of of_hog_gpio fails since it calls
of_parse_phandle_with_args which expect the gpio to start with the controller
phandle.

My best guess would be to rework of_hog_gpio to not use of_parse_phandle_with_args
and probably not gpio_of_xlate

This sounds easier than a sync of barebox gpio code with linux.

Cheers
-- Jules







