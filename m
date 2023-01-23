Delivery-date: Mon, 23 Jan 2023 07:10:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJq1v-002pic-IZ
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 07:10:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJq1t-0000QO-1W
	for lore@pengutronix.de; Mon, 23 Jan 2023 07:10:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oqtFe0XqyorNFmFVti7X5YO5qV0YMgeqcCFNuYsKf5o=; b=cMwP3Vv9UUnPYfyrWfe+o8DABj
	NScCnj/SkndeyFSB1YvEafpB5sjZiTABBleuqtWEVauInBVh4kBqtVFiv957uuZfD/pBSad3oCpLZ
	OfnFHhYUKozgH4vhBIkVYKi/Qdf0dx6DdKxCKpvkKifjuzwRd9SASDgAACxiDHMOljUq1Ee8hkOrv
	TGAowTpEJ7V+v/3+bBmqNm3rPPER7KXE2Ap1yk3J7ZSurxpRBnqqxFFFBfHHSrXiX/HhKJ4IC3aLl
	1MQ6V/ToMUr6mZbLqt8m5ryiosHIVByV/kqZ8uHAumVHbqOj+ru3biAcRNFfGbVpeDwpUP4SNxKlX
	A0qncdmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJq03-00G5rN-EQ; Mon, 23 Jan 2023 06:08:11 +0000
Received: from mail-he1eur01on2128.outbound.protection.outlook.com ([40.107.13.128] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJpzv-00G5qf-NT
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 06:08:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQoZq03jriWa2vWj8arDgz8wQyJpI77+UdH8Rg1MWHrMmYwOqgMtATD9rE+f6K/PlO1u1lFCJiKQx+5bFM6anJjTi+hURMVktporjgJ7yOKAF+ctZbKeW8TwgRC3K96Sjil/eKOlwLEuDXbxdXk9bmIC0JIF7P0MbxjNUAkh7Ad3/vGR5yRF1pLCIgvKepUqR5d4fvr2gIlrZg3yCNLmub9XUf92WALRw9RuhOiDBiG+4yXdEi+y/dUph3oZaPWksvLm8ZQyaRVx21GzeINVm2UzfVp7wx2j0P6jH/lLDkfxggW9hyeS38zWQwiFilGiDCzxR3nSwruEqHtWj5yWQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oqtFe0XqyorNFmFVti7X5YO5qV0YMgeqcCFNuYsKf5o=;
 b=E+m8zb8XeG0mjEpI/RaASKG27Ughn3pEsXOh5s4shwoYOP3TCkvbqYbwWoKeFawvoUgeeb/sSGV0guTB0x1f/s+mIJW4/ri4RKqbtVnyaEB9Q3hav3SpmOXaSH670qYrRtyIROSn9MJygOg5sM7CTdzIvuohGhUvwxv8Mf1fqj7M/b3NNquRqrmt51fP15Qse+mOsFGRnzPDIO56hBqGNk5hjOiQ513U5XmUG2PQT4nt2u9rIjCj9IYCxKgibBHSnMOsbphhWXmpKcoUF7OsJQz26BuDW7Yox2oUOE/Vr98FyJmV1CPSAmhFrXqtotDihf2L5QE/VILf82TVyLhTIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqtFe0XqyorNFmFVti7X5YO5qV0YMgeqcCFNuYsKf5o=;
 b=f8haldSTjaFxSd2g1cxSaccJutY6WLsikxYFAPtBXH7aBtWZro6cqxCjiFeQZeE2UNyEfDfk/LcEeEHwlE2Fj849uQiClN4aBRP+n/5DicbgVTgvilj4vAzvX8X/LVzQPos9SaiHPKhgtqJVaujE1P6xxpz9QZfqmkbA72DkRTw=
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com (2603:10a6:6:54::31) by
 AS4PR06MB8445.eurprd06.prod.outlook.com (2603:10a6:20b:4e0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.22; Mon, 23 Jan
 2023 06:07:52 +0000
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::51e:b90a:74b1:aa3]) by DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::51e:b90a:74b1:aa3%6]) with mapi id 15.20.6002.028; Mon, 23 Jan 2023
 06:07:52 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v2 1/1] ARM: i.MX8M: add PCA9450 PMIC on rev-b EVK
