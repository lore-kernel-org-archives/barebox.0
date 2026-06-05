Delivery-date: Fri, 05 Jun 2026 07:48:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVNPd-002WEe-0U
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 07:48:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVNPc-0000QD-4Z
	for lore@pengutronix.de; Fri, 05 Jun 2026 07:48:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AA6XjVfiISQU3bPQV3f3ioDEYyAzYA8QDF+02rZNSE8=; b=rKdLIafNfZY/5Wq+tvrt+zeNOR
	oDpXssS0tE/NZPefgF//9P51rqjyvK+zXvk1BtP99k4k9aA2dGHCdBE4zVEwwoy1CBEkEs6yW3fHo
	HfQICF6VmG/PAYRryt89cipQxv2EQRQEmQUv7FyecwRFQqXxFOcVpqeapIwffIqrEHnWw42ZZYi7R
	RFN7YP7IUx302o20uxRs8CNgyNvKpKunNNRbhyGRBRV7w17M3nU11HcD3pl+EANtJ+1F7gJHWYDO+
	JTGbQ3t3GVX0bMxYM125t4sSRX/ATFB5bZxN23vwzDDGIK8TyMUvF35o9veWYb6zbE2fybb59Krsz
	TUMGDkPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVNON-000000007W9-2skV;
	Fri, 05 Jun 2026 05:46:51 +0000
Received: from mail-westeuropeazon11013040.outbound.protection.outlook.com ([52.101.72.40] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVNOK-000000007Va-1Hap
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 05:46:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JphyMHIa1BBJN9paeyJ0Peqm7MMqHOMimKHfHPzWePjJ/XvrIitnXcQob7r/MVCMV7qaVvg52g0+R2oQrO6NvKwoQnkf5wxrGocs8hd3xtDfIqLMBU2L7uEwM0zaZI0q/YjhIZwCnNYvnp6XMd0FUYd8VkhBo61gp+LG7F3CaIszrITW6TUQQuI/e0ASSOJF1kCCI0zfeKVPjfWsw6B+cMWgBMhySEfzA0QnLXFuvog8el5rYpgQJ83EZXtffhPIfi4qazTegapmw7LOw/dNs6U+U5kM/XrMIoBEwLuY3TBxfP2O3HOYrVGc6QlOjU2WCwClMTFoSojAww51u5or8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AA6XjVfiISQU3bPQV3f3ioDEYyAzYA8QDF+02rZNSE8=;
 b=qiWapZedFHKmm2sW14sPHH6n/mhCk6eAOuz7MnUwU6wbblkE59BEe9hHM7PRe3zUDN3nEqVrRrp8WSUp5Ar8z2g2ABIGLU55Xjz804o9atCBk+6L5goLGYhPB5n8J2DHhtbvilwsaZdU2y+4izaoDcjOTgsh9GzqvfI0cwviWUHNfvhM+eo83Fah/RQkg+k8Ay9JUmBs3/2RvrKEUhSaVlyhaJsRtbbur3i1LxDwksnJ5t0SdFg8trOP4+tK9B71o/DE+3QmT+/xo7Kt4357455/vbUQ4JxmGeVVFrhFpiKkWV2WuTRTEV2h6YCBkcOdRnWLgsk2eqQPD4hluGA/xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AA6XjVfiISQU3bPQV3f3ioDEYyAzYA8QDF+02rZNSE8=;
 b=Gvy3xUdkFPiewYldofAcv0YFxiR2KFhAnXXaUT+/ISLCmbPHBovlFMSzOXWaUzWexAkkeQ+dnyA2QHy99YB4Z2dhEQ5+BbZcA0Npt0Kjq7yypLX91EOoKoOjeMI8cZpjercDYJE1kvuuwOQs1LxU5sfQI0Wik7SGIkHd655+Uho=
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com (2603:10a6:208:6a::27)
 by VE1PR06MB7069.eurprd06.prod.outlook.com (2603:10a6:800:1b1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Fri, 5 Jun 2026
 05:46:41 +0000
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc]) by AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc%4]) with mapi id 15.21.0092.006; Fri, 5 Jun 2026
 05:46:41 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: HAEMMERLE Thomas <thomas.haemmerle@leica-geosystems.com>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] lib: logo: support a single pre-rendered logo file as an
 alternative to SVG
