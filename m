Delivery-date: Thu, 29 Jul 2021 20:21:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m9Aeh-0001Rj-PX
	for lore@lore.pengutronix.de; Thu, 29 Jul 2021 20:21:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m9Aeg-0002Fk-SE
	for lore@pengutronix.de; Thu, 29 Jul 2021 20:21:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9Ank2hAUnGzGygBXIUmExMs+Vt5G3BEnVbB79ltyng=; b=iS8uE/lKZMNLea
	QsmNJvIyP3fMxLEM/AzwtTMmFVFFyZOBZ84W6Mqc5KueWQiqiGMQg9w/NFwFhZUjzw3m2Z+RsBlk0
	M1eQhUXNZ0NmCAxdQsKwWggc3LUjvM+iy+IQyR1IBsFQVvaXcikXovx+cJQO8YOTLbU2XVv+WNEOR
	jS04XhdvmUgpTi9nxCJo6EXsBPNhDAbQvYIStLKRB/0NJ+f9J7mI5+C8jVaeOCGinhV8N4xLVvzFk
	F67UoCfqNSUWNLd7rjXXEKvwBx/vGjwGDfP1+saJhw4BH827SbK5sP7g/Nn3cvMqHhc43cbjXXpBR
	FLZl4QV6UifWKlGrdjvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9Acx-005WVf-Qz; Thu, 29 Jul 2021 18:19:28 +0000