Thread-Index: AQHZJaOq8PAQup/TNUmap1OmzTxaW66ZAHEAgAx9DICABhay9A==
Date: Mon, 23 Jan 2023 06:07:52 +0000
Message-ID:  <DB6PR06MB400811AFA22CBA31D1819C9FBCC89@DB6PR06MB4008.eurprd06.prod.outlook.com>
References: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
 <e34cc83c-f3cc-27e0-ab23-fe00ccbf3e6e@pengutronix.de>
 <20230119085949.5f2f7vmlyrkspqlm@pengutronix.de>
In-Reply-To: <20230119085949.5f2f7vmlyrkspqlm@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR06MB4008:EE_|AS4PR06MB8445:EE_
x-ms-office365-filtering-correlation-id: 5eedd661-3247-4228-3780-08dafd082945
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  3kzYKHykQYOxHoFeVhM+RNbh4b5bEh0nwJyum86/WmJ0XYMy7X76Tb7UBm/Ug8NGx1q1UubAthV2TaxQCeR9iDcQOGvohkKSe0YXsjUrQhUQHmSxxvyI4U3/v26xgkVVrGDW1R8LRw8qIowS+kIEGCFw4sEmx7bnzkwXpTGy3G1AblRTcQzp3mTPvehajr6tnp6UMfLfE3SJfX/uy4Tc+r+Wzf351l63yZ1/hiFpFDeaSuv5XEEsvSWt1DZK+DHszFh9UDKgBnn5BF7rHLNWeGrHnHRwSE5eyRCgXV3EQ1F306R7gBn4JX/CJpvOXvYuEd4S5GpZUIgR2RFQ3RHki9NvFZbcY9u+9KeaAQaf8CFTjReEzCiLzpK8jVFkCNzv41QYA8MAhNDaTGJ/sIcZ/XjUk0T2L90Hs2t9FCROg5mw4MuGgiXAuU8sj4gcpO6NEsrUJz/1pdOCslr4niLjpGr3ouKMq2dQWmoLoErCPhXQog97qLUZ3Zm0Mav2F2mepPTJ+Sca79EHOUKZR5ko8JvOB3j64JAhJkkGhhdQsEv5DhOjPZx8Yzqq+lY3aCa/1ntZJ2GrqWrbdGbP6grxFCzJuimr+Kk+L/2X8OFrfmUP0bSbi1cW1QYVjvUDT92NdhrOMkPzP++kon3X0Rj3TV04lY6CnXRWmHCamYSIUg4dDVPS7d0q6d+YF886EdcRTwaFmzkUi/+hE5t4MqVhfcYR3wGgXGeTmcQlAsf2aX0=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR06MB4008.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(346002)(376002)(396003)(39860400002)(451199015)(52536014)(2906002)(5660300002)(8936002)(45080400002)(6506007)(66946007)(64756008)(91956017)(26005)(71200400001)(76116006)(83380400001)(86362001)(66476007)(8676002)(66556008)(316002)(110136005)(4326008)(41300700001)(966005)(9686003)(186003)(53546011)(7696005)(478600001)(38070700005)(33656002)(38100700002)(55016003)(66446008)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?Windows-1252?Q?LdsM/mZYFerZ7sDVQK2oE+2ymFY3Y8/wLBJss1OLoEQRJAYBjlWxmi3U?=
 =?Windows-1252?Q?vrfKMlbvCHLzWDdZpMn8C5xQw4aWaZKn0CY/SbOcLRrHjINgRietKYZg?=
 =?Windows-1252?Q?xEDUAUCbEzvLLdYMHt77NOrVjWvbJQIqpUS/b5BfzjwCyVrbrkxgHcGO?=
 =?Windows-1252?Q?pzO0ueJaJGCiVbp+RQHrhcnJ9bpeOeyfAd1+BMN9HWvFVkFO2FHd+Edn?=
 =?Windows-1252?Q?ZhDO0ppNuuKFIQjIspvwq7c7s/giC1sodIrOpc5hBA3hVBAaOJUvSeMl?=
 =?Windows-1252?Q?qJNnrhHwP4N8hG6xztxIKgLytmhP5C+mYzNRDcAYBctGhsIVkrJI1k1k?=
 =?Windows-1252?Q?RvUDNBmuFiZfy98YO0VDuQDEbJ31NOJQMxDWlYc3ZTY1bIZZ6CNuS2uI?=
 =?Windows-1252?Q?366JsYxErFTDtVeFFzAuIdfw4NyIDpQxMDYTi8FUr3eDR4VR0bR9nLtC?=
 =?Windows-1252?Q?0nWJ7xjSleF6Hi3W30ePxECtIlNeKdYS//3Dd310UAcEicZK5AjAtpk0?=
 =?Windows-1252?Q?zU+UZskKQYNEDHT8d9GwFCo2i6vS4r9X7lCDWRNOg2XGBJeZY/AE7u/j?=
 =?Windows-1252?Q?nEj0usEhW9GOM3ctUcHEfAYFpm1YcsIlgaoGQWpdzckSmTuO7QdcRa2/?=
 =?Windows-1252?Q?LNclf3+ZMPV4cqejHADBskN+Q3gvVJrWTat7GC0YP/5143Vw6CkTdzkJ?=
 =?Windows-1252?Q?PvahJxJEvQKlXuDrFprbdd+YtlQn2Pfavx5JePl2R9u8s2MCbK4TwU66?=
 =?Windows-1252?Q?zzgjpe40oQsNwTinqyb+MJ4VzNWZTbWdY/OqLIcPm8D20BQyiODP88Dj?=
 =?Windows-1252?Q?5C4vH7UEzQ9P4Kk3c2goYHpEymkwptmufvNNHZeJTWQetarFBFve508Z?=
 =?Windows-1252?Q?JcZcTN2I/5Zs8FXu4gMJE/scjgl3Tn4l2gw856fVKx5ZrDM7l5LSJRPU?=
 =?Windows-1252?Q?c14DiNIWPWFgDyd7RR38Vg9bi2sj3bIXJ65Jv8wJJjW7FJVQ7kULnptk?=
 =?Windows-1252?Q?ENsC9dDevZuw9E63CeSmlunZc21tTgVQ7ICKMYwL09cLXqAPLQbaHjR+?=
 =?Windows-1252?Q?hHDUypsxmb423U4lB3deukpzIuFNAvdWEaDAi1pRW7xF6fKROZzvD9uq?=
 =?Windows-1252?Q?gWgZyQv9q6XDRnhaB5hpIjsbk1j7D6SJuZ/AYOhvxz4vBN4TpYdY2yKD?=
 =?Windows-1252?Q?zpMOIy/UtRFCZ/2pVUm+cJ/qcaD1H0Qbyh6pqd/9v1ujdwOOOirp5AlS?=
 =?Windows-1252?Q?1WWbWcnLf/If97POH42CpEBMETRmF9uZwmvWM3owCZk5inomOUwpiHjT?=
 =?Windows-1252?Q?BlznPJp26Wcs4YPCyFA4WqVv2B7FU0WzMHngB0tNIU+VhKozpLjsEx7X?=
 =?Windows-1252?Q?hGdBuQr90dnCBZpEaaPeiFH7W8fnVI1e6FSR2iT+bVa2eIo/eL5ECoVO?=
 =?Windows-1252?Q?JRd+gXL5t8udR6ebBIrT8IcNnzTRo95OYT3EBhyNwT4+SY92xYXf/JFz?=
 =?Windows-1252?Q?KzopkOzf1lM1uWFyPzuhgMnfylorrItte4OQAUSox1+L7vsyywaJuMCw?=
 =?Windows-1252?Q?ExpucXV/LImMD1owCkGGmFP9963MLPdVEwf3/6iLzG2eYESmlbBe6U5l?=
 =?Windows-1252?Q?AdR9ndnZiZTbbzlwdCKmGo7cb0GAr9yMgKxfONDTATl4oRPyOTdZ/fC6?=
 =?Windows-1252?Q?trRsaLMBJaXDNAFevg/dB8+oFSYtGEjs1Ky6TXszHVlQt5hUshsq2jyZ?=
 =?Windows-1252?Q?P6rWMxpXL9ci8Tk7o7s=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR06MB4008.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eedd661-3247-4228-3780-08dafd082945
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 06:07:52.0157
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aaG5kpZO8VDUefkPlimopTpejZOMuJb/jGJU6camt+Av4bkD30bTiFBI76rO8HnUXFiZoTHq3cKfY9E63Cqs3RcXDMEbCcAXbLczeDez6wWCSpuJrJDjgYMDoJe3zU7Y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR06MB8445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_220804_279416_46091F00 
X-CRM114-Status: GOOD (  32.04  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/1] ARM: i.MX8M: add PCA9450 PMIC on rev-b EVK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hoi

