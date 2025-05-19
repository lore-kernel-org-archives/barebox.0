Delivery-date: Mon, 19 May 2025 09:15:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGuiK-000RAF-2M
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 09:15:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGuiK-0007uU-2E
	for lore@pengutronix.de; Mon, 19 May 2025 09:15:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n02ALOVbV7htWp/zHCv3FP7YVOVoGiV2ng5lb/Bd+JA=; b=E+iF9dQqIveXxVzM4bwUwvAcfU
	VRmVnpQT1pbu8W5Mep9JGz7q8lGMGYj8GtbCHcydDuE3o/+hJXkiBVdC3dRFHoD7d2UCHe0QrvtYU
	Qr+jPD3d0ICRVhhBT/Twk+rg3DljIxNvycrK/+0W1YS7P+OW708Rv/p+7V5+VdEEgq78zQz0Xadoe
	ExwWf4ktZPOWZf11h/Q8TCUF5LaJZkkKGqDkJbRMYw3aGBAea6iiM/kYkkHVbA/AauRuW3wtdMBfu
	WXFIKTNo1MdQ2Ctydp9pDUZQxWc6IcOY/yR1gtRHJgciyIDNzVhWF5hZnWKYDzJSlMYUce5hMrMRY
	ad8PSWtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGuhp-00000008CA3-0t0A;
	Mon, 19 May 2025 07:14:37 +0000
Received: from [2a01:111:f403:d200::] (helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGugU-00000008Bv2-0pUc
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 07:13:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mox3ECGhkXI3SK4dxwhrwlNyZBOTXVdbOlrpef8sL/yBlUH3eGvn/hW4CogRH2PyEK3MQdbn5caXivyZGlN/LIe57GKiIrB9iaMmIpuyrc2S3CJ7j5x0nk4Yf8UxcZYqEwtpXh5e2MIIkfFtE0fgpwETSTcjDXDwPaO7FzWNs5j/3oGf4Ob9nh9mxnlfxT/UqdN919obk6TSeTZC9YNBPCToK+t6YFsYCyn8Wor7MsIDZxHlDRf64w5ZQ370GbnH1tCeYNuhRvSxacby2Cs/5ErY/Vz+WoxTefFs4Rpp5qFjMjEDIA2YBZCrXUvqliqOIx2rR/D28iXl0Wht/aV9rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n02ALOVbV7htWp/zHCv3FP7YVOVoGiV2ng5lb/Bd+JA=;
 b=Ql7Jhu2+XFlhWGKR9ANKPEyux385tpcW+bhQAbtmuknRr76Sa3lnpFdt90ZPkj39xxwTFOh8y8/vUtSupGjuy15g5IFcx7846rZzqw6uT5GCcgN6TugzhhaoSpvqj2qhAE0YVySQrSwefEsoqqocohaUvBLYyjtok8wdWXQETFa8/aWvbLeek6eLBRlPMeeGqci6pw9p6zfTQw3frcjFLSytgaQuuuyXDCF3uRkRasyxD2pMEphGIFnHcIB5p8WrDNYT2ycMZpEG1RjhbEnS0+RPAVOOwCU2w9CkGKpVXVmXDYql44b+VAYBajnnhM6Zxw5JSD4YmZ21n0LVmXnAPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n02ALOVbV7htWp/zHCv3FP7YVOVoGiV2ng5lb/Bd+JA=;
 b=IV4/tE7y/ZOwhnfbk/3Eiaq3YtWGJu/JGyoOutLTKLE41hzphVkp8K9io2cKxhW4ygDNuMsUH1hLwVbVBBuSXmh+k3VEjK7ZLh6hjFNzEeuW3sWMGjYEf7O8yBzC9Fbk6L+mcl+O0aWN7BiIJjIfhA8wbpnA4QRWurRd/2B3OwpVscAMZ5bCzJp7LLEOS+ekSDOEdw87fjQzoUcWCFoq0N5n0Ju5Vak81AP0aXSNuC8MhhlAcqXhjCEmoHxdkb23XUrNNU/ZreHfmCfRr3PvD3ig4bYV2G4BsUpf5+WhoKttM9vkBWWB/tLtmYRzvXxLj2IH1KDD6kEnz5hkKg69ag==
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com (2603:10a6:803:b2::14)
 by AS8PR02MB10006.eurprd02.prod.outlook.com (2603:10a6:20b:616::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.17; Mon, 19 May
 2025 07:13:11 +0000
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2]) by VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2%5]) with mapi id 15.20.8722.027; Mon, 19 May 2025
 07:13:11 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: "johannes@gnu-linux.rocks" <johannes@gnu-linux.rocks>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "l.stach@pengutronix.de"
	<l.stach@pengutronix.de>, "m.tretter@pengutronix.de"
	<m.tretter@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] add zynq-7000 i2c support
