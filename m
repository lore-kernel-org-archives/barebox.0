Delivery-date: Fri, 06 Feb 2026 15:08:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voMVN-009VVw-1G
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 15:08:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voMVL-0006iq-V1
	for lore@pengutronix.de; Fri, 06 Feb 2026 15:08:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AVWtAoxWLsmSyKywnIDwgrX29noVKvBJSafLHynSLMw=; b=CLPIyzPTCYYoF45173RZFvoYTJ
	0b/NOhfH/NVp0YjNpB7eGilThMxY4YVIGDMPF13dJrUbritISDfIESrHzGWgUR4geTgB4mdt1g6Sc
	2tlkBofx9YPmftYtz2LOo4LntZfRqQdHCbgTAQDgau14jBZUMssSZTUuZf+5nbDTCcDRH7JgzgUrQ
	ixQ9F13Y/XOcKyhxZJXMGCWue/wYR8m8DZ2f26bMpPq4x/XscwZdqIAGf2QySBjn4ldQeZJt+6uNZ
	pnXGx10/e0oLzCLYkLz8VYb0mSax7bhkjnJc8vXnI/SADzfpSVhZfXqB6LNfh+fLFSvpnrNe7wuht
	psKbv3wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voMUf-0000000BPij-0dlo;
	Fri, 06 Feb 2026 14:07:33 +0000
