Delivery-date: Thu, 09 Mar 2023 18:39:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paKEk-00F4xE-LA
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 18:39:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paKEj-0008Da-Uo
	for lore@pengutronix.de; Thu, 09 Mar 2023 18:39:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SgOCdaESfnPpPN0UIMlThiZ9G4tdPWLSbyi0L1WPo3I=; b=371PpTHuEHGtw1ZlZ3N23gnG3y
	sQ19H1PW/VXlkm3i9Yfo9X0nogkY2K91bx4jm1kXp8o/0iFE6Odk+ihTCOUx/0n1fGk1t6yJ7DIAC
	i1PVVeyVCjvGMszlrHL57MAKr3knvw9bXaf0JZHVMOdpQajFym1+kq3WUNCUlgTHh0TF6NEUQ/O9j
	DBL14Qioe8AZt3g33c+zEwpuOnCH+C+fCF5xDtgkchjnsBuMPYwtO4nb3nMWsfbN4uJEUnmOfCnfP
	WZ+3h44wROsedQQ5GBPI2/iohnyaslu3F0Qsf7g0xJDR3CtXl2g+R0idDZn8g60OBWKUjMWFipzFj
	vTvofqPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paKD3-00BSBv-Jy; Thu, 09 Mar 2023 17:37:45 +0000
