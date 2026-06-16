Delivery-date: Tue, 16 Jun 2026 07:48:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZMf0-006Oyy-30
	for lore@lore.pengutronix.de;
	Tue, 16 Jun 2026 07:48:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZMez-0005ys-Bp
	for lore@pengutronix.de; Tue, 16 Jun 2026 07:48:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zlB0ux629eGEsxM2yglZvLe80b5DEUFWGg1zGkogKk0=; b=ln067Ybj93eALwaVZ5DTuPjWJS
	wHe16eRaSwZRL/HVb8TnrIOEQL8yXUtiy41yjfmdFecpxGSbciCMrM24cw2UzWdEikWcC7lmP9F3y
	YWE445UZ6GTDM/HweZC6hijJ/JwoOvQ9387vxGH3mSFeXYb9bzPM3QZBWAn8Uh8RJIrnXHWa78hHV
	SC1ZMz2tqlW7rXzPlxuI8YtvYDblrX0VbYBpuBWOuqUuB21WZwwqEJQxw3BWNyAOodxg5qC77OXOs
	aKAR/P6HyPJjIT4rhpu5YiCDy0Bv8Sc0xNks+/WndXAs9sXwRGNw8zsvbSj+ZEja51b+Di3miDTek
	sOWk0yfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZMdg-0000000FG8J-3TwQ;
	Tue, 16 Jun 2026 05:47:08 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZMdd-0000000FG7i-0Ve5
	for barebox@lists.infradead.org;
	Tue, 16 Jun 2026 05:47:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O0+BnEmAFcY/jKSi2k28Mtvtzc0cvtMjTZ5epBAutdFc6oyb/zdfvLv+8uTkoADTQtWJVzzsHiFjXvUA2KYya0w9QItHu6r2lQj2YbOdVwJmdy0sAcLc5I5iU/ljV/cernzCwIKOqPw/0QFlnlUhkkiExlrwZBth2pICDAJY56Gd0bsKNU0ddvkkptieEeMUJWLDoZ+004ljUsM8kqpA7Xf+lxVmNDPdCqgePDjvXrNGx3Iqu5ha7SXIuwQk07V3I+QpDxmFN935K+0Awhu3pMVq9Twr1QFe88R6zSuaxVoKspVEKWYIQZtoc5c/jfiYFO/26sJurjW6Do+nsCl44g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zlB0ux629eGEsxM2yglZvLe80b5DEUFWGg1zGkogKk0=;
 b=N1EF4orfevHeP2rqDqdfUcOhsYieqVRbBoXNttxvrawBtbfJtnE73c54KB2PoMxK1s67dxhPntLDXiPmikFM0bcFVelgJUMZxj3mglUorjkqi6XTE6av3JsQNxhJQEnLmkJ6Geheoc4THgEfljGch7jY600K4ujtf4WR3dFdGkBn4zkRIxqgxyPH3ToJGNQbZCLxsZczdSIP6Lb7On8ntGS9HhwVTw2R2gi7zk4YsgVncp5lbKHsJiL0ym2nFuPKZPG3UjFzd7EAmZomb7+re+jEb51u7QZskrIXikeybimddw9lLeD94lYWBgNTJuC2qRD7mdiS4fzfE3oDcIaPVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zlB0ux629eGEsxM2yglZvLe80b5DEUFWGg1zGkogKk0=;
 b=djelIt/zap0ovR8GkjajwHgEOgCHmsfy8JAMrsYHlQ6pzoDxonj+os7jwMDxez+AFVzvC8I/sFImBK0Jl6s9ZBjlyHbaYnyycJaXrkls2S7g+0M27WF/QyEWDPuvj5g69VyGgTctRitcVl+hmEeoCqTjUIxd4m+74iElSwiARMk=
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com (2603:10a6:208:6a::27)
 by PAXPR06MB8173.eurprd06.prod.outlook.com (2603:10a6:102:19a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 05:46:59 +0000
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc]) by AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc%4]) with mapi id 15.21.0113.013; Tue, 16 Jun 2026
 05:46:58 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v1] firmware: choose PBL fw-external verify algorithm via
 Kconfig
