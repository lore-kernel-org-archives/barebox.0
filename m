Delivery-date: Wed, 23 Aug 2023 18:47:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYr0Z-006QS4-3M
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 18:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYr0W-000755-Pg
	for lore@pengutronix.de; Wed, 23 Aug 2023 18:47:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ZGL++7Muw9sLQ0rGxlCe3uk9BsBbCNYiNebsVB3z7c=; b=Rvv7osT6qG2cdNJ8Zz4MOPMlYx
	K1XDxirmb/idI0WtnU+J+r2Ef1PaJihVqsEuoD4xSI12/+oT5HnzDsicYrp9wAE8BqFiR9Sx/slqI
	Ftve9jwc/u7gRnXjTf832mcENxwwUYbGVhm/cMo9nUFfHcgiAqOfqCTm9kVNk2ibJe9Zp0NaMfaR2
	Qr8m6xSBbvOCTRFfVO8L9gw17NQtGAql0EBk4Y4SB25RSEsNF5FL/pnOCvAKtlPE9JwJayk+eu8q0
	RbiCW6g79gx3/DlTUebzP+hA77CZcPehyCcFq2vMqRGl3j/UAnvjwia0Nggl63A+PDUONwmq7B6Hp
	pQndpuEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYqzJ-0015sR-2P;
	Wed, 23 Aug 2023 16:45:45 +0000