> > Hi,
> >
> > How do you generate your patches? Easiest is:
> >
> >   git config sendemail.to barebox@lists.infradead.org
> >   git send-email -3 --annotate
> >
> > This will take care to number the patches correctly.
> >
> > On 11.01.23 11:01, Johannes Schneider wrote:
> > > Configure and setup the PMIC found on rev-b EVKs.
> > > The code is algiend with how imx8mn-evk handles both
> >
> > aligned*
> >
> > > PMIC variants: pca9450 vs bd71837
> >
> > Please note which Boards you tested this on.
> >
> > >
> > > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystem=
s.com>
> > > ---
> > >  arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 51 +++++++++++++++------=
--
> > >  1 file changed, 34 insertions(+), 17 deletions(-)
> > >
> > > diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boa=
rds/nxp-imx8mm-evk/lowlevel.c
> > > index 6132df53ec..409554c2d5 100644
> > > --- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> > > +++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> > > @@ -16,6 +16,7 @@
> > >  #include <mach/iomux-mx8mm.h>
> > >  #include <mach/imx8m-ccm-regs.h>
> > >  #include <mfd/bd71837.h>
> > > +#include <mfd/pca9450.h>
> > >  #include <mach/xload.h>
> > >  #include <soc/imx8m/ddr.h>
> > >  #include <image-metadata.h>
> > > @@ -38,6 +39,25 @@ static void setup_uart(void)
> > >     putc_ll('>');
> > >  }
> > >
> > > +static struct pmic_config pca9450_cfg[] =3D {
> > > +   /* BUCKxOUT_DVS0/1 control BUCK123 output */
> > > +   { PCA9450_BUCK123_DVS, 0x29 },
> > > +   /*
> > > +    * increase VDD_SOC to typical value 0.95V before first
> > > +    * DRAM access, set DVS1 to 0.85v for suspend.
> > > +    * Enable DVS control through PMIC_STBY_REQ and
> > > +    * set B1_ENMODE=3D1 (ON by PMIC_ON_REQ=3DH)
> > > +    */
> > > +   { PCA9450_BUCK1OUT_DVS0, 0x1C },
> > > +   /* Set DVS1 to 0.85v for suspend */
> > > +   /* Enable DVS control through PMIC_STBY_REQ and set B1_ENMODE=3D1=
 (ON by PMIC_ON_REQ=3DH) */
> > > +   { PCA9450_BUCK1OUT_DVS1, 0x14 },
> > > +   { PCA9450_BUCK1CTRL, 0x59 },
> > > +
> > > +   /* set WDOG_B_CFG to cold reset */
> > > +   { PCA9450_RESET_CTRL, 0xA1 },
> > > +};
>
> While picking this patch I noticed that you're configuring the PMIC
> differently compared to upstream u-boot. What is the reason for this?
>
> Regards,
>   Marco
>

