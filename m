Delivery-date: Mon, 18 Dec 2023 13:06:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFCO8-002oTL-2R
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 13:06:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFCO8-0003la-0W
	for lore@pengutronix.de; Mon, 18 Dec 2023 13:06:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BdyuuNQUSeXKhzoBsFzZ35/WvACYOJzrqrcB208tss4=; b=hivlfbFwe23ENJ
	6uTvaJXpacSPCqlRWX6M45OUoR+w98bIJO3WzgaqV+crygSGg10KrzWL9UrbC/8SC5sTxaDZnFCgS
	GbjoTiQx/XLB+Ti2tuhIqBByMd12cPw+YA4GEeEdO5uySaY0xU8IFJUpn9OdET+U6NJdbvpd+DV4x
	b02kGZ0uHYNkNA7RND+IA3zk4W1LfT570cWjXk7lRqrawa6wgKHDlTokUgQn1U2aAng2eGkbKO+qx
	tWbEGnOrcvs9AaQtO8vlCbCTOds3GH+bD4w1dSJaTxH6GL6KZVKrT5DUKCa6k+WvGrC4qr+X9nQaf
	mdgXL55vUBSIZeF5j6+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCMx-00AXR0-1o;
	Mon, 18 Dec 2023 12:05:11 +0000
Received: from mail-db3eur04on061d.outbound.protection.outlook.com ([2a01:111:f400:fe0c::61d] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCMu-00AXMv-04
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 12:05:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OpuLE8d3ZHiM7jgSB8Q2ruWAgYEhGImAip7wqgrX5t8FNoXfmy0+KhtNKKgMYVDN94euuTr2+fxxg5leL4YzU56mFZXOshLAy6jgAl7B2bSsRBUOxA1tahTeBRza+apqHcL2OBB25UiUKJCOZ3c/rZvp435tUQZph5pSYcigIffIui9ZSNdiPujzu/wYW+rW/h73xT5VJ/IrA4yJ5zie7EWPJ8njlAwuK2eVrZPYHUW6qKCRP9Rpa6NKG0defkCY53eqdEblPnK1xhG17s3auglGo19QjbZkScEX8CVN7Q01weRvT+cSSRzLr2QZCGoB8jg08Nvul4xSASgXr+tg2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BdyuuNQUSeXKhzoBsFzZ35/WvACYOJzrqrcB208tss4=;
 b=j2/i1cFKhd43erX76hWIoq+HgTBJTgrBbolUD0z25DlMa247Bf6of4NtLouoKg2UwzI1dKxfQPqAswPg7K5d7yr9e94L1ynpe5M35tKo5YuqjI4lXTpOezji6RZRXdP2abCLhv/DHxECMFVHF0ewB2xgCw+EQGLS1hjAxFoz2hg0oEUBuUdh8UYOdfYQaPXAY0nPfu6LXFZPZYDVM4fHuf1zlX2X9+3S5IA0t+6DG/sTCWY9SYrpYK2AMT83uBjcekmo0J1B1iwckrjiW/P7IuBDFVy1dw5Xrnx5scUx/UggiB5RNrodlgWlmU4QGJRTQKdJIKmpRUkirY0WkQvgTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BdyuuNQUSeXKhzoBsFzZ35/WvACYOJzrqrcB208tss4=;
 b=KdoShlLXWXw1lRE/Jv3tLZnA0MxC2a9J+Kgv2k7XGtkAONr36qA3zs8x0O2FAWyAbZHXC2COy6OHzrE0mWNUIqjtUEyE8FZE1PZqndfZlXWo11gHAe7RTblGK76d2TZ6q7Txrd/wyXV4IVCHsg/+Jnb83kyDBqBQBcsyZkOkP24=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AS8P195MB2123.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:56a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Mon, 18 Dec
 2023 12:05:02 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db%5]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 12:05:01 +0000
