Delivery-date: Fri, 17 Feb 2023 09:24:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSw2I-009z6I-Ao
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 09:24:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSw2H-000471-0f
	for lore@pengutronix.de; Fri, 17 Feb 2023 09:24:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b4hpDuundRqnd3638PoHwzYRZUBeIb0eUarERbjC8Xo=; b=KF+KvSEvQLrsDF
	vYlx3f/i8G36/B+O9WKEGiag9MOWe9yxIaopM9ZM002lQzPXhAjj7j01Xv2q6xSQinrORYSgL/IRu
	KS3GNnnJ1z87/gdDsoJ4bOfuSLXjb6/KmEzlarbfDfsoOHSxU8I2hOy90DGlgCL3g/VeK93JhE3Ka
	uT/Ltw9oJIdTBr0YOcLc8Rx8aQ25WSYraTmDPBwD/Zj6Q+xvl/KiS1J8BICdYQoWpP4sQ1mcRLf01
	sQht08EmgbcOEkOjnunYgwICrlLa5XDaOOIZatljQR3xiz3SPJMQ2N3wODKCFCwv2LmhSCOH/F+R/
	Qm/05wqFXK61ZZr6GkTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSw0r-00DHtc-EL; Fri, 17 Feb 2023 08:22:37 +0000
