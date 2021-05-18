Delivery-date: Tue, 18 May 2021 10:10:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liuoW-0003EG-Ef
	for lore@lore.pengutronix.de; Tue, 18 May 2021 10:10:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liuoV-0004lF-Nv
	for lore@pengutronix.de; Tue, 18 May 2021 10:10:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zOoYocCIDdOUxul93KAQS5+hba4zO1BGi9JEUx8e/Rg=; b=JS4qe0mnzTMs+GUNSfK59XV3T
	RvrWZIU1Il9rndOj80Ble70Kd9pBdKqc3ckef8afJix8gV5cIbJBaknEl+MC1mGYkr9hYU0sx5689
	dTwgDj1EqNidsyEUyQ0U5EkskjhdoR/tFJ6erJNx8MqCdRuSGQhiBiDueaS6CZ43Sex9vFc6zOXMG
	K+YSBh8FujNKAB7Au0SR9hsUwhqLv1z8xOwk3ZdBxJc5KHbRO0X0s6vsJN8RK9VM98328Y1Kh/HAd
	7dLMxTBEZHxc9VH/F5As6Bfu1cXsR2B5WbEs3OvWUs2X2+XSpAnstskkYWrn3j9XioEr1nzIJAzU6
	Q7irVpjTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liune-00HVqz-FH; Tue, 18 May 2021 08:09:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liunZ-00HVqK-0Z
 for barebox@desiato.infradead.org; Tue, 18 May 2021 08:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
 :Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=TLSiWo4XJzaQfDSImhO5VhO5kFVOe5dSLo6vlUO755A=; b=wgfo/YH7KTKfw3IM6jQpgb14TZ
 OJ+UpIzn7FgEVLdsc+fHYrnswRoEEzjh9Q0qJ17oT+7CpfAcvidQI0gwDQoVaLpaavwYn8Mk/lK4F
 M2TvJ4JE95ybff26hmtjBEDWaSvDELX1Ed37AAn0Q/5HbkMg/JPsPYcKU1cpQDA6aRHsJshnc9zcD
 XMgXx7C0FRmCZHWodpY0Cmk1JwSxL21z1XDBjvdDIBEb7J/RYqjg05d5cbaQABEciLjeMXahauzPr
 wxJBSNA321scqe08eR087wNpiEShthZm2r555YH4vBu//X1s4lY96CYByqQ5QE/9bAcKxA170Qktj
 ekyCNvKA==;
Received: from mail-oln040092074059.outbound.protection.outlook.com
 ([40.92.74.59] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liunW-00ERhB-KG
 for barebox@lists.infradead.org; Tue, 18 May 2021 08:09:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MVjFXoMXSI41f8nLqyxQNL3jPkQsmAbG8+1S2b9myIJLsSJaPtnjLQwcyburqTjKNjY/8/9gNJB/453l/1N7w7qV8+o4anMxdG48E3wGKCPm1PdOBg4LDNLHvJBiUsOknHOVi6ww/6e+5y8r/m9Ump2azJ7usD+3WB0Em5oPX0M/TWf1pwsUQxJ5dfTjHvqphMuHbM7T6PfmfU5I7OexVa0LVgUhr8tc2RXf8g0f/8DbaQ48hfZU7jqrFGw+PSCNLtd85BSMY9QtUprqSacml8LoETEPVisK3qXDIHRnkPfn/A2BLCEfsu7aPuzYDEwDp4qPIdyqcsDMxrxlUGeTUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TLSiWo4XJzaQfDSImhO5VhO5kFVOe5dSLo6vlUO755A=;
 b=bXhSTaE7XhBQGVHV82PR3cO6WErPWs+KesR10bX1Ks8u5OVsHKciYJNWH2Qw182aYsk1Xal7WOm7GaXEOB+R2T4hJ265OUjcJiuwXKPLK4USBRA46Oaq5yTFtGJPU1XshOLNj9rpCbb7anuZyAcILqLtC/HrX72qZ3z4QqEtN92bbpnmejahSeSj+uvqLdlm86Y3wWox1nbeUYYsRtvUVz+Nx4Oym1VCSk5L/nbJVL6twaXYO4BgwPdcVhOHn1ZZAeUSST2R+rP9mR4mne+FCg+SAxvCJbphxPvWtC1t5Y67x5629MKQ2cjKE8thoiBA8Doey/tS2KZOYsHgbZ//sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TLSiWo4XJzaQfDSImhO5VhO5kFVOe5dSLo6vlUO755A=;
 b=WZDQmpiv+dxRYGJidSE6sMWSSF3H85oawXSn+pXSVd9kgKQ2th8RijfQ6wbXosnTQgvnuYmgmD1Ib8QktnbAtFv9mUp4RgNUe64oaKhW2VdGq6mQNbvZryK23MfgYc3Rvy37CQYdSpIjWCcGvBId7SZUuVmbGk41zjxWNZdK5IIVe6zOIiaHX+0kOBC3q92RvT1hFg968iyZ4lYfpso/BsKBj179f5TZrM5fbehW4gBJhV8rsOVoHc0kLq1z0OMMmNZvy1g1ZmIN5Xagcbc/n7ZtRg2yf1s5HTS13TIQQ2WlgcY7JYeS5FmFjrHKvSBwxYrjE5n3R51UNOjxpM/wyA==
Received: from VI1EUR04FT010.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0e::4e) by
 VI1EUR04HT192.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0e::345)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Tue, 18 May
 2021 08:09:47 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2a01:111:e400:7e0e::42)
 by VI1EUR04FT010.mail.protection.outlook.com
 (2a01:111:e400:7e0e::384) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend
 Transport; Tue, 18 May 2021 08:09:47 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2%3]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 08:09:47 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: Michael Tretter <m.tretter@pengutronix.de>
