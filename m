Delivery-date: Tue, 30 Jun 2026 11:23:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weUhB-00BQ7V-0C
	for lore@lore.pengutronix.de;
	Tue, 30 Jun 2026 11:23:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weUhA-00063S-6V
	for lore@pengutronix.de; Tue, 30 Jun 2026 11:23:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A9OR4829RJWfQrfD2SZQ606ngbEYpErvkwitWv1q3f8=; b=GMNeRKlyEEz9a721jxzMEiY3mD
	xDTB0A71qBM17hJUczxkKwHVXOpXk8dNCDKaTY+P7VKX4VY6AZIPO0SpnH3Z75qu9zeySV3hBHGwB
	H5pL/faK/6sWEPptxbS4w8fP/+kukcgRtlidN+zq8qIh+I1s2O9n2b73Oprvl+IX4HxYX0V9oT97s
	j+20JM+sVZHEuFxZquLbP99YChGm0xyqcqEcDDKT0wK2I49DYwTsKNFQbDJaDq2CZJckcKQauUiCg
	3X8vg+4RLZyFhLFnYvfAz2ZLRL466gujakzzPmnk9vy2rY2eRzjYw/Ud3R93WnwDhB0lAmADA4FVU
	M/HcP6AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weUg1-0000000GOCX-2eJT;
	Tue, 30 Jun 2026 09:22:45 +0000
Received: from mail-northeuropeazon11011006.outbound.protection.outlook.com ([52.101.65.6] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weUfz-0000000GOBh-15eS
	for barebox@lists.infradead.org;
	Tue, 30 Jun 2026 09:22:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uHnxYhRYFXpYmbwcTapifjwbhTdizjRwQunOdD3sG1Qg8CXXNP9ULy2H38JOWxRPARFO4TM+E8f97ww5VFCJ2j6AkCNNHQYwdtraL2rD1zhYc5154mkDgYplwCpNRmUyy1L3M9F6d6pUhp04sxIl0GlbCPJ1a3jsl2bczGAMRX7YyrxwilKNdoz/oXTN/WARyCc847iUDSG82HvW5sdVYWI7a+VBKR3L6a8nNNfx0Q6d7hfH+0fClN7eY11v0tdciQ2uTz965Bhi7o1NQ9dM9RgkZTKCZF6y+GsKN9nE0YDoTx+/cHQACzSw/YphMmYQtJfyyDmI8PKT6HUefsnhoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A9OR4829RJWfQrfD2SZQ606ngbEYpErvkwitWv1q3f8=;
 b=x+rnAU8G0VTtxR/Q3KiqE/r65FJHABWdol3+1srpNK3hBpa/HpMfs2wxHMrGlwDR7wpQTFs/GRxAKW3z+nOOZewi5zLDfapkIu6wJD4BWBuN7oQZnNlZubDvcaWvAoPaAeg2F05EjsMmvL6HPhD202hC7PZgR0X7eiiG+92QeSCofamv/VfavsEpFb7v8Fho3gBqEVsqjGYIDzQHQvZtHdZlpMXXbsvUO6FtK3hrxfNf5DI3RVrqxB3JVWkAtMiJ1jIg22SDnuZFGFIunJLJc4PjEXgG791SO3Fkp6AGsvpLUToo3ozQu2fet1GXJBncZtRnb/ImFkMTHbOuiXP6VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9OR4829RJWfQrfD2SZQ606ngbEYpErvkwitWv1q3f8=;
 b=mByPwQoMJSSkB8QZaxv79tEpDICNI2DJLIcx0yjpHYhqI134uOu8BDMG/opxNSRRRUVTalP+9YznMcSYvo2D3cTke9jAJvAKksY4pGPwbsdTEJt7H/FwNgKjrawAXTk1waQwm8uExKiF9rqHjTsRp+MdNhNxhJuZIA2qkG9hMgs=
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com (2603:10a6:208:6a::27)
 by GV4PR06MB10111.eurprd06.prod.outlook.com (2603:10a6:150:298::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 09:22:37 +0000
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc]) by AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc%4]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 09:22:37 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v1 7/7] mci: imx-esdhc: support DMA in the i.MX8M PBL
 eMMC loader
