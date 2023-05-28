Delivery-date: Sun, 28 May 2023 22:17:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3Mpx-000NfE-SU
	for lore@lore.pengutronix.de; Sun, 28 May 2023 22:17:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3Mpu-0006U8-QD
	for lore@pengutronix.de; Sun, 28 May 2023 22:17:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lER/C+3JUQpIDNNFI0LWYyYGNZgNx5y4qfQcqTbpB64=; b=w3qflhEGbLd9QOZr4nWi/EEnp/
	O/maYxbNA5QJCyVxJqKa3FCBEjODgK4qe1MSb04igfDspc9VZUdf2o2VSfznYJtj5uCCT5r963x53
	MOUWyKfo/c3T0LOQnByEb7OHVHxly9XXT+ddBVXUahm9GnvbXEYr1nBSioMD/dfeAfnVUVRaKepMh
	fSIvD1j6ClrXZ4+VWErLOoiIvXsFh3XPvDrRZw2EOd3AL3PiZ0EvDaIPS4adssNupmnwI7YDeQb2l
	c5mVGQ5QMYYzZP+UaaD87buipFT9iab4lt1n8Hr9AVbNMWOzyvVm1UaP8BrkxN+JF+YkNPdhtxKDJ
	Mh6cdSvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3MoI-008M0l-16;
	Sun, 28 May 2023 20:16:14 +0000
Received: from mail-db5eur01on0623.outbound.protection.outlook.com ([2a01:111:f400:fe02::623] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3MoD-008Lzp-0K
	for barebox@lists.infradead.org;
	Sun, 28 May 2023 20:16:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mjP8yP8CaAvsGEwgiTC8vFo6AlK1+DM+Pn++2Qaliyo9ZsBRykYpub7WisnMm0/Bnn2SfL8NO8zvKKnEN61iUf9rqHvwfuqiZEV2Mtr4FvXJF4vbLcvkeip1sM9H4KIA3AXCLSbUxrldGQ7L7ws1fBTfD0Dd8uS7XkBczlklyhJadf3NlaAUW9edyvJ8HgRbRiTiiLyytSkuyHcQzYhko5+6TbBXpvxdvbM/uP4Q9mzzN1EIOZj8zoLOF0Q8mUXYw5E0ERx+r7jRO+KqSmrTIJM8PFFH5McdEeXVdWm9yg/t8k+AZu0yCSqcvxS6vGsU4cTkJZKKng02gSQ+FqEhYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lER/C+3JUQpIDNNFI0LWYyYGNZgNx5y4qfQcqTbpB64=;
 b=FOk/m6Pnx5zp6NX3UtqLG0xo3o9O54PIZ9tbw0yTP1Ql4vAZfCGk684xNV8HBUKe0wPmMJrvihXYUcFNAKPc1am1SOwtdUH37lh5+vIs2UK4B/+acgJIaQ9z+6+4NOS9WW1jGrMPmgAYefylY4jsfhYmCFc3553ErevBV2UhViYe7xtbQ5ISUaZ52JuqxRceW1yTAzt0P/E8m8vJ5H1Lh/Q31NU8GGPbb0K7dVyW5iPWfzuOuvtKDq2MJnVe4/BM/ThY87mjj+chtKa+bg7rSBZSvNN7SmJ+BFJjMTDs070qZaljCdwPu69pc1WNO2dUeqLiOdFIm7EKsSVNSOG0tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lER/C+3JUQpIDNNFI0LWYyYGNZgNx5y4qfQcqTbpB64=;
 b=Y+LMJYGZf1n7ecVgPOIyy1ZlI8kP0AHCc84Cxp3WOWJkn2r8yvduqqNDMtFsub50kFooapwJpbqh2Sp0ky8Jg0dfA96XnQYddCvE1JEAS3+V9q/JcyYlaWezd85qG2A7U1pzp0AdBSeDW9G+DpdUFYvNFLHfVouHD5+MyWbrDZk=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by DB9P195MB1396.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:326::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Sun, 28 May
 2023 20:15:59 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::c695:44b1:a751:3684]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::c695:44b1:a751:3684%3]) with mapi id 15.20.6433.020; Sun, 28 May 2023
 20:15:59 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Ahmad Fatoum <ahmad@a3f.at>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
