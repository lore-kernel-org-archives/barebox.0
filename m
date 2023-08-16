Delivery-date: Wed, 16 Aug 2023 13:24:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWEe2-006CDK-NP
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 13:24:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWEe0-0007xI-Hy
	for lore@pengutronix.de; Wed, 16 Aug 2023 13:24:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZqDRu92FpN1D6Oaxm4un8/ce2oekNL6x5pV+x7hCKjQ=; b=w6KtoCee7FlblEFgq8cbeIqWQJ
	gvHYmChweBu1H61+wChUD+VcVe20pz3QEC0onJG+PbyajPIJs9Zvu9+M9eN59pYrOO8NFq8r7WEgz
	H1kaRpBcxeekSZZtxirzrW30zLSUjsw1eJ2b95v9wyPVVI8SQZYPuosGa7ZVTMVX4+KnV+ixNpdDt
	qSKyba7FHk1rfGTGrU7uOI4w7ns1xFfj2zZUZxHgk2Ey4g2c+9lCsrxb10RtQbmjCBeaS9+j2jcbc
	A0FppeNFx2KwjS3xY+/cjhMOK9sjlRQg3Is1KPDuop6pwuuQ/zFDK/TKOCir5bJ89qK2Yh364B2iZ
	UxyKkS4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWEck-003xag-13;
	Wed, 16 Aug 2023 11:23:38 +0000
