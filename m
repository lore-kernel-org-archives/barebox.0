Delivery-date: Tue, 18 May 2021 10:06:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liukc-0003CJ-7B
	for lore@lore.pengutronix.de; Tue, 18 May 2021 10:06:50 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liukb-0004JT-Ep
	for lore@pengutronix.de; Tue, 18 May 2021 10:06:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e8eMpMIUuEGMCJ8V39Yr93Ipz9kvsxOE198AhZvm2Ho=; b=f57jixBgM7TjbqZV++qBr9XFy
	9esdHXJ+1tRtKdcls7wOftN+Y+e2SuC2FKFrRS87PKSd6mxuzsKvZO7dl6i1Dl3mD3AqrpobsV3sG
	tz7KbT5X9lKu830G3IsrdOaLLy2/Z+obQ+A2v7/J2hUZa0O/KwicPIy4Y6K/Dl+JoZNLt1xVn78wG
	CD5F3ik1UkxX3pfegYLN26gdzRSzwRs4F8UjytlrRVOShGped1G9meNxsquqAf4RYPHejSyX2MHdR
	yezcFZOdxH34rWLEy40mp9Uvkp2HEhmTbieyD6YZL3e8HzgkhIdoe1/FdsrlELRMOLs05U166w5F0
	CnWLAKYzA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liujT-00HVMx-PL; Tue, 18 May 2021 08:05:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liujP-00HVMm-3P
 for barebox@desiato.infradead.org; Tue, 18 May 2021 08:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
 :Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=99sLtuZFeZW1V9Jv9tkwNci6w9wosUR9H0jVrmu3gzM=; b=J4agnJJBtqvAtKkFBiIispuCPt
 HiXQCtBIxqeJ80XK6AfCW0wXVbMxlw7PmUEI7OIyiyWeXeLnopQ4yaKp6sdr/N1meL5+bnNXImM2W
 Xts8s+FLJhxb9Lky6PkVjBAv1iZWNg93FpI1XSXrAPKKBFyrSvDBpDHPE2PjAputfO6hUnDJo8J/z
 z4/2w8vErjNjJXj3CwPbFC3bnN1cOvJqNfY7QuU9cE5/qWad0C1c9kIb6lMIU8ZIWWrgwzjOY2WXX
 J79q8aBbikBge4RFz+/iPgi53GLB2uzQjmwtMX/JUFxPpyw6+Rnh2zmikY4AeKiJ1OXd8mcgCDeT5
 fhqLEK/g==;
Received: from mail-oln040092074101.outbound.protection.outlook.com
 ([40.92.74.101] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liujM-00ERZM-C0
 for barebox@lists.infradead.org; Tue, 18 May 2021 08:05:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mXr5eO14vjWf30hEuwf8KUJbyFBcb/SA54YhflK7mUv8W0zNPZvT3IlKRnbIqamw3Nq2IJEmz7jrYYl5JJ/2+6uTdOrDlfHPVGknAiEWKb9dVaM0iSRjLawhpoo+MXqeS4TbdUBuN5pFoHAWEhtq3S4jGsRYQkCrK8hzl5auypA3jKOX5B5teKsq0gdeg07ulJ8PaVCWiwHgwBXIDwjtkGUQcUslIwl22VdT33RZLKFJ7W9dV3Loo+h5gXWtGtkEbxnxnKn0Oxd0/+4TethSW4i+rIYH9Av1laE9l3dIYh6ngGcICQv2+9QziJhOdTtGD/khJxpJpozsqSGKRCdSLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99sLtuZFeZW1V9Jv9tkwNci6w9wosUR9H0jVrmu3gzM=;
 b=a0EzoS9DLl8ePKeOsu/U+lBd9wpymHGRiC+79zRChRmFrLk97QYJXRNpMA/YgpMsUXIit2Ri6mqzBBjSa/5HAJ9NgFRcmmzjDNvbtYp1TRJGS+3cAMdOMX1nDPKZfuPkWnvplVrezStNJfDAAamNNNIxvvizU9AOCmmTKYMMeysud2dFWDGrgYtVF7/Dw4YlwsyIQQ8OfIPMDJyYfwAp3eX/Q/JxakP+ou1udxSTNbyaWqeHXr1zJq3EU08K1OrfX5r+7WvPGe8W3sUzSHNJJFyf5HKBxYOMFY0LCMLjM99c6/siVgh8x8mwiu+wJYHfSeoE5IffXOi49WnoSkiNiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99sLtuZFeZW1V9Jv9tkwNci6w9wosUR9H0jVrmu3gzM=;
 b=std/9UKX+N+sg7Yn7F3Y1QgJ45rDmXctQ/eQnYi78563AGrXG5farhF79OCKM7oIv68T37hKVgK1rJKH8YtuZN6xtaeZze8w2iwbbVQs0jf0LhpfyuMWD1MWpTGoAQD+cv8h22X7TWV00gKuYcfkbtpLfFIHLK1cvbIweH/D3hMCKSFjRXOOw6rfxQ+yqxhSYIgFHWR2Wi7K2IoTGvxIy1LnXQV05FIXUqBYSrz1NTC+x1U+J9fegnerG1OGeJwlB5DgONOTqdo6oPv5cGtPHbFQ4GD9+2I69gicldtOyRHjK1g8lAp+jQj+id9i5GwqKgZZ43llIsbXoVLDouKQMg==
Received: from VI1EUR04FT010.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0e::49) by
 VI1EUR04HT057.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0e::444)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Tue, 18 May
 2021 08:05:29 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2a01:111:e400:7e0e::42)
 by VI1EUR04FT010.mail.protection.outlook.com
 (2a01:111:e400:7e0e::384) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend
 Transport; Tue, 18 May 2021 08:05:29 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2%3]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 08:05:29 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: Lucas Stach <l.stach@pengutronix.de>, barebox <barebox@lists.infradead.org>
