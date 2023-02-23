Delivery-date: Thu, 23 Feb 2023 15:01:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVCA0-00GvSI-I1
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 15:01:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVC9y-0008GF-HZ
	for lore@pengutronix.de; Thu, 23 Feb 2023 15:01:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yt3pWM6vf1MbWA7nOMcQAUyRk4eNYY/EVZfBpxJguiw=; b=xuzLelP4dtQ0mr
	yddqyur3DR2LujDeJ9Oq9DES6/+xsICv7Cg3wHxwV/ZF3kzob7lRKVoSSaB9zEuEKgad2qwcQEYVj
	KdPYGyPmKdfE3i88kCRB3/j4dr6GY1wyyt5/GcwQMZJlAU7ZX9ecnAGTp7p9eR7yAERkIHDqK2mEE
	rKp5/G+XSt8DINyCT5yL3TlkMGp+9SXMr2ne2jtYvAIUW1AsxaMnMk4QbESgiVhjNF/Qiv4i29HDT
	fB5GSabLOZ7c1VUl7FBhyh2IXKhet8ZodcJrQ164YWyNc8ydQ5/3jWqWmTw8lUpC+N8Ui993509xo
	NV9cDfR3tVZHB4kxrrnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVC7q-00GgfX-6q; Thu, 23 Feb 2023 13:59:11 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVC7T-00GgU4-C1
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 13:58:49 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31NDL5ai017073
	for <barebox@lists.infradead.org>; Thu, 23 Feb 2023 08:58:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=Yt3pWM6vf1MbWA7nOMcQAUyRk4eNYY/EVZfBpxJguiw=;
 b=e5zah9OYwaPIhhfdOcN7ZtMu18awSWTxovOMTTE4JKSm90f5Vw+afnOT8uD55iFoQggu
 iDdbY8ghrt6x72yO/fy2GTx/oNiJmfetN3VjWKCBmozflkzsVPITIouizU/ZSgBqhK36
 Ww4LxDFDl0S/C7GR8cZHyUzONcfr1SPIMBbp4kuW6m7KzHfy5T3cRJeYAky0Lt8RnJzD
 qOus/64zQ7zMYveMIwO31vyNtUXqh+XcpJADPYFXC0y+huixd0IK4KjENFMZIR1s7HY1
 U/jZnxekwIkeP+1317zIOPqZTnPs32v3+k7YJh9yciwJkT7vC/BmDedHB4Qb+dFmFf8v RQ== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2048.outbound.protection.outlook.com [104.47.74.48])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3nwydb1pgk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Thu, 23 Feb 2023 08:58:43 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gZL0UjiDc1ndGuN99o6KBG8kVMtHLtOWKplnG1aBsbCYm1dngOqoi66EGjklvkEw4p/pQYvkKmMw0E5N0O8KZLC7WwCTR2WXp/xF4jG/gEW9+wh+83omJtCC42P2GtRD/o2qC0w4FSC1Oturs1GHt3df4VwDkejalVgT78g1SJlkDFBRIxuQG2HogGiBWsBFbXkqp7t8CB2yEFt/paGWXahaGNjslu2WQryV/YhYzjeudcRnZ8O8CiIK88PVl0n1Hzi7yGIilwWeQsGEinIv4j8YyZJ9IKhRpoMoSRWxMoZkZIw01cEb8aIEreENI92BniCWB2CkIfflqKeiNv95pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yt3pWM6vf1MbWA7nOMcQAUyRk4eNYY/EVZfBpxJguiw=;
 b=I+wo53nwQsq6bG5CUaT3L3gL3s0C7WwnMo6MYobaJP7dZCnpLxrr9xbggEZ+VrkzuRNE8kaoyEuKomusMinbk3kyhP2GpEA3W7HGbJtJBg6nSUL31vqYJTXov554h5RjE9XUrBMeRieRwFDwgvU7EK5j6nxwYzobl1sLk+7CYdPATfGAkoyNsD1GZld3YwaMZszdufuU4CWm5NEv7NV8+3OVpdKm/PAFiDAaSG1ht6parYlgRfH761MVXLca5HTehpuwwhFOGIuRLJ1pU3FzotMh4esC/j5rgpBAhqoAcEZEV/ej/IShi2S3gThOYaYqjaGJYTW1BEpi8OqqLEZEaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yt3pWM6vf1MbWA7nOMcQAUyRk4eNYY/EVZfBpxJguiw=;
 b=eg4Ay/eAanJGHMUJv+tk2CQxBI1XmW96EazEOwQ5IgT7TvFl3Wk1r9OIlGoINeoT3B8ezrba6DRYVvluBWyVhrddetnFrChHctkNtbamnn3BhMx2Hf9SsNrAHEAavT3tIKhG2yeKRTBn9PK5mvXgr6y+RV2AFyEq4XP1MFDOXFM=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by CH3PR07MB9859.namprd07.prod.outlook.com (2603:10b6:610:15c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Thu, 23 Feb
 2023 13:58:40 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6134.019; Thu, 23 Feb 2023
 13:58:40 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH V2 0/2] ARM: Layerscape: Add LS1021A IOT board
 support
