Delivery-date: Mon, 05 Oct 2026 07:46:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDbX8-009wh7-0y
	for lore@lore.pengutronix.de;
	Mon, 05 Oct 2026 07:46:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5C5F22004BB
	for <lore@pengutronix.de>; Mon, 05 Oct 2026 07:46:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SBAQF5YT;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=Nnkv9So2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791179202; a=rsa-sha256;
	cv=pass;
	b=K2va7j4uTm+Z7a/Ixp+z7K+w1Ans9H4liO0z5mI6QGKtCrihyTYMuCkhSPS6Ba7SXHG1Wo
	XoX9sNSZ7toA6RVi6vcTYkrDYjIxnDLE8zWxxw6V/at3WYnK28j7EK6SkCB5kOQwDVj3uB
	B1MJaMe+9KvRIH2D0MYlEE76lr60nOJYloc82ZWU2jBi+gRBcllkwLJyGIyHxBDOtVT1HM
	TMGPzZ6XZD/EIdC1FMbd65+5NwrcV0fn+S6iDfvkg1tmp94ZmKk9iJlXb63B2HGUd6Zvlf
	WTm0K2bmMwQ2nhs7zbQZuAmCUJF1tabMgUmc9hafF6i/YOv0EQEQ2KjxXTQZwA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SBAQF5YT;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=Nnkv9So2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791179202;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=WX4dtNjyelav84jEHdnGWGZBC2Y1fhkw8E+evkVOMag=;
	b=gJnaZMkLDoIMztKHszzkGCDB2uJnWFaXK1AWpn5N9lKS4bChpWSHyd2mGk+dHrM+h4MAJx
	QC6xrUiJmpHLwHS4bBMAmnn6OQyAIdXp23SEbKiT8mZk3xGTgKOPTkQ1tLgU5LE1SGS54p
	WyXeRD6O4lHuOovtsS39a019/CEKrR3RyenoayzDsT3LmoixP1qf/mrA0glDDJ47rg5X4k
	hVZwjmdDXcCnIwYMMCHotv7HnjPdLCcgDVnBIsPJOTRl/P9mH4pUvA8xXxLh/QCSEKzPpT
	AZcOcTcuRymTWQU2gXfPYq2JIVHxJVMFQomfQhhoeI4IiLtmFS5iPKf3SYEuEw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WX4dtNjyelav84jEHdnGWGZBC2Y1fhkw8E+evkVOMag=; b=SBAQF5YTVoWLVdAE2sBTYS2Z7I
	G2vFqLneoe4RIJe+cf2I1ej5wVSvBUxpGAiENbijUK5D+deUJxUzk1U0WTUPYeafD3YvfQ2/Z006O
	capFxT0cgCTyjaNjqdGOTqPPhvzHi17QAD5KDnKETWstTpJqoIGcO5377diw76uN2xi8LDD/RgR+1
	DidRKrXAD/eCydCZk93dcYzbUinoY8U4SwrkOZpPTinEeg3MlIpiyrH7P9IfDq/r8U6YI4X60nhWJ
	Zs6/tzhhWY7I4rfC+7LJqc3VMIFe6/a6SKzL29n7SUX7RnffqsoKbUr39ASLzQGRObZLk2ybwEYnp
	AUyRwH/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDbVr-0000000FhkW-0L4o;
	Mon, 05 Oct 2026 05:45:23 +0000