Thread-Index: AQHdBm0+RQU00DZaokiwH+8pSt5Q4LZVjM6AgAFHyd4=
Date: Tue, 30 Jun 2026 09:22:37 +0000
Message-ID: <AM0PR06MB414843CC66B8E2F25AF4D460BCF72@AM0PR06MB4148.eurprd06.prod.outlook.com>
References: <20260627194324.2230643-7-johannes.schneider@leica-geosystems.com>
 <E1weCDl-00000005ilx-2MEA@pty.whiteo.stw.pengutronix.de>
In-Reply-To: <E1weCDl-00000005ilx-2MEA@pty.whiteo.stw.pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB4148:EE_|GV4PR06MB10111:EE_
x-ms-office365-filtering-correlation-id: fdf5a4de-1c8f-4356-c109-08ded689202b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|23010399003|10070799003|22082099003|18002099003|38070700021|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: zpVO9q9aGTeC5lpXzmAgWQHkYEkJkPpxLtp/o/eOVRbiBNXWwKQLZzTTDXxQDi054Es9rHjiaU5cJNExkczCbQ2JLSy99uYjO2loeknt4PPBOlvI9Lis8PMlXjYFV7wS7r9QVrDcV2f5l4eBKEypBH0rwSKQM3iwN/37zQEdub+aUZePnjdwiHkskCmIg/1PJGJHEtyrd7xuoIqV6bObz9+QrjNESyXZ4cCSnNIfQBo7yzk79OjZocztpqT8XPVvvgirhnKoH7n6rDm2R4VVnxeuOoBy0GMDyw4Ow99sK2NkjKmbi2JZgWrAri1Js7NT1/uJ6B0ElYn9cGPTAgU7m5wGPsD63lx5QhlCz6c3bsregOo4MaMM9T2lJ/ra9FKTe2opdCTrF5Rof4jcAFl+MCOkr9jCut64Eiu0NzycZA6JSFY0LVBehJsyX76IGSeW059fT8IMaKAXy9HZ9EyqwwjamlM3P6c9k9WurNzRg7edN6cA7KtZ4QvcVaNVWSQw0ERXiS2NTsOi9UTCIeORaBRUtEFqc6EpZeVoyK/T8WBMv4Y4JxLoJ/59Qeayb7vJjl7mpdaXEs7rgoNUBocZvqFPTJZ/Rdix7YxZVQm/j0VGMNXahcm1xWtE9ip/5UgdWexWXW2kkLGI1B9kjBd+9xzaDBsFyolVK0WvGNkguv3QDlSbJ0VoTq7mfrj8fwrvv56wCnudwQQaTaFhCjwViYeJZ+QNp0IHU0n8dzd35Tk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB4148.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(10070799003)(22082099003)(18002099003)(38070700021)(4143699003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?dDS3263v7J/TkppT3JzpHUj+OEm9bJJ/aK7CUYO0DsmF5DsVvduyg2R/PV?=
 =?iso-8859-1?Q?glU01ewqgmrAMAdZGIKEpoMNk9AhHBT+UGfWihDmlGXGKg6TE4qqAGxzrc?=
 =?iso-8859-1?Q?k6JTH0YpJIocvMpZac3+IMP62XMVuVAxCYZNNMTS1eC2WCQiJUaDtCd5q9?=
 =?iso-8859-1?Q?ZzIxBtdqhSp5Gr6pP5I1XjsVIGIdZFOOpAo6IACO9UWhfA8GsWpUBQyL7b?=
 =?iso-8859-1?Q?ZiMv/L7GgUF4dz023V3vm3pWVnP+yaN9QdYXL4ma4KOysHNMyMrJCbKTUS?=
 =?iso-8859-1?Q?2b4LC1FQV686Za799FZBc9e1AD7HVVAQADwPbrl7luhO/6OtomNHbuWr52?=
 =?iso-8859-1?Q?Zz/hyF8HizFgBzozv3urX35x0Dybm/aHgRh8Er4AVXBLxP11r+qdMV2syq?=
 =?iso-8859-1?Q?QnCN1EAOGF4sd5Jp7I7Fdax52gOA9pISd8KMQvZzQbmifvPDPRHNc8exga?=
 =?iso-8859-1?Q?K5Zv/8Kd9UFDosE6AEOOAD/mIdHSc8sOh61GYZMvc2HHMzzNl7wFMJPaRB?=
 =?iso-8859-1?Q?CmVIQh2JyjbFuP5SVm5vGus7be4wCH9vgdnptGpXe4dQ6weviPYNQTx5ID?=
 =?iso-8859-1?Q?Ju3Mwl0P3ZvHwxCw5mhiNufCNB4WiONUH3WrnefjUEHOrGXyvWAU0EARLx?=
 =?iso-8859-1?Q?KNqHXov3NgjPevQZnbGJp9WzWN52VLanCAlz+bsypPYJcr8lOdn+4BGJ90?=
 =?iso-8859-1?Q?B3BjNWYAFWs1z7kTmjjJORQfsQ9+UH1Q5FAShzXqeeeOV8lrjbE9gkxWwK?=
 =?iso-8859-1?Q?1U5GRHKpJA0XF4b407CE39dWoIoWQeM11I+BWd+IninOoKeG2hAxR0THaF?=
 =?iso-8859-1?Q?PpraKR5RJjrCcmekKwpvBy9TCQX+TBuGytAfjIJKVa81GEao1jj2DSM3Be?=
 =?iso-8859-1?Q?s2W9nEG6VLDYECZFqv5+czUah/P/V3Sj+bNjWz3K4XquRa92Q59IADVC2i?=
 =?iso-8859-1?Q?k9dE4buLPzC/klLfM1FY3o1IYsrFcLJMevmlbJuas5u3MDTaDrF7gKCwTM?=
 =?iso-8859-1?Q?IYFoM/CZOHoTARqc3dRfIP3ixMq3mMtif1iIxz9djgg+Jywr/5riJ4MXA4?=
 =?iso-8859-1?Q?jOEQqzcxRIFGt79/wccMqBl/lwyFXKqRQZDHZk8eePwY6a4pD0Z0CjadmZ?=
 =?iso-8859-1?Q?DqwQ4YXIbyel92U8JuOtPz/K1IKx4eHCr5XpAuSCwR82Q6zUw5DLLD5mjG?=
 =?iso-8859-1?Q?fws8ZP0oNlmV57Bajj6OojicAAKHxeQeEkqYGdi+1Q4//KxfBXWMT8HZYb?=
 =?iso-8859-1?Q?xvbkmydUTkEfaBCACfvILvnfKzaQHIcdc2X+O350+2EGnYNgcew/AlJFJo?=
 =?iso-8859-1?Q?jriqhSnuozb+GWk2ABW5HbDHXOZkH2WwpBEJN+I5Cot5PrVct226yNWGhD?=
 =?iso-8859-1?Q?qMNyNxztDgX1T4cAayoUxYIt7+dGrTHWJqRmENZqXWz40FBFPfWXVfCp8a?=
 =?iso-8859-1?Q?Tf7V3jfdFRP69oYhNvhoXH5zyUPHZF55ZIjQm0XC4NiCm57M6Rb6enxnVZ?=
 =?iso-8859-1?Q?0/i4Qs7Ne6JJUopD50YsTzsI37ar1DfZM+CxWFtGW58rHh3Xy/2dcx2Bql?=
 =?iso-8859-1?Q?/H5aBJglF+diJfW25f9y/qqhIZqGJ4UNxsG1oejsYpotBfGA4a1UAlDQ8E?=
 =?iso-8859-1?Q?CB7g66chLSa0nB5XgXVefL+8+LqVT8vdT+jDn9sfVz7zQtym4TgP5+Dbmx?=
 =?iso-8859-1?Q?p+cITQ9VTdcb8nmUGfgL0sitIGaGLgKFLaIeudekfym+GFW/GLVQb8lGCr?=
 =?iso-8859-1?Q?qBclAHwkOM19wjzyRxovQqNARNBkqi/ryFNRF9JweWK9aHyloj7eykGLgH?=
 =?iso-8859-1?Q?iP9ExPbtDYPtDlepIfKTSYjGd/7gbxHvMh0bJf7MFVWcBtVvgjzEY1intG?=
 =?iso-8859-1?Q?N7?=
x-ms-exchange-antispam-messagedata-1: hg01wzwKI7KadkmEcxyfmdegfwuEJ5VjAfzF+otnz8hylhPJg5hGv0Sv
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB4148.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdf5a4de-1c8f-4356-c109-08ded689202b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2026 09:22:37.1451
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SNjCA/XjEQ8+WNBTTiYtGx68LNmc5FMFCaudwe1D8nieeX8dR+VN0AJI158u0astTI5vaSPw/4JOlufVR+f5i/g8A8rlDCjvk2tZs5nOA/+K9ksU2SQsxgLTXV7LIz2U
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV4PR06MB10111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_022243_346065_A73401F1 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 7/7] mci: imx-esdhc: support DMA in the i.MX8M PBL eMMC
 loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi Sascha,=0A=
