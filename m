Delivery-date: Sat, 04 Jul 2026 14:43:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfziN-000CIh-0o
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:43:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AD74B20269E
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:43:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ffdF3G1q;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=asBOoNye;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SwaSlUSR6xm5JGc+J3BawXqlVSYFd92yJ2C6dLAEeGw=; b=ffdF3G1qe7s12TlTZ9j1CxzYYA
	nWoXcqqo+ELRq+1Tfg0jAfmjEc+KWWC8tGgVQz16arlWcZOzZVeFdHj9LtADadRuj++c80LqJkr4N
	LDYiCmqOthRGHBtMFhNFFfeMtmtM++8BnGFA2o5aWxSuZ3OfUVg4jV5m6+rloIm184sDrHkd1qnqb
	wa9UqVmDDyKA/NwQvG9pufo0XkpWCnqkWTGYv861QUIvJNy2YhCY53cmF13Bso/mOEBS8t7U8Kfo0
	rpbWchzFjDOLE6Vc+ouHxnKGA2C3cyUZ1hkA1ZPlViXFJT6SBNdWkMQ0R1mXj0LdJXzFT5snSTXs1
	GtesUVWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzi0-00000008Reo-0iy4;
	Sat, 04 Jul 2026 12:43:00 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzhw-00000008ReC-3VO5
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:42:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nxa7Ha3q4lmZ5eNpoLn7S0nRXP6/ynV1+9wnzssXOo/ElQfkxFZcHwSQeZ3O72pw/D3VodHg03YzOO2VxJDQRKcugzD451tTabIiTGrDVWG1THd1Bz0NhORcz35ZUqJ/1Pnzhg2tOSJBDeI1MDebPI3AU6K9yDROEmV2A5XtHgop+620rpX8FW6eXuOdQZPHSuav6SvR72lZpcw5FY6wCywAupsHgo/UXRXIzFT2pzeSoacdKJIQuerISvqEMiOfA6GtkuDJxyH2cUdXCLJ1rGtRQ2VUCr+XcoTWSWy5R4eZwUD+5AKaaQDQZfK4sU/zgZsy7/OySvTbFH67TCsWcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SwaSlUSR6xm5JGc+J3BawXqlVSYFd92yJ2C6dLAEeGw=;
 b=du8pqebq3NAhpV53m7nNCds6w4Mm7Lfn+X0BosZfF5l5GQ5kVbziBUfU7L9kMzw7OuDzJEPiGWefJxbVkBP1IdWULnhMCJWUwLe156OiwDxT/4u5DQE5LGAaYNCDGY66A2p1Oc074+5xAxHtsGzSq5u3Gjz9O3c8qzFwN1+Ux6gQqI/CslLymWrwxClJI3BuaD3v73AOoEowMYSRmC+pUnpX0W2Ue5X00Me6zIFExRdoVZpChIrQlRktMn+FbPtQF33fR91YpQ8Sl84ZI0FLRXc2ry73GfDXd6vDOQziLkhul523mnligwKscDXbRDIq/jV6PkwiQD4ows71kDhRag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwaSlUSR6xm5JGc+J3BawXqlVSYFd92yJ2C6dLAEeGw=;
 b=asBOoNye2ZzhnighI7obD4rXlDuBtzHGqZboGNet/SEajeDi16WvKXeR3IpVgHD4svb1SocC/AZOWvIMD+rT+Mu39dx6joj/Jp0T4Q7N7RkAYP+8c8JeM/d3+UJBD9FTeC8bczFx4vGNDXuu9sPtNDHwNTOcL8W3V7q2wlGEoFA=
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com (2603:10a6:208:6a::27)
 by PA1PR06MB9993.eurprd06.prod.outlook.com (2603:10a6:102:4ee::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Sat, 4 Jul
 2026 12:42:53 +0000
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc]) by AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc%4]) with mapi id 15.21.0181.010; Sat, 4 Jul 2026
 12:42:52 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Subject: Re: [PATCH v1 7/7] mci: imx-esdhc: support DMA in the i.MX8M PBL eMMC
 loader
Thread-Topic: [PATCH v1 7/7] mci: imx-esdhc: support DMA in the i.MX8M PBL
 eMMC loader
