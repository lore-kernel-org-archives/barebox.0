Delivery-date: Sat, 04 Jul 2026 14:38:23 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzdX-000CAp-1W
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:38:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F004B2026D8
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:38:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2bybb5nZ;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b="rrEzo/dv";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kdTTlo3O2CU65zOD9QIjctTOt0kA3DjYS5ekL8foPFY=; b=2bybb5nZ/bNe4LCncYzngkgXuF
	LFJ4SjdVKGdj0W3/onvH7JxYhKGJBFRhfafbYDgrkeC6Qfujhj4QgGt9mr4f212Nyf5c0Da0Iu87/
	D1q9ap2WDPf+nIQ3crss7Ay6uVrWi4JwIFz28Cil1+bQkVo2RiwBQvCkrj77Eik4DKbiyZVVj0BOq
	VrMzIjEW+nGDacjNkzESYmxiNLyhvSqwJrbGGDjulQ3V3oduu2NsNMfS3wKwfWKn3JBRnXvuuAVTp
	Z8kzqWxbhbAruQlKnG9Rh+T+UUiZrNk50Aj0aJ7FQUiz5JbqUcqhrB+yqTlhp8/aTQ76R3EQDPvNg
	WjNo7aEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzd7-00000008RDW-1b2F;
	Sat, 04 Jul 2026 12:37:57 +0000
Received: from mail-northeuropeazon11012034.outbound.protection.outlook.com ([52.101.66.34] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzd5-00000008RD8-0U6d
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:37:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TTx5tCaCe72uz2QtfEoAoqHJywjSxOKl1uZYotvi0N+ei+5ObJ2K5VlTiwxBOYa+MO0YKyRkDVdQgi5ZsPqK0adMZqVRmyS8VgivhreDdkKm6YvNFMufsiWaFNFZ+kzyqBtTFwPHi8lcTfdqWeE0yMbSX5ObfLAw3P+4nufcHKz2EGcu+feZV+CzLwMqW6Gv835BnLO2ZwuaBnWnj05j5OCSgcckDPDauXIYNpvnd+zUzs9iMBxL0dlVMMDo2D+HEp+Q0yt7wgmQ/qqEb9IFKH3tq1gVrnyFZYfk+72MQqwi3FO8N4JPmbxb22fS22PA0fWteclEsKYeEIKl75OdAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kdTTlo3O2CU65zOD9QIjctTOt0kA3DjYS5ekL8foPFY=;
 b=ZjmpVd54wHy8hovdUbmRRmoEtdJL/srf29XulpsDwmA2RQxwPE8aKmqynERBclLvvr4clZiMYpsFu9iiDQwW0CUsU3XJuIEz4EalK/nHHsSAYcJH98TMQTJj+WCBr0XNnE8QuDdhtd/0YTVo7A467IAaJofjtpTrsDIc/je0oPFHSifIjlfDtnUHIewBnLqB5WEDGMvPsCLTC7TDdNr9iGfanTEH52si39L5r9GJYshPCMQlAJgLVIgcTNS0rVTWKXJDEvm+JovfaXl3GFQOYErv8+LiPHQvBli/sGLhqvLx8AjIz2r1YFLmYGUa1mZwrNdtt65SMBKZZqeFjU7ilQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kdTTlo3O2CU65zOD9QIjctTOt0kA3DjYS5ekL8foPFY=;
 b=rrEzo/dvqa5ys49m7m1dENTdzlCH+bS/eaQlCOPx5Eo53Hi2JFuQEfAvX4JLv+wVL4Muc76TRuDhgSQpxMgj8zDzCRc7DV7mWISqAVMa2QZrQ4ocVt/DOGtIxWcBGzXiXwIKdVU3g8tR2k+T4mRu8e/Qgn2+RuIoUqIH90hMOCQ=
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com (2603:10a6:208:6a::27)
 by PA1PR06MB9993.eurprd06.prod.outlook.com (2603:10a6:102:4ee::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Sat, 4 Jul
 2026 12:37:49 +0000
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc]) by AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc%4]) with mapi id 15.21.0181.010; Sat, 4 Jul 2026
 12:37:49 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Sascha Hauer <sascha@saschahauer.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Subject: Re: [PATCH] ARM: i.MX8M: enable MMU in PBL around fw-external BL32
 verify
Thread-Topic: [PATCH] ARM: i.MX8M: enable MMU in PBL around fw-external BL32
 verify