Thread-Topic: [PATCH 1/1] zedboard: add support for usb
Thread-Index: AQHXQCWFMbmdCJZUg0OYZUTONSDMB6rUjnGAgBRk7CI=
Date: Tue, 18 May 2021 08:05:29 +0000
Message-ID: <AM9P192MB0870DF9401D3DE0A1610CCFAAB2C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
References: <AM9P192MB08705B62FF903088CDE45846AB5B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>,
 <5232b30053c40731238b1c67028810b716cc6e49.camel@pengutronix.de>
In-Reply-To: <5232b30053c40731238b1c67028810b716cc6e49.camel@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:5C602452533EAAB2588128AA48305F6A93C19E427D8172B018ADC4EFFA986F31;
 UpperCasedChecksum:3D1C6701FFAA5585DE88C4C053EA7D678E48758D6555DACBB9A114CD2181BE07;
 SizeAsReceived:6973; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [qc1k+9UkOtVutqmCK+Bjp5MHdizeObpi]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 2f644c70-7031-4446-5995-08d919d3b3a6
x-ms-traffictypediagnostic: VI1EUR04HT057:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nisY4nZLbNmmBYvdyzChtdUog7jHgyUtJT70jbhBWI8HjTy+7o0kz1B9W739DzCkonF7ML1dS2Ut19yEF2pfcoN8x6PT4MpJOC1GoaR1p2q6iQi9PceqAOAXtbH9wOvapRujd7WDvouQM/zPddwvxRkXvOiRvn+njMVEmLOzDFsBGhOlGcovxuRfiaHSW9hmJ0URlqGnkhLAMjM5PCXEuYvtZXAMIre4RKWSW8X+WqxBxcuscAemhpvYSZkg7PkvkmajTQ+cdtBejZep8OEOLDo4Ixu2WJ0sWYDIWyL+14GF/7hpmbXw9C+nkJOM9lTT21dTcZVDdDnsGspftoNTXqzqVOrUUMCNWFA+KJJw+H7d99YS+R8l6ByAyj04ZKxN
x-ms-exchange-antispam-messagedata: X2/KCHTYZgcYA1RxRXOFwG1rQVljZQNCwERP9pMqjc2BEpqX9S9sz2AEzsy/w8T7bAbEi4MJvZ1I/wvGZPKFnF1nPGn9n5ER4e2G0o2QSnLBGo4himooluZRNLexbC/ieydxj/jjD8IwgY/8NM6CMw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR04FT010.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f644c70-7031-4446-5995-08d919d3b3a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2021 08:05:29.1139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR04HT057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_010532_541386_087A9D9C 
X-CRM114-Status: GOOD (  12.90  )
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
Subject: AW: [PATCH 1/1] zedboard: add support for usb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hey Lucas, 

[...]
> This change does 3 distinct things and should be split in 3 patches to
> do one thing at a time:
> - add Zynq EHCI support
> - add ULPI PHY ID
> - add Zedboard USB pinmux

no problem, I can split this is separate patches.

[...]
> Maybe update the defconfig too, if it doesn't blow up the image size
> too much?

This is the harder part. It actually needs support of CONFIG_USB_ULPI and CONFIG_USB_EHCI 

+config USB_EHCI_ZYNQ
+	bool "Support for Xilinx Zynq on-chip EHCI USB controller"
+	depends on ARCH_ZYNQ
+	select USB_EHCI
+	select USB_ULPI
+	help
+	  Enable support for Zynq on-chip EHCI USB controller
+

and that will blow up the image size, because ethernet is selected in zynq_defconfig right now.  
If you want to do somethink usefull, like CONFIG_USB_STORAGE, with it its even worse.

That's why I came up with the two stage boot process from the other patch. 

[...]
> pdata isn't used anywhere AFAICS, maybe drop it and simplify the code?

right, I'll remove that. 

best regards 
Michael 




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

