Delivery-date: Thu, 06 Oct 2022 15:05:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogQYu-007wwp-6q
	for lore@lore.pengutronix.de; Thu, 06 Oct 2022 15:05:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogQYs-0007hv-TO
	for lore@pengutronix.de; Thu, 06 Oct 2022 15:05:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tCB1JmQa8F2rltXxl1Q7YnhJpeyWI0++Gzfk53woFTA=; b=4jlMMcCIml6ehx
	ybeXka+vFmtcNZ04PhWdPu8ieoH/aCcXi6GpEucvWFqyj0VtvwUjBZkwqRpux5Eygpzs3Nv8qsE1r
	IGu1pP+4cG5x2uyY37rlcTC0sVT/uU3HEn2U2BV+HKYp4vlz/Zz/DQ+yg7CUY8viG6jYZGjBOgNgw
	S4JM9XqhNXsGl8hh/uFU53oZcgvJ05+t59CHBQZtZ0QioIMTFeYHHJJq8g9A3Gykb6K/ZopPKUpqn
	TtZimBxVobPOntAoODL9xfLIpPRH+uBevCD/8Rh1mt3Xuen7qaCL6ul2kDbYDLg4Nbqhy8U6x68/2
	6yJKjsKl1DblyE7YLECQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogQWy-002VeO-VC; Thu, 06 Oct 2022 13:03:17 +0000
Received: from mail-db8eur05olkn2082.outbound.protection.outlook.com ([40.92.89.82] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogQWu-002Vbi-Ch
	for barebox@lists.infradead.org; Thu, 06 Oct 2022 13:03:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HB8qooVy/As1/SHvWZLabiTlaNczOrfn01M3wyQtQ/CjjSndFzT+dvzUhSYtjP9mSED5IdSVC3sEtAcIosYiav8efGl/u5Kj1konxOLtJkxf8bdS37MZlYgkkRQMfuGfzKxez3tRZ9yCWle1C0BltLvlpQq05RFlNx3NSj+zwMBE0N3NQhaZDMB+2H6rSR0i51Yjin7xMmXc9QcnUM0YqAvfxLWEN0GHm4cgiXwWuA5dhSoFM4gLao0nkKEFDU7M8BMhg8MvxCDBh7Y5Dr3VGnn50VuCqa/4snGKdFFHzysXNgxyfMyRP+i3fUKMStkpDXr2dYPoxKO+On6kPi+yGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tCB1JmQa8F2rltXxl1Q7YnhJpeyWI0++Gzfk53woFTA=;
 b=SRurPJ5Kd1MmSlniK6Pzn2/zuQAqNGfseuwAMOkg6+NwBzNilrL3vfLeA5BOoC21xV8TWvX0mHCs5UzQhaeFm2z/ak++9YUl52co395QR8miP9Zbyc8NrcxUp6IW3sfODuQ6qfw3u694I6Kkdehj0rMwQuo7i7IgLQrdW8BrvSpGEKQ3Lq6x1NuEutDSICHPMZ18TbxQ9HLQXI2YqQ/Vdju47uv5kUih/coVZU9OtGp0+bXlk23ggk85T0bqzWPU9gyEIFuSZ9xMRcIAteCdAfB5KtRIr0gO7qEd6Q+r7oLQU3mt0RddXRteFbXlC8yFOrJ1YQcWhgRTDoMnKINtVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tCB1JmQa8F2rltXxl1Q7YnhJpeyWI0++Gzfk53woFTA=;
 b=Sqveq0qG1RoC0lPZyzLsgxIR0Ppx5qYPy1LfAFYQlHlIuA5qczuHeTZpDGNpWGi83gNlLSnjptyCAFI8e3qzgOKe3WR0fe8yGAyQLTudsFQRWKjbiaI2wAmJqKR1h0ofQS95qaTC3tn2pIWZ7PDUOSw/IhASmH+Z5iOMN/nQFkH93WGQeTa2wn0kzBR1ehMBVRHe5wn2j/QRypp9bL+JzT7HB4UL1sUVWq5D2wWPIs0ZA0ozgwV9ymr7T+Qy8LuANj5sUCQmF1D1Oyk8orilsw16zR8i1ch2CY6h/BVk1KmRCQo/4fJCow1AHnXdJVxBor5Ezw6FhJZiBFbBP+5pbQ==
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:1f2::13)
 by PAXP192MB1557.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:28d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Thu, 6 Oct
 2022 13:03:07 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::3852:ebc1:252:80d2]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::3852:ebc1:252:80d2%6]) with mapi id 15.20.5676.034; Thu, 6 Oct 2022
 13:03:07 +0000
