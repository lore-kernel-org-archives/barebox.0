Delivery-date: Mon, 17 Oct 2022 21:48:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okW6U-00BtD0-21
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 21:48:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okW6R-0004uJ-Ra
	for lore@pengutronix.de; Mon, 17 Oct 2022 21:48:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AFULDvkZ7vKtiA6Y7g454D6NcE3GthVgRqaLB4ZaJg4=; b=k71dBa/I+c8k1mfMsL2ZSgi21g
	v2vDh1oTli2PGGyxf7hHAvtmQtZSI1Jci8vmDC4EnfC9mUga/TbDg5lcrF17ol3+NDagZ0ai5E8jo
	NVZokuqqmK5XtbLX9ILSLwMciBAFEE8SWP8LHArKzMcbbGCltXbxPubWqWIi/H049Djs+3reSWLaM
	nvRDX6dbTFBZJrfp1lMjiHTe5kQV+aOlrW/cN8fQfRvlbykQnG8BCokVBZm7tB16u0PN5viB3BbB/
	fA9/SiifDxOAqGztfQFOqlhlUADymQGsg6shFXu12Jj7YazpK7s2bD4IRp5UJAtp03beKZuwZmSxK
	R5xJKV6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okW4d-00EbPx-LI; Mon, 17 Oct 2022 19:46:55 +0000
Received: from esa1.hc776-43.c3s2.iphmx.com ([216.71.156.243])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okW4Y-00EbOX-KO
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 19:46:52 +0000
X-IronPort-RemoteIP: 104.47.17.175
X-IronPort-MID: 2414375
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-vi1eur05lp2175.outbound.protection.outlook.com (HELO EUR05-VI1-obe.outbound.protection.outlook.com) ([104.47.17.175])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Oct 2022 21:46:46 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oXhnkCDSDPw8560qjjHh5vrbiYKL/I79GyH4yh2mIS9e+2tvA0FpB7TFNkpC4zFUeKxRN/iMnn+eXK9jn62vXh19XT9RLCHp5+eO/v9zpbYXo249Gj/P7aqwY/+4MDAl007+kmwEh5PZJJOK/HuLnl//ie8tok0SQBGwKf6yMaLr7meK5F25793hybpgSDiCXaqISMIv9gsjAEu5ieMP3LqwHQRo2YntXGzA/wb/345xXq9waDX75S1959TzwQO1uo9DstJh32ClyR8J+eunF+2WNdg0fqDlgtqfP91X5VFtNptn1D/c+WM/42BefhXn6+VysKcf5gaWocz2zKMQSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AFULDvkZ7vKtiA6Y7g454D6NcE3GthVgRqaLB4ZaJg4=;
 b=VPsML9R+GJ3KBXV4Pk3O5aDn3yMPi3hcrRJAzgNYrr7JCaii8wNCaHcY13sgum4lmLai8te2bDFyHAg6MzQKoHMMgUB+64cIF2pJ7r1b5XodeKquS0FGRa38Nf3NBYEtmZT2Lea45XVNfr6RT8Zif5DFMEouPpk4t7h41gEhdBqALTRG3Drqssd7Wfs76399OVq/j0YAPdk8v4NoAY1FqmRDE6j+jzuhWeEvfCREs3Gac0ILBOlciu6wyqxuBHUIY1RpYsZpEO8DI/vQ96YQ8GyBd/IqDR5jIiY42rvWFInD9zpJi32ucdjDkdF+aidx3kvT0n4zk0yQWWxlUujTyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AFULDvkZ7vKtiA6Y7g454D6NcE3GthVgRqaLB4ZaJg4=;
 b=cLaw0e0NOzWflAQC1Nfvr6RuU9cFJiOgaLjvmPTlzUqvl/yn+5ls0pro6sYnuN0cZx3hpAdR9RkijKeAm3l3hshNWwCn1Dfc+qWEsLq8zma9tRJyhHXrKkWyNmOCJTjyvOizRKbPDr6QghHUTKU35rVcxUkqoIfuOxkHWc86v+s=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by PAVPR03MB9528.eurprd03.prod.outlook.com (2603:10a6:102:302::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.32; Mon, 17 Oct
 2022 19:46:44 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::15d2:cdbd:bf39:e1f4]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::15d2:cdbd:bf39:e1f4%5]) with mapi id 15.20.5723.032; Mon, 17 Oct 2022
 19:46:44 +0000
From: =?iso-8859-1?Q?Hans_Christian_L=F8nstad?= <hcl@datarespons.no>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	=?iso-8859-1?Q?Hans_Christian_L=F8nstad?= <hcl@datarespons.no>
Thread-Topic: [RFT PATCH master 0/3] soc: imx8m-featctrl: fixes and first 8MP
 support