Received: from mail-am7eur03on2071d.outbound.protection.outlook.com ([2a01:111:f400:7eaf::71d] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYqzG-0015ra-09
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 16:45:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hvbeD6bGV7CD/ld79+0t5wrl9YTwawKa9FE642551+Tz4wZncHz2V4q6/Y8Rdz1pVay/9az7wRAABKRwQFB7ZLsFonyD5teBBrbvBHhmswiCXMW3xNElXh1ZbBNG9otUZ7SwbWjSLog+clxenNKTWJ03kUE63dLzERe2Iu3agieEMVHPzsYAb2u+kBDmXlCnZh6IJbBdAbh0rarIS9EcpqHFfTiviKkvZGJeQS3hm/nOwjfArODSDdBg1rN2Cq0jQF1xJcLGr1TS68zLJU20mUR9HS/+4COO990I/H2ZWRoyM2RrnUu50mdEkm9/gdW7ydXAg1GlxFhlrDFlxfqUog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ZGL++7Muw9sLQ0rGxlCe3uk9BsBbCNYiNebsVB3z7c=;
 b=Qm5kiwuwgTPrvCklwR9bhDpcG4Pj8JqJy0J8mwwSBp2XVW3TqpMZ9kJHaREkiCHlsb9LJeKT1eX0FqtYbMaDtmBWpTdlrT+GBKtWdvDKgjHF+gLKtYpJAEB7f3EuNkO2FvvdY+aqhpxWqrnnX8q0f3dhGWnxR95dMO0yZCmsjmsMUiGQVBei1a+JoiEc67fZSpqYfIovUrZ9FINsyD/61HAWcvsqmwtdQfTAXcUfgVkkENBDZqb8+ChOB01AhkMFf3+sPc8ZHvdrVnEjb5CbnhE+lY2kXVEYjySOOLE9p2JX3W52whYAKZeKg6JZElFXtmADDo86wfydza5npDN1Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ZGL++7Muw9sLQ0rGxlCe3uk9BsBbCNYiNebsVB3z7c=;
 b=jojQ5svWMKYaNK6t2XHbEmstWjJdP0tScnNJ/jr7kq6uZK31FcY4g01MC1wfQMzOO7g9tV96ZQ3ydHZhXG45djr0bHyOnkULSIv1ihzAr/ox5HeJf5oeRW6MOABvMey4k/Gi/a1stlG/sIDQsipgBveq+GZKUX9FNitCYkqIA5g=
Received: from FR0P281CA0106.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a8::7) by
 AS1PR07MB8477.eurprd07.prod.outlook.com (2603:10a6:20b:4df::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 16:30:14 +0000
Received: from VI1EUR02FT028.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:d10:a8:cafe::58) by FR0P281CA0106.outlook.office365.com
 (2603:10a6:d10:a8::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.15 via Frontend
 Transport; Wed, 23 Aug 2023 16:30:13 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 VI1EUR02FT028.mail.protection.outlook.com (10.13.61.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6723.16 via Frontend Transport; Wed, 23 Aug 2023 16:30:13 +0000
Received: from n95hx1g2.localnet (10.30.5.31) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Wed, 23 Aug
 2023 18:30:13 +0200
From: Christian Eggers <ceggers@arri.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: <barebox@lists.infradead.org>
Date: Wed, 23 Aug 2023 18:30:13 +0200
Message-ID: <2167506.irdbgypaU6@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
In-Reply-To: <d33ac296-d6fd-6122-b8e2-0e0cfe2b09a7@pengutronix.de>
References: <5977114.lOV4Wx5bFT@n95hx1g2> <4518678.LvFx2qVVIh@n95hx1g2> <d33ac296-d6fd-6122-b8e2-0e0cfe2b09a7@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.30.5.31]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT028:EE_|AS1PR07MB8477:EE_
X-MS-Office365-Filtering-Correlation-Id: 53d0efe9-731d-428a-270d-08dba3f63a35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MgTJHlFjhmnH5RXhEf1Iw4dEqyiADktFl3mvWNnngnkCWXZ2QCMeLQjd2CCbJHMn8pRfizPvZXORTsv51giDvqDzezzJzZESCnmBfaG3UhtmdqgpX7D5SJr7zvM6tSr8+5vt5RYSLGPNMfswgFNcAPHjIW1/Ya84kLpOqMJe2ypEuuACsYdOxgoBNt1XqXo+hcZEiTDE7WIZIKxs38Fg7Mdlmi74c+PZEhD7sMIQ/elkyuGyYLCcdv0ZeaiwHdY2X18oZym1I8F9OM88fSx8d9SI4InhWXBN7tkTVNocGSxoqzuCLTnTISpKCT0qvgm+w2XtpziglwWNC6P2SwLIVwab9xRB8PLQP0JDNfMPy4ZAHp9X6zILqwsPIkwsrXkt58+R9OgwyNAvbO+2HOC5dPdFfblFG9CYd+OC+k+051Xeu0BNKsoNeu2U2shdLhCGCbj57NatnRCQYx2E5U6gI7al+c4BhVBTrvqJSSBgt59W57oFaV72r293YSDo3Mo9ctB5WITNRt9DHqwlcX+8ccPbf4ANla76r18PgRzHlmEsTyUFIoTkTlrJvWHtjWLm2+CoA6VeWVhK+VF/QUfN3a3XjaN1SUYDZzxfkdCinMOV2OvXdPREFN6s19lDBRtIS8gDsNAUH9oZDZJsEC//z2EHTMhAQ7N6YA1X4YM11a2OJSXwVAJkv6l88ROGAEzbSuJYI8seHvzpb0tADbLo4Hip3STMMnSCkATuQjJcGKKjlIvVvuVe9IBppPRUywAbbbSG66Fo5xOjATpuqWV6H/vf4yEe81dBGolUa3/Nbc4ls+qOJOLIvWE01JXNUE3KPEiKRzMziqTrrudvIRVkVw==
X-Forefront-Antispam-Report: CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(136003)(39860400002)(376002)(346002)(396003)(82310400011)(186009)(1800799009)(451199024)(46966006)(36840700001)(2906002)(356005)(82740400003)(36860700001)(47076005)(9576002)(53546011)(81166007)(40480700001)(70206006)(70586007)(316002)(36916002)(41300700001)(478600001)(9686003)(12101799020)(86362001)(33716001)(966005)(15974865002)(45080400002)(26005)(16526019)(426003)(336012)(5660300002)(6862004)(8676002)(8936002)(4326008)(39026012)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 16:30:13.6432
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 53d0efe9-731d-428a-270d-08dba3f63a35
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR02FT028.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR07MB8477
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_094542_088463_454EB940 
X-CRM114-Status: GOOD (  20.19  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: aiodev: imx7_adc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

I forgot to mention that I still use barebox-2021.10. In this version,
regulator_get_voltage() returned an error code. After applying the missing
commit, I works find.

Maybe I could add the vf610_adc driver (works for i.MX6 series) to the=20
upstream barebox later ...

regards,
Christian

On Wednesday, 23 August 2023, 18:25:05 CEST, Ahmad Fatoum wrote:
> Hello Christian,
>=20
> On 23.08.23 17:05, Christian Eggers wrote:
> > Seems that I found the answer myself:
> >=20
> > https://git.pengutronix.de/cgit/barebox/commit/?id=3Dd353ffd5c6e6d4cee6=
eee72726125c965a0814f0
>=20
> (y).
>=20
> Did you run into any problems at runtime?
>=20
> Cheers,
> Ahmad
>=20
> >=20
> > regards,
> > Christian
> >=20
> > On Wednesday, 23 August 2023, 16:53:04 CEST, Christian Eggers wrote:
> >> Hi Ahmad,
> >>
> >> I am currently porting the vf610_adc driver from Linux to Barebox.
> >> Must thing can be done similar as for the imx7_adc driver.
> >>
> >> I have one question about the reference voltage:
> >>
> >> static int imx7d_adc_enable(struct imx7d_adc *info)
> >> {
> >> ...
> >> ret =3D regulator_get_voltage(info->vref);
> >> ...
> >> }
> >>
> >> What type of regulator do you use? I have declared a
> >> fixed regulator in my device tree:
> >>
> >> reg_adc_vref_3v3: regulator-3v3-adc {
> >> compatible =3D "regulator-fixed";
> >> regulator-name =3D "vref-3v3";
> >> regulator-min-microvolt =3D <3300000>;
> >> regulator-max-microvolt =3D <3300000>;
> >> };
> >>
> >> &adc2 {
> >> pinctrl-names =3D "default";
> >> pinctrl-0 =3D <&pinctrl_adc2>;
> >> vref-supply =3D <&reg_adc_vref_3v3>;
> >> ...
> >> };
> >>
> >> But it looks like the fixed regulator driver in Barebox
> >> doesn't support reading the voltage (the Linux driver
> >> reports the value from "regulator-min-microvolt")?
> >>
> >> regards,
> >> Christian
> >>
> >>
> >=20
> >=20
> >=20
> >=20
> > _______________________________________________________=E2=80=8B
> > Christian	=20
> > 	Eggers
> >=20
> > Software Engineer
> > =E2=80=8B
> >=20
> > ARRI
> > Arnold & Richter Cine Technik GmbH & Co. Betriebs KG=20
> >=20
> > Arriweg 17	,=20
> > 	83071	=20
> > 	Stephanskirchen
> >=20
> > www.arri.com=20
> >=20
> > <http://www.arri.com/>
> > 	+49 8036 3009-3118 <tel:+49%208036%203009-3118>
> > =09
> > =09
> > 	CEggers@arri.de <mailto:CEggers@arri.de>
> >=20
> >=20
> > =E2=80=8B
> >=20
> > CCM1 Camera Control Monitor <https://www.arri.com/en/camera-systems/cam=
eras/ccm-1>
> > Get all the latest information from www.arri.com <https://www.arri.com/=
>, Facebook <https://www.facebook.com/TeamARRI>, Twitter <https://twitter.c=
om/ARRIChannel>, Instagram <https://www.instagram.com/arri/>, LinkedIn <htt=
ps://www.linkedin.com/company/arri> and YouTube <https://www.youtube.com/us=
er/ARRIChannel>.
> >=20
> > Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
> > Sitz: M=C3=BCnchen =E2=80=91 Registergericht: Amtsgericht M=C3=BCnchen =
=E2=80=91 Handelsregisternummer: HRA 57918
> > Pers=C3=B6nlich haftender Gesellschafter: Arnold & Richter Cine Technik=
 GmbH
> > Sitz: M=C3=BCnchen =E2=80=91 Registergericht: Amtsgericht M=C3=BCnchen =
=E2=80=91 Handelsregisternummer: HRB 54477
> > Gesch=C3=A4ftsf=C3=BChrer: Dr. Matthias Erb (Chairman); Lars Weyer; Ste=
phan Schenk; Walter Trauninger
> >=20
> > =E2=80=8B
> >=20
>=20
>=20






