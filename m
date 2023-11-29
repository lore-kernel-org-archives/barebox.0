Delivery-date: Wed, 29 Nov 2023 11:14:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Ham-00D721-1W
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 11:14:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Ham-0000ld-8v
	for lore@pengutronix.de; Wed, 29 Nov 2023 11:14:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vDW3mr7nsSk6RShoTVVvcZvSmAfI//xRwP8rznWkkko=; b=T9w0srVMl5r6eq55KjRmrVKzXw
	QC5305d6juFl6UHZ45yCm7KbHXzR8xqxyoT/ibbZwk55IauJMPhk7c53+N/eHvLuqCyui/8hQKWIz
	ABZ2WmH+Hwwt6VqAcTm1SqMMqADZF2OwH1NWzLoghzJjibM3wTWQE7wSZ3Y4UfYPaIVORa6hDUNsQ
	y+8YrSqJz9bH7kqRwMroJpoCDTdK9bTw6q8kp9tLv+e3yKvGPKE1UD/r6C3WWvRCVV/82mSEnwWe3
	bnS3cbUQEbFncQQcVackvXHN+dsH27DiDvGFkzYp3M+OLfRQBjdUi+GyRSvjy4sVmKr+9LNS1RoiW
	wfR+Rd2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HZR-007mBV-27;
	Wed, 29 Nov 2023 10:13:29 +0000
Received: from mail-ve1eur01on0631.outbound.protection.outlook.com ([2a01:111:f400:fe1f::631] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HZM-007m75-24
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 10:13:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HH4C+3j6QmUwLgXOFiPyGCWwgHkc4ja7pi/fvZljE7fXYFrfZ1SSzGsFd9+ztVKLFYZFFedboYGk1OtyPFrvf7yhvNHp8YGv7VwM6dbW5k6RfggS2tCAamyEPcUTgANtg5V3ZGma1/c5E9M23fEpVKNhAXwsOoCdNjs9UkP5y7gjesF12l/vCiBhVK89xS6nbi/YokRS8BjWspxrGYItzZP6x4b2IgcGx6C66J1PXQp31FdcViMU5aXCkPZbEzRozvybA0qpnmoVl+pRqFMnQ3sUhAmyVZhaVEwk7P1sspWuN5mKaIzo7yPjnBgVBydkf0QtcPzYxJvg1QHUZ6L/gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDW3mr7nsSk6RShoTVVvcZvSmAfI//xRwP8rznWkkko=;
 b=INsbYRf7weoz5Tg70TontZFteX3im9Ng44uAbWpttsdbLKZbXQBc5wWuWLUwppOtfZITlinvvQ2I5RgwqD3z4hOgGWTGk9R+j0T+DdZ/K7JHVdJvpIxyHiSQ3cSMpmbfN4rWvGhMQ/+B/qwPodpLcOcRyscju3WQg4g07/EdpjHTeSfkHpg4HMWg7drwSxWNsG5TKUfaal67BJdYa+f/d8PtFeInhbPqao54RLMcGfliIFa2d+h/s0FLcceyQ9jL1EXnjzNO0kkL+NvZANDjAjsU7VMTEoDnwgrwcqpxEeGbD11uvraXQEEmCH7Eg7XBYBAiuBy7TdlN5TzmNFZpVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vDW3mr7nsSk6RShoTVVvcZvSmAfI//xRwP8rznWkkko=;
 b=TqJ2rH+z9Yk8QQp9d8z6rvN19f7mRF49eE2RaDvbG1fLBn28HhVgqrmKJ41DEPv0wRUhiHWPWDUenGgBs6a4MtBxV4MNSM0gmIdbopm3dmGPX1Tt2bjStpVOe0aG3T7f7PyDGekHGH3EEVKlWTe0mB4vLnPLQaPHbU1Iy1yrcuE=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AS8P195MB1221.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:3c1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.28; Wed, 29 Nov
 2023 10:13:11 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db%5]) with mapi id 15.20.7046.015; Wed, 29 Nov 2023
 10:13:11 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