Thread-Index: AQHY4i9LrNja/9UhIEe6dSJItpIJ2K4S/f8A
Date: Mon, 17 Oct 2022 19:46:44 +0000
Message-ID: <435DD691-93D6-417E-82A6-405EEC677DC2@datarespons.no>
References: <20221017134929.622022-1-a.fatoum@pengutronix.de>
In-Reply-To: <20221017134929.622022-1-a.fatoum@pengutronix.de>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.120.41.1.1)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|PAVPR03MB9528:EE_
x-ms-office365-filtering-correlation-id: 93b3f5ca-dfa2-426d-a33b-08dab0785235
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  uyE3fkJui0VVmVZMbA9V8DIfQfC61jAzvB3eIiy7kkhBacT9osBZfGEfDO2WnGaIfasLWGh5mBKOxfsBBgN1TFiVhAOKxx9h6pwYiMjfLHqLiSzwZ2rC+gGvom+MQzAn+o2yHFckn3HfANWeXU59YQ7G5/K3HlybyJl6TP99T3U//x/POQeZhglBtGIh86YmQgJ94PUdarLtftjEF5e9a9RSGCZ7slae5MUw/nmBMaelC8Z/pnqR19CZDW/r435BkHXulaCLLdOji5o7Ddkad/cHMAyf10hFQqbkFMAiezXaBY5Xk23nRTObYpHlVGRUSxYiAjKvqLKwvraOvPGMBrptjPkdn2QVDXK7HKwG1JGbTiBUn08BHD+qwoYsVBHdqY1BojnEywdfDsr+/J8yaMyN43b5qjbG/UcPJLq0ENevUmvlsydlslGbWcLGBdU4TmSDBDiRRMgrNA5OPv80WRb5B/oKiAzk3qGi6m3qBUt+nNZ/ZWhQ1hxpLE/0Ru0jE7IK/xxDE3ijHp7jYDD6cbHqC08V34v4KYnZFLSfpUWN706FbfDSJFak1pSY2ynQJmd4+ZV5KaVN87pRSiTuDWXg7oV7eirLGTSX/EFz6ACK63H+GuXW1aEl2w31m9KkLzuV5eHy15Do9yGh0hxc1bK8dZCoYQMwSKVh0NiThcE9/MzIA5qkNaBCHM5CjnjbfPJBiWEI0eaQLpNPNjQnJqhWTsSenvjlLmefF7/lkibETCVPiJe51ykcmKH3QbOckNhed09wVuPLoOYDKMwQT5vO2nZE1BNUJBV1k2/DRiXq9+zHDVGtMXqUW1RmaIQRepUnsqpVet44WelEcLe4pA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(346002)(366004)(39850400004)(376002)(396003)(451199015)(6916009)(54906003)(316002)(8936002)(5660300002)(2616005)(64756008)(33656002)(186003)(6512007)(26005)(86362001)(36756003)(4744005)(2906002)(66556008)(76116006)(66946007)(83380400001)(107886003)(8676002)(91956017)(4326008)(66446008)(66476007)(55236004)(6506007)(41300700001)(122000001)(478600001)(38100700002)(6486002)(38070700005)(71200400001)(32563001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?D0Ic5zcU9BuBkBY69d4oJzMpjpWw0krrPYTh4lrU5HQLTdIWJlVd+h40+l?=
 =?iso-8859-1?Q?V4B+32MmsEUT5Da4clHV3a1GEm0toxWfmS5qFQD9DT7uXNpnzprN+WmFfU?=
 =?iso-8859-1?Q?AQj6fIB8iRUOUEj3OzmGYsrCdUW8SMIDYc91q9RuTYPS12bZMO3QP4evo2?=
 =?iso-8859-1?Q?vEko9J8+s908rs+8O5gcUImpuWbgW7TqwrxVD934YCE7jThFYGAI0Ouctu?=
 =?iso-8859-1?Q?0BcfyZzm8cckD7Y1G/FX6po9m5C1TfQZqR8fZ3im2ZfNEAXQG5eTQzszcA?=
 =?iso-8859-1?Q?zeSNf/O2QAgxv0uNZrRBgb0kb2p+eaPyezTdjpc4JFp8zBRhkQ0D+CJBVm?=
 =?iso-8859-1?Q?BLPwt0/heuorTP2dmJ4ZQwmLUUvGr/tDZkY6Ecg3BhxySl8PrnMYDWVHvX?=
 =?iso-8859-1?Q?wVNL5De6GRRc3scxvAdYaBkqJl+ZXqWhRIJG166sBRMZgI1mP9KVyUn+/d?=
 =?iso-8859-1?Q?GtuYH0x1XPLEUi3qz6m54+UArnCgGlw980kDFO4xfJLg71ntbUlE721QEd?=
 =?iso-8859-1?Q?vaiqeev0gPyjkGPFoT48VSH70Rtx24ULhOjyRr+GA9HqRS+tRKqRb7gNBC?=
 =?iso-8859-1?Q?7ZYo1qUoQfGZ1/JudtmtQpPX4nAgr3yNvyuX854VPGRiCdIWWyqOHdK6C3?=
 =?iso-8859-1?Q?/3Zf0FeqoU6XjkYVPP5AKWVNpEm2R9BCFHG3ZSKE3DrBlxHkghK2OhMEHa?=
 =?iso-8859-1?Q?ntgT0ppWOqQS4fCPFLTWhBgnqwLX0+Q7E/OD/Ls99dZVljWFLpCWfWN27X?=
 =?iso-8859-1?Q?iA9zbx5Y/QkwhIcKw3n1JpASrNPPgsYb2chaUF4OwZ0doNW/N1RbQQ4/U7?=
 =?iso-8859-1?Q?AyWozS6Qysh9RirNttRlmp1UaPjG0bAFW/dM4S5HW049mOxXR3lkoAVKQI?=
 =?iso-8859-1?Q?5YfKVIi4Rp7amkO0nzNkffcHFyyWnDF996A39hu7u3ptr7EvV6OIuMeKsW?=
 =?iso-8859-1?Q?DwDB1zpG41Wx7S5pz2z98fa2O0X8A/64e8ZlNMiQ807kK15YZLfCYYfPKY?=
 =?iso-8859-1?Q?EXeM8zWMYcBHpZETiXemGCsKeyFiYr8QTqmsaBwEPn20yFKJGDW5jGkDLv?=
 =?iso-8859-1?Q?EaJ6u+GOHSeX/RuefvESdcxhtyq3EBN98WplqwgYWVJEcuf27F4t11/kso?=
 =?iso-8859-1?Q?rPHQboXHg9SBsVjSkmkGeQxUlE/Vq7mueoRef1UYB8TzLLciSI5TwRikId?=
 =?iso-8859-1?Q?z/0X9Gl1wjZjRPhXyoPMrmwCSZBPUvJF+PNxkn0fx/UoFMfuLbGHIJFbKF?=
 =?iso-8859-1?Q?KnjRGncRo7UAf16YpOpQU0wKgmp+Wli0mwAOKPjSnvzrzevkzXKWqpf6Pk?=
 =?iso-8859-1?Q?/2Xj6yZsaj9Wu6qw7F0+jDIqCS+PKQNPNVewTncqyarBXAklk9YcgceqlQ?=
 =?iso-8859-1?Q?iqd8WByT6VKz2ucURq6mSiwowev5LlYGuKocbLwcS/e0FTszCSXL/7OWue?=
 =?iso-8859-1?Q?d5KNbibdY7PMu9YhkTf///KPK91qUw7/714yHblc+DEkUQDrOpLHbxO9O2?=
 =?iso-8859-1?Q?mRhUiwdqpHkOTnSdDEqE8GytARkJEAn8XDWW9Q5FEpxQBvdjDc242N38/i?=
 =?iso-8859-1?Q?G8dOJpIYo1EqeVP1l8ucGrDRjuqqWD2DgcNLv6jKrbm3sugYI5+ApvoPPC?=
 =?iso-8859-1?Q?B1Ben/ON1nWYZLTOVY4G28ZFA+frIIoU2U?=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <15B25279BDECBD45B8B467BFEFD7F9F0@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93b3f5ca-dfa2-426d-a33b-08dab0785235
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2022 19:46:44.7688
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XbOSjIeFWcODqkdGpJKEr7Ec3/lAgK1gx+yqNOMKJPsalA2o0p7Pcf9A5mht9Oha6rrfQ58RNMO2klcu+JS75A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR03MB9528
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_124650_954219_951DCEA4 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFT PATCH master 0/3] soc: imx8m-featctrl: fixes and first 8MP
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Works on deep-probe enabled imx8mp-evk as well as custom IMX8MP Quadlite.

Tested-by: Hans Christian Lonstad <hcl@datarespons.com>

> 17. okt. 2022 kl. 15:49 skrev Ahmad Fatoum <a.fatoum@pengutronix.de>:
>=20
> Newer upstream kernels may fail to boot with less featureful 8MP SoCs,
> because barebox doesn't fix the DT up appropriately. Fix that.
>=20
> @Hans, could you give this a test? I tested on 8MM only.
>=20
> Ahmad Fatoum (3):
>  dt-bindings: features: imx8m: fix typo in constant
>  soc: imx: imx8m-featctrl: check if all bits are set
>  ARM: i.MX8MP: add feature controller support for Plus
>=20
> arch/arm/dts/imx8mp.dtsi             | 43 ++++++++++++++++++++++++++++
> drivers/nvmem/ocotp.c                |  9 ++++++
> drivers/soc/imx/imx8m-featctrl.c     | 29 +++++++++++++------
> include/dt-bindings/features/imx8m.h |  6 ++--
> include/soc/imx8m/featctrl.h         |  3 ++
> 5 files changed, 79 insertions(+), 11 deletions(-)
>=20
> --=20
> 2.30.2
>=20



