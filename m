Delivery-date: Mon, 18 Dec 2023 15:13:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFENP-002x7y-1e
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 15:13:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFENO-0003WF-MW
	for lore@pengutronix.de; Mon, 18 Dec 2023 15:13:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ke3JDU/+j9S0Ibdds4tkESbuB5iPRGZBuuS5aVGN/n0=; b=WLlZ3VNyAmd7yoLcY5ii++6THz
	qWgucbyRxDV6dHmKFYdRvdWBjmI8VUNIujbtIbWGOL3mFhzDDvc/rpy09s2J/MUzenmahnvyF4ErM
	MbSM+O3Oq1o858OlQOfxX7oFqzUUfEFU4JQ5fNDF51Lzyf79/mywdfsXP4BPVLWmSJ/SHZeSHlnWV
	oFFJVR7Qknd3sOQojGirZ5DDW4Mjjcgx6nfWf3TZiJ9W9+v2YgysG+GsLsRJ8eZqueeT/X3ejDmBW
	IDdv5oM7XjppZ368h3iPEcBrERwLwdvrYPjadLybYGJj6w3A6zKhARwG1Zftq0EdVYzVQCf9MXgH6
	nSDED4NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFEM2-00AzzV-0l;
	Mon, 18 Dec 2023 14:12:22 +0000
Received: from mail-vi1eur05on20604.outbound.protection.outlook.com ([2a01:111:f400:7d00::604] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFELz-00AzxB-29
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 14:12:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UNgdcpFsbGNy7NyhHZYx/EBvySHYfyC9hgeyl1s6Any0rmKZhEoQr7PeUFlLDAfW41xjxjEP23rWdhF7qacn2xlssEWJIfYHviX/FbH7w1W2qsqW8Dtq5K+sNFNxPBL8aqNjV8dVkk5RH1k4lLUMnvPM6/UqNhd9iWaxSXcdO5Ujk0RLnXBJlbyFsvuJuyXr/fvBmINYTWNEGRMXGW/swZuJPUSZ8Q8cL2/8Ii4YpH2tymA6U8yC5siPdaKtIUIp5qswAYe9cTDfOCUZroIf/LbiC8b19JxxR/C5w5aRb2P1pQV60iWK8ipBxHln1gMvhG6GMcI3mAggqfVkAOOg2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ke3JDU/+j9S0Ibdds4tkESbuB5iPRGZBuuS5aVGN/n0=;
 b=c6s/pniBW4TarjGHDDn4JT449LZaKvk+5PmJCSRyv9/XvM3L6u5UNDgJYltUOAWdjPTsx3/+Wv3NRXUItWIrOucc7I4C2Eb9/TyPuD6fnOKbq747KXl5OKxeU3uqnoGzMm6KZ/DUQLrb5ncTMmvx8638rk4zLz/wLmyWkCDZkpVo5zNVBcDdeuMPjkO9byP3NJjPAg22Fp6Mh6xAyqF9+JEjX8iMew3PApyZOZMILsp4IFjClosLA52SjMusOOfF/rbcpie35eZA3lgc2sdQZi5Ec+Chdo9rhlI6BBnQ2ojyhiv7DIhoUAhsX5fb+gucIs9KRYsrRQtiYoCMhaWS7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ke3JDU/+j9S0Ibdds4tkESbuB5iPRGZBuuS5aVGN/n0=;
 b=DwF8ngoe9xK7Z/Z+Fnr7DXx9h/yH4n/KBf+ftS4/3id7lWK76DUv2BaannBsk1jc9GtaqGUFHargor7Bu9N5HBqeyn4ddtpLAfOgva5StDY5WMo8hMYvbL1bwGdpWXjDsGfw8R7KgSKH3ECTUCvAfhA3F/T50JjqA0wEiyZzlMU=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by DU0P195MB1473.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:345::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 14:12:11 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db%5]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 14:12:11 +0000
