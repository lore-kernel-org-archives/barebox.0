Delivery-date: Wed, 16 Aug 2023 12:16:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWDZo-0068WP-6c
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 12:16:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWDZl-0007ND-RD
	for lore@pengutronix.de; Wed, 16 Aug 2023 12:16:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+1Fr1hEVEyAnt8R/8nTKA+9XIRTcVLoMnJTvIlaDzF8=; b=eQ5WRwQsg/G2kDmQofCT4Us+jJ
	VL9oLkK3luema/eNOkl+ixb5QInjFzesxYQeE/9myl/2Ux0xU3H3rtvYRg51PRgxaRdtdZAJSbCf2
	wcd5gmjeQitzl0J8cwzYpG8L/gr+7299eT2DyudMjALji2x8jp+bnKK/E/EIz0G2KJ99OKOeCrnC5
	ADlAxOscN6rY/wccY9XB3G+gWKVVATvMOPHAPw83ld7boiV61UBqOtNaE5BQDccBeflxQzDvp6Oe2
	BBG+d0w3Oh/y9rGLe2N3G1E6+IGGoVD+baStkDXSJBf9iWofBtzaw3ZH2pdBRfYENsNo+8NSMQlF/
	4V+ViZQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWDYa-003iAG-2F;
	Wed, 16 Aug 2023 10:15:16 +0000