Thread-Index: AQHc8lY5qAPXCWvi5E+IgrTbuzTs0bYq1k+AgAShMRI=
Date: Fri, 5 Jun 2026 05:46:40 +0000
Message-ID: <AM0PR06MB4148A7BB04949283840342DCBC112@AM0PR06MB4148.eurprd06.prod.outlook.com>
References: <20260602060819.1646815-1-johannes.schneider@leica-geosystems.com>
 <90cd7b0f-4783-4fb3-8faf-3436d21db90b@pengutronix.de>
In-Reply-To: <90cd7b0f-4783-4fb3-8faf-3436d21db90b@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB4148:EE_|VE1PR06MB7069:EE_
x-ms-office365-filtering-correlation-id: 5eb019ae-b737-43f6-24ce-08dec2c5d162
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|366016|38070700021|6133799003|22082099003|18002099003|3023799007|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: 8sl7c7QHUm5Dv3LPeMo/tcT7qmW0Gze9eyq1wDHWuivWenmqfl/9uWabM8LRSnHUWkDLeYul5SQfwVthkQ9SyYKjNUcqWIz9PBdpbEMNPv1g6DQiVkBgip8X2D0+ObV2xigMay2TM0dVYU4DD3GscaN2ZXYSW7/OL3Pvpa089KnQbRXMAOLDdTBmP1xjPgb+xWKtjj7sZF/C7SCpdtrydAv1TqG79jtnzwRjVK45tinrEi8VU8M+5Tc0wq12SGH9KDllHwk8llBjWPmbOBc5x9whodOI1KgUKo45EWkeR7SiPqdJsXgx8f34XSCCLB0c3Fedi5d36Un9Vz8g4wtEqirjzJO7QygSn8z9ZQmDtPkEjYSrFU/3qB4dxah29o0agZYDAzfiYFMOF9x+t3AphqIvcyAqRh41XxShQPqVwTdtWFyXWYZrMnFne8k1bTizlXC+KeJGUHkNSMRqtbT4f1h0+u0j2ZIF+QWh4m8ujypZu8WvNvnAbU4xQqq+3X8Cm6TqJYBmD56HJJv1IJsX2+dZ7QXByQMYA9zH/Z8KWGYLn49MfcbAReKazhT3T3gN3IvNcYI5ItBWZfjNQq6PrnBaUmyO/vth32fngKaIxGAVx+qObehVJma2KQRvALsDDQcZWGcr4aoR7hAWAOsbyX0SeZgb79L9vXcExUBPFZtdu3YG3KMGgkuXfCc528i51tA2ZbWwJTCYK9rJX4UcdVTribA4+pOsLlYZMMs7GIe2EGLn8rV1mIlCosEbcvu5
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB4148.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021)(6133799003)(22082099003)(18002099003)(3023799007)(11063799006)(56012099006)(4143699003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?HeBX91hx2tTWbBbrNFwhgf3xkp2T9iNkPtQ2mYbY6l+d/bxRIAGEZyx5sW?=
 =?iso-8859-1?Q?04n37OAcySjcbqA5UFw5VS+jfFRnFs0gjN87cMSSUD/j58vQCFBEgX7mw1?=
 =?iso-8859-1?Q?Ov2bJVm/KG1QKSQGY4cTxb//O/y8ENM0P3NPTPgyuWBHG1uCZi/E0BZ/Ja?=
 =?iso-8859-1?Q?9pX04F7DB7QlreGNFZhMKZxXBUk7VD+338WEfitBplNYkkUMwQrFRkDSFK?=
 =?iso-8859-1?Q?dnglpXBSaWiBQ89IrTkzcMAKI8IjfH3r5bWRTdcgEBij+WtPRA03xpsNNo?=
 =?iso-8859-1?Q?3IpgnLrsBnGkwLldHGMqy+3vArP85d9qlnu+xuGXEAsnTN+jvio9/Gdp7K?=
 =?iso-8859-1?Q?NycLU7OaBMoOSdJ3LEcL8wa4TFouWaD+td+9m/KeF15yzQx3sSeWJarrpJ?=
 =?iso-8859-1?Q?/LvKizrfnQ+M57bNOJX+o5AfMpJRTdId+JPCQvzT/O50jo4S6+2I/ZkRfS?=
 =?iso-8859-1?Q?VpdsNNh3yCh/RiMCdAiuKO4DvLe1y+bcSsclwHIp343GPNYfEBnwgwLcJH?=
 =?iso-8859-1?Q?/l4qyVpCumdJ0/3i3PbFavaOGUutV/SLDO5+5TMjeuh8Edxa0JbRkNDlw6?=
 =?iso-8859-1?Q?sJ3W5rPz2dBwltI3rARWPhuXrLPcU9uEuQpHQYX56ft+xaNhIJvIVH+dnB?=
 =?iso-8859-1?Q?n+AVjWnxiSMYqB6hXg7hY4Pao0fIZ46Qlrzsuw+QaHrKdU7Asxm1EyF0Zq?=
 =?iso-8859-1?Q?MV/Pp6h5FNXDazc/tkt4wTymT6BJvGEhgbbb3/zUtTOcuBl79ZvkJB2cEf?=
 =?iso-8859-1?Q?QCCCjlod3w+xejkdeoOLqdbYDOuMvJsywBa9X9ZyxSxTqrBJu9+AsPxse/?=
 =?iso-8859-1?Q?Ruht8b9KlasV6zXcivpBLh/CcdL1/j8wDACTXjSCenYViaeucoePy2A3dG?=
 =?iso-8859-1?Q?wiXk7KiTguTkf+dZMQ5cL2TCpm+w9f3iIIwFp3+nu5Y79sKxDPXDRA7pKX?=
 =?iso-8859-1?Q?Q+bJPAuBkFAldlQNUTQBzp/eEbT7Q2cdraWQkC7NlZCBA5hfLjBFWS1iFn?=
 =?iso-8859-1?Q?+ltLaNzTqo7mqUuOn+BTw3vqAdIQjk/88C+GV/yVoz2jLPHAgCj0Z9S1oD?=
 =?iso-8859-1?Q?TMUv28R+VAk5WlAQZVCNnKg1i2m9ESjw1hZVQAwFvC/wTyGUG1aOmQf9EE?=
 =?iso-8859-1?Q?BY+1BLIwx2Ef274zoOTSimjdAzMPtmFEEZff+pFE0AE633mZFhg5o5+5qJ?=
 =?iso-8859-1?Q?K4WShiQxbwbknI2S5xwDIm3NmPmlrnxYydcg//LR7M6Gae9nbjfxdnT0WF?=
 =?iso-8859-1?Q?WZpY2RTwRjvY1buPS5P1BfnxOZHSAW1XDRPY3RktLQeO4py2WDmwJEPI8O?=
 =?iso-8859-1?Q?nL1ApnTG2hlc2CMAwsItycB5ffi2NbCVvV6yMA610hEP/NNPZN9NvIpaHE?=
 =?iso-8859-1?Q?ggksknbNq2mt7vByI6KOGhC3oESOrJ3rD5UoLf13jhSIfvaztY8KcfN54b?=
 =?iso-8859-1?Q?hPlyKLx7OfcrqJID5rERiRMVr6LM+fTEIngj8//egzqbncgJqBNLYpWslc?=
 =?iso-8859-1?Q?URb3u0lQVTVmhKDWpbTO4SLmLLqhIrjQLG/rLh3qtvna6z8bzTnZWtSfVB?=
 =?iso-8859-1?Q?GuRcyq+x9SBHY01vFOxVpp3wUwhf5S8qcHGHlyN5B67kUkYFtEaM3ZPWgO?=
 =?iso-8859-1?Q?cMfmzIcwsymi54joyysM4nRa5hgCox2VBtWHkegnTDRe4shdMcifId3YCA?=
 =?iso-8859-1?Q?4aWsHcKf0BlgJ1tGZ0qxjDv/Tj8NFI/Q8YGEwdGLrU03sd9AdOWXyg6xNJ?=
 =?iso-8859-1?Q?fv06RpoVqprhTuLmAJLwTFcpM0zPFyG9qcsmkUqCV29sRqIpzFGSRnrW8u?=
 =?iso-8859-1?Q?T8UMdOmaiZj/4pSFptZcgGVWWWJT4ybc3BWj05cJUGXBSFjTcwuojyMgZR?=
 =?iso-8859-1?Q?fo?=
x-ms-exchange-antispam-messagedata-1: b01euphrSOnjn+VdHiyav5ctOOqNcu43jFhfJIePMeCEvFKly7ePpPoT
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB4148.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eb019ae-b737-43f6-24ce-08dec2c5d162
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 05:46:41.0070
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fk6Ub6N0mVzYonvA/r2is6+vgq1kG833hk7L5dLjifCncQcN415WfI3iSng4xQwu2TeQ2tBEveqAJwpH/qMCltyOVcHHrSgmEPfhifsqScWxvE/SalM44R/MiQxOoUFY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR06MB7069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_224648_532193_49078F32 
X-CRM114-Status: GOOD (  26.26  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: logo: support a single pre-rendered logo file as an
 alternative to SVG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi Ahmad,=0A=
=0A=
=0A=
>=0A=
> Hello Johannes,=0A=
> =0A=
> On 6/2/26 8:08 AM, Johannes Schneider wrote:=0A=
> > Add a "Logo source" choice that switches between the upstream behaviour=
=0A=
> > (BAREBOX_LOGO_STOCK -- render Documentation/barebox.svg at build time=
=0A=
> > with ImageMagick) and a new pre-rendered single-file mode=0A=
> > (BAREBOX_LOGO_FILE -- include one PNG verbatim, no conversion).=0A=
> >=0A=
> > The single-file mode addresses two issues for vendor-branded splashes=
=0A=
> > on fixed-resolution panels:=0A=
> >=0A=
> >   - The multi-size stock options can be combined; e.g. enabling 640=0A=
> >     and a hypothetical 800 variant in parallel embedded both blobs,=0A=
> >     even though only one is ever displayed on a given panel.  The new=
=0A=
> >     BAREBOX_LOGO_FILE selector replaces all of the BAREBOX_LOGO_<size>=
=0A=
> >     flags with a single configurable PNG path -- exactly one logo=0A=
> >     blob in the resulting binary.=0A=
> >=0A=
> >   - It removes the build-time ImageMagick dependency in the=0A=
> >     custom-logo path.  CI environments where Inkscape and ImageMagick=
=0A=
> >     versions drift (see the SELF_CALL=3Dxxx Inkscape workaround at=0A=
> >     the top of cmd_png) can produce a pre-rendered PNG once and check=
=0A=
> >     it in.  Stock mode keeps its existing convert(1) chain.=0A=
> >=0A=
> > The new symbol is barebox-logo-custom; the resulting bblogo blob is=0A=
> > embedded under __bblogo_barebox_logo_custom_{start,end} and exposed at=
=0A=
> > /logo/barebox-logo-custom.<ext> in the running barebox.=0A=
> >=0A=
> > CONFIG_BAREBOX_LOGO_FILE_PATH selects the source PNG, relative to the=
=0A=
> > barebox srctree (default lib/logo/barebox-logo-custom.png).  The=0A=
> > existing BAREBOX_LOGO_64..640 size options remain available, gated on=
=0A=
> > BAREBOX_LOGO_STOCK.=0A=
> =0A=
> CONFIG_BAREBOX_LOGO is solely about including the barebox logo.=0A=
> =0A=
> To include your custom PNG, just put it into your environment (e.g.=0A=
> /env/data), no need to patch barebox. You are not even limited to one=0A=
> logo in that case.=0A=
>=0A=
=0A=
... *that* is indeed the better solution.=0A=
=0A=
so please disregard this patch :-S=0A=
=0A=
>=0A=
> Tangentially related, I am in favor of including vendor logos (e.g. in=0A=
> your case Leica's) into barebox for use with the vendor board support,=0A=
> but these should also be SVGs IMO.=0A=
>=0A=
=0A=
they are SVGs, but (now would) live in the yocto/bitbake level, not the sou=
rces=0A=
directly - like the rest of the files going into the /env while we build ba=
rebox=0A=
=0A=
=0A=
gru=DF=0A=
Johannes=0A=
=0A=
=0A=
>=0A=
> > Upstream-Status: Pending=0A=
> =0A=
> Please drop this out-of-place tag.=0A=
> =0A=
> Cheers,=0A=
> Ahmad=0A=
> =0A=
> >=0A=
> > Assisted-by: Claude Opus 4.7 (1M context)=0A=
> > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.=
com>=0A=
> > ---=0A=
> >  lib/logo/Kconfig  | 35 +++++++++++++++++++++++++++++++++++=0A=
> >  lib/logo/Makefile | 19 +++++++++++++++++++=0A=
> >  2 files changed, 54 insertions(+)=0A=
> >=0A=
> > diff --git a/lib/logo/Kconfig b/lib/logo/Kconfig=0A=
> > index 7e5a6fcb63..ab64ce242d 100644=0A=
> > --- a/lib/logo/Kconfig=0A=
> > +++ b/lib/logo/Kconfig=0A=
> > @@ -35,6 +35,30 @@ config BAREBOX_LOGO_QOI=0A=
> >=0A=
> >  endchoice=0A=
> >=0A=
> > +choice=0A=
> > +     prompt "Logo source"=0A=
> > +     default BAREBOX_LOGO_STOCK=0A=
> > +     help=0A=
> > +       Choose how the boot logo is produced.=0A=
> > +=0A=
> > +config BAREBOX_LOGO_STOCK=0A=
> > +     bool "Stock barebox logo (rendered from SVG)"=0A=
> > +     help=0A=
> > +       Render Documentation/barebox.svg at build time into the sizes=
=0A=
> > +       selected below.  Requires ImageMagick's convert tool in the=0A=
> > +       build environment.=0A=
> > +=0A=
> > +config BAREBOX_LOGO_FILE=0A=
> > +     bool "Pre-rendered logo from file"=0A=
> > +     help=0A=
> > +       Use a pre-rendered PNG as the boot logo, taken verbatim with=0A=
> > +       no build-time conversion.  Suitable for vendor-branded boot=0A=
> > +       splashes; no ImageMagick dependency.=0A=
> > +=0A=
> > +endchoice=0A=
> > +=0A=
> > +if BAREBOX_LOGO_STOCK=0A=
> > +=0A=
> >  config BAREBOX_LOGO_64=0A=
> >       bool "include 64x32 pixel logo"=0A=
> >=0A=
> > @@ -50,4 +74,15 @@ config BAREBOX_LOGO_400=0A=
> >  config BAREBOX_LOGO_640=0A=
> >       bool "include 640x320 pixel logo"=0A=
> >=0A=
> > +endif # BAREBOX_LOGO_STOCK=0A=
> > +=0A=
> > +config BAREBOX_LOGO_FILE_PATH=0A=
> > +     string "Pre-rendered logo path (relative to srctree)"=0A=
> > +     depends on BAREBOX_LOGO_FILE=0A=
> > +     default "lib/logo/barebox-logo-custom.png"=0A=
> > +     help=0A=
> > +       Path to the pre-rendered PNG, relative to the barebox source=0A=
> > +       tree.  The file is included as-is; drop it at this location=0A=
> > +       before invoking the build.=0A=
> > +=0A=
> >  endif # BAREBOX_LOGO=0A=
> > diff --git a/lib/logo/Makefile b/lib/logo/Makefile=0A=
> > index 9792a4699f..7bd7fbb352 100644=0A=
> > --- a/lib/logo/Makefile=0A=
> > +++ b/lib/logo/Makefile=0A=
> > @@ -1,5 +1,6 @@=0A=
> >  # SPDX-License-Identifier: GPL-2.0-only=0A=
> >=0A=
> > +ifdef CONFIG_BAREBOX_LOGO_STOCK=0A=
> >  OPTS_barebox-logo-w64 =3D -resize 64=0A=
> >  bblogo-$(CONFIG_BAREBOX_LOGO_64) +=3D barebox-logo-w64=0A=
> >=0A=
> > @@ -14,6 +15,14 @@ bblogo-$(CONFIG_BAREBOX_LOGO_400) +=3D barebox-logo-=
w400=0A=
> >=0A=
> >  OPTS_barebox-logo-w640 =3D -resize 640=0A=
> >  bblogo-$(CONFIG_BAREBOX_LOGO_640) +=3D barebox-logo-w640=0A=
> > +endif=0A=
> > +=0A=
> > +ifdef CONFIG_BAREBOX_LOGO_FILE=0A=
> > +# Strip the Kconfig string's surrounding quotes.=0A=
> > +barebox-logo-file-path :=3D $(patsubst "%",%,$(CONFIG_BAREBOX_LOGO_FIL=
E_PATH))=0A=
> > +=0A=
> > +bblogo-y +=3D barebox-logo-custom=0A=
> > +endif=0A=
> >=0A=
> >  obj-y +=3D $(patsubst %,%.bblogo.o,$(bblogo-y))=0A=
> >  extra-y +=3D $(patsubst %,%.bblogo,$(bblogo-y))=0A=
> > @@ -62,6 +71,7 @@ endif=0A=
> >=0A=
> >  CONVERTOPTS +=3D -background none=0A=
> >=0A=
> > +ifdef CONFIG_BAREBOX_LOGO_STOCK=0A=
> >  quiet_cmd_bmp =3D BMP     $@=0A=
> >        cmd_bmp =3D convert $(OPTS_$(@F:.bmp=3D)) $(CONVERTOPTS) $< bmp:=
$@=0A=
> >=0A=
> > @@ -76,6 +86,15 @@ quiet_cmd_png =3D PNG     $@=0A=
> >=0A=
> >  %.png: $(srctree)/Documentation/barebox.svg FORCE=0A=
> >       $(call if_changed,png)=0A=
> > +endif=0A=
> > +=0A=
> > +ifdef CONFIG_BAREBOX_LOGO_FILE=0A=
> > +quiet_cmd_logo_copy =3D COPY    $@=0A=
> > +      cmd_logo_copy =3D cp $< $@=0A=
> > +=0A=
> > +barebox-logo-custom.png: $(srctree)/$(barebox-logo-file-path) FORCE=0A=
> > +     $(call if_changed,logo_copy)=0A=
> > +endif=0A=
> >=0A=
> >  quiet_cmd_qoi =3D QOI     $@=0A=
> >        cmd_qoi =3D      $(objtree)/scripts/qoiconv $< $@=0A=
> >=0A=
> > base-commit: 81fbe2e8d0d445032498a0bfecf9fd270f00985a=0A=
> =