=0A=
=0A=
> On 2026-06-27 19:43, Johannes Schneider wrote:=0A=
> > The PBL eMMC loader was hardwired to PIO via esdhc_use_pio_mode(): IN_P=
BL=0A=
> > forced PIO unconditionally. PIO is slow -- on an i.MX8MM board loading =
the=0A=
> > ~1.6 MB next stage took ~559 ms; SDMA/ADMA2 do it in ~21 ms.=0A=
>=0A=
> For proper DMA support you'll need memory synchronization in form of dma_=
map_*=0A=
> or dma_sync_* helpers which we do not have in PBL. Without them it won't=
=0A=
> work with MMU enabled.=0A=
=0A=
Noted. So since the MMU is still left as it is =3D off were still good wtih=
 the=0A=
current sdma/adma implementation. But maybe worth a comment in the code/com=
mit?=0A=
=0A=
> Have you tried enabling the MMU in the mean time? This=0A=
> should give you decent performance even with PIO.=0A=
>=0A=
> Sascha=0A=
>=0A=
=0A=
Thanks for the hint/idea!=0A=
I've let the AI draft a PIO+MMU-on change and ran a round of measurements,=
=0A=
(Caveat: sample size is one) there is some gain - but we get more with SDMA=
 or ADMA=0A=
And interestingly "the same" with the later two.:=0A=
=0A=
 Phase                  PIO   PIO+MMU   SDMA   ADMA2=0A=
--------------------------------------------------------------------=0A=
 BootROM                  1       1       1        2=0A=
 PBL-init                 3       3       3        3=0A=
 DDR-training           265     265     262      269=0A=
 PBL-load (total)       884     413     257      258=0A=
   PBL-pre-load         165     170     166      167=0A=
   load_bl33            713     241      86       85=0A=
   PBL-post-load          5       1       5        5=0A=
 BL31-early             114     114     114      114=0A=
 BL31-platform           16      15      15       15=0A=
 BL31-runtime            98      98      98       98=0A=
--------------------------------------------------------------------=0A=
 time-to-barebox       1393     921     763      770=0A=
=0A=
=0A=
If you want i can brush up that PIO+MMU code and send it out too.=0A=
=0A=
=0A=
gru=DF=0A=
Johannes=0A=