Thread-Topic: [PATCH v2] Porting barebox to a new SoC
Thread-Index: AdmRYNrtRrBKX5DDRQGPzQVQ7b/lvQAGThgAAAAP8YAACFyNQA==
Date: Sun, 28 May 2023 20:15:59 +0000
Message-ID: <PR3P195MB05551AE3B3998B097BC90DCEC3459@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <20230528153735.3315271-1-ahmad@a3f.at>
In-Reply-To: <20230528153735.3315271-1-ahmad@a3f.at>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|DB9P195MB1396:EE_
x-ms-office365-filtering-correlation-id: b971de12-91c3-49dd-a3a1-08db5fb85a3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Bj1N0lWFg/c1jVCh/eRhgUUVm9L/+A7rPk0ycq4SAB/4iqCuAMnWgZqrGISsuFRhxgH/2Owe8AS/GCVJkyq15ZUy/pZSiMvBEfedvE7Tm6dx0R3Si2su/7zZ4jiaw5+x9ggFHfJLHAJrZrVF5On/4wLcIj7dW2o7Tjm3y94EApde1CcWFTR4k3XrYE2alTfOZQuCWlmoqnttt2asz6PL/ZIM+FrRpszIBj+hFOtROYo6sWXnagiWnwBZBKvP9v1oN0CyjaMFZWZJo3nPjTROdxVe25uqQ9HKI4ARyr0lzyw3p9EyGq/3wtDb+QKO01Kaspep5iC+FckRDHa3R1yu9zBwlk8OL4bS49W3OCspwFuSraAR+XjXk9koAgp1TaV/xMhReNwIwDYypbByyVo1LgAogngNkznmbvJRIRIxXPvGURnS2Gf+kk5iYlnwfNJLFxRkDuU2TD4TvTunDKEKd/8eVKM09/iCmpjJTy8WSvHNTJCZvOtCWnFS76Pk5KopWKqovmq8NCdA7MZm8ePv7gYGClnANj6XjIe1jOt+l2csHlqZr4sT34RfiqtgnykKXhbrLAtaPL6ASLeoffN0meITF0fHqA0NJ17B9RrC00=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(366004)(376002)(136003)(39840400004)(346002)(396003)(451199021)(966005)(38100700002)(186003)(53546011)(41300700001)(83380400001)(9686003)(6506007)(26005)(7696005)(478600001)(71200400001)(45080400002)(110136005)(66556008)(66946007)(66476007)(76116006)(66446008)(64756008)(55016003)(316002)(122000001)(52536014)(5660300002)(8676002)(8936002)(2906002)(86362001)(38070700005)(30864003)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+XFMYP0c3TGArPT9Ecgq4P3SslN+OD/yMjTfEQkO35qg4UQGCDX9nVsk0D9J?=
 =?us-ascii?Q?I3TLsDMHBkdp3COqYNZVskPx6xYrTYcE0c6yrPzPt07Rlcp8nTo/Z34Esq/A?=
 =?us-ascii?Q?UWdRj/wfNeV43SSeW0yfTUmrjHItHLU9I4gPxhv4xb79aL+1LWo9/U9IzMVh?=
 =?us-ascii?Q?pwyD41x5mrgEO1LpZEtTS82RhCiS2PNQ6bd6pCVvRX13pgoq6g3egaiNMnLe?=
 =?us-ascii?Q?jISf8rusQS7+o3tKgKJDwe0EELhiVzDHIJfdzSfhGE00155gnGWUfbo4fNL4?=
 =?us-ascii?Q?pwk8k3Q13tLJmjfhqhiO00IEWBNvgGON8GwcpdLrclebGGWX2d7EtsswIoki?=
 =?us-ascii?Q?BF3HM6U9BUpz3L3l9T9LcAClSlqjuDKiOA7wtQ7wfsuopgnam6V3GaJDqvMg?=
 =?us-ascii?Q?mOK2cWLEjaHtoT2SmdFi1pryI7Lg8ut32GmTquuOZHTPbyOSkczzQhfjsn0a?=
 =?us-ascii?Q?WehLWAKoiImKXupDL9JVZAI1VR1lG/LEVRQtguqRikrBMRQFjXhMiSiSkCFY?=
 =?us-ascii?Q?BqfT4ULNIGfr0BpDkOhlny+R6X3lxmXKCGEExf7mnLNXMBKJAK2Sg4J7uJak?=
 =?us-ascii?Q?C5CeFwfy0y1bgwH+Qp22S0QESxTM5UdLzSdTqCMUShPmHt04nupDe/w3m7RJ?=
 =?us-ascii?Q?mi957cWf71EPxenTilwdHWvJyVyOzKwSt9eXrOJNQNDdG60dkj6h8neuUEKT?=
 =?us-ascii?Q?9falXg/3tJ52CBct9yGaveev5pCKOjqpTAOqd4p3KRQ6NJbixP5aMWaKCsE6?=
 =?us-ascii?Q?fTOzRS5Pvt7NMeNM627VpzEOaHwptQTybefyZLttKzzXC3mVDDJRfbnpL02s?=
 =?us-ascii?Q?GcfuyMkgwFuUzvcKYNkl1o56K2ajrzHMnCnoek5cYQ4NxNSr9UcD3Nb7DYS3?=
 =?us-ascii?Q?ifqw9xFaEZxecNNl5mcgVg21vV4LtgHJErn5P0NL5Pa1j1r++ujK033FuBCG?=
 =?us-ascii?Q?B1+gsbes8LorORt8JA2CdqsDp28XjSDNfnYt8iqI+d11vknKxgfQZpNt9yX6?=
 =?us-ascii?Q?Le9IbMl/7A4H5Ni++rL9xKpVBRt7umRjrpx5VnqTMSx5rMFa8twUEhbg6B6U?=
 =?us-ascii?Q?i7sQVEFw8azRi6/UzqfxVtz/RmS09fkHfi9e8aKtPmJ47uAVtaaRN2ZLMbO7?=
 =?us-ascii?Q?7WIUK8z4dl0IHZ6IkoCNEU0nbN/UdSVhQs3VE4neUSNbfk6Xnu4tNthoYncH?=
 =?us-ascii?Q?LlwCtIWpqm5WyhsR8bZnDPOuJhMKeA554960B7cTvETulcItyeRSLeNO4RFi?=
 =?us-ascii?Q?Xz4keXWoDAt0fJBwsaGcU/xtCDpqxFmrGnstAUz1LBKc0sTOfNIWxivCur1c?=
 =?us-ascii?Q?VfN3VZVE/djXBQceVI6BpgkiE5D+7jTpFZ/0eLjhy3aL7x0Ck7rhW7Dp+NqI?=
 =?us-ascii?Q?Tjrm1qEn3w/QDRNt4CDVJtunC2tKi8h9W//5hD1pOC2zmH2mKLjr6t4FHpqr?=
 =?us-ascii?Q?tebvy90hB9pO2arSJlgCHdAtBWoXixCOMGAcBRdp1ujKWDPUFgooW4ew+E92?=
 =?us-ascii?Q?fq3CfbsNuyhuqpv7ES2NL8y4uJEtXccsbT5ahVy4WYGK6JsEycG+g0ndKYpc?=
 =?us-ascii?Q?tZb+AN6y8DlLP8qifBY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b971de12-91c3-49dd-a3a1-08db5fb85a3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2023 20:15:59.5427
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7dhXRIsicGSGya3hG+nD8TWGCIG1+B1dnFJw+yrMCqW3HiKZuacH4i9rd8SagLaYkT8yPHTPpmMr3u8pYHP/Jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P195MB1396
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_131609_329776_DA8371DD 
X-CRM114-Status: GOOD (  27.47  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

Thank you so much for your kind support!

Indeed we also have a 16GB DRAM that starts from address 0 (though currentl=
y we don't have the controller settings (under development)).

I also wrote the BootROM (BL1) for this SoC (128KB ROM @ address 0xC0040000=
00).
I understand now that it would be best for me to develop BL2 that will run =
from our SRAM.

As this BL2 code is bare-metal I have no problem or limitations with the 40=
 bit addresses.
The BL2 code will initialize the DRAM controller and then copy Barebox imag=
e from NOR Flash to address 0 of the DRAM.
Our NOR Flash is 128MB in size and it is accessed via QSPI controller.

I tried applying your suggested patch but got an error while doing so:
$git apply 0002-Ahmad.patch
0002-Ahmad.patch:115: trailing whitespace.
      .of_compatible =3D spider_board_of_match, };=20
error: corrupt patch at line 117

After some digging I found that my Outlook probably messed with the patch f=
ormat (even though I am using text only and no HTML format).
When I went to the web and copied the patch from there (mailing list archiv=
e) it was working well (i.e. no compilation error).

Cheers,
Lior.

-----Original Message-----
From: Ahmad Fatoum <ahmad@a3f.at>=20
Sent: Sunday, May 28, 2023 6:38 PM
To: barebox@lists.infradead.org
Cc: Lior Weintraub <liorw@pliops.com>
Subject: [PATCH v2] Porting barebox to a new SoC

CAUTION: External Sender

From: Lior Weintraub <liorw@pliops.com>

Hi,

I tried to follow the porting guide on https://ddec1-0-en-ctp.trendmicro.co=
m:443/wis/clicktime/v1/query?url=3Dhttps%3a%2f%2fwww.barebox.org%2fdoc%2fla=
test%2fdevel%2fporting.html%23&umid=3D60097eda-f136-45a1-9c8e-cf6a76e45cf8&=
auth=3D860a7ebb9feba264acc79b6e38eb59582349362c-480ae23736add41c88ab8d30c09=
0a75517ca7f9e but couldn't follow the instructions.
I would like to port barebox to a new SoC (which is not a derivative of any=
 known SoC).
It has the following:
* Single Cortex A53
* SRAM (4MB) located on address 0xC000000000

The below patch shows my initial test to try and have a starting point.
I am setting env variables:
export ARCH=3Darm64
export CROSS_COMPILE=3D/home/pliops/workspace/ARM/arm-gnu-toolchain/bin/aar=
ch64-none-elf-

Then I build with:
make spider_defconfig && make

This gives an error:
aarch64-none-elf-gcc: error: unrecognized argument in option '-mabi=3Dapcs-=
gnu'
aarch64-none-elf-gcc: note: valid arguments to '-mabi=3D' are: ilp32 lp64
aarch64-none-elf-gcc: error: unrecognized command-line option '-msoft-float=
'
aarch64-none-elf-gcc: error: unrecognized command-line option '-mno-unalign=
ed-access'
/home/pliops/workspace/simplest-linux-demo/barebox/scripts/Makefile.build:1=
40: recipe for target 'scripts/mod/empty.o' failed
make[2]: *** [scripts/mod/empty.o] Error 1

Not sure why the compiler flags get -mabi=3Dapcs-gnu when I explicitly set =
CONFIG_CPU_V8 and the arch/arm/Makefile has:
ifeq ($(CONFIG_CPU_V8), y)
CFLAGS_ABI      :=3D-mabi=3Dlp64

The changes I did:
>From 848b5f9b18bb1bb96d197cbc1b368ee0a729d581 Mon Sep 17 00:00:00 2001
---
 arch/arm/Kconfig                      | 13 ++++++++
 arch/arm/Makefile                     |  1 +
 arch/arm/boards/Makefile              |  1 +
 arch/arm/boards/spider-evk/Makefile   |  4 +++
 arch/arm/boards/spider-evk/board.c    | 26 +++++++++++++++
 arch/arm/boards/spider-evk/lowlevel.c | 30 +++++++++++++++++
 arch/arm/configs/spider_defconfig     |  8 +++++
 arch/arm/dts/Makefile                 |  1 +
 arch/arm/dts/spider-mk1-evk.dts       | 10 ++++++
 arch/arm/dts/spider-mk1.dtsi          | 46 +++++++++++++++++++++++++++
 arch/arm/mach-spider/Kconfig          | 16 ++++++++++
 arch/arm/mach-spider/Makefile         |  1 +
 arch/arm/mach-spider/lowlevel.c       | 14 ++++++++
 images/Makefile                       |  1 +
 images/Makefile.spider                |  5 +++
 include/mach/spider/lowlevel.h        |  7 ++++
 16 files changed, 184 insertions(+)
 create mode 100644 arch/arm/boards/spider-evk/Makefile
 create mode 100644 arch/arm/boards/spider-evk/board.c
 create mode 100644 arch/arm/boards/spider-evk/lowlevel.c
 create mode 100644 arch/arm/configs/spider_defconfig  create mode 100644 a=
rch/arm/dts/spider-mk1-evk.dts  create mode 100644 arch/arm/dts/spider-mk1.=
dtsi  create mode 100644 arch/arm/mach-spider/Kconfig  create mode 100644 a=
rch/arm/mach-spider/Makefile  create mode 100644 arch/arm/mach-spider/lowle=
vel.c  create mode 100644 images/Makefile.spider  create mode 100644 includ=
e/mach/spider/lowlevel.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig index e76ee0f6dfe1..e5dcf1=
28447e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -255,6 +255,18 @@ config ARCH_ROCKCHIP
        select HAS_DEBUG_LL
        imply GPIO_ROCKCHIP

+config ARCH_SPIDER
+       bool "Pliops Spider based"
+       depends on 64BIT
+       depends on ARCH_MULTIARCH
+       select GPIOLIB
+       select HAVE_PBL_MULTI_IMAGES
+       select COMMON_CLK
+       select CLKDEV_LOOKUP
+       select COMMON_CLK_OF_PROVIDER
+       select OFTREE
+       select OFDEVICE
+
 config ARCH_STM32MP
        bool "STMicroelectronics STM32MP"
        depends on 32BIT
@@ -331,6 +343,7 @@ source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
 source "arch/arm/mach-rockchip/Kconfig"
 source "arch/arm/mach-socfpga/Kconfig"
+source "arch/arm/mach-spider/Kconfig"
 source "arch/arm/mach-stm32mp/Kconfig"
 source "arch/arm/mach-versatile/Kconfig"
 source "arch/arm/mach-vexpress/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile index 35ebc70f44e2..4c63=
dfee48f4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -101,6 +101,7 @@ machine-$(CONFIG_ARCH_MXS)          +=3D mxs
 machine-$(CONFIG_ARCH_MVEBU)           +=3D mvebu
 machine-$(CONFIG_ARCH_NOMADIK)         +=3D nomadik
 machine-$(CONFIG_ARCH_OMAP)            +=3D omap
+machine-$(CONFIG_ARCH_SPIDER)          +=3D spider
 machine-$(CONFIG_ARCH_PXA)             +=3D pxa
 machine-$(CONFIG_ARCH_ROCKCHIP)                +=3D rockchip
 machine-$(CONFIG_ARCH_SAMSUNG)         +=3D samsung
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile index 2877=
debad535..6fe0a90c81ea 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -135,6 +135,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO)        +=
=3D terasic-de10-nano/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)      +=3D terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)              +=3D solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)           +=3D solidrun-microsom/
+obj-$(CONFIG_MACH_SPIDER_MK1_EVK)              +=3D spider-evk/
 obj-$(CONFIG_MACH_STM32MP15XX_DKX)             +=3D stm32mp15xx-dkx/
 obj-$(CONFIG_MACH_STM32MP13XX_DK)              +=3D stm32mp13xx-dk/
 obj-$(CONFIG_MACH_LXA_MC1)                     +=3D lxa-mc1/
