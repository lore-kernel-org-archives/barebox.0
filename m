Delivery-date: Thu, 23 Feb 2023 16:38:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVDgI-00H2Z5-0x
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 16:38:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVDgE-00066j-7v
	for lore@pengutronix.de; Thu, 23 Feb 2023 16:38:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f9ye7dC3GvzNNqZCiFeoOmDteCsEGW0JZ+8ZZdR7kRg=; b=vC3sKwwQ6ppgCpqAnBtxdgNhcb
	6INjAgBpMGNNttQ4opJmPKa7oXNb9anQIUTk56qkG7tdrd0bYX+OWsEjW69THnK2bn/J2pXyjo29C
	JJuCD+Bmw924LH3zlGbOAcUYhiSlbeAs51ClibpknouOj5QluYMyE4WIrcwXBC2J1haTPwQ6bY+KL
	A3mFgfA4h5aifk8H87XJWA9k2yrAtYEwQ99uCSZyOBNtljg384kF16/bcgldZDBxN8tjofQc4+z1B
	DMKuER66XGhbKYeOnrSAAVwb0QgUUrzDlDTNXtXg3b4WEVPEA/WV5wgBqbfqT97UYLKXeMEtQnWfg
	ucW9kmZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVDeO-00H4q7-4G; Thu, 23 Feb 2023 15:36:52 +0000
Received: from mail-he1eur01on0722.outbound.protection.outlook.com ([2a01:111:f400:fe1e::722] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVDe4-00H4kf-1a
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 15:36:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZugkXqqKOxpwqTOUfBANg3ob7mhhhEBEheWYin8iW2zpdgm0KgxSpCs1+40scVk79coegoRBnEe7E5AtpVLmlHyGLFASorCDky8Ga6xqvMo+4zNHq6S8wJZryEAL17eaWs5aBnAoQo5ODpt3mfBnS4k9f31ysvcS4Oad8I1VjkPvJFBiKEM5lXL5Yo0uzWX13ofZcF0Lsd+Gw5IO7TDP614hINXibvWGBy6Pjusp/N6GPLFbcDEqbu0deruv2et3fEfybdKINiraXHsQUkEqjceHIa/sv5P73am1t5PXltPXxLRB6X7+P5jSk0GuOJibLYVMY5bY/kG0u8NHdLMUDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f9ye7dC3GvzNNqZCiFeoOmDteCsEGW0JZ+8ZZdR7kRg=;
 b=RqEFUH9U/O5POXaNqcV45/DUZqAuf7PlxO+jF2E5EfRhnqyosHxTnOyqudtoJ/r/jxJRoA1tsazfYKWKc9VmiRG3n3WsAnCnGpj1jyMjNV93sRAsORP5jm+0sBuxBBTsDhMZ1Lu9dwrqr/h76aFYg1hiXZEByFG8ebZzDjueVxybBE6U4qIGq30ue8Ga6XY0vcW7DzyBLzQz/+Dq4k1gAnbAi/eDmgHXc+UFeZNwaih/1lRxtS9oG8QInUld0UMFVeKm7F0F08e/dKAmRYbW6Wk0YMSF7re77rzUmw8QK+dOtjxFyWPPTcFaNxfCZXIburTgleJDvqpIxLlk4vY8sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vahle.com; dmarc=pass action=none header.from=vahle.com;
 dkim=pass header.d=vahle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vahle.onmicrosoft.com;
 s=selector2-vahle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f9ye7dC3GvzNNqZCiFeoOmDteCsEGW0JZ+8ZZdR7kRg=;
 b=N5Fv5mIS2nqO6ncfi+Xr+2RLh5Njr5MCDidZx8YcdlqUGr4aJn8TTpQoW+k6gAL1ZPvyR18qwCauJhhnXMl7HDMNGE8YP/gTk5cVjy+L0xBCEBjPu5y3Kvjbu+YH/EkkK2QyyiVfv11e6tUpPn1TP+zyF5AN2TzOoVgSGugaoxw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vahle.com;
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com (2603:10a6:20b:ff::21)
 by AS8PR04MB8625.eurprd04.prod.outlook.com (2603:10a6:20b:428::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Thu, 23 Feb
 2023 15:36:26 +0000
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::5680:8906:65f8:4dc6]) by AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::5680:8906:65f8:4dc6%6]) with mapi id 15.20.6134.018; Thu, 23 Feb 2023
 15:36:26 +0000
