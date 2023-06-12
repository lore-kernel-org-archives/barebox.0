Delivery-date: Mon, 12 Jun 2023 17:00:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8j2F-003xS2-Sr
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 17:00:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8j2D-0001E4-4W
	for lore@pengutronix.de; Mon, 12 Jun 2023 17:00:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2aFjY2RbnitN6LUQE1gDyyUqqPrJc2xjeWreHH168UA=; b=0HOLgEy4g6mAmpLEGBlte7sIBg
	9tKpWSKFwVozdkYTds2IaHB+MF6YNye7XyAoH4aSW1LNVPCacYvKi6Tpns72VOyqwH+hw6m2e92Gg
	BuGji7Lz2RR4njxXiatdbTQet4Z1x/034F49/uZvhDGT7xzuV5McWcgkcdroN0GJfZLgGjAvS5WVF
	sSFmIXWcpbfubQs52Tcis3ooopKutYZF568pB+DRsPAIzDH5rxUBOe3JO9dN4upnv0M8E6L/J8Vym
	5x4uif+o+5CdUdSa7eFm71JnyRyCaX3QvEDtLdrljE0M8C+rTfIBJNiiLKCrr1vSf88zhI4py6YzF
	ZK6+YOcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8j0o-004Nbd-0I;
	Mon, 12 Jun 2023 14:59:18 +0000
Received: from mail-vi1eur05on20610.outbound.protection.outlook.com ([2a01:111:f400:7d00::610] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8j0k-004Nah-0U
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 14:59:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSPB8DwN9LpOL93dGX5PB2/S5hT3nsylAEqQJhJZ6Zc5Ju0k8tZbcz/N9TmG45xFvvr66boiIrMWYQoOByoJ2vuzrflhoRo3y/wSznkJDPTmUYv8LKtpd8UW1/tBnF5EldTyX3/wkhXSz1KovV3XodscUoT9OagNuf7SsiEbiCk21fzVjiitriQPeDqCmUB8mYFeKXFnCWHoY5pfLYy01fb6l8H3O1rALXrDBOc6A5UzcozDrvzrc5ly07iagCYHf6/Peb67z8OdkD/n4opStMsxCtsYgLV0idUENH2uwz5rZlZ0UP0bj/1z+UEGhjmPZxKZi8iqB5T6gDNhfY7bfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2aFjY2RbnitN6LUQE1gDyyUqqPrJc2xjeWreHH168UA=;
 b=TJoNdBWUftJ4tfPfWXcKHefl/JO3XXcwjeS434E4hGRSHG8ado6IYfJf1u48RmQJyFWzsZDPXIXrphTgFr15tMSpbCyRErp7rbzvGAuLzhtWOwHdAgBDpfKjHuvCNhUgWxMqMIeSL8SIopmhDZ/Il24JVyOf+5nm6INWbTuxDR4RRUwLG0PGCMNz+xkRgqQaQ5YI1wR4cusitxb25G7P/CGSRvS9IU7OwOpzOW2KmWyhnzELYIe7THjFSd5xWsBWirSWdEUXwR50wAnvq85py2XJEMXotXvpSvLVxHZzitt36Vrw+kseb96sppfSrsnqebYbD8+QeCK62TB65TXLIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2aFjY2RbnitN6LUQE1gDyyUqqPrJc2xjeWreHH168UA=;
 b=ey2OtfQffVJnhx56R3rBGHCTklsGYKdu+BvcCQ6R0HwmN/EOmAE63AYI7f7GpVYI9vxmUiojsJcT4cjEKRpis5iKxjwd2UtY9IT5tt8oHfkv0u69SqTrd8RpbP/xiWk+iG1z5i/FkjlABi7dLoLQV06/WnDo217bHM0J38H4ziE=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AS4P195MB1693.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:511::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Mon, 12 Jun
 2023 14:59:04 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::6ef5:db8:751e:5fe9]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::6ef5:db8:751e:5fe9%6]) with mapi id 15.20.6455.034; Mon, 12 Jun 2023
 14:59:04 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v2] Porting barebox to a new SoC