Received: from mail-he1eur04on061b.outbound.protection.outlook.com ([2a01:111:f400:fe0d::61b] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWEcg-003xZT-1m
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 11:23:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V9FZgtpYEy/UWEq0GoL7DMdZG7J6EZTvDamHZHLCtF4GWakEOKZeteB/HqohqmnaVt9xQkZmssjCLIjdrGTyjIsMZvvzjZD1ANrGcoeidMAq34bCZ/mcz8B2LRodDN2ihOm47U/UT13lxBLLYX8FQzgtC8ls+h9RLGCBhUxCNn4VzmiKXYkZlcu0ku+PYnraocnrNFkzR/YchA/NJigWtFp3DdOV9RpYBhjKW/B7F9j/KEFy3rDs74Msahhth5C/hOPz1ntE6JPvZpI5/HNcxPYPPO386MFBMDzxPIlU9R1PG7LfUti8atAtkkigitU4Dn1mE8QsuVsUlWAuV9HZUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZqDRu92FpN1D6Oaxm4un8/ce2oekNL6x5pV+x7hCKjQ=;
 b=KC9xRb3lDfMiz3/qAA5BRcyfh22WlDRiNGPSZSod4+OXWJZ9O6Rk1OJyWjlQ11dTZ8zStjwSy2VrimYys656vg6vCvfJQCbU2tPRTuqB1MsWsFNldSgD9lqVfx8ITzzwtCbvuDaOuK7RpaS0pYcFQIwo16YsCg6alZgzuGHlvF+TwVmUkr15n54u/0Ykzb5CuUrrW8rdiC018VhTMIIdAKABccCc8t62b693dC7o6QzMKjiaT0g09rAZeqJAATbBUCLFUeNiHtRuFb0mfd7Euvbb1pIM9Qy7L54wgTlRFgm80KyyfWGe5C2OhW6aDuzJvZqiGbdAO3r+OFDdp49Alw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZqDRu92FpN1D6Oaxm4un8/ce2oekNL6x5pV+x7hCKjQ=;
 b=gdl8NXgst3DhVzpcAatw5Sfr5e2z3EtIUaxEokrJaPiBUzww1c3CrSyPgCgRGj97Kjudq0maxl652mvlAU3RURjRE5XGZ3yGBNValt9o1MPhmj0n0MlwBaXH8FyMQ/N/4CLobCsMuhxuXFnfO598ky30fdR8K0dZx7bVCTJ4bkM=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AM8P195MB1091.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:1c8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 11:23:26 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 11:23:26 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
Thread-Topic: Barebox PBL with uncompressed barebox proper
Thread-Index: AdnQLM5R08lcrCAnQASl0DOuC0F/VAAAdO+AAADnRyA=
Date: Wed, 16 Aug 2023 11:23:26 +0000
Message-ID: <PR3P195MB0555F57333C5D9E6A4951C00C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555163C72FCE82E3A4052F1C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816104429.GG5650@pengutronix.de>
In-Reply-To: <20230816104429.GG5650@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AM8P195MB1091:EE_
x-ms-office365-filtering-correlation-id: 4791b0a1-4a55-4f21-e35b-08db9e4b35ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LC6Lljz4cyin4/xH5GO+FlQFecYbWfiCLskPREFi2k2oAqojRTIeRzTjIop7uka8qzj41df7OirDxvQdcPuQIXR3gCZNTuSR+YuJY2kx/uL49UxT8X7UiMbcoO0Zccvx69cVPZEtUdwr1hpBb8kwXJa+AfPLfnz/TEvewpzDS/lWHbCclUHXSr/3WwRQCQOjppMknyoN9T8oZ9ke914oNUinBad2GhRT6EFyVOB7VUCdGPPL7HUwY6q7qJFWl3s5bToCfCk2MlfGWxJaU2Mvz0ocYAkskvLhVB/Q2MpJ3ccdOYrQRKmC7XqPhFOISWmQJL9Jo2TZmQHnEbvEBJLAhTTjPWDWQwTyxeObFgnLmR3W9F6Vxx30JD6cyxoNVKQ5p2ZNR2hasd11DRWaLNmWW/WIZz+dt3col1DUT1gt2hIFFAsGZLV5bckkuoAjfYcMsjq5zYmu0Q3z7mQtt3PS3ZSzwsDsSZegaHID2wt8b0DtewMmltOjxc2Go+gZXsmc5qZfcykjLM4uTjCMfnuXXx61y3niGgEfDvwvX3DUqUXj5THFv8mbvQyiSVQWj8L7wuvc0po5xTcOmVWpi0BTahJAKwGGM4XNCed3zWwbYlg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(396003)(136003)(366004)(346002)(376002)(1800799009)(451199024)(186009)(316002)(54906003)(76116006)(6916009)(66946007)(64756008)(66446008)(66476007)(66556008)(122000001)(966005)(41300700001)(52536014)(5660300002)(84970400001)(38070700005)(38100700002)(8676002)(4326008)(8936002)(2906002)(19627235002)(83380400001)(26005)(55016003)(478600001)(86362001)(9686003)(53546011)(33656002)(7696005)(6506007)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?TRbxbjowxXQefvRAUksMR5VVMWjCHDzomyc1V4r9GOzLLnVogZOpzO0k?=
 =?Windows-1252?Q?w3VWJRjKeSi8foyvvYmX+2M+MlLwW54tE1COP01hZ7NzuLHjoK1hHdzm?=
 =?Windows-1252?Q?CqDUGTuGWfxT2qG0xusFsba0dsz7MHE3J5/GUCJOjAvOqbpwX2K+fr5J?=
 =?Windows-1252?Q?0RJMqDmMVUnaKImaTFNgoABHCWAdzfl0luDJwwNAU0aZXUZ08Hfkm9uE?=
 =?Windows-1252?Q?w1TKklFA34npMF4YVHwWQybaAzWAFsGiPwNUFQWrgAxIoU45vM1DrI1r?=
 =?Windows-1252?Q?B7bVdtswMVTCXV+f5UFtgx9hpLIzjx0anzKztyBNc0mZpMoUIqtCScSQ?=
 =?Windows-1252?Q?uWOGJOrZB2B+2SBpf7HM4kzwQY3+XTRUL4217191Ugebq5SQDc4WJTdQ?=
 =?Windows-1252?Q?idWtdZt0/yXF69TWgo1aXC3YSlnsh6u32Vn5efRnLUdsTCM8rOWnF4A+?=
 =?Windows-1252?Q?zsIAQXuQ5xDpYssjWrnZY6qhlb8LUdplT6pIS1LE6wYWmCkqlCV6jmHb?=
 =?Windows-1252?Q?28pNScZH3z0cTe70SSA+tHbhpBPJTfOrLOr3mD1P/POYFfop6BWvzlLz?=
 =?Windows-1252?Q?FNZvpWIs1808Q/TnK9VsjdBPQvOyW+yzGJVCrtKYghmlgnOuLY4GhKqW?=
 =?Windows-1252?Q?piy2jRaPvHADBIBTung8O5zeAqtrfxVUcEpPxxalI4QFc3pdhGKYIJyt?=
 =?Windows-1252?Q?12W2dwSX3M8tmMwlvi/ZzdFi2kCEy0tfZwzcJTeD+Lr5p5NtCUPglJ3Q?=
 =?Windows-1252?Q?ctJG3OqVO3laet8dQCsFugbIbzDG3TMxmxiph1hhssJtodN5oW0L00NA?=
 =?Windows-1252?Q?epM9hKJC/kcbEbJzzZ2qUQbyjdulM3HPKB0glKEzAapZREUuvgwL0Gg4?=
 =?Windows-1252?Q?/mgFsvQWzW/wuPkq7yIIB4v0V14BppqQaRd4xgr3ARn+eu4KH2vaCuDH?=
 =?Windows-1252?Q?JFKm91piZj2smwM1nYSi7xfuBlzsncpfLZkfyXOt5MpuaaVbsDbbJNK2?=
 =?Windows-1252?Q?J2oR3IfPkkIX4wWEIt1qLf1Z0APWFsKsEVQmcg0ns+xamcSccM2tmqUS?=
 =?Windows-1252?Q?w8oV0HE+RthyfD4C0VepOaER0ftkRizGzrVPFfvLi4byq2pd4vxT7Ai4?=
 =?Windows-1252?Q?itKTq+jxiVq4LePcQEs1EiknckIfUH0RjNg7MFdoJdCAlTWnZD6LIzjE?=
 =?Windows-1252?Q?zDv4/cB5QjS4r3/p5zO2c36DdrWj36zE9dj+3GxXci6+qfhrwnEM6q+P?=
 =?Windows-1252?Q?pL+y/Gnk0qB1XtZuZxO1fqUkZ9IJgAq5ydaz1TYheoPdIsrz+wugMNCZ?=
 =?Windows-1252?Q?KU+OzUa2/u5tr5yqzgWVXMq/Xv/+y1HGwxQcUFQcz14mMIO/+FCp+Tb/?=
 =?Windows-1252?Q?lFmIM995HzVzNzhlQtVSUJVCTD1MmRQL/6OXA0G4RCgJ3c5ekpk0SHs6?=
 =?Windows-1252?Q?0mFC1bwUJrRWD7G++W5UKCt17w5BYaW66THXjAP4RJMk9p0dCzxfMz2z?=
 =?Windows-1252?Q?QKxdVck79fGQzuSzYhzU2ocLvxGHhPpLiU8lNyPioG8JdsDUKprcpV88?=
 =?Windows-1252?Q?HbOKxv4+6C8F0X7GMGF11DeXTfEY2TBBe/2/cfygOLgFhtAvM/5s7sy7?=
 =?Windows-1252?Q?cT3npJIwkJsZAy8bn6oFGAKOFMQETEco/fz9Ssm8Nppzgvj22rHoeMLo?=
 =?Windows-1252?Q?DbabvT/4GaM=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4791b0a1-4a55-4f21-e35b-08db9e4b35ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 11:23:26.7488
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zh8DVsiaOTVZJHSJ063zezFOfMcovG8Wk2e+dTRPyxcOeL4YvLj5XgcUCKWMEkOiYiAYfu8Z7ob0UXwf92rDlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P195MB1091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_042334_636483_0F40B710 
X-CRM114-Status: GOOD (  17.14  )
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
Subject: RE: Barebox PBL with uncompressed barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Thanks Sascha!

Before applying the recommended change the trace showed:
uncompress.c: memory at 0xc000000000, size 0x00300000
uncompress.c: uncompressing barebox binary at 0x000000c000002b60 (size 0x00=
030def) to 0xc000100000 (uncompressed size: 0x0005a9a0)
uncompress.c: jumping to uncompressed image at 0x000000c000100000

After applying this configuration, the .img file was increased (as expected=
) and the trace shows:
uncompress.c: memory at 0xc000000000, size 0x00300000
uncompress.c: uncompressing barebox binary at 0x000000c000002480 (size 0x00=
05a9a4) to 0xc000100000 (uncompressed size: 0x0005a9a0)
uncompress.c: jumping to uncompressed image at 0x000000c000100000

Indeed is seems link an uncompressed image because the sizes of the "compre=
ssed" match to the uncompress (well except 4 bytes which probably indicate =
the image size or the compression type (just a guess)).

