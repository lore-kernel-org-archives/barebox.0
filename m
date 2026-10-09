Delivery-date: Fri, 09 Oct 2026 02:08:56 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEyAR-00BVjE-01
	for lore@lore.pengutronix.de;
	Fri, 09 Oct 2026 02:08:55 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 13569202342
	for <lore@pengutronix.de>; Fri, 09 Oct 2026 02:08:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=R7zd7wvU;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=i+HGlyZM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791504530; a=rsa-sha256;
	cv=pass;
	b=G46AnzJksdew/pNfHLg326vu2q0n1scroTocXC1S/yoyjQHtr8icOTAYZev8afRBUy+2Ey
	6X2pyEBY7QNKTouan2QQfWLgOb22WrHUqs0IvBZZq8NuyLpDcNieId/VZ+CMZH4sWaqHMH
	KqDgDeaJf5A6BEm13ooXBtkf04+K4EmMKHWC5neCQIRNsTSCplnm6XIN1j0WucjtQa5qkV
	09K7gBAQk8hFwggmGHI3yQXfSuaLDkUqssSh2P/0K838b4AnRwpFsDuMSmhglji7NiEElh
	pbB5FXMsdSBxXe1lg8vcRuFCPHximFpHynCCeUT9FjhSIiy9MRVlVkFHJ74j6w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=R7zd7wvU;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=i+HGlyZM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791504530;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Ww69rl+7Ut6xazOvL1giTNlYbsBWwR9TpTy8eH7rEGU=;
	b=VBAwNR0Ra+QgRIu6uW/Kis73CsuvTHtJbJFBlIOr086OmUXsuWGkvVkyP4gHZHBLkaRU0/
	n+fehEhl5AFx027ajOLpVtZVouIai5Tu+NmrGyDGshTOFX61Bl4kxSeo/tA82uamTnUnm4
	2Ot930xjRJO4GgUotAMswCT0ndhR+NIOAehbh9/kMrKWHXQkLYvA44zhyK/7EfTfWcqyAH
	3Vb/2HEzZvbDVLTWB5C5jxHFX9eQv99XQNlWJOZ5JV+MCF7ivCcp+qwuUPCJG6pJmnaYD3
	WWYBWjL6RDSnkKEq7Vg8/eS4tD2LtVN7f+C3NYykVuTHEYfj5Egpo8r1jRHS3w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ww69rl+7Ut6xazOvL1giTNlYbsBWwR9TpTy8eH7rEGU=; b=R7zd7wvUSju6fosrCiJ0CeczJc
	JSf1Duf+tYPHzPWpQfm0Fp+j49zo7KlWNcZUUJz+uX3AryUTrCouVxFa0mpaulFnmQMDsw+NIiXYB
	2DDDuopk6rxlCsy5bWgqJuNpyM4Ut6I6tL9GOUPlyozdx9fMB1gD/PpVO5xJ5jyEj/xPM5SyQaOe5
	pmpvMpmdehzkW+51VlViT3lNbfg00cyuOV3ORRpK7oxOrZVmyyS3UbWAOCQ/J2MK47alzO0OUu70i
	bDWCKHb47bVttCR1OR7fzC81NGikID3+XwXxpcHOyTWoU4L6Ok7GTDI7IYk8LMsXPFxeTzbgrQZLr
	a78/hvTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEy8p-00000005BGE-31gx;
	Fri, 09 Oct 2026 00:07:15 +0000