Thread-Topic: Pass user defines for Barebox build
Thread-Index: AdoglJiL6oGXjO/xRl+7MGGh/8RKtAB/9wyAAAWc3tA=
Date: Wed, 29 Nov 2023 10:13:11 +0000
Message-ID: <PR3P195MB05556E1A5C2285F0DEA6EA5EC383A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555B60C3789D5DE6FCF1D4BC3BDA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <c769d8bc-57af-4607-b04f-72e8b5153e2e@pengutronix.de>
In-Reply-To: <c769d8bc-57af-4607-b04f-72e8b5153e2e@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AS8P195MB1221:EE_
x-ms-office365-filtering-correlation-id: 660f7b6a-5df2-4b3b-dfe0-08dbf0c3cab1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mPuHNTSc001YA8Y97nhmNsJPi2PAIoD43m0pzVpJehi0QOQlHQsP5/98uyc1E8h+kbjtPfVOg0G0Owt5H/yZLGtKk2HwdMQ+Xv2xBzfR4QBBBfMx4OSWXoCNRbffYiHu8T72pCfmYgZMRCoKInORCZ5zLAHz69WHX5XD0ArNFn//UWlQ0KWHwd3Y/sFmwI+qTGSqwY6u+nVwlKwEb0arDz/xytI4HybnwkYDeyiMG9secrbxNBWJF9uDYHL0P+KUOvFhMAFWklQh0iDRjUJ/5TE7nt5Oe18Mi+o2sdNXhq79z4tcUzJ8YLtM5G4kw+Pu20KKljeDMhRNvm77JEaNyh09TOONfH82WIf51sqsMDSHP+MYSCus31KbpC2BjVmRcggBEMk10EogkBUhenFlkF4l24HJ1NzGMxZaEiePULdIzoMBA1WQhRQoSkP2o0ngWPfsGJQXLP7hl+H4Efsp7PW1JRFBy/WEmLNGgHKlVTq1zKxpdxqEetify/ZT+xTn25PuR5uHsZMi4+315VD31XHiHylzjjTv6BDsQCg6AAebeMFv5kzOKYD8UnPgICGj/BrjvbD0UNSPgLZXKdcu/QzV2aEiJdpc40CCKVE7aT9xePtWMqiic5QU94jU2Q05jw7m0qKt7E2XC1D2HUL5Jw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(376002)(366004)(346002)(136003)(396003)(230273577357003)(230173577357003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(2906002)(52536014)(41300700001)(8676002)(8936002)(55016003)(66446008)(110136005)(316002)(66476007)(66556008)(76116006)(26005)(66946007)(64756008)(53546011)(9686003)(71200400001)(5660300002)(6506007)(7696005)(83380400001)(122000001)(86362001)(38100700002)(33656002)(966005)(19627235002)(478600001)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUZzbjQrVlZIckFRa2hueHgxcUpqSnN6R2NhcG9wbTNneVU0bjV0ejNxWnM3?=
 =?utf-8?B?TnZXNEdNVEVkbThjL3NoVU1aWlJVZXZlNkVhcm9WTUVuRmZmS0dMa1hxOCtF?=
 =?utf-8?B?SnEwQ0NUN3FXbWQ2ZW0yckp6MUR4akZpWHpvcVpHbUR2STBzNzJhV1lRdGZh?=
 =?utf-8?B?Vy9MUzBYQ0MxdWdlSW50TU9iM2lOQUJWdkw0S0ZVRW5sZ1BZbjhQL2cyQlFn?=
 =?utf-8?B?NDRaT3pnRk41dHNkOUUrSjN6TjNESFUzVFNZMkxqTExyTEFsbUliN1NMSHVY?=
 =?utf-8?B?RkczVi9iTDEzcTQ2TnpvMEVqakx6cjBVazNQeENpQWMwNjNOSnJkY09qVi9H?=
 =?utf-8?B?UHN2ZmxoWnBEMzZWM3JlVzI3dU42OUFCN2hKTlZzdGp6ZnRaLzZNMjlSR0c2?=
 =?utf-8?B?YzVvUHM4bllsczFsU2FoRGtZUUYwL01udkdDTGM1elhjc1QvdGFUdDJkUzRP?=
 =?utf-8?B?MkFzWVV6ZnJaZnI4cENuSFFJRk9HWjM0YTZEWVBBTjErQnRnOWF1S2V5eXEv?=
 =?utf-8?B?dnQ5Wnp6enlweE4wWWpHM282dVYwSzNIRHlLMWl5dWVIVlBiM3V2REVqZGtP?=
 =?utf-8?B?bWIyK2xLQ0xHNG03ODRnOWJuTU1kZ2dCQjE1RU9sOCs1YldQZmwxVXo3eTN2?=
 =?utf-8?B?azhmWjRsc2hsU1U3ZnpHY1g0Z1l5MlFXa3QrMXI3N01BRVdjQmp3ekM3bWht?=
 =?utf-8?B?bWN0d1JSSWN3NUN6aDJZN1NoTkh5MWNpbTE3T1RiVVpFdXgrNXpLdk5zOEZR?=
 =?utf-8?B?aWpMU3cxR2gxSGJ0c21yNkJ2Tlp6dC92UkI4akJGcVRvNzVJZ3RNOUtweGVI?=
 =?utf-8?B?VmZZZDBXZVVmQklWMlgxd2Y3V0hJYmVwV08wZkxiSWZvbzBTTisxc2UxSXRU?=
 =?utf-8?B?UDQ2aVJ5b2FDMWl6VGVmS1M5V3JGS05yWlF6bUU0Wk9KOEVrM1V5Q09NT1Zl?=
 =?utf-8?B?cjl4UUlCRmkyL1hMT1kraGJza2FsWHczNy9DMjJpUndCazdvb1JzZThHQWhV?=
 =?utf-8?B?Y0o0bGFhNFpYbXp1YXZPNWRXazV2REZFTGRYTG1nVG9PNWg1OVZtUGlLQ2NK?=
 =?utf-8?B?SEVxT1Z3Sll0bnJidG1vSzBXSHBIU3hEYnltRUJkeU9yRzI4am5UamZ5NXVX?=
 =?utf-8?B?MVN4Q2EySjYzbE1UaFhHcnA3d2V2VndOS0J2eTRZUzZ3RDdNY01JSU4rYjM1?=
 =?utf-8?B?QVkrZERTYm9uUjRpV2F2UDdXNlErZkZMZzFNWlVIc2xLREdzWS9QZVZmdWF2?=
 =?utf-8?B?SktDR3dZVitkTUN6ZDFOb251TzZLWjR3cGdOalA3MzZVMXhSVTF5TE9kNXJ2?=
 =?utf-8?B?bk5uM0o3N1dWV3pEcXM4eVEzczQzeGhkbFltZGFTczFJdkJmdXV1aWJCc2pY?=
 =?utf-8?B?dXRsYzI1SGwwTkZhZXhSeDRNUjhueVIzZjg1K256OTVYR0gyQzZEcGIxM1dZ?=
 =?utf-8?B?U3lMYkZJWVh2bHhXYzgxeXNaNGtqai9haHRzN09zd2dOWmVIMmpIcnV5dnRM?=
 =?utf-8?B?KzVXZy9rdVpHVXdzQTY5N0haMEE1R3I3WjdlQnliMVRXUmNuYkdDUCsreElE?=
 =?utf-8?B?NVNDZ0JVY1B4dDNFMFVxeXFmdnVrMVdLQjRpMXFoUHRsMjhxSEVsT284bEdr?=
 =?utf-8?B?RFFkL2JLRjVPVGFWbGdkT2t0cm1md1YvWmVZcGxOSkxxb2xNYVhJMUQxNjMy?=
 =?utf-8?B?cUdHTG5UWldFczFHbTZ5NThkak1JU3UwQ1FSeU5oeVRCdFpuY1I0QWI0V1JN?=
 =?utf-8?B?M2doOHo5OUZHS0o2YjhyZHdwQUZMQTlYV1VvQmU0MGQ2cXJNeXU0L0xTTDc4?=
 =?utf-8?B?TUtEWkRFNXE2dzk4cFlveDdPU0VlQ3NRVWRpWnlmME92SzJTL3F4S2FtV3Nk?=
 =?utf-8?B?blRoQm5Lay90VDVwTG9sNHZEcVlHMGpaamdUM1ZlbFF1ZmJqMEg1WnBNTmt2?=
 =?utf-8?B?Z3dpcmhFY1hSVHlMd2RQclpyVFlCS3VQWEN5STlCdTlxQ29JZDFhNWJuR05O?=
 =?utf-8?B?dEtKQTRERHlyM1lSRUpxNUtkc2xuTDh3RWJCZitwYllpbmhBTTdmNjdxZTRW?=
 =?utf-8?B?WkNFa3FnSDVxa1U2UlV0SFB1SjdzSTJOdTJZSksvYXNLSitxaStubnJBZHVr?=
 =?utf-8?Q?+Qfo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 660f7b6a-5df2-4b3b-dfe0-08dbf0c3cab1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 10:13:11.2975
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kMQzdUjMzfkwAm6YVat0uB3Su14ImD1TqYc6vq039oK8q9dKvb2emWdU2x11lR2QqazIHgCqD8TzMyJnU/P52Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P195MB1221
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_021324_879425_1A2FD770 
X-CRM114-Status: GOOD (  28.17  )
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
Subject: RE: Pass user defines for Barebox build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