very observant, the init sequence matches the 8mp and 8mn already in barebo=
x.
uboot 8mn and barebox 8mn differ too

as far as i can see the "only" differences are related to standby?
PCA9450_BUCK1OUT_DVS1 0x10  vs  0x1c

on our project hardware the settings seemed to work fine - but standby was =
not tested :-s

-> should i "blindly" adopt the upstream u-boot settings?
or is it preferable to keep all three boards (mp, mn and now mm) the same?


> > > +
> > >  static struct pmic_config bd71837_cfg[] =3D {
> > >     /* decrease RESET key long push time from the default 10s to 10ms=
 */
> > >     { BD718XX_PWRONCONFIG1, 0x0 },
> > > @@ -51,21 +71,6 @@ static struct pmic_config bd71837_cfg[] =3D {
> > >     { BD718XX_REGLOCK, 0x11 },
> > >  };
> > >
> > > -static void power_init_board(void)
> > > -{
> >
> > Can you leave this function as-is? This will make the diff more
> > readable.
> >
> > > -   struct pbl_i2c *i2c;
> > > -
> > > -   imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
> > > -   imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
> > > -
> > > -   imx8mm_early_clock_init();
> > > -   imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> > > -
> > > -   i2c =3D imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
> > > -
> > > -   pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
> > > -}
> > > -
> > >  extern struct dram_timing_info imx8mm_evk_dram_timing;
> > >
> > >  static void start_atf(void)
> > > @@ -78,8 +83,20 @@ static void start_atf(void)
> > >     if (current_el() !=3D 3)
> > >             return;
> > >
> > > -   power_init_board();
> > > -   imx8mm_ddr_init(&imx8mm_evk_dram_timing, DRAM_TYPE_LPDDR4);
> > > +   imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
> > > +   imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
> > > +
> > > +   imx8mm_early_clock_init();
> > > +   imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> > > +
> > > +   i2c =3D imx8m_i2c_early_init(IOMEM(MX8MM_I2C1_BASE_ADDR));
> > > +
> > > +   imx8mm_ddr_init(&imx8mm_evk_lpddr4_timing, DRAM_TYPE_LPDDR4);
> > > +   if (i2c_dev_probe(i2c, 0x25, true) =3D=3D 0) {
> > > +           pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450=
_cfg));
> > > +   } else {
> > > +           pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837=
_cfg));
> > > +   }
> >
> > Nitpick: You can drop the braces (Kernel coding style).
> >
> > >
> > >     imx8mm_load_and_start_image_via_tfa();
> > >  }
> >