Thread-Index: AQHc/aGpxJ42UXPGIUu4nz5so1aACrZZ7yIAgAN4BBY=
Date: Sat, 4 Jul 2026 12:37:49 +0000
Message-ID: <AM0PR06MB4148CED25B27F40C6BE4C8DCBCF32@AM0PR06MB4148.eurprd06.prod.outlook.com>
References: <20260616144924.1614561-1-johannes.schneider@leica-geosystems.com>
 <E1wfBwF-003FZD-0x@saschahauer.de>
In-Reply-To: <E1wfBwF-003FZD-0x@saschahauer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB4148:EE_|PA1PR06MB9993:EE_
x-ms-office365-filtering-correlation-id: 43031fed-1eef-46c4-4f06-08ded9c90ec1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|23010399003|10070799003|1800799024|38070700021|56012099006|11063799006|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: Ss4Ifx2Nn02kJUSCKFgc+qtivft5XdpU/IGPWfHctCiK8R13TDg6GlVxJSSSOFggA2F2ffOLycqjWxvQSYFmBLH7WaOc38eIm+AdSE9fKIb0kBrI+u5Tj3aJ4QW/OdMapkid75YNzzMp7yOgF42nAx+wem1/qSEiJ6NOmmGvCXI0ydbM6gJZpo7jMeQF+uEhNQUCrpdaJMgrD9ElHIuukkkrFkpvCH+064x4LaxIk6jN+qZ3p/N80qQVcH+e2Oj6H1LPZqeFKxeRADAS6xoLE8KB/pGIJBQsVev3YvQQN/JFOyh2SjcpAHPOLUO1x3lh0Rn5kCUFvq7+E3Sewl0EnsUDW23OvkTJRsCjuFXhQFHiohq1CptfRblJqIJtEHJ1a1pcvQll2SzkOZ3MPTuZML5pqzaE4WpGRBc1otzlejkMek8PnjoQEo0lu5RjSgG3HkECjCNeCJenswrzS099E0OGDUN3AmdJ1e+Xk9T+lgqogyeB00ZMtMdIbuCiMrplc0cau/Sqc2yH4muWDH6oO7hHwIKmgaoPG+uVbZ6zIJAUAHHZCE2sq829B/xwOThNa7q1DJWQCi+xsvDJ1dGcXsmoj9weQa/BkKEhZGQHaWVIIxzfYXR9SoBEv7/et3CE/XKejHZe9k7g7d0U/2e8+LXp4E2WwWdEUGE1juDbrCgVg3asCDVVc/XeODONYPg1LFtC0AqOpFBmTSHI90dWwcO4yWIm10VJ8XXosDsa/ZM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB4148.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(23010399003)(10070799003)(1800799024)(38070700021)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?PCekV7FkvwMxueZVJHZit149VnhzMihdlaHT7qNSjpjcux6KrvOG1hCc6X?=
 =?iso-8859-1?Q?xVuijQfyaEsVAJsfFGaelJ98D/l04OvbBaVs6Ocl+uhwJF/7Bs7tqZhN54?=
 =?iso-8859-1?Q?FJUdrfulqNRr6beNsLlm+yGBDZ6Ug1qb7MUEC+EL8RSIN3Y7qQurpf9i/Q?=
 =?iso-8859-1?Q?JQ6eZfphQhrW6CNIn4wFrRydDVFRA8g79ylMviNYXT76OSrFqWILOlSDzu?=
 =?iso-8859-1?Q?jzUrMPDgD7X2D/9Gg+AO2v49WOnrzbHXtOBqRhGRzsolbjhnH9PZjSXj5s?=
 =?iso-8859-1?Q?yrx8gzpVb/tDFMzM2Ctp+CYIobdmfQuxXMdnqYHkIfgsGpgTHORYTmISk1?=
 =?iso-8859-1?Q?iREplqXDgcFck3vgXoatKDgJowEZrJXNLWOr/9Bf0rF8fT49VP2ZhrePjI?=
 =?iso-8859-1?Q?HRqz6tNBsGVpy0oi8ZajWLwYzmDquGSAwkn++wOp2epUq5Tc6WoWmw/7Vu?=
 =?iso-8859-1?Q?+Ja3byBzG5KUox5NmTkArK+exOjefxq7mDW41a+AaZQRd0MTrLl/0NUggY?=
 =?iso-8859-1?Q?2WRt6MQ22Dk0OohhHZRcF2UolmQvRKBCtqtIJNE0KmXC2dqAQZ0n2KluXe?=
 =?iso-8859-1?Q?k204Jv2KTuHuP5ugYsjfVhXbQ53OXkntsqA6t9718LkfCKtwVtbGuuBnQG?=
 =?iso-8859-1?Q?t/jeU7bV4kmcCLFrK10druisjmTPeArkBNmDh/i2TkBtGmpqakEwp4KIPi?=
 =?iso-8859-1?Q?1KwkEHQTT91bU3Q0Hrk29MO8ZHUUD1gPczpro4FxrLhBJ03hLsR5oZPst5?=
 =?iso-8859-1?Q?oJdHEh63NJYPeMqVuSmI5pRENJM/VIanL0njkmX1m3ucSjbptj2olRmo1e?=
 =?iso-8859-1?Q?Jieu/r0zaeyxmI7+IjpZXBMWaW6WbdAmRpR2coqSIaMsgW1YWnZCfJ6fEi?=
 =?iso-8859-1?Q?wsWfPNQIh86YgyLH7pb7gSXF9qg6gbthev72nAXzGTzEmUsm54HYDMUrtx?=
 =?iso-8859-1?Q?ex56WI2E1b4bNcEvN7jvQ75BZ6PwkiFnNZ3o5ZcYUrzcVm6DOVZo5mNnr5?=
 =?iso-8859-1?Q?jEtlq1e6x+kGTuOcVmSfhycAALLIuhEw4iiIImZc/c5o9B/t9/UY5GGFY8?=
 =?iso-8859-1?Q?hJ4PG9s2LAPHnmdl0K0Sz3Vj1o4e7Z4FwwV6ni1Ff2qDy2UjQyVCbHMNHX?=
 =?iso-8859-1?Q?62Vj2dsMmBo/0cp4TC02ODWsiY2yOGRuQyUMDb4bvYtMKsLGNzmAS4dPzU?=
 =?iso-8859-1?Q?Nba5oqYv+vnddNjl99GwSyGxoDhiPSdwHntKpVx4NFRbL0HFGcKmmtuOnH?=
 =?iso-8859-1?Q?0FUsX24C2JR64KXzBb0r8fX19UZeCncaVUgGiHlXxbfRC1siJUJdVish/f?=
 =?iso-8859-1?Q?8e+JfS08FeIxboUDJKEiOpTUuUPPEH06HfbH99S/RYhWcwbgkDuOn8e/eC?=
 =?iso-8859-1?Q?QC4tx/VlrrLBkvC2TL7GfRwrUYo86v9NR0o5UENEP64n8nrGtOAOMK9cVX?=
 =?iso-8859-1?Q?PJGSsQrj70NCua5FOdhWpFNh4drFJHjw4w6r2gOCUTp8GnrhzqYveSl1gj?=
 =?iso-8859-1?Q?V6UdbCLcYtur4EBbN8WTpOpPov6sSc7fSjumj5euRPe4F5YjgOZ3iTtdVM?=
 =?iso-8859-1?Q?1uixDug/Uk4uf54wnBXoAyKS7HXFVU+rKbmTPaGdei+AtLiC6HOMoTDSfi?=
 =?iso-8859-1?Q?nVoS2cKGmZt+9q5CizKEITkP+Rk555E294SDQsZrvf342hiiOVS8mBrfX2?=
 =?iso-8859-1?Q?cRP7HFINX3RTZf05Oc0/Mvt4856zwYeo83KkV7P8fdb8BwzgZehkjsHZQV?=
 =?iso-8859-1?Q?yFm0YKhyQrniZgUnPNDFJx17ceIt1jTfrCAQM1Z2ZXTlphLRpCCYwQHhjG?=
 =?iso-8859-1?Q?B76TTZuKkf6UTxyRapv56bawW9/6dOmrLrzkfMX1DysMQFwU5ERDKrosQ6?=
 =?iso-8859-1?Q?k/?=