Thread-Index: AQHc+267spIjlNZnlkGezYJAQrdMGLY/YYyAgAFLOYs=
Date: Tue, 16 Jun 2026 05:46:58 +0000
Message-ID: <AM0PR06MB41485EC4B2403D9B22037A6FBCE52@AM0PR06MB4148.eurprd06.prod.outlook.com>
References: <20260613195626.1650288-1-johannes.schneider@leica-geosystems.com>
 <b332b48b-dee1-4e12-8186-f76bc60bf4c3@pengutronix.de>
In-Reply-To: <b332b48b-dee1-4e12-8186-f76bc60bf4c3@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB4148:EE_|PAXPR06MB8173:EE_
x-ms-office365-filtering-correlation-id: 2aedfbac-fdfc-4c58-c41a-08decb6aae2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|23010399003|376014|38070700021|22082099003|18002099003|56012099006|4133799003|5023799004|4143699003|11063799006|6133799003;
x-microsoft-antispam-message-info: 9CFnEbBlI8kyeIv2dW+NQS+Ej6PkqLy3rT7/OCGwGKYicY0DnsPKmRmgXyfHOoqCGnNgrHjY3eJse+2LConeeUGHSr1pi9+2CfSbHJIcxTsD2p0n0dQOqSR18ysh7a3GHne9/iWT8zcX/HoFURTtnzs18LZtV0nnmgsz6qVPb6HgTv8F+xNYcjiTn47MqLgsJo1TnHMv6tdNOCwbUwcDCy2GgfFdStRrPkq8cKjyap8YuhQ2QFG/u6p/xIb94TYDiKEVmUCGNvbXkd6VMASPMqGrvSiQEb7nzdTtp4RGC47lPmGYoyRBR9cd6Kw32iy/LbkShJI+qGumTH70QUrMpjvlc6ovpxfq5JvRhYdY3NW42njXcMtb5zUeQmYMhyDYg7qmT46KwecdaEi1+EALD8UC/b9OmMP5ZLZwrM0CHIKcFC39qX5lCt4cTNxzzrxIRtvZNSgFjKo7J8+PyBfc/0+V/dhjjbHowyGOsA71XVOl8PdwQUGAk4eenNqU8V1Ix1hR12kiAFhs70/8Nn93wLh6JbYfOct5yulQ7Hg6xg1Kk8UZonF3yPk0RlXYjmFsLOAWqfEuhtqN3wEw6XsONkVdNbDmKdquwtw/C4EtLrTOWl+KDNZZGo3nRbRv4K2KJIi2TOyjANenrRfRoVKvPJFtZrFHctjfgrI8IdSer3XGAM4HjDBsJWPPdzJAXSl3
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB4148.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(38070700021)(22082099003)(18002099003)(56012099006)(4133799003)(5023799004)(4143699003)(11063799006)(6133799003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?/CifnZ09j12tRAUXEj2vlXmDP09t+eqlwvNJDAsKijQgiLa++r37DhJiZQ?=
 =?iso-8859-1?Q?V/wo+0jmNVb9S1qb1wksgJpWCqYbGVGGsToXdH3JFqSWsAHHPtMs37IlT2?=
 =?iso-8859-1?Q?tPKAcY38A/lLL3CKifwqLKrLgUk2ZlLrJ79iiu3yWCPXbud+4XqePG1g37?=
 =?iso-8859-1?Q?kSHYpUvwXGxotYiUyrXVv1KivxktPjW3iNvbElpvKzDEmcTRld5TxLH8wv?=
 =?iso-8859-1?Q?6mdBuMZVgyv0GuuNvLrC8lM36lQjmT7B8CGSCa+d8Q8LjVMn6vbQqPUECf?=
 =?iso-8859-1?Q?v0paeWrLx/x2kx1rK3HMZZTp7QLkJTB5f/ryiQTW5d/R+mVo2NeZz3g8aA?=
 =?iso-8859-1?Q?C10UZ3NnI5/J0nE7EXmfYOleT4Dy9By8KX9IqeFYZ/1cqSvGjT9TrIWoTC?=
 =?iso-8859-1?Q?XSDr6fZnBtOvSMvoQtbAg9Fo0FKphOKoWw1b2611VvFUq6fDIMCxq8Xd0v?=
 =?iso-8859-1?Q?lt4usNjpGjFPqQHIP5SXwUb/WqjjqNST9EFMZxA1JgVTowamPCXx5FqJsn?=
 =?iso-8859-1?Q?FgfaQ8ngOG9/gpwopKxPBCc4v/cSvdcIdgzC9W6YTty8qkTnZTmiIQBQC2?=
 =?iso-8859-1?Q?IzUGUaKEVSIFqiIL73ZgQi2MC6c4jCEMNy20kZ7Ha/2s3Wc/2OAymS3pYq?=
 =?iso-8859-1?Q?A0NB7OaM27ZS/RNCOsR/sIkUn+ATLrDi42YU/pufWRcF4+KzbSxrhNJOEd?=
 =?iso-8859-1?Q?we1R6FBJbrANUIMpwK+rzh8TubPUoJG1kBmrvnClQENw7C6GrPv9p271NP?=
 =?iso-8859-1?Q?r4v332NjC7Wi4GU0tFchjjexNwJ3aVhfLDmj3HYruyxQ/vLxJQj4sLrKWf?=
 =?iso-8859-1?Q?Ip2BxC3djPVfBQAdY+f1K676xxEKL9moE4T6Ng12ZMka/+AU0HH8IXpNk4?=
 =?iso-8859-1?Q?Eg5p4L75+KxC8n0RUdoldGHuqVTyHl+PtskOHgHnnsUv553V5XmgCoGdhu?=
 =?iso-8859-1?Q?yY+bjKz6dTKjWoQHMUaoLupXxAFNa+NzCfkHN/fnTWE5iBeg8iPqfOa8gf?=
 =?iso-8859-1?Q?0yKEqKRmmAnElhRP5gclIh8i2eH5SQOlSyTLk9AYBD1BPij93FHN9FPDaU?=
 =?iso-8859-1?Q?7eQllOjCPZRlBcQrGFM9ICJBd0KsoQHLk1Mvz07OUlGHdb/uMAthQM5b+7?=
 =?iso-8859-1?Q?Dh+h0W5iHzNa0v1JdjOgfsfeuj0BI0pk4ymPzXaEG4neranuGYW4IWfaaW?=
 =?iso-8859-1?Q?X2OrEmdN6ahCpIUl8QbC+oAN7spQ38uFClQDNCPZ9D0mShRtlLncKBQehP?=
 =?iso-8859-1?Q?hmBElo0hrD2/KqAENBMeIqSmCRpCzfXU35In9bhhrKpO3f1zGtWCl8HcDq?=
 =?iso-8859-1?Q?7OhWofBf9hyPJHgCx0CjpOPjnFNP7PfuPZGa3kwFB9NqxyAP0ocpfbU3J/?=
 =?iso-8859-1?Q?FWmzI1DlHMkQ7416Wr4i5DyT9e87IRvGw8RXE64AQwflYgfWjEwv5Ta3Ls?=
 =?iso-8859-1?Q?BNLDUZWdgF5YqSedxTd3ZxxQiXTco+P3cxKIK36GLrJMpoHEBMEk/d+hP1?=
 =?iso-8859-1?Q?eQTJ3Lo64fHwlGyysk2mR+yTKkmICxhGDFcvmOp3GnZL2cBZAUYAlYNs5K?=
 =?iso-8859-1?Q?rs0LsI3Y5P/aS2Q2hGLpvgswhhsCc8WMY7KlDEIoMIpy+JMtaR7hKqoQ52?=
 =?iso-8859-1?Q?CYpLLWaWSZrTSyV0Mcq1DBU00RZTTuBaOIPvRIJUaEiVKepJTVFmoIzL3U?=
 =?iso-8859-1?Q?r+Tlol3BwKk4S3z8JGmRkPyMr0/EKFpTUUgMmWisqLFCbPgUuxBbP7uIz1?=
 =?iso-8859-1?Q?68g2eWu8h/J/4G4P+6sIZUFzrXFHhQRgfOihm4GeaG9bDJJ1wx1P3b/bwe?=
 =?iso-8859-1?Q?zTCVjx96SonHyYIYN7QdVmda4y12YMjQyQeUErPwZ/dp4ubB5by+?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB4148.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aedfbac-fdfc-4c58-c41a-08decb6aae2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 05:46:58.1157
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0XfF0xr5NmndiYgftU/FcQv0RxF17ejlXHu5isnpx0aaQ+6id9woiG01VE5Hx9TkZc2jOg9hDvT03d+1U6hlcV/eU6xdgxSzPfYK3q4CwdwfaUVHz3SeofaRDLX254Zt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR06MB8173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_224705_384035_F745FA1B 
X-CRM114-Status: GOOD (  41.53  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] firmware: choose PBL fw-external verify algorithm via
 Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi Ahmad,


>
> On 6/13/26 9:56 PM, Johannes Schneider wrote:
> > The PBL verifies fw-external blobs by hashing them in DRAM after the
> > BootROM-supplied load, before handing off to TF-A. SHA-256 is the
> > only choice today, and it runs with the MMU off and DRAM reads
> > uncached -- no D-cache, no hardware crypto, plain software hash
> > walking DRAM through the slowest available access path. The cost is
> > non-trivial.
> >
> > Measured on Cortex-A53, MMU off, uncached DRAM:
> >
> >   SHA-256, ~720 KiB blob:  ~2 s
> >   CRC32,   ~720 KiB blob:  ~10 ms
> >
> > That ~2 s sits in PBL phase 1, before BL31 entry, and is paid every
> > boot. When the SoC's secure boot (HABv4 on i.MX8M, AHAB on i.MX9, or
> > an upstream-signed FIT / bundle) already authenticates the blob
> > before the PBL ever sees it, the in-PBL SHA-256 is redundant:
>
> This is incorrect. The BootROM can only load as many bytes as it can fit
> into on-chip SRAM. The loaded PBL will set up DRAM and then loads the
> full image into DRAM.
>
> Replacing SHA256 here with CRC32 thus breaks verified boot from EL2 onwar=
d.
>