From: Lior Weintraub <liorw@pliops.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v1] ARM64: mmu: fix mmu_early_enable VA->PA mapping
Thread-Index: AdoxvDDoNUuVhBfTStGQljCle0ntKQ==
Date: Mon, 18 Dec 2023 14:12:11 +0000
Message-ID: <PR3P195MB0555FF28C5158FF2A789DC2AC390A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|DU0P195MB1473:EE_
x-ms-office365-filtering-correlation-id: eb326824-84d0-4954-0760-08dbffd35413
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r0Eetdhz4bDdbGG7eFNQ2qPjSzgj7jTWGqbJYI+YaEWhWMqoch9d6mIMDYDOZOLrIAd9cS5n/M8ta/OZRSenANGNUheIAMt8Twf681LP1ZT9Zel46/YzOnrmJKujVx6rtW/sYphNnNGJU38mqleZOP6qTLF51/G9QEzpQYRyD3xIyS2AAMYfQJaEmEyP8m05GmF2+Joy5qQuOWt3dg43D2xRCQvPO//EzsgYe5urS/ZL7uLskyjdhOrshkohYQ+XYLz4YFdu1xRwLgGJXDkQFEuOhw67xZhv8hQJxtbr8jKp2UxPqOrZ3BPR4GpPF6xhVxarmi6t8rXU7zEL0I8zAOe1OId6okooZauyf8E2VXp8tMaR2EKn2PkuwWlh9+neQSk+GPxH6B8329JoVaa02ghca7ArZGdH3+7yJD87v1xTH3jZV4+mvXqrMYQ/B09BYkJsdtV1lQvx68n8ObKMWbId8dV+2Azbf2jTXPVFLPIfhToujRgPV3zpcdyhlGjQI4EJX/1iQpqy2x5LPw8cNcnH9svPF6EF90uJEDbi8+00MsW5JlydHRaSBinVmV9+J66uhHo6O4m62Egk71HtNbDG4mxcLkON6QW3jKuiI4JDklev+3GozFQI+mdRHDGe
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(396003)(376002)(366004)(346002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(83380400001)(33656002)(122000001)(38100700002)(86362001)(41300700001)(478600001)(8936002)(8676002)(66946007)(52536014)(66446008)(4326008)(54906003)(64756008)(66556008)(66476007)(6916009)(316002)(76116006)(2906002)(26005)(6506007)(7696005)(71200400001)(53546011)(5660300002)(9686003)(38070700009)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUltM2xmQlVwTW5xb1FqdGJzOCtqTGFBbWREMlV1TldRbFIwOVJxNEVyREJx?=
 =?utf-8?B?bnRJeE15RjZpb1YwQkpyT2pXdXRub0U2b084N0tTdGZzeHExS25RNUdzTG1I?=
 =?utf-8?B?Ym96QlBsRVBGV1FuVWlwTWxKTGI1VzlGR01Ib3NkU1ZGK2JiSi9EdkJNTERw?=
 =?utf-8?B?U0dpREh5cVl3YkpXMnk0UFJPUUNhMjRNQ0puLzN0V1ZyZXdkSHBhSTZMV1hi?=
 =?utf-8?B?dWFEWlFpMUZ5WE15NnkwckVlWS80K3FqRktGYyswelFhOFJtSEdUTzh2dHlN?=
 =?utf-8?B?U0xScEtkRE5sQ0FkYk42TDd4MlJwcmxmb1A4bFFkNVQ2ME8xK3AwaWR4YS8x?=
 =?utf-8?B?cVV1ODV1eUhJZTFyM042c2RMK2ZERkJwT0xLbkxrV2FiQkVtS3o1cW5uSE11?=
 =?utf-8?B?djVER2ovZlFvRThsTzg3WStucDlYYVE0MDBlbkpZL2k1YnMrbzN6enRTSy81?=
 =?utf-8?B?b2ZiaXNrT3N5bHNQY2FyaFYwdXVyUm0yUkpOY3R0UDYyejIyVHBBUTBjczJx?=
 =?utf-8?B?dDhjdG03V1ZrQi9pOHlac3BaNnFVT0FHOWxaenFVNVRrUkx3U0MxUWNka2dr?=
 =?utf-8?B?c3Y1T3E4MkZ6MWdpbWpwdElEYUJ5NE10R1FMK3RQVFA5SU1Vb0d2di8xck91?=
 =?utf-8?B?WjVhVGRYM0R0TXAwNWJIdWYzeE9pNGJxZERPdVJLTHBNaThPNWZpZURlZnpV?=
 =?utf-8?B?NjZsRkZzaHpVS2RudEVCK2g4YW5qZUVJYXgwakNTZkpveWphaWpFV054c2NL?=
 =?utf-8?B?TVMrRkF5OVQ3RkNQNXdpU3NwdHhWbmtpd25qZ0YrZTdzTEhRc2hXS1R4Nm9F?=
 =?utf-8?B?alZ0ejU1c0hIV1N5Qm5uRHRVcEhNTlIwTXFxa1NGUjcwbU9SRjBLOUgxR2hN?=
 =?utf-8?B?MXNKMXp6Tm85SFhiaW4zMWV6a3lRY0hHakhLenRKT3VTNGEwc0R0c2FIZ3pO?=
 =?utf-8?B?eGFsQkgvdG5WcTk5SlZZNnR4Yms2dzd5UEZLbmp2ZUFXVVBwVFJ1c0F0WXp6?=
 =?utf-8?B?R0dSVEsxUWVIQThQMDUxR3FCVE5xM0VQWjNydGlMcEQrRFJra3Z3U3JNdnpS?=
 =?utf-8?B?bTVDVDVKcFlzWEloTEpVeXpNWVg2Yjh0TjdSUStrb0N0eVRvdnRmVzBKejFs?=
 =?utf-8?B?K2FOOFdTN1lvRm4yRUpPWjRrRSt6eDdPWW1GZExkRkUwM1JaL2JrNll5Vjkx?=
 =?utf-8?B?QnhRZUpZZWU5NG5TWmFBdVkwaXdRc3ZmZ2JHZHZuUWhON0tmMHp2VWMyVi9S?=
 =?utf-8?B?WG1taGNJWVd2L091TUdJa0FONmQ5MEt6Y0E5QWMwdk5LYjFWMzBxVlltaThY?=
 =?utf-8?B?cVQremtpY0VWYVIxMnU3dVNIZ1hiZTRKVElIR0FUNTdVb2luSkVwNmZQdlU2?=
 =?utf-8?B?Z2VRN25uZnV5TGhSQWFIc3FaclJJeHM2K3ZTQWN4M0NJaUdHNHJNWnRqKzUw?=
 =?utf-8?B?SmJma1hHN0FTajVLUCsxZmU4RXJtWnVjZ3o5TEUzbTIxM3hUSm9NNWRHWSsr?=
 =?utf-8?B?Tko2NVJBK0NtS3JBNmlOTCtsTm5QQk16cWpOT091eGw3dHE1QTNrRkxWYUV6?=
 =?utf-8?B?MHJVMGl5ellkNyt6QWcrNTBJVjkxZ2N5bHZ5Qm41QWVwK0F0MmJ0YkRaWTJy?=
 =?utf-8?B?MjA3YlAxb1dFVUpBUVA0bGhUN01vM0ZOcnc1MzlrVnlrMTJKYmE1RkdiY2xt?=
 =?utf-8?B?eE1VZHU0VzNvU2paTHp1V3lsV3dtWW1oQUE1L3NYQzZZUXh2NGUySFlCRmtM?=
 =?utf-8?B?K3lOSHg3bWpMSFJmOTB0K0V5VUpBSjJmWVlHZmx0RHRoU3RpenY3amdkVndn?=
 =?utf-8?B?eGEzN25rRXVWcU9oTVU5ak1INzdMU2ZtSmY3RWIzS0dsT1RvL2dRcGZFRjJS?=
 =?utf-8?B?VmFBbjB4OERGbnVIeFo2clEzTGpxV0VUcE8zYkl2anU1enFkcXJpVHVYU0xZ?=
 =?utf-8?B?Y0l3Z2hpTGNGQVd6RDJaaytBUnBjSnlEUkNIc1NoU0p5d01UUjd4ZVgwcXpq?=
 =?utf-8?B?QXRWcFZCamxqS002NmMvQVg0OXdCK1ZBVHF1aGZZekRXK3dqcWxWOXc3R3B4?=
 =?utf-8?B?WDl2cjlGR1FoNzdrQmRGZFBYcGVyenVuWm1UZENremlCRW9iUnlNRHQ0QUdQ?=
 =?utf-8?Q?m7B0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: eb326824-84d0-4954-0760-08dbffd35413
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 14:12:11.6434
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AgQx004ez0TqONlcU9yxhmzPclBGvJB4fe5haqZjBssOmucMh7DJxdnsGwlAuQuAZNSy4DhYuQYEf/2YjVXjVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P195MB1473
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_061219_710050_C1D3B8AC 
X-CRM114-Status: GOOD (  13.40  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] ARM64: mmu: fix mmu_early_enable VA->PA mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RnJvbSAzNGRhYzdlNzNlNDg2ZTg2NGNmYmE1Y2VlMGU1MDNhOTY0MWE1MDJkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogTGlvciBXZWludHJhdWIgPGxpb3J3QHBsaW9wcy5jb20+DQpE
YXRlOiBNb24sIDE4IERlYyAyMDIzIDE2OjA5OjI4ICswMjAwDQpTdWJqZWN0OiBbUEFUQ0ggdjFd
IEFSTTY0OiBtbXU6IGZpeCBtbXVfZWFybHlfZW5hYmxlIFZBLT5QQSBtYXBwaW5nDQoNCkZpeCB0
aGUgbW11X2Vhcmx5X2VuYWJsZSBmdW5jdGlvbiB0byBjb3JyZWN0bHkgbWFwIDQwYml0cyBvZiB2
aXJ0dWFsIGFkZHJlc3MgaW50byBwaHlzaWNhbCBhZGRyZXNzIHdpdGggYSAxOjEgbWFwcGluZy4N
Ckl0IHVzZXMgdGhlIGluaXRfcmFuZ2UgZnVuY3Rpb24gdG8gc2V0cyAyIHRhYmxlIGVudHJpZXMg
b24gVFRCIGxldmVsMCBhbmQgdGhlbiBmaWxsIGxldmVsMSB3aXRoIHRoZSBjb3JyZWN0IDE6MSBt
YXBwaW5nLg0KDQpTaWduZWQtb2ZmLWJ5OiBMaW9yIFdlaW50cmF1YiA8bGlvcndAcGxpb3BzLmNv
bT4NClRlc3RlZC1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4gIyBR
ZW11IEFSTTY0IFZpcnQNCi0tLQ0KIGFyY2gvYXJtL2NwdS9tbXVfNjQuYyAgICAgICAgICAgIHwg
MTYgKysrKysrKysrKysrKysrLQ0KIGFyY2gvYXJtL2NwdS9tbXVfNjQuaCAgICAgICAgICAgIHwg
MTkgKysrKysrKysrKysrKysrKystLQ0KIGFyY2gvYXJtL2luY2x1ZGUvYXNtL3BndGFibGU2NC5o
IHwgIDEgKw0KIDMgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkNCg0KZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NwdS9tbXVfNjQuYyBiL2FyY2gvYXJtL2NwdS9t
bXVfNjQuYw0KaW5kZXggYzZlYTYzZTY1NS4uYzQ3YTc0NDMyMyAxMDA2NDQNCi0tLSBhL2FyY2gv
YXJtL2NwdS9tbXVfNjQuYw0KKysrIGIvYXJjaC9hcm0vY3B1L21tdV82NC5jDQpAQCAtMjk0LDYg
KzI5NCwxOCBAQCB2b2lkIGRtYV9mbHVzaF9yYW5nZSh2b2lkICpwdHIsIHNpemVfdCBzaXplKQ0K
IAl2OF9mbHVzaF9kY2FjaGVfcmFuZ2Uoc3RhcnQsIGVuZCk7DQogfQ0KIA0KK3N0YXRpYyB2b2lk
IGluaXRfcmFuZ2Uoc2l6ZV90IHRvdGFsX2xldmVsMF90YWJsZXMpDQorew0KKwl1aW50NjRfdCAq
dHRiID0gZ2V0X3R0YigpOw0KKwl1aW50NjRfdCBhZGRyID0gMDsNCisJd2hpbGUodG90YWxfbGV2
ZWwwX3RhYmxlcy0tKSB7DQorCQllYXJseV9yZW1hcF9yYW5nZShhZGRyLCBMMF9YTEFUX1NJWkUs
IE1BUF9VTkNBQ0hFRCk7DQorCQlzcGxpdF9ibG9jayh0dGIsMCk7DQorCQlhZGRyICs9IEwwX1hM
QVRfU0laRTsNCisJCXR0YisrOw0KKwl9DQorfQ0KKw0KIHZvaWQgbW11X2Vhcmx5X2VuYWJsZSh1
bnNpZ25lZCBsb25nIG1lbWJhc2UsIHVuc2lnbmVkIGxvbmcgbWVtc2l6ZSkNCiB7DQogCWludCBl
bDsNCkBAIC0zMDgsNyArMzIwLDkgQEAgdm9pZCBtbXVfZWFybHlfZW5hYmxlKHVuc2lnbmVkIGxv
bmcgbWVtYmFzZSwgdW5zaWduZWQgbG9uZyBtZW1zaXplKQ0KIA0KIAltZW1zZXQoKHZvaWQgKil0
dGIsIDAsIEdSQU5VTEVfU0laRSk7DQogDQotCWVhcmx5X3JlbWFwX3JhbmdlKDAsIDFVTCA8PCAo
QklUU19QRVJfVkEgLSAxKSwgTUFQX1VOQ0FDSEVEKTsNCisJLy8gQXNzdW1lIG1heGltdW0gQklU
U19QRVJfUEEgc2V0IHRvIDQwIGJpdHMuDQorCS8vIFNldCAxOjEgbWFwcGluZyBvZiBWQS0+UEEu
IFNvIHRvIGNvdmVyIHRoZSBmdWxsIDFUQiByYW5nZSB3ZSBuZWVkIDIgdGFibGVzLg0KKwlpbml0
X3JhbmdlKDIpOw0KIAllYXJseV9yZW1hcF9yYW5nZShtZW1iYXNlLCBtZW1zaXplIC0gT1BURUVf
U0laRSwgTUFQX0NBQ0hFRCk7DQogCWVhcmx5X3JlbWFwX3JhbmdlKG1lbWJhc2UgKyBtZW1zaXpl
IC0gT1BURUVfU0laRSwgT1BURUVfU0laRSwgTUFQX0ZBVUxUKTsNCiAJZWFybHlfcmVtYXBfcmFu
Z2UoUEFHRV9BTElHTl9ET1dOKCh1aW50cHRyX3QpX3N0ZXh0KSwgUEFHRV9BTElHTihfZXRleHQg
LSBfc3RleHQpLCBNQVBfQ0FDSEVEKTsNCmRpZmYgLS1naXQgYS9hcmNoL2FybS9jcHUvbW11XzY0
LmggYi9hcmNoL2FybS9jcHUvbW11XzY0LmgNCmluZGV4IGU0ZDgxZGFjZTQuLmUzOTU5ZTQ0MDcg
MTAwNjQ0DQotLS0gYS9hcmNoL2FybS9jcHUvbW11XzY0LmgNCisrKyBiL2FyY2gvYXJtL2NwdS9t
bXVfNjQuaA0KQEAgLTEwNSwxMiArMTA1LDI3IEBAIHN0YXRpYyBpbmxpbmUgdWludDY0X3QgbGV2
ZWwybWFzayhpbnQgbGV2ZWwpDQogCXJldHVybiBtYXNrOw0KIH0NCiANCisvKioNCisgKiBAYnJp
ZWYgUmV0dXJucyB0aGUgVENSIChUcmFuc2xhdGlvbiBDb250cm9sIFJlZ2lzdGVyKSB2YWx1ZQ0K
KyAqIA0KKyAqIEBwYXJhbSBlbCAtIEV4Y2VwdGlvbiBMZXZlbA0KKyAqIEBwYXJhbSB2YV9iaXRz
IC0gVmlydHVhbCBBZGRyZXNzIGJpdHMNCisgKiBAcmV0dXJuIHVpbnQ2NF90IFRDUg0KKyAqLw0K
IHN0YXRpYyBpbmxpbmUgdWludDY0X3QgY2FsY190Y3IoaW50IGVsLCBpbnQgdmFfYml0cykNCiB7
DQotCXU2NCBpcHM7DQotCXU2NCB0Y3I7DQorCXU2NCBpcHM7IC8vIEludGVybWVkaWF0ZSBQaHlz
aWNhbCBBZGRyZXNzIFNpemUNCisJdTY0IHRjcjsgLy8gVHJhbnNsYXRpb24gQ29udHJvbCBSZWdp
c3Rlcg0KIA0KKyNpZiAoQklUU19QRVJfUEEgPT0gNDApDQogCWlwcyA9IDI7DQorI2VsaWYgKEJJ
VFNfUEVSX1BBID09IDM2KQ0KKwlpcHMgPSAxOw0KKyNlbGlmIChCSVRTX1BFUl9QQSA9PSAzMikN
CisJaXBzID0gMDsNCisjZWxzZQ0KKyNlcnJvciAiVW5zdXBwb3J0ZWQiDQorI2VuZGlmDQogDQog
CWlmIChlbCA9PSAxKQ0KIAkJdGNyID0gKGlwcyA8PCAzMikgfCBUQ1JfRVBEMV9ESVNBQkxFOw0K
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL3BndGFibGU2NC5oIGIvYXJjaC9hcm0v
aW5jbHVkZS9hc20vcGd0YWJsZTY0LmgNCmluZGV4IDIxZGFjMzBjZmUuLmI4OGZmZTZiZTUgMTAw
NjQ0DQotLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3RhYmxlNjQuaA0KKysrIGIvYXJjaC9h
cm0vaW5jbHVkZS9hc20vcGd0YWJsZTY0LmgNCkBAIC04LDYgKzgsNyBAQA0KIA0KICNkZWZpbmUg
VkFfU1RBUlQgICAgICAgICAgICAgICAgICAgMHgwDQogI2RlZmluZSBCSVRTX1BFUl9WQSAgICAg
ICAgICAgICAgICA0OA0KKyNkZWZpbmUgQklUU19QRVJfUEEgICAgICAgICAgICAgICAgNDAgLy8g
VXNlIDQwIFBoeXNpY2FsIGFkZHJlc3MgYml0cw0KIA0KIC8qIEdyYW51bGUgc2l6ZSBvZiA0S0Ig
aXMgYmVpbmcgdXNlZCAqLw0KICNkZWZpbmUgR1JBTlVMRV9TSVpFX1NISUZUICAgICAgICAgMTIN
Ci0tIA0KMi40MC4wDQoNCg==