Thread-Topic: [PATCH 1/1] Zynq: add support to chainload another barebox
Thread-Index: AQHXQAOLPEiHagXjDEKx2lGx8tbEcarUjbIAgAAVoNKAEsh/AIABjfwp
Date: Tue, 18 May 2021 08:09:47 +0000
Message-ID: <AM9P192MB0870DC1573A4088BB839A208AB2C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
References: <AM9P192MB0870CBDAD8B3CC328A1C2D6CAB5B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <369badc3290605924915f46e445041dd8e3a0ff1.camel@pengutronix.de>
 <AM9P192MB087024D17024B43EFE9CACAEAB599@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>,
 <20210517082332.GA27865@pengutronix.de>
In-Reply-To: <20210517082332.GA27865@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:079D8899BF8F7BD9D33892D38FDE49F5A4C8760AC103BBDFE547F8B3A0387696;
 UpperCasedChecksum:817B6AC02A7CD7EA195502F66FDF06A61895044929147A7DF6C961709C5A9494;
 SizeAsReceived:7174; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [1qNZXxpg5z6btOK0ZyT/2n1xuxmqRO5x]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: fc8b0fd3-3a1f-4e83-981c-08d919d44d69
x-ms-traffictypediagnostic: VI1EUR04HT192:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qZ7ceybnl8LJk65iCMMVPmHX/eoHVl0kSUlakfVhfwwi9hxLUm88JP4Ba0TVkC7q6NDMIC18O3y1Kz9wFWh0yEA+x3kgLvh+aC/k+al2GmH7J/x8edK1ahjqgcNylDdS0MsjDGJdhekuAoBI6/Ytm3ebB60X3Gwsp7Rwigl/g7xKw1GBSb7pPgtGVRM+n5tV4Ym4Vw7gLZVA5KGJbMiYb+5AdES6iRdK1/1angkon+6BlRBD4PGwHqoyyx7AIQzxNMsQK0YK0xbqBAe4ml2vyOW9LZCl9TqXeJctXLGtyy1WrKh7uC/8QHv0i+amaSe62gquu3jEBma8T3vqG6iLuqWgUwPSuMZvvafF1kzioI7QZoCIsNWEzeqmDfQF7Ras
x-ms-exchange-antispam-messagedata: 0V1eMy5wsN0SwDMtv1083T7fWuhetA2WnuwpWPSRPjh6UizFFtErHnkXWRD1XvbP+B9at8dzkMEMUn9ECt0JOZ+BtyXSR5TIYhe6y/vbysFedQEnWfjfi1QVS4MFOqkMOn11V0f74DIlBe8u0uNnww==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR04FT010.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: fc8b0fd3-3a1f-4e83-981c-08d919d44d69
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2021 08:09:47.0948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR04HT192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_010950_687132_5A2BB78A 
X-CRM114-Status: GOOD (  10.90  )
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
Cc: barebox <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: AW: [PATCH 1/1] Zynq: add support to chainload another barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hey Michael, 

> This looks familiar. I have a similar patch that sets SDHCI_INT_DATA_AVAIL
> only if the command is a READ, but I didn't yet have time to verify, that this
> is the correct fix.

Can you please send it to me?

Thanks,
Michael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

