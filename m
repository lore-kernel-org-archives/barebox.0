Delivery-date: Thu, 04 Jun 2026 05:30:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUymv-0028vB-2z
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 05:30:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUymv-0008Jy-37
	for lore@pengutronix.de; Thu, 04 Jun 2026 05:30:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fFpLJwjTsIdGRcKiYaYljOlQ2iKHcoQF5VuAsBOrCg4=; b=eUvz5rWPDfCbdVFp+iBP4s+lsc
	fHJB6957qTYgHw3JGgjBV+f8CkWvjN9KI19x1grMnReEUG3Oj8UfutlgIdspLn2bkgvh8WYEPlk9e
	x0/JR3B6k2c0kq9VYq6giwZ3/TWiTFbGJ0OX+TFHaX/rZA1Ktqkp33b21gaCO0k2MLnbgUdijwn1y
	6A0zF+hO5IiCW1ED/onRZWXGWaQCMgkUh2xwY/U33UuelKcggFvJ3Qxeb+7PgCwuO47veaI99qUTc
	wvIZ48fY59pQGNJH62qweAEiZt1y+ejfq9Bj/wEAWsGkdtXEsXHVX6FwBbo8vsDItgeTukyajgS36
	Pw0a9WQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUyld-0000000G6I4-12Kj;
	Thu, 04 Jun 2026 03:29:13 +0000