Thread-Index: AdlHitQ2/lQRX8JtTxWQObior4Cf3A==
Date: Thu, 23 Feb 2023 13:58:39 +0000
Message-ID:  <BL0PR07MB5665C55D9DB43139E83AF782ECAB9@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|CH3PR07MB9859:EE_
x-ms-office365-filtering-correlation-id: 99283282-0909-44fd-cb33-08db15a61141
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  oFNqq1fDGmipRDz2McUuxugjbo4+UA1PSYOrLQ457QPqjIts1EFEXVEM3w0W9lACYcvhr++Fk2R+FarI/RCcn+d2AtN2nRylIIIOTdfMFVONum7o82ivsTjPKX1k+v9mH8Sh6W5SctjLelvaYhBMA8bdSo3Ky7a+0g97sMDE774/hUcewk3q8MZNAMsUgKgzle3ZKIejBGS5qlY4q8YzrDfAvc59RlKj8yQcctImPiJSKsYDn17swSdqWOIiI5rnf58Mzz/onUBeZfjgvlvos9cwRjoYH9+lMApXiiIZCTH5wh2a9jDxhRrKSachH/YtvRQIZEqyAChrJbIwInnWad/Be6/cw8yDx/0CTvPaLnEk9PzlAIkfCdx43+BqXsKjV+Fu4k/9WbgsNKPQnFxEJXNf2jTX90EYpFLOnrc5uYfuiLKfIJyAi8FuTDuoFOuxZwKyDK745tvr0p1SeFOX5EmhZ4rN/Cq1/RTipKtN2h6LjJ/GtIl4eUKFc3AxbDO3ZsprAlBrjo6BMM1udDrjh2f8na+xf9ABnp1R421xWqAcOcAvR+0fdDXhKZ21TeRXodKVGHYXADdes2ZarR125tK00QVe7IW1udrLprhYy9cJ1qc9GK1UhXmhjJyzC5JU8FAXy6y0uhK6Vf7wmL7+jdmup05SyMpzm2UIqdZPw/RXCM3MEjQQxjKqIgjjzZSh
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(136003)(39860400002)(346002)(366004)(376002)(451199018)(64756008)(122000001)(38100700002)(83380400001)(86362001)(8676002)(316002)(5660300002)(66476007)(6916009)(52536014)(55016003)(8936002)(76116006)(71200400001)(478600001)(33656002)(38070700005)(66946007)(41300700001)(66556008)(66446008)(7696005)(9686003)(186003)(26005)(6506007)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?Kotm4dyiO0phR37RoHzQyz1NZOks/2GOnsRGrkxDKQaAyc9J6E+MD0F3A+Og?=
 =?us-ascii?Q?3r8kDWEZ63SSItxfYn+kimbBNuWJaAVvAQYJIZvzLKGDPJA514bDuc7YBody?=
 =?us-ascii?Q?5rFhyNom+syUIsbGRizKnN6/niqUgsG7v3vqSN0v/Ou/eDzAQnFj4kXWmY6V?=
 =?us-ascii?Q?U8PO05LXEifh35/RgBY3PveaASY83bLCQSFaUbWl9UU19RUk5xXuGlFEHbix?=
 =?us-ascii?Q?I+Yhq67CqM35rZNuNdh/gTvuKTedm7cOWdeC+R/eqVwsOsf9JloEcZiQH0uz?=
 =?us-ascii?Q?BIBBLO/z7ila8mJ/r/K3Ept2OQMNetcbMEyXDoJCPjq1LMUdbMOV8go4uvey?=
 =?us-ascii?Q?WJb3yfYdLL/3ZhcrvD2T7J2HSc3fLeSqSvazGjjaVkSCeq+TDwuSwDKq9GXv?=
 =?us-ascii?Q?D+3d4l6hOz9IqSv9B9Nu1gtiWz3B73Y32duCdE2P+YR9/cuDfjJJ9wVuDsI/?=
 =?us-ascii?Q?dnFxTizd+wY94OT9JHbOOdsgNgw9UaUJaxaU1XUB3i1/LX8yivgCSV647kEl?=
 =?us-ascii?Q?M0f+stPo3bNDR5YFFIzQjWtYq/QuHCOVxabKD5tOMpObCVIrzd91MvZuyGZn?=
 =?us-ascii?Q?lCFsd8nri8KaJw5+c0RhzqNWvUEutz1GD1TCNFfKSL4L1vBzhjQlJoaMPxIb?=
 =?us-ascii?Q?2t5vwHf34u02yCxnHyCJ+ZEqiupeOfgdWW2qtmOs0XM0XEQB6JQa15DMRq/d?=
 =?us-ascii?Q?xZrNLve2ctlMYoBvk+aTlxr4WLSpRGQuBftl/rlGFIKrzEo9kgE4/wB5dAY0?=
 =?us-ascii?Q?VAgxvSZUnL35fpMCvndlv1R3E0rPDiIq1jPeBAsXK0glW//GiSsxo/Ggv4Xo?=
 =?us-ascii?Q?a4QGs44exCf21G1/mQZ1xvV01J8Pwsr0+dlzr6YoLI9Pt9FhvlvNWma0kJH2?=
 =?us-ascii?Q?C9B/3PeNo8QZ5hHE+YVY3f3znA1Frz26mZXN/dUdJdLxmDfWuc3vtKpMLJk+?=
 =?us-ascii?Q?OWha69RzIjTBP+eeM9nr4gCJ+Dy1i4SKQWZo6pTG/DS2zWlKs8tcIqAvff29?=
 =?us-ascii?Q?MdSi+1+rHOaZcgCtJiKyAymWNV7iC2CfATkkfyiU4zSiRI5iDUIh3g4tCP3j?=
 =?us-ascii?Q?bE2BWQpQhz43BW6HxOvmJu/Oc5urLrjd2fcYdxanEket7U4m2PFTescemMX7?=
 =?us-ascii?Q?Y3vcyLE0Yp4ib0gK8X1DjDFKKeEi68EAKiQvajFsXDkdPr+h7+VTd63e8V2C?=
 =?us-ascii?Q?KA3sv1C34pmvFgyR+tJxkKs9OlJBdJ90n6E/7tl8cfxer0S8ntJW/Z5Cs0q8?=
 =?us-ascii?Q?5js3Al/EJSoHrJ/qmpL1nqD/bCuAYP2TDr9tyzpWuHySrecj2QS5DEnI1kmS?=
 =?us-ascii?Q?xsdCyCw2DyW7eLL6eSi/7NkktTmO5ei+bI8TOvjHVNGOS0VRymP/8g1JrcyL?=
 =?us-ascii?Q?PmR5rSHXN6NSeiRipPSFZ729KpccQQc99SMw66Z8YjqkmKWQIlgedDG8S6Xp?=
 =?us-ascii?Q?vnBK8M/OVhIV5PanOWRNj/k4t7TRqRlKvWCQbL29AJpgXv6TBQUlIQWaO1O5?=
 =?us-ascii?Q?lOer3WALF5dmBqeUsmoT1Ds7fmxF5dHqNPnWGmzWn85ZYSFYyd8iI1S2WlP/?=
 =?us-ascii?Q?Ldum+lBKQyOk4Vli3mENudELKfpSoGS3fjPcpzgz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99283282-0909-44fd-cb33-08db15a61141
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 13:58:40.0711
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cBT3SMSrO1gdpdulLAS0A36j0wbD/fXY7QiYgZSwr9GDHz3s760m6V2bLwQUpkX2xB9jo9xtozN1KDSzCrdVOhrtNG74+O+VkcMaDTbEOVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR07MB9859
X-Proofpoint-ORIG-GUID: lSbKcBo_U675Yp5IFfOyotXL9Sl5IzGF
X-Proofpoint-GUID: lSbKcBo_U675Yp5IFfOyotXL9Sl5IzGF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-23_08,2023-02-23_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 mlxlogscore=624 adultscore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302230114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_055848_004275_6DDEEAA2 
X-CRM114-Status: GOOD (  19.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Subject: [PATCH V2 0/2] ARM: Layerscape: Add LS1021A IOT board
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is the version 2 of the LS1021A patches. It merges the machine support
into the Layerscape machine and add minimal support for UART, DDR3 and SPI
boot.
Unlike version 1, the network support is not present and will be provided
in another patch.

The code is ported from NXP U-boot 2021-04.

Renaud Barbier (2):
  ARM: add LS1021A to Layerscape machine support
  ARM: Layerscape: Add LS1021A IOT board support

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1021aiot/Makefile           |   3 +
 arch/arm/boards/ls1021aiot/board.c            |  47 +++
 arch/arm/boards/ls1021aiot/lowlevel.c         | 120 ++++++
 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg    |  11 +
 .../boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg |   8 +
 arch/arm/boards/ls1021aiot/start.S            |  11 +
 arch/arm/boards/ls1046ardb/lowlevel.c         |   4 +-
 arch/arm/boards/tqmls1046a/board.c            |   2 +-
 arch/arm/boards/tqmls1046a/lowlevel.c         |   6 +-
 arch/arm/configs/layerscape_v7_defconfig      |  94 +++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1021a-iot.dts              |  77 ++++
 arch/arm/lib32/Makefile                       |   1 +
 arch/arm/lib32/pbl.c                          |  21 +
 arch/arm/mach-layerscape/Kconfig              |  14 +
 arch/arm/mach-layerscape/Makefile             |   9 +-
 arch/arm/mach-layerscape/boot.c               |  11 +-
 arch/arm/mach-layerscape/errata.c             |  64 +--
 .../mach-layerscape/include/mach/debug_ll.h   |   5 +-
 .../arm/mach-layerscape/include/mach/errata.h |   4 +-
 .../mach-layerscape/include/mach/fsl_epu.h    |  67 ++++
 .../mach-layerscape/include/mach/layerscape.h |  13 +-
 .../mach-layerscape/include/mach/lowlevel.h   |   1 +
 arch/arm/mach-layerscape/include/mach/xload.h |   4 +-
 arch/arm/mach-layerscape/lowlevel-ls102xa.c   | 379 ++++++++++++++++++
 arch/arm/mach-layerscape/lowlevel-ls1046a.c   |   2 +-
 arch/arm/mach-layerscape/ls102xa_stream_id.c  |  47 +++
 arch/arm/mach-layerscape/ls102xa_stream_id.h  |  15 +
 arch/arm/mach-layerscape/restart.c            |  27 ++
 arch/arm/mach-layerscape/xload-qspi.c         |   4 +-
 arch/arm/mach-layerscape/xload.c              |   8 +-
 images/Makefile.layerscape                    |   9 +
 include/soc/fsl/immap_lsch2.h                 | 171 +++++++-
 34 files changed, 1208 insertions(+), 53 deletions(-)
 create mode 100644 arch/arm/boards/ls1021aiot/Makefile
 create mode 100644 arch/arm/boards/ls1021aiot/board.c
 create mode 100644 arch/arm/boards/ls1021aiot/lowlevel.c
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/start.S
 create mode 100644 arch/arm/configs/layerscape_v7_defconfig
 create mode 100644 arch/arm/dts/fsl-ls1021a-iot.dts
 create mode 100644 arch/arm/lib32/pbl.c
 create mode 100644 arch/arm/mach-layerscape/include/mach/fsl_epu.h
 create mode 100644 arch/arm/mach-layerscape/lowlevel-ls102xa.c
 create mode 100644 arch/arm/mach-layerscape/ls102xa_stream_id.c
 create mode 100644 arch/arm/mach-layerscape/ls102xa_stream_id.h
 create mode 100644 arch/arm/mach-layerscape/restart.c

--=20
2.27.0