Received: from mail-westeuropeazon11013013.outbound.protection.outlook.com ([52.101.72.13] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEy8m-00000005BFq-0nU2
	for barebox@lists.infradead.org;
	Fri, 09 Oct 2026 00:07:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oUK/JmxQkMaWPzvGPqUXQ+DObbZkxC+gvYNjCFxRex+MYL4ZP7H9Yt3OVOFy86O6N3esZs5Qdh6hHiDyEpHg3dCXhPx2svt4YTQl0GAkQPXFMDEk5FOJUTy5m7RZxcYBiNZMmIYoSRuS5PyxDud1bPyPGc2f2ZDSPd4nU/yzUmFBHQ6UMdDvcE+VkjhEBNWXfwrEsphJtP/Zp4zI3IQNKtjK5/WoAiQVMCDly8TiBKO70uhnxjOGYARQo942PCzrxONCDxWlv5eQzZB5KLdGKE+xKt0ZYD73QdAxp7JU+mwbyWLW6vs7+2TZTkd3GoD1bG1QtMon7Mxc8WaMGWsvaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ww69rl+7Ut6xazOvL1giTNlYbsBWwR9TpTy8eH7rEGU=;
 b=LFo9d9UoFFTY5LSGfqqrTmiCq/63KqETAYD+JrNB5UBiZDi1Vsr+pAnBz4yhG3CRkZ664b3DPfmf7JAD9oG8IqAbNkisKD0HtKzgj4P++xGjRpoNRMUe3nkewpXKROJnQUfdYJfit+5LJvh2M6bVbVkFhg6KeVU7b/6MKgo/+oL94Ap94Z1y8wOZdGSix+D/hNRF84LqYSSgK1UMA8SS6nFtySQU0GO2UyxtnoHkEo5oPrwVL69deUvB1gT83bDC0PivzJs12iEZTrCngxEcMWOKiwzcn+ORWd6TfncONeNUa4+ZH+1A1yI7reo1vIbxeuxoHi0/SrFJjLCA+YT++A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ww69rl+7Ut6xazOvL1giTNlYbsBWwR9TpTy8eH7rEGU=;
 b=i+HGlyZMWCy0hij/YLj8Z85TPW1RukCeP86F+aBNY8Ap9sNQ4ioC8b8AnLIANfIKYdlpQOB9Ib+ztkkY/8qu2Uz4zcrxQTC3ZP+uzn1ZlE5YKbO+4ksJc1MkXAqRoalh4j7HFifRgx10tkKoge55BzqxBTWV/vY1D83cEQUOABU=
Received: from GVXPR06MB11003.eurprd06.prod.outlook.com
 (2603:10a6:150:31b::22) by DBAPR06MB6902.eurprd06.prod.outlook.com
 (2603:10a6:10:1af::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.16; Fri, 9 Oct
 2026 00:07:06 +0000
Received: from GVXPR06MB11003.eurprd06.prod.outlook.com
 ([fe80::441e:1079:fafd:23cc]) by GVXPR06MB11003.eurprd06.prod.outlook.com
 ([fe80::441e:1079:fafd:23cc%7]) with mapi id 15.21.0496.010; Fri, 9 Oct 2026
 00:07:06 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
CC: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v1 08/14] efi: loader: verify Authenticode signatures
 against built-in keys
Thread-Topic: [PATCH v1 08/14] efi: loader: verify Authenticode signatures
 against built-in keys
Thread-Index: AQHdU55/LhdHHdyFmkCpy8cgOLmeELbubuaAgAAB3tqABecxcQ==
Date: Fri, 9 Oct 2026 00:07:06 +0000
Message-ID: <GVXPR06MB11003E4721599BE54F1278DDFBC932@GVXPR06MB11003.eurprd06.prod.outlook.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
 <20261004011958.3255011-9-johannes.schneider@leica-geosystems.com>
 <753fb66f-fe0c-453b-8508-a8ab85d44d90@pengutronix.de>
 <GVXPR06MB1100354BC97448B00F0E57E1BBC962@GVXPR06MB11003.eurprd06.prod.outlook.com>
In-Reply-To: <GVXPR06MB1100354BC97448B00F0E57E1BBC962@GVXPR06MB11003.eurprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVXPR06MB11003:EE_|DBAPR06MB6902:EE_
x-ms-office365-filtering-correlation-id: 79aa1566-715a-4906-3c06-08df25994129
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|10070799003|376014|366016|1800799024|18002099003|22082099003|4133799003|3023799007|4143699003|10067099003|11063799006|260925022911599003|260925021311599003|38070700021|260925021911599003|56012099006;
x-microsoft-antispam-message-info: 8oYrZHoj0+jcIofAtYx5U21fj6PbkuRKhU+JV+k1KlTq8GdnFRPe/Kuad8Qg3qPifLhPSilk3/RfNMfg+e6dWN8xbpQJa2JxNeFQ4sk4Sh4JpWzAOBwUOqPAe9tsKsnuXdnvCUBiG1EL45yFOGD/l+QGEmC6+mUxVMwVjaUvKL501V8od9ddj6XMI20drLjFNZD5kYCxNvvjpQ1aTVB/5t+G0XUFWu7Xe7424lObyubb9P97D0pxpJFbDX9vAs4dZJfUXcHKK+FyTfpIWgZg49bCZPfNeRqIAVAPBEAXsGojUvE9+Oc5kNpT2kBOJj1catIrn+yI6VUgnrT6dufO6mvYOE14ZmvWlrITbKRpLyq33Ax/LRoKoXy5W23z24Ove7373F94Io++C50RN7n8Jd7Qnx2S403MOmxDL62jZbCWbMttfI/1yYQ3sizuFMhuMwY810ImEDXMmycCea4zs7zrdFmLkmsWAcDKhXbkQDa9azNjG4yKYPlysXG9dXzH7HEgGYguGx0RfB5ibt4oTbpXJvvip4p3UYKmIdPXczV0qHzgWLGJAIxAcEaePb60kTkNsGKT4sOmIrPk2KwtMt1javnDv4I2A0TbI35gyv/QSVRrsJ5XkkwlEtHbteiNHTynAHNHvKjn/GpLFN/WyD1rv5Phq3k3aa0l1rRP3xg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR06MB11003.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(10070799003)(376014)(366016)(1800799024)(18002099003)(22082099003)(4133799003)(3023799007)(4143699003)(10067099003)(11063799006)(260925022911599003)(260925021311599003)(38070700021)(260925021911599003)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?rOLeO0GFKdxEXKp3+dpPIZGJ3NTosI8eNYCJqKVoqqp7+y2muJrSiWVcNO?=
 =?iso-8859-1?Q?9YVxkRymYo9/HLeRCcbiYz6DH0InLBWJFEnR1rDalbMIyKJfDaj0u6Mo7d?=
 =?iso-8859-1?Q?rKoZ6J52QbM5PwyiRaU227Gs8i0ZEk4y9ZQbhuVhB41r98h+kR4kU2ycUi?=
 =?iso-8859-1?Q?o/Xg7y0UH86MxDI8bErhwdQMZwamSIU6V+jsRD2Cchhx9nYOAV3haai+uz?=
 =?iso-8859-1?Q?8vhUDnfeUWeW0dpQVBz16BFaSMGzBASZDN/icUyq6/lHua9kVc1dpo7tE9?=
 =?iso-8859-1?Q?JYHg5oXiIopUfPTY48sAr/tuuRzwwPnBYTS6VH/w5XSQOxRYhn1xxtD6Ti?=
 =?iso-8859-1?Q?iYQfcyru/uMQqNkHS8W4xkzOQYzxKr/bxzjCiDh+QuQkF4wiCMinCD7X+g?=
 =?iso-8859-1?Q?2pypzmMlTkurAyQP88Zv/Fn6hdWv9rkN2+EY1lnD34fWS3jtYSIw9L3dtX?=
 =?iso-8859-1?Q?RxjG9xnYTMq+atC/tXXaNe1qDmXQ8KzAY5GPXHgQdqUcOJkYIGycP5dSVM?=
 =?iso-8859-1?Q?iAs2lKaX6sixMx0qdiqaRp5j9f0/oYVy3mHau/9gJ6PFRAh9bGpSd6HQBg?=
 =?iso-8859-1?Q?DPGHBe/TCP+7vMczWtExsdpVs/kXC8J+EEpIl3U8ZlY2mvfW/bPdk7w9Eg?=
 =?iso-8859-1?Q?LwsO7NslQDQBAcyszI/cPIAh2P4x5FpuFmpddGRuPq2CxLhd71Q+RY6e+5?=
 =?iso-8859-1?Q?dUTOY7LmvNJBmROSZXjA7KpXzdEmPThhbKKz/O0Asq/pKhok2JOelGqAMA?=
 =?iso-8859-1?Q?qLMlGIRnS9hqcvsxAXEf+SaeE9EgDPSgN8gHpA0rId4UyopA5wP4UrcIpd?=
 =?iso-8859-1?Q?Nb+eBFSfHWJPuYBwOsidh0WscGA7IvirIABiCzKFM0DGMvnyAsAa3OCu4C?=
 =?iso-8859-1?Q?ktJcz53ERWHrT8TyGH3eJd7fbN0rwLUzoYjwlxW+7ZGRCmU/OfaRgGmKxa?=
 =?iso-8859-1?Q?5GJP3d8ikM/QKQQaNTGPAO+VVv25qXzBBkjJCtFMLX+YCNhG8PqYH4Bpyd?=
 =?iso-8859-1?Q?yDYbo9J+umG3dG6wl22bVZXIIfi4TJq2SEh5NAmUg4xpMlq5Njch7JNMIX?=
 =?iso-8859-1?Q?xRhyS5CAPsKU1PU6pHK6CX4Hb4tuOfds9FLygbzzTHh8Nr6CLVdOUsqIGI?=
 =?iso-8859-1?Q?5mL9znMjI330eRWB2Y1FBHZrt563xqh+CVqsxbGgIOelGCB18UiIOkqwId?=
 =?iso-8859-1?Q?pvNSjm3F8fumf+G1v5DqBctK1prGPKZGs+XX6i5Cq3bn3X0oBPRLH4BIHA?=
 =?iso-8859-1?Q?tB0U7V7RvkmxxBz9CawbzhWDxgEJseLe4k4MS5TeOUMY3l2dh5ipO3JSrB?=
 =?iso-8859-1?Q?KDPtF3/mWseoTJ3PUbpM0B9aFbP3b6UR7Pf0tn2Jq47ofcgqHc6Ef35vL0?=
 =?iso-8859-1?Q?wQ4yD/zYBRyhn+HiL+/NL5bLrfNQ7rcworh7yVaMfPb3rSz1uzY5ax+Jfe?=
 =?iso-8859-1?Q?2xELvGwfX1HX7J/J236aNRtAV5y2f072XRVbMbCvKktwo951QNuaIRVzij?=
 =?iso-8859-1?Q?6t81uzV3CQduz1dOhNbPTo32aGfBQQZ7ki4b0MvhjNS05QpRuY1E8Ocnmy?=
 =?iso-8859-1?Q?1J97U+plJmYwrEgiRgm0imddCUQCptSgCrfd9BvKx4A0hdnJX4aS72/anR?=
 =?iso-8859-1?Q?CSPCQsqKojA8mgk4Amk3EwCes5zBW+nOLpw6+JpSfmxejUNfZpHcjx6EoA?=
 =?iso-8859-1?Q?0QQzM7w0KCplMRC5Fv5u0DAntOU54xNXEs92CRPpcv26fYA1qIt5lWiG3U?=
 =?iso-8859-1?Q?Pz+EWgeVdNycnP4FV5+iz8+yPXsd84GH5OaIJvCOra+bNEFhCBu+eFMDzz?=
 =?iso-8859-1?Q?ssXzJcSwdisddzxP6RSl43Uj5I5fMZoY8feWx0/GI3ufTBKHEF9rwNQAH6?=
 =?iso-8859-1?Q?ks?=
x-ms-exchange-antispam-messagedata-1: TbAH4jtVBWrM1FZSRsNisv7IFzHa8Qt14ML2hb/sQo8g0MfSKwVnlC3B
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVXPR06MB11003.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79aa1566-715a-4906-3c06-08df25994129
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2026 00:07:06.3056
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TOIrkKAZApbBo0Zpbtw9c201MKdIVQ701T4LjZO6cJQ8UTavAC3TblCcMiaH4ESyCBidIIYB6WjFIUitJMixPiMdE1QKSnwzlY8ZKJxkzJKgalfyjSQRWrPcBGPmtR8Y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR06MB6902
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_170712_461936_CD2C3C66 
X-CRM114-Status: GOOD (  35.55  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hoi Ahmad, > > > > Hello Johannes, > > > > On 10/4/26 03:19,
    Johannes Schneider wrote: > > > barebox's EFI loader verifies no signatures:
    efi_image_authenticate() > > > accepts every image. Add efi_authenticode_
    [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [52.101.72.13 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.101.72.13 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
	RCVD_IN_DNSWL_NONE(0.00)[52.101.72.13:received];
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
X-Rspamd-Queue-Id: 13569202342
X-Stat-Signature: i9izmnzzgyso8ni5imsqfbc7bfbojbmh

Hoi Ahmad,


> >
> > Hello Johannes,
> >
> > On 10/4/26 03:19, Johannes Schneider wrote:
> > > barebox's EFI loader verifies no signatures: efi_image_authenticate()
> > > accepts every image. Add efi_authenticode_verify() as the verifier fo=
r
> > > signed EFI images: compute the Authenticode digest over the regions
> > > efi_image_parse() collects, check it against the SpcIndirectDataConte=
nt
> > > of the PKCS#7 signature, check the messageDigest attribute against th=
e
> > > digest of that content, and verify the signature over the attributes
> > > with the keys of a barebox keyring. The following commits use it.
> > >
> > > barebox has no ASN.1 decoder: keys are converted from certificates at
> > > build time, and FIT signatures carry none. The PKCS#7 structure is
> > > walked as plain DER for the fields needed, with every length checked
> > > against what remains; the certificates it carries are skipped.
> > >
> > > Supported are one signer, SHA-256 and RSA. As for FIT images, trust
> > > comes from the keyring, not from X.509 chains or db/dbx.
> >
> > We should import mbedTLS and then make use of its PKCS#7 support.
> > The goal being mbedTLS being updated regularly like we already do
> > with dts/
> >
>
> thanks for the pointer! you picked up the one patch i was least confident=
 about :-D
>
> i (or we ;-) where contemplating importing the linux kernel code here ...=
 but
> that would have pulled in lots of other/related parts
>
> -> taking a look at mbedTLS instead.... so expect a v2,
> any other things that caught your eye and {c,s}hould be reworked?
>

u-boot also imports mbetls - but:
1 has an older 3.6.0 version :-(
see: u-boot/lib/mbedtls/external/mbedtls/include/mbedtls/build_info.h
2 has patches ontop, to get the needed authenticode support
which is still a PR into upstream mbedtls: #9001 [1]

I would propose importing mbedtls first, then porting over the
pkcs7/authenticode patches, and afterward reworking/resuming this
=3D> so three separate, but order dependent patch-series - would that be OK=
?

about actually importing mbedtls into barebox: shall this go over the
mailinglist - which will be rather large patch series - or are there
alternate routes open for you maintainers?


gru=DF
Johannes


Link: https://github.com/Mbed-TLS/mbedtls/pull/9001

>
>
>
> > Cheers,
> > Ahmad
> >
> > >
> > > Assisted-by: Claude:claude-opus-5-5
> > > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystem=
s.com>
> > > ---
> > >  efi/loader/Kconfig                |  16 ++
> > >  efi/loader/Makefile               |   1 +
> > >  efi/loader/authenticode.c         | 435 ++++++++++++++++++++++++++++=
++
> > >  include/efi/loader/authenticode.h |   9 +
> > >  4 files changed, 461 insertions(+)
> > >  create mode 100644 efi/loader/authenticode.c
> > >  create mode 100644 include/efi/loader/authenticode.h
> > >
> > > diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
> > > index 5692e54ebe..4099da0689 100644
> > > --- a/efi/loader/Kconfig
> > > +++ b/efi/loader/Kconfig
> > > @@ -24,6 +24,22 @@ config EFI_LOADER_DEBUG_SUPPORT
> > >  config EFI_LOADER_SECURE_BOOT
> > >       bool
> > >
> > > +config EFI_LOADER_AUTHENTICODE
> > > +     bool "Verify Authenticode signatures of booted EFI images"
> > > +     depends on CRYPTO_BUILTIN_KEYS && HAVE_DIGEST_SHA256
> > > +     select CRYPTO_RSA
> > > +     help
> > > +       Verify the Authenticode (PKCS#7, SHA-256, RSA) signature of a=
n EFI
> > > +       image booted with bootm against the keys compiled into the "e=
fi"
> > > +       keyring (CONFIG_CRYPTO_PUBLIC_KEYS, keyring=3Defi). With sign=
ed images
> > > +       forced, an EFI image then boots only if one of those keys ver=
ifies
> > > +       it, the same way a FIT image must carry a valid signature.
> > > +
> > > +       X.509 certificates in the signature are not evaluated: trust =
is
> > > +       anchored in the keyring. barebox does not report UEFI Secure =
Boot
> > > +       to the payload, so a UKI keeps taking its command line from
> > > +       barebox.
> > > +
> > >  menu "UEFI services"
> > >
> > >  config EFI_LOADER_GET_TIME
> > > diff --git a/efi/loader/Makefile b/efi/loader/Makefile
> > > index 24850e87b1..775014dc22 100644
> > > --- a/efi/loader/Makefile
> > > +++ b/efi/loader/Makefile
> > > @@ -14,6 +14,7 @@ obj-y +=3D boot.o
> > >  obj-y +=3D runtime.o
> > >  obj-y +=3D setup.o
> > >  obj-y +=3D watchdog.o
> > > +obj-$(CONFIG_EFI_LOADER_AUTHENTICODE) +=3D authenticode.o
> > >  obj-y +=3D loadopts.o
> > >  obj-y +=3D efi_var_common.o
> > >  obj-y +=3D efi_variable.o
> > > diff --git a/efi/loader/authenticode.c b/efi/loader/authenticode.c
> > > new file mode 100644
> > > index 0000000000..36e5a46fc6
> > > --- /dev/null
> > > +++ b/efi/loader/authenticode.c
> > > @@ -0,0 +1,435 @@
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > > +/*
> > > + * Authenticode verification of PE images against barebox built-in k=
eys:
> > > + * one signer, SHA-256 and RSA, the certificates in the signature ar=
e ignored
> > > + */
> > > +
> > > +#define pr_fmt(fmt) "efi-loader: authenticode: " fmt
> > > +
> > > +#include <common.h>
> > > +#include <digest.h>
> > > +#include <crypto/sha.h>
> > > +#include <malloc.h>
> > > +#include <crypto/public_key.h>
> > > +#include <efi/loader/pe.h>
> > > +#include <efi/loader/authenticode.h>
> > > +#include <efi/error.h>
> > > +#include <pe.h>
> > > +
> > > +struct der {
> > > +     const u8 *p;
> > > +     const u8 *end;
> > > +};
> > > +
> > > +struct der_elem {
> > > +     u8 tag;
> > > +     const u8 *start;        /* tag byte */
> > > +     const u8 *val;
> > > +     size_t len;
> > > +     size_t total;           /* tag + length + value */
> > > +};
> > > +
> > > +#define DER_INTEGER  0x02
> > > +#define DER_OCTET    0x04
> > > +#define DER_OID              0x06
> > > +#define DER_SEQ              0x30
> > > +#define DER_SET              0x31
> > > +#define DER_CTX0     0xa0
> > > +#define DER_CTX1     0xa1
> > > +
> > > +static const u8 oid_signed_data[] =3D { 0x2a, 0x86, 0x48, 0x86, 0xf7=
, 0x0d, 0x01, 0x07, 0x02 };
> > > +static const u8 oid_spc_indirect_data[] =3D {
> > > +     0x2b, 0x06, 0x01, 0x04, 0x01, 0x82, 0x37, 0x02, 0x01, 0x04
> > > +};
> > > +static const u8 oid_sha256[] =3D { 0x60, 0x86, 0x48, 0x01, 0x65, 0x0=
3, 0x04, 0x02, 0x01 };
> > > +static const u8 oid_content_type[] =3D { 0x2a, 0x86, 0x48, 0x86, 0xf=
7, 0x0d, 0x01, 0x09, 0x03 };
> > > +static const u8 oid_message_digest[] =3D { 0x2a, 0x86, 0x48, 0x86, 0=
xf7, 0x0d, 0x01, 0x09, 0x04 };
> > > +
> > > +static int der_next(struct der *d, struct der_elem *e)
> > > +{
> > > +     const u8 *p =3D d->p;
> > > +     size_t len, n;
> > > +
> > > +     if (d->end - p < 2)
> > > +             return -EBADMSG;
> > > +
> > > +     e->start =3D p;
> > > +     e->tag =3D *p++;
> > > +     if ((e->tag & 0x1f) =3D=3D 0x1f)
> > > +             return -EBADMSG;
> > > +
> > > +     len =3D *p++;
> > > +     if (len & 0x80) {
> > > +             n =3D len & 0x7f;
> > > +             if (!n || n > 4 || d->end - p < n)
> > > +                     return -EBADMSG;
> > > +             len =3D 0;
> > > +             while (n--)
> > > +                     len =3D (len << 8) | *p++;
> > > +     }
> > > +
> > > +     if (d->end - p < len)
> > > +             return -EBADMSG;
> > > +
> > > +     e->val =3D p;
> > > +     e->len =3D len;
> > > +     e->total =3D p + len - e->start;
> > > +     d->p =3D p + len;
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static int der_expect(struct der *d, u8 tag, struct der_elem *e)
> > > +{
> > > +     int ret =3D der_next(d, e);
> > > +
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     return e->tag =3D=3D tag ? 0 : -EBADMSG;
> > > +}
> > > +
> > > +static struct der der_enter(const struct der_elem *e)
> > > +{
> > > +     return (struct der) { .p =3D e->val, .end =3D e->val + e->len }=
;
> > > +}
> > > +
> > > +static bool der_oid_is(const struct der_elem *e, const u8 *oid, size=
_t len)
> > > +{
> > > +     return e->tag =3D=3D DER_OID && e->len =3D=3D len && !memcmp(e-=
>val, oid, len);
> > > +}
> > > +
> > > +/* AlgorithmIdentifier ::=3D SEQUENCE { OID, parameters OPTIONAL } *=
/
> > > +static int der_expect_sha256(struct der *d)
> > > +{
> > > +     struct der_elem seq, oid;
> > > +     struct der in;
> > > +     int ret;
> > > +
> > > +     ret =3D der_expect(d, DER_SEQ, &seq);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     in =3D der_enter(&seq);
> > > +     ret =3D der_expect(&in, DER_OID, &oid);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     return der_oid_is(&oid, oid_sha256, sizeof(oid_sha256)) ? 0 : -=
EOPNOTSUPP;
> > > +}
> > > +
> > > +struct authenticode {
> > > +     const u8 *pe_digest;    /* SpcIndirectDataContent.messageDigest=
 */
> > > +     const u8 *spc;          /* SpcIndirectDataContent content octet=
s */
> > > +     size_t spc_len;
> > > +     const u8 *attrs;        /* [0] IMPLICIT authenticatedAttributes=
 */
> > > +     size_t attrs_len;
> > > +     const u8 *attr_digest;  /* messageDigest attribute value */
> > > +     bool attr_content_type_ok;
> > > +     const u8 *sig;
> > > +     size_t sig_len;
> > > +};
> > > +
> > > +static int authenticode_parse_attrs(struct authenticode *a,
> > > +                                 const struct der_elem *attrs)
> > > +{
> > > +     struct der in =3D der_enter(attrs);
> > > +     struct der_elem attr, oid, set, val;
> > > +     struct der ain, sin;
> > > +     int ret;
> > > +
> > > +     while (in.p < in.end) {
> > > +             ret =3D der_expect(&in, DER_SEQ, &attr);
> > > +             if (ret)
> > > +                     return ret;
> > > +
> > > +             ain =3D der_enter(&attr);
> > > +             ret =3D der_expect(&ain, DER_OID, &oid);
> > > +             if (ret)
> > > +                     return ret;
> > > +             ret =3D der_expect(&ain, DER_SET, &set);
> > > +             if (ret)
> > > +                     return ret;
> > > +             sin =3D der_enter(&set);
> > > +
> > > +             if (der_oid_is(&oid, oid_message_digest, sizeof(oid_mes=
sage_digest))) {
> > > +                     ret =3D der_expect(&sin, DER_OCTET, &val);
> > > +                     if (ret || val.len !=3D SHA256_DIGEST_SIZE)
> > > +                             return -EBADMSG;
> > > +                     a->attr_digest =3D val.val;
> > > +             } else if (der_oid_is(&oid, oid_content_type, sizeof(oi=
d_content_type))) {
> > > +                     ret =3D der_expect(&sin, DER_OID, &val);
> > > +                     if (ret)
> > > +                             return ret;
> > > +                     a->attr_content_type_ok =3D
> > > +                             der_oid_is(&val, oid_spc_indirect_data,
> > > +                                        sizeof(oid_spc_indirect_data=
));
> > > +             }
> > > +     }
> > > +
> > > +     return a->attr_digest ? 0 : -EBADMSG;
> > > +}
> > > +
> > > +static int authenticode_parse(struct authenticode *a, const void *bu=
f, size_t len)
> > > +{
> > > +     struct der d =3D { .p =3D buf, .end =3D (const u8 *)buf + len }=
;
> > > +     struct der_elem e, ci, sd, spc, dinfo, si;
> > > +     struct der in, sdin, ciin, spcin, dinin, siin;
> > > +     int ret;
> > > +
> > > +     /* ContentInfo ::=3D SEQUENCE { contentType, [0] EXPLICIT conte=
nt } */
> > > +     ret =3D der_expect(&d, DER_SEQ, &ci);
> > > +     if (ret)
> > > +             return ret;
> > > +     in =3D der_enter(&ci);
> > > +     ret =3D der_expect(&in, DER_OID, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +     if (!der_oid_is(&e, oid_signed_data, sizeof(oid_signed_data)))
> > > +             return -EBADMSG;
> > > +     ret =3D der_expect(&in, DER_CTX0, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +     in =3D der_enter(&e);
> > > +
> > > +     /* SignedData ::=3D SEQUENCE { version, digestAlgorithms, conte=
ntInfo, ... } */
> > > +     ret =3D der_expect(&in, DER_SEQ, &sd);
> > > +     if (ret)
> > > +             return ret;
> > > +     sdin =3D der_enter(&sd);
> > > +     ret =3D der_expect(&sdin, DER_INTEGER, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +     ret =3D der_expect(&sdin, DER_SET, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     /* contentInfo: SPC_INDIRECT_DATA carrying the PE image digest =
*/
> > > +     ret =3D der_expect(&sdin, DER_SEQ, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +     ciin =3D der_enter(&e);
> > > +     ret =3D der_expect(&ciin, DER_OID, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +     if (!der_oid_is(&e, oid_spc_indirect_data, sizeof(oid_spc_indir=
ect_data)))
> > > +             return -EBADMSG;
> > > +     ret =3D der_expect(&ciin, DER_CTX0, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +     ciin =3D der_enter(&e);
> > > +     ret =3D der_expect(&ciin, DER_SEQ, &spc);
> > > +     if (ret)
> > > +             return ret;
> > > +     a->spc =3D spc.val;
> > > +     a->spc_len =3D spc.len;
> > > +
> > > +     spcin =3D der_enter(&spc);
> > > +     ret =3D der_expect(&spcin, DER_SEQ, &e);  /* SpcAttributeTypeAn=
dOptionalValue */
> > > +     if (ret)
> > > +             return ret;
> > > +     ret =3D der_expect(&spcin, DER_SEQ, &dinfo);      /* DigestInfo=
 */
> > > +     if (ret)
> > > +             return ret;
> > > +     dinin =3D der_enter(&dinfo);
> > > +     ret =3D der_expect_sha256(&dinin);
> > > +     if (ret)
> > > +             return ret;
> > > +     ret =3D der_expect(&dinin, DER_OCTET, &e);
> > > +     if (ret || e.len !=3D SHA256_DIGEST_SIZE)
> > > +             return -EBADMSG;
> > > +     a->pe_digest =3D e.val;
> > > +
> > > +     /* skip optional certificates [0] and crls [1] */
> > > +     do {
> > > +             ret =3D der_next(&sdin, &e);
> > > +             if (ret)
> > > +                     return ret;
> > > +     } while (e.tag =3D=3D DER_CTX0 || e.tag =3D=3D DER_CTX1);
> > > +
> > > +     if (e.tag !=3D DER_SET)
> > > +             return -EBADMSG;
> > > +
> > > +     /* first SignerInfo only */
> > > +     in =3D der_enter(&e);
> > > +     ret =3D der_expect(&in, DER_SEQ, &si);
> > > +     if (ret)
> > > +             return ret;
> > > +     siin =3D der_enter(&si);
> > > +     ret =3D der_expect(&siin, DER_INTEGER, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +     ret =3D der_expect(&siin, DER_SEQ, &e);   /* issuerAndSerialNum=
ber */
> > > +     if (ret)
> > > +             return ret;
> > > +     ret =3D der_expect_sha256(&siin);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     ret =3D der_expect(&siin, DER_CTX0, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +     a->attrs =3D e.start;
> > > +     a->attrs_len =3D e.total;
> > > +     ret =3D authenticode_parse_attrs(a, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     ret =3D der_expect(&siin, DER_SEQ, &e);   /* digestEncryptionAl=
gorithm */
> > > +     if (ret)
> > > +             return ret;
> > > +     ret =3D der_expect(&siin, DER_OCTET, &e);
> > > +     if (ret)
> > > +             return ret;
> > > +     a->sig =3D e.val;
> > > +     a->sig_len =3D e.len;
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static int sha256_regions(const struct efi_image_regions *regs, u8 *=
out)
> > > +{
> > > +     struct digest *d =3D digest_alloc_by_algo(HASH_ALGO_SHA256);
> > > +     int i, ret;
> > > +
> > > +     if (!d)
> > > +             return -EOPNOTSUPP;
> > > +
> > > +     ret =3D digest_init(d);
> > > +     for (i =3D 0; !ret && i < regs->num; i++)
> > > +             ret =3D digest_update(d, regs->reg[i].data, regs->reg[i=
].size);
> > > +     if (!ret)
> > > +             ret =3D digest_final(d, out);
> > > +
> > > +     digest_free(d);
> > > +     return ret;
> > > +}
> > > +
> > > +static int sha256_buf(const void *buf, size_t len, u8 *out)
> > > +{
> > > +     struct digest *d =3D digest_alloc_by_algo(HASH_ALGO_SHA256);
> > > +     int ret;
> > > +
> > > +     if (!d)
> > > +             return -EOPNOTSUPP;
> > > +
> > > +     ret =3D digest_digest(d, buf, len, out);
> > > +     digest_free(d);
> > > +     return ret;
> > > +}
> > > +
> > > +/* The signature covers the attributes DER-encoded as SET OF, not as=
 [0] */
> > > +static int sha256_attrs(const struct authenticode *a, u8 *out)
> > > +{
> > > +     struct digest *d =3D digest_alloc_by_algo(HASH_ALGO_SHA256);
> > > +     const u8 set_tag =3D DER_SET;
> > > +     int ret;
> > > +
> > > +     if (!d)
> > > +             return -EOPNOTSUPP;
> > > +
> > > +     ret =3D digest_init(d);
> > > +     if (!ret)
> > > +             ret =3D digest_update(d, &set_tag, 1);
> > > +     if (!ret)
> > > +             ret =3D digest_update(d, a->attrs + 1, a->attrs_len - 1=
);
> > > +     if (!ret)
> > > +             ret =3D digest_final(d, out);
> > > +
> > > +     digest_free(d);
> > > +     return ret;
> > > +}
> > > +
> > > +/**
> > > + * efi_authenticode_verify() - verify a PE image's Authenticode sign=
ature
> > > + * @efi:     PE image
> > > + * @len:     exact size of the image, see efi_pe_file_size()
> > > + * @keyring: barebox keyring holding the trusted keys
> > > + *
> > > + * Return: 0 if the image is signed by a key in @keyring, negative e=
rror code
> > > + * otherwise.
> > > + */
> > > +int efi_authenticode_verify(void *efi, size_t len, const char *keyri=
ng)
> > > +{
> > > +     struct efi_image_regions *regs =3D NULL;
> > > +     const struct public_key *key;
> > > +     struct authenticode a =3D {};
> > > +     WIN_CERTIFICATE *wincert;
> > > +     size_t auth_len;
> > > +     u8 pe_hash[SHA256_DIGEST_SIZE], hash[SHA256_DIGEST_SIZE];
> > > +     const struct keyring *kr;
> > > +     int ret;
> > > +
> > > +     if (!efi_image_parse(efi, len, &regs, &wincert, &auth_len))
> > > +             return -EBADMSG;
> > > +
> > > +     if (!wincert) {
> > > +             pr_err("image is not signed\n");
> > > +             ret =3D -ENOKEY;
> > > +             goto out;
> > > +     }
> > > +
> > > +     if (wincert->dwLength > auth_len || wincert->dwLength <=3D size=
of(*wincert) ||
> > > +         wincert->wRevision !=3D WIN_CERT_REVISION_2_0 ||
> > > +         wincert->wCertificateType !=3D WIN_CERT_TYPE_PKCS_SIGNED_DA=
TA) {
> > > +             pr_err("unsupported certificate table entry\n");
> > > +             ret =3D -EBADMSG;
> > > +             goto out;
> > > +     }
> > > +
> > > +     ret =3D authenticode_parse(&a, wincert + 1, wincert->dwLength -=
 sizeof(*wincert));
> > > +     if (ret) {
> > > +             pr_err("cannot parse signature: %pe\n", ERR_PTR(ret));
> > > +             goto out;
> > > +     }
> > > +
> > > +     if (!a.attr_content_type_ok) {
> > > +             pr_err("signed content is not SpcIndirectDataContent\n"=
);
> > > +             ret =3D -EBADMSG;
> > > +             goto out;
> > > +     }
> > > +
> > > +     ret =3D sha256_regions(regs, pe_hash);
> > > +     if (ret)
> > > +             goto out;
> > > +     if (memcmp(pe_hash, a.pe_digest, sizeof(pe_hash))) {
> > > +             pr_err("image digest mismatch\n");
> > > +             ret =3D -EBADMSG;
> > > +             goto out;
> > > +     }
> > > +
> > > +     ret =3D sha256_buf(a.spc, a.spc_len, hash);
> > > +     if (ret)
> > > +             goto out;
> > > +     if (memcmp(hash, a.attr_digest, sizeof(hash))) {
> > > +             pr_err("signed attributes do not match the content\n");
> > > +             ret =3D -EBADMSG;
> > > +             goto out;
> > > +     }
> > > +
> > > +     ret =3D sha256_attrs(&a, hash);
> > > +     if (ret)
> > > +             goto out;
> > > +
> > > +     kr =3D keyring_find(keyring);
> > > +     if (!kr) {
> > > +             pr_err("keyring '%s' not registered\n", keyring);
> > > +             ret =3D -ENOKEY;
> > > +             goto out;
> > > +     }
> > > +
> > > +     ret =3D -ENOKEY;
> > > +     for_each_key_in_keyring(key, kr) {
> > > +             if (!public_key_verify(key, a.sig, a.sig_len, hash, HAS=
H_ALGO_SHA256)) {
> > > +                     pr_info("verified with key '%s'\n", key->key_na=
me_hint ?: "?");
> > > +                     ret =3D 0;
> > > +                     break;
> > > +             }
> > > +     }
> > > +
> > > +     if (ret)
> > > +             pr_err("no key in keyring '%s' verifies the signature\n=
", keyring);
> > > +out:
> > > +     free(regs);
> > > +     return ret;
> > > +}
> > > diff --git a/include/efi/loader/authenticode.h b/include/efi/loader/a=
uthenticode.h
> > > new file mode 100644
> > > index 0000000000..24c46ca7cf
> > > --- /dev/null
> > > +++ b/include/efi/loader/authenticode.h
> > > @@ -0,0 +1,9 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > +#ifndef __EFI_LOADER_AUTHENTICODE_H
> > > +#define __EFI_LOADER_AUTHENTICODE_H
> > > +
> > > +#include <linux/types.h>
> > > +
> > > +int efi_authenticode_verify(void *efi, size_t len, const char *keyri=
ng);
> > > +
> > > +#endif
> >
> >
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/=
  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
> >
>