ouch, thanks for pushing back and in the right direction here

>
> > it
> > only re-checks the BootROM->DRAM copy against a value baked into the
> > PBL itself, not against an external trust anchor. A 32-bit CRC over
> > the same window catches the realistic failure mode (a corrupted copy
> > into DRAM) at ~200x lower wall-clock cost.
>
> Give recent commit f2ae1a4a85d0 ("ARM: rockchip: atf: enable MMU in
> PBL") and its follow-up a look.
>

thanks for the hint, i'm "toying" with the code now, and am wondering: inst=
ead
of enabling the MMU to speed up the software sha256, would you have any con=
cerns
if i would enable and use the hardware sha256 that lives inside the imx8?

from my first couple of measurements i get:
| Variant                  |   bl32-verify | Delta vs prev | Cumulative dro=
p |
| Pre-MMU-on (generic C, uncached)    |    2190 ms |        -- |        -- =
|
| Post-MMU-on (generic C, cached)     |     451 ms |   -1739 ms |   -1739 m=
s |
| Crypto-ext, per 64bytes block       |     192 ms |    -259 ms |   -1998 m=
s |
| Crypto-ext, batched                 |   **5 ms** |    -187 ms |   -2185 m=
s |

i could send either the "enable mmu" or the "enable hardware hashing" a bet=
ter follow up to this patch - opinions/preferences?

> I'd suggest you do the same: Keep the hash as-is, but set up MMU as soon
> as you have the memory size.
>
> You can also play around with mimicking compression of firmware blobs
> like we have on Rockchip. Depending on CPU vs I/O speed, this can also
> reduce your startup time.

compressing the optee tee.bin (~720KiB) and having PBL uncompress it again =
would
(probably) work, i have some code that does this - but for some reason the =
way
we build and sign the whole barebox binary now doesn't agree with the imx8m=
*
bootrom, and it drops me back into serial-dl mode =3D it refuses the image
completly.

Any hints for what i need to look out for when adding such feature to the P=
BL?


gru=DF
Johannes


>
> Cheers,
> Ahmad
>
> >
> > Make the verify algorithm a Kconfig choice:
> >
> >   PBL_FIRMWARE_EXT_VERIFY_NONE    no verify
> >   PBL_FIRMWARE_EXT_VERIFY_CRC32   4-byte CRC, cheap corruption check
> >   PBL_FIRMWARE_EXT_VERIFY_SHA256  current behaviour, default
> >
> > firmware/Makefile selects an algorithm and passes it to gen-fw-s,
> > which emits nothing for NONE, a 4-byte .long for CRC32, or 32 bytes
> > for SHA-256 in the per-blob .rodata.<fwstr>.sha section. The macro
> > in include/firmware.h declares the verify symbols only when actually
> > used (offset !=3D 0, i.e. fw-external blobs), so NONE is a true no-op
> > and in-tree firmware never grew a section dependency.
> > firmware_ext_verify() dispatches via IS_ENABLED() at compile time.
> >
> > The verify-section symbol names (_fw_*_sha_*) are kept as-is rather
> > than renamed, since firmware_next_image_verify() also references
> > them for the FIRMWARE_VERIFY_NEXT_IMAGE path; under CRC32 the name
> > no longer describes the contents, but renaming would expand the
> > patch scope unnecessarily.
> >
> > Default stays at SHA-256 so existing defconfigs keep their current
> > semantics.
> >
> > Assisted-by: Claude:claude-opus-4-7
> > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.=
com>
> > ---
> >  firmware/Kconfig   | 33 +++++++++++++++++++++++++++
> >  firmware/Makefile  | 15 ++++++++++--
> >  include/firmware.h | 41 +++++++++++++++++++++++----------
> >  include/pbl.h      |  2 ++
> >  pbl/decomp.c       | 35 ++++++++++++++++++++++++++++
> >  scripts/gen-fw-s   | 57 +++++++++++++++++++++++++++++++++-------------
> >  6 files changed, 153 insertions(+), 30 deletions(-)
> >
> > diff --git a/firmware/Kconfig b/firmware/Kconfig
> > index b9b4556dbd..f745819a67 100644
> > --- a/firmware/Kconfig
> > +++ b/firmware/Kconfig
> > @@ -151,4 +151,37 @@ config FIRMWARE_VERIFY_NEXT_IMAGE
> >         verified images. The function to check the next stage image has=
h is
> >         firmware_next_image_verify(), make sure your SoC code uses it.
> >
> > +choice
> > +     prompt "PBL fw-external blob verification"
> > +     default PBL_FIRMWARE_EXT_VERIFY_SHA256
> > +     help
> > +       Algorithm used by the PBL to verify an fw-external blob against=
 a
> > +       value embedded at build time, before handoff to TF-A. Runs with
> > +       the MMU off and DRAM reads uncached, so cost scales sharply wit=
h
> > +       blob size and algorithm. This checks integrity vs the build-tim=
e
> > +       value; it is not authentication against an external trust ancho=
r.
> > +
> > +config PBL_FIRMWARE_EXT_VERIFY_NONE
> > +     bool "none"
> > +     help
> > +       Skip the verify. Appropriate when the boot chain authenticates =
the
> > +       blob upstream of the PBL (HAB, AHAB, signed FIT, ...) -- the
> > +       in-PBL check is then redundant.
> > +
> > +config PBL_FIRMWARE_EXT_VERIFY_CRC32
> > +     bool "CRC32"
> > +     select CRC32
> > +     help
> > +       4-byte CRC32 (zlib polynomial). Catches accidental corruption
> > +       of the BootROM->DRAM copy; not cryptographic.
> > +
> > +config PBL_FIRMWARE_EXT_VERIFY_SHA256
> > +     bool "SHA-256"
> > +     help
> > +       Cryptographic hash, software-computed with MMU off. Strongest
> > +       option but by far the slowest -- prefer NONE or CRC32 when the
> > +       blob is already authenticated upstream of the PBL.
> > +
> > +endchoice
> > +
> >  endmenu
> > diff --git a/firmware/Makefile b/firmware/Makefile
> > index 7e433a1824..1590bed9f1 100644
> > --- a/firmware/Makefile
> > +++ b/firmware/Makefile
> > @@ -61,8 +61,19 @@ pbl-fwext-y :=3D $(addsuffix .extgen.o, $(fw-externa=
l-y))
> >
> >  FWNAME    =3D $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S=
,%,$@))
> >
> > -filechk_fwbin =3D $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR=
) .rodata '' $(fwobjdir)
> > -filechk_fwbin_ext =3D $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE=
_DIR) .pblext a $(fwobjdir)
> > +# Verify algorithm passed to gen-fw-s for fw-external blobs. Drives th=
e
> > +# verify metadata section emitted into .extgen.S and matched by
> > +# firmware_ext_verify() in include/firmware.h.
> > +ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_NONE
> > +fw_verify_algo :=3D none
> > +else ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
> > +fw_verify_algo :=3D crc32
> > +else
> > +fw_verify_algo :=3D sha256
> > +endif
> > +
> > +filechk_fwbin =3D $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR=
) .rodata '' $(fwobjdir) sha256
> > +filechk_fwbin_ext =3D $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE=
_DIR) .pblext a $(fwobjdir) $(fw_verify_algo)
> >
> >  $(obj)/%.gen.S: FORCE
> >       $(call filechk,fwbin)
> > diff --git a/include/firmware.h b/include/firmware.h
> > index 6511d56b2e..72a47f24e3 100644
> > --- a/include/firmware.h
> > +++ b/include/firmware.h
> > @@ -80,13 +80,21 @@ static inline void release_firmware(const struct fi=
rmware *fw)
> >
> >  void firmwaremgr_list_handlers(void);
> >
> > -static inline void firmware_ext_verify(const void *data_start, size_t =
data_size,
> > -                                    const void *hash_start, size_t has=
h_size)
> > +static inline void firmware_ext_verify(const void *data, size_t data_s=
ize,
> > +                                    const void *verify, size_t verify_=
size)
> >  {
> > -     if (pbl_barebox_verify(data_start, data_size,
> > -                            hash_start, hash_size) !=3D 0) {
> > +     int ret;
> > +
> > +     if (IS_ENABLED(CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32))
> > +             ret =3D pbl_barebox_verify_crc32(data, data_size,
> > +                                            verify, verify_size);
> > +     else
> > +             ret =3D pbl_barebox_verify(data, data_size,
> > +                                      verify, verify_size);
> > +
> > +     if (ret !=3D 0) {
> >               putc_ll('!');
> > -             panic("hash mismatch, refusing to decompress");
> > +             panic("firmware verify mismatch, refusing to decompress")=
;
> >       }
> >  }
> >
> > @@ -96,22 +104,31 @@ struct fwobj {
> >       void *data;
> >  };
> >
> > +#if defined(CONFIG_PBL_FIRMWARE_EXT_VERIFY_NONE)
> > +# define __fw_ext_verify(name, fwobj)        do { } while (0)
> > +#else
> > +# define __fw_ext_verify(name, fwobj)                                 =
       \
> > +     do {                                                            \
> > +             extern char _fw_##name##_sha_start[];           \
> > +             extern char _fw_##name##_sha_end[];                     \
> > +             firmware_ext_verify(                                    \
> > +                     (fwobj)->data, (fwobj)->size,                   \
> > +                     _fw_##name##_sha_start,                 \
> > +                     _fw_##name##_sha_end -                  \
> > +                     _fw_##name##_sha_start);                        \
> > +     } while (0)
> > +#endif
> > +
> >  #define __get_builtin_firmware(name, offset, fwobj)                  \
> >       do {                                                            \
> >               extern char _fw_##name##_start[];                       \
> >               extern char _fw_##name##_end[];                         \
> > -             extern char _fw_##name##_sha_start[];                   \
> > -             extern char _fw_##name##_sha_end[];                     \
> >               (fwobj)->data =3D _fw_##name##_start;                    =
 \
> >               (fwobj)->size =3D _fw_##name##_end - _fw_##name##_start; =
 \
> >               if (!(offset))                                          \
> >                       break;                                          \
> >               (fwobj)->data +=3D (offset);                             =
 \
> > -             firmware_ext_verify(                                    \
> > -                     (fwobj)->data, (fwobj)->size,                   \
> > -                     _fw_##name##_sha_start,                         \
> > -                     _fw_##name##_sha_end - _fw_##name##_sha_start   \
> > -             );                                                      \
> > +             __fw_ext_verify(name, fwobj);                           \
> >       } while (0)
> >
> >
> > diff --git a/include/pbl.h b/include/pbl.h
> > index fe4367825c..57ca8b4eb3 100644
> > --- a/include/pbl.h
> > +++ b/include/pbl.h
> > @@ -29,6 +29,8 @@ fdt_device_get_match_data(const void *fdt, const char=
 *nodepath,
> >
> >  int pbl_barebox_verify(const void *compressed_start, unsigned int len,
> >                      const void *hash, unsigned int hash_len);
> > +int pbl_barebox_verify_crc32(const void *data_start, unsigned int len,
> > +                          const void *crc, unsigned int crc_len);
> >  int pbl_load_fdt(const void *fdt, void *dest, int destsize);
> >
> >  #define PBL_MALLOC_SIZE SZ_128K
> > diff --git a/pbl/decomp.c b/pbl/decomp.c
> > index 1539a6b67e..ace121eac6 100644
> > --- a/pbl/decomp.c
> > +++ b/pbl/decomp.c
> > @@ -13,6 +13,10 @@
> >  #include <asm/sections.h>
> >  #include <pbl.h>
> >  #include <debug_ll.h>
> > +#ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
> > +#include <crc.h>
> > +#include <asm/unaligned.h>
> > +#endif
> >
> >  #define STATIC static
> >
> > @@ -90,6 +94,37 @@ int pbl_barebox_verify(const void *compressed_start,=
 unsigned int len,
> >       return memcmp(hash, computed_hash, SHA256_DIGEST_SIZE);
> >  }
> >
> > +#ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
> > +int pbl_barebox_verify_crc32(const void *data_start, unsigned int len,
> > +                          const void *crc, unsigned int crc_len)
> > +{
> > +     uint32_t expected, computed;
> > +
> > +     if (crc_len !=3D sizeof(uint32_t))
> > +             return -1;
> > +
> > +     /* Stored little-endian by .long in the .rodata.*.sha section. */
> > +     expected =3D get_unaligned_le32(crc);
> > +     computed =3D crc32(0, data_start, len);
> > +
> > +     if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> > +             puts_ll("CRC ");
> > +             puthexc_ll((computed >> 24) & 0xff);
> > +             puthexc_ll((computed >> 16) & 0xff);
> > +             puthexc_ll((computed >> 8)  & 0xff);
> > +             puthexc_ll(computed & 0xff);
> > +             puts_ll(" vs ");
> > +             puthexc_ll((expected >> 24) & 0xff);
> > +             puthexc_ll((expected >> 16) & 0xff);
> > +             puthexc_ll((expected >> 8)  & 0xff);
> > +             puthexc_ll(expected & 0xff);
> > +             putc_ll('\n');
> > +     }
> > +
> > +     return computed =3D=3D expected ? 0 : -1;
> > +}
> > +#endif
> > +
> >  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsign=
ed int len)
> >  {
> >       uint32_t pbl_hash_len;
> > diff --git a/scripts/gen-fw-s b/scripts/gen-fw-s
> > index 78c3193479..d7d7d15824 100755
> > --- a/scripts/gen-fw-s
> > +++ b/scripts/gen-fw-s
> > @@ -3,13 +3,20 @@
> >  #
> >  # Generate assembly source to embed firmware binary
> >  #
> > -# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags] [fwobjdir]
> > +# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags] [fwobjdir] [=
verify-algo]
> > +#
> > +# verify-algo selects the metadata emitted in the .rodata.<fwstr>.sha
> > +# section, matched by firmware_ext_verify() in include/firmware.h:
> > +#   sha256 (default) -- 32-byte SHA-256
> > +#   crc32            -- 4-byte CRC32 (zlib polynomial)
> > +#   none             -- no section, no symbols
> >
> >  fwname=3D$1
> >  fwdir=3D$2
> >  secprefix=3D$3
> >  secflags=3D$4
> >  fwobjdir=3D$5
> > +verify_algo=3D${6:-sha256}
> >
> >  fwstr=3D$(echo "$fwname" | tr '/.-' '___')
> >  fwpath=3D"$fwdir/$fwname"
> > @@ -19,8 +26,6 @@ if [ -f "$fwpath" ]; then
> >       fw_uncompressed=3D$(stat -c %s "$fwpath")
> >  fi
> >
> > -sha=3D$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&, /g;s=
/, $//')
> > -
> >  echo "/* Generated by scripts/gen-fw-s */"
> >  echo "#include <asm-generic/pointer.h>"
> >  echo ".section .note.GNU-stack,\"\",%progbits"
> > @@ -59,19 +64,39 @@ echo ".global _fw_z_${fwstr}_end"
> >  echo "_fw_z_${fwstr}_end:"
> >  echo "#endif"
> >
> > -# include sha256, needed for external firmware
> > -echo "    .section .rodata.${fwstr}.sha"
> > -echo "    .p2align ASM_LGPTR"
> > -echo ".global _fw_${fwstr}_sha_start"
> > -echo "_fw_${fwstr}_sha_start:"
> > -echo "    .byte ${sha}"
> > -echo ".global _fw_${fwstr}_sha_end"
> > -echo "_fw_${fwstr}_sha_end:"
> > -if [ -f "$fwpath" ]; then
> > -     echo ".if _fw_${fwstr}_sha_start + 32 - _fw_${fwstr}_sha_end"
> > -     echo ".error \"sha256sum invalid\""
> > -     echo ".endif"
> > -fi
> > +# verify metadata for fw-external blobs, consumed by firmware_ext_veri=
fy()
> > +# in include/firmware.h. Driven by the PBL_FIRMWARE_EXT_VERIFY Kconfig
> > +# choice (passed in from firmware/Makefile).
> > +case "$verify_algo" in
> > +none)
> > +     ;;
> > +crc32)
> > +     crc=3D$(python3 -c 'import sys,zlib; sys.stdout.write("0x%08x" % =
zlib.crc32(open(sys.argv[1],"rb").read()))' \
> > +             "$fwpath" 2>/dev/null || echo "0x00000000")
> > +     echo "    .section .rodata.${fwstr}.sha"
> > +     echo "    .p2align 2"
> > +     echo ".global _fw_${fwstr}_sha_start"
> > +     echo "_fw_${fwstr}_sha_start:"
> > +     echo "    .long ${crc}"
> > +     echo ".global _fw_${fwstr}_sha_end"
> > +     echo "_fw_${fwstr}_sha_end:"
> > +     ;;
> > +sha256|*)
> > +     sha=3D$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&,=
 /g;s/, $//')
> > +     echo "    .section .rodata.${fwstr}.sha"
> > +     echo "    .p2align ASM_LGPTR"
> > +     echo ".global _fw_${fwstr}_sha_start"
> > +     echo "_fw_${fwstr}_sha_start:"
> > +     echo "    .byte ${sha}"
> > +     echo ".global _fw_${fwstr}_sha_end"
> > +     echo "_fw_${fwstr}_sha_end:"
> > +     if [ -f "$fwpath" ]; then
> > +             echo ".if _fw_${fwstr}_sha_start + 32 - _fw_${fwstr}_sha_=
end"
> > +             echo ".error \"sha256sum invalid\""
> > +             echo ".endif"
> > +     fi
> > +     ;;
> > +esac
> >
> >  # include a string containing the firmware name. When a non existing
> >  # firmware is referenced in the PBL then _fwname_${fwstr} is reference=
d
> >
> > base-commit: 6c70fb327d486376c1f2e37dfff2212cb9eebb1b
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