From: Lior Weintraub <liorw@pliops.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] ARM64: mmu: fix mmu_early_enable VA->PA mapping
Thread-Index: AdoxqmQDm0EtJ2sSScK4+zUx21QfEg==
Date: Mon, 18 Dec 2023 12:05:01 +0000
Message-ID: <PR3P195MB055567DB185710A642B12808C390A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AS8P195MB2123:EE_
x-ms-office365-filtering-correlation-id: f164278e-94cc-445b-5358-08dbffc1905c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iAt4nWcy09oSfi3kLuf7iAWeiojPxvR5PxGgjTfunAs/lGjtsKhpU8FMkbjAMpUExi1+iB5C5V0vuS7d5wjjefTeioOvMTPloTzouOhaLkn9oGNhonKhwzHzkj3vN4P36cq1oMZWKdLgGkSeMSu8G3vyQ3bCnDigr1kRX+u0qBxPwFY91xg8o7XbYORwTbPCPR2NA7v17dPSVrM6YkmDSvh1zpazNEhGgIGxDbJATRswBUQxxHvXlUfg5lnsaR4FhG0JUForRfkqQ5o9yOpLyEvJV43Mr/WluWlzSnarw+gFbCkE0zhJf6QZJgW+zdNcGkjk6UbJDUH+Tagwu6W3urvqJa0MiICRfHCXyWxujX9/LSEq2N57ibRXMILpGSA55Z49BW4z9VDKlV+tA0aWT4MbAolkOI1UEfjBvcewhPVOzvraQOa8s7C7XASk6hbCQ/QoC3gdinfreblT4BU7dmMeqznSXDiVHLFuv0DbtnSXay9K69u+pHoboQBFgRIP+IRKcHrgiQU78SE/2ptz1keKud6X7TPfIlrx9CBrG+w6PEVSRTwfeyBiHXk515HzVlyKKKm841ZhgM/165BVMOMYqM4Ib+6q4YYUtQi5CYcqzClSwSmzCED/RJkyf0ha
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(376002)(39840400004)(346002)(136003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(83380400001)(26005)(6506007)(53546011)(7696005)(9686003)(5660300002)(4326008)(52536014)(41300700001)(2906002)(71200400001)(478600001)(316002)(8936002)(8676002)(76116006)(66446008)(64756008)(66556008)(66476007)(6916009)(66946007)(33656002)(86362001)(38100700002)(122000001)(38070700009)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YzVIeElINmhFUlFkZnQyeEJtVXFBalpqSWU2VGRlanhydDFnR01zTTlkQnVM?=
 =?utf-8?B?N1p5QWR5SWMzTTJ1U2pSSWN5VVVucmFjVDg2aENWNThNSnE3ZnAxVlE4Q1cy?=
 =?utf-8?B?LzQzU0lZN0dPcTJteUhmczFNTHdOcCtYMTlpUmVnejFvYTc5QTBLSU5MWEVw?=
 =?utf-8?B?Rng1Tjc3Z211YlR0Y002bG9XRldoL2FpZ1FpSE5iTHZuUkdhVnQ1M0pCcUZn?=
 =?utf-8?B?ZU5zK0w4QW51Z01CQ21TdjU3YzVBQk9jVjRwL3gxbUpoN2ZUY3JWaVU4djEz?=
 =?utf-8?B?OWk4NWVKRDZ2Tkx6cFN3c3QxVmZZdHNTaG40eEl5K1ROeWxtZlNVcENIMnlx?=
 =?utf-8?B?S2FNcDhkc0ljWUs0WTdWKzFZWStSWVZsY3FNdE1Fd0JQc3Ava3dqcHE2WVpr?=
 =?utf-8?B?S3RTYW5xWHYxUGdwbGJnWGNBMWNrWVhwNVF6aW5Sdk1abkR2NXJXVUxGa1p1?=
 =?utf-8?B?eE5QMTZTOHdrcm5JTVAyZ1lXRFg5VlhUczdKeHdHd3lSYVZFOGRxcE5LakpJ?=
 =?utf-8?B?eG92TVNuUGZnWkxNSXNDVmgvdG5GdE1LaEh1MzllQXVzWC9pNzJIUDBwRklT?=
 =?utf-8?B?NHpSWmlKK0hiS2cvczJBajdyUnRDNXVBVFhuWDl1THVacUZ5S0ZmZ014a0dZ?=
 =?utf-8?B?UFNwZmdNZUF0dG0wMGVVb1YrTVJwTGRVUWRrNGIwRXlxNmhHck5qZmJGUEZh?=
 =?utf-8?B?dVJhdjVhZEFDdXFpK2xZVmllb3JDSSsyYjlhTy9KdjN4anhzbXJxVWRoK290?=
 =?utf-8?B?dHRLejIvdHFsVnBmSHBTblpWRlNKd2RXcW4vVld2S2lNYmJvR3l0VlZydkx5?=
 =?utf-8?B?eXZwc1JDUmRKQ1IyRWhqbC9xZlAxVS9JTkhFeEQwbmsyM2NUbXlGeThEQStP?=
 =?utf-8?B?UEcrbGxsSDNNSjlhTkVxbm1iQXNRUDhmdTJRUHNKVFU5M0p2QUpRQWM2Vi9u?=
 =?utf-8?B?dVZmT05vYTlsQXFVZTduWHM5RTlvWXFwUW5UNk91a2M1Yy83YTdPWmdCS0d0?=
 =?utf-8?B?NlExMHdmY2NTV3ZzZFU5ZUNsRE03dkZzUkVyd1hyN2thS3pDZDFvMkpwcEkv?=
 =?utf-8?B?R3NjUWMzMUJtRWUxWGZSWWs0RWtITEdXdWVySVpxZ1RjSmZremFlSDJHOE1x?=
 =?utf-8?B?YnZUaXBGLy9CMlRYd2JWeGJSMTFhS2ZnK3FhVng3NU9BNDU2NzNBWVhKL0gv?=
 =?utf-8?B?SEdOZUJLeituU3padHIvd2tSMTdmZnRpUE1MbllGaXFnRGRBUFE2cXRMVmZQ?=
 =?utf-8?B?Y1E3OVUweml2YVJnZWlTcnFmRTFweExhWkJEeVlyRkRjSTBXb1N6UjAvVWNZ?=
 =?utf-8?B?WUJpU29KdFdTaGpjYVljbWt0NnEvOVg3VEZNcWpvajRYdU81UWxpQWVCY0pS?=
 =?utf-8?B?c3FmNS9HZmNTWk42UzN3VWk3ZElIc2tnODl2YThDUEdQTXBiZWlnTmU3eUpG?=
 =?utf-8?B?dHdxZC9NQmR4SzUvOTI0NlB0UmxJTmZJd1lFQ3kvbHc1aDBYRnovNndRNzdi?=
 =?utf-8?B?SWRrdXROWVBoNDVFSW1tRGROZVRnYi8xNmovVWF2VlFtYXg0THc3Sms5QXl5?=
 =?utf-8?B?NVdnSyt2SktEd2dYUFFRWnppRWF1VUpGdm11Q1NOeU1YU2VDM2ZHTUVIbjh4?=
 =?utf-8?B?SWtiS1Rza0F5ekU0NnZrL0dndklpUCs5OCtCVHVLNXplaXYzTCthZmxXcHlt?=
 =?utf-8?B?VnQvU3VUT2hmMkJVejdDbE54R3NVTEhiNmp4Qkg0WEpMUURLU3Nyd3lBQzUw?=
 =?utf-8?B?eFhqWTh0RXltZmpXZ0JvcHBDOTJGVHpIY0JLRlA5akRmVWxqTXdlUHFHclJq?=
 =?utf-8?B?Z0c0dHUzVjRSVFdOZ3Y4S3FGOHlZNlFETnl3azFNQWRERGhodmIwTjJhYUha?=
 =?utf-8?B?dUpnUUJ0UkJySEdOM0hPK2NpQ09MOURCbzR4UVNtNVVJNlZPRWtTQTlQMTZP?=
 =?utf-8?B?ZlhwNkZzSUc4VHlKUHhBT2M0eFAyd09yK1lCbDJVcWNEQ0VBd2pQUlVKVG0r?=
 =?utf-8?B?UEFUclQvVXZrT2JpVURVUjYyZEdEL2pxMy9LV1lPMTMwYUN2VStKaC9NMHgy?=
 =?utf-8?B?dktTODh3VDYwaE82ODJURUo4RmtSaUJWc3NpdjA1blhyODZ0U1AwZU5JY1Bx?=
 =?utf-8?Q?llnI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f164278e-94cc-445b-5358-08dbffc1905c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 12:05:01.8383
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kJkQRpKL4BMtRexoDqWC23bTD1b4QVApR7WRF2U04FeyIjLzDQbHUzizFgQpcd2ygpdkEZIk94/aXsFGZzRtSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P195MB2123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040508_231802_7012FC63 
X-CRM114-Status: GOOD (  13.26  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64: mmu: fix mmu_early_enable VA->PA mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RnJvbSAxYjhmNGVlOWUyOWU3MjJiYmIwYjdkMGY3ZmVkMGFlMjEzZWY4NjM3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogTGlvciBXZWludHJhdWIgPGxpb3J3QHBsaW9wcy5jb20+DQpE
YXRlOiBNb24sIDE4IERlYyAyMDIzIDE0OjAxOjE2ICswMjAwDQpTdWJqZWN0OiBbUEFUQ0hdIEFS
TTY0OiBtbXU6IGZpeCBtbXVfZWFybHlfZW5hYmxlIFZBLT5QQSBtYXBwaW5nDQoNCkZpeCB0aGUg
bW11X2Vhcmx5X2VuYWJsZSBmdW5jdGlvbiB0byBjb3JyZWN0bHkgbWFwIDQwYml0cyBvZiB2aXJ0
dWFsIGFkZHJlc3MgaW50byBwaHlzaWNhbCBhZGRyZXNzIHdpdGggYSAxOjEgbWFwcGluZy4NCkl0
IHVzZXMgdGhlIGluaXRfcmFuZ2UgZnVuY3Rpb24gdG8gc2V0cyAyIHRhYmxlIGVudHJpZXMgb24g
VFRCIGxldmVsMCBhbmQgdGhlbiBmaWxsIGxldmVsMSB3aXRoIHRoZSBjb3JyZWN0IDE6MSBtYXBw
aW5nLg0KDQpTaWduZWQtb2ZmLWJ5OiBMaW9yIFdlaW50cmF1YiA8bGlvcndAcGxpb3BzLmNvbT4N
Ci0tLQ0KIGFyY2gvYXJtL2NwdS9tbXVfNjQuYyAgICAgICAgICAgIHwgMTcgKysrKysrKysrKysr
KysrKy0NCiBhcmNoL2FybS9jcHUvbW11XzY0LmggICAgICAgICAgICB8IDE5ICsrKysrKysrKysr
KysrKysrLS0NCiBhcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3RhYmxlNjQuaCB8ICAxICsNCiAzIGZp
bGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9jcHUvbW11XzY0LmMgYi9hcmNoL2FybS9jcHUvbW11XzY0LmMNCmluZGV4
IGM2ZWE2M2U2NTUuLmZlNWJhYmJmZDkgMTAwNjQ0DQotLS0gYS9hcmNoL2FybS9jcHUvbW11XzY0
LmMNCisrKyBiL2FyY2gvYXJtL2NwdS9tbXVfNjQuYw0KQEAgLTI5NCw2ICsyOTQsMTkgQEAgdm9p
ZCBkbWFfZmx1c2hfcmFuZ2Uodm9pZCAqcHRyLCBzaXplX3Qgc2l6ZSkNCiAJdjhfZmx1c2hfZGNh
Y2hlX3JhbmdlKHN0YXJ0LCBlbmQpOw0KIH0NCiANCit2b2lkIGluaXRfcmFuZ2Uodm9pZCAqdmly
dF9hZGRyLCBzaXplX3Qgc2l6ZSkNCit7DQorCXVpbnQ2NF90ICp0dGIgPSBnZXRfdHRiKCk7DQor
CXVpbnQ2NF90IGFkZHIgPSAodWludDY0X3QpdmlydF9hZGRyOw0KKwl3aGlsZShzaXplKSB7DQor
CQllYXJseV9yZW1hcF9yYW5nZSgodm9pZCAqKWFkZHIsIEwwX1hMQVRfU0laRSwgTUFQX1VOQ0FD
SEVEKTsNCisJCXNwbGl0X2Jsb2NrKHR0YiwwKTsNCisJCXNpemUgLT0gTDBfWExBVF9TSVpFOw0K
KwkJYWRkciArPSBMMF9YTEFUX1NJWkU7DQorCQl0dGIrKzsNCisJfQ0KK30NCisNCiB2b2lkIG1t
dV9lYXJseV9lbmFibGUodW5zaWduZWQgbG9uZyBtZW1iYXNlLCB1bnNpZ25lZCBsb25nIG1lbXNp
emUpDQogew0KIAlpbnQgZWw7DQpAQCAtMzA4LDcgKzMyMSw5IEBAIHZvaWQgbW11X2Vhcmx5X2Vu
YWJsZSh1bnNpZ25lZCBsb25nIG1lbWJhc2UsIHVuc2lnbmVkIGxvbmcgbWVtc2l6ZSkNCiANCiAJ
bWVtc2V0KCh2b2lkICopdHRiLCAwLCBHUkFOVUxFX1NJWkUpOw0KIA0KLQllYXJseV9yZW1hcF9y
YW5nZSgwLCAxVUwgPDwgKEJJVFNfUEVSX1ZBIC0gMSksIE1BUF9VTkNBQ0hFRCk7DQorCS8vIEFz
c3VtZSBtYXhpbXVtIEJJVFNfUEVSX1BBIHNldCB0byA0MCBiaXRzLg0KKwkvLyBTZXQgMToxIG1h
cHBpbmcgb2YgVkEtPlBBLiBTbyB0byBjb3ZlciB0aGUgZnVsbCAxVEIgcmFuZ2Ugd2UgbmVlZCAy
IHRhYmxlcy4NCisJaW5pdF9yYW5nZSgwLCAyKkwwX1hMQVRfU0laRSk7DQogCWVhcmx5X3JlbWFw
X3JhbmdlKG1lbWJhc2UsIG1lbXNpemUgLSBPUFRFRV9TSVpFLCBNQVBfQ0FDSEVEKTsNCiAJZWFy
bHlfcmVtYXBfcmFuZ2UobWVtYmFzZSArIG1lbXNpemUgLSBPUFRFRV9TSVpFLCBPUFRFRV9TSVpF
LCBNQVBfRkFVTFQpOw0KIAllYXJseV9yZW1hcF9yYW5nZShQQUdFX0FMSUdOX0RPV04oKHVpbnRw
dHJfdClfc3RleHQpLCBQQUdFX0FMSUdOKF9ldGV4dCAtIF9zdGV4dCksIE1BUF9DQUNIRUQpOw0K
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NwdS9tbXVfNjQuaCBiL2FyY2gvYXJtL2NwdS9tbXVfNjQu
aA0KaW5kZXggZTRkODFkYWNlNC4uZTM5NTllNDQwNyAxMDA2NDQNCi0tLSBhL2FyY2gvYXJtL2Nw
dS9tbXVfNjQuaA0KKysrIGIvYXJjaC9hcm0vY3B1L21tdV82NC5oDQpAQCAtMTA1LDEyICsxMDUs
MjcgQEAgc3RhdGljIGlubGluZSB1aW50NjRfdCBsZXZlbDJtYXNrKGludCBsZXZlbCkNCiAJcmV0
dXJuIG1hc2s7DQogfQ0KIA0KKy8qKg0KKyAqIEBicmllZiBSZXR1cm5zIHRoZSBUQ1IgKFRyYW5z
bGF0aW9uIENvbnRyb2wgUmVnaXN0ZXIpIHZhbHVlDQorICogDQorICogQHBhcmFtIGVsIC0gRXhj
ZXB0aW9uIExldmVsDQorICogQHBhcmFtIHZhX2JpdHMgLSBWaXJ0dWFsIEFkZHJlc3MgYml0cw0K
KyAqIEByZXR1cm4gdWludDY0X3QgVENSDQorICovDQogc3RhdGljIGlubGluZSB1aW50NjRfdCBj
YWxjX3RjcihpbnQgZWwsIGludCB2YV9iaXRzKQ0KIHsNCi0JdTY0IGlwczsNCi0JdTY0IHRjcjsN
CisJdTY0IGlwczsgLy8gSW50ZXJtZWRpYXRlIFBoeXNpY2FsIEFkZHJlc3MgU2l6ZQ0KKwl1NjQg
dGNyOyAvLyBUcmFuc2xhdGlvbiBDb250cm9sIFJlZ2lzdGVyDQogDQorI2lmIChCSVRTX1BFUl9Q
QSA9PSA0MCkNCiAJaXBzID0gMjsNCisjZWxpZiAoQklUU19QRVJfUEEgPT0gMzYpDQorCWlwcyA9
IDE7DQorI2VsaWYgKEJJVFNfUEVSX1BBID09IDMyKQ0KKwlpcHMgPSAwOw0KKyNlbHNlDQorI2Vy
cm9yICJVbnN1cHBvcnRlZCINCisjZW5kaWYNCiANCiAJaWYgKGVsID09IDEpDQogCQl0Y3IgPSAo
aXBzIDw8IDMyKSB8IFRDUl9FUEQxX0RJU0FCTEU7DQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5j
bHVkZS9hc20vcGd0YWJsZTY0LmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3RhYmxlNjQuaA0K
aW5kZXggMjFkYWMzMGNmZS4uYjg4ZmZlNmJlNSAxMDA2NDQNCi0tLSBhL2FyY2gvYXJtL2luY2x1
ZGUvYXNtL3BndGFibGU2NC5oDQorKysgYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3RhYmxlNjQu
aA0KQEAgLTgsNiArOCw3IEBADQogDQogI2RlZmluZSBWQV9TVEFSVCAgICAgICAgICAgICAgICAg
ICAweDANCiAjZGVmaW5lIEJJVFNfUEVSX1ZBICAgICAgICAgICAgICAgIDQ4DQorI2RlZmluZSBC
SVRTX1BFUl9QQSAgICAgICAgICAgICAgICA0MCAvLyBVc2UgNDAgUGh5c2ljYWwgYWRkcmVzcyBi
aXRzDQogDQogLyogR3JhbnVsZSBzaXplIG9mIDRLQiBpcyBiZWluZyB1c2VkICovDQogI2RlZmlu
ZSBHUkFOVUxFX1NJWkVfU0hJRlQgICAgICAgICAxMg0KLS0gDQoyLjQwLjANCg0K