VGhhbmtzIEFobWFkLA0KDQpPbiBvdXIgQmFyZWJveCBwb3J0aW5nIHdlIGhhdmUgYSBzbWFsbCBw
aWVjZSBvZiBjb2RlIHRoYXQgbmVlZHMgZGlmZmVyZW50IGNvZGluZyBpZiB3ZSBidWlsZCBpdCBm
b3IgUUVNVSBvciBmb3IgdGhlIHJlYWwgSFcuDQpXZSBhcmUgdXNlZCB0byBwYXNzIGJ1aWxkIGRl
ZmluZXMgaW4gb3RoZXIgcHJvamVjdHMgc28gdGhhdCBpcyB3YXkgd2UgdG9vayB0aGlzIGFwcHJv
YWNoLiAgDQoNCkkgYXNzdW1lIHRoZSBvZmZpY2lhbCB3YXkgd291bGQgYmUgdG8gc2V0IGEgbmV3
IGRlZmNvbmZpZyBhbmQgZGVmaW5lIGEgbmV3IHBsYXRmb3JtPw0KQ3VycmVudGx5IG91ciBzcGlk
ZXJfZGVmY29uZmlnIGhhczoNCkNPTkZJR19NQUNIX1NQSURFUl9NSzFfRVZLPXkNClNvIHRoZSBu
ZXcgb25lIChzcGlkZXItcWVtdV9kZWZjb25maWcpIHdvdWxkIHVzZToNCkNPTkZJR19NQUNIX1NQ
SURFUl9RRU1VX0VWSz15ICANCg0KSXMgdGhpcyB0aGUgY29ycmVjdCBzb2x1dGlvbj8NCg0KQ2hl
ZXJzLA0KTGlvci4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBaG1h
ZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPg0KPiBTZW50OiBXZWRuZXNkYXksIE5v
dmVtYmVyIDI5LCAyMDIzIDk6MjAgQU0NCj4gVG86IExpb3IgV2VpbnRyYXViIDxsaW9yd0BwbGlv
cHMuY29tPjsgYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IFN1YmplY3Q6IFJlOiBQYXNz
IHVzZXIgZGVmaW5lcyBmb3IgQmFyZWJveCBidWlsZA0KPiANCj4gQ0FVVElPTjogRXh0ZXJuYWwg
U2VuZGVyDQo+IA0KPiBIZWxsbyBMaW9yLA0KPiANCj4gT24gMjcuMTEuMjMgMDg6MDIsIExpb3Ig
V2VpbnRyYXViIHdyb3RlOg0KPiA+IEhpIGd1eXMsDQo+ID4NCj4gPiBJcyB0aGVyZSBhIGZvcm1h
bCB3YXkgdG8gcGFzcyB1c2VyIGNvbXBpbGF0aW9uIGZsYWdzIGludG8gQmFyZWJveCBidWlsZD8N
Cj4gDQo+IFRoZXJlIGlzbid0LiBCb3RoIGJhcmVib3ggYW5kIExpbnV4IGhhdmUgYmVlbiBicm9r
ZW4gaW4gdGhlIHBhc3QgYnkgZGlzdHJvcw0KPiBzZXR0aW5nIENGTEFHUyB0aGF0IGZvcmNlIGhh
cmRlbmluZyBvcHRpb25zIHRoYXQgcmVxdWlyZSBrZXJuZWwvbGliYyBjb29wZXJhdGlvbiwNCj4g
d2hpY2ggZGlkbid0IGFwcGx5IHRvIGJhcmVib3guIEZvciB0aGF0IHJlYXNvbiwgdGhlIHZhcmlh
YmxlcyB3ZXJlIHByZWZpeGVkDQo+IHdpdGggS0JVSUxEXyBhbmQgYSB3YXkgdG8gaW5qZWN0IHZh
cmlhYmxlcyBpbnRvIHRoZSBidWlsZCBvZiBiYXJlYm94IGl0c2VsZg0KPiAoaS5lLiBub3QgaG9z
dCB0b29scykgaXMgaW50ZW50aW9uYWxseSBub3QgcHJvdmlkZWQuDQo+IA0KPiBXaGF0IG9wdGlv
bnMgZG8geW91IHdhbnQgdG8gaW5qZWN0Pw0KPiANCj4gPiBJIGNvdWxkbid0IGZpbmQgb25lIHNv
IEkganVzdCBwYXRjaGVkIHRoZSBtYWluIE1ha2VmaWxlDQo+ID4gZGlmZiAtLWdpdCBhL01ha2Vm
aWxlIGIvTWFrZWZpbGUNCj4gPiBpbmRleCA0NzFiYmMyNjc5Li5mZWJjOTRiN2YzIDEwMDY0NA0K
PiA+IC0tLSBhL01ha2VmaWxlDQo+ID4gKysrIGIvTWFrZWZpbGUNCj4gPiBAQCAtNDQzLDcgKzQ0
Myw3IEBAIEtCVUlMRF9DUFBGTEFHUyAgICAgICAgOj0gLURfX0tFUk5FTF9fIC0NCj4gRF9fQkFS
RUJPWF9fICQoTElOVVhJTkNMVURFKSAtZm5vLWJ1aWx0aQ0KPiA+ICBLQlVJTERfQ0ZMQUdTICAg
Oj0gLVdhbGwgLVd1bmRlZiAtV2Vycm9yPXN0cmljdC1wcm90b3R5cGVzIC1Xbm8tdHJpZ3JhcGhz
DQo+IFwNCj4gPiAgICAgICAgICAgICAgICAgICAgLWZuby1zdHJpY3QtYWxpYXNpbmcgLWZuby1j
b21tb24gLWZzaG9ydC13Y2hhciBcDQo+ID4gICAgICAgICAgICAgICAgICAgICAtV2Vycm9yPWlt
cGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uIC1XZXJyb3I9aW1wbGljaXQtaW50IFwNCj4gPiAt
ICAgICAgICAgICAgICAgICAgIC1PcyAtcGlwZSAtV21pc3NpbmctcHJvdG90eXBlcyAtc3RkPWdu
dTg5DQo+ID4gKyAgICAgICAgICAgICAgICAgICAtT3MgLXBpcGUgLVdtaXNzaW5nLXByb3RvdHlw
ZXMgLXN0ZD1nbnU4OQ0KPiAkKEJBUkVCT1hfVVNFUl9DRkxBR1MpDQo+IA0KPiBVU0VSIGlzIGFu
IHVuZm9ydHVuYXRlIG5hbWUsIGJlY2F1c2UgdGhlcmUncyBhbHJlYWR5IEtCVUlMRF9VU0VSQ0ZM
QUdTDQo+IGFuZCB0aGF0IHVzZXIgaXMgc2hvcnQgZm9yIHVzZXJzcGFjZSBhbmQgbm90IHRoZSB1
c2VyLCB3aG8gaXMgYnVpbGRpbmcNCj4gYmFyZWJveC4NCj4gDQo+IENoZWVycywNCj4gQWhtYWQN
Cj4gDQo+ID4gIEtCVUlMRF9BRkxBR1MgICAgICAgICAgOj0gLURfX0FTU0VNQkxZX18NCj4gPiAg
S0JVSUxEX0FGTEFHU19LRVJORUwgOj0NCj4gPiAgS0JVSUxEX0NGTEFHU19LRVJORUwgOj0NCj4g
Pg0KPiA+IFRoaXMgcGF0Y2ggYWxsb3dlZCBtZSB0byBzZXQgQkFSRUJPWF9DRkxBR1MgZW52aXJv
bm1lbnQgd2hlbiBjYWxsaW5nDQo+IG1ha2UuDQo+ID4NCj4gPiBUaGFua3MsDQo+ID4gTGlvci4N
Cj4gPg0KPiA+DQo+ID4NCj4gDQo+IC0tDQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+IFN0ZXVlcndh
bGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly9zZWN1cmUtd2ViLmNp
c2NvLmNvbS8xVjY3NXZUNkE1Ni0NCj4gc1NrLVQ5LWJKMnF6dWFKYmlKMEVCX04xUVdQX1VIWVVL
R0J1ajlQQWpSUUhQWXNUZno5ZGVBXzVldjJOckk4N3ctDQo+IGtIN0V2dm90RGRCMU1YUzRPSVls
STNkQ1hUVjBZaGZFWnktDQo+IHdvVDdZa0E3Y2pzeWhpVWt2VkpfUkloYW1LckN1TTMwMGNEbkhU
R3hjYW9jNkg2RGtoVXlzcVhORlk5RkNYanNlcg0KPiBDN2RLVHdpRVB4aGtfcGRWbi1TMC1sVzFZ
akhVLVVvblRxZEJIY0p2QkN0aldrVk9paWhjendWLQ0KPiBUQ3Q5amlhYW05TnFHbl9XcmVSeFdX
VEMwaGNGSDBlQXNCQWkyNzdGUW1zRm54Y0JnYUVLeEk0MEpBREtMdVcNCj4gRjAvaHR0cCUzQSUy
RiUyRnd3dy5wZW5ndXRyb25peC5kZSUyRiAgfA0KPiAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55
ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfA0KPiBBbXRz
Z2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEt
MjA2OTE3LTU1NTUgfA0KPiANCg0K


