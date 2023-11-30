Delivery-date: Thu, 30 Nov 2023 08:32:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8bX8-00E7VO-17
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 08:32:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8bX8-0003Y0-2l
	for lore@pengutronix.de; Thu, 30 Nov 2023 08:32:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Flx4ons8nR2AuzxT9HCp1k4x14G1Wnaul20JPXP+Wgo=; b=yFwR6iJho1R2KOWW+9UBEm05Ew
	MV3W0TW8B6b516ygn7oY2kSnkMBiIa90KO4ye3TN522G/2VfqiRK4eV8CZxkQ/e9ofHwB/cThIvkT
	Y3NDwyaj7trvVyoZeMiNBWl1zveQP44uc6TvrUd9bi0b1IyZofQrtDqFq/JWXEekiOXdX7Rj73iiX
	ptKlscx2RmvD5G0ptuSKO7fKntMs5W5VWlWdMgyQA4kr3OO6kZX3qM+a3aYTnIpijycsCe1krrNLF
	N1g8CbmYmr40rGE/6r7Wz969G5qqMxG1LZRFoH3+CKSKDMduytn/zR31GXMalgi5zrnSgCRMBgSyP
	n4HC3J+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8bVh-00A6Rx-10;
	Thu, 30 Nov 2023 07:30:57 +0000
Received: from mail-db3eur04on0618.outbound.protection.outlook.com ([2a01:111:f400:fe0c::618] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8bVc-00A6RH-31
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 07:30:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZxclrME6tdGZa3NH7cFAj9qVj8mIFTeTjhmMtJfysuDWgqalLJyLt/NEtWjtX5hlwqSJ2lJR42KtpLClJ5neA3CCXntg4qQJN0SIi1t+fgfT6xlAg9CYj2j5R/3d2VznnrBQ42pWX/6+x+lhbYEHiqOt6KiQRHygMo88B/gThJAwdYqkUyp2IgbLI/c/RcOeKDAhywWQeLs4HjSxfPbVtHHHW+V4w8cv7fTcAutmKNBYsr3ORW7IDEiINgdbePuLjSCQr3C5pQwRnJxkrMGzz2IEm/2PFNuSn1bXPJohJ0aSsb0WtUDvCNd4SiOsACIW9FpN+/wcps89NNIjVzXNyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Flx4ons8nR2AuzxT9HCp1k4x14G1Wnaul20JPXP+Wgo=;
 b=d2h00JHBw7UA60SOiCIh+9+kZevREkSizQMQu8ULkYs4Psc2qea2taMDiykDoW6GSrvMSNq3ReDPPFISU37XB8JgLeJNxdBlb7w/2P/SQGQXKybwjcZtxxCn4W9WTFuiRkCimntiII0TehOHiFRiSF+zIXaLQFcgNO3/snfSfTUJg7uRlhmUPBPhZGwcAdVA+6MLhRLbioWDOssZNAOwSTXhVtT0j0D8CMObDxzkiK9yYQ+1+1PWbANioHub163SlJC2SsdPZZJWnTXOd0wXThoxUNYvE0s8VwJMc+r/98oN/WzWbXTup6JhpxZ1pl3GYg7JtgeaFTAc/XuzT6yNag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Flx4ons8nR2AuzxT9HCp1k4x14G1Wnaul20JPXP+Wgo=;
 b=SmwdBA0QrQTE/r1DcDf1krONR5ySlopQ4eUKzqw0vBb1tUyAqttSgbRl5RQC8aoxGfs3r6/85SYNPfVVaNvPg8A5BJcW6nro6Y597MnFkLTP6a9nDX9L9WQMrKFYkBdxQBLR8q/HVc3PMfD/PCNdJ8jUThgD/XKrHjEcxTNs8Kk=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by DU0P195MB1841.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:3b3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Thu, 30 Nov
 2023 07:30:43 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db%5]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 07:30:43 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