Received: from mail-northeuropeazon11012069.outbound.protection.outlook.com ([52.101.66.69] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDbVm-0000000Fhk8-3jLR
	for barebox@lists.infradead.org;
	Mon, 05 Oct 2026 05:45:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yDjLDL+RKT+pGMuCGDqNMQqHQl/eGAC1AunKHDMBfXTkU6grtPWL5k+5GSBIgQZ5mANS6jSyFPnoBoKesDsqFN+oASezldUeeqzgl3olioBuV3oH51igJFYhp1FCZ/Kbcjhsq6Xrb29l1twRpo1GqNxi/oheoHGE+ojAs+bTqkJQgwP0Wz86vhmXo9Dv7jgkdaaGKp9E4CwP5rZ1+5WPygiTLYZQmxBp4Fg+eeo1dAcO/0E9+/o42fRqFc/YsVAjgKMI33s+n+uL0QZUyVZ+ZNglEKc+epI0r3V16LG/FeeeuyIIyHqVV4JjtkPh//3Se0faDNxPzIjdk0Y22yR4Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WX4dtNjyelav84jEHdnGWGZBC2Y1fhkw8E+evkVOMag=;
 b=oxCF9iVKca4otovhB7e1H5VTmawptzmUwGFc1yTdh4Wf3IvGvsKzgQjZJuPcdT6bKL+DQzi4AetOUCHzf8aGySwdzACtTi78+kFNWTTCumh4I90tRX/YXP5gq0Y1aJdv1TysDjWvETwG5RIJLy1QmakugvBTtG7ZiW/met7pSVl8CEFh9L9eaWrUZnLCD1W2vE/k2KE5yfae6jMemheNZtVOoJwiQJXJSe1hJq6wtcthYJyz30PvZCEpWEBhQXha85QkP0ZO2kBZ8DRHCkzBMh4o19pWU7bf3GstNvqSKxJpgdBOSumc8gHAEKaRMQjtEMW0AP7NIi8OqXkk96MVnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WX4dtNjyelav84jEHdnGWGZBC2Y1fhkw8E+evkVOMag=;
 b=Nnkv9So2v3S4P1BhY4j78wflOXVAwa2wtADqjU7bMNyiecurABEuUbdrr5V74M5MoUckVh0amVZGXHp0mcytkPqoB6LvBMdrGaiXoXKKQV/PAFgbd+G7bm4O++ebhcNjClNUdB/5gIW+jc/zgT0iv2DecV6Eak8gmfnZ/kZvAg8=
Received: from GVXPR06MB11003.eurprd06.prod.outlook.com
 (2603:10a6:150:31b::22) by DB8PR06MB6506.eurprd06.prod.outlook.com
 (2603:10a6:10:12f::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Mon, 5 Oct
 2026 05:45:12 +0000
Received: from GVXPR06MB11003.eurprd06.prod.outlook.com
 ([fe80::441e:1079:fafd:23cc]) by GVXPR06MB11003.eurprd06.prod.outlook.com
 ([fe80::441e:1079:fafd:23cc%7]) with mapi id 15.21.0472.016; Mon, 5 Oct 2026
 05:45:12 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
CC: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v1 08/14] efi: loader: verify Authenticode signatures
 against built-in keys
Thread-Topic: [PATCH v1 08/14] efi: loader: verify Authenticode signatures
 against built-in keys
Thread-Index: AQHdU55/LhdHHdyFmkCpy8cgOLmeELbubuaAgAAB3to=
Date: Mon, 5 Oct 2026 05:45:12 +0000
Message-ID: <GVXPR06MB1100354BC97448B00F0E57E1BBC962@GVXPR06MB11003.eurprd06.prod.outlook.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
 <20261004011958.3255011-9-johannes.schneider@leica-geosystems.com>
 <753fb66f-fe0c-453b-8508-a8ab85d44d90@pengutronix.de>
In-Reply-To: <753fb66f-fe0c-453b-8508-a8ab85d44d90@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVXPR06MB11003:EE_|DB8PR06MB6506:EE_
x-ms-office365-filtering-correlation-id: da75aad0-0126-40f6-fdcc-08df22a3d2d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|10070799003|23010399003|1800799024|10067099003|4133799003|3023799007|56012099006|260925021911599003|260925021311599003|260925022911599003|4143699003|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: QUv78LH9lg/iFJY5GoO60ifovxlP9yObxo4ZInkacFTdoW/jDDtNjcox5oUa0m4mWhVLI5UGDyLrLGf8LmuTrtwu1gpZ4N7/S+d1+nxXM4qgMGP/nEA/UvkT+NpyrpW42nRXYyVWtSi7PQICrMgSaE1KtxlB3mYgB5VwnDi6r32/eeHhpgtP4xjHeZbZFidyGInfVE73mS4wtcsgxp5J5svqOfm9xRrJ+3flQYra6X3opLdNLlrF4VAKn64idQIOs9BQx5d2UMMPx0voqA6LB/iKpPObOp2wCdz2nC0vvuPavccKHjj5dVnzkRs6opTp1XVUYv6+ZHCPRHL9vinngP5ph/HlPHnh3U30kXY4r5ff7GaKJBS9r7IH3aMTYqwGJ7N5IMU4rKVD2YakdAW7CDuzkakpj1bS16LvuYGtm4gaw6e0pFOAnzhRY66i3jvCHOiEEo+3piXWQynXRRmyDpsKvBTtTtjZiVZkAM6vWREBVzLRhANrazNZM7+39TrOWIAG/mTPXF+EdbZu2IVf/EGADv84CzmXqmihKYJ8zdMGKX9kdsnBE334fh7s7CjuD8olAlfRkZkezxjmXJu2SZGe1oLEya4PAhoGixIlEWSLSL5xlA8kmWETSQ+DXLL1Efj0BDe8ZTfT0j/at9IeB8QiZFq4SDgIleRBhPzcGzM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR06MB11003.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(23010399003)(1800799024)(10067099003)(4133799003)(3023799007)(56012099006)(260925021911599003)(260925021311599003)(260925022911599003)(4143699003)(11063799006)(18002099003)(22082099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?DgkfPeCeadBTK/tsevPFWZAIeIOizTRJpIl4kzz4P+gg5trxGbi0gK2ki8?=
 =?iso-8859-1?Q?lKdaPIme2vcXsMXSIjby2VavSbIgMqY+BUB9To/nHsjuiIBhLuIBeudf/s?=
 =?iso-8859-1?Q?XhPhQx9zc00JEBQ0RlVJCNtNGtaQGukh0KX3B52k8yDJ7JBekvbf4ZCJ8e?=
 =?iso-8859-1?Q?f/M0z9NyasUgjMjmv1HQTAK+V5TzbLRE/bdKPD/RQi769/BdsH3PR6iZtY?=
 =?iso-8859-1?Q?pbxt7ZF2jNqcAfKEJGTvH1IqPwL/jSPf1q0fK+lbi8Vh2C0l2Va5EmRwLz?=
 =?iso-8859-1?Q?Xog1vL6KLSzNECufeRP6HIZQSUZtYdgMWugccR98Bfl2vZfnEKGhuTVBoQ?=
 =?iso-8859-1?Q?4FScrBwfGeqUVJ3gx+drtrFmXHzbYOGW9p1WjG9R8NEzM2P1Tk9SeCaWP7?=
 =?iso-8859-1?Q?5r8U/fKnQWk1dz7mGFGyq3awgS3+o87fW1w6ZlnNgvqw+Sw0kItOfpMe50?=
 =?iso-8859-1?Q?h5XcA6In+V4WmDOf/LU+krvqJJW0mEqP7cyaZOUWX6gK4+quVCnqL29oZB?=
 =?iso-8859-1?Q?hB7XH2bNBdZpdVn6A+QamcnM36MsuwyMMfGJbLbk7HUenIX1zUQoWUy38z?=
 =?iso-8859-1?Q?HVvY6rjQBQ4N5O3967C8TES+/lE2rS/D4zSRc/5xCPIyZAEca9yLyZaMHD?=
 =?iso-8859-1?Q?41DbEN7uCnyfrnTvVa0Y0R1qpp9995hLwYmHuz631wTfN+b3sAf52TLG1b?=
 =?iso-8859-1?Q?9nVrA3K1fG4G5FZ7pH0UrIov/XHMksr8TB4sMrLE+vFq/NhSMZNkvwjPXk?=
 =?iso-8859-1?Q?wGfUkVzdVk72wQGS4gQOEIxFieICmu6GCvwacVoKwKHe+YkQTWScgTns6P?=
 =?iso-8859-1?Q?3aFEP59BT1dYeMmTSqPAqkSAQOIjCFCg/V1XA/GLdD5BFciDkFXncZOTab?=
 =?iso-8859-1?Q?d29B3k0p0qCCOTo1IlwJqF/JOgRMj+1XuDJl/2OpCGDhD4q4xNAJpNG3TN?=
 =?iso-8859-1?Q?bZRP+6A/PGmYotmQd3F6vggbSB5hUgesBNDAAOwFaH59dHNz2nIWnQNrkH?=
 =?iso-8859-1?Q?lHWztkcUh16vY8XRSjeKRwMYbtgr3PzFTbJGQSM2a0JkeB2bz8kru7Wh36?=
 =?iso-8859-1?Q?gMYMOkcOUlUMNNAW7yg6AE80fYLwEpS1Nx3e/qE25pFy+TfQhJh6VTtjO5?=
 =?iso-8859-1?Q?oDj+toaBJwKVqfFkhBwc4gv8lr+VvEhQfkvRWJx1Wqrbmt94mfBcMiyA9I?=
 =?iso-8859-1?Q?7srM3cPYMlSvCYEMHNc7cYSpF8eK4w9OQ7nGmMMBtZFmmShBw4TbDbyu/s?=
 =?iso-8859-1?Q?b55phREaEu5/5qD46fWbpE4hwwpyLCGIg40YBqG/tzsc4mwVjnCGe1qFcI?=
 =?iso-8859-1?Q?kUCc1ika6ekM0HldbouXZY7W935wZd46xpRJshwXKvBtlT6Ai12wMGk1sU?=
 =?iso-8859-1?Q?95bnXBJyBSf71Pdi5/X3meRYSB3XPWiG3y56IF/XYJtgpujg18h4EcqQA7?=
 =?iso-8859-1?Q?Gl4ZtibQXNgz2PPKcHV+MF8jLKGyLCFmFJ0IMm3j3tEn4mWbuCTdabtWZx?=
 =?iso-8859-1?Q?rCmNBdtS23kgwQDJwLrOEjfs9ajsh3NVCcILZCI9oRK+C8utewiLiYPmhb?=
 =?iso-8859-1?Q?UVhl/5mT6sgADDTEtrdtdvcwTMVIwg+AMYoYkrakds8o28J7CnHH+/S6dl?=
 =?iso-8859-1?Q?BjDY387QCzMefegCfM7k99VASZbLemqqpHo1EsFVYPtVmAF+NHNe57jSyO?=
 =?iso-8859-1?Q?933+rVwaf3P04Ny6rPOCockJ2nhXDhHl3FERShUR7Jgenw5rIWrQuJdeWi?=
 =?iso-8859-1?Q?xlpvdba6yqcfUWaYa+2Nc9cPFBhxlBwPUovWc8pJvO+CR6kwfXgYTvTX16?=
 =?iso-8859-1?Q?HR6cZIDwWrRs2x9bNs3xlUzjechyjTxralR4NvKfzMpwpp0V5ME/M0x7hu?=
 =?iso-8859-1?Q?aN?=
x-ms-exchange-antispam-messagedata-1: srBaAyPMZn1z7FrAZKjwHPNF1UuI7EY0G4uvF21Ap0W0LOIamlnIJlo8
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVXPR06MB11003.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da75aad0-0126-40f6-fdcc-08df22a3d2d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2026 05:45:12.1846
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IJV7PzP+sEtzo0nZ3z9u9AEEx7s6D4DjtD57bkyFrSz2LR4yR642ILc8LQ1HHLbOaRxljuDus1z1Qv6UL/MP8wR9pBq9QoqN4/LZI5RiQ/FgCyMzCDIGgDVm2m6UaqvF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR06MB6506
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_224520_060083_76E03B84 
X-CRM114-Status: GOOD (  33.84  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hoi, > > > Hello Johannes, > > On 10/4/26 03:19, Johannes
   Schneider wrote: > > barebox's EFI loader verifies no signatures: efi_image_authenticate()
    > > accepts every image. Add efi_authenticode_verify() a [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [52.101.66.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.101.66.69 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[52.101.66.69:received];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5C5F22004BB
X-Stat-Signature: h37si6en3croynjuuq4rse8tc6stnnpm

Hoi,

>
>
> Hello Johannes,
>
> On 10/4/26 03:19, Johannes Schneider wrote:
> > barebox's EFI loader verifies no signatures: efi_image_authenticate()
> > accepts every image. Add efi_authenticode_verify() as the verifier for
> > signed EFI images: compute the Authenticode digest over the regions
> > efi_image_parse() collects, check it against the SpcIndirectDataContent
> > of the PKCS#7 signature, check the messageDigest attribute against the
> > digest of that content, and verify the signature over the attributes
> > with the keys of a barebox keyring. The following commits use it.
> >
> > barebox has no ASN.1 decoder: keys are converted from certificates at
> > build time, and FIT signatures carry none. The PKCS#7 structure is
> > walked as plain DER for the fields needed, with every length checked
> > against what remains; the certificates it carries are skipped.
> >
> > Supported are one signer, SHA-256 and RSA. As for FIT images, trust
> > comes from the keyring, not from X.509 chains or db/dbx.
>
> We should import mbedTLS and then make use of its PKCS#7 support.
> The goal being mbedTLS being updated regularly like we already do
> with dts/
>

thanks for the pointer! you picked up the one patch i was least confident a=
bout :-D

i (or we ;-) where contemplating importing the linux kernel code here ... b=
ut
that would have pulled in lots of other/related parts

-> taking a look at mbedTLS instead.... so expect a v2,
any other things that caught your eye and {c,s}hould be reworked?


gru=DF
Johannes



> Cheers,
> Ahmad
>
> >
> > Assisted-by: Claude:claude-opus-5-5
> > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.=
com>
> > ---
> >  efi/loader/Kconfig                |  16 ++
> >  efi/loader/Makefile               |   1 +
> >  efi/loader/authenticode.c         | 435 ++++++++++++++++++++++++++++++
> >  include/efi/loader/authenticode.h |   9 +
> >  4 files changed, 461 insertions(+)
> >  create mode 100644 efi/loader/authenticode.c
> >  create mode 100644 include/efi/loader/authenticode.h
> >
> > diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
> > index 5692e54ebe..4099da0689 100644
> > --- a/efi/loader/Kconfig
> > +++ b/efi/loader/Kconfig
> > @@ -24,6 +24,22 @@ config EFI_LOADER_DEBUG_SUPPORT
> >  config EFI_LOADER_SECURE_BOOT
> >       bool
> >
> > +config EFI_LOADER_AUTHENTICODE
> > +     bool "Verify Authenticode signatures of booted EFI images"
> > +     depends on CRYPTO_BUILTIN_KEYS && HAVE_DIGEST_SHA256
> > +     select CRYPTO_RSA
> > +     help
> > +       Verify the Authenticode (PKCS#7, SHA-256, RSA) signature of an =
EFI
> > +       image booted with bootm against the keys compiled into the "efi=
"
> > +       keyring (CONFIG_CRYPTO_PUBLIC_KEYS, keyring=3Defi). With signed=
 images
> > +       forced, an EFI image then boots only if one of those keys verif=
ies
> > +       it, the same way a FIT image must carry a valid signature.
> > +
> > +       X.509 certificates in the signature are not evaluated: trust is
> > +       anchored in the keyring. barebox does not report UEFI Secure Bo=
ot
> > +       to the payload, so a UKI keeps taking its command line from
> > +       barebox.
> > +
> >  menu "UEFI services"
> >
> >  config EFI_LOADER_GET_TIME
> > diff --git a/efi/loader/Makefile b/efi/loader/Makefile
> > index 24850e87b1..775014dc22 100644
> > --- a/efi/loader/Makefile
> > +++ b/efi/loader/Makefile
> > @@ -14,6 +14,7 @@ obj-y +=3D boot.o
> >  obj-y +=3D runtime.o
> >  obj-y +=3D setup.o
> >  obj-y +=3D watchdog.o
> > +obj-$(CONFIG_EFI_LOADER_AUTHENTICODE) +=3D authenticode.o
> >  obj-y +=3D loadopts.o
> >  obj-y +=3D efi_var_common.o
> >  obj-y +=3D efi_variable.o
> > diff --git a/efi/loader/authenticode.c b/efi/loader/authenticode.c
> > new file mode 100644
> > index 0000000000..36e5a46fc6
> > --- /dev/null
> > +++ b/efi/loader/authenticode.c
> > @@ -0,0 +1,435 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Authenticode verification of PE images against barebox built-in key=
s:
> > + * one signer, SHA-256 and RSA, the certificates in the signature are =
ignored
> > + */
> > +
> > +#define pr_fmt(fmt) "efi-loader: authenticode: " fmt
> > +
> > +#include <common.h>
> > +#include <digest.h>
> > +#include <crypto/sha.h>
> > +#include <malloc.h>
> > +#include <crypto/public_key.h>
> > +#include <efi/loader/pe.h>
> > +#include <efi/loader/authenticode.h>
> > +#include <efi/error.h>
> > +#include <pe.h>
> > +
> > +struct der {
> > +     const u8 *p;
> > +     const u8 *end;
> > +};
> > +
> > +struct der_elem {
> > +     u8 tag;
> > +     const u8 *start;        /* tag byte */
> > +     const u8 *val;
> > +     size_t len;
> > +     size_t total;           /* tag + length + value */
> > +};
> > +
> > +#define DER_INTEGER  0x02
> > +#define DER_OCTET    0x04
> > +#define DER_OID              0x06
> > +#define DER_SEQ              0x30
> > +#define DER_SET              0x31
> > +#define DER_CTX0     0xa0
> > +#define DER_CTX1     0xa1
> > +
> > +static const u8 oid_signed_data[] =3D { 0x2a, 0x86, 0x48, 0x86, 0xf7, =
0x0d, 0x01, 0x07, 0x02 };
> > +static const u8 oid_spc_indirect_data[] =3D {
> > +     0x2b, 0x06, 0x01, 0x04, 0x01, 0x82, 0x37, 0x02, 0x01, 0x04
> > +};
> > +static const u8 oid_sha256[] =3D { 0x60, 0x86, 0x48, 0x01, 0x65, 0x03,=
 0x04, 0x02, 0x01 };
> > +static const u8 oid_content_type[] =3D { 0x2a, 0x86, 0x48, 0x86, 0xf7,=
 0x0d, 0x01, 0x09, 0x03 };
> > +static const u8 oid_message_digest[] =3D { 0x2a, 0x86, 0x48, 0x86, 0xf=
7, 0x0d, 0x01, 0x09, 0x04 };
> > +
> > +static int der_next(struct der *d, struct der_elem *e)
> > +{
> > +     const u8 *p =3D d->p;
> > +     size_t len, n;
> > +
> > +     if (d->end - p < 2)
> > +             return -EBADMSG;
> > +
> > +     e->start =3D p;
> > +     e->tag =3D *p++;
> > +     if ((e->tag & 0x1f) =3D=3D 0x1f)
> > +             return -EBADMSG;
> > +
> > +     len =3D *p++;
> > +     if (len & 0x80) {
> > +             n =3D len & 0x7f;
> > +             if (!n || n > 4 || d->end - p < n)
> > +                     return -EBADMSG;
> > +             len =3D 0;
> > +             while (n--)
> > +                     len =3D (len << 8) | *p++;
> > +     }
> > +
> > +     if (d->end - p < len)
> > +             return -EBADMSG;
> > +
> > +     e->val =3D p;
> > +     e->len =3D len;
> > +     e->total =3D p + len - e->start;
> > +     d->p =3D p + len;
> > +
> > +     return 0;
> > +}
> > +
> > +static int der_expect(struct der *d, u8 tag, struct der_elem *e)
> > +{
> > +     int ret =3D der_next(d, e);
> > +
> > +     if (ret)
> > +             return ret;
> > +
> > +     return e->tag =3D=3D tag ? 0 : -EBADMSG;
> > +}
> > +
> > +static struct der der_enter(const struct der_elem *e)
> > +{
> > +     return (struct der) { .p =3D e->val, .end =3D e->val + e->len };
> > +}
> > +
> > +static bool der_oid_is(const struct der_elem *e, const u8 *oid, size_t=
 len)
> > +{
> > +     return e->tag =3D=3D DER_OID && e->len =3D=3D len && !memcmp(e->v=
al, oid, len);
> > +}
> > +
> > +/* AlgorithmIdentifier ::=3D SEQUENCE { OID, parameters OPTIONAL } */
> > +static int der_expect_sha256(struct der *d)
> > +{
> > +     struct der_elem seq, oid;
> > +     struct der in;
> > +     int ret;
> > +
> > +     ret =3D der_expect(d, DER_SEQ, &seq);
> > +     if (ret)
> > +             return ret;
> > +
> > +     in =3D der_enter(&seq);
> > +     ret =3D der_expect(&in, DER_OID, &oid);
> > +     if (ret)
> > +             return ret;
> > +
> > +     return der_oid_is(&oid, oid_sha256, sizeof(oid_sha256)) ? 0 : -EO=
PNOTSUPP;
> > +}
> > +
> > +struct authenticode {
> > +     const u8 *pe_digest;    /* SpcIndirectDataContent.messageDigest *=
/
> > +     const u8 *spc;          /* SpcIndirectDataContent content octets =
*/
> > +     size_t spc_len;
> > +     const u8 *attrs;        /* [0] IMPLICIT authenticatedAttributes *=
/
> > +     size_t attrs_len;
> > +     const u8 *attr_digest;  /* messageDigest attribute value */
> > +     bool attr_content_type_ok;
> > +     const u8 *sig;
> > +     size_t sig_len;
> > +};
> > +
> > +static int authenticode_parse_attrs(struct authenticode *a,
> > +                                 const struct der_elem *attrs)
> > +{
> > +     struct der in =3D der_enter(attrs);
> > +     struct der_elem attr, oid, set, val;
> > +     struct der ain, sin;
> > +     int ret;
> > +
> > +     while (in.p < in.end) {
> > +             ret =3D der_expect(&in, DER_SEQ, &attr);
> > +             if (ret)
> > +                     return ret;
> > +
> > +             ain =3D der_enter(&attr);
> > +             ret =3D der_expect(&ain, DER_OID, &oid);
> > +             if (ret)
> > +                     return ret;
> > +             ret =3D der_expect(&ain, DER_SET, &set);
> > +             if (ret)
> > +                     return ret;
> > +             sin =3D der_enter(&set);
> > +
> > +             if (der_oid_is(&oid, oid_message_digest, sizeof(oid_messa=
ge_digest))) {
> > +                     ret =3D der_expect(&sin, DER_OCTET, &val);
> > +                     if (ret || val.len !=3D SHA256_DIGEST_SIZE)
> > +                             return -EBADMSG;
> > +                     a->attr_digest =3D val.val;
> > +             } else if (der_oid_is(&oid, oid_content_type, sizeof(oid_=
content_type))) {
> > +                     ret =3D der_expect(&sin, DER_OID, &val);
> > +                     if (ret)
> > +                             return ret;
> > +                     a->attr_content_type_ok =3D
> > +                             der_oid_is(&val, oid_spc_indirect_data,
> > +                                        sizeof(oid_spc_indirect_data))=
;
> > +             }
> > +     }
> > +
> > +     return a->attr_digest ? 0 : -EBADMSG;
> > +}
> > +
> > +static int authenticode_parse(struct authenticode *a, const void *buf,=
 size_t len)
> > +{
> > +     struct der d =3D { .p =3D buf, .end =3D (const u8 *)buf + len };
> > +     struct der_elem e, ci, sd, spc, dinfo, si;
> > +     struct der in, sdin, ciin, spcin, dinin, siin;
> > +     int ret;
> > +
> > +     /* ContentInfo ::=3D SEQUENCE { contentType, [0] EXPLICIT content=
 } */
> > +     ret =3D der_expect(&d, DER_SEQ, &ci);
> > +     if (ret)
> > +             return ret;
> > +     in =3D der_enter(&ci);
> > +     ret =3D der_expect(&in, DER_OID, &e);
> > +     if (ret)
> > +             return ret;
> > +     if (!der_oid_is(&e, oid_signed_data, sizeof(oid_signed_data)))
> > +             return -EBADMSG;
> > +     ret =3D der_expect(&in, DER_CTX0, &e);
> > +     if (ret)
> > +             return ret;
> > +     in =3D der_enter(&e);
> > +
> > +     /* SignedData ::=3D SEQUENCE { version, digestAlgorithms, content=
Info, ... } */
> > +     ret =3D der_expect(&in, DER_SEQ, &sd);
> > +     if (ret)
> > +             return ret;
> > +     sdin =3D der_enter(&sd);
> > +     ret =3D der_expect(&sdin, DER_INTEGER, &e);
> > +     if (ret)
> > +             return ret;
> > +     ret =3D der_expect(&sdin, DER_SET, &e);
> > +     if (ret)
> > +             return ret;
> > +
> > +     /* contentInfo: SPC_INDIRECT_DATA carrying the PE image digest */
> > +     ret =3D der_expect(&sdin, DER_SEQ, &e);
> > +     if (ret)
> > +             return ret;
> > +     ciin =3D der_enter(&e);
> > +     ret =3D der_expect(&ciin, DER_OID, &e);
> > +     if (ret)
> > +             return ret;
> > +     if (!der_oid_is(&e, oid_spc_indirect_data, sizeof(oid_spc_indirec=
t_data)))
> > +             return -EBADMSG;
> > +     ret =3D der_expect(&ciin, DER_CTX0, &e);
> > +     if (ret)
> > +             return ret;
> > +     ciin =3D der_enter(&e);
> > +     ret =3D der_expect(&ciin, DER_SEQ, &spc);
> > +     if (ret)
> > +             return ret;
> > +     a->spc =3D spc.val;
> > +     a->spc_len =3D spc.len;
> > +
> > +     spcin =3D der_enter(&spc);
> > +     ret =3D der_expect(&spcin, DER_SEQ, &e);  /* SpcAttributeTypeAndO=
ptionalValue */
> > +     if (ret)
> > +             return ret;
> > +     ret =3D der_expect(&spcin, DER_SEQ, &dinfo);      /* DigestInfo *=
/
> > +     if (ret)
> > +             return ret;
> > +     dinin =3D der_enter(&dinfo);
> > +     ret =3D der_expect_sha256(&dinin);
> > +     if (ret)
> > +             return ret;
> > +     ret =3D der_expect(&dinin, DER_OCTET, &e);
> > +     if (ret || e.len !=3D SHA256_DIGEST_SIZE)
> > +             return -EBADMSG;
> > +     a->pe_digest =3D e.val;
> > +
> > +     /* skip optional certificates [0] and crls [1] */
> > +     do {
> > +             ret =3D der_next(&sdin, &e);
> > +             if (ret)
> > +                     return ret;
> > +     } while (e.tag =3D=3D DER_CTX0 || e.tag =3D=3D DER_CTX1);
> > +
> > +     if (e.tag !=3D DER_SET)
> > +             return -EBADMSG;
> > +
> > +     /* first SignerInfo only */
> > +     in =3D der_enter(&e);
> > +     ret =3D der_expect(&in, DER_SEQ, &si);
> > +     if (ret)
> > +             return ret;
> > +     siin =3D der_enter(&si);
> > +     ret =3D der_expect(&siin, DER_INTEGER, &e);
> > +     if (ret)
> > +             return ret;
> > +     ret =3D der_expect(&siin, DER_SEQ, &e);   /* issuerAndSerialNumbe=
r */
> > +     if (ret)
> > +             return ret;
> > +     ret =3D der_expect_sha256(&siin);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret =3D der_expect(&siin, DER_CTX0, &e);
> > +     if (ret)
> > +             return ret;
> > +     a->attrs =3D e.start;
> > +     a->attrs_len =3D e.total;
> > +     ret =3D authenticode_parse_attrs(a, &e);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret =3D der_expect(&siin, DER_SEQ, &e);   /* digestEncryptionAlgo=
rithm */
> > +     if (ret)
> > +             return ret;
> > +     ret =3D der_expect(&siin, DER_OCTET, &e);
> > +     if (ret)
> > +             return ret;
> > +     a->sig =3D e.val;
> > +     a->sig_len =3D e.len;
> > +
> > +     return 0;
> > +}
> > +
> > +static int sha256_regions(const struct efi_image_regions *regs, u8 *ou=
t)
> > +{
> > +     struct digest *d =3D digest_alloc_by_algo(HASH_ALGO_SHA256);
> > +     int i, ret;
> > +
> > +     if (!d)
> > +             return -EOPNOTSUPP;
> > +
> > +     ret =3D digest_init(d);
> > +     for (i =3D 0; !ret && i < regs->num; i++)
> > +             ret =3D digest_update(d, regs->reg[i].data, regs->reg[i].=
size);
> > +     if (!ret)
> > +             ret =3D digest_final(d, out);
> > +
> > +     digest_free(d);
> > +     return ret;
> > +}
> > +
> > +static int sha256_buf(const void *buf, size_t len, u8 *out)
> > +{
> > +     struct digest *d =3D digest_alloc_by_algo(HASH_ALGO_SHA256);
> > +     int ret;
> > +
> > +     if (!d)
> > +             return -EOPNOTSUPP;
> > +
> > +     ret =3D digest_digest(d, buf, len, out);
> > +     digest_free(d);
> > +     return ret;
> > +}
> > +
> > +/* The signature covers the attributes DER-encoded as SET OF, not as [=
0] */
> > +static int sha256_attrs(const struct authenticode *a, u8 *out)
> > +{
> > +     struct digest *d =3D digest_alloc_by_algo(HASH_ALGO_SHA256);
> > +     const u8 set_tag =3D DER_SET;
> > +     int ret;
> > +
> > +     if (!d)
> > +             return -EOPNOTSUPP;
> > +
> > +     ret =3D digest_init(d);
> > +     if (!ret)
> > +             ret =3D digest_update(d, &set_tag, 1);
> > +     if (!ret)
> > +             ret =3D digest_update(d, a->attrs + 1, a->attrs_len - 1);
> > +     if (!ret)
> > +             ret =3D digest_final(d, out);
> > +
> > +     digest_free(d);
> > +     return ret;
> > +}
> > +
> > +/**
> > + * efi_authenticode_verify() - verify a PE image's Authenticode signat=
ure
> > + * @efi:     PE image
> > + * @len:     exact size of the image, see efi_pe_file_size()
> > + * @keyring: barebox keyring holding the trusted keys
> > + *
> > + * Return: 0 if the image is signed by a key in @keyring, negative err=
or code
> > + * otherwise.
> > + */
> > +int efi_authenticode_verify(void *efi, size_t len, const char *keyring=
)
> > +{
> > +     struct efi_image_regions *regs =3D NULL;
> > +     const struct public_key *key;
> > +     struct authenticode a =3D {};
> > +     WIN_CERTIFICATE *wincert;
> > +     size_t auth_len;
> > +     u8 pe_hash[SHA256_DIGEST_SIZE], hash[SHA256_DIGEST_SIZE];
> > +     const struct keyring *kr;
> > +     int ret;
> > +
> > +     if (!efi_image_parse(efi, len, &regs, &wincert, &auth_len))
> > +             return -EBADMSG;
> > +
> > +     if (!wincert) {
> > +             pr_err("image is not signed\n");
> > +             ret =3D -ENOKEY;
> > +             goto out;
> > +     }
> > +
> > +     if (wincert->dwLength > auth_len || wincert->dwLength <=3D sizeof=
(*wincert) ||
> > +         wincert->wRevision !=3D WIN_CERT_REVISION_2_0 ||
> > +         wincert->wCertificateType !=3D WIN_CERT_TYPE_PKCS_SIGNED_DATA=
) {
> > +             pr_err("unsupported certificate table entry\n");
> > +             ret =3D -EBADMSG;
> > +             goto out;
> > +     }
> > +
> > +     ret =3D authenticode_parse(&a, wincert + 1, wincert->dwLength - s=
izeof(*wincert));
> > +     if (ret) {
> > +             pr_err("cannot parse signature: %pe\n", ERR_PTR(ret));
> > +             goto out;
> > +     }
> > +
> > +     if (!a.attr_content_type_ok) {
> > +             pr_err("signed content is not SpcIndirectDataContent\n");
> > +             ret =3D -EBADMSG;
> > +             goto out;
> > +     }
> > +
> > +     ret =3D sha256_regions(regs, pe_hash);
> > +     if (ret)
> > +             goto out;
> > +     if (memcmp(pe_hash, a.pe_digest, sizeof(pe_hash))) {
> > +             pr_err("image digest mismatch\n");
> > +             ret =3D -EBADMSG;
> > +             goto out;
> > +     }
> > +
> > +     ret =3D sha256_buf(a.spc, a.spc_len, hash);
> > +     if (ret)
> > +             goto out;
> > +     if (memcmp(hash, a.attr_digest, sizeof(hash))) {
> > +             pr_err("signed attributes do not match the content\n");
> > +             ret =3D -EBADMSG;
> > +             goto out;
> > +     }
> > +
> > +     ret =3D sha256_attrs(&a, hash);
> > +     if (ret)
> > +             goto out;
> > +
> > +     kr =3D keyring_find(keyring);
> > +     if (!kr) {
> > +             pr_err("keyring '%s' not registered\n", keyring);
> > +             ret =3D -ENOKEY;
> > +             goto out;
> > +     }
> > +
> > +     ret =3D -ENOKEY;
> > +     for_each_key_in_keyring(key, kr) {
> > +             if (!public_key_verify(key, a.sig, a.sig_len, hash, HASH_=
ALGO_SHA256)) {
> > +                     pr_info("verified with key '%s'\n", key->key_name=
_hint ?: "?");
> > +                     ret =3D 0;
> > +                     break;
> > +             }
> > +     }
> > +
> > +     if (ret)
> > +             pr_err("no key in keyring '%s' verifies the signature\n",=
 keyring);
> > +out:
> > +     free(regs);
> > +     return ret;
> > +}
> > diff --git a/include/efi/loader/authenticode.h b/include/efi/loader/aut=
henticode.h
> > new file mode 100644
> > index 0000000000..24c46ca7cf
> > --- /dev/null
> > +++ b/include/efi/loader/authenticode.h
> > @@ -0,0 +1,9 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +#ifndef __EFI_LOADER_AUTHENTICODE_H
> > +#define __EFI_LOADER_AUTHENTICODE_H
> > +
> > +#include <linux/types.h>
> > +
> > +int efi_authenticode_verify(void *efi, size_t len, const char *keyring=
);
> > +
> > +#endif
>
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>