Thread-Index: AdmRYNrtRrBKX5DDRQGPzQVQ7b/lvQAGThgAAAAP8YAACFyNQAAg73hQABAveYAAJavNEAAj7YeAAALjkCAAAlTGgAAAg88AABLfUgAAHqoWEAAB8RmAAACDPvAABgB/gADOw7IgADDadYABIp5wkAAGuZwAAABXfaA=
Date: Mon, 12 Jun 2023 14:59:03 +0000
Message-ID: <PR3P195MB0555C35406A3BC621BA1038EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <PR3P195MB055543898F124A46C209C170C34B9@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <23017859-57ee-8df3-cd8d-c7e4f2094cfe@pengutronix.de>
 <AM0P195MB0548E634FB807F1501D1D716C3489@AM0P195MB0548.EURP195.PROD.OUTLOOK.COM>
 <3448bd9c-06e3-89a9-e8de-c284d0268ca9@pengutronix.de>
 <AM0P195MB0548337CA7A533D0456BB14CC3489@AM0P195MB0548.EURP195.PROD.OUTLOOK.COM>
 <3340583d-12cd-1a52-4c9c-d237c58bfca7@pengutronix.de>
 <PR3P195MB0555265E59E77AB3ABE53D03C3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <ffde7964-42a4-c762-d46d-93cd9d923646@pengutronix.de>
 <PR3P195MB0555940C37560E6D01731A1BC3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <98480243-c1b7-a2bb-9267-2126797f52bd@pengutronix.de>
 <PR3P195MB05554662E272B9E1A8E5655AC352A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <381bd0cc-26b3-ad2e-1857-436932549934@pengutronix.de>
 <PR3P195MB055562ACCF6EBF0A490BBB4EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <d4fddd30-74bc-dab3-a6e0-a83920d2763f@pengutronix.de>