Thread-Topic: Pass user defines for Barebox build
Thread-Index: AdoglJiL6oGXjO/xRl+7MGGh/8RKtAB/9wyAAAWc3tAALPj9AAAAFDJA
Date: Thu, 30 Nov 2023 07:30:43 +0000
Message-ID: <PR3P195MB055565F1563B777167B9441CC382A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555B60C3789D5DE6FCF1D4BC3BDA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <c769d8bc-57af-4607-b04f-72e8b5153e2e@pengutronix.de>
 <PR3P195MB05556E1A5C2285F0DEA6EA5EC383A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <1349c023-d0dd-49f2-9d91-e3c870430cf3@pengutronix.de>
In-Reply-To: <1349c023-d0dd-49f2-9d91-e3c870430cf3@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|DU0P195MB1841:EE_
x-ms-office365-filtering-correlation-id: ff0b937d-9cf6-4a16-5d27-08dbf1764327
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yUoKb4wbBjoH94FchzUJKZxXpdatXDPxCXyk0a7hX+v8kjwtGJglb65oMPB3j6m32qzUhVRzcbckdD8+d3XmWNjhp1APrWTDuG1KNS2zbhyugRcNX4CF8M/UP78q/rJHYkwfGx6fAVIJra9Sm28vjBGLs/BQfBP8NY3RGtmapw/I5mae/JIuy1I65HUIGztMlvo2Bb7QxY5gYOUOL/5jkrlCgvsYt1Zcln2g7S5SvLU0G497GHX3vDIINXPzRNt16jNsR53toSi+iJVqKkhj9Kop88wY4wp0cur+35q/2uLFJmg8W52hY/SgcNI3u/g2IcQaLV3/xGe7Z5ZG9aNiNiVp1RqlsFIGB9tX8gsH8mHzs7sG0lp3j/gZ3MSuyH1IFdBOYayEIAqzgwJxwKfhB25VpRSpNPbcegsk2M41irgOyzpCoolOHSAHVVoYW9UZuRIhwfU8qNaoUw4vZmx3d3ZCAU2OnyHXRc7N4MgH5Rsm4/dGdBBMSw/Wd5EhRF42A/8Xo4yeKhU+8KqmQSV9WhKd5BMziWgNbaoT3Zg/rDFanK2rZtrB8adnLBTH8fz0p3/TFLApwuTqZvikRNaC+6ur8aITsNAtui8M9sVn9rSPbT+XaWU1AUpcCR+GPIYoddRJN2Fc5+MwcosFY3fn8JNYX3hY26Ls7y7sJ933ZeQdCdwQ0d20l8dLrGE6Xe6g
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(346002)(136003)(39850400004)(366004)(230922051799003)(230273577357003)(230173577357003)(64100799003)(186009)(451199024)(1800799012)(55016003)(84970400001)(38070700009)(202311291699003)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(71200400001)(38100700002)(33656002)(86362001)(122000001)(83380400001)(26005)(6506007)(9686003)(53546011)(7696005)(19627235002)(966005)(2906002)(110136005)(316002)(478600001)(5660300002)(8676002)(41300700001)(52536014)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTJqS3hOSS9kT0hRWUhlaFJFMWsyelpLZitCTTY4cVlYZzBvN3Q3WEd3WVNM?=
 =?utf-8?B?Y1hQRnZqTnY2ZHNJKy9UQUNwcXFOMXBuUk5ybkVpRmlmRXVYcG4vMGQ4bEo4?=
 =?utf-8?B?cTRhbEJqaDY4WGF3UlgwZHhMV0J4elRNT3R0MlZTakkxaWZYczhxNnhqNm40?=
 =?utf-8?B?aHI0b1M4MTAzZm00S3J5eDhITVdPbllEYitSTTlpQXlTREFXMDdvUzZVbDdj?=
 =?utf-8?B?aGZ1SitTZS9iU0FtcVMveDN4YjdhS0w2Ni9KdmxDeTN5cHJaMWRuSCsyZmp6?=
 =?utf-8?B?d2ZIYmd0bkFPRURGbG4xcWxOZmhyZUpoU2o1MGUzVkl1TzNzU29ZQzRsRWNu?=
 =?utf-8?B?UmorNDRLaFlMbGNzTkNiN0hEd0hUY1FYUUpRZC9YVzdTREtZR1lmWnU0OTBE?=
 =?utf-8?B?ZXZEZ3QzNndIL0F3QzhUb2RvR09rcDExMjJTd3RaSUM1M29vN1daRmdXaEty?=
 =?utf-8?B?ckFSdFliUHp3VU9RcEFMWjBMSlZ6dWE5OGNDS3pheWVheE1iVGlnYW80SkxZ?=
 =?utf-8?B?SWhvWm0xSnFYK3gxSVB2S2VYcWZtMTUyYXVkVUllTEVSZUNFcjYydmVIVmlp?=
 =?utf-8?B?TGMzTkg1cWcyZVJSSEZ3L0poOFU1YWpTSFZHV0pmODFYODFYMkwwd25LT3pZ?=
 =?utf-8?B?UlZscUFHcnhSbFZCcm95NTd3eGZRSnhtM3N3amxKSENKdHFpVUlBQWNTZmZS?=
 =?utf-8?B?MlJZeE5yT1lFemdHNDJkUDBBclV3WVpmL3NrUTZ0K2VLNm1ZSGtwWjA0SnpO?=
 =?utf-8?B?MmluZzFqL0JnSlFGemx4S3g2em5EdS9YQUwwVkpPSkpIVlhzUTF2TCtuYS9J?=
 =?utf-8?B?UjJxWGQwWTlJV29nNmJXVFdKS0pKaThKa3ZqbWV4akl0RTlhQ2NPNjZxU3kr?=
 =?utf-8?B?cWN1aFZmSmJiMzkyNEhENUwvZ0tlSXRWVGZKaS90K29uMitCUjJwUjZJem52?=
 =?utf-8?B?SUJ5MzBJY0s4c09ES0V2NnV3RThUMXgvM2lXN3JjNFA0VEljakdCWFI2Unor?=
 =?utf-8?B?QkJQZ2ZvUGRnS0NSWE1najBVTWdneGRQMDNzb01FNkdMTUVuUkZRRStreDFT?=
 =?utf-8?B?Z051U0Y1bHhSanhSVklpWVYvSmI2eDdWWW9lQmVYQkxqQmpLVEVQNy9oL2I2?=
 =?utf-8?B?SDB3RW1rWnp6dSs5MGNjNHYrem9pb0s3akhySXZHZTBtbDFLYTQzcmpxVDhX?=
 =?utf-8?B?dlhXZEJNK2NOV2NIOURlZTFkUklIZlc1NVVBQzBEdlNEcStQNGdYT29UUVpY?=
 =?utf-8?B?bWIzY2pKbWRVU2ZsY2pYU2N5YWR1RHU0eHB3UjI0S0gydGErS21VNWV3TWQ0?=
 =?utf-8?B?ci8vZkUrWHpQRkJPNVBHb2hubTN0L1YwbitCd0JsS0tTUzFoQUtyakJ2YWpE?=
 =?utf-8?B?WEdtMVYxYlF4cGRlZTg5UEE4dnpOL2NZaUU4MmFEQ2E5dFJaZWxFbEtDR0JQ?=
 =?utf-8?B?a0RlQzdCU0ZpektjekVPeks5RnBUcEUwVWdOZDJEK1pJNHJKTkZER3NLcS9B?=
 =?utf-8?B?bktFb0x3M0Q3SkIrYkh0RklHK01tUnZqQzdYZjFvWGJCZ2QxVzJVdlhwdnZX?=
 =?utf-8?B?bUt3R2JyUFlPM3JDK0ZLK3kwZldhMGczWUhtbXI5bW5QK2JOWHp4cHVVK1JZ?=
 =?utf-8?B?TXFzU1hTZWZ4enp4RTZoMXZkeHJVdS9QcDgwSVUzM3ZucWtnNFlReDVIUEZY?=
 =?utf-8?B?TW9HRzlTZklpR3ZCQWhGQkFDTFN6RjRXL3Rpa0NMcWdSa0pPSVFITkpQSGNW?=
 =?utf-8?B?ZlNWWUJDbzhUQlhyNHhkVnFzM3lTa25zYzR4VHBFbW5tQWVHVW1xQUIrd09i?=
 =?utf-8?B?RE9CQVJHbVJaQXF1Nk9YV1d4ZUsveTRmTWNzZzMzb2Vnb245UEpFSnAvbDlh?=
 =?utf-8?B?a3JPQ0NIOU9oeG04ZW5ndHlQRGN2d1ZIMkhpbnFJcm5NS0o2WlhTb2lzV3Ey?=
 =?utf-8?B?R3h3QXRUUmNjYXM0N1BUT3VOblFTckhUV015Tjhobi95NXhDVUlSVjZWNGZy?=
 =?utf-8?B?VENKYUhtUVo1R1FQRjZEbFVpWEwrRExwMWpVVkQvS1RiRDhVeEZxalVQeHdV?=
 =?utf-8?B?MUUzd2VXZi9rS0VJdTY5SWFldkwrUEt0c0hyU1BucXRJTW02T08xM1pSeHJG?=
 =?utf-8?Q?5Erk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ff0b937d-9cf6-4a16-5d27-08dbf1764327
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 07:30:43.7705
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yWDyyFkgQjKO1nqSHUaSbjZZXQqOTj8u4oblbPfaWNpFb85dQdWIRTV3WTSWfns1sG1FPmodUH2rRVzWUX5Vbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P195MB1841
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_233053_280782_BEDED7F9 
X-CRM114-Status: GOOD (  34.82  )
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

VGhhbmtzIQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEFobWFkIEZh
dG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+DQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJl
ciAzMCwgMjAyMyA5OjI4IEFNDQo+IFRvOiBMaW9yIFdlaW50cmF1YiA8bGlvcndAcGxpb3BzLmNv
bT47IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogUGFzcyB1c2Vy
IGRlZmluZXMgZm9yIEJhcmVib3ggYnVpbGQNCj4gDQo+IENBVVRJT046IEV4dGVybmFsIFNlbmRl
cg0KPiANCj4gSGksDQo+IA0KPiBPbiAyOS4xMS4yMyAxMToxMywgTGlvciBXZWludHJhdWIgd3Jv
dGU6DQo+ID4gVGhhbmtzIEFobWFkLA0KPiA+DQo+ID4gT24gb3VyIEJhcmVib3ggcG9ydGluZyB3
ZSBoYXZlIGEgc21hbGwgcGllY2Ugb2YgY29kZSB0aGF0IG5lZWRzIGRpZmZlcmVudA0KPiBjb2Rp
bmcgaWYgd2UgYnVpbGQgaXQgZm9yIFFFTVUgb3IgZm9yIHRoZSByZWFsIEhXLg0KPiA+IFdlIGFy
ZSB1c2VkIHRvIHBhc3MgYnVpbGQgZGVmaW5lcyBpbiBvdGhlciBwcm9qZWN0cyBzbyB0aGF0IGlz
IHdheSB3ZSB0b29rDQo+IHRoaXMgYXBwcm9hY2guDQo+ID4NCj4gPiBJIGFzc3VtZSB0aGUgb2Zm
aWNpYWwgd2F5IHdvdWxkIGJlIHRvIHNldCBhIG5ldyBkZWZjb25maWcgYW5kIGRlZmluZSBhIG5l
dw0KPiBwbGF0Zm9ybT8NCj4gPiBDdXJyZW50bHkgb3VyIHNwaWRlcl9kZWZjb25maWcgaGFzOg0K
PiA+IENPTkZJR19NQUNIX1NQSURFUl9NSzFfRVZLPXkNCj4gPiBTbyB0aGUgbmV3IG9uZSAoc3Bp
ZGVyLXFlbXVfZGVmY29uZmlnKSB3b3VsZCB1c2U6DQo+ID4gQ09ORklHX01BQ0hfU1BJREVSX1FF
TVVfRVZLPXkNCj4gPg0KPiA+IElzIHRoaXMgdGhlIGNvcnJlY3Qgc29sdXRpb24/DQo+IA0KPiBJ
J2QgcmF0aGVyIHN1Z2dlc3QgZWl0aGVyDQo+IA0KPiAgICAtIEhhdmluZyB0aGUgZGlmZmVyZW5j
ZSBkZXRlY3RlZCBhdCBydW50aW1lLg0KPiANCj4gICAgLSBIYXZlIHRoZSBkaWZmZXJlbmNlIGVu
Y29kZWQgaW50byB0aGUgZGV2aWNlIHRyZWU6IFlvdSBjYW4gaGF2ZQ0KPiAgICAgIG11bHRpcGxl
IEVOVFJZX0ZVTkNUSU9OLCBlYWNoIHdpdGggYSBkaWZmZXJlbnQgZGV2aWNlIHRyZWUgYW5kDQo+
ICAgICAgZ2V0IG11bHRpcGxlIGltYWdlcyBpbiB0aGUgc2FtZSBidWlsZCwgb25lIGZvciBlYWNo
IGRldmljZSB0cmVlLg0KPiANCj4gVGhpcyBhdm9pZHMgdGhlIGNvbmZ1c2lvbiB3aGVuIHRoZSB3
cm9uZyBpbWFnZSBpcyB1c2VkLiBZb3UgY2FuIGV2ZW4NCj4gY29tYmluZSB0aGVtLCBzZWUgZm9y
IGV4YW1wbGUgYXJjaC9hcm0vYm9hcmRzL3N0bTMybXAxNXh4LQ0KPiBka3gvbG93bGV2ZWwuYy4N
Cj4gDQo+IENoZWVycywNCj4gQWhtYWQNCj4gDQo+ID4NCj4gPiBDaGVlcnMsDQo+ID4gTGlvci4N
Cj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBBaG1hZCBG
YXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPg0KPiA+PiBTZW50OiBXZWRuZXNkYXksIE5v
dmVtYmVyIDI5LCAyMDIzIDk6MjAgQU0NCj4gPj4gVG86IExpb3IgV2VpbnRyYXViIDxsaW9yd0Bw
bGlvcHMuY29tPjsgYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+ID4+IFN1YmplY3Q6IFJl
OiBQYXNzIHVzZXIgZGVmaW5lcyBmb3IgQmFyZWJveCBidWlsZA0KPiA+Pg0KPiA+PiBDQVVUSU9O
OiBFeHRlcm5hbCBTZW5kZXINCj4gPj4NCj4gPj4gSGVsbG8gTGlvciwNCj4gPj4NCj4gPj4gT24g
MjcuMTEuMjMgMDg6MDIsIExpb3IgV2VpbnRyYXViIHdyb3RlOg0KPiA+Pj4gSGkgZ3V5cywNCj4g
Pj4+DQo+ID4+PiBJcyB0aGVyZSBhIGZvcm1hbCB3YXkgdG8gcGFzcyB1c2VyIGNvbXBpbGF0aW9u
IGZsYWdzIGludG8gQmFyZWJveCBidWlsZD8NCj4gPj4NCj4gPj4gVGhlcmUgaXNuJ3QuIEJvdGgg
YmFyZWJveCBhbmQgTGludXggaGF2ZSBiZWVuIGJyb2tlbiBpbiB0aGUgcGFzdCBieSBkaXN0cm9z
DQo+ID4+IHNldHRpbmcgQ0ZMQUdTIHRoYXQgZm9yY2UgaGFyZGVuaW5nIG9wdGlvbnMgdGhhdCBy
ZXF1aXJlIGtlcm5lbC9saWJjDQo+IGNvb3BlcmF0aW9uLA0KPiA+PiB3aGljaCBkaWRuJ3QgYXBw
bHkgdG8gYmFyZWJveC4gRm9yIHRoYXQgcmVhc29uLCB0aGUgdmFyaWFibGVzIHdlcmUgcHJlZml4
ZWQNCj4gPj4gd2l0aCBLQlVJTERfIGFuZCBhIHdheSB0byBpbmplY3QgdmFyaWFibGVzIGludG8g
dGhlIGJ1aWxkIG9mIGJhcmVib3ggaXRzZWxmDQo+ID4+IChpLmUuIG5vdCBob3N0IHRvb2xzKSBp
cyBpbnRlbnRpb25hbGx5IG5vdCBwcm92aWRlZC4NCj4gPj4NCj4gPj4gV2hhdCBvcHRpb25zIGRv
IHlvdSB3YW50IHRvIGluamVjdD8NCj4gPj4NCj4gPj4+IEkgY291bGRuJ3QgZmluZCBvbmUgc28g
SSBqdXN0IHBhdGNoZWQgdGhlIG1haW4gTWFrZWZpbGUNCj4gPj4+IGRpZmYgLS1naXQgYS9NYWtl
ZmlsZSBiL01ha2VmaWxlDQo+ID4+PiBpbmRleCA0NzFiYmMyNjc5Li5mZWJjOTRiN2YzIDEwMDY0
NA0KPiA+Pj4gLS0tIGEvTWFrZWZpbGUNCj4gPj4+ICsrKyBiL01ha2VmaWxlDQo+ID4+PiBAQCAt
NDQzLDcgKzQ0Myw3IEBAIEtCVUlMRF9DUFBGTEFHUyAgICAgICAgOj0gLURfX0tFUk5FTF9fIC0N
Cj4gPj4gRF9fQkFSRUJPWF9fICQoTElOVVhJTkNMVURFKSAtZm5vLWJ1aWx0aQ0KPiA+Pj4gIEtC
VUlMRF9DRkxBR1MgICA6PSAtV2FsbCAtV3VuZGVmIC1XZXJyb3I9c3RyaWN0LXByb3RvdHlwZXMg
LVduby0NCj4gdHJpZ3JhcGhzDQo+ID4+IFwNCj4gPj4+ICAgICAgICAgICAgICAgICAgICAtZm5v
LXN0cmljdC1hbGlhc2luZyAtZm5vLWNvbW1vbiAtZnNob3J0LXdjaGFyIFwNCj4gPj4+ICAgICAg
ICAgICAgICAgICAgICAgLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbiAtV2Vy
cm9yPWltcGxpY2l0LWludCBcDQo+ID4+PiAtICAgICAgICAgICAgICAgICAgIC1PcyAtcGlwZSAt
V21pc3NpbmctcHJvdG90eXBlcyAtc3RkPWdudTg5DQo+ID4+PiArICAgICAgICAgICAgICAgICAg
IC1PcyAtcGlwZSAtV21pc3NpbmctcHJvdG90eXBlcyAtc3RkPWdudTg5DQo+ID4+ICQoQkFSRUJP
WF9VU0VSX0NGTEFHUykNCj4gPj4NCj4gPj4gVVNFUiBpcyBhbiB1bmZvcnR1bmF0ZSBuYW1lLCBi
ZWNhdXNlIHRoZXJlJ3MgYWxyZWFkeQ0KPiBLQlVJTERfVVNFUkNGTEFHUw0KPiA+PiBhbmQgdGhh
dCB1c2VyIGlzIHNob3J0IGZvciB1c2Vyc3BhY2UgYW5kIG5vdCB0aGUgdXNlciwgd2hvIGlzIGJ1
aWxkaW5nDQo+ID4+IGJhcmVib3guDQo+ID4+DQo+ID4+IENoZWVycywNCj4gPj4gQWhtYWQNCj4g
Pj4NCj4gPj4+ICBLQlVJTERfQUZMQUdTICAgICAgICAgIDo9IC1EX19BU1NFTUJMWV9fDQo+ID4+
PiAgS0JVSUxEX0FGTEFHU19LRVJORUwgOj0NCj4gPj4+ICBLQlVJTERfQ0ZMQUdTX0tFUk5FTCA6
PQ0KPiA+Pj4NCj4gPj4+IFRoaXMgcGF0Y2ggYWxsb3dlZCBtZSB0byBzZXQgQkFSRUJPWF9DRkxB
R1MgZW52aXJvbm1lbnQgd2hlbiBjYWxsaW5nDQo+ID4+IG1ha2UuDQo+ID4+Pg0KPiA+Pj4gVGhh
bmtzLA0KPiA+Pj4gTGlvci4NCj4gPj4+DQo+ID4+Pg0KPiA+Pj4NCj4gPj4NCj4gPj4gLS0NCj4g
Pj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwNCj4gPj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAg
ICAgICAgICAgICAgIHwgaHR0cDovL3NlY3VyZS0NCj4gd2ViLmNpc2NvLmNvbS8xVjY3NXZUNkE1
Ni0NCj4gPj4gc1NrLVQ5LQ0KPiBiSjJxenVhSmJpSjBFQl9OMVFXUF9VSFlVS0dCdWo5UEFqUlFI
UFlzVGZ6OWRlQV81ZXYyTnJJODd3LQ0KPiA+PiBrSDdFdnZvdERkQjFNWFM0T0lZbEkzZENYVFYw
WWhmRVp5LQ0KPiA+Pg0KPiB3b1Q3WWtBN2Nqc3loaVVrdlZKX1JJaGFtS3JDdU0zMDBjRG5IVEd4
Y2FvYzZINkRraFV5c3FYTkZZOUZDDQo+IFhqc2VyDQo+ID4+IEM3ZEtUd2lFUHhoa19wZFZuLVMw
LWxXMVlqSFUtVW9uVHFkQkhjSnZCQ3RqV2tWT2lpaGN6d1YtDQo+ID4+DQo+IFRDdDlqaWFhbTlO
cUduX1dyZVJ4V1dUQzBoY0ZIMGVBc0JBaTI3N0ZRbXNGbnhjQmdhRUt4STQwSkFES0wNCj4gdVcN
Cj4gPj4gRjAvaHR0cCUzQSUyRiUyRnd3dy5wZW5ndXRyb25peC5kZSUyRiAgfA0KPiA+PiAzMTEz
NyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEt
MjA2OTE3LTAgICAgfA0KPiA+PiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAg
ICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0KPiA+Pg0KPiA+DQo+IA0KPiAt
LQ0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfA0KPiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAg
ICAgICAgICAgICAgfCBodHRwOi8vc2VjdXJlLQ0KPiB3ZWIuY2lzY28uY29tLzFhWHU2UGh2N0VT
ano3Y2NiVFZjc3I5bjJMZ1Z3dWs3RGJ6dGhVUE9Uak5LRzB2S0EtDQo+IFh5VmVTSGZKX2tWQ3lG
NUxpQXROWVVxWXdWVXdZUjVwaVJiOHF2YTdOLS0tDQo+IFJFRjlPWWZIN3I0dTI1VEdickdvLXIz
LU1lV3NxS0JpamxSNnN4QUhMb3UzRk5Qel8zcHhGbmdaXy0NCj4gRWxQMDZSUnFEeUNUWXZGRXhV
cEg5ZEotNmVqYWVHUkpKVVA4MXU3LQ0KPiBUSmtRVmZ6aWY4OG5mTzBIVFNUUWhIcDFHWHlpUHVT
VXdtR2pKX3BKSUVadlFJTGl1ZjUzbC0NCj4gWHZ0M3BoSTF1ZENWREdndV8tDQo+IFgwVVBMOHRx
THM3MWkwUGNIdXRpbUtGUFNDdktTZFpLMjYzSS9odHRwJTNBJTJGJTJGd3d3LnBlbmd1dHJvDQo+
IG5peC5kZSUyRiAgfA0KPiAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAg
ICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfA0KPiBBbXRzZ2VyaWNodCBIaWxkZXNo
ZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0K
PiANCg0K