diff --git a/arch/arm/boards/spider-evk/Makefile b/arch/arm/boards/spider-e=
vk/Makefile
new file mode 100644
index 000000000000..da63d2625f7a
--- /dev/null
+++ b/arch/arm/boards/spider-evk/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y +=3D board.o
+lwl-y +=3D lowlevel.o
diff --git a/arch/arm/boards/spider-evk/board.c b/arch/arm/boards/spider-ev=
k/board.c
new file mode 100644
index 000000000000..3920e83b457d
--- /dev/null
+++ b/arch/arm/boards/spider-evk/board.c
@@ -0,0 +1,26 @@
+#include <bbu.h>
+#include <boot.h>
+#include <bootm.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <environment.h>
+#include <fcntl.h>
+#include <globalvar.h>
+
+static int spider_board_probe(struct device *dev) {
+      /* Do some board-specific setup */
+      return 0;
+}
+
+static const struct of_device_id spider_board_of_match[] =3D {
+      { .compatible =3D "pliops,spider-mk1-evk" },
+      { /* sentinel */ },
+};
+
+static struct driver spider_board_driver =3D {
+      .name =3D "board-spider",
+      .probe =3D spider_board_probe,
+      .of_compatible =3D spider_board_of_match, };=20
+device_platform_driver(spider_board_driver);
diff --git a/arch/arm/boards/spider-evk/lowlevel.c b/arch/arm/boards/spider=
-evk/lowlevel.c
new file mode 100644
index 000000000000..e36fcde4208e
--- /dev/null
+++ b/arch/arm/boards/spider-evk/lowlevel.c
@@ -0,0 +1,30 @@
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/spider/lowlevel.h>
+
+#define BASE_ADDR       (0xD000307000)
+#define GPRAM_ADDR      (0xC000000000)
+#define MY_STACK_TOP    (0xC000000000 + SZ_2M) // Set the stack 2MB from G=
PRAM start (excatly in the middle)
+static inline void spider_serial_putc(void *base, int c) {
+//     if (!(readl(base + UCR1) & UCR1_UARTEN))
+//             return;
+//
+//     while (!(readl(base + USR2) & USR2_TXDC));
+//
+//     writel(c, base + URTX0);
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_spider_mk1_evk, MY_STACK_TOP, r0, r1,=20
+r2) {
+       extern char __dtb_spider_mk1_evk_start[];
+
+       spider_lowlevel_init();
+
+       relocate_to_current_adr();
+       setup_c();
+
+       pbl_set_putc(spider_serial_putc, (void *)BASE_ADDR);
+
+       barebox_arm_entry(GPRAM_ADDR, SZ_2M,=20
+__dtb_spider_mk1_evk_start); }
diff --git a/arch/arm/configs/spider_defconfig b/arch/arm/configs/spider_de=
fconfig
new file mode 100644
index 000000000000..c91bb889d97f
--- /dev/null
+++ b/arch/arm/configs/spider_defconfig
@@ -0,0 +1,8 @@
+CONFIG_ARCH_SPIDER=3Dy
+CONFIG_MACH_SPIDER_MK1_EVK=3Dy
+CONFIG_BOARD_ARM_GENERIC_DT=3Dy
+CONFIG_MALLOC_TLSF=3Dy
+CONFIG_KALLSYMS=3Dy
+CONFIG_RELOCATABLE=3Dy
+CONFIG_CONSOLE_ALLOW_COLOR=3Dy
+CONFIG_PBL_CONSOLE=3Dy
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile index 98f4c4e019=
4b..94b304d4878f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -134,6 +134,7 @@ lwl-$(CONFIG_MACH_SOLIDRUN_CUBOX) +=3D dove-cubox-bb.dt=
b.o
 lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) +=3D imx6dl-hummingboard.dtb.o imx6q-=