From: <michael.graichen@hotmail.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: arasan-sdhci eMMC Problem 'command timeout'
Thread-Index: AQHY2YF8dG9up/cl1kCdp1WSTx+Imw==
Date: Thu, 6 Oct 2022 13:03:07 +0000
Message-ID:  <AM9P192MB08709ED9E86625C99913EA2FAB5C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ubYn8FFOp6daVcFeoPgnNw1NH/RLIkOT]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9P192MB0870:EE_|PAXP192MB1557:EE_
x-ms-office365-filtering-correlation-id: c529262e-78c4-458f-11d2-08daa79b1cff
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  C9Y3nO8sq3pY/C7BcfrIeiwH30TdC4w9ge1dqt162mRqUBg37EZpPeBfKHOm4Cf9JL+4/IgSS4s+KJTwm/sKaCUAxvECqB3FNJJzktkVGY4vOpEgYz1r+j6To9eeORlkeOLSHO6GZnBIx5MPUyDq9QY96MbJ1mn9dZ2iZmmUZUDvQ/4qub719hb9N/3jKCvK8FgeG5plFGvbIPIZ+l78kcKFyrkCCOKw07khlTvUNQaTJgoVbXjY0bWdwsRlYr2x3CBOOCkvjjrrvRM46LaygAJOWKKi6B98afiC/6cwypD7DQlzktQ9fD8kXFmRyonpYkj+Gf8jZ4yW6zQMMI4kEZvgmBkdQ1EQuO20oi9RBUFCqmkEBc9w2phjBQ3mzmJ7zGq9cQxd6eQoQxiRXSEwKfSTaeY474oJzn7dus0NHB7eSI2DyBbkHHm4VshoN3BXAi4nDfxG01w9ZrTuNklHlFsYoUlXyNhLHXVq349xZ6MMM0DspchsdC+Hf1XUFgCVyC1Aq1ztLgVmhs5ya1bb82D4n3FmpYZ6PfbKW1LJ5NhegyxxBp5ZUTs3jat0Dbw4xjMVNLyBqx7I0XclKlFodwyg0Bu2PnwMKqrMw4wFLAYqshznBg8pwhOYto2TlSbx+HrSXtfgJ074PUJfMpruYg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?iS3mXnEOsti7Es8eAH/aVG7KlvcIeg+a5PB7m57PVSOkiI3kBWt0NOuatL?=
 =?iso-8859-1?Q?UH4JZwVNAnRgFZuzpeolYBuhxgwEK5r/LhhjMiLpxKMn8808vAOhWZFT2M?=
 =?iso-8859-1?Q?52Ey+syUckxkiU970BUAjngm/BumqxRxjSTv8lwegb5XRd7oVmrieG08QJ?=
 =?iso-8859-1?Q?FMpaBUHhcDKfu4odDJOeBMIjU3DZ4071IeudSWrbiFKOLb+YPrcGuAjTZ1?=
 =?iso-8859-1?Q?Dof+2nucaFmjXd8Kz43bknsQd01Np2iFw5CXIwPwG32rOas6kbvosnOPHh?=
 =?iso-8859-1?Q?TYTsxCHJwOE4d34DzTmMyq7fL5bYePcuKz9las0qdWe9ELBYUDt3jViIhW?=
 =?iso-8859-1?Q?XGnEz+Yx3t7MSrZdxrG1vQ/u/7h+FarbOk8J3oHzqA6evg6Y/HRqT1JEUJ?=
 =?iso-8859-1?Q?+Q+cKTTtIRuq3rA02RuE/K4fds49ckjowCfQ8uHA612/L1xc2pYgLyEwY4?=
 =?iso-8859-1?Q?pP8W5qTm4ZiBECIFbFoclIJ5dLto29d6ox+4G8GQ3YOHLGjvh0K+Kj2CKu?=
 =?iso-8859-1?Q?m+mZxM/5ss+zdSu2OP8LXCpViJ9mSKYIvqQ0vRZniKBPaY1ddHdHZZE3lB?=
 =?iso-8859-1?Q?LoOkbEsID8iD/TkCU5I9HPfBpaZvtWgwLRZU8I0oaqROwVUEqVIe++DgUJ?=
 =?iso-8859-1?Q?cvI+1jGMpn8Fk50RpYqoAH9GgI2gdCZ2qmyLwA2OUEnVPhqvxIrXh22BWg?=
 =?iso-8859-1?Q?bLuWj9E5WY1+rpIPP2J7ca5mcotL4hxMfNADBPy2I97fZBIWfGZ7VRmkBe?=
 =?iso-8859-1?Q?bC93YdZbWwLdhJi2UiY55iW2yVvio9dMhU8yYluvp7vgmNDhnL186rsV6+?=
 =?iso-8859-1?Q?Cr0j4E0kkW0p6ox48qoz4QwiGKCFBLqH4RaNBsswZj77Qs5xpX6RQpxAxF?=
 =?iso-8859-1?Q?ULJU06dzQMI+auzIe83Rwrlrz6oXBaULpi38Smu42NrwARR+OxVwcvTdDS?=
 =?iso-8859-1?Q?l/Ayhnj6/U76EwMe0RJt9GfE6oagt9d6RL5wp2Q8Ah4g9YE5nJs20dl90b?=
 =?iso-8859-1?Q?4upgFCUDv1BrL7F6loY2UYPn9uzuKr6B2DMti04wH/zmr5L5NbzO3OhxDH?=
 =?iso-8859-1?Q?JP/ViB5+//wzDjUPuqpkJlYQqDq+16HraYPu+RDcf8EgCZvqYewAlaFTQ/?=
 =?iso-8859-1?Q?jHDcROZDglx4nqh9L7Q+5H/xCeoJ9kKi1xQ10IMPplCwIO7HOrzawLPR0p?=
 =?iso-8859-1?Q?aDGnGKocioXwYrAYQFc1c3QKjNsx+wF/2I84A6wzWpst6E2KF8unAup8Ut?=
 =?iso-8859-1?Q?ruUSzUn4ZrjYWlaIavKMWNW/q5sK95bTP/nLpm2CSZjGDUNUMw3BtQy3om?=
 =?iso-8859-1?Q?l+Lf?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c529262e-78c4-458f-11d2-08daa79b1cff
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2022 13:03:07.4125
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXP192MB1557
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_060312_496381_38995CE9 
X-CRM114-Status: UNSURE (   6.56  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: arasan-sdhci eMMC Problem 'command timeout'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hey, =0A=
=0A=
I have connected an eMMC to sdhci0 and a uSD Card to sdhci1 of a Zynq. =0A=
while the uSD Card seams to work fine i'm getting the error=0A=
=0A=
arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0=0A=
arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001=0A=
arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for com=
mand 8=0A=
arasan-sdhci e0100000.mmc@e0100000.of: state =3D 0x01ff0001 , interrupt =3D=
 0x00018000=0A=
arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001=0A=
arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for com=
mand 55=0A=
arasan-sdhci e0100000.mmc@e0100000.of: state =3D 0x01ff0001 , interrupt =3D=
 0x00018000=0A=
=0A=
from the eMMC. =0A=
=0A=
arasan-sdhci e0101000.mmc@e0101000.of: registered as mmc1=0A=
mmc1: detected SD card version 2.0=0A=
mmc1: registered mmc1=0A=
=0A=
both eMMC and SDCard work fine in Linux. So I think the Problem is some con=
fuguration difference between Linux and barebox. =0A=
The MMC is from type MTFC8G but Linux detects it as  =0A=
=0A=
[    2.012122] mmc0: new high speed MMC card at address 0001=0A=
[    2.021129] mmcblk0: mmc0:0001 Q2J55L 7.09 GiB =0A=
[    2.026355] Btrfs loaded, crc32c=3Dcrc32c-generic, zoned=3Dno, fsverity=
=3Dno=0A=
[    2.027458] mmcblk0boot0: mmc0:0001 Q2J55L 16.0 MiB =0A=
[    2.031509] mmcblk0boot1: mmc0:0001 Q2J55L 16.0 MiB =0A=
[    2.039829] mmcblk0rpmb: mmc0:0001 Q2J55L 4.00 MiB, chardev (245:0)=0A=
=0A=
Unfortunattly I'm not very familliar with SDHCI, so I would apreciate any h=
elp. =0A=
=0A=
Best Regards =0A=
Michael=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=