Thread-Index: AQHdBm0+RQU00DZaokiwH+8pSt5Q4LZVjM6AgAFHyd6AAw6FgIADdI8d
Date: Sat, 4 Jul 2026 12:42:52 +0000
Message-ID: <AM0PR06MB4148D67A885F68D756C8BAA1BCF32@AM0PR06MB4148.eurprd06.prod.outlook.com>
References: <AM0PR06MB414843CC66B8E2F25AF4D460BCF72@AM0PR06MB4148.eurprd06.prod.outlook.com>
 <E1wfCFW-0000000DErn-04lH@pty.whiteo.stw.pengutronix.de>
In-Reply-To: <E1wfCFW-0000000DErn-04lH@pty.whiteo.stw.pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB4148:EE_|PA1PR06MB9993:EE_
x-ms-office365-filtering-correlation-id: 83fbcf65-5a71-4d8a-1d45-08ded9c9c3c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|23010399003|10070799003|1800799024|38070700021|56012099006|11063799006|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: A4NJKWCVqZm5dwixObkqIBNN06UlCCiKNzMwb8IkPbDOfXsSxO9A4Rtgg42t5x0PhjEZvqm9FFuwW5cdsYYZYzBRCYQQpjcx4CPWW2549JavmUfebNj5KXxtHoRZlXAKDrVZ1dXYbmzD6oCGEsQVw7rdEGLGg0OBY7eXfMqNYkLivLRkiQ99Pxk43kJg2gudm+qIqEcSAnYcba7ZjShKsTE/jbpALmyo5qQ3AKe8edl9D1VWhhtS0baozf2NHOcXECYM6BcbaJZU9bDd7ihmNKtxYGSnnrxDl+NulFbptKrdE8sy8IYokyZN2YrCcpMtdZSW8EaC3Nm9yyVaiasKVsF0HWsEGAqNs4H4OPRCzEwB3CW1JdqZVE5rvAaihZEkMDzTilEcDs9YoRDFimQ9pC59i0pVIq3SPQ8jnj+Ba3mEnggyBbq72JoX07/MeIc0oNfvOsqmx324GNXSs0SipGbgcSKb8f+tquekwXQOnXqsEl39Ejmy4UreOLz7T8GBIsPc6UZSK24M+EQpGyN8dxhejVWhx66KSotY0Ta+4t9XafC/BUh8sDH6H2hHGEXKG0lWNHBWGsDyfupMV66RY0qMr0XVCOpkPbKABoB4tgZ4wMeIAztAXBgmBfKvCaZS6Yw2NFKAufnTOZxuIFWPCp7zekXDT6DzQYqM9SQea89P/mU+0SmHVsBGJqpaedeIdIJdzkGpUehsvRw9NaUkgeRdOr4Aox4dzMyITrihpEs=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB4148.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(23010399003)(10070799003)(1800799024)(38070700021)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?1UuIR+uKp+YnBybZ81QWZCthuLV2mG2uJJq5OW7hmY+CP/GjfKT2n3ZnCx?=
 =?iso-8859-1?Q?0Zkp1vUBCQhr9gpQNIbTbcPoZxVrTbfpKGQdvrgbWu1vrN2fst9asjaJhu?=
 =?iso-8859-1?Q?aXQvZ6R+cYiyz8cyU0YDb0DsJzuql0fEMn8SnWhm06qWBeBeXMl0rwqx8N?=
 =?iso-8859-1?Q?sEeQQIM0TtDCqvVrT9m9NB1oOKNAwcJd6Ru/uw/+9YwNFI+bIvJV4T4mmk?=
 =?iso-8859-1?Q?bpU/6jVdoJDSBA+w+fC/T5EGZU+NJDpu68jN/F8jwV9wyt+9usOiR5CmRG?=
 =?iso-8859-1?Q?kXBTzrK4RFm6z0XYWHgGJFZ5TgH6MvrVK/Zhx/3+pSWgYhARO1votzwN7W?=
 =?iso-8859-1?Q?EshB5i+J9eQ7xPCUBe60anfVlJl1lbQ9vAz8XtT2autLyZKBAVIoZsOb2u?=
 =?iso-8859-1?Q?D7stU0x2pIKQvwifSETrZNRW22L2i9xFYCQfyak/USDaUnOQGxMTHNZ7oY?=
 =?iso-8859-1?Q?Bni7QyBuNrDU4aAKU2ysARLNZDWyhxiY5jixKCxNNm+n3Wncnqax7mFTpV?=
 =?iso-8859-1?Q?u7ebnTkgnYBzKGr4IwyWEU3w4BYcJHYkhEHl57UAOTYhkrmaMrVfce+LGk?=
 =?iso-8859-1?Q?pwDnT178dwMh26CRXp4MkHHBQ6X988cJdGQYQbsS+vrkPxgm9a+31hRTeY?=
 =?iso-8859-1?Q?rHhzRSLEYUUe8nZjwluqF1tXGN4HfqvHQQr7U498gXuEYGtfsMXStTolTx?=
 =?iso-8859-1?Q?QO7sujYjEf//qJHkjFH3qs2Mwvz45Uxa5kMMZZkyx1tz3i2eK43NjR0qX1?=
 =?iso-8859-1?Q?tICvtT14HXum8D7U0xYbWx5mmdoL8cunG52vUJZx2o010QKrzxdyU+gjYt?=
 =?iso-8859-1?Q?u5G4+v9mIEa0tJfDBipGwv38cg+PTnJ0h5SPaqFI+L80YG2dDsnJW08vBv?=
 =?iso-8859-1?Q?TCXuVIaGa/836/sBADGpO8ey7c1bqvLSEJDWlUaStqjExW/PD2+I63+vhl?=
 =?iso-8859-1?Q?sCeBUI+D8HA/mlj37w9eBJRWCWm6aSV86+Kz6yb+dhwloVdQ8pt+bvmKWl?=
 =?iso-8859-1?Q?4WNENXQZTbvQGdn4LTj14DqTCRjHXcaaMDDVPoZS/3dQ3+rr9hJ2YumnmW?=
 =?iso-8859-1?Q?D/JobX2QfvsVy4pQzTdC2txnkJn9pXvmUsMtmU8DBcm+Yf9SBYOKGvwDSi?=
 =?iso-8859-1?Q?Yd15DrWkD31tfpAxXwmBOXEGWDLwkuzaNuUMhIYvpxvZr70FCrqZQLqMDP?=
 =?iso-8859-1?Q?Ytg0o1pdQ9p0Tf56x/c+qU/X/Bc9O8w1tl2SOnwApnIary3MEBIbXe+nxn?=
 =?iso-8859-1?Q?G9aZafLoX75DMTEHTBFazai/VKAXmzvLkxTNXx2EDMbdDHryMV5otEpCgK?=
 =?iso-8859-1?Q?oPzMhnY1mFSZe/8qy5UaQXDVNpCMMHT2ZvSfIyIuIDMWJT7O0TQ4qLBY03?=
 =?iso-8859-1?Q?oBFytTPdn7a7jqKyxqTyy7HkSKLPn+NezLdOCaFWRWY5CEXAzilUzQSIDJ?=
 =?iso-8859-1?Q?ZZg+DQKE8Q13U33TP5EN4N1KswlpAGlU4zJBu0FXeCE9BoxmtKd3O0QdpY?=
 =?iso-8859-1?Q?rclg5kft/QdJiCXJvZqNdLT/p4Zt+LmFXpK51DzjJezmF6NL8/wSp1U9lU?=
 =?iso-8859-1?Q?wDE5hPBTpBc5M+N8P1YPeILimHE5/0xlqA2yiN7UkojHRsP24KWs1Tm8ZK?=
 =?iso-8859-1?Q?rEBEtxIdcWJxSpvU2Pyhwb0EZ3zm9YCbx015ew0ZVOs1W0TUmTVcT06dZV?=
 =?iso-8859-1?Q?LKScuB0M1J/ujVy12atSXh7UTDj8U/sffwZrDMXuI6zQK7cNcZnTrCyR4y?=
 =?iso-8859-1?Q?rbohNP1C5cUyGzus8WwzyC4zmqGl5ehif5v6J/8YGcFwtRGZurh1US5yxj?=
 =?iso-8859-1?Q?cAADbrjhMQkAgY5V/mkjCOnwoGdTh7Z6dm3TmZaQFA5nLN2FbkR0g1/3y6?=
 =?iso-8859-1?Q?LR?=
