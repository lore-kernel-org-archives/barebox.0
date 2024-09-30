Delivery-date: Mon, 30 Sep 2024 08:39:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svA4C-004TAQ-2h
	for lore@lore.pengutronix.de;
	Mon, 30 Sep 2024 08:39:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svA4D-0000gD-4X
	for lore@pengutronix.de; Mon, 30 Sep 2024 08:39:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N0uV5Wl/XNsJGNiNa4an9OCoxSwfUOLqdAFC9wArDOE=; b=SUJYWHztUMwO89/bqqFNJbkhZg
	YKg28RTg3G7BxAEU3QwGxvBviTYAu3nIHryB+TNuretd1lKaODqs6CBwhlPTQY4atuSelXRwBqBpu
	mVPJU++yr/5FLEa1GF4UBcSot1thrZ9MLBSSwdxi1DMzeNZm+h2IJBVbCFfFNQTWcGIuFRL7CCMB7
	xa2ZDY6GXFv0JfSbCh7JmCe4V71jfc8C1beaEV6rtkhgWq764ZCMKsmPCCv805AS5Lbi7jVVt8n28
	AKeNz3Bfjx/zOzBh3eW3Xwo0qIzCajyPLLjhnkPzbORGlvSdHjhCdsdKqQRUJx94le6sUb4rAq21c
	GruqqT1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svA3i-0000000G4di-38Fx;
	Mon, 30 Sep 2024 06:39:02 +0000
Received: from mail-northeuropeazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svA3f-0000000G4cU-23bD
	for barebox@lists.infradead.org;
	Mon, 30 Sep 2024 06:39:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uxultht5cjgw+VIGKovMpyrIefGyyMtFexrxPxmVyW1l66jRIq7OlygRkWfE1KjR2qmuIpW76yMGcjrkMFUmhALpkmJE92eEXjMvN+IpHf5HpDn0TtJZkYKbdSCv1aW67+M6TMFFP1oc5ZXFfkLoeGkTq2zrVsak5tpllk3a0wU+XGMopLaUZJfBAC9eA30C8F3MxeIxU1cvVZYiW0wFoNK97ht8g/yQ/WjYtff93t+yE0wye3xq9YogMRtv5ESdNwzCj9TcKvtP4IVIi59u6xjV62jPcWzqSK8Ps9P/nZkXakQ8nYvrpBWPAt2Km2orc2t5TM3UOfnHP8di5mw+vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N0uV5Wl/XNsJGNiNa4an9OCoxSwfUOLqdAFC9wArDOE=;
 b=Z7KrOsDbwKTx96ST7qZOwwKbNPGTpARvVYT0H4QNi5qcrjNK1SnTSrk5cjNLqNmMajsUpz29z5tHgepvl1TYMmpFi7PnobmRdNKovkbPKMIqD0OOadO/iJkIf+SbVaGVygLelExiSEYoBzv4JNuhi8hEB0jmiLqch00R3Ut+m4wvHpY6Av/Im3mjuHraUIf/Rz6hF5lKrBnur6mvQDZ0vI12JuCoi0NjLo3L6HKpKL97D8j4883DKztaE8vpkj9qnyZ6/1TF7eOLqp8wADf4+4EUWwJITuLPR/1GQ2yijJ0QuiZEwDx11wQ3oQoAU0B/rAaBYH4I19FsnUOXqwfD6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N0uV5Wl/XNsJGNiNa4an9OCoxSwfUOLqdAFC9wArDOE=;
 b=UTtldXQHf6IAHTP2kQ4o7ashZeaiQIWFRWjRBRZ+tPbsl8nSV2RWnLI1ofd++WJuRJZ41+dpig46f+EJMUdyDRaBUWFqkyAgGGfPcPwADyfI5GLvP+7IfCD9iIEKBvjIYYHpY3cfn4yNEVL9W7NmxuUauCsyF7sBnStIpPjwTvVIMCMGQDjCD1kQbWag7/AutcLXL7s6kkTFN66aeaQDV+FkCmsYbuo2NXV8DTFXZz8/dHYsPkd2spxDaIL2mAIjPdv6LAcRWSxM+CP0V6TDE77IYTO21VA4wMMvJcVMmbdQHHesUA+JSjzDXIb1FdBogn52WrxOzPKidTKNbg//GA==
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by AM9PR04MB8289.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 06:38:45 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630%6]) with mapi id 15.20.7982.018; Mon, 30 Sep 2024
 06:38:45 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "Peng Fan (OSS)"
	<peng.fan@oss.nxp.com>