Received: from mail-db8eur05on20717.outbound.protection.outlook.com ([2a01:111:f400:7e1a::717] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSw0l-00DHsd-Lj
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 08:22:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ldyLebX/dROywPD/Uj051FmFpp8NFkD4867+G5ILliSvMbQ2QB+Uf6K2IS58e0mINw4KugCEQdj3BmDCXhtQc7/DiWt02EX1UQQvhgUVnQJf+pROFFiD7txWMdsgAlJR4RCRmq2MPM1ChVIkRnFVaexa4jCLmlA8PY+J65H7wsiyJPXCbyCGdY3ZEDrEfa9uAYBwbhyvFPkS/O19xZynKJVpHHxECr9SXiZ18+f8L3C8T7LBhb7O/vaYOiKMvJTgP+gt2iP77KY7ALDBwvbNnvWFIkt8o+Mg050v6qrZpCDyQELJdJjl2yhqIZ1Pt8IKwraVudXjnmOwPfY/wu0QtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b4hpDuundRqnd3638PoHwzYRZUBeIb0eUarERbjC8Xo=;
 b=PUt8+0/TP5s628qLsY8cGNblyqOjWx25gFGTpudr4IUychHk45OrJifAat6smsHNOzM9xWe17HEvoLBVH+0F9WKgfXJjISw6oCrNYXL1mz88UXIMrDvYJqd6v2LLw6jBF1VhyPlYqPNmMFBCd5lEnrIPZfcUJrQCEqmfz591k/Oo4thFObfTQZcf8DE2PQ15rDy7gznYEZcTXxhNYM/smNHvtt4hwdzrRJkf+i6f5eDPkEntbw4kDckQYqaiZ8c3YafkK2fIbkCIrVaU5ThhL10Llwvb/PiJI8rCpcWHXU6kGziC05EZmP9Uynq3WvPNAmfVZY6fro7D0XRNhtRLwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=knorr-bremse.com; dmarc=pass action=none
 header.from=knorr-bremse.com; dkim=pass header.d=knorr-bremse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=knorr-bremse.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b4hpDuundRqnd3638PoHwzYRZUBeIb0eUarERbjC8Xo=;
 b=oMHOqlRttQnPU8BiDId6i2DHucq80d7VM7HyWNrb1cy+3iYQhF+Z+D3n4LoeAMJfoc0Cy5NrtdhtAIaLVT5oYsWb8VIZvQRNaLL881TI4fsBG+df737vaksreKLjkBrrJO3MeKPlaiFN1ULyVtxemrWn4nz3N6mwihUep3XsVuA=
Received: from VI1PR04MB5007.eurprd04.prod.outlook.com (2603:10a6:803:59::21)
 by DB8PR04MB7196.eurprd04.prod.outlook.com (2603:10a6:10:123::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.13; Fri, 17 Feb
 2023 08:22:26 +0000
Received: from VI1PR04MB5007.eurprd04.prod.outlook.com
 ([fe80::a481:c9e4:c306:4331]) by VI1PR04MB5007.eurprd04.prod.outlook.com
 ([fe80::a481:c9e4:c306:4331%4]) with mapi id 15.20.6086.026; Fri, 17 Feb 2023
 08:22:25 +0000
From: "Klotz, Oliver" <Oliver.Klotz@knorr-bremse.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: SPI NOR w25q128 "flash operation timed out"
Thread-Index: AdlCpvMkxfEUmFORSIiTs6Rap0Ka1A==
Date: Fri, 17 Feb 2023 08:22:25 +0000
Message-ID:  <VI1PR04MB5007D429B9FDF43D49A6CC99BFA19@VI1PR04MB5007.eurprd04.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=knorr-bremse.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB5007:EE_|DB8PR04MB7196:EE_
x-ms-office365-filtering-correlation-id: f96cd175-3243-4b50-bef2-08db10c01a03
x-kbdisclaimer-set: True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  AMeedMQRDFVKuj1/KCVifuj5EGq6PVquYDlh5mIdUpaz6j/SyTUfzYUCk4Ad1tlENOcPgwMMRdHi/MBA332ynRl7toepKMGEJi9kRhyncsUhBhcZMnLi61GO/3vm5smdldmbmQKd7+3PfgqR+1FBUhj7omGKC9g6WPkkJscg8lsw7lD0XRcRN0B8rF0b4mmoXOSvOhs7BDsBBuuDkTgxXIqTAUvjcWbp2sJ4okKnz8NbwFW7rcAaJpF2AHWSc5D60PN0eJW+WDu1WkTEBSw+ufJGo2zJ4fkYNG3PDOPVfRCqRWmCUFVcbMB8MVdwOYxgX6DqyAzhwWenYbZa2YEo1Foi2/MJ4y4m9C2M6I0vLwKZHRPLKWGjykoRowaqMtzwg63y0GHzHLV+t9JU365byfaSjgekOPB1D/TTloO0jXGbdQIYhKDCuVVCK6n8u+OcH9t1vrh3rjwJLBGsnkILMaa1o3x2wKkdOffCGJqG5m2Lh1koojl3G3GygeoBctqNKmdNHGGfTOeSOaOnfJvwx3O/CRJJZrBd2XTiQQav3qSqQmdUcJndQRiEJM19Ob+/g0O1yitPatNb5W+t5mL39rw073e1W48WJSw8ngs0FctgwkR9RfrVpTAW6DXIc6EQ2NmvTUS9hsWlANzQuT/nVS9Ad/Fe/RE/2sKfzTRKRuXGTp3Neuvrxo+2DWiaZ0OzqxSZVFOETN6ANRXCpiUuHg==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5007.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(451199018)(64756008)(66476007)(8676002)(41300700001)(76116006)(66946007)(6916009)(66446008)(33656002)(66556008)(52536014)(55016003)(86362001)(8936002)(478600001)(38070700005)(5660300002)(316002)(83380400001)(122000001)(71200400001)(38100700002)(7696005)(66574015)(26005)(9686003)(6506007)(186003)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?K0hUOFpBVVNTNXhnZEdQeGZkdVVYSnhUZlNoN3oxbzExWTNHRDZkcnplL1dp?=
 =?utf-8?B?OG5pWGw5TGlzRHp4SHJ5LzlVTnM5SFdic2dsU3hHbFJZV09qUWtDbTUzbWpL?=
 =?utf-8?B?UTlLalJlb2E5bTNWT003WWk5blB6YzVZRHA0eHF1ZCtaWnV3WlNvWGp1cXlQ?=
 =?utf-8?B?SklmUGxIUk9RcTFIdkt4QTdxUmEvbzFQZDgvb3pveUk3NmIxRE52K1Z3bWEy?=
 =?utf-8?B?cU1wQk91VjJMc2o5dWt3bWJrelhCcGhjOXhOZUg1NU50eUgzQmdJM0dTOUZ3?=
 =?utf-8?B?WlhKSWRTdU9GbktwRzJ5aGxQODc1SXdZRG1xRWJrenpLOEJJVms3R08wWldQ?=
 =?utf-8?B?c1lXQTF3UEQydUFyTEdXS2hWeCsrN1puM2dxa24vL25YWVZtUUhaMXBsMFpX?=
 =?utf-8?B?Y2RHdy93ZnpmMUNBWTZQSVBHU0dmWWNoOXpPRXk5UnhVTDZ2RXI1Yk4vUEpG?=
 =?utf-8?B?M1IycnpQc0dEUGxLZTVTOEN5UjlQSnVueE9LMEJnR2hkRVVGdE4rZEVsa2pi?=
 =?utf-8?B?Zk9RL25ERi9DTDRzWWRxcWNwTUNZdkZwemt2aGxPRTZ4Njh0Q2ozUHhMemJz?=
 =?utf-8?B?d3d0bGZ6U0dIWVlwZ0tobEJYQVNLeDVHRnFISmQ3RHpZL1h3Y3liMCs5LzJs?=
 =?utf-8?B?cC9pY2dQbVA1OFRRQlViRDhVeTdtcXhBeFphelNUbGQweElkNy9RYm5wYTJ6?=
 =?utf-8?B?Ty9VZ1RkazZhL2x6ZUlzTGtRaUEyWEZBbER1OWYvbFR3bXdhK09lTGlXeHg3?=
 =?utf-8?B?K3hZNE9HbUcxMk9aQi9WZHFCRW9MUEpYZ1Ixc1RnK3lqWiswejhnQlJYejdj?=
 =?utf-8?B?bWFCbExhdUEyZEFMNlY2bmw3SnlaWlg4Z0lFRDY2a0FCaWtKcDZIUHN4RkJL?=
 =?utf-8?B?c1NwQ0tFU2c1aTc5RFBOVmZaR0lXaHlJeW4zL0hreDVvUVp1bjU2Zk5VS0ps?=
 =?utf-8?B?dEJrbVZ4WVpYYzA4UkIrSHFNVytnT1FFZnJsWFlqQmhUTEZ4Qi9VNzlDRXE4?=
 =?utf-8?B?VGI3TXJXRUczMzZlWkRyTUxTMDJMWW9NZVJjNTBiVUs3MzR2eU9hbmRqblMz?=
 =?utf-8?B?b2M4bjZZWGpDeXY2ZFRhcnE5ZUtiVUl6LzJPdXIvcXRETXU0UFZHcDMxdzY2?=
 =?utf-8?B?aTlkaERDbUpjR1dkTFd4Y2RaVDNGUE5GRWdwVVM2b1RCZzFyOGdneVcyM0pH?=
 =?utf-8?B?c0l1Q1BabktJVUhKL1BSZlBHTVJybWYwTnFYYXd0cU1OOGE5eC9BK2RObjZv?=
 =?utf-8?B?ajFGYUVkdVl3Mkk4L3VYekE1QjVOamxyZWIzbU11cVlCMUd6VkhjVzdZcTlP?=
 =?utf-8?B?VXh3WDk5MEJ6VVluM1RvR0FtS3VkVE9iT3VaUi9ldk4rREdxQjBFdzlsbDBM?=
 =?utf-8?B?amEwTEM0NVlVMnJiSG1YQ1k5NkJsYkxqSXlMOThDZ3RCNFVxcy84dWxZbk5I?=
 =?utf-8?B?NEtnOUtVcUppWDZPbGt3TndiMW8xVFZyWVdUMEhWSVlmMFk3Q3J1dGFIaGVw?=
 =?utf-8?B?RFVWVTl5U2hXRlJPeGFNbEhwNWcvRmF6OUNwc2gwc0VSTlZzazVUZGh0MW9q?=
 =?utf-8?B?cjBwMDRzL2tFcENEU1ZKengxK3N0ZEMyUlExYkJYc0NZeVBrdjhFUTU3dnFJ?=
 =?utf-8?B?WkhxSWZYVVlUYkVFYTZweFRTNVNVUW5EdFFnc3U3dDQ4Wm44U0hiS0Mzdmg5?=
 =?utf-8?B?WkpacUswZ05lRG9Palc0TzF2WExOMEN5YWpUSitrQUhkMVBmUWRTRmowU0Jh?=
 =?utf-8?B?dFZyVmJuWWt5VXlEWXp5aXM0ZXFsNUtGYWY1RStLWDVZOUhiRk9LeTNnc0NF?=
 =?utf-8?B?cjNrSFVLcUlXcU5iaXpDQmlFdWpkMG9XbnlyQlRZSldIdzVXWEhDdjFXT1BI?=
 =?utf-8?B?RFl3cFBSU3o2bCtVSHpYTDBLTXArZTRKUEJlUFpRczNmZkRGcUpuekpsYnFm?=
 =?utf-8?B?UVlpbXh5TFBDb1JIKzZSSEdaRkFaT0g5cEZTVUVURVRLOEg3VnVLUkZkL2VW?=
 =?utf-8?B?VlFCWEZKcGp3QVB2d1RrczQ3TWZPUFpVenB2SkFweDhoQW5NRU5lTEdwSnQ0?=
 =?utf-8?B?OUlwNHdsb1ZiaU05ZUh6YmV4djFYOU9rQ2dyZWE5N1pOL0dZeWVBS0ZpRVc3?=
 =?utf-8?B?Q21rOTVoa0NlOURVRll5bysvbUcyOXdBN25FOCtYYk00K05JbFAvcVJQbHBm?=
 =?utf-8?B?YkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: knorr-bremse.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5007.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f96cd175-3243-4b50-bef2-08db10c01a03
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2023 08:22:25.9119
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66f6821e-0a30-4a06-8b8b-901bbfd2bc60
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AOJ5S7Pe0NZDqOdOvEA3cpbrH2LGUhpWfuNrecoYlJzEcqaCQmfJz3X8o3AiYFEw5HjjlkKAnpxgJEV1R5zrOqUF13sBKuym5juzD/fi/g0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_002231_733492_7B91F0F1 
X-CRM114-Status: UNSURE (   9.34  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: SPI NOR w25q128 "flash operation timed out"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8sDQoNCkkgYW0gdXNpbmcgYW4gYW0zMzV4IGJhc2VkIFNPTSB3aXRoIFNQSSBOT1IgZmxh
c2guDQpSZWNlbnRseSB0aGUgU09NIHZlbmRvciByZXBsYWNlZCBNaWNyb24gbjI1cTEyOGExMyB3
aXRoIFdpbmJvbmQgdzI1cTEyOC4NCg0KV2luYm9uZCB3b3JrcyBmaW5lIHdpdGggYmFyZWJveC0y
MDE2LjA3LjAsIGJ1dCBmYWlscyB3aXRoIGJhcmVib3gtMjAyMy4wMS4wLCBiYXJlYm94LTIwMjIu
MDkuMCwgYmFyZWJveC0yMDIxLjA3LjAuDQoNCkFsdGhvdWdoIHRoZSBkZXZpY2UgaXMgcHJvcGVy
bHkgZGV0ZWN0ZWQgYXMg4oCcbTI1cDgwIG0yNXA4MEAwMDogdzI1cTEyOCAoMTYzODQgS2J5dGVz
KeKAnSDigJMgSU5GTygweGVmNDAxOCkuDQplcmFzZSBhbmQgbXcgY29tbWFuZHMgZW5kIGluICJm
bGFzaCBvcGVyYXRpb24gdGltZWQgb3V0Ii4NCg0KSSB0cmllZCB3L3dvIENPTkZJR19NVERfU1BJ
X05PUl9VU0VfNEtfU0VDVE9SUyBhbmQgd2l0aCAyNC80OE1IeiBTUEkgY2xvY2suDQoNCkkgaGF2
ZSBhZGRlZCBzb21lIHRyYWNlIG1lc3NhZ2VzIGZvciByZWFkX3NyKCkgYW5kIHJ1biDigJxlcmFz
ZSAvZGV2L20yNXAwLmJhcmVib3hlbnbigJ0gKHBhcnRpdGlvbiBzaXplID0gMTI4IEtieXRlcywg
c2VjdG9yIHNpemUgPSA2NCBLYnl0ZXMpDQoNCnJlYWRfc3IoKSByZXR1cm5zIDB4MDAgMHgwMyAw
eDAzIDB4MDMgMHgwMyAweDAzIDB4MDMgYW5kIHRoZW4gaXQgaXMgc3R1Y2sgdG8gMHhmZiBhbmQg
dGhpcyBpcyBjYXVzaW5nIHRoZSB0aW1lb3V0Lg0KDQpXaGVuIHJ1bm5pbmcgdGhlIHNhbWUgYmlu
YXJ5IG9uIHRoZSBNaWNyb24tU09NIHRoZW4gSSBnZXQgMHgwMCwgYSBidW5jaCBvZiAweDAzLCAw
eDAwLCBhIGJ1bmNoIG9mIDB4MDMgYW5kIGZpbmFsbHkgMHgwMCBhcyBleHBlY3RlZCBmb3IgZXJh
c2luZyAyIHNlY3RvcnMuDQoNCg0KSXMgYW55b25lIGZhY2luZyBzaW1pbGFyIGlzc3VlIHdpdGgg
dzI1cTEyOD8NCg0KQW55IGlkZWEgd2hhdCBtaWdodCBiZSB0aGUgcHJvYmxlbSBoZXJlPw0KDQoN
ClRoYW5rcyBhbmQgYmVzdCBSZWdhcmRzDQoNCk9saXZlciBLbG90eg0KDQoNCktpZXBlIEVsZWN0
cmljIEdtYkgNCkZpcm1lbnNpdHo6ICBLaWVwZS1QbGF0eiAxLCBELTQwNTk5IETDvHNzZWxkb3Jm
DQpHZXNjaMOkZnRzZsO8aHJlcjogQWxleGFuZGVyIEtldHRlcmwNClJlZ2lzdGVyZ2VyaWNodDog
RMO8c3NlbGRvcmYgSFJCIDM0MzA2DQpaZXJ0aWZpemllcnQ6IERJTiBFTiBJU08gOTAwMToyMDE1
DQoNClRoaXMgdHJhbnNtaXNzaW9uIGlzIGludGVuZGVkIHNvbGVseSBmb3IgdGhlIGFkZHJlc3Nl
ZSBhbmQgY29udGFpbnMgY29uZmlkZW50aWFsIGluZm9ybWF0aW9uLg0KSWYgeW91IGFyZSBub3Qg
dGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIGltbWVkaWF0ZWx5IGluZm9ybSB0aGUgc2Vu
ZGVyIGFuZCBkZWxldGUgdGhlIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2htZW50cyBmcm9tIHlvdXIg
c3lzdGVtLg0KRnVydGhlcm1vcmUsIHBsZWFzZSBkbyBub3QgY29weSB0aGUgbWVzc2FnZSBvciBk
aXNjbG9zZSB0aGUgY29udGVudHMgdG8gYW55b25lIHVubGVzcyBhZ3JlZWQgb3RoZXJ3aXNlLiBU
byB0aGUgZXh0ZW50IHBlcm1pdHRlZCBieSBsYXcgd2Ugc2hhbGwgaW4gbm8gd2F5IGJlIGxpYWJs
ZSBmb3IgYW55IGRhbWFnZXMsIHdoYXRldmVyIHRoZWlyIG5hdHVyZSwgYXJpc2luZyBvdXQgb2Yg
dHJhbnNtaXNzaW9uIGZhaWx1cmVzLCB2aXJ1c2VzLCBleHRlcm5hbCBpbmZsdWVuY2UsIGRlbGF5
cyBhbmQgdGhlIGxpa2UuDQo=