From: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
To: barebox@lists.infradead.org
Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Date: Thu, 23 Feb 2023 16:36:00 +0100
Message-Id: <20230223153601.59357-2-michael.kopfensteiner@vahle.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230223153601.59357-1-michael.kopfensteiner@vahle.com>
References: <20230223153601.59357-1-michael.kopfensteiner@vahle.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR2P278CA0075.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:52::12) To AM6PR04MB6503.eurprd04.prod.outlook.com
 (2603:10a6:20b:ff::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6PR04MB6503:EE_|AS8PR04MB8625:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cf4cd62-2d58-40df-86c4-08db15b3b9c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	9ITAybWLWzmwnKInOrT7Y6yM59T0CiB5CwdGSNK9FSpcQLttetZp8ck1QGdbs8kSE34UgjTBqRfjphVePT0D6yBqaq9qiVFqZ7lrigfGSnEPzAAc00sB8P4w3Oy5Md2M7SFuNZGUWrxrdO+77meM9drZa1e3DfzyIBhKplmQFkIYwOEbnV2l5/W1kG+v5ZZ81IhKVY8Cey7AFkVicdfiThII+o5NhX+8uX7WUcLim5wWG9VbdtZCgG5O4giRPui3G/KX0g65EXafwoh6NZSPdRSZxS26d8a0S5JiYH0xNB8Wj71Er63T9Kdn93G1b7VRvmb5XcJgqFS1LgNWBwb3uBUguJPKV7UfD/YCZo9fbv42PIXJM/DxAh49wqgs9sqZoUl1Ly4YcPDg+kw6Zxio8Og9QUk3ma116gFdw5Y4chWnsKXp//BEfAPYXXq0FpC+IvTi3mPkabv5fPWjuahMKgIqTvUly09CrwNMZ0W2anfxeuNUJIf1vDYR9HhLo9Sz9UQP8aqX51jAmwyMI83OwS3cFlDWxLPKWYaCCglSjcCq5qeipjwlsDoSMLta1AB0vNzxIqT9V6uQ/VWA6Qk1r+p9kxB3pAloGP2FRU6C0F454FIjGHPBUrQUUA7oxWPSnv3uVXIIA1lfDOzp9hs1sQY43/pHLoAzvxyqZfvcLqxf/zNsuXK1NIv+aFD+kMAdOAWXeGxzJi5anZIVRNEO5nzrNVrWbeA4a0cQHqdDBIT/LW0/0LUvgYCzlQQswqGD40P/P9E0ADW0d/dC+7fFZQ==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6503.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(366004)(376002)(396003)(39840400004)(451199018)(36756003)(86362001)(2906002)(8936002)(30864003)(41300700001)(5660300002)(44832011)(38350700002)(83380400001)(38100700002)(66476007)(4326008)(8676002)(316002)(66556008)(52116002)(6486002)(66946007)(966005)(478600001)(6916009)(186003)(26005)(2616005)(6512007)(1076003)(6666004)(107886003)(6506007)(32563001)(579004)(559001)(473944003)(414714003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?3O6abKCM3u2ls59X2W/RCs9S6wh70k1V7Ezah16/tPOG7LBaOdrGQ0ycHQid?=
 =?us-ascii?Q?uh5goCkOT66mDASI46WL/cF/O68abiSvB4vrYPVKb67z5sN2w/9etuLNvCyv?=
 =?us-ascii?Q?EOgg3Uv0qr1P3zoFnoMDlFEJ66Yf0udZxsQ1M0jDVwBhqjoX1lLTYitae6W9?=
 =?us-ascii?Q?AfrzzuzOKgk2RPPrNjQpu1TaIES99HxGOizScmWSm7ojtyg2LsKq/e4PMhCv?=
 =?us-ascii?Q?g4juV0O9dA13dHw1JA+HeBa5J1glLv043FUdk+AXZWV9uPDUujgg/07SZA2S?=
 =?us-ascii?Q?acUFBA2uYe2sYXnx/HNPq2AeeXKlU0ZVNKmWfNGSRSIdxGdsYEPzAJJEV9AM?=
 =?us-ascii?Q?4iVZ4sHyZ0AQHLJn6WUmogqPTI6IbAxEzoWxZgdViTM3Pmjch2FlieVEnH6V?=
 =?us-ascii?Q?zubDOlIrtcol1FzXcRSIsvLU9C1oJDjKA56qx9InNuv03gku68f2fKeeOsKt?=
 =?us-ascii?Q?FmUpEdxwnhvexw+FBapbBoh2A6GIz+UCO3h5ac/XkPy/xsKp9t4MJSA8Bmyt?=
 =?us-ascii?Q?2Fb+dxQG9AUApay6vp25KPS1AwfAU9p45SfQ2XRJeaAbeaDhq1equLlXC6Ay?=
 =?us-ascii?Q?h1qWdCTsIRBM1KsD3syMqAy7USKNIUI1OnkYfpigc/fZ8eAiWRaYFCVVF9Wj?=
 =?us-ascii?Q?Ef2SxhWlgAQIOk+4qeg7KP3F5gcF82D5vYTLY7IGBQ5YrO66Ia4mDmm0955c?=
 =?us-ascii?Q?lcTbAVkRlFT4lm5GuRoSJQLp57b5n5ZJlUF6z6KCUmp8Eb5HinOGP6KUkaYS?=
 =?us-ascii?Q?9eTeRFG3MnlM5cLY4817lqvnGPHQv/6R34InN7VYBQ1KdySuoa9DzFVwW+fC?=
 =?us-ascii?Q?buYoRoJCkFRLzfpuPWMEQ9cl5a5Qel/eKDNQ2ZB0G3m3d86xcLrp8rrvauEc?=
 =?us-ascii?Q?aVYq2XffRn2q4tKEhQfLnxA1Xo1pa1VrkvIdrc+wF1ikbGuflu0Uta5UWkC2?=
 =?us-ascii?Q?lPOdksoyTrYy73JHkcyzAipev0W0zat5Co4H3MBVrMnHnUqqnLM2mybta2gf?=
 =?us-ascii?Q?/uIAqY9pv7GKGw6sRgrgg5XkiZwx2BvFf0Q4btLrBKl1aBVxsQD8BltuH1tw?=
 =?us-ascii?Q?GifKXmsiQ8PLv2J6VMUekXGpVl1iM6TdOQwbRfGMtrCTqqYWzTC8OHaAZrNQ?=
 =?us-ascii?Q?eqB3pUXUQW9diRHCDaccGEOSZrsRB/+CzOMHl1wITmwpIhSW5oJQqZpt+aJl?=
 =?us-ascii?Q?OwGOksJciODMkAtyMEaumTvLyCZe3usg36WuKiTX5eNwn0EaFllzzSbNBb7Q?=
 =?us-ascii?Q?d1xYmKLisTV2ubtP5IIvcg8GH7L9rKDLSLVkfoEhe/p4eN5CzP2Ye/EZj9NV?=
 =?us-ascii?Q?DMP8dykAHaqemPIchYVsrAbYMF6VOq/V6dmwov7s+Xb4nAVXVANSj0yj6fry?=
 =?us-ascii?Q?sV4w/3coYJUY8S19t69LgwxVAFSN7jz4u8QySrPtjMOtPX/DxQzJ7JdgjaqW?=
 =?us-ascii?Q?R23dsEaeFevpLrtPSsvPk4124LgZbvoauGgJtC3VHUAVVQ6iUl4BxMHesf04?=
 =?us-ascii?Q?ntxvY8hpdIFl0h0zJntYfZDuu1fo3USotvsXan/UxODi3ubs7GJ7kYyYYTBr?=
 =?us-ascii?Q?HP1OTWCk7TSjh3gj0UYnrWt1fyLF8IO9rHcycdCiUIf5WollXnk5UlMTHM2n?=
 =?us-ascii?Q?DhFuOUCYX5pwNHlObxlh/RU=3D?=
X-OriginatorOrg: vahle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cf4cd62-2d58-40df-86c4-08db15b3b9c0
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6503.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2023 15:36:26.4976
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 251574ce-9f08-4528-b17a-70ad2956ff08
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pwMp/1SK161Iais4JlewGRKQfzBdgO/67yd7XnZBEd6a6vdBSPHbYK5BKPFcDO2ydXKFooQGcotKmdJT5VW903YEZ96J2wDj3NKK3dVeM+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8625
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_073632_508667_FE0B6884 
X-CRM114-Status: GOOD (  21.72  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] ARM: IMX8MP: add initial support for Variscite DT8MCustomBoard with iMX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Variscite DT8MCustomBoard is an eval board for the several Variscite
SOMs of their "DART" product line. This commit adds support for that
baseboard in combination with a DART-MX8M-PLUS SOM. The commit contains
an adapted version of the vendors device tree [1] and the vendors DDR
timings, taken from Variscite's public U-Boot sources [2].

Both files have been slightly changed to integrate well with barebox.

The boardsupport added with this commit does not yet support every
feature of the DT8MCustomBoard. Yet it already supports all basic
necessities to make use of barebox.

[1] https://github.com/varigit/linux-imx/tree/3f94f35bda827e8aa06beadb10c77358cfb6dad9
[2] https://github.com/varigit/uboot-imx/tree/7cad2ff68a508c71c572151a85bc786711bab969

Signed-off-by: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
---
 arch/arm/boards/Makefile                      |    1 +
 .../variscite-dt8mcustomboard-imx8mp/Makefile |    4 +
 .../variscite-dt8mcustomboard-imx8mp/board.c  |   84 ++
 .../flash-header-imx8mp-dart.imxcfg           |    7 +
 .../lowlevel.c                                |  136 ++
 .../lpddr4-timing.c                           | 1128 +++++++++++++++++
 arch/arm/configs/imx_v8_defconfig             |    3 +
 arch/arm/dts/Makefile                         |    1 +
 .../dts/imx8mp-var-dart-dt8mcustomboard.dts   |  681 ++++++++++
 arch/arm/dts/imx8mp-var-dart.dtsi             |  389 ++++++
 arch/arm/mach-imx/Kconfig                     |   10 +
 images/Makefile.imx                           |    5 +
 12 files changed, 2449 insertions(+)
 create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/Makefile
 create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c
 create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
 create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
 create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lpddr4-timing.c
 create mode 100644 arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
 create mode 100644 arch/arm/dts/imx8mp-var-dart.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f92094d15b..671f07c7bc 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -200,3 +200,4 @@ obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
 obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
 obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
 obj-$(CONFIG_MACH_RADXA_ROCK3)			+= radxa-rock3/
+obj-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP)	+= variscite-dt8mcustomboard-imx8mp/
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/Makefile b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/Makefile
new file mode 100644
index 0000000000..35d8640087
--- /dev/null
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o lpddr4-timing.o
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c
new file mode 100644
index 0000000000..35d78ea5e1
--- /dev/null
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c
@@ -0,0 +1,84 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Michael Kopfensteiner, VAHLE Automation GmbH
+ */
+
+#include <asm/memory.h>
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <init.h>
+#include <linux/phy.h>
+#include <linux/sizes.h>
+#include <mach/bbu.h>
+#include <mach/iomux-mx8mp.h>
+#include <gpio.h>
+#include <envfs.h>
+
+#define PHY_ID_ADIN1300		0x0283bc30
+#define PHY_ID_MODEL_MASK	0xfffffff0
+
+/*
+ * This fixup is necessary to properly configure the ADIN1300
+ * PHY on the SOM to properly communicate using RGMII.
+ * This fixup disables the PHY's internal 2ns RGMII receive clock
+ * delay. Without this configuration change, the system will
+ * be able to send Ethernet packages, but the MAC won't receive
+ * any response packages.
+ *
+ * This fixup is specific to the ADIN1300 PHY. This implementation
+ * was ported from Variscite's U-Boot sources.
+ */
+static int phy_fixup_adin1300(struct phy_device *dev) {
+	int ret;
+
+	pr_debug("BOARD: applying PHY fixup for ADIN1300\n");
+
+	ret = mdiobus_write(dev->bus, dev->addr, 0x0010, 0xFF23);
+	if (ret) {
+		pr_warn("ADIN1300 PHY fixup: failed to write EXT_REG_PTR\n");
+		return ret;
+	}
+
+	ret = mdiobus_write(dev->bus, dev->addr, 0x0011, 0x0E01);
+	if (ret)  {
+		pr_warn("ADIN1300 PHY fixup: failed to write EXT_REG_DATA\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int var_imx8mp_dart_cb_probe(struct device *dev)
+{
+	int emmc_bbu_flag = 0;
+	int sd_bbu_flag = 0;
+
+	phy_register_fixup_for_uid(PHY_ID_ADIN1300, PHY_ID_MODEL_MASK, phy_fixup_adin1300);
+
+	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() == 1) {
+		of_device_enable_path("/chosen/environment-sd");
+		sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	} else {
+		of_device_enable_path("/chosen/environment-emmc");
+		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	}
+
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
+	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
+
+	return 0;
+}
+
+static const struct of_device_id var_imx8mp_dart_cb_of_match[] = {
+	{ .compatible = "variscite,imx8mp-var-dart" },
+	{ /* Sentinel */ }
+};
+BAREBOX_DEEP_PROBE_ENABLE(var_imx8mp_dart_cb_of_match);
+
+static struct driver var_imx8mp_dart_cb_board_driver = {
+	.name = "board-var-imx8mp-dart-cb",
+	.probe = var_imx8mp_dart_cb_probe,
+	.of_compatible = var_imx8mp_dart_cb_of_match,
+};
+coredevice_platform_driver(var_imx8mp_dart_cb_board_driver);
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
new file mode 100644
index 0000000000..2b104edfb7
--- /dev/null
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+soc imx8mp
+
+loadaddr 0x918000
+max_load_size 0x3f000
+ivtofs 0x0
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
new file mode 100644
index 0000000000..3eebb9e646
--- /dev/null
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <io.h>
+#include <common.h>
+#include <debug_ll.h>
+#include <firmware.h>
+#include <image-metadata.h>
+#include <asm/mmu.h>
+#include <asm/cache.h>
+#include <asm/sections.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <pbl/i2c.h>
+#include <pbl/pmic.h>
+#include <linux/sizes.h>
+#include <mach/atf.h>
+#include <mach/xload.h>
+#include <mach/esdctl.h>
+#include <mach/generic.h>
+#include <mach/imx8mp-regs.h>
+#include <mach/iomux-mx8mp.h>
+#include <mach/imx8m-ccm-regs.h>
+#include <mfd/pca9450.h>
+#include <soc/imx8m/ddr.h>
+#include <soc/fsl/fsl_udc.h>
+
+extern char __dtb_z_imx8mp_var_dart_dt8mcustomboard_start[];
+
+#define UART_PAD_CTRL   MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | MX8MP_PAD_CTL_FSEL)
+#define I2C_PAD_CTRL	MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
+					MX8MP_PAD_CTL_HYS | \
+					MX8MP_PAD_CTL_PUE | \
+					MX8MP_PAD_CTL_PE)
+
+static void setup_uart(void)
+{
+	void __iomem *uart = IOMEM(MX8M_UART1_BASE_ADDR);
+
+	imx8m_early_setup_uart_clock();
+
+	imx8mp_setup_pad(MX8MP_PAD_UART1_TXD__UART1_DCE_TX | UART_PAD_CTRL);
+	imx8mp_setup_pad(MX8MP_PAD_UART1_RXD__UART1_DCE_RX | UART_PAD_CTRL);
+	imx8m_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
+
+static struct pmic_config pca9450_cfg[] = {
+	/* BUCKxOUT_DVS0/1 control BUCK123 output */
+	{ PCA9450_BUCK123_DVS, 0x29 },
+	/*
+	 * increase VDD_SOC to typical value 0.95V before first
+	 * DRAM access, set DVS1 to 0.85v for suspend.
+	 * Enable DVS control through PMIC_STBY_REQ and
+	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
+	 */
+	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
+	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
+	{ PCA9450_BUCK1CTRL, 0x59 },
+	/* set WDOG_B_CFG to cold reset */
+	{ PCA9450_RESET_CTRL, 0xA1 },
+};
+
+static void power_init_board(void)
+{
+	struct pbl_i2c *i2c;
+
+	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
+	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
+
+	imx8mm_early_clock_init();
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
+
+	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
+
+	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
+}
+
+extern struct dram_timing_info var_dart_imx8mp_dram_timing;
+
+static void start_atf(void)
+{
+	/*
+	 * If we are in EL3 we are running for the first time and need to
+	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
+	 * to DRAM in EL2.
+	 */
+	if (current_el() != 3)
+		return;
+
+	power_init_board();
+
+	imx8mp_ddr_init(&var_dart_imx8mp_dram_timing, DRAM_TYPE_LPDDR4);
+
+	imx8mp_load_and_start_image_via_tfa();
+}
+
+static __noreturn noinline void variscite_imx8mp_dart_cb_start(void)
+{
+	setup_uart();
+	start_atf();
+
+	/*
+	 * Standard entry we hit once we initialized both DDR and ATF
+	 */
+	imx8mp_barebox_entry(__dtb_z_imx8mp_var_dart_dt8mcustomboard_start);
+}
+
+/*
+ * Power-on execution flow of nxp_imx8mp_vardart_start() might not be
+ * obvious for a very first read, so here's, hopefully helpful,
+ * summary:
+ *
+ * 1. MaskROM uploads PBL into OCRAM and that's where this function is
+ *    executed for the first time. At entry the exception level is EL3.
+ *
+ * 2. DDR is initialized and the image is loaded from storage into DRAM. The PBL
+ *    part is copied from OCRAM to the TF-A return address in DRAM.
+ *
+ * 3. TF-A is executed and exits into the PBL code in DRAM. TF-A has taken us
+ *    from EL3 to EL2.
+ *
+ * 4. Standard barebox boot flow continues
+ */
+ENTRY_FUNCTION(start_variscite_imx8mp_dart, r0, r1, r2)
+{
+	imx8mp_cpu_lowlevel_init();
+	relocate_to_current_adr();
+	setup_c();
+
+	IMD_USED_OF(imx8mp_var_dart_dt8mcustomboard);
+
+	variscite_imx8mp_dart_cb_start();
+}
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lpddr4-timing.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lpddr4-timing.c
new file mode 100644
index 0000000000..b85935ca05
--- /dev/null
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lpddr4-timing.c
@@ -0,0 +1,1128 @@
+/*
+ * Copyright 2019 NXP
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ *
+ * Generated code from MX8M_DDR_tool
+ *
+ * Align with uboot version:
+ * imx_v2019.04_5.4.x and above version
+ *
+ * These sources have been migrated from Variscite's public U-Boot sources for
+ * the i.MX8MP DART CustomBoard (= DT8MCustomBoard) eval kit. Solely this
+ * comment and the header-includes have been adapted.
+ */
+
+#include <common.h>
+#include <soc/imx8m/ddr.h>
+#include <soc/imx8m/lpddr4_define.h>
+
+static struct dram_cfg_param ddr_ddrc_cfg[] = {
+	/** Initialize DDRC registers **/
+	{ 0x3d400304, 0x1 },
+	{ 0x3d400030, 0x1 },
+	{ 0x3d400000, 0xa3080020 },
+	{ 0x3d400020, 0x1323 },
+	{ 0x3d400024, 0x1e84800 },
+	{ 0x3d400064, 0x7a0118 },
+	{ 0x3d400070, 0x61027f10 },
+	{ 0x3d400074, 0x7b0 },
+	{ 0x3d4000d0, 0xc00307a3 },
+	{ 0x3d4000d4, 0xc50000 },
+	{ 0x3d4000dc, 0xf4003f },
+	{ 0x3d4000e0, 0x330000 },
+	{ 0x3d4000e8, 0x660048 },
+	{ 0x3d4000ec, 0x160048 },
+	{ 0x3d400100, 0x2028222a },
+	{ 0x3d400104, 0x8083f },
+	{ 0x3d40010c, 0xe0e000 },
+	{ 0x3d400110, 0x12040a12 },
+	{ 0x3d400114, 0x2050f0f },
+	{ 0x3d400118, 0x1010009 },
+	{ 0x3d40011c, 0x501 },
+	{ 0x3d400130, 0x20800 },
+	{ 0x3d400134, 0xe100002 },
+	{ 0x3d400138, 0x120 },
+	{ 0x3d400144, 0xc80064 },
+	{ 0x3d400180, 0x3e8001e },
+	{ 0x3d400184, 0x3207a12 },
+	{ 0x3d400188, 0x0 },
+	{ 0x3d400190, 0x49f820e },
+	{ 0x3d400194, 0x80303 },
+	{ 0x3d4001b4, 0x1f0e },
+	{ 0x3d4001a0, 0xe0400018 },
+	{ 0x3d4001a4, 0xdf00e4 },
+	{ 0x3d4001a8, 0x80000000 },
+	{ 0x3d4001b0, 0x11 },
+	{ 0x3d4001c0, 0x1 },
+	{ 0x3d4001c4, 0x1 },
+	{ 0x3d4000f4, 0xc99 },
+	{ 0x3d400108, 0x9121c1c },
+	{ 0x3d400200, 0x17 },
+	{ 0x3d40020c, 0x0 },
+	{ 0x3d400210, 0x1f1f },
+	{ 0x3d400204, 0x80808 },
+	{ 0x3d400214, 0x7070707 },
+	{ 0x3d400218, 0x7070707 },
+	{ 0x3d40021c, 0xf0f },
+	{ 0x3d400250, 0x1705 },
+	{ 0x3d400254, 0x2c },
+	{ 0x3d40025c, 0x4000030 },
+	{ 0x3d400264, 0x900093e7 },
+	{ 0x3d40026c, 0x2005574 },
+	{ 0x3d400400, 0x111 },
+	{ 0x3d400404, 0x72ff },
+	{ 0x3d400408, 0x72ff },
+	{ 0x3d400494, 0x2100e07 },
+	{ 0x3d400498, 0x620096 },
+	{ 0x3d40049c, 0x1100e07 },
+	{ 0x3d4004a0, 0xc8012c },
+	{ 0x3d402020, 0x1021 },
+	{ 0x3d402024, 0x30d400 },
+	{ 0x3d402050, 0x20d000 },
+	{ 0x3d402064, 0xc001c },
+	{ 0x3d4020dc, 0x840000 },
+	{ 0x3d4020e0, 0x330000 },
+	{ 0x3d4020e8, 0x660048 },
+	{ 0x3d4020ec, 0x160048 },
+	{ 0x3d402100, 0xa040305 },
+	{ 0x3d402104, 0x30407 },
+	{ 0x3d402108, 0x203060b },
+	{ 0x3d40210c, 0x505000 },
+	{ 0x3d402110, 0x2040202 },
+	{ 0x3d402114, 0x2030202 },
+	{ 0x3d402118, 0x1010004 },
+	{ 0x3d40211c, 0x301 },
+	{ 0x3d402130, 0x20300 },
+	{ 0x3d402134, 0xa100002 },
+	{ 0x3d402138, 0x1d },
+	{ 0x3d402144, 0x14000a },
+	{ 0x3d402180, 0x640004 },
+	{ 0x3d402190, 0x3818200 },
+	{ 0x3d402194, 0x80303 },
+	{ 0x3d4021b4, 0x100 },
+	{ 0x3d4020f4, 0xc99 },
+	{ 0x3d403020, 0x1021 },
+	{ 0x3d403024, 0xc3500 },
+	{ 0x3d403050, 0x20d000 },
+	{ 0x3d403064, 0x30007 },
+	{ 0x3d4030dc, 0x840000 },
+	{ 0x3d4030e0, 0x330000 },
+	{ 0x3d4030e8, 0x660048 },
+	{ 0x3d4030ec, 0x160048 },
+	{ 0x3d403100, 0xa010102 },
+	{ 0x3d403104, 0x30404 },
+	{ 0x3d403108, 0x203060b },
+	{ 0x3d40310c, 0x505000 },
+	{ 0x3d403110, 0x2040202 },
+	{ 0x3d403114, 0x2030202 },
+	{ 0x3d403118, 0x1010004 },
+	{ 0x3d40311c, 0x301 },
+	{ 0x3d403130, 0x20300 },
+	{ 0x3d403134, 0xa100002 },
+	{ 0x3d403138, 0x8 },
+	{ 0x3d403144, 0x50003 },
+	{ 0x3d403180, 0x190004 },
+	{ 0x3d403190, 0x3818200 },
+	{ 0x3d403194, 0x80303 },
+	{ 0x3d4031b4, 0x100 },
+	{ 0x3d4030f4, 0xc99 },
+	{ 0x3d400028, 0x0 },
+};
+
+/* PHY Initialize Configuration */
+static struct dram_cfg_param ddr_ddrphy_cfg[] = {
+	{ 0x100a0, 0x0 },
+	{ 0x100a1, 0x1 },
+	{ 0x100a2, 0x2 },
+	{ 0x100a3, 0x3 },
+	{ 0x100a4, 0x4 },
+	{ 0x100a5, 0x5 },
+	{ 0x100a6, 0x6 },
+	{ 0x100a7, 0x7 },
+	{ 0x110a0, 0x0 },
+	{ 0x110a1, 0x1 },
+	{ 0x110a2, 0x3 },
+	{ 0x110a3, 0x4 },
+	{ 0x110a4, 0x5 },
+	{ 0x110a5, 0x2 },
+	{ 0x110a6, 0x7 },
+	{ 0x110a7, 0x6 },
+	{ 0x120a0, 0x0 },
+	{ 0x120a1, 0x1 },
+	{ 0x120a2, 0x3 },
+	{ 0x120a3, 0x2 },
+	{ 0x120a4, 0x5 },
+	{ 0x120a5, 0x4 },
+	{ 0x120a6, 0x7 },
+	{ 0x120a7, 0x6 },
+	{ 0x130a0, 0x0 },
+	{ 0x130a1, 0x1 },
+	{ 0x130a2, 0x2 },
+	{ 0x130a3, 0x3 },
+	{ 0x130a4, 0x4 },
+	{ 0x130a5, 0x5 },
+	{ 0x130a6, 0x6 },
+	{ 0x130a7, 0x7 },
+	{ 0x1005f, 0x1ff },
+	{ 0x1015f, 0x1ff },
+	{ 0x1105f, 0x1ff },
+	{ 0x1115f, 0x1ff },
+	{ 0x1205f, 0x1ff },
+	{ 0x1215f, 0x1ff },
+	{ 0x1305f, 0x1ff },
+	{ 0x1315f, 0x1ff },
+	{ 0x11005f, 0x1ff },
+	{ 0x11015f, 0x1ff },
+	{ 0x11105f, 0x1ff },
+	{ 0x11115f, 0x1ff },
+	{ 0x11205f, 0x1ff },
+	{ 0x11215f, 0x1ff },
+	{ 0x11305f, 0x1ff },
+	{ 0x11315f, 0x1ff },
+	{ 0x21005f, 0x1ff },
+	{ 0x21015f, 0x1ff },
+	{ 0x21105f, 0x1ff },
+	{ 0x21115f, 0x1ff },
+	{ 0x21205f, 0x1ff },
+	{ 0x21215f, 0x1ff },
+	{ 0x21305f, 0x1ff },
+	{ 0x21315f, 0x1ff },
+	{ 0x55, 0x1ff },
+	{ 0x1055, 0x1ff },
+	{ 0x2055, 0x1ff },
+	{ 0x3055, 0x1ff },
+	{ 0x4055, 0x1ff },
+	{ 0x5055, 0x1ff },
+	{ 0x6055, 0x1ff },
+	{ 0x7055, 0x1ff },
+	{ 0x8055, 0x1ff },
+	{ 0x9055, 0x1ff },
+	{ 0x200c5, 0x18 },
+	{ 0x1200c5, 0x7 },
+	{ 0x2200c5, 0x7 },
+	{ 0x2002e, 0x2 },
+	{ 0x12002e, 0x2 },
+	{ 0x22002e, 0x2 },
+	{ 0x90204, 0x0 },
+	{ 0x190204, 0x0 },
+	{ 0x290204, 0x0 },
+	{ 0x20024, 0x1e3 },
+	{ 0x2003a, 0x2 },
+	{ 0x120024, 0x1e3 },
+	{ 0x2003a, 0x2 },
+	{ 0x220024, 0x1e3 },
+	{ 0x2003a, 0x2 },
+	{ 0x20056, 0x3 },
+	{ 0x120056, 0x3 },
+	{ 0x220056, 0x3 },
+	{ 0x1004d, 0xe00 },
+	{ 0x1014d, 0xe00 },
+	{ 0x1104d, 0xe00 },
+	{ 0x1114d, 0xe00 },
+	{ 0x1204d, 0xe00 },
+	{ 0x1214d, 0xe00 },
+	{ 0x1304d, 0xe00 },
+	{ 0x1314d, 0xe00 },
+	{ 0x11004d, 0xe00 },
+	{ 0x11014d, 0xe00 },
+	{ 0x11104d, 0xe00 },
+	{ 0x11114d, 0xe00 },
+	{ 0x11204d, 0xe00 },
+	{ 0x11214d, 0xe00 },
+	{ 0x11304d, 0xe00 },
+	{ 0x11314d, 0xe00 },
+	{ 0x21004d, 0xe00 },
+	{ 0x21014d, 0xe00 },
+	{ 0x21104d, 0xe00 },
+	{ 0x21114d, 0xe00 },
+	{ 0x21204d, 0xe00 },
+	{ 0x21214d, 0xe00 },
+	{ 0x21304d, 0xe00 },
+	{ 0x21314d, 0xe00 },
+	{ 0x10049, 0xeba },
+	{ 0x10149, 0xeba },
+	{ 0x11049, 0xeba },
+	{ 0x11149, 0xeba },
+	{ 0x12049, 0xeba },
+	{ 0x12149, 0xeba },
+	{ 0x13049, 0xeba },
+	{ 0x13149, 0xeba },
+	{ 0x110049, 0xeba },
+	{ 0x110149, 0xeba },
+	{ 0x111049, 0xeba },
+	{ 0x111149, 0xeba },
+	{ 0x112049, 0xeba },
+	{ 0x112149, 0xeba },
+	{ 0x113049, 0xeba },
+	{ 0x113149, 0xeba },
+	{ 0x210049, 0xeba },
+	{ 0x210149, 0xeba },
+	{ 0x211049, 0xeba },
+	{ 0x211149, 0xeba },
+	{ 0x212049, 0xeba },
+	{ 0x212149, 0xeba },
+	{ 0x213049, 0xeba },
+	{ 0x213149, 0xeba },
+	{ 0x43, 0x63 },
+	{ 0x1043, 0x63 },
+	{ 0x2043, 0x63 },
+	{ 0x3043, 0x63 },
+	{ 0x4043, 0x63 },
+	{ 0x5043, 0x63 },
+	{ 0x6043, 0x63 },
+	{ 0x7043, 0x63 },
+	{ 0x8043, 0x63 },
+	{ 0x9043, 0x63 },
+	{ 0x20018, 0x3 },
+	{ 0x20075, 0x4 },
+	{ 0x20050, 0x0 },
+	{ 0x20008, 0x3e8 },
+	{ 0x120008, 0x64 },
+	{ 0x220008, 0x19 },
+	{ 0x20088, 0x9 },
+	{ 0x200b2, 0x104 },
+	{ 0x10043, 0x5a1 },
+	{ 0x10143, 0x5a1 },
+	{ 0x11043, 0x5a1 },
+	{ 0x11143, 0x5a1 },
+	{ 0x12043, 0x5a1 },
+	{ 0x12143, 0x5a1 },
+	{ 0x13043, 0x5a1 },
+	{ 0x13143, 0x5a1 },
+	{ 0x1200b2, 0x104 },
+	{ 0x110043, 0x5a1 },
+	{ 0x110143, 0x5a1 },
+	{ 0x111043, 0x5a1 },
+	{ 0x111143, 0x5a1 },
+	{ 0x112043, 0x5a1 },
+	{ 0x112143, 0x5a1 },
+	{ 0x113043, 0x5a1 },
+	{ 0x113143, 0x5a1 },
+	{ 0x2200b2, 0x104 },
+	{ 0x210043, 0x5a1 },
+	{ 0x210143, 0x5a1 },
+	{ 0x211043, 0x5a1 },
+	{ 0x211143, 0x5a1 },
+	{ 0x212043, 0x5a1 },
+	{ 0x212143, 0x5a1 },
+	{ 0x213043, 0x5a1 },
+	{ 0x213143, 0x5a1 },
+	{ 0x200fa, 0x1 },
+	{ 0x1200fa, 0x1 },
+	{ 0x2200fa, 0x1 },
+	{ 0x20019, 0x1 },
+	{ 0x120019, 0x1 },
+	{ 0x220019, 0x1 },
+	{ 0x200f0, 0x660 },
+	{ 0x200f1, 0x0 },
+	{ 0x200f2, 0x4444 },
+	{ 0x200f3, 0x8888 },
+	{ 0x200f4, 0x5665 },
+	{ 0x200f5, 0x0 },
+	{ 0x200f6, 0x0 },
+	{ 0x200f7, 0xf000 },
+	{ 0x20025, 0x0 },
+	{ 0x2002d, 0x0 },
+	{ 0x12002d, 0x0 },
+	{ 0x22002d, 0x0 },
+	{ 0x2007d, 0x212 },
+	{ 0x12007d, 0x212 },
+	{ 0x22007d, 0x212 },
+	{ 0x2007c, 0x61 },
+	{ 0x12007c, 0x61 },
+	{ 0x22007c, 0x61 },
+	{ 0x1004a, 0x500 },
+	{ 0x1104a, 0x500 },
+	{ 0x1204a, 0x500 },
+	{ 0x1304a, 0x500 },
+	{ 0x2002c, 0x0 },
+};
+
+/* P0 message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp0_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54003, 0xfa0 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x2228 },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x131f },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54012, 0x310 },
+	{ 0x54019, 0x3ff4 },
+	{ 0x5401a, 0x33 },
+	{ 0x5401b, 0x4866 },
+	{ 0x5401c, 0x4800 },
+	{ 0x5401e, 0x16 },
+	{ 0x5401f, 0x3ff4 },
+	{ 0x54020, 0x33 },
+	{ 0x54021, 0x4866 },
+	{ 0x54022, 0x4800 },
+	{ 0x54024, 0x16 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x3 },
+	{ 0x54032, 0xf400 },
+	{ 0x54033, 0x333f },
+	{ 0x54034, 0x6600 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x48 },
+	{ 0x54037, 0x1600 },
+	{ 0x54038, 0xf400 },
+	{ 0x54039, 0x333f },
+	{ 0x5403a, 0x6600 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x48 },
+	{ 0x5403d, 0x1600 },
+	{ 0xd0000, 0x1 },
+};
+
+/* P1 message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp1_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54002, 0x101 },
+	{ 0x54003, 0x190 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x2228 },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x121f },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54012, 0x310 },
+	{ 0x54019, 0x84 },
+	{ 0x5401a, 0x33 },
+	{ 0x5401b, 0x4866 },
+	{ 0x5401c, 0x4800 },
+	{ 0x5401e, 0x16 },
+	{ 0x5401f, 0x84 },
+	{ 0x54020, 0x33 },
+	{ 0x54021, 0x4866 },
+	{ 0x54022, 0x4800 },
+	{ 0x54024, 0x16 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x3 },
+	{ 0x54032, 0x8400 },
+	{ 0x54033, 0x3300 },
+	{ 0x54034, 0x6600 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x48 },
+	{ 0x54037, 0x1600 },
+	{ 0x54038, 0x8400 },
+	{ 0x54039, 0x3300 },
+	{ 0x5403a, 0x6600 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x48 },
+	{ 0x5403d, 0x1600 },
+	{ 0xd0000, 0x1 },
+};
+
+/* P2 message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp2_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54002, 0x102 },
+	{ 0x54003, 0x64 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x2228 },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x121f },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54012, 0x310 },
+	{ 0x54019, 0x84 },
+	{ 0x5401a, 0x33 },
+	{ 0x5401b, 0x4866 },
+	{ 0x5401c, 0x4800 },
+	{ 0x5401e, 0x16 },
+	{ 0x5401f, 0x84 },
+	{ 0x54020, 0x33 },
+	{ 0x54021, 0x4866 },
+	{ 0x54022, 0x4800 },
+	{ 0x54024, 0x16 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x3 },
+	{ 0x54032, 0x8400 },
+	{ 0x54033, 0x3300 },
+	{ 0x54034, 0x6600 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x48 },
+	{ 0x54037, 0x1600 },
+	{ 0x54038, 0x8400 },
+	{ 0x54039, 0x3300 },
+	{ 0x5403a, 0x6600 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x48 },
+	{ 0x5403d, 0x1600 },
+	{ 0xd0000, 0x1 },
+};
+
+/* P0 2D message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54003, 0xfa0 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x2228 },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x61 },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54010, 0x1f7f },
+	{ 0x54012, 0x310 },
+	{ 0x54019, 0x3ff4 },
+	{ 0x5401a, 0x33 },
+	{ 0x5401b, 0x4866 },
+	{ 0x5401c, 0x4800 },
+	{ 0x5401e, 0x16 },
+	{ 0x5401f, 0x3ff4 },
+	{ 0x54020, 0x33 },
+	{ 0x54021, 0x4866 },
+	{ 0x54022, 0x4800 },
+	{ 0x54024, 0x16 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x3 },
+	{ 0x54032, 0xf400 },
+	{ 0x54033, 0x333f },
+	{ 0x54034, 0x6600 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x48 },
+	{ 0x54037, 0x1600 },
+	{ 0x54038, 0xf400 },
+	{ 0x54039, 0x333f },
+	{ 0x5403a, 0x6600 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x48 },
+	{ 0x5403d, 0x1600 },
+	{ 0xd0000, 0x1 },
+};
+
+/* DRAM PHY init engine image */
+static struct dram_cfg_param ddr_phy_pie[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x90000, 0x10 },
+	{ 0x90001, 0x400 },
+	{ 0x90002, 0x10e },
+	{ 0x90003, 0x0 },
+	{ 0x90004, 0x0 },
+	{ 0x90005, 0x8 },
+	{ 0x90029, 0xb },
+	{ 0x9002a, 0x480 },
+	{ 0x9002b, 0x109 },
+	{ 0x9002c, 0x8 },
+	{ 0x9002d, 0x448 },
+	{ 0x9002e, 0x139 },
+	{ 0x9002f, 0x8 },
+	{ 0x90030, 0x478 },
+	{ 0x90031, 0x109 },
+	{ 0x90032, 0x0 },
+	{ 0x90033, 0xe8 },
+	{ 0x90034, 0x109 },
+	{ 0x90035, 0x2 },
+	{ 0x90036, 0x10 },
+	{ 0x90037, 0x139 },
+	{ 0x90038, 0xb },
+	{ 0x90039, 0x7c0 },
+	{ 0x9003a, 0x139 },
+	{ 0x9003b, 0x44 },
+	{ 0x9003c, 0x633 },
+	{ 0x9003d, 0x159 },
+	{ 0x9003e, 0x14f },
+	{ 0x9003f, 0x630 },
+	{ 0x90040, 0x159 },
+	{ 0x90041, 0x47 },
+	{ 0x90042, 0x633 },
+	{ 0x90043, 0x149 },
+	{ 0x90044, 0x4f },
+	{ 0x90045, 0x633 },
+	{ 0x90046, 0x179 },
+	{ 0x90047, 0x8 },
+	{ 0x90048, 0xe0 },
+	{ 0x90049, 0x109 },
+	{ 0x9004a, 0x0 },
+	{ 0x9004b, 0x7c8 },
+	{ 0x9004c, 0x109 },
+	{ 0x9004d, 0x0 },
+	{ 0x9004e, 0x1 },
+	{ 0x9004f, 0x8 },
+	{ 0x90050, 0x0 },
+	{ 0x90051, 0x45a },
+	{ 0x90052, 0x9 },
+	{ 0x90053, 0x0 },
+	{ 0x90054, 0x448 },
+	{ 0x90055, 0x109 },
+	{ 0x90056, 0x40 },
+	{ 0x90057, 0x633 },
+	{ 0x90058, 0x179 },
+	{ 0x90059, 0x1 },
+	{ 0x9005a, 0x618 },
+	{ 0x9005b, 0x109 },
+	{ 0x9005c, 0x40c0 },
+	{ 0x9005d, 0x633 },
+	{ 0x9005e, 0x149 },
+	{ 0x9005f, 0x8 },
+	{ 0x90060, 0x4 },
+	{ 0x90061, 0x48 },
+	{ 0x90062, 0x4040 },
+	{ 0x90063, 0x633 },
+	{ 0x90064, 0x149 },
+	{ 0x90065, 0x0 },
+	{ 0x90066, 0x4 },
+	{ 0x90067, 0x48 },
+	{ 0x90068, 0x40 },
+	{ 0x90069, 0x633 },
+	{ 0x9006a, 0x149 },
+	{ 0x9006b, 0x10 },
+	{ 0x9006c, 0x4 },
+	{ 0x9006d, 0x18 },
+	{ 0x9006e, 0x0 },
+	{ 0x9006f, 0x4 },
+	{ 0x90070, 0x78 },
+	{ 0x90071, 0x549 },
+	{ 0x90072, 0x633 },
+	{ 0x90073, 0x159 },
+	{ 0x90074, 0xd49 },
+	{ 0x90075, 0x633 },
+	{ 0x90076, 0x159 },
+	{ 0x90077, 0x94a },
+	{ 0x90078, 0x633 },
+	{ 0x90079, 0x159 },
+	{ 0x9007a, 0x441 },
+	{ 0x9007b, 0x633 },
+	{ 0x9007c, 0x149 },
+	{ 0x9007d, 0x42 },
+	{ 0x9007e, 0x633 },
+	{ 0x9007f, 0x149 },
+	{ 0x90080, 0x1 },
+	{ 0x90081, 0x633 },
+	{ 0x90082, 0x149 },
+	{ 0x90083, 0x0 },
+	{ 0x90084, 0xe0 },
+	{ 0x90085, 0x109 },
+	{ 0x90086, 0xa },
+	{ 0x90087, 0x10 },
+	{ 0x90088, 0x109 },
+	{ 0x90089, 0x9 },
+	{ 0x9008a, 0x3c0 },
+	{ 0x9008b, 0x149 },
+	{ 0x9008c, 0x9 },
+	{ 0x9008d, 0x3c0 },
+	{ 0x9008e, 0x159 },
+	{ 0x9008f, 0x18 },
+	{ 0x90090, 0x10 },
+	{ 0x90091, 0x109 },
+	{ 0x90092, 0x0 },
+	{ 0x90093, 0x3c0 },
+	{ 0x90094, 0x109 },
+	{ 0x90095, 0x18 },
+	{ 0x90096, 0x4 },
+	{ 0x90097, 0x48 },
+	{ 0x90098, 0x18 },
+	{ 0x90099, 0x4 },
+	{ 0x9009a, 0x58 },
+	{ 0x9009b, 0xb },
+	{ 0x9009c, 0x10 },
+	{ 0x9009d, 0x109 },
+	{ 0x9009e, 0x1 },
+	{ 0x9009f, 0x10 },
+	{ 0x900a0, 0x109 },
+	{ 0x900a1, 0x5 },
+	{ 0x900a2, 0x7c0 },
+	{ 0x900a3, 0x109 },
+	{ 0x40000, 0x811 },
+	{ 0x40020, 0x880 },
+	{ 0x40040, 0x0 },
+	{ 0x40060, 0x0 },
+	{ 0x40001, 0x4008 },
+	{ 0x40021, 0x83 },
+	{ 0x40041, 0x4f },
+	{ 0x40061, 0x0 },
+	{ 0x40002, 0x4040 },
+	{ 0x40022, 0x83 },
+	{ 0x40042, 0x51 },
+	{ 0x40062, 0x0 },
+	{ 0x40003, 0x811 },
+	{ 0x40023, 0x880 },
+	{ 0x40043, 0x0 },
+	{ 0x40063, 0x0 },
+	{ 0x40004, 0x720 },
+	{ 0x40024, 0xf },
+	{ 0x40044, 0x1740 },
+	{ 0x40064, 0x0 },
+	{ 0x40005, 0x16 },
+	{ 0x40025, 0x83 },
+	{ 0x40045, 0x4b },
+	{ 0x40065, 0x0 },
+	{ 0x40006, 0x716 },
+	{ 0x40026, 0xf },
+	{ 0x40046, 0x2001 },
+	{ 0x40066, 0x0 },
+	{ 0x40007, 0x716 },
+	{ 0x40027, 0xf },
+	{ 0x40047, 0x2800 },
+	{ 0x40067, 0x0 },
+	{ 0x40008, 0x716 },
+	{ 0x40028, 0xf },
+	{ 0x40048, 0xf00 },
+	{ 0x40068, 0x0 },
+	{ 0x40009, 0x720 },
+	{ 0x40029, 0xf },
+	{ 0x40049, 0x1400 },
+	{ 0x40069, 0x0 },
+	{ 0x4000a, 0xe08 },
+	{ 0x4002a, 0xc15 },
+	{ 0x4004a, 0x0 },
+	{ 0x4006a, 0x0 },
+	{ 0x4000b, 0x625 },
+	{ 0x4002b, 0x15 },
+	{ 0x4004b, 0x0 },
+	{ 0x4006b, 0x0 },
+	{ 0x4000c, 0x4028 },
+	{ 0x4002c, 0x80 },
+	{ 0x4004c, 0x0 },
+	{ 0x4006c, 0x0 },
+	{ 0x4000d, 0xe08 },
+	{ 0x4002d, 0xc1a },
+	{ 0x4004d, 0x0 },
+	{ 0x4006d, 0x0 },
+	{ 0x4000e, 0x625 },
+	{ 0x4002e, 0x1a },
+	{ 0x4004e, 0x0 },
+	{ 0x4006e, 0x0 },
+	{ 0x4000f, 0x4040 },
+	{ 0x4002f, 0x80 },
+	{ 0x4004f, 0x0 },
+	{ 0x4006f, 0x0 },
+	{ 0x40010, 0x2604 },
+	{ 0x40030, 0x15 },
+	{ 0x40050, 0x0 },
+	{ 0x40070, 0x0 },
+	{ 0x40011, 0x708 },
+	{ 0x40031, 0x5 },
+	{ 0x40051, 0x0 },
+	{ 0x40071, 0x2002 },
+	{ 0x40012, 0x8 },
+	{ 0x40032, 0x80 },
+	{ 0x40052, 0x0 },
+	{ 0x40072, 0x0 },
+	{ 0x40013, 0x2604 },
+	{ 0x40033, 0x1a },
+	{ 0x40053, 0x0 },
+	{ 0x40073, 0x0 },
+	{ 0x40014, 0x708 },
+	{ 0x40034, 0xa },
+	{ 0x40054, 0x0 },
+	{ 0x40074, 0x2002 },
+	{ 0x40015, 0x4040 },
+	{ 0x40035, 0x80 },
+	{ 0x40055, 0x0 },
+	{ 0x40075, 0x0 },
+	{ 0x40016, 0x60a },
+	{ 0x40036, 0x15 },
+	{ 0x40056, 0x1200 },
+	{ 0x40076, 0x0 },
+	{ 0x40017, 0x61a },
+	{ 0x40037, 0x15 },
+	{ 0x40057, 0x1300 },
+	{ 0x40077, 0x0 },
+	{ 0x40018, 0x60a },
+	{ 0x40038, 0x1a },
+	{ 0x40058, 0x1200 },
+	{ 0x40078, 0x0 },
+	{ 0x40019, 0x642 },
+	{ 0x40039, 0x1a },
+	{ 0x40059, 0x1300 },
+	{ 0x40079, 0x0 },
+	{ 0x4001a, 0x4808 },
+	{ 0x4003a, 0x880 },
+	{ 0x4005a, 0x0 },
+	{ 0x4007a, 0x0 },
+	{ 0x900a4, 0x0 },
+	{ 0x900a5, 0x790 },
+	{ 0x900a6, 0x11a },
+	{ 0x900a7, 0x8 },
+	{ 0x900a8, 0x7aa },
+	{ 0x900a9, 0x2a },
+	{ 0x900aa, 0x10 },
+	{ 0x900ab, 0x7b2 },
+	{ 0x900ac, 0x2a },
+	{ 0x900ad, 0x0 },
+	{ 0x900ae, 0x7c8 },
+	{ 0x900af, 0x109 },
+	{ 0x900b0, 0x10 },
+	{ 0x900b1, 0x10 },
+	{ 0x900b2, 0x109 },
+	{ 0x900b3, 0x10 },
+	{ 0x900b4, 0x2a8 },
+	{ 0x900b5, 0x129 },
+	{ 0x900b6, 0x8 },
+	{ 0x900b7, 0x370 },
+	{ 0x900b8, 0x129 },
+	{ 0x900b9, 0xa },
+	{ 0x900ba, 0x3c8 },
+	{ 0x900bb, 0x1a9 },
+	{ 0x900bc, 0xc },
+	{ 0x900bd, 0x408 },
+	{ 0x900be, 0x199 },
+	{ 0x900bf, 0x14 },
+	{ 0x900c0, 0x790 },
+	{ 0x900c1, 0x11a },
+	{ 0x900c2, 0x8 },
+	{ 0x900c3, 0x4 },
+	{ 0x900c4, 0x18 },
+	{ 0x900c5, 0xe },
+	{ 0x900c6, 0x408 },
+	{ 0x900c7, 0x199 },
+	{ 0x900c8, 0x8 },
+	{ 0x900c9, 0x8568 },
+	{ 0x900ca, 0x108 },
+	{ 0x900cb, 0x18 },
+	{ 0x900cc, 0x790 },
+	{ 0x900cd, 0x16a },
+	{ 0x900ce, 0x8 },
+	{ 0x900cf, 0x1d8 },
+	{ 0x900d0, 0x169 },
+	{ 0x900d1, 0x10 },
+	{ 0x900d2, 0x8558 },
+	{ 0x900d3, 0x168 },
+	{ 0x900d4, 0x70 },
+	{ 0x900d5, 0x788 },
+	{ 0x900d6, 0x16a },
+	{ 0x900d7, 0x1ff8 },
+	{ 0x900d8, 0x85a8 },
+	{ 0x900d9, 0x1e8 },
+	{ 0x900da, 0x50 },
+	{ 0x900db, 0x798 },
+	{ 0x900dc, 0x16a },
+	{ 0x900dd, 0x60 },
+	{ 0x900de, 0x7a0 },
+	{ 0x900df, 0x16a },
+	{ 0x900e0, 0x8 },
+	{ 0x900e1, 0x8310 },
+	{ 0x900e2, 0x168 },
+	{ 0x900e3, 0x8 },
+	{ 0x900e4, 0xa310 },
+	{ 0x900e5, 0x168 },
+	{ 0x900e6, 0xa },
+	{ 0x900e7, 0x408 },
+	{ 0x900e8, 0x169 },
+	{ 0x900e9, 0x6e },
+	{ 0x900ea, 0x0 },
+	{ 0x900eb, 0x68 },
+	{ 0x900ec, 0x0 },
+	{ 0x900ed, 0x408 },
+	{ 0x900ee, 0x169 },
+	{ 0x900ef, 0x0 },
+	{ 0x900f0, 0x8310 },
+	{ 0x900f1, 0x168 },
+	{ 0x900f2, 0x0 },
+	{ 0x900f3, 0xa310 },
+	{ 0x900f4, 0x168 },
+	{ 0x900f5, 0x1ff8 },
+	{ 0x900f6, 0x85a8 },
+	{ 0x900f7, 0x1e8 },
+	{ 0x900f8, 0x68 },
+	{ 0x900f9, 0x798 },
+	{ 0x900fa, 0x16a },
+	{ 0x900fb, 0x78 },
+	{ 0x900fc, 0x7a0 },
+	{ 0x900fd, 0x16a },
+	{ 0x900fe, 0x68 },
+	{ 0x900ff, 0x790 },
+	{ 0x90100, 0x16a },
+	{ 0x90101, 0x8 },
+	{ 0x90102, 0x8b10 },
+	{ 0x90103, 0x168 },
+	{ 0x90104, 0x8 },
+	{ 0x90105, 0xab10 },
+	{ 0x90106, 0x168 },
+	{ 0x90107, 0xa },
+	{ 0x90108, 0x408 },
+	{ 0x90109, 0x169 },
+	{ 0x9010a, 0x58 },
+	{ 0x9010b, 0x0 },
+	{ 0x9010c, 0x68 },
+	{ 0x9010d, 0x0 },
+	{ 0x9010e, 0x408 },
+	{ 0x9010f, 0x169 },
+	{ 0x90110, 0x0 },
+	{ 0x90111, 0x8b10 },
+	{ 0x90112, 0x168 },
+	{ 0x90113, 0x1 },
+	{ 0x90114, 0xab10 },
+	{ 0x90115, 0x168 },
+	{ 0x90116, 0x0 },
+	{ 0x90117, 0x1d8 },
+	{ 0x90118, 0x169 },
+	{ 0x90119, 0x80 },
+	{ 0x9011a, 0x790 },
+	{ 0x9011b, 0x16a },
+	{ 0x9011c, 0x18 },
+	{ 0x9011d, 0x7aa },
+	{ 0x9011e, 0x6a },
+	{ 0x9011f, 0xa },
+	{ 0x90120, 0x0 },
+	{ 0x90121, 0x1e9 },
+	{ 0x90122, 0x8 },
+	{ 0x90123, 0x8080 },
+	{ 0x90124, 0x108 },
+	{ 0x90125, 0xf },
+	{ 0x90126, 0x408 },
+	{ 0x90127, 0x169 },
+	{ 0x90128, 0xc },
+	{ 0x90129, 0x0 },
+	{ 0x9012a, 0x68 },
+	{ 0x9012b, 0x9 },
+	{ 0x9012c, 0x0 },
+	{ 0x9012d, 0x1a9 },
+	{ 0x9012e, 0x0 },
+	{ 0x9012f, 0x408 },
+	{ 0x90130, 0x169 },
+	{ 0x90131, 0x0 },
+	{ 0x90132, 0x8080 },
+	{ 0x90133, 0x108 },
+	{ 0x90134, 0x8 },
+	{ 0x90135, 0x7aa },
+	{ 0x90136, 0x6a },
+	{ 0x90137, 0x0 },
+	{ 0x90138, 0x8568 },
+	{ 0x90139, 0x108 },
+	{ 0x9013a, 0xb7 },
+	{ 0x9013b, 0x790 },
+	{ 0x9013c, 0x16a },
+	{ 0x9013d, 0x1f },
+	{ 0x9013e, 0x0 },
+	{ 0x9013f, 0x68 },
+	{ 0x90140, 0x8 },
+	{ 0x90141, 0x8558 },
+	{ 0x90142, 0x168 },
+	{ 0x90143, 0xf },
+	{ 0x90144, 0x408 },
+	{ 0x90145, 0x169 },
+	{ 0x90146, 0xd },
+	{ 0x90147, 0x0 },
+	{ 0x90148, 0x68 },
+	{ 0x90149, 0x0 },
+	{ 0x9014a, 0x408 },
+	{ 0x9014b, 0x169 },
+	{ 0x9014c, 0x0 },
+	{ 0x9014d, 0x8558 },
+	{ 0x9014e, 0x168 },
+	{ 0x9014f, 0x8 },
+	{ 0x90150, 0x3c8 },
+	{ 0x90151, 0x1a9 },
+	{ 0x90152, 0x3 },
+	{ 0x90153, 0x370 },
+	{ 0x90154, 0x129 },
+	{ 0x90155, 0x20 },
+	{ 0x90156, 0x2aa },
+	{ 0x90157, 0x9 },
+	{ 0x90158, 0x8 },
+	{ 0x90159, 0xe8 },
+	{ 0x9015a, 0x109 },
+	{ 0x9015b, 0x0 },
+	{ 0x9015c, 0x8140 },
+	{ 0x9015d, 0x10c },
+	{ 0x9015e, 0x10 },
+	{ 0x9015f, 0x8138 },
+	{ 0x90160, 0x104 },
+	{ 0x90161, 0x8 },
+	{ 0x90162, 0x448 },
+	{ 0x90163, 0x109 },
+	{ 0x90164, 0xf },
+	{ 0x90165, 0x7c0 },
+	{ 0x90166, 0x109 },
+	{ 0x90167, 0x0 },
+	{ 0x90168, 0xe8 },
+	{ 0x90169, 0x109 },
+	{ 0x9016a, 0x47 },
+	{ 0x9016b, 0x630 },
+	{ 0x9016c, 0x109 },
+	{ 0x9016d, 0x8 },
+	{ 0x9016e, 0x618 },
+	{ 0x9016f, 0x109 },
+	{ 0x90170, 0x8 },
+	{ 0x90171, 0xe0 },
+	{ 0x90172, 0x109 },
+	{ 0x90173, 0x0 },
+	{ 0x90174, 0x7c8 },
+	{ 0x90175, 0x109 },
+	{ 0x90176, 0x8 },
+	{ 0x90177, 0x8140 },
+	{ 0x90178, 0x10c },
+	{ 0x90179, 0x0 },
+	{ 0x9017a, 0x478 },
+	{ 0x9017b, 0x109 },
+	{ 0x9017c, 0x0 },
+	{ 0x9017d, 0x1 },
+	{ 0x9017e, 0x8 },
+	{ 0x9017f, 0x8 },
+	{ 0x90180, 0x4 },
+	{ 0x90181, 0x0 },
+	{ 0x90006, 0x8 },
+	{ 0x90007, 0x7c8 },
+	{ 0x90008, 0x109 },
+	{ 0x90009, 0x0 },
+	{ 0x9000a, 0x400 },
+	{ 0x9000b, 0x106 },
+	{ 0xd00e7, 0x400 },
+	{ 0x90017, 0x0 },
+	{ 0x9001f, 0x29 },
+	{ 0x90026, 0x68 },
+	{ 0x400d0, 0x0 },
+	{ 0x400d1, 0x101 },
+	{ 0x400d2, 0x105 },
+	{ 0x400d3, 0x107 },
+	{ 0x400d4, 0x10f },
+	{ 0x400d5, 0x202 },
+	{ 0x400d6, 0x20a },
+	{ 0x400d7, 0x20b },
+	{ 0x2003a, 0x2 },
+	{ 0x200be, 0x3 },
+	{ 0x2000b, 0x7d },
+	{ 0x2000c, 0xfa },
+	{ 0x2000d, 0x9c4 },
+	{ 0x2000e, 0x2c },
+	{ 0x12000b, 0xc },
+	{ 0x12000c, 0x19 },
+	{ 0x12000d, 0xfa },
+	{ 0x12000e, 0x10 },
+	{ 0x22000b, 0x3 },
+	{ 0x22000c, 0x6 },
+	{ 0x22000d, 0x3e },
+	{ 0x22000e, 0x10 },
+	{ 0x9000c, 0x0 },
+	{ 0x9000d, 0x173 },
+	{ 0x9000e, 0x60 },
+	{ 0x9000f, 0x6110 },
+	{ 0x90010, 0x2152 },
+	{ 0x90011, 0xdfbd },
+	{ 0x90012, 0x2060 },
+	{ 0x90013, 0x6152 },
+	{ 0x20010, 0x5a },
+	{ 0x20011, 0x3 },
+	{ 0x40080, 0xe0 },
+	{ 0x40081, 0x12 },
+	{ 0x40082, 0xe0 },
+	{ 0x40083, 0x12 },
+	{ 0x40084, 0xe0 },
+	{ 0x40085, 0x12 },
+	{ 0x140080, 0xe0 },
+	{ 0x140081, 0x12 },
+	{ 0x140082, 0xe0 },
+	{ 0x140083, 0x12 },
+	{ 0x140084, 0xe0 },
+	{ 0x140085, 0x12 },
+	{ 0x240080, 0xe0 },
+	{ 0x240081, 0x12 },
+	{ 0x240082, 0xe0 },
+	{ 0x240083, 0x12 },
+	{ 0x240084, 0xe0 },
+	{ 0x240085, 0x12 },
+	{ 0x400fd, 0xf },
+	{ 0x10011, 0x1 },
+	{ 0x10012, 0x1 },
+	{ 0x10013, 0x180 },
+	{ 0x10018, 0x1 },
+	{ 0x10002, 0x6209 },
+	{ 0x100b2, 0x1 },
+	{ 0x101b4, 0x1 },
+	{ 0x102b4, 0x1 },
+	{ 0x103b4, 0x1 },
+	{ 0x104b4, 0x1 },
+	{ 0x105b4, 0x1 },
+	{ 0x106b4, 0x1 },
+	{ 0x107b4, 0x1 },
+	{ 0x108b4, 0x1 },
+	{ 0x11011, 0x1 },
+	{ 0x11012, 0x1 },
+	{ 0x11013, 0x180 },
+	{ 0x11018, 0x1 },
+	{ 0x11002, 0x6209 },
+	{ 0x110b2, 0x1 },
+	{ 0x111b4, 0x1 },
+	{ 0x112b4, 0x1 },
+	{ 0x113b4, 0x1 },
+	{ 0x114b4, 0x1 },
+	{ 0x115b4, 0x1 },
+	{ 0x116b4, 0x1 },
+	{ 0x117b4, 0x1 },
+	{ 0x118b4, 0x1 },
+	{ 0x12011, 0x1 },
+	{ 0x12012, 0x1 },
+	{ 0x12013, 0x180 },
+	{ 0x12018, 0x1 },
+	{ 0x12002, 0x6209 },
+	{ 0x120b2, 0x1 },
+	{ 0x121b4, 0x1 },
+	{ 0x122b4, 0x1 },
+	{ 0x123b4, 0x1 },
+	{ 0x124b4, 0x1 },
+	{ 0x125b4, 0x1 },
+	{ 0x126b4, 0x1 },
+	{ 0x127b4, 0x1 },
+	{ 0x128b4, 0x1 },
+	{ 0x13011, 0x1 },
+	{ 0x13012, 0x1 },
+	{ 0x13013, 0x180 },
+	{ 0x13018, 0x1 },
+	{ 0x13002, 0x6209 },
+	{ 0x130b2, 0x1 },
+	{ 0x131b4, 0x1 },
+	{ 0x132b4, 0x1 },
+	{ 0x133b4, 0x1 },
+	{ 0x134b4, 0x1 },
+	{ 0x135b4, 0x1 },
+	{ 0x136b4, 0x1 },
+	{ 0x137b4, 0x1 },
+	{ 0x138b4, 0x1 },
+	{ 0x20089, 0x1 },
+	{ 0x20088, 0x19 },
+	{ 0xc0080, 0x2 },
+	{ 0xd0000, 0x1 },
+};
+
+static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
+	{
+		/* P0 4000mts 1D */
+		.drate = 4000,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp0_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_cfg),
+	},
+	{
+		/* P1 400mts 1D */
+		.drate = 400,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp1_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp1_cfg),
+	},
+	{
+		/* P2 100mts 1D */
+		.drate = 100,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp2_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp2_cfg),
+	},
+	{
+		/* P0 4000mts 2D */
+		.drate = 4000,
+		.fw_type = FW_2D_IMAGE,
+		.fsp_cfg = ddr_fsp0_2d_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_cfg),
+	},
+};
+
+/* ddr timing config params */
+struct dram_timing_info var_dart_imx8mp_dram_timing = {
+	.ddrc_cfg = ddr_ddrc_cfg,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
+	.ddrphy_cfg = ddr_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
+	.fsp_msg = ddr_dram_fsp_msg,
+	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_msg),
+	.ddrphy_pie = ddr_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
+	.fsp_table = { 4000, 400, 100, },
+};
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 62762959d5..5cd2bab035 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -10,6 +10,7 @@ CONFIG_MACH_NXP_IMX8MQ_EVK=y
 CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
 CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_POLYHEX_DEBIX=y
+CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
@@ -90,6 +91,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_SERIAL_DEV_BUS=y
+CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_AT803X_PHY=y
 CONFIG_DP83867_PHY=y
@@ -129,6 +131,7 @@ CONFIG_EEPROM_AT24=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_RAVE_SP_WATCHDOG=y
+CONFIG_GPIO_PCA953X=y
 CONFIG_IMX_OCOTP=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 07cb62dc1b..7f0d589d89 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -204,5 +204,6 @@ lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
+lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcustomboard.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
new file mode 100644
index 0000000000..fe830b54fe
--- /dev/null
+++ b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
@@ -0,0 +1,681 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019 NXP
+ * Copyright 2020-2021 Variscite Ltd.
+ * Copyright 2023 VAHLE Automation GmbH
+ */
+
+#include "imx8mp-var-dart.dtsi"
+
+/ {
+	model = "Variscite DART-MX8M-PLUS on DT8MCustomBoard 2.x";
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &env_sd;
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &env_emmc;
+			status = "disabled";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		back {
+			label = "Back";
+			linux,code = <KEY_BACK>;
+			gpios = <&pca6408_1 7 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		up {
+			label = "Up";
+			linux,code = <KEY_UP>;
+			gpios = <&pca6408_1 5 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		home {
+			label = "Home";
+			linux,code = <KEY_HOME>;
+			gpios = <&pca6408_1 4 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		down {
+			label = "Down";
+			linux,code = <KEY_DOWN>;
+			gpios = <&pca6408_1 6 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		gp-led1 {
+			label = "led1";
+			gpios = <&pca6408_2 7 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+			barebox,default-trigger = "heartbeat";
+		};
+
+		gp-led2 {
+			label = "led2";
+			gpios = <&pca6408_2 6 GPIO_ACTIVE_HIGH>;
+		};
+
+		gp-led3 {
+			label = "led3";
+			gpios = <&pca6408_2 5 GPIO_ACTIVE_HIGH>;
+		};
+
+		gp-led4 {
+			label = "eMMC";
+			gpios = <&gpio4 18 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "mmc2";
+		};
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <100>;
+		off-on-delay-us = <12000>;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 1000000 0>;
+
+		brightness-levels = < 0  1  2  3  4  5  6  7  8  9
+				     10 11 12 13 14 15 16 17 18 19
+				     20 21 22 23 24 25 26 27 28 29
+				     30 31 32 33 34 35 36 37 38 39
+				     40 41 42 43 44 45 46 47 48 49
+				     50 51 52 53 54 55 56 57 58 59
+				     60 61 62 63 64 65 66 67 68 69
+				     70 71 72 73 74 75 76 77 78 79
+				     80 81 82 83 84 85 86 87 88 89
+				     90 91 92 93 94 95 96 97 98 99
+				    100>;
+		default-brightness-level = <80>;
+	};
+
+	can0_osc: can0_osc {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <40000000>;
+	};
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
+};
+
+&eqos {
+	mdio {
+		ethphy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			at803x,eee-disabled;
+			eee-broken-1000t;
+			reset-gpios = <&pca6408_2 0 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <20000>;
+			vddio-supply = <&vddio1>;
+
+			vddio1: vddio-regulator {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy1>;
+	status = "okay";
+};
+
+&flexspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexspi0>;
+	status = "disabled";
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	scl-gpios = <&gpio5 16 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio5 17 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	typec@3d {
+		compatible = "nxp,ptn5150";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_extcon>;
+		reg = <0x3d>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <10 IRQ_TYPE_LEVEL_HIGH>;
+		irq-is-id-quirk;
+
+		port {
+			typec_dr_sw: endpoint {
+				remote-endpoint = <&usb3_drd_sw>;
+			};
+		};
+	};
+
+	/* DS1337 RTC module */
+	rtc@68 {
+		compatible = "dallas,ds1337";
+		reg = <0x68>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
+		wakeup-source;
+	};
+
+	/* Capacitive touch controller */
+	ft5x06_ts: ft5x06_ts@38 {
+		compatible = "edt,edt-ft5206";
+		reg = <0x38>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_captouch>;
+		reset-gpios = <&pca6408_2 4 GPIO_ACTIVE_LOW>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <14 IRQ_TYPE_EDGE_FALLING>;
+		touchscreen-size-x = <800>;
+		touchscreen-size-y = <480>;
+		touchscreen-inverted-x;
+		touchscreen-inverted-y;
+		wakeup-source;
+	};
+};
+
+&i2c3 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
+	scl-gpios = <&gpio5 18 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio5 19 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&i2c4 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_gpio>;
+	scl-gpios = <&gpio5 20 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio5 21 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	pca6408_1: gpio@20 {
+		compatible = "nxp,pcal6408";
+		standard-regs-fallback;
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pca6408>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <5 IRQ_TYPE_EDGE_FALLING>;
+	};
+
+	pca6408_2: gpio@21 {
+		compatible = "nxp,pcal6408";
+		standard-regs-fallback;
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	status = "okay";
+};
+
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	status = "okay";
+};
+
+&pcie {
+	reset-gpio = <&pca6408_2 3 GPIO_ACTIVE_LOW>;
+	ext_osc = <1>;
+	clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+		 <&clk IMX8MP_CLK_PCIE_AUX>,
+		 <&clk IMX8MP_CLK_HSIO_AXI>,
+		 <&clk IMX8MP_CLK_PCIE_ROOT>;
+	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
+	assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
+			  <&clk IMX8MP_CLK_PCIE_AUX>;
+	assigned-clock-rates = <500000000>, <10000000>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>,
+				 <&clk IMX8MP_SYS_PLL2_50M>;
+	l1ss-disabled;
+	status = "okay";
+};
+
+&pcie_phy {
+	ext_osc = <1>;
+	status = "okay";
+};
+
+/* Console */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+/* Header */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+/* Header */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&usb3_phy0 {
+	fsl,phy-tx-vref-tune = <0xe>;
+	fsl,phy-tx-preemp-amp-tune = <3>;
+	fsl,phy-tx-vboost-level = <5>;
+	fsl,phy-comp-dis-tune = <7>;
+	fsl,pcs-tx-deemph-3p5db = <0x21>;
+	fsl,phy-pcs-tx-swing-full = <0x7f>;
+	status = "okay";
+};
+
+&usb3_0 {
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	usb-role-switch;
+	role-switch-default-mode = "none";
+	snps,dis-u1-entry-quirk;
+	snps,dis-u2-entry-quirk;
+
+	port {
+		usb3_drd_sw: endpoint {
+			remote-endpoint = <&typec_dr_sw>;
+		};
+	};
+};
+
+&usb3_phy1 {
+	fsl,phy-tx-preemp-amp-tune = <3>;
+	fsl,phy-tx-vref-tune = <0xb>;
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+};
+
+&usdhc2 {
+	#address-cells = <2>;
+	#size-cells = <1>;
+
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	bus-width = <4>;
+	status = "okay";
+
+	partition@0 {
+		compatible = "fixed-partitions";
+		label = "barebox";
+		reg = <0x00000000 0x00000000 0x000e0000>;
+	};
+
+	env_sd: partition@e0000 {
+		compatible = "fixed-partitions";
+		label = "barebox-environment";
+		reg = <0x00000000 0x000e0000 0x00020000>;
+	};
+};
+
+&usdhc3 {
+	#address-cells = <2>;
+	#size-cells = <1>;
+
+	env_emmc: partition@e0000 {
+		label = "barebox-environment";
+		reg = <0x00000000 0x000e0000 0x00020000>;
+	};
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio5  9 GPIO_ACTIVE_LOW>,
+		   <&gpio1 12 GPIO_ACTIVE_LOW>,
+		   <&gpio2 10 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	/* Resistive touch controller */
+	ads7846@0 {
+		compatible = "ti,ads7846";
+		reg = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_restouch>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
+		spi-max-frequency = <1500000>;
+		pendown-gpio = <&gpio1 7 GPIO_ACTIVE_LOW>;
+		ti,x-min = /bits/ 16 <125>;
+		ti,x-max = /bits/ 16 <4008>;
+		ti,y-min = /bits/ 16 <282>;
+		ti,y-max = /bits/ 16 <3864>;
+		ti,x-plate-ohms = /bits/ 16 <180>;
+		ti,pressure-max = /bits/ 16 <255>;
+		ti,debounce-max = /bits/ 16 <10>;
+		ti,debounce-tol = /bits/ 16 <3>;
+		ti,debounce-rep = /bits/ 16 <1>;
+		ti,settle-delay-usec = /bits/ 16 <150>;
+		ti,keep-vref-on;
+		wakeup-source;
+	};
+
+	can0: can@1 {
+		compatible = "microchip,mcp251xfd";
+		reg = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_can>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+		microchip,rx-int-gpios = <&gpio5 4 GPIO_ACTIVE_LOW>;
+		clocks = <&can0_osc>;
+		spi-max-frequency = <20000000>;
+	};
+
+	spidev@2 {
+		compatible = "var,spidev";
+		reg = <2>;
+		spi-max-frequency = <12000000>;
+	};
+};
+
+&ldo4 {
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL			0x400001c2
+			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA			0x400001c2
+			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD				0x40000010
+			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC				0x40000010
+		>;
+	};
+
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO01__PWM1_OUT				0x116
+		>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0				0x90
+			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1				0x90
+			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2				0x90
+			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3				0x90
+			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC				0x90
+			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL			0x90
+			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0				0x00
+			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1				0x00
+			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2				0x00
+			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3				0x00
+			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL			0x00
+			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC				0x00
+		>;
+	};
+
+	pinctrl_flexspi0: flexspi0grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_ALE__FLEXSPI_A_SCLK				0x1c2
+			MX8MP_IOMUXC_NAND_CE0_B__FLEXSPI_A_SS0_B			0x82
+			MX8MP_IOMUXC_NAND_DATA00__FLEXSPI_A_DATA00			0x82
+			MX8MP_IOMUXC_NAND_DATA01__FLEXSPI_A_DATA01			0x82
+			MX8MP_IOMUXC_NAND_DATA02__FLEXSPI_A_DATA02			0x82
+			MX8MP_IOMUXC_NAND_DATA03__FLEXSPI_A_DATA03			0x82
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL					0x400001c2
+			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA					0x400001c2
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL					0x400001c2
+			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA					0x400001c2
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL					0x400001c2
+			MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA					0x400001c2
+		>;
+	};
+
+	pinctrl_i2c2_gpio: i2c2gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16				0x1c2
+			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17				0x1c2
+		>;
+	};
+
+	pinctrl_i2c3_gpio: i2c3gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18				0x1c2
+			MX8MP_IOMUXC_I2C3_SDA__GPIO5_IO19				0x1c2
+		>;
+	};
+
+	pinctrl_i2c4_gpio: i2c4gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C4_SCL__GPIO5_IO20				0x1c2
+			MX8MP_IOMUXC_I2C4_SDA__GPIO5_IO21				0x1c2
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX				0x40
+			MX8MP_IOMUXC_UART1_TXD__UART1_DCE_TX				0x40
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX				0x40
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX				0x40
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART3_RXD__UART3_DCE_RX				0x40
+			MX8MP_IOMUXC_UART3_TXD__UART3_DCE_TX				0x40
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ECSPI2_SCLK__UART4_DCE_RX				0x140
+			MX8MP_IOMUXC_ECSPI2_MOSI__UART4_DCE_TX				0x140
+			MX8MP_IOMUXC_ECSPI2_MISO__UART4_DCE_CTS				0x140
+			MX8MP_IOMUXC_ECSPI2_SS0__UART4_DCE_RTS				0x140
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2grp-gpio {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12 				0x1c4
+			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19				0x40
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x190
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d0
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d0
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d0
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d0
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d0
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT				0xc0
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp-100mhz {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x194
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d4
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d4
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d4
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d4
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d4
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT 			0xc0
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp-200mhz {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x196
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d6
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d6
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d6
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d6
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d6
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT 			0xc0
+		>;
+	};
+
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ECSPI1_SCLK__ECSPI1_SCLK				0x12
+			MX8MP_IOMUXC_ECSPI1_MOSI__ECSPI1_MOSI				0x12
+			MX8MP_IOMUXC_ECSPI1_MISO__ECSPI1_MISO				0x12
+			MX8MP_IOMUXC_ECSPI1_SS0__GPIO5_IO09				0x12
+			MX8MP_IOMUXC_GPIO1_IO12__GPIO1_IO12				0x12
+			MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10				0x12
+		>;
+	};
+
+	pinctrl_captouch: captouchgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14				0x16
+		>;
+	};
+
+
+	pinctrl_restouch: restouchgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07				0xc0
+		>;
+	};
+
+	pinctrl_extcon: extcongrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10				0x10
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_RXC__CAN1_TX					0x154
+			MX8MP_IOMUXC_SAI2_TXC__CAN1_RX					0x154
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_MCLK__CAN2_RX					0x154
+			MX8MP_IOMUXC_SAI2_TXD0__CAN2_TX					0x154
+		>;
+	};
+
+	pinctrl_can: cangrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06				0x1c6
+			MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x16
+		>;
+	};
+
+	pinctrl_pca6408: pca6408grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO05__GPIO1_IO05				0x1c6
+		>;
+	};
+
+	pinctrl_gpio_leds: ledgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18				0xc6
+		>;
+	};
+
+	pinctrl_rtc: rtcgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15 				0x1c0
+		>;
+	};
+};
diff --git a/arch/arm/dts/imx8mp-var-dart.dtsi b/arch/arm/dts/imx8mp-var-dart.dtsi
new file mode 100644
index 0000000000..7c7c2049e3
--- /dev/null
+++ b/arch/arm/dts/imx8mp-var-dart.dtsi
@@ -0,0 +1,389 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019 NXP
+ * Copyright 2020-2021 Variscite Ltd.
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/usb/pd.h>
+#include <arm64/freescale/imx8mp.dtsi>
+#include "imx8mp.dtsi"
+
+/ {
+	compatible = "variscite,imx8mp-var-dart", "fsl,imx8mp";
+
+	aliases {
+		ethernet0 = &eqos;
+		ethernet1 = &fec;
+	};
+
+	reg_eqos_phy: regulator-eqos-phy {
+		compatible = "regulator-fixed";
+		regulator-name = "eqos-phy";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-enable-ramp-delay = <20000>;
+		gpio = <&gpio2 20 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_audio: regulator-audio-vdd {
+		compatible = "regulator-fixed";
+		regulator-name = "wm8904_supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+};
+
+&A53_0 {
+	cpu-supply = <&buck2>;
+};
+
+&A53_1 {
+	cpu-supply = <&buck2>;
+};
+
+&A53_2 {
+	cpu-supply = <&buck2>;
+};
+
+&A53_3 {
+	cpu-supply = <&buck2>;
+};
+
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>;
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy0>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			at803x,eee-disabled;
+			eee-broken-1000t;
+			reset-gpios = <&gpio2 11 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <20000>;
+			vddio-supply = <&vddio0>;
+
+			vddio0: vddio-regulator {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
+	scl-gpios = <&gpio5 14 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio5 15 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	pca9450@25 {
+		reg = <0x25>;
+		compatible = "nxp,pca9450c";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+		status = "okay";
+
+		regulators {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			buck1: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			buck2: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+			};
+
+			buck4: BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5: BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2: LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			ldo5: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+};
+
+/* WIFI */
+&usdhc1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_wifi>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_wifi>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_wifi>;
+	bus-width = <4>;
+	non-removable;
+	keep-power-in-suspend;
+	status = "okay";
+
+	brcmf: bcrmf@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		laird,regdomain = "US";
+	};
+};
+
+/* eMMC */
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x2
+			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO				0x2
+			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x90
+			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x90
+			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x90
+			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x90
+			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x90
+			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL			0x90
+			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x16
+			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x16
+			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x16
+			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x16
+			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL			0x16
+			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x16
+			MX8MP_IOMUXC_SD2_WP__GPIO2_IO20					0x10
+			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11				0x150
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL					0x400001c2
+			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA					0x400001c2
+		>;
+	};
+
+	pinctrl_i2c1_gpio: i2c1gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14				0x1c2
+			MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15				0x1c2
+		>;
+	};
+
+	pinctrl_pmic: pmicgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03				0x1c0
+		>;
+	};
+
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC			0xd6
+			MX8MP_IOMUXC_SAI3_TXC__AUDIOMIX_SAI3_TX_BCLK			0xd6
+			MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI3_RX_DATA00			0xd6
+			MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00			0xd6
+			MX8MP_IOMUXC_SAI3_MCLK__AUDIOMIX_SAI3_MCLK			0xd6
+			MX8MP_IOMUXC_SAI3_RXFS__AUDIOMIX_SAI3_RX_SYNC			0xd6
+			MX8MP_IOMUXC_SAI3_RXC__AUDIOMIX_SAI3_RX_BCLK			0xd6
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK				0x190
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD				0x1d0
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0				0x1d0
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1				0x1d0
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2				0x1d0
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3				0x1d0
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1grp-100mhz {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK				0x194
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD				0x1d4
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0				0x1d4
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1				0x1d4
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2				0x1d4
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3				0x1d4
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp-200mhz {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK				0x196
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD				0x1d6
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0				0x1d6
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1				0x1d6
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2				0x1d6
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3				0x1d6
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x190
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD				0x1d0
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0				0x1d0
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1				0x1d0
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2				0x1d0
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3				0x1d0
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4				0x1d0
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5				0x1d0
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6				0x1d0
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7				0x1d0
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE				0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp-100mhz {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x194
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD				0x1d4
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0				0x1d4
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1				0x1d4
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2				0x1d4
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3				0x1d4
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4				0x1d4
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5				0x1d4
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6				0x1d4
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7				0x1d4
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE				0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp-200mhz {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x196
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD				0x1d6
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0				0x1d6
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1				0x1d6
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2				0x1d6
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3				0x1d6
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4				0x1d6
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5				0x1d6
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6				0x1d6
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7				0x1d6
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE				0x196
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B				0xc6
+		>;
+	};
+
+	pinctrl_wifi: wifigrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_DATA5__GPIO2_IO07				0xc0 /* WIFI_EN  */
+			MX8MP_IOMUXC_SD1_DATA6__GPIO2_IO08				0xc0 /* WIFI_PWR */
+		>;
+	};
+
+	pinctrl_bt: btgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06				0xc0 /* BT_EN  */
+			MX8MP_IOMUXC_SD1_DATA7__GPIO2_IO09				0xc0 /* BT_BUF */
+		>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 1f788fe528..2e49fdb9d5 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -650,6 +650,16 @@ config MACH_POLYHEX_DEBIX
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
 
+config MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP
+	bool "Variscite DT8MCustomBoard with DART-MX8M-PLUS"
+	select ARCH_IMX8MP
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MP_ATF
+	select ARM_SMCCC
+	select MCI_IMX_ESDHC_PBL
+	select IMX8M_DRAM
+	select I2C_IMX_EARLY
+
 config MACH_GRINN_LITEBOARD
 	bool "Grinn liteboard"
 	select ARCH_IMX6UL
diff --git a/images/Makefile.imx b/images/Makefile.imx
index ece8ea8197..9e70ba50a1 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -468,6 +468,11 @@ CFG_start_polyhex_debix.pblb.imximg = $(board)/polyhex-debix/flash-header-polyhe
 FILE_barebox-polyhex-debix.img = start_polyhex_debix.pblb.pimximg
 image-$(CONFIG_MACH_POLYHEX_DEBIX) += barebox-polyhex-debix.img
 
+pblb-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += start_variscite_imx8mp_dart
+CFG_start_variscite_imx8mp_dart.pblb.imximg = $(board)/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
+FILE_barebox-variscite-imx8mp-dart-cb.img = start_variscite_imx8mp_dart.pblb.pimximg
+image-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += barebox-variscite-imx8mp-dart-cb.img
+
 # ----------------------- i.MX8mq based boards --------------------------
 pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
 CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
-- 
2.30.2