gru=DF
Johannes

________________________________________
From: Marco Felsch <m.felsch@pengutronix.de>
Sent: Thursday, January 19, 2023 09:59
To: Ahmad Fatoum
Cc: SCHNEIDER Johannes; barebox@lists.infradead.org
Subject: Re: [PATCH v2 1/1] ARM: i.MX8M: add PCA9450 PMIC on rev-b EVK

This email is not from Hexagon=92s Office 365 instance. Please be careful w=
hile clicking links, opening attachments, or replying to this email.


On 23-01-11, Ahmad Fatoum wrote:
> Hi,
>
> How do you generate your patches? Easiest is:
>
>   git config sendemail.to barebox@lists.infradead.org
>   git send-email -3 --annotate
>
> This will take care to number the patches correctly.
>
> On 11.01.23 11:01, Johannes Schneider wrote:
> > Configure and setup the PMIC found on rev-b EVKs.
> > The code is algiend with how imx8mn-evk handles both
>
> aligned*
>
> > PMIC variants: pca9450 vs bd71837
>
> Please note which Boards you tested this on.
>
> >
> > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.=
com>
> > ---
> >  arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 51 +++++++++++++++--------
> >  1 file changed, 34 insertions(+), 17 deletions(-)
> >
> > diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/board=
s/nxp-imx8mm-evk/lowlevel.c
> > index 6132df53ec..409554c2d5 100644
> > --- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> > +++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> > @@ -16,6 +16,7 @@
> >  #include <mach/iomux-mx8mm.h>
> >  #include <mach/imx8m-ccm-regs.h>
> >  #include <mfd/bd71837.h>
> > +#include <mfd/pca9450.h>
> >  #include <mach/xload.h>
> >  #include <soc/imx8m/ddr.h>
> >  #include <image-metadata.h>
> > @@ -38,6 +39,25 @@ static void setup_uart(void)
> >     putc_ll('>');
> >  }
> >
> > +static struct pmic_config pca9450_cfg[] =3D {
> > +   /* BUCKxOUT_DVS0/1 control BUCK123 output */
> > +   { PCA9450_BUCK123_DVS, 0x29 },
> > +   /*
> > +    * increase VDD_SOC to typical value 0.95V before first
> > +    * DRAM access, set DVS1 to 0.85v for suspend.
> > +    * Enable DVS control through PMIC_STBY_REQ and
> > +    * set B1_ENMODE=3D1 (ON by PMIC_ON_REQ=3DH)
> > +    */
> > +   { PCA9450_BUCK1OUT_DVS0, 0x1C },
> > +   /* Set DVS1 to 0.85v for suspend */
> > +   /* Enable DVS control through PMIC_STBY_REQ and set B1_ENMODE=3D1 (=
ON by PMIC_ON_REQ=3DH) */
> > +   { PCA9450_BUCK1OUT_DVS1, 0x14 },
> > +   { PCA9450_BUCK1CTRL, 0x59 },
> > +
> > +   /* set WDOG_B_CFG to cold reset */
> > +   { PCA9450_RESET_CTRL, 0xA1 },
> > +};