Received: from mail-francecentralazon11013020.outbound.protection.outlook.com ([40.107.162.20] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voMUa-0000000BPhx-1ez4
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 14:07:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=irDCcISlqbOMVPexKpxbcj2P+kE6ZcV/VJMDsCPy9+cJ/G1xJ67m7MNDq4k/KC24kozxa+bZVwEwJj8x1ZzdWRN1HW9nVsWHNq+2qfM4zvFHoKKPaI6d1/jFFURpCO3qZKJ0jIUowiFy02TA+tx61WaGVw3Y5GYVasE55anTegQezVNZ+ZAH7VmjXySd7iIB2KCDd9SgsFPuUzSaakc8iJcERMfiHh4uYIa9soLbALfhc4t2nbYmxvkTWVgAV7HhkbNNSIn/qg73IorFO5iwO1LSeZC7W7W5yeJoz+SLsmJWOR0OOxBzroFeGp5KBsuM3l3qVN3phOcSf4XiwZDhaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AVWtAoxWLsmSyKywnIDwgrX29noVKvBJSafLHynSLMw=;
 b=aHOQCaJnpDekFLjOsfkC1I/S8Ek8F9JMaVoxB+i0Rhf03bD1ZO7aZaiXErWzWcdoeL77gytlqozcPvti+BovH/gay/Zemxs4T9fxLtj+dzYDAK3VUBApqBOlSn7JFFypU6OF8rg2Q2QR2tLWpbAG/74mQh1mOi/xsY3RGswqssZOSScDy7yq3CV9BIdnncMy0Yw2zrcAJPwdths0EFf5fVudxlndsgD8hQEm5UxOBD/we1+a9q7C980M1OlQ9WoCud/cTmE1ErytlHwbpmY76ijdNkZ4QUZG9g8IsYQi85TC4UsLNT3DNBEvo67Kijid9VbE0CUDB4+6PrfokcvliA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AVWtAoxWLsmSyKywnIDwgrX29noVKvBJSafLHynSLMw=;
 b=N/KpI4htzRG5jsjMWoTWP73ckaCvoBIMZ3CEbYvGUzeKwpM+DXKfqOfXpBoudSRAQk1UYqJUErXfN2n+PqdFdTZ5MveUTSqgtDvALxG3KtjTMPz9VB6uS1iFoEL/PxA2Ac6hpZPC8gUA3/4egy08ESzkKm2OgGGckbEjRh9YrHA=
Received: from AM0PR06MB6323.eurprd06.prod.outlook.com (2603:10a6:208:174::32)
 by AM9PR06MB8268.eurprd06.prod.outlook.com (2603:10a6:20b:433::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Fri, 6 Feb
 2026 14:07:21 +0000
Received: from AM0PR06MB6323.eurprd06.prod.outlook.com
 ([fe80::90f1:4ff0:62a5:8d3a]) by AM0PR06MB6323.eurprd06.prod.outlook.com
 ([fe80::90f1:4ff0:62a5:8d3a%3]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 14:07:21 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch
	<m.felsch@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>
CC: BAREBOX <barebox@lists.infradead.org>
Thread-Topic: [PATCH 5/5] ARM: i.MX8MM: add Hexagon Geosystems GS05
Thread-Index: AQHclrZtH2flzm4nyU6BCrj4MyuCZrV1sMeAgAABmEE=
Date: Fri, 6 Feb 2026 14:07:21 +0000
Message-ID: <AM0PR06MB6323DC69D34B627C15B73077BC66A@AM0PR06MB6323.eurprd06.prod.outlook.com>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-5-a80b234ce1a1@pengutronix.de>
 <9eb10c4b-6322-4b42-a155-aafa24f2fabd@pengutronix.de>
In-Reply-To: <9eb10c4b-6322-4b42-a155-aafa24f2fabd@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB6323:EE_|AM9PR06MB8268:EE_
x-ms-office365-filtering-correlation-id: 344d6ada-44fe-4096-58a7-08de65890bc7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?wwo6aon+NNZdZnRfIMGNt9nizhnWCPWITYwR7jqb8Ep2Rk3lQpPaP70jVQ?=
 =?iso-8859-1?Q?USwziUad+eFsQdBqJGO3YC69Qo80sL2WzCINZHto1TZtl8txLbNazgHrw1?=
 =?iso-8859-1?Q?cwYu/vMAseH2sWWb+aCVnJrcfN9GNpZ5npilUgGB52MMxYNWaGMhbGjRa2?=
 =?iso-8859-1?Q?JzHrnzCt5rp5OjElqRO951/Qu1T3r/2i6cMwPY+Afqk9iq1qUTXXUersdc?=
 =?iso-8859-1?Q?4aeiFJSPI+B2ih7RZx43+m+JklZQmKjMmR/IhquQHsN0KEJ6HTgSdK1fNV?=
 =?iso-8859-1?Q?A6PJhFVdIQxGoJGrhchmz+LfP0yG/rn+ti4xlCXo7w4VSbL1z7+a4eQy5n?=
 =?iso-8859-1?Q?/d9tQ1ZXrs1CEibW7+p/FFUM7wsvD3kVqR7VG8eNAmbPo0HuPztNrVFIvt?=
 =?iso-8859-1?Q?IWhaCbxVDHRdGjV57biQyhm8TSDuqW8duIwLrtg/6sIrr+QkwWhpUGrkqk?=
 =?iso-8859-1?Q?zzQP435U8X1AkLj8PEhGXAwJf2OdjAPmBkyDoEufQDUYPWAe6rch2gN6Ca?=
 =?iso-8859-1?Q?WzsewWV9w2s9xuKj9o1zrsRYZYfpw1gbdURoFbhVB9PHXtLqXLafaCegvy?=
 =?iso-8859-1?Q?av0A7NFf8Qm1MaAQ4sncJGhGjzf6G3mcKZFq/VsorymWpXymwOyPGw5sed?=
 =?iso-8859-1?Q?tv9QaY+IybY1ZDKZvcmd8eudYwEWeG56O4OMB2DtdaTtXO3VbRh9R9tYn7?=
 =?iso-8859-1?Q?POGab3QnnAHMCuqYywoeI/50rx491QVtP6HpxW01nXBWhTiOkuMElAZJ+W?=
 =?iso-8859-1?Q?2gZ5Ec4Afr4aglWQa9pO0M66h65B1vPM/re8yYFyi6A0vnWtA6mhZjSvcS?=
 =?iso-8859-1?Q?RVVi833vyaRkixKJCAgOYVNa49IilcKeIzfo5MD1CKPOEjVLJLbr12UV1n?=
 =?iso-8859-1?Q?wwPFpiafHO1OAh0DLbj3LwlPq4i6LVPHZkkIy9fVYJc3LeXhYZcJ3CRUzw?=
 =?iso-8859-1?Q?9sFbINjHdTd0c21NB8WQ0CJaaXeTXh7JO7wRob2uO+l1TXscowSkZPkilm?=
 =?iso-8859-1?Q?Ohxeh2d7EzABgBFBjIs6CgX0iCNKxabhF8sixAAb4lkS4HSzRYcF6ho70U?=
 =?iso-8859-1?Q?BbRBeiQpIOdOGHrCXn7Pqi93fICa/OCmlcOzbeDIG4pQqEFphaBhsMc7Vy?=
 =?iso-8859-1?Q?/m/x2HSfBbkXCD82fP106yZjKrxNrIWeTddY3w90R2GfYcmPvDByovtV0T?=
 =?iso-8859-1?Q?xWPYAb8s3GwJjAiAimMzUAVzEylQgefod1oQGNU9ItRW7/zJa7zfn+23jJ?=
 =?iso-8859-1?Q?ujNvmAEDXtu5RsNxIZXe4QlXx5VgPMVJOlhgGqnu87Crecoujj9sbB5jS7?=
 =?iso-8859-1?Q?iok+taKMpTxM+Ps2TAjyNTMaBngqw4sgp+/7ubE7WrU2cdj5l9AI7+VEmB?=
 =?iso-8859-1?Q?Lh+VeWEpVGyEuDxI1abjAoYDva304LUXm4cU+w52hd8h9hK0W32samS5G9?=
 =?iso-8859-1?Q?jbEneDCanylVj/Zt8qCzqDjhGy8t36hztSgma7YAWGeu8R/480vAJTk/2A?=
 =?iso-8859-1?Q?TOsg6FXvba/gwpSIGikhCZCCaYYY9+v2J5lFL+fwy1N1S7DYvepRz0Pccl?=
 =?iso-8859-1?Q?GlU8fEHRGAYlxZfmLSu+nfW3Qwa/FW70NmKTdVcD9QRTdLKqMYIWFL566C?=
 =?iso-8859-1?Q?zi7iQh0tXrNE0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB6323.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?+8ZMTEPFbKwjrjgf8iTkm8mzie8Ops6FwEvo3cEQDQWK6ZdEp0vCA+Si5g?=
 =?iso-8859-1?Q?sJtbO9dgsHjHFhP6M9aLXP1oSMgwvJYOC+EF9RR7D5ILIYLjopHP1asKop?=
 =?iso-8859-1?Q?y1s5fjJwLVURvtB1PWzvhCcJJOjr7TE4ooMk4Nbb5UHSNj6IOWajn+oqm/?=
 =?iso-8859-1?Q?O9wrgZqSqtmKxj0z/3QRqexJ5XpbYQ8H15rM0dBfwKSbNkVspzk1eS9xa8?=
 =?iso-8859-1?Q?CLQNtZvp8BCaOOF0OoeTiy2ICNCFPchh/EKp9KOsoiaAdesIyzCrsS3b00?=
 =?iso-8859-1?Q?bHHk1f9Xj9VvjWzbIUX6fY8GlAXeDhnC4Nwinw9j1gFqgVKWPNt4bzv5Ci?=
 =?iso-8859-1?Q?F1KEbTuRkchqGiMwkvCtnd43BxAH/xyOcqPq3P/Q2qQkgICuvL07w53/tx?=
 =?iso-8859-1?Q?MFTNw0QDplkeSEks64XtmIEBgmub6g6vZyNJgVitCZvCbxhhwu3I9HXpvw?=
 =?iso-8859-1?Q?sra4gUMzoezHStW5JT3kU4/ioNauMprflCjNJNYyLTpafZmNTdxbKBzbKp?=
 =?iso-8859-1?Q?VmJGlLXeyQmKZFPtBDwtDNBgtX+Xwbj1VXCpDD3IE7yUQUJwEmoCmVEJN9?=
 =?iso-8859-1?Q?SfsLYeCElQbZa/3SeH4fPX3DX08vXEHDKFWBrGHVGRc7XSFk37YoTs9xD3?=
 =?iso-8859-1?Q?uUEiZK6nnbbbpdOPvsj/+Sq5MZtJZxpYOk4S0+uPQEuhEAn3Z7T9P97wK3?=
 =?iso-8859-1?Q?CWBbl2kS7PFF2unUlManz7C5zLcSVMprkj6rTvPVbMqyFn1xaRX25Fb1Dx?=
 =?iso-8859-1?Q?yMimdDn2T8X/ytfpEcHLClf3/txMtBbybCB3a6sRDN0fuuVUmBtROQlGul?=
 =?iso-8859-1?Q?HcENWvHJgEnz3kihPDwbn6oLkZMLjwFgK4NUHv/ufYXiQidLnZwIS5alcC?=
 =?iso-8859-1?Q?LwLw6L+kvX8PrFaSov6/iDkOpQKV1qwqXqAh0zoQS8eP08MIgaTJeEoVgR?=
 =?iso-8859-1?Q?Ha6+G9D43lrIHHAJUoILOL+px98vGDI4Ltio/DqQqN5UsZ8g5088ZNgn9c?=
 =?iso-8859-1?Q?/dxAsn0Dt8H3oFmbOILz2Ep2Q9KGKxvLw0u8h+PwTqbFvU6YDg4DY+j/i9?=
 =?iso-8859-1?Q?KENhgEBSzNqUuO16jrVtfJBXFvp2F3q0fmwV9fCAgmJhlcHx3H9ixd8++V?=
 =?iso-8859-1?Q?TnMFUHm/3+DPg5yp7u3YK4Tixmik4LOG2W4FzCiEDUW01wRwiSf8/J870L?=
 =?iso-8859-1?Q?9ZY/UOidlga8J3oZDioySQHiDRdgG3Hoi/3bC+ui6Wwlggb8G8UQIU6P11?=
 =?iso-8859-1?Q?yXMUg9JPDWhLx1BbmF1NvI3ROey6rRJkMQT+MrfQwLN4DJr2lwXpHzgsbs?=
 =?iso-8859-1?Q?soG9MmSviomoIgwHqKyBRhtYyp8kyrVc9mVMxlzBrJ3bmD1eV4tgqwnbUX?=
 =?iso-8859-1?Q?frMMSETvbqaTtk9wB5hqJLiDhJ9RVVnRgU820U91yNvNYjqtMm2+resLdW?=
 =?iso-8859-1?Q?dnhzGMTUNNY9AGNZILOjOIq9RpP805deuTca6qxWEojQUGIjg3lSShy7L8?=
 =?iso-8859-1?Q?wNEIzv0qUqLX5OXdhxCMgohfntgzuNLgR39RxNWUwgnNqN/PxC/P30FwAF?=
 =?iso-8859-1?Q?8zbSnTzWyMA42GRcWDBhtTkRxVbP+qvt8LxCx7lfcOG3rCzItzH3ksuoO2?=
 =?iso-8859-1?Q?AADMpLvcQCgvtHQQdiSybJzM37c484RwKe377loZ+n2eWqh80zayqXvRnr?=
 =?iso-8859-1?Q?NZEI40wdP0/1sEmU1PHYHxxZC2GNhJ6Lp7r5GMOFzV3wgQ9xzBwymYFqxi?=
 =?iso-8859-1?Q?NFoRouQ8KG4zORxQNPFuC/m4Y5MaZUEMIgMmx2l8Okz8QZLn2DMMHFoH2b?=
 =?iso-8859-1?Q?HmImQ7hQ2NHumfi0PdZ6oaYJQ2LN3CFRrahB+/87+2bJQAhAAtnnXZLssa?=
 =?iso-8859-1?Q?iX?=
x-ms-exchange-antispam-messagedata-1: Uz3lRQkBGTbIi5CAD0EqQTqxEXflQVjYQe52UmgUOk64H9O6JDurrlWd
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB6323.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 344d6ada-44fe-4096-58a7-08de65890bc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 14:07:21.4545
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rp9yUWw4yePpisLjQyoNkXYxF5pVClOjkiqMyAaSHm2W2IxpLQC5Rvb6fqhrrlyPJLTilHHVtI0fuCGgafD9ugCCqDNazo8Z4/7Bhr33v2t69DF3qrZ4MwkDGD1JnuT1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR06MB8268
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_060729_664997_0547FFD1 
X-CRM114-Status: GOOD (  33.77  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] ARM: i.MX8MM: add Hexagon Geosystems GS05
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi


>
> Hi,
>
> On 2/5/26 4:45 PM, Marco Felsch wrote:
> > This adds support for the Hexagon Geosystems GS05 which is part of the
> > System1600 platform.
> >
> > Co-developed-by: Johannes Schneider <johannes.schneider@leica-geosystem=
s.com>
>
> fyi, correct procedure for Linux would be for co-developed-by to be
> followed by s-o-b, but I won't insist on it here.
>
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
>

some/very few of the original patches that went into this upstreamable vers=
ion
came from me - i'll leave it up to marco to either keep the co-devleoped-by=
, add
my signed-of-by and/or have both.


>
>
> > +static int ar8031_phy_fixup(struct phy_device *phydev)
> > +{
> > +     /* enable rgmii rxc skew and phy mode select to RGMII copper */
> > +     phy_write(phydev, 0x1d, 0x1f);
> > +     phy_write(phydev, 0x1e, 0x8);
> > +     phy_write(phydev, 0x1d, 0x00);
> > +     phy_write(phydev, 0x1e, 0x82ee);
> > +     phy_write(phydev, 0x1d, 0x05);
> > +     phy_write(phydev, 0x1e, 0x100);
> > +
> > +     return 0;
>
> barebox supports qca,clk-out-frequency, qca,clk-out-strength and
> phy-mode properties to apply these fixups to the PHY.
>
> This is useful if you have the same PHY elsewhere, e.g. behind a switch
> as you can identify the specific PHY that should have these settings
> applied. It also allows a faster boot as you could skip network probe in
> barebox and do the fixups in Linux if the device tree lists them.
>
> Just for your information. As you guard this behind your board
> compatible, I can live with it.
>

the GS05 itself actually has no phy - at least the "customer relesae" one.
the AR8033 phy is on a 'debug board'; alongside a ft232rq.

> > +}
> > +
> > +static struct hgs_machine *
> > +hgs_gs05_get_board_from_legacy(const unsigned char *serial)
> > +{
> > +     struct hgs_gs05_legacy_machine *machine =3D hgs_gs05_legacy_varia=
nts;
> > +
> > +     for (; machine->revision; machine++)
> > +             if (serial[6] =3D=3D machine->revision)
> > +                     return &machine->machine;
> > +
> > +     return ERR_PTR(-EINVAL);
> > +}
> > +
> > +static struct hgs_machine *
> > +hgs_gs05_select_board(const unsigned char *serial, bool legacy_format)
> > +{
> > +     struct hgs_machine *machine =3D hgs_gs05_variants;
> > +     const struct hgs_board_revision *rev;
> > +
> > +     /* TODO: Remove legacy handling if no longer required */
> > +     if (legacy_format)
> > +             return hgs_gs05_get_board_from_legacy(serial);
> > +
> > +     rev =3D hgs_get_rev_from_part_trace((struct hgs_part_trace_code *=
)serial);
> > +     if (!rev)
> > +             return ERR_PTR(-EINVAL);
> > +
> > +     for (; machine->dts_compatible; machine++)
> > +             if (rev->id =3D=3D machine->revision)
> > +                     return machine;
> > +
> > +     return ERR_PTR(-EINVAL);
> > +}
> > +
> > +static u64
> > +hgs_gs05_set_efi_poll_intervall(struct device *efid, u64 new_polling_i=
nterval)
> > +{
> > +     const char *old_interval_str;
> > +     char *new_interval;
> > +     u64 old_interval;
> > +
> > +     old_interval_str =3D dev_get_param(efid->parent, "polling_interva=
l");
> > +     kstrtoull(old_interval_str, 10, &old_interval);
> > +
> > +     pr_debug("Update EFI UART-Rx poll interval: %llu ns -> %llu ns\n"=
,
> > +              old_interval, new_polling_interval);
> > +
> > +     new_interval =3D basprintf("%llu", new_polling_interval);
> > +     dev_set_param(efid->parent, "polling_interval", new_interval);
> > +     free(new_interval);
> > +
> > +     return old_interval;
> > +}
> > +
> > +/* '"' + sizeof(struct hgs_part_trace_code) + '"' + string delim '\0' =
*/
> > +#define HGS_GS05_SERIAL_NUMBER_CHARS \
> > +     (1 + sizeof(struct hgs_part_trace_code) + 1 + 1)
> > +
> > +static struct hgs_machine *hgs_gs05_get_board(struct device_d *dev)
>
> Should there be a v2, you can use the occasion to replace all device_d
> and driver_d with device and driver respectively.
>
> > +     chosen {
> > +             environment-emmc {
> > +                     compatible =3D "barebox,environment";
> > +                     device-path =3D &usdhc3, "partname:barebox-enviro=
nment";
> > +                     status =3D "disabled";
> > +             };
> > +     };
>
> Does your board happen to have the barebox env GPT partition type UUID?
> In that case, you could also control this via autoload_external_env()
> or env.autoprobe instead of having to hardcode anything in DT.
>
> > +/ {
> > +     /* compatible containing the correct revision and model is patche=
d via board file */
> > +     compatible =3D "hgs,gs05", "fsl,imx8mm";
> > +     model =3D "Hexagon Geosystems GS05";
> > +
> > +     aliases {
> > +             efiwdt =3D &efi_wdt;
>
> Do you not have a kernel driver for the watchdog? You may want to use
> watchdog0 and watchdog1 in that case to be able to identify them reliably=
.
>

good point - there would be also imx internal watchdog (connected to the pm=
ic)


gru=DF
Johannes

>
> > +     };
> > +
> > +     /*
> > +      * Prohibit OP-TEE from turning of the UART output if enabled via
> > +      * CFG_UART_BASE. To do so we need to specify a stdout-path which
> > +      * doesn't exist else OP-TEE turns off the UART.
> > +      */
> > +     secure-chosen {
> > +             stdout-path =3D "/this-path/does/not/exist";
>
> ... :/
>
> > +&usdhc3 { /* eMMC */
> > +     assigned-clocks =3D <&clk IMX8MM_CLK_USDHC3_ROOT>;
> > +     assigned-clock-rates =3D <400000000>;
> > +     pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> > +     pinctrl-0 =3D <&pinctrl_usdhc3>;
> > +     pinctrl-1 =3D <&pinctrl_usdhc3_100mhz>;
> > +     pinctrl-2 =3D <&pinctrl_usdhc3_200mhz>;
> > +     bus-width =3D <8>;
> > +     non-removable;
>
> no-sd;
> no-sdio;
>
> to skip their detect?
>
> > +     pinctrl_gpio1: gpio1grp {
> > +             fsl,pins =3D <
> > +                     MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10              0=
x100
>
> This looks a bit unconventional. Can't the consumer select this group?
>
> > +config BOARD_HGS
> > +     bool
> > +     select ARCH_IMX_ATF_PASS_BL_PARAMS
> > +     select ARM_SMCCC
> > +     select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> > +     select I2C_IMX_EARLY
> > +     select IMX8M_DRAM
> > +     select HABV4
>
> Do you need to select this one? I think it would be better without to
> allow it to be enabled in the defconfig without flipping HABv4 on for
> all other boards?
>
> > +static int hgs_console_open_fixup(struct device_node *root, void *cont=
ext)
> > +{
> > +     struct hgs_machine *machine =3D context;
> > +     struct device_node *console_np;
> > +     struct property *property;
> > +
> > +     console_np =3D of_find_node_by_alias(root, machine->console_alias=
);
> > +     if (!console_np)
> > +             return -EINVAL;
> > +
> > +     property =3D of_rename_property(console_np, "pinctrl-1", "pinctrl=
-0");
>
> Does this not yield an invalid DT when passed to the kernel?
> I think you want to either keep pinctrl-1 as is or shorten pinctrl-names
> as well.
>
> > +     pinctrl =3D pinctrl_get_select(console->dev, "uart");
>
> Nitpick: I think a name like "open" might be clearer?
>
>
> Cheers,
> Ahmad
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