Thread-Index: AQHbyI0eT7MS7hGAnkiF1my/qiMWww==
Date: Mon, 19 May 2025 07:13:11 +0000
Message-ID: <VI1PR02MB44299AB6784FA5F3340F6CF9AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR02MB4429:EE_|AS8PR02MB10006:EE_
x-ms-office365-filtering-correlation-id: e9598796-4e41-41c2-42f8-08dd96a49d3b
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|8062599006|8060799009|7092599006|15080799009|19110799006|15030799003|102099032|440099028|3412199025;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?WevjgFflNTnRZLXb/mjvpwAqBOboLXYcXTmhWvKuxaOhmuB5TtFHG/QsGx?=
 =?iso-8859-1?Q?E0z8dkDfGs5TQ6y5lOjp2Ov5VRnY4sN+PlcKJrK32IsuCMYyc9LPbajzGO?=
 =?iso-8859-1?Q?J/+d4Euzi0GyZozBDcceVG5aHPcLRYhjHGotl1M8IEa5rRsYophXDlg0Kf?=
 =?iso-8859-1?Q?GXiANAWttvSm3Y9A241EwEQpCeqcakK7/pRBLr7bn54/2XQLtUul2kIybH?=
 =?iso-8859-1?Q?7FqKI85VdQg0jOktgJ/Fuv2hgJBpPNwPIGjC/Tnj89ErQrd9bvZS+PMFsd?=
 =?iso-8859-1?Q?rw02XSpIokT7bhXydqyOKeipI+nluCQPrzJG78zMcKgBZnCHv+Tdji+Gat?=
 =?iso-8859-1?Q?x12WPVckLA+/AkHRHW6Uv5jGoBwn5LW+RonFIYPPVCzcXmGjybQsDJXX59?=
 =?iso-8859-1?Q?4jm2dgmToHvuJn4kvnykGNKiRHp9jYziwEiA9COG5RnEr8c9TDm6qr77b+?=
 =?iso-8859-1?Q?3/me6YLwkml55vNoWxlZISGd/1fezCR+gDSnCY60n+bXvRvhbp8M+PE0L4?=
 =?iso-8859-1?Q?Me+ddavSjMDhY82ceEMLu0SnCguvULF1SSz+ZsN2VcRPIOX2uDxCTuNv2z?=
 =?iso-8859-1?Q?Dt0qplto9ZN/ZviJoPGvVCrO/lEvufY0PSC5U5ReiDNhx514frYfeonvuO?=
 =?iso-8859-1?Q?L5brkXnSsOpnfdsCd04YtXdmiV1MezyszotokrToUQlS8ZwsgfZPF28yV4?=
 =?iso-8859-1?Q?lrBXOitBzDbmwSeV21qDSatUb69YpaeCZrEH+H8/RVE12L/7okiqreyLjn?=
 =?iso-8859-1?Q?xjOvl/NTnOM1Ni0R09S5PjYqNgCElzRv3wKaXjlPtz7pvE05cIZrtpy7mO?=
 =?iso-8859-1?Q?Dmk/Gsc3erhLj+/F+KnKoFYqdrEYT7O9Lr5ZM0aFNBKV0My6ZmUY3gT/Ub?=
 =?iso-8859-1?Q?LlhxwoTrBYUeNHnXmYnuw5WrfNcxYwshulyDu/F6VyGA2MPXXSGX9q6ffC?=
 =?iso-8859-1?Q?+6rZDFmuUg46qq3gd1DZQucpF20GmHZb1+ebsPIburcdGuOGgvzItcL0NY?=
 =?iso-8859-1?Q?PCvc+7dhen8BH7GdySZYbgrhqZ4FS9/0uriVpMPYmpS6wBzzAhHpIIho2S?=
 =?iso-8859-1?Q?jd7etFWoOriLFk4dtTvSE8cgoMTGsG/GocMkwPA0X/Y+hGjjsMxWyeIRZF?=
 =?iso-8859-1?Q?dSH1oFCm+L0+fQXQS9UN036oNj/SLgw+x+GGQAVNx9DQRHtVURGPLejbU0?=
 =?iso-8859-1?Q?KzQK9ATza1kjgA=3D=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Jqg/io4qA68ihBg5VfLdLkVE7+/unbj+QzCBXQdtd/IVaOumTlIS/CNdIL?=
 =?iso-8859-1?Q?nkAJLy/q2fsUg5PRZavhg+HXH9BGp//GSVyU4uTbgHbWCVU4Fl0KzlRXyM?=
 =?iso-8859-1?Q?ZUt+yiWpjaFp6GKcYIwq18fuQ5/7/fxODCsed17b4NIoGwgGKs5wloslyL?=
 =?iso-8859-1?Q?ihbfFcAvgZ5XseOyT7/Ma/V+S7PoVOXt4TDnfjZtezNOR3uNMCj/g7XY9k?=
 =?iso-8859-1?Q?UJssbbdqCxoRfdTV/ICF2GqDEJQ/kBMNr1aeL+ZGX0K3mnKnrIa0/jwwOr?=
 =?iso-8859-1?Q?sEOcGkJYaFo9nWGcsv5PZMRPH9+IJE68RUAy3im2wAdrHYDaf01cvWtHOL?=
 =?iso-8859-1?Q?uzhWbqqfyB3WQVEaoO5d5hHCjMDnZAugoy8Qne9SLk3qO02L4fialw9aHU?=
 =?iso-8859-1?Q?HFeDCkij57zraGPFm3uCrh/ve318ImLhzV7+lys/6DkBn2ufc4fZz/Y2Ox?=
 =?iso-8859-1?Q?MTFqWAp/atAgZneqRMgpOg5vbiaBjmxTPP7JVlll1W4RH+oJL1K5pmHIWd?=
 =?iso-8859-1?Q?/+i54VaOwZf0LZq+Z2aWV/Av/hHu6REY3oYfgqsNkILZOr6T4ICs06qwJ8?=
 =?iso-8859-1?Q?ckXyefVjlJnuwKnArTuIlJhEmasEyHLNNCyNluXF2CqVQvbjLwYe1IYYyB?=
 =?iso-8859-1?Q?m2yZxklXxZ9YME4KTbccjZw9yG5rjAGIkl/oEpXOzsEEdXLbKZIMp1tn6N?=
 =?iso-8859-1?Q?zbXAAskO1ZCv4Law/D48OVL53qt7xSmYr7EA+9h6umzoOUKgJBgTZrvS7X?=
 =?iso-8859-1?Q?ghmaqMiKQU52F+nYPRo9d2rn8l4bUPz+rHInlOWL6BPUyxxilCE78zfKmV?=
 =?iso-8859-1?Q?HPlh5SIK4374FUoWcEMkt/fQC8qa6gGSnAW91txt6QCZKjDdjSnXEPrJCH?=
 =?iso-8859-1?Q?wCibCqB0N3I3KtraPyo6MF8Bq7mrK7qVswPArROE1SRSKsaooOqi6LFLVH?=
 =?iso-8859-1?Q?yAHNvzmFizR8qzAGlOu0HGrp3+CZ2lqvjATs4IcKOpvo4/D5QARWhX/sTw?=
 =?iso-8859-1?Q?Sg0q7V09XATEjnnjuuzOb2MBa0m+dxgh930xQm/dRXchPLblQo/E5YzzSg?=
 =?iso-8859-1?Q?ufr0oiVXYb9PBTKQEf66y8p2ZS4mudBMEtPk3UChd1v4VpuKiLvyVv4Tpv?=
 =?iso-8859-1?Q?pMiSEMH+2L/93OO85oQVRehe3EghfH1v3yj/Qr5fkyR1D3VpMJ3GlsocDN?=
 =?iso-8859-1?Q?2vCQUkV52BymhIvZmUWXQvGQD8h52GuAx5vyiprzZ77TVsWI9Q7HVxha+A?=
 =?iso-8859-1?Q?z6L63hVE3TBY4Na5H0yQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7828-19-msonline-outlook-12d23.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR02MB4429.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e9598796-4e41-41c2-42f8-08dd96a49d3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 07:13:11.2840
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR02MB10006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_001314_240356_D061B7AD 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] add zynq-7000 i2c support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support to use the i2c bus on zynq-7000=0A=
=0A=
Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>=0A=
---=0A=
 drivers/i2c/busses/Kconfig       | 4 ++--=0A=
 drivers/i2c/busses/i2c-cadence.c | 1 +=0A=
 2 files changed, 3 insertions(+), 2 deletions(-)=0A=
