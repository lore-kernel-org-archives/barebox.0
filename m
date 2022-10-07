Delivery-date: Fri, 07 Oct 2022 16:15:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogo89-000X0V-Hv
	for lore@lore.pengutronix.de; Fri, 07 Oct 2022 16:15:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogo86-0002jX-Me
	for lore@pengutronix.de; Fri, 07 Oct 2022 16:15:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DJ/YXP2fj2Mum2Y8hG/8/vf4Xol0gYrz/7C/7xHP4T0=; b=VnMKJLq3AxJbe1kWJ/slZCxv+a
	Qjo8MldHAEe/uSWD4T6cxpSKFFSPxXyCNU88hfq08a58KTQ+WIG7xKzG19ys9/3eSAOthOGKdmx9n
	O2RXv1U5+y8LewnU/FhpU6CwS1sZl9dnD/B09GGgWjBC/i6fxy0rZLEpBEu9eURAXZp/nac5aNu80
	zYD6BE7d0KLMFPni/Q86/PN4PYZGTc0VTBp60ZE8KgkW11QHv37tWRn1I9vTAu4amkJtiZfk4gIkG
	FhrOoZYuyks8MipPHBSNuQneWnyljOWfZQbST3HQQ4mXWpF7q76fPwABp2f59VrHylpV0BJrdRUYQ
	DHWxbQwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogo6C-009Fhh-1k; Fri, 07 Oct 2022 14:13:12 +0000
Received: from mail-vi1eur05olkn2024.outbound.protection.outlook.com ([40.92.90.24] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogo66-009FhN-Vu
	for barebox@lists.infradead.org; Fri, 07 Oct 2022 14:13:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jo9qe/v0kF5lOmf1bZYj7nyuAEKQrU6Qx7rfOvlGUkVWS65M7gW92qqPaLtn6GoyDTMshE20NZ/7NAviwptfuAQp3rkSebiLBh1VOCJi87qFUA+EDSifxjQtFiHYhmPPzS1ZpqQnryCE0lqLO6yDMNe1a3CiXAXZ6sFQp8N3HxOXj/4ro6ANRfCnxgZhUWN8+dgExDCevhIoYekv+diIKnSCMJhZ4gWUoeF8KjFSP82OGHHSkvFU/WxKG/j66c1Bw5wambrPE2uuBSNnOo+GevwQhNgtDigs6I6NSKtYWm4ikV5gNVwh0OQxvPXQXREiPXL3CC2zDK4m8ZmsAGyazg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DJ/YXP2fj2Mum2Y8hG/8/vf4Xol0gYrz/7C/7xHP4T0=;
 b=ENPovDQxLiyTOmBJE5eBQ32fLN3lTVdSfQJ6nADBe6wQzjLFMWPpvm8RB2xLeW1wBDZH4NpbhHgS17RaJvDsLhnx1LLE2gLHb+KiLyin4B4d53X2twKf10WaNKnl+qfhvvjsfyBxEM85yb7JCYqCyKPCFwvkjehCwh3yrNhnSfGggL/U9N794H0s5mLUH0xgUrjE6nIBRiNenSeig86I9qqJvxRxSPBbZ0GVZwI2KnO+PHJkCFQjHmvDAdR9rRo2BdsC5t/m9aWdOhkd/4PC+BiGIzIN6hjmSslp9ofjI4GSydRjHFwZHHh3yVQc/sdeIeZ+Zq6zDaCQISDi/8LpQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DJ/YXP2fj2Mum2Y8hG/8/vf4Xol0gYrz/7C/7xHP4T0=;
 b=dtJMoUioj+WdtKJaJIbbi0eq7gib0P6/4XBZxv1KghH0DEKsoKy8TbhrekfV81JTU6MNQaFYSuA66nYJ9nAZO9wTEOiBLdk5r44z7EwTvbfmY4J5VwAWkSEsK1jU7pA/BjpZoJubfyZF7KT0+SBplYn8Uj/Ro544Ib68/6tTzSIbDEXCXfxfWke8S4K0sCikIz2RWb5pq2H8WrcvofhUu2dQZyotEcqVy5TuK+zLp6hcq3WvLCvjXA1YNXoTOXmKFK2ygw3qaA+EnFylUy8/tXeiQffDBGoxv3LVBNdSZcDP9lnJ2OdVxePz8nya3dwYzwhBUcWNGjnpKds2f3uP0Q==
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:1f2::13)
 by DU0P192MB1914.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:3b2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.31; Fri, 7 Oct
 2022 14:13:01 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::3852:ebc1:252:80d2]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::3852:ebc1:252:80d2%6]) with mapi id 15.20.5676.034; Fri, 7 Oct 2022
 14:13:01 +0000