x-ms-exchange-antispam-messagedata-1: Cz+JALz76I8rUx0xn6dyIHjh+X/HtjJU1JOukw9XcgsYjJke4IC5szNN
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB4148.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43031fed-1eef-46c4-4f06-08ded9c90ec1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2026 12:37:49.2004
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ObWLMNeaEfxiYJTs3PwTIa7O5AVG0BI8+fC0/iPonWMjRrqLGMBB+BCOznuGrLYn65VFg69+TgAcMEhzgkXxdZvq9Mw7KryXw0KNKiIyS4JPt7dqvggtl1FVNsThx6qv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR06MB9993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_053755_178474_D4C06C02 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hoi Sascha, > On 2026-06-16 14:49, Johannes Schneider wrote:
    > > The BL32 fw-external blob is loaded into DRAM by the PBL and then > >
    SHA-256-verified inside get_builtin_firmware_ext(). The verify runs > > in
    PB [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [52.101.66.34 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.101.66.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: F004B2026D8
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sascha@saschahauer.de,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[52.101.66.34:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: wsw8sshmn864xs59z7ju6x3bymgsr9g8

Hoi Sascha,=0A=
=0A=
=0A=
> On 2026-06-16 14:49, Johannes Schneider wrote:=0A=
> > The BL32 fw-external blob is loaded into DRAM by the PBL and then=0A=
> > SHA-256-verified inside get_builtin_firmware_ext(). The verify runs=0A=
> > in PBL phase 1 with the MMU off and D-cache cold, walking ~720 KiB=0A=
> > through uncached DRAM accesses; on a Cortex-A53 this costs around=0A=
> > 2 s of pre-BL31 wall-clock on every boot.=0A=
> >=0A=
> > The verify is the only thing anchoring the BL32 content to the=0A=
> > signed PBL: HABv4 on i.MX8M only signs and loads what fits in=0A=
> > on-chip SRAM (=3D the PBL), and BL31/BL32 reach DRAM via PBL-driven=0A=
> > copies, so skipping the SHA-256 would be a security regression.=0A=
> >=0A=
> > Turn on MMU + D-cache once the DRAM is populated and right before=0A=
> > the SHA-256 verify + BL31/BL32 memcpy run, and drop the MMU again=0A=
> > right before the BL31 entry (BL31 expects MMU off). Mirrors the=0A=
> > Rockchip handling in commits f2ae1a4a85 ("ARM: rockchip: atf:=0A=
> > enable MMU in PBL") and a0ef3a1b5c ("ARM: rockchip: atf: pass=0A=
> > correct memsize to mmu_early_enable()").=0A=
> >=0A=
> > Measured on i.MX8MM and i.MX8MP (Cortex-A53, ~720 KiB BL32 blob):=0A=
> > the BL32 verify drops from ~2 s to ~300 ms (generic-C SHA-256 in=0A=
> > both cases, the difference is the D-cache state) and the BL31=0A=
> > early-init also benefits from the warm cache (~200 ms saved).=0A=
> >=0A=
> > Assisted-by: Claude:claude-opus-4-7=0A=
> > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.=
com>=0A=
> > ---=0A=
> > --- a/arch/arm/mach-imx/atf.c=0A=
> > +++ b/arch/arm/mach-imx/atf.c=0A=
> > @@ -20,6 +20,7 @@=0A=
> >  #include <mach/imx/xload.h>=0A=
> >  #include <mach/imx/snvs.h>=0A=
> >  #include <pbl.h>=0A=
> > +#include <asm/mmu.h>=0A=
> >=0A=
> >  static void imx_adjust_optee_memory(void **bl32, void **bl32_image, si=
ze_t *bl32_size)=0A=
> >  {=0A=
> > @@ -187,6 +188,9 @@=0A=
> >                    "r" (tfa_dest - 16) :=0A=
> >                    "cc");=0A=
> >=0A=
> > +     /* BL31 expects MMU off. */=0A=
> > +     mmu_disable();=0A=
> > +=0A=
> >       /*=0A=
> >        * If enabled the bl_params are passed via x0 to the TF-A, except=
 for=0A=
> >        * the i.MX8MQ which doesn't support bl_params yet.=0A=
> > @@ -284,6 +288,12 @@=0A=
> >       imx8m_setup_snvs();=0A=
> >       imx8mm_load_bl33(bl33);=0A=
> >=0A=
> > +     /* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow.=
 */=0A=
> > +     mmu_early_enable(MX8M_DDR_CSD1_BASE_ADDR,=0A=
> > +                      imx8m_barebox_earlymem_size(32),=0A=
> > +                      MX8M_DDR_CSD1_BASE_ADDR +=0A=
> > +                      imx8m_barebox_earlymem_size(32) - OPTEE_SIZE);=
=0A=
> =0A=
> mmu_early_enable() only takes two arguments.=0A=
> =0A=
> Please add a new imx8m_mmu_early_enable() function usable for all i.MX8M =
to=0A=
> enable the MMU.=0A=
> =0A=
> We already have this snippet elsewhere:=0A=
> =0A=
>         endmem =3D MX8M_DDR_CSD1_BASE_ADDR;=0A=
>         if (cpu_is_mx8mn())=0A=
>                 endmem +=3D imx8m_barebox_earlymem_size(16);=0A=
>         else=0A=
>                 endmem +=3D imx8m_barebox_earlymem_size(32);=0A=
> =0A=
> Which could help implementing this function.=0A=
> =0A=
> Sascha=0A=
>=0A=
=0A=
Ok, done so and merged into one v2 patchset together with the PIO+MMU / SDM=
A chain=0A=
the new version of this patch is now this one:=0A=
https://lists.infradead.org/pipermail/barebox/2026-July/056905.html=0A=
=0A=
=0A=
gru=DF=0A=
Johannes=