CC: U-Boot Mailing List <u-boot@lists.denx.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>, dl-uboot-imx <uboot-imx@nxp.com>, Steffen
 Trumtrar <str@pengutronix.de>
Thread-Topic: i.MX8/9: question about unused DDR PHY trained CSR board array
Thread-Index: AQHbEOasH/154nFPc0KKSVuBKZ9YPLJv5Acw
Date: Mon, 30 Sep 2024 06:38:45 +0000
Message-ID: <PAXPR04MB8459A8BB89FAB50D6871EA9388762@PAXPR04MB8459.eurprd04.prod.outlook.com>
References: <8074530f-720b-4aea-934b-c0643c356617@pengutronix.de>
In-Reply-To: <8074530f-720b-4aea-934b-c0643c356617@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8459:EE_|AM9PR04MB8289:EE_
x-ms-office365-filtering-correlation-id: d606f0b4-a715-48d8-dd2d-08dce11a88bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?UEAhVgm/Fm7qtR65NuBck7W0TnAdWf7ctXjFXTJsBDP+PFAhuYt4fI+d1TQt?=
 =?us-ascii?Q?7rS16mxyV+DrXEqgn3NG4QdIOh2csP3KrDvt8mInbBuc4dfb2rs3dyvL8Wum?=
 =?us-ascii?Q?Js27EKFqpkh6Kx2ItibJdytdVstd+ggvpP7fbpFPmT4xpTCdra214mCLE+de?=
 =?us-ascii?Q?+4nCzXN2i2K5Cn6ULezZjNzH8kF+bJqeGrIiGg4OY36PBBTj/0eum3EBUw3B?=
 =?us-ascii?Q?uX2p67PHuvR/Lgp5fNUqqfbOmN5XAn/czKG007HyqoY1StLGoJ9YxeLtTpSU?=
 =?us-ascii?Q?i/7P8CDt+FeDeeaE+0LpmDmCzvGzgcAXmUs428SF6KMCUnP8O7zK/+Qb5Ca5?=
 =?us-ascii?Q?GvKyjDUsBfFzjE9yeh2HfnvVMjqiFvJA6qKbFG5KU9qD1Bxxk7q7WsCQYlHp?=
 =?us-ascii?Q?w3wWC420OBLQ3W96iI87PABTgqU3qqkB9Dz4h87DKtzvHMAtqrCdr6MqIFVl?=
 =?us-ascii?Q?SkZKYv1Ac11BgA1exwbh8aRoh/P/gUZl6ay0bxwWaIKYiGxnnXPR2XUtuJpT?=
 =?us-ascii?Q?GKgIyrlm4swtnLQH3PXHNXq7txSpzfQcQm+RXCfuyBfzyEMKF9TmNSGE7uJB?=
 =?us-ascii?Q?g5EzOmllb2QzZQER8A4QctAtPJQ09brogAsOb6YOYLvS2eomySNhCl4YoPWb?=
 =?us-ascii?Q?Prp/wYoxtr3whYhm3FnIAm+LJfvOtvq0dwsHT5QjreIIfGPewkOjmC3VqvNA?=
 =?us-ascii?Q?bYxCZ0K912ArCxabqVjA03GWvw4ZjETqRjcUEosxbA1lAC0hzPp/IhAWATPk?=
 =?us-ascii?Q?AVRRGN+WvDJqDDhJcOmwAlnnyX8ZUXolokUE70x/U0OJT27zbXQ7lgvuITFA?=
 =?us-ascii?Q?HAAyFDMCMH3LitKKh/XfdbQd1H2Bj3CWpyskEWNZqSscHL0UM/1kan2k7+kM?=
 =?us-ascii?Q?ovUg7E3LRlpC2CSIsubL1PbRnCDZRVPLywIMZhcPWDlsBdlpppzj1bOUQDro?=
 =?us-ascii?Q?Gur7X5J24vznGGZQDbScDuAE8hnqy0AX7zSTIrOaqtN7OjNEgaZbHuyg4fJP?=
 =?us-ascii?Q?kj4U774ApBkwhHdDaqh7DIN5ytn/8fC4T2A3gEmxr54BRYX3zjNDWXo+kXR5?=
 =?us-ascii?Q?8M3Gei5V+zlSdbwU5KI/6SJj4VxW9XeGTedye0yUhHEi/bcjEMs3FBLg+Dai?=
 =?us-ascii?Q?PJxp47J+2CmLq7kMfcsu9vUyaNza4TSsw3cWy4CnazGzRZDrq0ca6oDdAbYa?=
 =?us-ascii?Q?62PqKthbOiovppCqXunatWYPLdUXST7NLf7ypTn5/jOloskNhsVnKW1Ar/sW?=
 =?us-ascii?Q?ZSRF1T4eeZ/M0sh+KZ8D/eWKwcSyzskL+8GhnSHBIUL1kbvWhWc4ReDer9KF?=
 =?us-ascii?Q?fLh0FopuJsrqHFrDOHDdeqSQ8TyZxtTGjPbyy0DqcAFruSlbCuLnoaos/glS?=
 =?us-ascii?Q?O20pgP4WAyK630inyPUC3YfIxJ2VLnOKYzrnhezH/LhU0H4q0A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L/Gr8klK28yyhPZh3wAEwDkr+clJCST8eD7yRuQdOPzl/8EvFiUkMxENTjgV?=
 =?us-ascii?Q?oTMXW9AMG9l6R+YCy7IuwbAQDFsAQ5C6RctaBSZJHmWaB44NAqNthUzt9vN+?=
 =?us-ascii?Q?8a5UCli7xSsPtcaai6+SvuM2PPHZKqoYS5WBe8mcTF3eMFvdkeWSGS+tJKuA?=
 =?us-ascii?Q?Hj+Rs81hGqD1YSAz+lyCz1m54uNnDyoc3gLW8Vmuxq2c2vQZMfpvMd+rF0PP?=
 =?us-ascii?Q?6hp5VOJ4o/do9wNKjQeR9L98CRMv1w3WhX6zxt3XKn1aaqPdRPOimqkv7G2T?=
 =?us-ascii?Q?VPh4/F3wmX3YnZgUxcjBk6un+vPi3o2+7D70N5z+r0hgXS5ztKqaI0DeAXtu?=
 =?us-ascii?Q?kggq20NTJXdToWnkZc1cPDoS6zuMSqLHp/4pzObX0HYNCMxmjigFiyGocbP7?=
 =?us-ascii?Q?IC0fSXVNZyf2ll/u91ndIsZW+RFPkfuSZhlaC5t2//f57KjPrD5t+b/THGEg?=
 =?us-ascii?Q?pvGUrd4ys/61fQlRVBRXAC2BPiEhr57I/fn/3Z4ICdswC/2XC8Sgn5DMS/bc?=
 =?us-ascii?Q?nGadSs3xsvFZHdZHZuO1Kveftu+1nK9LtDy7+IvE7Be3cCoALHgEkrv6sqIx?=
 =?us-ascii?Q?UcjOseXyaQuQTIAt38qzdH3qIf6ze+iIqz8V9MZY/Wq566p0ffO2OqWEMKCL?=
 =?us-ascii?Q?pG6dVT5JSiOYTpOEy+f5VrW8xnhwLdFdyFb3M2KqJ+CZ1BrbS8jew/rie1v5?=
 =?us-ascii?Q?5dWOHSu+WURcISYYkXaH+6zADv4C80NuRBKSnmURU+WN60kMZxlb38HGMeIE?=
 =?us-ascii?Q?K7R7zQ8K2C4a8UXlLiZ/oA5sDC7ELi1bEDD/iAEwVgSax0MkEb2PYLENI7wm?=
 =?us-ascii?Q?+hM0quEmqhCP7RH3Shhe7frMZUUuGoAz16qSEwZcazeRTW3PO98WdHFZZJ8g?=
 =?us-ascii?Q?tE69sD9KP8OjkyNRKarERRau2UJhbuXNX3YeFxDND3ypW2IWLAhdGTHxBnYt?=
 =?us-ascii?Q?hpn8wDSUEwf/sLBSi1n+T1k+6wUTwRM0A3XQUukAjk9GUxCIfWmqtHt3fgCj?=
 =?us-ascii?Q?+5+j6s5f8oNyRmPz01oVwzY1gnYxNHYZ8+d/kC0+y7ekeJsCK8CCrV3f/lRZ?=
 =?us-ascii?Q?sSebTJ39/5826MnEXdNlyWX9cEDRGHBF1Vtv0qwy+nTBx+TOzoY6frpY3DrG?=
 =?us-ascii?Q?zH3uC6g68UDFFaoyLp+NTJ9h67dN4wQ72KvzVyjINKCcWpd+1giYdWQyKeU5?=
 =?us-ascii?Q?NXyb4/AEVDSRgtiR8jnmfUS+hgmj22Rmaom1GgNW7zoBwX3C6xCEd/Fsm5sv?=
 =?us-ascii?Q?GPfdJkiZWzz0k51Ie3gTCoBzveV+PKFnnTvAx9/7CLwOTIAZTHeJfu/C8J4S?=
 =?us-ascii?Q?EWkXaieiDfoow8Flf8NALnxqruNmX9ldTQgP7moJ2A3KbNcN3Q+74W5/1JcS?=
 =?us-ascii?Q?RyPHNJ9bqfvhqL2hKzFEZuQuSgCgBXKbPwOT/nLq1HjZstYrHwczm3NYIFwS?=
 =?us-ascii?Q?qcOWDf5KfnxdSQtbFcH/yh5d8vdFi9m22byDKeuhHXW+8z6U3ap5BSXyaSDj?=
 =?us-ascii?Q?v/xxQFRw+hC+qckgBtIPTvkxiZHg1V7/72W0pAI4eEjH25prSHmNi8k9oaI6?=
 =?us-ascii?Q?CtV+mXENlU5EW4tTdmI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d606f0b4-a715-48d8-dd2d-08dce11a88bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2024 06:38:45.8640
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iy3zTUFskHoH2l+VfJlVPS/uhg+ENS0B2wEsCDi+5pXI3KGHRXxmTq5C08X3DHnDWbr07I18iD8nE/p6T3RnBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_233859_544715_549FCD96 
X-CRM114-Status: GOOD (  16.55  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: i.MX8/9: question about unused DDR PHY trained CSR board array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

> Subject: i.MX8/9: question about unused DDR PHY trained CSR board
> array
>=20
> Hello Peng,
>=20
> Looking at the DDR setup code for i.MX8M and i.MX9 that you had
> contributed, I am wondering about struct
> dram_cfg_param::ddrphy_trained_csr and the global
> ddrphy_trained_csr array.
>=20
> struct dram_cfg_param::ddrphy_trained_csr is presumably generated
> by the i.MX DDR tool and it seems populated by all the i.MX8M/9
> boards in U-Boot.
>=20
> This struct member is wholly unused though and instead a global
> ddrphy_trained_csr is used.
>=20
> What I wonder about is whether it's possible for the DDR tool to
> generate a different ddrphy_trained_csr than the default:
>=20
>   1) If yes, we should drop the global ddrphy_trained_csr and actually
> use
>      the board-specific array
>=20
>   2) If not, we should drop the board-specific array and perhaps ask for
>     the DDR tool to be changed
>=20
> I initially assumed 1) and because all boards supported by barebox had
> a board-specific ddrphy_trained_csr that's identical to the global
> ddrphy_trained_csr, I dropped the unused array[1][2].
>=20
> I now have the DDR settings for an i.MX9 LPDDR4 board in front of me
> that has different contents for struct
> dram_cfg_param::ddrphy_trained_csr than the default.
>=20
> I will inquire how that came about, but in parallel I wanted to ask you i=
f
> this is supposed to happen and to alert you to this issue.

Thanks for raising this issue. I think board specific csr should be used.

I will check with DDR TOOL owners on this.

>=20
> The way things are, this is either a bug or a missed space saving
> opportunity for U-Boot.

Thanks,
Peng.