From: <michael.graichen@hotmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>, Yann Sionneau <ysionneau@kalray.eu>
Thread-Topic: arasan-sdhci eMMC Problem 'command timeout'
Thread-Index: AQHY2YF8dG9up/cl1kCdp1WSTx+Im64BV8+AgAGf0mE=
Date: Fri, 7 Oct 2022 14:13:01 +0000
Message-ID:  <AM9P192MB08707A8AB46C16C0CB350FDEAB5F9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
References:  <AM9P192MB08709ED9E86625C99913EA2FAB5C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <5ab7d76d-2d89-4aa5-3f9b-1eeffefd9437@pengutronix.de>
In-Reply-To: <5ab7d76d-2d89-4aa5-3f9b-1eeffefd9437@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [0pn1IOLUGTjQe92CVE5DgKqMYdsfonTB]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9P192MB0870:EE_|DU0P192MB1914:EE_
x-ms-office365-filtering-correlation-id: ab812459-9512-4c73-f4a4-08daa86e0b1b
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  vNRZwi7bj4NuA+swuHtrWKmcsWOxdOI2pCRPrOLIof3dLAFI5b9ebgtFYJ4rNca2TNV2uOX/xIdoQ3DuTyq7PBavXyOm/FYhk5xBoruAQ14KG9+PYfWCOU29QZkmZ9+luszOMvoJO+28oZHlHvBVADP6uOJll2XJ9K6QNF7gwGWIZVFlpyi2/OZ4szABSkl/Ql9cz3AAtdjTfc6jERhBYofaZhcAO53C/pAoEPLmg85DCM3yqIldsnfTdrV1VmFfY1LVjRcVfgY9JfK+KJ+LRo1d/5XoR7/Z3wmkIBDUmVesu0pQQYoDPrIJg9h5tNK+TCuZfQV9pAhWNs/qkTgFztnfdF8tm+t6gVW4IVo3dbQtnLKG9xoB3wjhicX+6rQYTgvbm7JEvfbjsVMWM3NRsqLozIfyBCLRDLkR6+7UmPLh2xYVjXys2i7TcySmN9eNCnPi0kC5MxTogUOoUgaFING2QG2Xfh3jQS9+mrkLc90/FhUYkjVLA9HxJAiibV1WwBmo051HLRpkNuWZLOPg4FotjlVyV00t0eIKu35ixbZUd46dgYVBCYDHELr4ldg2pssoJb83Dhy2ttRxFF5OILx0SZMOkKuotZuFo6LL7/OB/MGXIo8d9vGN0iZKGgWh
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?ceZfYufZnSf3TuJjvjvpmighoMm2aofxGNGfPcMU3Fd/OiDmSk3X968RoG?=
 =?iso-8859-1?Q?Ry5yDHxXji6qI2xoPL32BX1sUeGeJGxIdFWUIhBIRTdKvrzem49k1Mvf3x?=
 =?iso-8859-1?Q?CqzRj+aa1Wl+HO1/vz8q8GcjMQEAy8u/0TkScZlrWj7GFfIkPG2x8xx949?=
 =?iso-8859-1?Q?tryb7CN6ELHcIjmgPZjP4guJ4LXoCKrLcbDK+qR5SlTa+mLdEOtU73/OND?=
 =?iso-8859-1?Q?lu7rM2fss5lUMjP74wtCJUut/ulbMkPjsGO9Bu614BiARvuCBevChPPLKC?=
 =?iso-8859-1?Q?M4Vlr757uehfbjs9kCGNzXxl05w7A6u7dvk1EFqZDTAsknMOjVy5lW0h4u?=
 =?iso-8859-1?Q?J4PwdR6fyb3DjmwPunlyVffkGUk6mZkksqtkRk7H0mSEgT/ydnqx9zToZW?=
 =?iso-8859-1?Q?l2pHJQYZB7UjRgGrIc30fOFf3sCT8pUdcoBnEWtouVhx4vb0NkMcgtpChn?=
 =?iso-8859-1?Q?9yCOW+r/+HOa4iB/pW4HtZiWNtt7c/ZgDB42tLgQ/yPnEDWKWDtgrDqMbz?=
 =?iso-8859-1?Q?ZnhMMBaoVFi/DjImZfr3jdOQQEz/wPzdThgQgSFMCodW852TU2mmAaTq+n?=
 =?iso-8859-1?Q?FP1JqxeRi1FGO/92oYaVf11oPn65xUPuQV6m8noVMnh3e06vxLsTOTDLfY?=
 =?iso-8859-1?Q?9qbFDoIYda4krLPhTewT2zb9pH6BDdmy6lCtw0w23TCjsCoezW04vG1cYF?=
 =?iso-8859-1?Q?P29aEVUJu7cnMe1F+5H5+ReNPM+oH/TT7P1sUpAfhDUrtwnmEezLvmm91K?=
 =?iso-8859-1?Q?ufSPHcXyZsDEUm3cfaFp+57oaTrPk/0RKkvACg2KTLS5AnFHwFGqxuBGvx?=
 =?iso-8859-1?Q?Puy9D4E4plGVmm+KxMd+ySKo6e++e8IFyA9GLMEs44nErTFQl5A+L2dCX5?=
 =?iso-8859-1?Q?MmS60JEZKT+n2djeViICWZujKiclVbW/L+JggjHbZk3nryZU3ZIGpnSGFn?=
 =?iso-8859-1?Q?1y3SG07dV9dFruk105vh5TiiueFf1Q2vZvejYlpRxToiXlo1YvfR4HmvX4?=
 =?iso-8859-1?Q?LfzZxnIpacvjQk6w59AdmwSFxa7k0r5r1K6CcojEcWLmzv1bAf8sA9lKmg?=
 =?iso-8859-1?Q?A89CMmnM84jFbO/vK7hBjHF2ok4cNR6aBuPLT0XS++/PfJtVCNoQJ3dS2G?=
 =?iso-8859-1?Q?WgppaYu9vtRdI5jd5mr+ICc/P55DKf7hs8fJHMWC+z9yWz0HRvc4NxzV6S?=
 =?iso-8859-1?Q?NRwtMXZvcrYv2MN0XYssqpWsr47AJFLkr1TmgLwD+mnTyDzq87Paksajif?=
 =?iso-8859-1?Q?4U348WgXFiobsuvD7GHSZwJ+JpA2uoaNd634FGtU96NmONucI+2P3zk0Ga?=
 =?iso-8859-1?Q?eRkT?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ab812459-9512-4c73-f4a4-08daa86e0b1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2022 14:13:01.1972
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P192MB1914
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_071307_100498_ECB77739 
X-CRM114-Status: GOOD (  15.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: AW: arasan-sdhci eMMC Problem 'command timeout'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

=0A=
Hey, =0A=
=0A=
thanks for your advices. Adding "no-sd" really solved it.=0A=
=0A=
Best Regards =0A=
Michael=0A=
=0A=
=0A=
________________________________________=0A=
Von: Ahmad Fatoum <a.fatoum@pengutronix.de>=0A=
Gesendet: Donnerstag, 6. Oktober 2022 15:13=0A=
An: michael.graichen@hotmail.com; barebox@lists.infradead.org=0A=
Betreff: Re: arasan-sdhci eMMC Problem 'command timeout'=0A=
=0A=
Hello,=0A=
=0A=
On 06.10.22 15:03, michael.graichen@hotmail.com wrote:=0A=
> Hey,=0A=
>=0A=
> I have connected an eMMC to sdhci0 and a uSD Card to sdhci1 of a Zynq.=0A=
> while the uSD Card seams to work fine i'm getting the error=0A=
>=0A=
> arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0=0A=
> arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001=0A=
> arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for c=
ommand 8=0A=
> arasan-sdhci e0100000.mmc@e0100000.of: state =3D 0x01ff0001 , interrupt =
=3D 0x00018000=0A=
> arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001=0A=
> arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for c=
ommand 55=0A=
> arasan-sdhci e0100000.mmc@e0100000.of: state =3D 0x01ff0001 , interrupt =
=3D 0x00018000=0A=
>=0A=
> from the eMMC.=0A=
=0A=
Please try adding no-sd to your eMMC device tree node and try again.=0A=
I don't know why it's necessary, because falling back to MMC after=0A=
SD fails is normal operation on all other hosts. I don't have the=0A=
hardware, but I've seen that the recently added device trees that=0A=
use the arasan, set this in barebox for the eMMC node.=0A=
=0A=
>=0A=
> arasan-sdhci e0101000.mmc@e0101000.of: registered as mmc1=0A=
> mmc1: detected SD card version 2.0=0A=
> mmc1: registered mmc1=0A=
>=0A=
> both eMMC and SDCard work fine in Linux. So I think the Problem is some c=
onfuguration difference between Linux and barebox.=0A=
> The MMC is from type MTFC8G but Linux detects it as=0A=
>=0A=
> [    2.012122] mmc0: new high speed MMC card at address 0001=0A=
> [    2.021129] mmcblk0: mmc0:0001 Q2J55L 7.09 GiB=0A=
> [    2.026355] Btrfs loaded, crc32c=3Dcrc32c-generic, zoned=3Dno, fsverit=
y=3Dno=0A=
> [    2.027458] mmcblk0boot0: mmc0:0001 Q2J55L 16.0 MiB=0A=
> [    2.031509] mmcblk0boot1: mmc0:0001 Q2J55L 16.0 MiB=0A=
> [    2.039829] mmcblk0rpmb: mmc0:0001 Q2J55L 4.00 MiB, chardev (245:0)=0A=
>=0A=
> Unfortunattly I'm not very familliar with SDHCI, so I would apreciate any=
 help.=0A=
=0A=
If it's indeed resolved by no-sd, this sound like a good occasion to dig=0A=
deeper into the SDHCI. ;)=0A=
=0A=
Let me know if that works for you.=0A=
=0A=
Cheers,=0A=
Ahmad=0A=
=0A=
=0A=
>=0A=
> Best Regards=0A=
> Michael=0A=
>=0A=
>=0A=
>=0A=
>=0A=
>=0A=
>=0A=
>=0A=
>=0A=
>=0A=
>=0A=
>=0A=
=0A=
=0A=
--=0A=
Pengutronix e.K.                           |                             |=
=0A=
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |=
=0A=
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |=
=0A=
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |=
=0A=