Received: from mail-dm6nam12on2132.outbound.protection.outlook.com
 ([40.107.243.132] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9Acs-005WUu-Kj
 for barebox@lists.infradead.org; Thu, 29 Jul 2021 18:19:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IeNbuMdJ69uyJhqQh24SgPbEd/TaNx+BYyMuyfW/e9H9v8LklYtYopGpnNd8azHgb8F1ijEtAnHeDKiJzYBXj+8DDQ0ZzCLir3uDofsOQT5iho+9yx9t1ASir01wgvNMJ7FYv54Ov9IIdq1CBIbyMUJ1/yNORRN9dNPZNJf34gBYef1SJgD1HSxO8XOf/HQIqTrQfnh7NarRMBgppI2ucEeSb8+iADHv9YyEsGo2S0j53P7O/GHDAIp8BnF0v4+qMruejCUyKw2P956gjxCXTJHzhWhbgRkTHHPpIJnkCQe/HiNQHMEofRs/prc96R5WXWybawnAsIcLVmZp2rdoww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mryTYmxi0NXS5M7QzTDNoDhAJOGFMmlsDZ5bkotler8=;
 b=j9GcVTd+5ee3ixUxxm7pZru7K2BiX2t5aLXCFq6YNvhl7KD4I9i357rhgK90HKsJa9vzEBcKmv6MlDzRKkg1juJimp2DS4MXTqFpPzf/dYeaOKlPA4Q/eMgFXBoVwmfEE/Jx+OUAey3lN4cURzxBWpsXAhnOEAjFvczwxAG/p5NHpLvFiIUWPL27rhMrCIWotpZ6irPMYQle2nA1QAA/Aksexq9278DWoiAyEzn1bk7BpLfalPytcEzLtLfM0UFNIxOAbqJGq/MLAnHIPVvxwE7wVV9zRcJX2t6Wl5PqdseVMuA+8yOTPh3U82dJP++wyK0V2j7JcJPU6ny+3KHAcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mryTYmxi0NXS5M7QzTDNoDhAJOGFMmlsDZ5bkotler8=;
 b=MLnvNMneSmXmoMqk7KxVjfW2YvIPbfELA6i47clH6hiBa/GPJnZsOK35OPINk9FvX1OB38W8FHpi6DyNkhWKUAWTNvDfvi0CWgdKXjPPqCxpi7Br4y6xRkES7o4Q6HglOWz+OkEV6Tsrh60KsqLY0JZX3ZaxkxUIQcYymJy8zKRdukB4b2Ti0D12fkNyZzKeDS79RFWOqxNF5bmm/ThqGOLrRereh/T8S0Oz2UrkOXH2Qk6qDAkkEnBWIgwbC2V7BCzqN3/YHVLOOutJ3zdaBIi75n5xAPCdaBfCttFqux7Eygn+9j+0bPj8uav1b5EB8NuN4J1rkcUH8mWhPcYvZw==
Received: from DM6PR16MB3131.namprd16.prod.outlook.com (2603:10b6:5:192::20)
 by DM5PR16MB0041.namprd16.prod.outlook.com (2603:10b6:3:e9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Thu, 29 Jul
 2021 18:19:13 +0000
Received: from DM6PR16MB3131.namprd16.prod.outlook.com
 ([fe80::21e1:361d:3bc9:99b6]) by DM6PR16MB3131.namprd16.prod.outlook.com
 ([fe80::21e1:361d:3bc9:99b6%5]) with mapi id 15.20.4373.021; Thu, 29 Jul 2021
 18:19:13 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
 <barebox@lists.infradead.org>
Thread-Topic: [PATCH 4/4] ls1046ardb: enable IFC NAND.
Thread-Index: AQHXg67k/3ImHYnC6UCS/h2WzjW2nqtZvYMAgACHHsA=
Date: Thu, 29 Jul 2021 18:19:13 +0000
Message-ID: <DM6PR16MB3131F30849BC952DFC0DDF7191EB9@DM6PR16MB3131.namprd16.prod.outlook.com>
References: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
 <1627476428-16318-5-git-send-email-renaud.barbier@abaco.com>
 <83f012a3-a035-2d4c-e5b9-a1719914de76@pengutronix.de>
In-Reply-To: <83f012a3-a035-2d4c-e5b9-a1719914de76@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=abaco.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6531044c-b71d-408e-878d-08d952bd5e5f
x-ms-traffictypediagnostic: DM5PR16MB0041:
x-microsoft-antispam-prvs: <DM5PR16MB0041EBAE385AD6A8F17A0CEE91EB9@DM5PR16MB0041.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:590;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vdu4Ov7adPXMAX5I2knFV8dt+pEmZfwx4aKt1e5srQRN8IQpv8rfPBNcI9pO0Axk3tAhYRRtXswCXdPGk+BQkTJAA1JSAOmM9OK+gXe2Hm7aJtGAFqI8zlW/TGpz4EfrRdDLwm8jolMu7sm/iwe8bk7aQjaY8aix3CkbZ/phs2CZvdnGtD3PbdN9G2gcmCxUTWxZnxtGGpmInhdONVoPhucbqFubHzoBpXMmAw2yCkkVTgj8S3FuK5MQg+xA0avJDTryHgnRSH3ZIl/oBf6+0KzOVi8ggcykeS9iPd+wqeraadC5zDtkJ5RinNtiaV2LL/bujGnY2njh52xeT+QdprZfZC+Q3beirZA4FYqM42FFF5YwPryZ+aD23MDzoRMW5QjbhXymPkYGDNMYz/o8wwvrvbCkE6ovS9+6Y6kzp7m0KAsLucuTlktb4X+tJoNO23IMMVCxQqarp6hMUqFj+LDsT2yNx+F+RzMK6NU+bHbi5F/sjt9MInM2J4gyWklhaqsxZbVJhDsoDAPS6rYBul+v1RqoJVyoakJRcUxR2esOER2Ce+Q9UV8aO8IQGukDmJwQZfvPfKoH+dRhOvxiLQ0tEmxTcDgTB5DKFEQ0uwEnL+5itJJk+YfpNwktrIoLEH7GWdssbwCjn2BoVcKsstLUcU7eKsoJwcCcZW6lygOEfoIFNCE67xG5kuOoX2GSqnheeUJ3Ho3f441Z9VyKfw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR16MB3131.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(39850400004)(396003)(346002)(8676002)(76116006)(55016002)(2906002)(478600001)(6506007)(9686003)(38070700005)(66946007)(38100700002)(7696005)(66476007)(122000001)(8936002)(64756008)(66446008)(66556008)(86362001)(110136005)(316002)(71200400001)(5660300002)(26005)(186003)(52536014)(558084003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Za7H9ObFXJq92j61sDAJdN05H7XdO345NfQ+3ak+GGjMmFCqYhLTf0bA9mwH?=
 =?us-ascii?Q?TqDTA++7urUfjlZKRHwbDaG7gvUyTJZmlYZzDlM21RdUjDDf3MKUh0KQY2DT?=
 =?us-ascii?Q?aEJjXrs3kI5weKjnER6RowQvPPsXjLyAVFYU/cISH7zVDkQwrlfG1TRFQ/qt?=
 =?us-ascii?Q?yXLlAgYi3cSHx7eQfj4g0997NLjE4CNM6wO+XycY3qbZe9UsSWSUM6Tmt8gx?=
 =?us-ascii?Q?83guWe1PFA932dNDf64L/hWu+oSo96zCgox/YMZOBdQNARgaUZcbO7EW4PwN?=
 =?us-ascii?Q?VaMXAUkaOuUsPJh6kuxlAhcpjwjr6bqmYy1B3Jxfzc7UfkQOFd7hD5dS9uHH?=
 =?us-ascii?Q?maPmY9LXrg5VSNnjK4FKRZUB5lOgUThDu8IqpiK8kQMoKzvWEwYH6S4bcwQt?=
 =?us-ascii?Q?CGFcvgPRUQQ4+TWLW9DFAakFR0tT7So63rP2W7K4UxtyVnry1dseiOLGVs+d?=
 =?us-ascii?Q?Gl+HDBhxsJhHJypbr6eb++wxK+BiMwFafN2I9c01rLLfRk3ayfqUY0zO9W6y?=
 =?us-ascii?Q?4Z7NFpfPaUnBVOAHmcilD0gWYKMqnzt+LE+ssva8wjYAkf/aq1xPUhwlKcVa?=
 =?us-ascii?Q?fDqMUjyYUAVyiBAsjoIlWv3SDekvSIddli78am0ke7ZWY6fvfSSzpWJ1y8L5?=
 =?us-ascii?Q?4Llx18SWImZcId5d6fDcIop1CPLndgwrPVuRITIAY6/4iaT37tZ4TQ4QHBgC?=
 =?us-ascii?Q?VhJqmfOIpCGBvIe6N5KQY/UZlvf/o/bsZov5EqMlSAyno9iLuBJupPyF5ahq?=
 =?us-ascii?Q?aCe/W9xPOWX5wNB89x91v4ODAtn/0fmLEekTYnV5ORK2kwS8Vw7GGr2fpYls?=
 =?us-ascii?Q?0LL+PRKG1cdFmV1ZHtLKYoYuSl8ywMt8IgGj9atWwVY/ERuznYOD06g5kexJ?=
 =?us-ascii?Q?pLWg44MI92l+gCLBXDJ5K2A0NeSO3AVqnjWlAt+OzS3nP4+gr1HQAK4GtDjs?=
 =?us-ascii?Q?WcRqvojXmbbT25OTozWlgQrxktJ8Fpb/Ur7gy+Y2jQSqCQiZgRPFydxoAJpx?=
 =?us-ascii?Q?fn5wr2GQXYW0Nf4eFaKd8Slo0PhYtTaPFu7egzEwwFm1nUjPWfnClOm5I6Mr?=
 =?us-ascii?Q?kQJEGLuCtEgRaowU3TZ7Ssi4O/fl5q09BjzQL5FXracoAi7hWjE93aJE7k/E?=
 =?us-ascii?Q?YbeD4HCETKQPMMv6xgu/EldbD4Cu5kD2vINl/FIkRqe3kHMthhxd9BdjnrJc?=
 =?us-ascii?Q?yFuK6ltkTwlXzlOphguvsKybj4wQALDqTMYOKb4GhScNzsv8HhFFncXQBWvY?=
 =?us-ascii?Q?BWmZNe+jyp6jx/1CJAV7pcZe63KEwZb2601DjIuTnZ6EvsG1vAxFCkXzrTAu?=
 =?us-ascii?Q?wB0=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR16MB3131.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6531044c-b71d-408e-878d-08d952bd5e5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2021 18:19:13.3052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cr7wlQCyNLCC684/8clds9D+OZKhakN/5Uk8YZAs9p6+5ClgA8dzQMQaFkoilyCZQeCY1A2A3XXv7srboOSOC64niR0rpbXaRk4rrlcgDFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR16MB0041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_111922_876701_F8295CAD 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH 4/4] ls1046ardb: enable IFC NAND.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


>>
>> +static int rdb_nand_init(void)
>> +{

> You should check against board compatible here.

Yes. Found a way to do it from other board support.

Cheers,
Renaud

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