=0A=
diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig=0A=
index b7ad9e6ecf..16f039dfea 100644=0A=
--- a/drivers/i2c/busses/Kconfig=0A=
+++ b/drivers/i2c/busses/Kconfig=0A=
@@ -84,10 +84,10 @@ config I2C_RK3X=0A=
 config I2C_CADENCE=0A=
 	bool "Cadence I2C adapter"=0A=
 	depends on HAVE_CLK=0A=
-	depends on ARCH_ZYNQMP || COMPILE_TEST=0A=
+	depends on ARCH_ZYNQ || ARCH_ZYNQMP || COMPILE_TEST=0A=
 	help=0A=
 	  Say Y here to include support for the Cadence I2C host controller found=
=0A=
-	  in Zynq UltraScale+ MPSoCs.=0A=
+	  in Zynq-7000 or Zynq UltraScale+ MPSoCs.=0A=
 =0A=
 config I2C_EFI=0A=
 	bool "EFI I2C Master driver"=0A=
diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-cade=
nce.c=0A=
index 8551cd05da..e8ad26c91e 100644=0A=
--- a/drivers/i2c/busses/i2c-cadence.c=0A=
+++ b/drivers/i2c/busses/i2c-cadence.c=0A=
@@ -441,6 +441,7 @@ static int cdns_i2c_probe(struct device *dev)=0A=
 }=0A=
 =0A=
 static const struct of_device_id cdns_i2c_match[] =3D {=0A=
+	{ .compatible =3D "cdns,i2c-r1p10" },=0A=
 	{ .compatible =3D "cdns,i2c-r1p14" },=0A=
 	{},=0A=
 };=0A=
-- =0A=
2.43.0=