Received: from mail-norwayeastazon11013033.outbound.protection.outlook.com ([40.107.159.33] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUyla-0000000G6HV-1WQW
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 03:29:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tTiVotyvSfVG2au0v7PDXjDXSRdHB0YVr3I6CXbSE//w7gUFnPsX5ejfw7pKbaIRhyki4gNScuOoSBoXUersK7gzriTlsFTSE/BuQEV6II6YhdGg3q4BFK53P2sX1dMOk5mt6p10JaOq5UMOO6bmPbkN5nqw/aE5ndSN3o1XcIN+78V/fXw58JpvK3AM+8nbj4Ef4zLAKJzGsSq5P+1Tm3C+iRgsztcHf3vcSNUvN0+Hukvfjn6qC4WhxrdN/Hg+5hniW5HHHJYydvskDMsdOa6fT/Wgx/7c+ZuM9rzFBjk26yn1jTfF8n2z9EVTnOKjWctAQtezG77HNGdCqw3+eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFpLJwjTsIdGRcKiYaYljOlQ2iKHcoQF5VuAsBOrCg4=;
 b=f+NsCpUgYCDOfXyzMJ+5vG2CyX6jGhqFQFOS3CJQc3hzWI7DWSFKhWaWypvPQ/pf42QwDUKXkF+LLjc3YuqlZ8LLVhYFPGSdeESmD/VYgilVf9ck1AyOY8iTQ5ckcFd7DCr0fAvn+7Zfw3E2ix8WHRM1N5U1I1IZhCvkUFBtuA+zkpo8g8Hbk9kFKpwLdDsjkbLxOCWdnHxetxJrXMbF2tGou4mu9K63s8+ZTVZLDtTtFtwRHYZOSuYnDVaAJQNJIlG0l4vKB0O5Tj4XTHBrCdi4nn3fD1d9hh+JN+wOXeHaTWnukmv0wi+9WgjlIq6mUO4vTF85K3zDm/B1hIA8kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fFpLJwjTsIdGRcKiYaYljOlQ2iKHcoQF5VuAsBOrCg4=;
 b=GIwTayNPbobC1Bl+qe5dSmzAbnxtVZ/NaMo4mH/EaCo9l7GBwzvb3v6Cayvk8COZEz8z1cRJLvf6yfqf2tIWTvXXhLFJlxNZJtM2tzf0nBxOZYCvtjD/2C+GPYAAdUnEN/1S205BZEWit92q+p4RZckC4F3bbdoekSe9WKktK1U=
Received: from AM6PR06MB4150.eurprd06.prod.outlook.com (2603:10a6:20b:1c::21)
 by GVUPR06MB11240.eurprd06.prod.outlook.com (2603:10a6:150:347::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 03:29:04 +0000
Received: from AM6PR06MB4150.eurprd06.prod.outlook.com
 ([fe80::7eee:7d4c:d886:d3e9]) by AM6PR06MB4150.eurprd06.prod.outlook.com
 ([fe80::7eee:7d4c:d886:d3e9%3]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 03:29:04 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: HAEMMERLE Thomas <thomas.haemmerle@leica-geosystems.com>, BAREBOX
	<barebox@lists.infradead.org>
Thread-Topic: [PATCH] lib: gui: png_pico: fix use-after-free and double-free
 in png_open
Thread-Index: AQHc8mWNnuWuM/1hbk6lR/BlY9ZjFbYtvxUZ
Date: Thu, 4 Jun 2026 03:29:03 +0000
Message-ID: <AM6PR06MB4150B2685D940C18CEAD8F0ABC102@AM6PR06MB4150.eurprd06.prod.outlook.com>
References: <20260602022409.316585-1-johannes.schneider@leica-geosystems.com>
 <667bad55-4666-4ced-be21-3cd38b0ba5df@pengutronix.de>
In-Reply-To: <667bad55-4666-4ced-be21-3cd38b0ba5df@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR06MB4150:EE_|GVUPR06MB11240:EE_
x-ms-office365-filtering-correlation-id: f03fb8e6-96aa-48ca-e3f5-08dec1e96d30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|10070799003|376014|1800799024|366016|38070700021|56012099006|11063799006|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: tu3CKvEvr/u+EcN5SNAOKO0+qz18+vkyXdmmNr6AQ144g1tobMKHNHFMt4rbX4ApggQdF+DuarfA6cB3TSTERFKDFfBemE1fcdc1KW6KnVeymrPFVnZuyhxBcbHbw4EZILxvMFmEOLvZIBM8lkIn8RToIP5So6G0uf0egENal6BXyq5RXeiSXFYbz19akxGbBbS382qFF9V3tBTvY1c7MimMFmeGDKnFGqkr0vMjHKb2s2lf0bBqAApwU7/EBk0Pjc+FfaU9kzgeSTnZei3ULuFp5KKE6cdEoH+Lgjv1uBX3uOcautDWInTNmd+c2yLAIZAkMxyreBxRNIDzaHee8HrlZcpk2ulmS4Ze8CerjhwB/46678lm1Ve5Gy1H3ZrXk372o7TqK9uVqzJEjs4k0+kWtFOohJoe9WJMVOHmwpr8vqFrCRc4shu5J9ZAKfF7lgD+mW9K7xHXpR7jyEUcQ4e5hzIVboxXOyqUO2Xuotp6Nmi4FpIH7zg6ypCCY5qUauHvfEnf63Jbn9okHAonvG3Ygxs142nqlXwFl7wY2J0Hg2+c5QafPNSlETjH2PlwrAHcJ/ea5Necr8Bu6QnPBwFZCpQT+tc7IfCplxVxf5+p4myGrQoHOZ1OHRCUTnDNv6HGpGfnQc87knGPyRyLLSqsI7oUdwtvyG1LZkDdBE8ttCq9otNITXzZOjJr2Lek+Oubg6n7oJyS+Qa4x/m4+3xYNhGWKArwAB+mghVWoZ6RRujU/kHnyDyxMSotBywf
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB4150.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?xzblPBLoJr3frwRMK+ns9BRDOakEKew/BSvcTQSL/bX7e29ju3Rjjuem?=
 =?Windows-1252?Q?zRRybXwn4Q3kD/WCy1ypbwDYJV8cpI2KNIIK56JgwKzE2m01do1hQ7j6?=
 =?Windows-1252?Q?JjfGVNwoRX0gr7+w3CGu6uDaJtjElY0dD894aZFz60FBAwPwjrqSM9az?=
 =?Windows-1252?Q?MojEzUtnuO8HsSnDuKt1sqJ0sNHmB2hlo6xbiCUSlq/EPn5Q/tT68bmb?=
 =?Windows-1252?Q?m+G+0SJldJfTSnZI/AB51audllvWCwOiQMosRnhuJcBs/2HRqRjpF5jF?=
 =?Windows-1252?Q?AsMIUTtbRPzyRAGTE06XpQKO9aGpmnavKNpLmy6FBUu70vJrcQRRXBn5?=
 =?Windows-1252?Q?cAy5/o6iDBW/fcP3gao+aZMrthj4tdHOq1meKrJAFXO/lEyMujoD1Npg?=
 =?Windows-1252?Q?ibP+RwjrtxVLCBaiMRNvFfKUe2QuTmHnEKcHIoE4sv2Uc3AD2sOUOcEj?=
 =?Windows-1252?Q?bPSOc6Cb2gyTbYZhVGtt86fCi6ZHjrifFbK7DUkxNii2LQoDwZx7B5/S?=
 =?Windows-1252?Q?/aJIwjUsVfnEsdjuVM8IiKVWpyI1rEo/gi1aQdvm62ZiAyucJ4pkTh7Y?=
 =?Windows-1252?Q?GJNHr6lGsPUkTxZq5x9MCy5MQFD7AKlGQLV8ira9XYUtFEvfv71Djwwh?=
 =?Windows-1252?Q?NniLqsh3Qc0wqJ2X8Kie2ypeA9xSeUIIz4KQdcu4P5vjCHKIn6qqiCVa?=
 =?Windows-1252?Q?zeJlsgtv518vppuk2e+tjUv8BpSWN/RLgZb4mQ+Zg/bXxoVoOwSYRl5P?=
 =?Windows-1252?Q?Hqfv95w8XRKFyNuT096dm6aaVceI5dUG6Ds0bNelVT1Nztebvw+CJWSd?=
 =?Windows-1252?Q?FJ9tOiX2anGMXJhAKFGQT8LLAri1Xvk518ClDaPlNjB6+4bpMjeDUvn8?=
 =?Windows-1252?Q?y2wq1ABMgnw9CVqsvqvGsg9hXqIrb0SG6ae7DgEGkj9+i8B8PdBd6GLq?=
 =?Windows-1252?Q?PUO/H7O0IjWC+uIwQLKJhFsDoWm6uDbWMs6YEH8M+jo8cXztwkPYrmm7?=
 =?Windows-1252?Q?y4WKEM8gR1g3GBNiv3drhyPunVrz2H/G5IWPFfvba5udBAV5DDL9gG4i?=
 =?Windows-1252?Q?XuJzX8eykuXSmHpYVLgPsTKa2sx6lSS9PqJoXGdZzMkCqVtaTBUlQ3nE?=
 =?Windows-1252?Q?EaKmhNe/aQyO9YNCUrttQPotQlVidiSisT9jShr1XnY1GoAMJSH5+lL5?=
 =?Windows-1252?Q?IQQs1VhIKkRCzr/2nH8NsK0j3eq7lDqEIj5zCGqxZVtvhz1oGa6qqq98?=
 =?Windows-1252?Q?2CVev/1Zvl7EqX0KJtsfNBDQD+/dfRQx4fISfPhWJvSb0O4+6jTo5JCy?=
 =?Windows-1252?Q?99aVKrrIQbFVdA8y/+gIZavPVCAZ2I7coSRDNNx6q8JYE+j2ZL0DBGPo?=
 =?Windows-1252?Q?zvAgFDDH9zFNpIvy28o8InB8+Wj2LiU14K0zGjf7oRnX6y2JhVjD3PGI?=
 =?Windows-1252?Q?9E8vAzkZYGBRooaGfaj/CjPtxR5zFqTDZIaXyt4JoZrSt75vFgI0BoHA?=
 =?Windows-1252?Q?sVMD+X+2r6odSCZgO8UJJxqt8Cb/+E9hnFbIXHAADPKAfbTF7xYLxUhG?=
 =?Windows-1252?Q?4bxjMrI9cehI9I40eO6noPg/dMubcdg51qPbrc3o18VJnwkYfaUazgXF?=
 =?Windows-1252?Q?pRdoafyh6fFDHUvV3i7NezByPa1C9ASu/0f7jXibaVOuDapCFBKZy57g?=
 =?Windows-1252?Q?RPRG4bqlFFNCfuahD7AQ1UzbcdcvXAx/GotJtvu/Gb+ZmDjVD8RzuBSz?=
 =?Windows-1252?Q?/qhM8E0O0CB/ewLjwElFQ8NKJFYvtiK+fSKmEnoLKjtWIGE++gUeWCFi?=
 =?Windows-1252?Q?uYpqXEVAxe9VAzjZQIoh7gS2vAz+2KyMd6SfFGr8O6VuIptztsecnlcK?=
 =?Windows-1252?Q?GYuzjY/hn3v4P0cq7EAqSra4U+H7lFoYtUvSSN4TftiXLDeX1bRBg7r9?=
 =?Windows-1252?Q?Q92oiM4W?=
x-ms-exchange-antispam-messagedata-1: sOvqC+HtRi3pBw8e8nAI1Az2fj5oIIOikQXlEZTgkGiDmAV8GWRbby2w
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB4150.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f03fb8e6-96aa-48ca-e3f5-08dec1e96d30
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 03:29:03.6149
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SSheKAA/gG3nMRc69pWXrpUvXmr3wGKcIzGCDUgI8ZERDLZ8znOPsbiQElgMhd15psfMAveW/qvo3Ke8j/X0OwVkaFJUl62Fhw0j1hnOWl+3ERZE7b1yt4+Ki/QzJ15i
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVUPR06MB11240
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_202910_462569_DD36A227 
X-CRM114-Status: GOOD (  14.92  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: gui: png_pico: fix use-after-free and double-free in
 png_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi Ahmad,=0A=
=0A=
>=0A=
>=0A=
> Hello,=0A=
>=0A=
> Thanks for the fix.=0A=
>=0A=
=0A=
:-D=0A=
=0A=
> On 6/2/26 4:24 AM, Johannes Schneider wrote:=0A=
> > From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>=0A=
> >=0A=
> > png_alloc_free_all() frees all picopng-internal allocations, including=
=0A=
> > the image->data buffer.  The previous code stored a pointer to this=0A=
> > buffer in img->data and called png_alloc_free_all() =97 leaving img->da=
ta=0A=
> > as a dangling pointer.  The subsequent png_close()'s free(img->data)=0A=
> > then performed a double-free on already-freed memory, causing a crash o=
r=0A=
> > heap corruption when displaying the boot logo.=0A=
> >=0A=
> > Fix by copying the decoded pixel data into a fresh malloc buffer before=
=0A=
> > calling png_alloc_free_all().  png_close() correctly frees this copy.=
=0A=
>=0A=
> Never ceases to amaze how long memory corruption can go unnoticed..=0A=
>=0A=
> > -     pr_debug("png: %d x %d data@0x%p\n", img->width, img->height, img=
->data);=0A=
> > +     /*=0A=
> > +      * Copy decoded pixels to a stable buffer before png_alloc_free_a=
ll()=0A=
> > +      * frees the picopng internal allocations (including image->data)=
.=0A=
> > +      * Without this copy, img->data would be a dangling pointer and=
=0A=
> > +      * png_close()'s free(img->data) would be a double-free.=0A=
> > +      */=0A=
> > +     imgsize =3D png_info->width * png_info->height * 4;=0A=
> > +     imgcopy =3D malloc(imgsize);=0A=
> > +     if (!imgcopy) {=0A=
> > +             ret =3D -ENOMEM;=0A=
> > +             goto err;=0A=
> > +     }=0A=
> > +     memcpy(imgcopy, png_info->image->data, imgsize);=0A=
> >=0A=
> >       png_alloc_free_all();=0A=
> >=0A=
> > +     img->data =3D imgcopy;=0A=
> > +=0A=
> > +     pr_debug("png: %d x %d data@0x%p\n", img->width, img->height, img=
->data);=0A=
> > +=0A=
>=0A=
> I would prefer avoiding the memory copy here. My suggestion would be addi=
ng=0A=
> (untested):=0A=
>=0A=
> void *png_alloc_detach(void *addr)=0A=
> {=0A=
>         for (png_alloc_node_t *node =3D png_alloc_tail; node; node =3D no=
de->prev) {=0A=
>                 if (node->addr =3D=3D addr) {=0A=
>                         png_alloc_remove_node(node);=0A=
>                         return addr;=0A=
>                 }=0A=
>         }=0A=
>=0A=
>         return NULL;=0A=
> }=0A=
>=0A=
> and then a single line change in png_open:=0A=
>=0A=
> -       img->data =3D png_info->image->data=0A=
> +       img->data =3D png_alloc_detach(png_info->image->data);=0A=
>=0A=
> What do you think?=0A=
>=0A=
=0A=
good idea, sending out a v2=0A=
(with your 'suggested-by' :-)=0A=
=0A=
>=0A=
> Cheers,=0A=
> Ahmad=0A=
>=0A=
> >       return img;=0A=
> >  err:=0A=
> >       png_alloc_free_all();=0A=
>=0A=
=0A=
gru=DF=0A=
Johannes=