Received: from mail-db8eur05on2070b.outbound.protection.outlook.com ([2a01:111:f400:7e1a::70b] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paKCy-00BSB6-9I
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 17:37:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ga6lCBH99h407C0rDjcUE2vvYIzgpdDnKKbZmvnm3cLr7FImOq8nENoO/8Vv8XogmpXgVqj+E/c6nWci9MXxoqvHy5wljaK/vnYMRX2+oLAqFBd+82aVvn937JC5+cm05vq5YHik7rqGadVmTMF+F+vRU/YHQBG2aLur8G6jaY6eogM4/94TQ0wNwooOLAYOj0N7qsi6zr1wXws8jBpROXQd4xZ0aBKtrBiCjgX7/WSg8zYRnBCIXO0jwx5OYzTwwytDa+rjrcp9w4MPmChQV93cQnuUHiwmKNMt/RJfrHSbcury/0+VFCo7+JMIqJITvIex7aFeFj+dzCg3Z4s59w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SgOCdaESfnPpPN0UIMlThiZ9G4tdPWLSbyi0L1WPo3I=;
 b=dUW/O0kdZSBgZbi15uoH0w4gnM5aXr4lRFj5vZlIS3+4mfDAwQSvyEyjiiMVeYbNHIoLDpjgeFA1W9kbENubGlNvwMFrqqv7+7A9uL/D/LHvSWo0Wsw1STSyhaN/xBDgXIXEsRUh8UOteh1c4lT7RCqaEazjhZ0RR8KOu9+icsNiaj2N6ESxHUgqVkkjcBRRNI9rkpNHLfbTVA6+wppM7i0uqgY4NpJz8EUcj+C29708WVyGIHD5uJAYjAB+RShCQnjYQ4KEBrPF6pJChqZuUR71UHGPLyX9cIHpNqcQRZJOoWS1HWlq8s16BYFV8qEEaD0UipDHjfX9jp4sw95fyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=knorr-bremse.com; dmarc=pass action=none
 header.from=knorr-bremse.com; dkim=pass header.d=knorr-bremse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=knorr-bremse.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SgOCdaESfnPpPN0UIMlThiZ9G4tdPWLSbyi0L1WPo3I=;
 b=U4xjBnnaK7tzuRZDXgt5MEHrShoY/XFukE1rdrmDpJ0MfJrW2d82V45vNzRtKpT8c25KFZXyRO31XT+fd9dl8ZXwDtRxNiF9Ea6Oyu83uq6ilaY4Do6xzLHdG7+gYZyGRd5Sa2GhDrYQZ9ePAnfHilsQ9RxPNP+bg7RxXMIcFtc=
Received: from VI1PR04MB5007.eurprd04.prod.outlook.com (2603:10a6:803:59::21)
 by GVXPR04MB9849.eurprd04.prod.outlook.com (2603:10a6:150:112::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Thu, 9 Mar
 2023 17:37:35 +0000
Received: from VI1PR04MB5007.eurprd04.prod.outlook.com
 ([fe80::3628:3f68:9cc3:c780]) by VI1PR04MB5007.eurprd04.prod.outlook.com
 ([fe80::3628:3f68:9cc3:c780%7]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 17:37:34 +0000
From: "Klotz, Oliver" <Oliver.Klotz@knorr-bremse.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
Thread-Topic: SPI NOR w25q128 "flash operation timed out"
Thread-Index: AdlCpvMkxfEUmFORSIiTs6Rap0Ka1AABxrSAA//KtEA=
Date: Thu, 9 Mar 2023 17:37:34 +0000
Message-ID:  <VI1PR04MB5007DBB5A110F7B04EC03BB6BFB59@VI1PR04MB5007.eurprd04.prod.outlook.com>
References:  <VI1PR04MB5007D429B9FDF43D49A6CC99BFA19@VI1PR04MB5007.eurprd04.prod.outlook.com>
 <99a13ddf-b3ef-d34f-ed1a-b2d9e054bc7b@pengutronix.de>
In-Reply-To: <99a13ddf-b3ef-d34f-ed1a-b2d9e054bc7b@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=knorr-bremse.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB5007:EE_|GVXPR04MB9849:EE_
x-ms-office365-filtering-correlation-id: f4a1d3ed-a4e4-468c-cc16-08db20c4f7ea
x-kbdisclaimer-set: True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  Lpig6DBCY6CHh/4ByNYigrENFdT4dvt+H8UCrsMFLlzRawfy6hYQiAMAU8VA/PWWdexr99ZHWvanfLIK1wSMOHEXqxS0/ZkhDmKAJl0HMJ4td8Kxjm3sff8G0gt1aLkJUWP7zCRM4sW58s2dN2P/w8Ox6giwWX8nGcj3pYeUUk5bCvUBmhOi/IvqGxPZntGpQ2ueoFo7SdBrimGSAWqzu0ns9/jUvT61fXNnlCYmr6gn+Oyy9B1v/hK1oONd6yyIBiZs+RqbnXd9MhsDMdVhHo1Uu4VkeATcPFa/ulf1AB4iwkRk8a9Ud0SZzDykIdnPYW/7Acjluqwcj+oee2Zsf+IDo1/Qd5FyJiQhe9wGB99ZZw5du5jL4wNjUp6zMqUwZTyt6j4lVzjerJ/MFrgyKQi6Mbb0ktoHBubo/zT5x19mLGZfRAoUOkw+lRD0G4ZXzBMIeGcFBb2/feFK7WptMYxeWzrgRWPAl9NPEzeNZEFGr3HibLn8QJ0ZFYJ/YJ8CcxMqmldVADiaSV1Qnmn5eiQ8NSSkfjKUqbffC9GU7dQy3R+b53l9m5p0orkOjqz+UGSVoWAcl8dIEhWLtTG3dJMaCMCKoWDRoXqV0g08E/6WzgmjfXlypEAR+xq5l7ZTPTfyh0yY7PfziXA+UXyuQJdS766r9zLljvYXWXuSa+/jUQoqbcxACk3pfvsskGZi
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5007.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(376002)(366004)(39860400002)(396003)(451199018)(38070700005)(2906002)(5660300002)(66476007)(8936002)(52536014)(64756008)(66946007)(41300700001)(8676002)(76116006)(110136005)(66446008)(33656002)(316002)(86362001)(7696005)(478600001)(71200400001)(55016003)(122000001)(45080400002)(966005)(66556008)(38100700002)(6506007)(53546011)(9686003)(186003)(66574015)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?9PYkJO0a7md4hRsw2kEGScXR1X70kGKf00pormO4UaQUAjHLtxzQf9DL3x?=
 =?iso-8859-1?Q?c2WMDlCuBFyzkwqNNQaEVTgg7/sJhDe1nSlkV4EGp5NWjcFm+iNX6bclen?=
 =?iso-8859-1?Q?ZJAYVR0BCQcLzoyjPU51Yff1UrwFOyz+GNlYvYvMVQ3cdSIKUq+Bqu4KM0?=
 =?iso-8859-1?Q?SO7h+NoXJEDWd5eIQp2EnlrVaJ4djJe456ACJihhqkMHzhnQDyGiU3gvnx?=
 =?iso-8859-1?Q?87HorHYyxPJQdaSNTWmKdUhWZy9H60yB2psgb3AEqUZoiSIuNXKqx51wbR?=
 =?iso-8859-1?Q?dvqhg1+wEEh2LM+0+xsEAK79hKHmwYIMZBw+zn6XEZi4NCaEpRADKDEl1I?=
 =?iso-8859-1?Q?HAzG8Y4TmAZzmxJvUjw0XsmwamBKSD2oEAGosxF/M7YfW0q0w8sG9FiOI0?=
 =?iso-8859-1?Q?dUKQjAMEEsekduQz7iNOgL/FaAXtMHOr3HpuaxVdR+k9Ofmxhsx2m3xmKg?=
 =?iso-8859-1?Q?fLCu1HN4vOjpxEAIRR9MqTl2yFmPp6O1UJpiSXplFCNfPPmDpJ1LuyGSd8?=
 =?iso-8859-1?Q?qXfhfGk/xpFrU+mgR9snT+T2KgYfsoWmjYxzJT9EekYW8RBJhBHulKdyos?=
 =?iso-8859-1?Q?VAxgI/Th8CBrseQWCybz5/jv/EzfS4UzSV4MGgQ3fRdGBnKSN/Iui54T0p?=
 =?iso-8859-1?Q?H0BH4OO1o2HP0h3ZkL3qRzlaAcymA+SVGfnaV0jd7hBgEEKlwUllO+9uNU?=
 =?iso-8859-1?Q?f4oOGh1dyjaeV1vIJyHiqeWJfg/DEDWeRXDACc3AxBeCqUcT8rSPbi48Gx?=
 =?iso-8859-1?Q?bVJ6/pBrojAci8hL1Q2J3X9UgbdlQoAWn07ZkLzEh+r86OtI4VMaGMz0zp?=
 =?iso-8859-1?Q?7TN+tWThsz23VOMnCe3c/zc7JYGZW1UX7qVIqfna8u9Ony1nt08c7L2Svu?=
 =?iso-8859-1?Q?oXK3pvLbXsL0iYpSkL8bTwr/MxZMDFjtZzH3IDjAdf+SzsHpa5FqS+OCEe?=
 =?iso-8859-1?Q?sZUqHtLX8Dd38glkQD1N/SNwEJLrXTxQibcra+Ke+lyNV8CuCYJ+AygpP4?=
 =?iso-8859-1?Q?eX4t1vhitimonbptl/h8kMKnwty5WefSL4+JzlD8YY8xfU4gjbKKDxnrNe?=
 =?iso-8859-1?Q?RAFdXn+CM1JkuFEryedhAY9JF0lOEEIRD8fC+CMDNR9Gbn4inPi6MgOPkI?=
 =?iso-8859-1?Q?vn4LIU+ty84Bo3Ghdh9K54rCWPMx6oLPX/ik09rJBn8xDNORd34qoHp5bQ?=
 =?iso-8859-1?Q?yY3P1jCcBh+EZ2JsUjUIxLRQuVYILhPgeSM0e3LZu2FBaAlqJdLjGMEO+E?=
 =?iso-8859-1?Q?cfsK+1G/CdqppEms6E3QKY3JMq3UPNppmJ+0vu64gqB0CTcoU88hFrFkze?=
 =?iso-8859-1?Q?a8IgkxhjZ55OxnL7Es2974HkFmFZT31UexvYEseWig4laktC4/gUX17Wb8?=
 =?iso-8859-1?Q?Uq1oF9w2V0Mootm2HPFSKQAzoazLCqxR5z9032+n60B1HTafUKJn9FbVug?=
 =?iso-8859-1?Q?dJr2aWtBuS4VsKOjD/Y8b8lvP9cKPdW0jiIOe6GVq5exJEz6+BTxcvmd7u?=
 =?iso-8859-1?Q?T4cQAZ0UPpvV2DQwlk2Py+VTbRkGPCmpTUpg1EP9CItL7Maym4jcV7Le8p?=
 =?iso-8859-1?Q?EPiY60AFtVyXCKOqbQtdxPCQSjelsnDzXQRoeSvnCKDp6fn8LqJ6bnd/zp?=
 =?iso-8859-1?Q?idJ3eW6OAQGWMaaXzjpR/gk/y2oR/h52PD?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: knorr-bremse.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5007.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4a1d3ed-a4e4-468c-cc16-08db20c4f7ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 17:37:34.7471
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66f6821e-0a30-4a06-8b8b-901bbfd2bc60
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o6193WyxKvkZ1jV6NbXtda5qBkJA5osbLc0jPxeNqF2YkciWICeBEpeEzrs7uAHFi5OX0gmqqwVF/T4ZTS9PCZTLDdIjTDPvl0znze/5f6I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB9849
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_093740_695499_5C3803B3 
X-CRM114-Status: GOOD (  27.24  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: SPI NOR w25q128 "flash operation timed out"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

while doing the bisecting it turned out, that the issue with w25q128 is not=
 related to a specific Barebox version
but to 2nd chip select of the SPI bus.

In older products we are using Barebox-2016.07.0 and there is just the SPI =
NOR as single SPI slave (spi0_cs0).
In the pinmux only spi0_cs0 is multiplexed. And this binary works fine on S=
OM with n25q128a13 as well as w25q128.

In newer products we are using Barebox-2021.07.0 and there we have a TPM (s=
pi0_cs1) as 2nd SPI slave.
Since Barebox doesn=B4t support TPM I have removed the TPM slave node from =
spi0, but sp0_cs1 is still pinmuxed.
This is just because I reuse pinmux section from the Linux dts.

Whenever sp0_cs1 is pinmuxed I observe timeouts with w25q128.
Strange thing here is that exactly the same binary works without issues on =
SOM with n25q128a13.

Also in the Linux dts the spi0_cs1 doesn=B4t cause any issue and TPM as wel=
l as w25q128 are working perfectly fine.

So removing the spi0_cs1 from the Barebox dts fixes my issue - please refer=
 to dts below.

Although I have a working solution I would appreciate your thoughts on this=
.

Best regards,
Oliver


spi0_pins_default: spi0_pins_default {
        pinctrl-single,pins =3D <
                AM33XX_IOPAD(0x950, PIN_INPUT_PULLDOWN | MUX_MODE0) /* (A17=
) spi0_sclk.spi0_sclk */
                AM33XX_IOPAD(0x954, PIN_INPUT_PULLDOWN | MUX_MODE0) /* (B17=
) spi0_d0.spi0_d0 */
                AM33XX_IOPAD(0x958, PIN_INPUT_PULLDOWN | MUX_MODE0) /* (B16=
) spi0_d1.spi0_d1 */
                AM33XX_IOPAD(0x95c, PIN_OUTPUT_PULLUP | MUX_MODE0) /* (A16)=
 spi0_cs0.spi0_cs0 */
#if 0
                /* Do not mux spi0_cs1 which is for TPM, but causes timeout=
s to Winbond w25q128 SPI flash. */
                AM33XX_IOPAD(0x960, PIN_OUTPUT_PULLUP | MUX_MODE0) /* (C15)=
 spi0_cs1.spi0_cs1 */
#endif
        >;
};

&spi0 {
        pinctrl-names =3D "default";
        pinctrl-0 =3D <&spi0_pins_default>;
        status =3D "okay";

        flash: m25p80@0 {
                compatible =3D "jedec,spi-nor";
                reg =3D <0>; /* CS0 */
                spi-max-frequency =3D <48000000>;
                m25p,fast-read;
                #address-cells =3D <1>;
                #size-cells =3D <1>;

                partition@0 {
                        label =3D "xload";
                        reg =3D <0x0 0x20000>;
                };
                /* and some more partitions */
        };
};

-----Original Message-----
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sent: Friday, February 17, 2023 9:59 AM
To: Klotz, Oliver <Oliver.Klotz@knorr-bremse.com>; barebox@lists.infradead.=
org
Subject: Re: SPI NOR w25q128 "flash operation timed out"

Hello Oliver,

On 17.02.23 09:22, Klotz, Oliver wrote:
> Hello,
>
> I am using an am335x based SOM with SPI NOR flash.
> Recently the SOM vendor replaced Micron n25q128a13 with Winbond w25q128.
>
> Winbond works fine with barebox-2016.07.0, but fails with barebox-2023.01=
.0, barebox-2022.09.0, barebox-2021.07.0.

Can you use git bisect to narrow down the commit that caused the regression=
?

Cheers,
Ahmad

>
> Although the device is properly detected as "m25p80 m25p80@00: w25q128 (1=
6384 Kbytes)" - INFO(0xef4018).
> erase and mw commands end in "flash operation timed out".
>
> I tried w/wo CONFIG_MTD_SPI_NOR_USE_4K_SECTORS and with 24/48MHz SPI cloc=
k.
>
> I have added some trace messages for read_sr() and run "erase /dev/m25p0.=
bareboxenv" (partition size =3D 128 Kbytes, sector size =3D 64 Kbytes)
>
> read_sr() returns 0x00 0x03 0x03 0x03 0x03 0x03 0x03 and then it is stuck=
 to 0xff and this is causing the timeout.
>
> When running the same binary on the Micron-SOM then I get 0x00, a bunch o=
f 0x03, 0x00, a bunch of 0x03 and finally 0x00 as expected for erasing 2 se=
ctors.
>
>
> Is anyone facing similar issue with w25q128?
>
> Any idea what might be the problem here?
>
>
> Thanks and best Regards
>
> Oliver Klotz
>
>
> Kiepe Electric GmbH
> Firmensitz:  Kiepe-Platz 1, D-40599 D=FCsseldorf
> Gesch=E4ftsf=FChrer: Alexander Ketterl
> Registergericht: D=FCsseldorf HRB 34306
> Zertifiziert: DIN EN ISO 9001:2015
>
> This transmission is intended solely for the addressee and contains confi=
dential information.
> If you are not the intended recipient, please immediately inform the send=
er and delete the message and any attachments from your system.
> Furthermore, please do not copy the message or disclose the contents to a=
nyone unless agreed otherwise. To the extent permitted by law we shall in n=
o way be liable for any damages, whatever their nature, arising out of tran=
smission failures, viruses, external influence, delays and the like.

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://eur02.safelinks.protec=
tion.outlook.com/?url=3Dhttp%3A%2F%2Fwww.pengutronix.de%2F&data=3D05%7C01%7=
Coliver.klotz%40knorr-bremse.com%7Cc8d8d8b229a14cae344a08db10c53191%7C66f68=
21e0a304a068b8b901bbfd2bc60%7C0%7C0%7C638122211346610727%7CUnknown%7CTWFpbG=
Zsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C=
3000%7C%7C%7C&sdata=3Du%2BOuohpHoyIh%2Ba4E4KHfFVvzsE3oPDtzhDWG80hB31s%3D&re=
served=3D0  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Kiepe Electric GmbH
Firmensitz:  Kiepe-Platz 1, D-40599 D=FCsseldorf
Gesch=E4ftsf=FChrer: Alexander Ketterl
Registergericht: D=FCsseldorf HRB 34306
Zertifiziert: DIN EN ISO 9001:2015

This transmission is intended solely for the addressee and contains confide=
ntial information.
If you are not the intended recipient, please immediately inform the sender=
 and delete the message and any attachments from your system.
Furthermore, please do not copy the message or disclose the contents to any=
one unless agreed otherwise. To the extent permitted by law we shall in no =
way be liable for any damages, whatever their nature, arising out of transm=
ission failures, viruses, external influence, delays and the like.