I assume that the decompress function detects the header and know that it i=
s an uncompressed image and then just copy it to another location (in my ca=
se 0xc000100000).

Can we avoid this step?
Since the image was loaded into SRAM we wish to run locally without the ext=
ra relocation (which also takes simulation time).

Cheers,
Lior.



> -----Original Message-----
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Sent: Wednesday, August 16, 2023 1:44 PM
> To: Lior Weintraub <liorw@pliops.com>
> Cc: barebox@lists.infradead.org; Ahmad Fatoum
> <a.fatoum@pengutronix.de>
> Subject: Re: Barebox PBL with uncompressed barebox proper
>=20
> CAUTION: External Sender
>=20
> On Wed, Aug 16, 2023 at 10:36:16AM +0000, Lior Weintraub wrote:
> > Hi,
> >
> > Is there as option to build a barebox PBL with uncompressed barebox
> proper?
> > The incentive for that is to accelerate RTL simulations.
>=20
> Yes, just enable CONFIG_IMAGE_COMPRESSION_NONE.
>=20
> Sascha
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://secure-
> web.cisco.com/1UnbNIgGun7ZeK6m1EHXDowsycba0F_lMTYur4_RVJsp4rB1
> ereLHOgvggoEbLoWjLGwrPExhSzzQ8_G3V0h3ExWVvBuKIKqI0Os4LQS49bsp
> VjE-
> CO4T3S2ZjTMOr6Zn4i26fhtU5aEQyC8IVbO5bS9GaPkn7N7HCoMkRdp9iJEN
> 1yyziAlcWL6E3-HooXhzCvJNDgJVGS6Cwtu0RJS7Q9HRM0wWC5maq1_-
> Th0JtrOdGEfrEhRM0eunMSxkkz28iCJx83LpDEt_uOnC9j--
> S7DjsTGkGApcwPIRy1Dml3Ebg1BkbYQ0UQZqxwJcIPKK/http%3A%2F%2Fww
> w.pengutronix.de%2F  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|