hummingboard.dtb.o \
                                imx6dl-hummingboard2.dtb.o imx6q-hummingboa=
rd2.dtb.o \
                                imx6q-h100.dtb.o
+lwl-$(CONFIG_MACH_SPIDER_MK1_EVK) +=3D spider-mk1-evk.dtb.o
 lwl-$(CONFIG_MACH_SKOV_IMX6) +=3D imx6s-skov-imx6.dtb.o imx6dl-skov-imx6.d=
tb.o imx6q-skov-imx6.dtb.o
 lwl-$(CONFIG_MACH_SKOV_ARM9CPU) +=3D at91-skov-arm9cpu.dtb.o
 lwl-$(CONFIG_MACH_SEEED_ODYSSEY) +=3D stm32mp157c-odyssey.dtb.o diff --git=
 a/arch/arm/dts/spider-mk1-evk.dts b/arch/arm/dts/spider-mk1-evk.dts new fi=
le mode 100644 index 000000000000..b8081cb85bf8
--- /dev/null
+++ b/arch/arm/dts/spider-mk1-evk.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
+
+/dts-v1/;
+
+#include "spider-mk1.dtsi"
+
+/ {
+       model =3D "Pliops Spider MK-I EVK";
+       compatible =3D "pliops,spider-mk1-evk"; };
diff --git a/arch/arm/dts/spider-mk1.dtsi b/arch/arm/dts/spider-mk1.dtsi ne=
w file mode 100644 index 000000000000..d4613848169d
--- /dev/null
+++ b/arch/arm/dts/spider-mk1.dtsi
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
+
+/ {
+       #address-cells =3D <2>;
+       #size-cells =3D <2>;
+
+       chosen {
+               stdout-path =3D &uart0;
+       };
+
+       aliases {
+               serial0 =3D &uart0;
+       };
+
+       cpus {
+               #address-cells =3D <1>;
+               #size-cells =3D <0>;
+
+               cpu0: cpu@0 {
+                       device_type =3D "cpu";
+                       compatible =3D "arm,cortex-a53";
+                       reg =3D <0x0>;
+               };
+       };
+
+       memory@1000000 {
+               reg =3D <0x0 0x1000000 0x0 0x400000>; /* 128M */
+               device_type =3D "memory";
+       };
+
+       soc {
+               #address-cells =3D <2>;
+               #size-cells =3D <2>;
+               ranges;
+
+               sram@c000000000 {
+                       compatible =3D "mmio-sram";
+                       reg =3D <0xc0 0x0 0x0 0x400000>;
+               };
+
+               uart0: serial@d000307000 {
+                       compatible =3D "pliops,spider-uart";
+                       reg =3D <0xd0 0x307000 0 0x1000>;
+               };
+       };
+};
diff --git a/arch/arm/mach-spider/Kconfig b/arch/arm/mach-spider/Kconfig ne=
w file mode 100644 index 000000000000..6d2f888a5fd8
--- /dev/null
+++ b/arch/arm/mach-spider/Kconfig
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+if ARCH_SPIDER
+
+config ARCH_SPIDER_MK1
+       bool
+       select CPU_V8
+       help
+         The first Cortex-A53-based SoC of the spider family.
+         This symbol is invisble and select by boards
+
+config MACH_SPIDER_MK1_EVK
+       bool "Pliops Spider Reference Design Board"
+       select ARCH_SPIDER_MK1
+
+endif
diff --git a/arch/arm/mach-spider/Makefile b/arch/arm/mach-spider/Makefile =
new file mode 100644 index 000000000000..b08c4a93ca27
--- /dev/null
+++ b/arch/arm/mach-spider/Makefile
@@ -0,0 +1 @@
+lwl-y +=3D lowlevel.o
diff --git a/arch/arm/mach-spider/lowlevel.c b/arch/arm/mach-spider/lowleve=
l.c new file mode 100644 index 000000000000..5d62ef0f39e5
--- /dev/null
+++ b/arch/arm/mach-spider/lowlevel.c
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier:     GPL-2.0+
+
+#include <linux/types.h>
+#include <mach/spider/lowlevel.h>
+#include <asm/barebox-arm-head.h>
+
+void spider_lowlevel_init(void)
+{
+       arm_cpu_lowlevel_init();
+       /*
+        * not yet relocated, only do writel/readl for stuff that's
+        * critical to run early. No global variables allowed.
+        */
+}
diff --git a/images/Makefile b/images/Makefile index c93f9e268978..97521e71=
3228 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -150,6 +150,7 @@ include $(srctree)/images/Makefile.mxs  include $(srctr=
ee)/images/Makefile.omap3  include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
+include $(srctree)/images/Makefile.spider
 include $(srctree)/images/Makefile.stm32mp
 include $(srctree)/images/Makefile.tegra  include $(srctree)/images/Makefi=
le.versatile
diff --git a/images/Makefile.spider b/images/Makefile.spider new file mode =
100644 index 000000000000..c32f2762df04
--- /dev/null
+++ b/images/Makefile.spider
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+pblb-$(CONFIG_MACH_SPIDER_MK1_EVK) +=3D start_spider_mk1_evk=20
+FILE_barebox-spider-mk1-evk.img =3D start_spider_mk1_evk.pblb
+image-$(CONFIG_MACH_SPIDER_MK1_EVK) +=3D barebox-spider-mk1-evk.img
diff --git a/include/mach/spider/lowlevel.h b/include/mach/spider/lowlevel.=
h new file mode 100644 index 000000000000..6e0ce1c77f7e
--- /dev/null
+++ b/include/mach/spider/lowlevel.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0+ */ #ifndef __MACH_SPIDER_H_=20
+#define __MACH_SPIDER_H_
+
+void spider_lowlevel_init(void);
+
+#endif
--
2.38.4