Received: from mail-db8eur05on20609.outbound.protection.outlook.com ([2a01:111:f400:7e1a::609] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWDYW-003i9A-14
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 10:15:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CcedoINBYPw9BzrRDGPs48+mq8FDpQS99rpGlRDo1ehqPnTFSP5IN5s5q3wuyh8VAyMI+NNfMuxgdJ/VKcZzoHdbOHu+QBLhFI0f8bNMz0dVTAxQAixv/jJoos273hpz2Da8r7rJ5v4KcjP2eNqkWDP7Bzr9ANgOWoVoRV0zV/ACHPuxFAf0SXet0q5mFkr+zzIo95jg9qaVFsVTJVsdHf1BndjNwjxQ35OjH4YjufhdTDatwc8mImZcVvoHiiG5wUwz6FMeHL+PeU0gP5f1OdsAVJl6mOMI20mL1STdr9YQtCKMYdfs/3SxGmo1HM4U4nJAjjTTDkJSIZuzXckh0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+1Fr1hEVEyAnt8R/8nTKA+9XIRTcVLoMnJTvIlaDzF8=;
 b=QBlSYSnPNBW0dVOdfufy53lZ7ctA0pnFgpS2GDG8gXDeNtdiCHpzZr2NcSADBoV9t/XFrpyH5x6BcdpnTpBYMKOdkV3d6NWHMOsV/NDNMujp+1OmlevSlVgb8oKPwpwYuNRlAdiyLqA93hodDWQGUBMP658xfkYINpPFWDzVdv2UEFiQ0z41r4qL9+/ZTOZgaR+CAnV2vRcaDvxB1K39MFI82RYLq+z70I+L60L6EyLDCQ6UBUrH2pxXDTI10pu/YzbcLJTvGZDlkCcmFGXaYaFJFynIHPcv5VL3tJjv51+9pYvhvzdYTCrD1tggqxvz9IBMLyUrCFG1r7fmpc5j5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+1Fr1hEVEyAnt8R/8nTKA+9XIRTcVLoMnJTvIlaDzF8=;
 b=hLHDtgl3N7G7OEWIck/iWZwNnwcr05Y+tiNxkZA72ERbROrJLc3/IvdFnh/bID0cdgRl9SiOqHiA0cDBa37RVIJD+HxPoUnfVGOLusJ/f3dilXFURdpf/SHBn4jorpHQ5FUkfb+PKpw63z4QHT9kxx92i+wDOjIE7WAWvCxFkPw=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by DB4P195MB2017.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:387::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 10:14:59 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 10:14:58 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
Thread-Topic: ARM: aarch64: lowlevel: potential bug in arm_cpu_lowlevel_init
Thread-Index: AdnOnQXgXYDt2cKZSYekXmjH6b9DyABi6SAAAAA+kyA=
Date: Wed, 16 Aug 2023 10:14:58 +0000
Message-ID: <PR3P195MB0555474B08A4CAF79B7AF804C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555C0CAAE5F70743B7DC534C317A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816100146.GF5650@pengutronix.de>
In-Reply-To: <20230816100146.GF5650@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|DB4P195MB2017:EE_
x-ms-office365-filtering-correlation-id: 119a650f-ee58-4bc2-85a5-08db9e41a56b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: If3xU6GpcdtfDcklhYnDRDu7zv9Or6DdBbGfdq3tKtCMXZPacc0HseA0QF228VetOk940b7u7zlB4yrRp/SrwK8RwCGLv7l3v01r6Cdt0EvvVygAWe8s5sED6UhoaUgK+Z3TZtlJ8nTkhnpMgyF9Cghk8Kt4VXfaP7qCxc4rOHPq8b21wC1EDPHbwTiXXDDj0O362cR/t8/Buk1c7KVY+BWtw+6QHbJseZP2jPX3K94MsXvFIhssFzXvGaxEGw494ikmws3JngoXFxc6Me5B2jRXlfcfWcKU8U8b/oAtGlR8aymYszQcJoY3hXd+uK2kEq4jRmq8ljVLNzaFIuEBulF9t5wLNQTMKQ8IGSJCgdnNAPvsgoyMar7B8Z14u70MWcnfvH0827awyBoEI+V0e3o9yuuDsV9L8Hpxu3qUuN7meovUmdUajVGUabsPQkh6Fuewmii2WmF79eutO1DM9p5/YRXTg9syeIRafUr5uBeGPM8X1vaH0ifCPpvVt1tCioc6a8V4WL0ZZzhNj0vpXRq8G0PF5JOYOvv6prjLyyzGE2hC9xHobioud52m3ubS3wPrzLUrY5FmYCpAR4clX3Iee5H2qbYwvV03cx2T0+I=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(366004)(136003)(396003)(39830400003)(1800799009)(451199024)(186009)(2906002)(83380400001)(86362001)(478600001)(7696005)(6506007)(71200400001)(33656002)(9686003)(53546011)(26005)(55016003)(966005)(5660300002)(84970400001)(41300700001)(52536014)(122000001)(6916009)(54906003)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(76116006)(8676002)(8936002)(4326008)(38100700002)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UlZ5Wlp1WTRvbTQ5Q0t6SEpoU1RmdVE3U3U4TkZaam5jQzdkd1JxRlBPc011?=
 =?utf-8?B?Yld5TVFObmFrRUxrNUVIVjB6QVNUYTdBKzBNaUtWZW5zZTdJdkVybldsUmh5?=
 =?utf-8?B?K2FseTIzSDNWZXJ4VXIvSjdaWVpUcWJIREI5NVBadEJvd0poV210b09iTzN4?=
 =?utf-8?B?ZzRkeW1sUWlPaWFVM2E0SFE4aHhIVEw5NVM0U2RtdmFPSUtDR2xUN0hDTnNN?=
 =?utf-8?B?bjM5MmxZcWdSalBFSUpGWUhNS0JObHgzTU5DcWYrUjN2RXVCaWxWQjJ6bFZG?=
 =?utf-8?B?WTRFWnNlOThRUGs5ajJ0RWMva2NqTy9TNG1uRlhTUFk1YlFRdFo3TTA1R0U2?=
 =?utf-8?B?UTNaZ2EvRjNaSWxtdmNjbUcxemhaTkh1WnllS1E1MTk0eGM0NzJ0Mk1iaW9k?=
 =?utf-8?B?WjRTb012akIzZGFIWUJvbnRXZWp4NDB5SE5HazRReTIzN08xNEsxNy9ReEM1?=
 =?utf-8?B?eUt2TzdXTld2dGRMa1FISkpSZEJNNXN2ekdXalM2M1hXWEtQK1dVd1M4UlJ5?=
 =?utf-8?B?clQ1M0VCQWxlS2x5aGhMdjhPTzd5aThBZkt5Z3ZENHl2d2hTSkkzRHl0VS9Y?=
 =?utf-8?B?QlNrbXhKaUx4dmJ5U1JuMDNMczQrZUtTSkZVRnJzNTRyZ0JoNXgxNkJGOTNv?=
 =?utf-8?B?a01CWWVhWU5seHhwaU45Z1M2NXcwWnRBODIvcndnczFZZ09hQWcvM2tNcml3?=
 =?utf-8?B?MkFhSmtQbTQza3ZLRktVdmlsUEMwbXhNbHhObjBXSEUxTGk1NmlkSDNRQ2kw?=
 =?utf-8?B?T044ekNESlh6L1ZDeU5rR0FHTUZ0QnNVT1Frb3REUlhPOEwwMFo4Y3lvR3BK?=
 =?utf-8?B?dUhZWHlaVEk0dXVwUjZFRHQ3ZmpXS1NUcVB6eVRDeVFsNkdHMjEyMWw2Skc4?=
 =?utf-8?B?NmxKSm5PVXFMTkRrbFEvK21Iby9lR3pFdkhVWXpIUTQ4cVFERG9oOUxKQkFM?=
 =?utf-8?B?WlBoeTdpV1FLOGxJU3IwSjdmV3lybUp2ZUt1b0ZhRVJVZ01WUU1xb0d2Y3JZ?=
 =?utf-8?B?VDdLbEJOb1NMdEJ6OTRRQ0o3TWFVVEZVRHFaZ3g1WW5JZWEya3BXb2VzN0F6?=
 =?utf-8?B?VVhpdjF0cjdSQ2NzemNzMFkxM3lhZ00zSlhRbHpLVkd0amQ3VTFXdVlweHE0?=
 =?utf-8?B?cEJlQ2VESGNxS2tGakMvSHpkdFltWUV5OEgrYUg5c1p3VS9RVm9saUNDZFVy?=
 =?utf-8?B?VXdZQ2kxT0E5UXFpM2s0dWwvTUFBN1cyMkFMYWJGTnNRL2hHQ1lCaVlKaWR4?=
 =?utf-8?B?aXk2dmlXMEtEVWxvbEZBblRjU2d4dUcyOC9EY1lsL1R6NHQzYXhyOWs1RDNy?=
 =?utf-8?B?dXREblAxSC9VaE9wTFp4RDMwbE9UNDd5SXpySkVGL1U4Wm1aMDM5Mk9GVDNC?=
 =?utf-8?B?RHNldzV1dTYvdTVtVDI3Q0JWSnN3QnBCVUxUci9UdXVSV1lkbHBMK2pkWk15?=
 =?utf-8?B?RGJTR2QzaG5XSmM0dGJjck9YYW1qSjNrZnNieVpCcnc5WFBvNkNMVlZwbVRk?=
 =?utf-8?B?WFE0N0l4OElmWWs3TVFnZkJsU0xmMGl4allxc1pIa1dNclVGSC95cDYwRTF6?=
 =?utf-8?B?M0NvNWhoM1Q0VE9FRDkydTJkZ3Q2MkZwNnZZZk0rR3Q0T004MEhkRXFad3Vv?=
 =?utf-8?B?SjB4Rkl3bEMrZm5hL1k1S2pvMFJETU5pdG1UYnZaYlVXa21Fb0laYi9Zb2h4?=
 =?utf-8?B?T3pVSXA5d3VaZTZidS93NUVJYmxNWVg2d1RMcDk3MHREN0gwTXNzK0x6aURE?=
 =?utf-8?B?VUJzcEo5RDZrNWMrTjRUM08yMGE2T0tRZUdleDQ3UUhGaFpoRlZBRkhXNFB6?=
 =?utf-8?B?aW05M0FWamVhMmV0MDVmTlZGMVpDZS9tc2k5TTkvS3ROTFc0NmdFM3JZK2VG?=
 =?utf-8?B?RWZpMUR1NXkrdkVnY2JmWlFqMTUxd3l4SzdNNVd0anlNN0FaZCtkdHNBWS9l?=
 =?utf-8?B?cTVBMmtHS1ZjMWhDRHBmbVNhMVFhQ1pnMDFtNzRaT2Z6eEVGU2Ywc2k3ZVdz?=
 =?utf-8?B?M0Q1OGh6cWFFQ3ZnYU1WLy9yY3lSOTNVNGVhYk5naVB5Z3RVM0Fydk9tbzMy?=
 =?utf-8?B?Y0NrZTFiSitHeFovL2FTSWtielhEQTIvVEh1cWpyak9QcmFyRDZMYmlTRzV5?=
 =?utf-8?Q?u4pM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 119a650f-ee58-4bc2-85a5-08db9e41a56b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 10:14:58.8144
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WQvL6iYTAJtXX5Aitx34x/vHRfvOxrN/JJ3ubp3uhmOiJPbDrkzPDVMkR8cFwF5qijxnJ9JLOH83dSuMCX4tZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4P195MB2017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_031512_445666_5ACBDD61 
X-CRM114-Status: GOOD (  32.13  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: ARM: aarch64: lowlevel: potential bug in arm_cpu_lowlevel_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhhbmtzIFNhc2NoYSENCg0KQWN0dWFsbHkgdGhlIGJvb3Rsb2FkZXIgaXMgc3RpbGwgdW5kZXIg
ZGV2ZWxvcG1lbnQgc28gdGhlcmUgaXMgbm8gcHJvYmxlbSB0byBjaGFuZ2UgYW5kIHdvcmsgd2l0
aG91dCBNTVUuDQoob3IgYXQgbGVhc2UgZGlzYWJsZSBpdCBiZWZvcmUganVtcGluZyB0byBCYXJl
Ym94KS4NCkkgdG90YWxseSBhZ3JlZSB0aGF0IGlmIHZpcnR1YWwgbWFwcGluZyB3YXMgdXNlZCBp
dCB3b3VsZCBiZSBpbXBvc3NpYmxlIHRvIGRpc2FibGUgdGhlIE1NVS4NCkp1c3QgdGhvdWdodCB0
aGF0IGl0IGlzIHRvdGFsbHkgaGFybWxlc3MgdG8gYWRkIGBkc2Igc3lgLg0KDQpDaGVlcnMsDQpM
aW9yLg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFNhc2NoYSBIYXVl
ciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4NCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgMTYs
IDIwMjMgMTowMiBQTQ0KPiBUbzogTGlvciBXZWludHJhdWIgPGxpb3J3QHBsaW9wcy5jb20+DQo+
IENjOiBhbmRyZXcuc21pcm5vdkBnbWFpbC5jb207IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsgQWhtYWQNCj4gRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4NCj4gU3ViamVjdDog
UmU6IEFSTTogYWFyY2g2NDogbG93bGV2ZWw6IHBvdGVudGlhbCBidWcgaW4gYXJtX2NwdV9sb3ds
ZXZlbF9pbml0DQo+IA0KPiBDQVVUSU9OOiBFeHRlcm5hbCBTZW5kZXINCj4gDQo+IEhpIExpb3Is
DQo+IA0KPiBPbiBNb24sIEF1ZyAxNCwgMjAyMyBhdCAxMTozNTowNUFNICswMDAwLCBMaW9yIFdl
aW50cmF1YiB3cm90ZToNCj4gPiAgICBMaW5rOiBbMV1GaWxlLUxpc3QNCj4gPiAgICBIaSBBbmRy
ZXcsDQo+ID4NCj4gPiAgICBJIGFtIGFza2luZyBhYm91dCBhIHBhdGNoIHlvdSd2ZSBpbnRyb2R1
Y2VkIGFib3V0IDQgeWVhcnMgYWdvOg0KPiA+ICAgIENvbW1pdDogY2Q2ZTE4NTdhNmE4MjRkNTYy
YmQyNzM3OWQxOTE2MDJjMDc0ZjZiNw0KPiA+DQo+ID4gICAgRU5UUlkoYXJtX2NwdV9sb3dsZXZl
bF9pbml0KQ0KPiA+ICAgICAgICAgICAgICAgICAgICBzd2l0Y2hfZWwgeDEsIDNmLCAyZiwgMWYN
Cj4gPg0KPiA+ICAgIDM6DQo+ID4gICAgICAgICAgICAgICAgICAgIG1vdiAgICAgICB4MCwgIzEg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKg0KPiA+ICAgIE5vbi1TZWN1cmUg
RUwwLzEgKi8NCj4gPiAgICAgICAgICAgICAgICAgICAgb3JyICAgICAgICAgIHgwLCB4MCwgIygx
IDw8IDEwKSAgICAgICAgICAgICAgLyogNjQtYml0IEVMMg0KPiA+ICAgICovDQo+ID4gICAgICAg
ICAgICAgICAgICAgIG1zciAgICAgICAgc2NyX2VsMywgeDANCj4gPiAgICAgICAgICAgICAgICAg
ICAgbXNyICAgICAgICBjcHRyX2VsMywgeHpyDQo+ID4NCj4gPiAgICAgICAgICAgICAgICAgICAg
bXJzICAgICAgICB4MCwgc2N0bHJfZWwzDQo+ID4gICAgICAgICAgICAgICAgICAgIGxkciAgICAg
ICAgICAgeDEsID1TQ1RMUl9FTHhfRkxBR1MNCj4gPiAgICAgICAgICAgICAgICAgICAgYmljICAg
ICAgICAgIHgwLCB4MCwgeDENCj4gPiAgICAgICAgICAgICAgICAgICAgbXNyICAgICAgICBzY3Rs
cl9lbDMsIHgwDQo+ID4gICAgICAgICAgICAgICAgICAgIGlzYg0KPiA+DQo+ID4gICAgICAgICAg
ICAgICAgICAgIGIgICAgICAgICAgICAgZG9uZQ0KPiA+DQo+ID4gICAgVGhpcyBjb2RlIGhhcyBp
bnRyb2R1Y2VkIGEgYnVnIGluIG91ciBiYXJlYm94IHBvcnRpbmcuDQo+ID4gICAgSXQgY291bGQg
YmUgb3VyIG1pc3Rha2UgYnV0IHRoZW4gYWdhaW4gd2UgY291bGRuJ3QgZmluZCBhbnkgcHJlcmVx
dWlzaXRlcw0KPiA+ICAgIGNvbmRpdGlvbnMgdGhhdCBib290bG9hZGVycyBuZWVkIHRvIG1lZXQg
YmVmb3JlIHBhc3NpbmcgY29udHJvbCB0bw0KPiBiYXJlYm94DQo+ID4gICAgcGJsLg0KPiA+ICAg
IFRoZXJlIGFyZSAyIGJ1Z3MgdGhhdCBjYW4gaGFwcGVuIGhlcmU6DQo+ID4gICAgIDEuIFRoZSBi
b290bG9hZGVyIGVuYWJsZWQgTU1VIGFuZCBzZXQgdGhlIFNSQU0gKGdpdmVuIHRvIGJhcmVib3gp
IGFzDQo+ID4gICAgICAgIG5vbi1zZWN1cmUg4oCTIFRoaXMgaXNzdWUgY2FuIGJlIHJlc29sdmVk
IHdpdGggYWRkaW5nICJkc2Igc3kiIGNvbW1hbmQNCj4gPiAgICAgICAgYmVmb3JlIHRoZSAiaXNi
Ig0KPiA+ICAgICAyLiBUaGUgYm9vdGxvYWRlciBlbmFibGVkIE1NVSBhbmQgZGNhY2hlIG9uIFNS
QU0gKGdpdmVuIHRvIGJhcmVib3gpDQo+IGFzDQo+ID4gICAgICAgIG5vbi1zZWN1cmUg4oCTIFRo
aXMgaXMgYSBiaXQgaGFyZGVyIHRvIHNvbHZlIGJlY2F1c2UgaXQgbmVlZHMgdG8gY2FsbA0KPiA+
ICAgICAgICBjYWNoZSBpbnZhbGlkYXRlIG9uIHRoZSBzdGFjay4NCj4gDQo+IEV2ZW50aG91Z2gg
aXQgbWlnaHQgbm90IGJlIGV4cGxpY2l0bHkgZG9jdW1lbnRlZCwgYmFyZWJveCBub3JtYWxseQ0K
PiBleHBlY3RzIHRvIGJlIGNhbGxlZCB3aXRoIE1NVSBkaXNhYmxlZC4NCj4gDQo+IFdoZW4gdGhl
IE1NVSBpcyBlbmFibGVkIGl0IGNvdWxkIGhhdmUgdmlydHVhbGx5IGFueSBtYXBwaW5nIGFuZCB0
aGVyZSdzDQo+IG5vIHNhbmUgd2F5IHRvIGRpc2FibGUgdGhlIE1NVSB0aGVuLg0KPiANCj4gSWYg
eW91ciBib290bG9hZGVyIGVuYWJsZXMgdGhlIE1NVSBhbmQgdGhlcmUgaXMgbm8gd2F5IHRvIGNo
YW5nZSB0aGF0LA0KPiB0aGVuIGl0J3MgdXAgdG8geW91ciBib2FyZCBlbnRyeSBjb2RlIHRvIGRp
c2FibGUgdGhlIE1NVSBiZWZvcmUgY2FsbGluZyBpbnRvDQo+IGJhcmVib3guIFRoYXQgc2FpZCwg
d2hlbiB0aGVyZSdzIHNvbWV0aGluZyBjYW4gY2hhbmdlIGluDQo+IGFybV9jcHVfbG93bGV2ZWxf
aW5pdCgpDQo+IHRvIGhlbHAgeW91IHdpdGggeW91ciBjYXNlLCB0aGVuIHdlIGNhbiBkbyB0aGF0
LCBidXQgSSB3b3VsZG4ndCBjb25zaWRlcg0KPiB0aGlzIGEgYnVnIGluIGJhcmVib3guDQo+IA0K
PiBTYXNjaGENCj4gDQo+IC0tDQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+IFN0ZXVlcndhbGRlciBT
dHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly9zZWN1cmUtDQo+IHdlYi5jaXNj
by5jb20vMTdSZFNjUF9UQm9YcWMxSWVyd2haWDhrQUhocXV0akFuQnlQaVVNNWxOWkp5TjZPRA0K
PiBqa2RUbnlZQ3pycXBSWjltZExnNHdwLWRaaUVsQWFrM2lTN2xmLVlRd05GU2F0dHctNHp4SXQ2
cm9fcUhoLQ0KPiA4b3ZLMzNUQmRNbnI1cUw1cVBLRlVyaVlZUThiTE1Bbk1IYTRiS3RUSWZoWkky
ZVNYVXI2aHFqRGNub0taDQo+IEdLVU8yZGJCRFhjZVgzTlQtcWw5R0Jsd2RILW1ta2hkOWZnWVYy
cjBVdFI0b3Q1ZDU4aGc0NUpUSi0NCj4gTHN1dk5WTXNLckZaZDFJdTNBaU1Tam1pNEU1QkRjNktw
UXhfTWdBRDQxMEZRV0MwSHBEYXZoU2MxREMNCj4gQmdkTU8yUmxHclprMEwtDQo+IFN0M25feUhf
UVp2SDRVZmpZL2h0dHAlM0ElMkYlMkZ3d3cucGVuZ3V0cm9uaXguZGUlMkYgIHwNCj4gMzExMzcg
SGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIw
NjkxNy0wICAgIHwNCj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAg
IHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwNCg0K