x-ms-exchange-antispam-messagedata-1: R1SHOaefsvAldZ0TPnlG9kr6ACM3Ukkra2O0LZZdlCOOYUBxjr7lb7Mj
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB4148.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83fbcf65-5a71-4d8a-1d45-08ded9c9c3c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2026 12:42:52.9039
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i7yL2vuEY3YdCxIvO3wedPFWHPFppKBtwdQls07n4lZYzOwGvNq6BeO6ep7mgbKz3KW5pSuwGb+chXL3gENvNm40kcLR4MqQF5u/26IDQ3v7QUwgOqsXYa8ZNaKFwaOV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR06MB9993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_054256_882260_9AC0CF7B 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hoi Sascha, > > > > > On 2026-06-27 19:43, Johannes Schneider
    wrote: > > > > The PBL eMMC loader was hardwired to PIO via esdhc_use_pio_mode():
    IN_PBL > > > > forced PIO unconditionally. PIO is slow -- on an i.MX [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c200:0:0:0:1 listed in]
                             [list.dnswl.org]
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
X-Rspamd-Queue-Id: AD74B20269E
X-Spamd-Result: default: False [-7.90 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c200::1:received];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: jfqwgfiihzgoy6mcf1o37bbkkh8wp64x

Hoi Sascha,=0A=
=0A=
=0A=
> >=0A=
> > > On 2026-06-27 19:43, Johannes Schneider wrote:=0A=
> > > > The PBL eMMC loader was hardwired to PIO via esdhc_use_pio_mode(): =
IN_PBL=0A=
> > > > forced PIO unconditionally. PIO is slow -- on an i.MX8MM board load=
ing the=0A=
> > > > ~1.6 MB next stage took ~559 ms; SDMA/ADMA2 do it in ~21 ms.=0A=
> > >=0A=
> > > For proper DMA support you'll need memory synchronization in form of =
dma_map_*=0A=
> > > or dma_sync_* helpers which we do not have in PBL. Without them it wo=
n't=0A=
> > > work with MMU enabled.=0A=
> >=0A=
> > Noted. So since the MMU is still left as it is =3D off were still good =
wtih the=0A=
> > current sdma/adma implementation. But maybe worth a comment in the code=
/commit?=0A=
> >=0A=
> > > Have you tried enabling the MMU in the mean time? This=0A=
> > > should give you decent performance even with PIO.=0A=
> > >=0A=
> > > Sascha=0A=
> > >=0A=
> >=0A=
> > Thanks for the hint/idea!=0A=
> > I've let the AI draft a PIO+MMU-on change and ran a round of measuremen=
ts,=0A=
> > (Caveat: sample size is one) there is some gain - but we get more with =
SDMA or ADMA=0A=
> > And interestingly "the same" with the later two.:=0A=
> >=0A=
> >  Phase                  PIO   PIO+MMU   SDMA   ADMA2=0A=
> > --------------------------------------------------------------------=0A=
> >  BootROM                  1       1       1        2=0A=
> >  PBL-init                 3       3       3        3=0A=
> >  DDR-training           265     265     262      269=0A=
> >  PBL-load (total)       884     413     257      258=0A=
> >    PBL-pre-load         165     170     166      167=0A=
> >    load_bl33            713     241      86       85=0A=
> >    PBL-post-load          5       1       5        5=0A=
> >  BL31-early             114     114     114      114=0A=
> >  BL31-platform           16      15      15       15=0A=
> >  BL31-runtime            98      98      98       98=0A=
> > --------------------------------------------------------------------=0A=
> >  time-to-barebox       1393     921     763      770=0A=
> >=0A=
> >=0A=
> > If you want i can brush up that PIO+MMU code and send it out too.=0A=
> =0A=
> Let's concentrate on the MMU stuff first as that's something you want to=
=0A=
> have anyway for faster sha256 support.=0A=
> =0A=
> Sascha=0A=
> =0A=
=0A=
Ok, i've sent out a v2 with the "MMU first", and sorted it in a way that yo=
u can=0A=
"cut here" if you want to pick up only the first part before the SDMA/ADMA=
=0A=
=0A=
The combined series his here:=0A=
https://lists.infradead.org/pipermail/barebox/2026-July/056903.html=0A=
=0A=
gru=DF=0A=
Johannes=