While picking this patch I noticed that you're configuring the PMIC
differently compared to upstream u-boot. What is the reason for this?

Regards,
  Marco

> > +
> >  static struct pmic_config bd71837_cfg[] =3D {
> >     /* decrease RESET key long push time from the default 10s to 10ms *=
/
> >     { BD718XX_PWRONCONFIG1, 0x0 },
> > @@ -51,21 +71,6 @@ static struct pmic_config bd71837_cfg[] =3D {
> >     { BD718XX_REGLOCK, 0x11 },
> >  };
> >
> > -static void power_init_board(void)
> > -{
>
> Can you leave this function as-is? This will make the diff more
> readable.
>
> > -   struct pbl_i2c *i2c;
> > -
> > -   imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
> > -   imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
> > -
> > -   imx8mm_early_clock_init();
> > -   imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> > -
> > -   i2c =3D imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
> > -
> > -   pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
> > -}
> > -
> >  extern struct dram_timing_info imx8mm_evk_dram_timing;
> >
> >  static void start_atf(void)
> > @@ -78,8 +83,20 @@ static void start_atf(void)
> >     if (current_el() !=3D 3)
> >             return;
> >
> > -   power_init_board();
> > -   imx8mm_ddr_init(&imx8mm_evk_dram_timing, DRAM_TYPE_LPDDR4);
> > +   imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
> > +   imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
> > +
> > +   imx8mm_early_clock_init();
> > +   imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> > +
> > +   i2c =3D imx8m_i2c_early_init(IOMEM(MX8MM_I2C1_BASE_ADDR));
> > +
> > +   imx8mm_ddr_init(&imx8mm_evk_lpddr4_timing, DRAM_TYPE_LPDDR4);
> > +   if (i2c_dev_probe(i2c, 0x25, true) =3D=3D 0) {
> > +           pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_c=
fg));
> > +   } else {
> > +           pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_c=
fg));
> > +   }
>
> Nitpick: You can drop the braces (Kernel coding style).
>
> >
> >     imx8mm_load_and_start_image_via_tfa();
> >  }
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | https://eur02.safelinks.prot=
ection.outlook.com/?url=3Dhttp%3A%2F%2Fwww.pengutronix.de%2F&data=3D05%7C01=
%7C%7C15dee1b2d380432d7f6908daf9fb861f%7C1b16ab3eb8f64fe39f3e2db7fe549f6a%7=
C0%7C0%7C638097155931579086%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJ=
QIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DxtHVBfB=
Vx5T1eSva9cJhzjNm90XisJl7Gf4hUraDUjc%3D&reserved=3D0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>
>
>