In-Reply-To: <d4fddd30-74bc-dab3-a6e0-a83920d2763f@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AS4P195MB1693:EE_
x-ms-office365-filtering-correlation-id: c2cfbff2-064b-4722-ae31-08db6b55904b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: piyLBXOa41u3AiBxtCWDoImmS9WdzQUwFDJOOfJFpSqKwAT16+YBslEaaxOPFKNN8WR/FZLs93C0xxuSp2IOupBqglQz66i8V9nnUALswJSfGJw+2pKim0wiLh2XEJJ7UzrygPmcdkPaUv7MxeFEYRE9lLYZo2xdalQ5p3fa/MPv4XH2hvOmWBEbS5jUx95ix1P/0TAoN69GmUdmyDltj9NepJvfnOLR4aUdM4KDdZCt+LGMVmjCRC3aq3OLmOC6BYQdCfzYMa2xNJRI+NR4lpE1XmVy6BqRRaKLWyI2swKc+ohdHiQgW/irDQJb7BxmBHBwoPyQfJn/93gRBFsIAyj5FcJBE43QhEwFQqFLMqW02ArlSHTei0sojh5f4jnT1n32LjDz9NQI33nWc49DGNDJL4Y/hsS8odcw7ZaQLcBvEpE3ioymKaY2YFYLicCLqG8UJRikuSkWIM3qjAUQ7CZRN0xeCBMw22q3p6BGoSFgfcODg1GtgTCFD8lOH3jpYMefhE2exc7p1ZWMgjdAcaREzqNBiXsE4ZjZFHwNhONNzZPzElLdwCNWNV/HhgU1N/Mp0jzut2+BsY51bt2EnZSY3Cvb/6HQS1t32nb7ycg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(136003)(396003)(366004)(376002)(39850400004)(346002)(451199021)(7696005)(966005)(83380400001)(38100700002)(38070700005)(86362001)(55016003)(122000001)(33656002)(53546011)(9686003)(6506007)(26005)(186003)(66446008)(2906002)(5660300002)(110136005)(52536014)(8936002)(8676002)(316002)(41300700001)(66946007)(66556008)(76116006)(66476007)(71200400001)(478600001)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHhaN2xEV09PQklzaGFJNU1YdFcxN1RvR2p1c040bEN5RVRDUEtRbW5BMVVW?=
 =?utf-8?B?VlZtN1FXc0xwOC9mdUsvNjlpVzlyS3Y0MXM4cmtGanFWaUMyOU0wcmUxd01P?=
 =?utf-8?B?ZXdYeHRScDdDRSsvdkRnUEVxLzQ5R3V3SCtxQkUvRE5GVlY3VmxDYjZJYzVF?=
 =?utf-8?B?RVVLRmduV3BxK2FFMGFSK0VJcGkwNWovcEp2WUtZc0dENVNTRmQ5bktGb3RN?=
 =?utf-8?B?cGN3cnZmTGh0OW00M2dTVEJ3K1BEY2tiS05BVmJnVnJQY0tzKzRwRnpHVVVk?=
 =?utf-8?B?SmZHbDArNndlN1IrRlRLbTNERVI4cnNGZXVGWVBad2E0ZERSUk9WUmdXaEpY?=
 =?utf-8?B?MGQvTlpDV2FZOGhKVWs5dmJYdDhpYXNKRXhvWUtVUWVyTkhtK05YUHpZTGpL?=
 =?utf-8?B?SWpmNlJvRDd5T0twSDhVc2x3V3pvWXRVZjNlZk1KOTUrbENFUThwZ3Y1NDYv?=
 =?utf-8?B?Mm1ERXdFODRrWkRSYmxQU2NIcWlJUm90dmlQN2E1VnlYekNLNTVkM1o1YXhu?=
 =?utf-8?B?cCs3MUI4VElPQ25RcUhtL0MzamxubUtaVmpkVmViV0w1cVZYVzRnQ1I0NThQ?=
 =?utf-8?B?c3RxL1Q4U3dRZGdyUUVaUEdJRFM1dnRvaXhDT1FEK21La1o5ajVxR3o2ang4?=
 =?utf-8?B?SE4rdWJ2YWQwUjZRdzV3Y21PMFAwNkEzVGRpZndmZWRZV0FSYWkwc2hvODJw?=
 =?utf-8?B?LzcwbGpScTBMc1ljVVk4NDRBelZ1NUExYXk1MU5ueER0VTVZZkZTdk83Rmh2?=
 =?utf-8?B?cDhKN0ozb0tRN2RKR0NyU1pabUdkazBKNUxyNTNYaDUwQ0FjeUY1VVJCcEZm?=
 =?utf-8?B?OTFOVE9DWkpzVDJScTlWdTU4M2ZjVXYycUppYWpzSndvUUw0R0Q5UkVlUlo4?=
 =?utf-8?B?YWo5bE1oNFdNZEVBd25pdHF1V21rMVNVVWdLRE1GV2w0c2p3RFNmWUFhOEV1?=
 =?utf-8?B?MWRXeTJjeWtSU1pBOGhUU2c4KzRzVnNMRVM4Y2hDQk1uanV5Y2VqQVRYYlRY?=
 =?utf-8?B?eVdxVGJ1Y1lTWUx4aWxuVURqVUJFOWRWMEMrSTYzbEZpRlU2ZHFyNzNURTBW?=
 =?utf-8?B?citaMlFFZ0h2cldZQlo5Snlkdk96SjlWSWJmQUZVbFIvWTY4WlJUYUZjVW04?=
 =?utf-8?B?bng5a0hjT2N3QjB1eTBvOGNQL21oQmx4ajNqcGMxRWEvK2NwcWFpRFdDc3V0?=
 =?utf-8?B?Vi9ieTNuQ3V0Zkw0THF1ZHlsaWgrN0p6WHY5dk5PUHVTNkpqakM1S29PTHZz?=
 =?utf-8?B?dVQySUxoSU5DQ1I2SkxRQjNKM0hmOHJJK0xLSWkvSzN6S29DZ2V3ZmlXdU96?=
 =?utf-8?B?eHV3L1RBTmpDQjlVQ3ozVlY0ZmcxS3B0alZqcFNoV0ZTUXAvbUh2eDcvZHNM?=
 =?utf-8?B?dllLQ0o3OWsrRkdoTE4wTUlyTjdiLzA4cUsweUJkMlI4VnEyYjR2S05zaHI3?=
 =?utf-8?B?MjNneGxOV1pQUGZabEVoUENVZ1dZbW1YaTkyRkpEM05TbHV4Q3JsaHJTeUFu?=
 =?utf-8?B?aytyQm5kYTBYNkpiaEZqbk9lcUhhalpKYm5BTHpxekU2dUJtR1NrU2NWV1Rq?=
 =?utf-8?B?N0Q2V05jWWJwTElSVWNKZ3l2Uk9pS1NWWGd1K284MjJNcHNzQ25kdHZvVWQ4?=
 =?utf-8?B?NDhEUFdHNFVJV00yL2hwemNyWWFPM3JHMnVoVVVzMHNLUnF0YnB4M3FSRTVR?=
 =?utf-8?B?dkhXdHRxTW0zUlAzaC9HMVIxOEtiazFlaWp5eExnZEhQZHI5bVFqK25Qenpu?=
 =?utf-8?B?ZXJKdFFtc1kxZE10SnRQaSsxTDZiWEJqQTkxL0FKM1ZNb2tvd2tGVUZ5SEtp?=
 =?utf-8?B?S0Vod0l4ZytPZWFPZDdDSmt3NW5zNEYzdFBpTjlRMU9uaUNCZEQ0dWFJV1E5?=
 =?utf-8?B?RjdTT05IdEk2bmVueXVPRXFRblFZT0pKN1RzU1VzQWU3WnhLWFZqajhVNFFS?=
 =?utf-8?B?MFJPREVVeSsrSTRqbnZ1TkptUnBjSGs2aVlLQWFXdlNJMDFhZlh3aFU1UWZo?=
 =?utf-8?B?MU1HOTMxcXJiNkcrUDBXWTEyN3NTaW02cXBOTStualNYdloxVlBUcFFGSHc2?=
 =?utf-8?B?UzFVQmk3YTgzcllCQmdnR3pURjRscVdqd0wwUXRzSmVkTmwyNitobndEcVZR?=
 =?utf-8?Q?WQqI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c2cfbff2-064b-4722-ae31-08db6b55904b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2023 14:59:04.0007
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MKlNeDi7PZZ8FSapG+KQo1Sjeqhcuuw0Dk9KFj90oFiPNInHIljuD8pH5vyC8OwyXF3mWKynEn6bAfNzZ902ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P195MB1693
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_075914_390438_3C50C79D 
X-CRM114-Status: GOOD (  34.45  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gQWhtYWQsDQoNCkp1c3QgZm9yIHNpbXBsZSBzaW11bGF0aW9ucyB3ZSBtYWtlIHRoZSBS
T00gc2l6ZSAxOTJNQiBzbyBpdCBjYW4gaW5jbHVkZSBhbGwgbmVlZGVkIGFydGlmYWN0cy4NCldo
ZW4gd2UgZ2V0IHRoaXMgc2ltcGxlIHN5c3RlbSB0byB3b3JrIHdlIHdpbGwgbW92ZSB0aGUgcmVs
ZXZhbnQgcGFydHMgIHRvIEJMMi4NCkRSQU0gaXMgYWxzbyBzaW11bGF0ZWQgbm93IGFzIFNSQU0g
c28gd2UgYXJlIG5vdCB3b3JyaWVkIGFib3V0IGluaXRpYWxpemF0aW9ucy4NCg0KU28gaWYgSSB1
bmRlcnN0YW5kIGNvcnJlY3RseSwgd2UgY2FuIGRlY2lkZSB0aGF0IGFkZHJlc3MgMHgxMDAwMDAw
MCB3aWxsIGJlIHJlc2VydmVkIGZvciAiZmxhc2giIGFuZCBhZGQgdGhlIGZvbGxvd2luZyBub2Rl
Og0KZmxhc2hAMCB7DQogICAgY29tcGF0aWJsZSA9ICJtdGQtcm9tIjsNCiAgICBwcm9iZS10eXBl
ID0gIm1hcF9yb20iOw0KICAgIHJlZyA9IDwweDEwMDAwMDAwIDB4MTAwMDAwMDA+Ow0KICAgIGJh
bmstd2lkdGggPSA8ND47DQogICAgZGV2aWNlLXdpZHRoID0gPDE+Ow0KDQogICAgI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47DQogICAgI3NpemUtY2VsbHMgPSA8MT47DQogICAga2VybmVsQDAgew0KICAg
ICAgICBsYWJlbCA9ICJrZXJuZWwiOw0KICAgICAgICByZWcgPSA8MHgwIDB4MDEwMDAwMDA+Ow0K
ICAgIH07DQogICAgcm9vdGZzQDEwMDAwMDAgew0KICAgICAgICBsYWJlbCA9ICJyb290ZnMiOw0K
ICAgICAgICByZWcgPSA8MHgwMTAwMDAwMCAweDAwODAwMDAwPjsNCiAgICB9Ow0KfTsNCg0KV2hl
biBJIHVzZSB0aGlzIG5vZGUgb24gb3VyIERUIEkgc2VlIHRoZSBmb2xsb3dpbmcgZGV2aW5mbzoN
CmJhcmVib3g6LyBkZXZpbmZvDQpgLS0gZ2xvYmFsDQpgLS0gbnYNCmAtLSBwbGF0Zm9ybQ0KICAg
YC0tIG1hY2hpbmUNCiAgIGAtLSBwc2NpLm9mDQogICBgLS0gMTAwMDAwMDAxMDAwMDAwMC5mbGFz
aEAwLm9mDQogICBgLS0gc29jLm9mDQogICAgICBgLS0gYzAwMDAwMDAwMC5zcmFtQGMwMDAwMDAw
MDAub2YNCiAgICAgIGAtLSBzb2M6cG11Lm9mDQogICAgICBgLS0gc29jOnRpbWVyLm9mDQogICAg
ICBgLS0gZTAwMDAwMDAwMC5pbnRlcnJ1cHQtY29udHJvbGxlckBFMDAwMDAwMDAwLm9mDQogICBg
LS0gbWVtMA0KICAgICAgYC0tIDB4MDAwMDAwMDAtMHgwZmZmZmZmZiAoICAgMjU2IE1pQik6IC9k
ZXYvcmFtMA0KICAgYC0tIG1lbTENCiAgICAgIGAtLSAweDAwMDAwMDAwLTB4ZmZmZmZmZmZmZmZm
ZmZmZiAoICAgMCBCeXRlcyk6IC9kZXYvbWVtDQpgLS0gYW1iYQ0KICAgYC0tIGQwMDAzMDcwMDAu
c2VyaWFsQGQwMDAzMDcwMDAub2YNCiAgICAgIGAtLSBjczANCiAgICAgICAgIGAtLSAweDAwMDAw
MDAwLTB4ZmZmZmZmZmZmZmZmZmZmZiAoICAgMCBCeXRlcyk6IC9kZXYvY3MwDQpgLS0gc3BpDQpg
LS0gZnMNCiAgIGAtLSByYW1mczANCiAgIGAtLSBkZXZmczANCiAgIGAtLSBwc3RvcmUwDQoNCk5v
dCBzdXJlIGhvdyB0byBwcm9jZWVkIGZyb20gaGVyZS4uLg0KQ2hlZXJzLA0KTGlvci4NCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBaG1hZCBGYXRvdW0gPGEuZmF0b3Vt
QHBlbmd1dHJvbml4LmRlPg0KPiBTZW50OiBNb25kYXksIEp1bmUgMTIsIDIwMjMgMzoyOSBQTQ0K
PiBUbzogTGlvciBXZWludHJhdWIgPGxpb3J3QHBsaW9wcy5jb20+OyBBaG1hZCBGYXRvdW0gPGFo
bWFkQGEzZi5hdD47DQo+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIIHYyXSBQb3J0aW5nIGJhcmVib3ggdG8gYSBuZXcgU29DDQo+IA0KPiBDQVVUSU9O
OiBFeHRlcm5hbCBTZW5kZXINCj4gDQo+IEhlbGxvIExpb3IsDQo+IA0KPiBPbiAxMi4wNi4yMyAx
MToyNywgTGlvciBXZWludHJhdWIgd3JvdGU6DQo+ID4gSGkgQWhtYWQsDQo+ID4NCj4gPiBSZWdh
cmRpbmcgdGhlIHJvb3RmcyBhbmQgTGludXggcnVuIHF1ZXN0aW9uOg0KPiA+IE91ciBib2FyZCBk
b2Vzbid0IGluY2x1ZGUgZU1NQ1xTRCBjYXJkLg0KPiA+IFdlIG9ubHkgaGF2ZSBvdXIgTk9SIEZs
YXNoIHRvIHN0b3JlIHRoZSBiaW5hcmllcyBhbmQgb3VyIEJMMSBjb2RlIHdpbGwgbWFrZQ0KPiBz
dXJlIHRvIGNvcHkgdGhvc2UgYmxvYnMgaW50byBEUkFNLg0KPiANCj4gSG93IGNvdWxkIEJMMSBj
b3B5IGFydGlmYWN0cyBpbiBEUkFNIHdoZW4gQkwyIGZpcnN0IG5lZWRzIHRvIHNldCB1cCBEUkFN
Pw0KPiANCj4gPiBUaGUgdXNlIG9mIFFFTVUgbmVlZHMgdG8gYmUgYXMgc2ltcGxlIGFzIHBvc3Np
YmxlIHNvIG5vIGhpZGRlbiB2aXJ0aW8NCj4gZHJpdmVycyBhbmQgc3VjaCBiZWNhdXNlIHdlIHdv
dWxkIGxpa2UgdG8gc2ltdWxhdGUgdGhlIHJlYWwgSFcgZmxvdy4NCj4gDQo+IGNmaS1mbGFzaCBp
cyBqdXN0IG1lbW9yeS1tYXBwZWQgZmxhc2gsIHdoaWNoIGlzIHRoZSBuZXh0IHNpbXBsZXN0IHRo
aW5nDQo+IGFmdGVyIEJMMSBjb3BpZXMgc3R1ZmYgaW50byAobGltaXRlZC10by00TSkgb24tY2hp
cCBTUkFNLg0KPiANCj4gPiBPdXIgRFRTIGZpbGUgbm93IGluY2x1ZGVzIHRoZSBHSUMsIHRpbWVy
IGFuZCBhcm0scHNjaS0xLjAuDQo+ID4gV2UgaGF2ZSBhbiBpbml0aWFsIGJ1aWxkIG9mIExpbnV4
IGtlcm5lbCBJbWFnZSAodXNpbmcgYnVpbGRyb290KSBhbmQgYQ0KPiByb290ZnMuY3Bpby54ei4N
Cj4gPiBJIGFzc3VtZSB3ZSBjYW4gc29tZWhvdyByZXNlcnZlIGEgcG9ydGlvbiBvZiB0aGUgRFJB
TSB0byBzdG9yZSB0aG9zZQ0KPiBiaW5hcmllcyBhbmQgbGV0IGJhcmVib3ggYm9vdCB0aGlzIExp
bnV4Lg0KPiANCj4gWW91IGNhbiBtYWtlIHRoaXMgd29yaywgYnV0IHRoaXMgaXMgbm90IGhvdyB5
b3VyIGFjdHVhbCBzeXN0ZW0gd2lsbA0KPiBsb29rIGxpa2UgYW5kIHRyeWluZyB0byBtYWtlIHRo
aXMgd29yayBpcyBoYXJkZXIgdGhhbiBpdCBuZWVkcyB0byBiZS4NCj4gDQo+IEp1c3QgYWRkIGEg
Y2ZpLWZsYXNoIHRoYXQgY29ycmVzcG9uZHMgdG8gdGhlIExpbnV4L3Jvb3RmcyBmbGFzaCBpbg0K
PiB5b3VyIGFjdHVhbCBzeXN0ZW0sIHRoZW4gYm9vdCB3aXRoIGJvb3RtICh0eXBlIGhlbHAgYm9v
dG0gZm9yIGluZm8NCj4gb24gaG93IHRvIHVzZSBpdCkuIFlvdSBkb24ndCBuZWVkIHRvIGhhcmRj
b2RlIHRoZSBsb2FkIGFkZHJlc3NlcywNCj4gYmFyZWJveCB3aWxsIGRldGVybWluZSB0aGVtIGF1
dG9tYXRpY2FsbHkuDQo+IA0KPiA+IENhbiB5b3UgcGxlYXNlIGFkdmlzZSBob3cgdG8gbWFrZSBp
dCB3b3JrPw0KPiANCj4gRm9yIGNvbXBsZXRpb24ncyBzYWtlLCBpZiB5b3UgaGF2ZSA2NE0gb2Yg
UkFNIHRoYXQncyBwcmVsb2FkZWQgd2l0aA0KPiBib290IGltYWdlczoNCj4gDQo+ICAgLSBSZW1v
dmUgdGhlIDY0TSBmcm9tIHRoZSBiYXJlYm94IC9tZW1vcnkgbm9kZS4gWW91IGNhbiB1c2UgYSBk
aWZmZXJlbnQNCj4gICAgIERUIGZvciBrZXJuZWwsIGJ1dCBpZiB5b3UgaGF2ZSBtZW1vcnkgdGhh
dCBiYXJlYm94IHNob3VsZG4ndCBvdmVycmlkZSwNCj4gICAgIHlvdSBuZWVkIHRvIHRlbGwgaXQg
dGhhdC4NCj4gDQo+ICAgLSBBZGQgYSBtdGQtcm9tIG5vZGUgdGhhdCBkZXNjcmliZXMgdGhlc2Ug
NjRNIHRoYXQgeW91IGhhdmUuIFlvdSBjYW4NCj4gICAgIGFkZCBwYXJ0aXRpb25zIGZvciB0aGUg
cmVnaW9uIHVzZWQgZm9yIGtlcm5lbCBhbmQgb2Z0cmVlDQo+IA0KPiAgIC0gYm9vdCB3aXRoIGJv
b3RtIC1vIC9kZXYvbXRkcm9tMC5vZnRyZWUgLXIgL2Rldi9tdGRyb20wLmluaXRyZCBcDQo+ICAg
ICAvZGV2L210ZHJvbTAua2VybmVsDQo+IA0KPiBUaGF0J3MgYWRtaXR0ZWRseSBjdW1iZXJzb21l
LCBidXQgbmVjZXNzYXJ5LCBzbyBiYXJlYm94IGtub3dzIHdoYXQNCj4gbWVtb3J5DQo+IGl0IG1h
eSB1c2UgZm9yIGl0c2VsZiBhbmQgd2hhdCBtZW1vcnkgbWF5IGJlIHVzZWQgZm9yIGJvb3QuDQo+
IA0KPiBDb3JyZWN0IHNvbHV0aW9uIGlzIHRvIHVzZSBjZmktZmxhc2ggb3Igc2ltaWxhci4NCj4g
DQo+IENoZWVycywNCj4gQWhtYWQNCj4gLS0NCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gU3RldWVy
d2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRy
b25peC5kZS8gIHwNCj4gMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAg
IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwNCj4gQW10c2dlcmljaHQgSGlsZGVzaGVp
bSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwNCg0K


