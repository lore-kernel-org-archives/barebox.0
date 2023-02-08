Delivery-date: Wed, 08 Feb 2023 14:28:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkUp-000bAH-IR
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 14:28:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkUm-0001AU-19
	for lore@pengutronix.de; Wed, 08 Feb 2023 14:28:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gVk/pJSN+cnnh3mnifnbVxxPGkSMW18vQy8A/3vAA7I=; b=h4Ke2C9iWUoToV
	73EWIuOp7AdCSbqeaOAvduLoo5BDSSQtik50Ns4ghcSYzo/BnyMYUYGkz3mP/bgqyKiXGXM/I5isM
	XIAm7rKe4sfJLENh+L9SEjVBojEPo+O5aQr8Eq+q+DSq2KD0b9yrk/mdxlqSFfGY9cNTb7QytbJ+d
	K3NIYV5LqoohCsumYt9yRa9tNnAaqG5MjlmLBpopE3cKxdEvX9BYusrkglO7CnyYieVpSQZQRpOcG
	OlhlrFPaDndTEY/uSmFkLkCq6GInG5Pvlui7kD6sZpSAJcdo5fxsjZBb1ryysaY6u3QMj5eNO5UWI
	r+zkLpz4lkhrwF6sjC8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkT4-00FjbQ-VV; Wed, 08 Feb 2023 13:26:35 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkSz-00FjaK-Dd
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 13:26:31 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3188wDsc018310
	for <barebox@lists.infradead.org>; Wed, 8 Feb 2023 08:26:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=gVk/pJSN+cnnh3mnifnbVxxPGkSMW18vQy8A/3vAA7I=;
 b=nyl8kxd6HQfnQQ2SbH43Fo5djH0BgEP8T4FFJxDJiif2OCEI6aBz4135Rt1RhTAlii9Y
 8FjcH0Dz7WrRW8K8ux1r8/aJhHTlCoX7ljCaWWxzFqn9TmhIyYqzb3mr8G9SVO8q8vIz
 wJsWyRm8/yqq64rTTpt+Vm3DkuBZTzz/RHIWErJH0L4BRVhpHwb58O0QTzHya1JO80li
 saUvEokqV61xVCTVhiX/p5kHEUmoG3qhSiUacMl2fJ7S82Ep9ZJZ/GKvSHUFh+xvSinU
 8GpELg5SkNO2EdjpsenWT7HdRPjMUH6RVVwKGk11TZ8cMaOQ5iFDeCtxGNYAReytPCH4 QA== 
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2048.outbound.protection.outlook.com [104.47.56.48])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3nhh4darkp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 08 Feb 2023 08:26:24 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j5MPNUmdESmiL0KNV0NTrcffm4RRXwNuBHHWnxT9ZjLsQZBkDslVz4YnGX4vDZon58zWo+C8hZmUJ1VgSzwoiZKDi+Y5KIgmKDg8YkUxTIbF1+rPTwUMMFYKw4cj4vxdHiteCNpoDtK7amtozfQk6dR969IbnwEXlNXe4Jm90NS5w8Njx0w3ZaM01WBRH7alL2E8keFD77khRX1VHr9h4vXeymKe8TPXftXqgFmw1AfzSUv7ktGSN0PSMEsl1vg3qMG8mqYfwgVcQTgShbe7Q7WNiJbEB2KuiZTf7d7bhhZTJaRC7vQoB0RXUDcvgu3NYh2MTZq9t0QuQMec7HmvIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gVk/pJSN+cnnh3mnifnbVxxPGkSMW18vQy8A/3vAA7I=;
 b=H0iDVF5+mOcLkhVeBay5o8AmhHcIq90RqhIQojVZ7LStK4H+dJQXNzfmkrre4ee/H7pEDjclniyrHuStKElRQuX0zu+xba/IkwPmBqnUd9JZJItcXQeUK+kAGeASwxEM9W7bIfz/1NictUn0KiOh0xeCFC2uzUbWR1A60keQbDaefNy+3kDIaW7qjuAAyYgvE4bvwGyz/K51JAKDVajvAzuOS8jiFo+GT8x97Fi4X2h0VKLcVJGF7SlsdV1D9QBRS1Ivbqf2BGtAWDz9mi9oQmzTAZB6ICRC4n85+78LU6Hk75WyDx3n6iqiv0G6BGVtazi8PCefRSbubXa8D9OZOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gVk/pJSN+cnnh3mnifnbVxxPGkSMW18vQy8A/3vAA7I=;
 b=jPdadD7xbc8i99VH0FCydsOsiWch3uBJAQxvC+nG7c5Sv3bGkGasnMKoVbQRrca9yp5IJFfiQ+m7LTP0qznvhEkW77yp9uXMGbaush1zRh3AZoJPzoEl62K0ri0jUrDqQp+Pr89BopbF9Qur6anwkpWU3rle5CnXFfzfKK54aA0=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BN6PR07MB3475.namprd07.prod.outlook.com (2603:10b6:405:64::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Wed, 8 Feb
 2023 13:26:21 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%4]) with mapi id 15.20.6064.027; Wed, 8 Feb 2023
 13:26:21 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 0/2] Initial LS1021-IOT board support
Thread-Index: Adk7v9bvPBNVfXZOQru13eL/yEG7oQ==
Date: Wed, 8 Feb 2023 13:26:21 +0000
Message-ID:  <BL0PR07MB566568DCB4AD086C7C4C3961ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BN6PR07MB3475:EE_
x-ms-office365-filtering-correlation-id: 96f27dcd-22ce-4be3-a002-08db09d8115b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  nlIL43+7C5R085JrkHki2XzSropYjfT+n9GnADrUbJ7hWdGDGW+IlT4NqH5vuU71z2LlwlnL2iNrdy2D7izrqZaV72HHsdJh9t0hBIKP1H1cMiboNU4a8cK92dsAog1bQwpz6XTo9Y+T/bQz0hgoHDcJLgfy635VIBR6CWQEazgarO1AqfNykOr2/foj/RJqB8rxhyY1enNLVPz2geZdxfxpcbdBvf1TFoAYEEN/Yw98K7PiIka0Km9T4uocqTe9bhEN636jh/R8ISJc6qiiETt9iikSIdKSk9s8dQPHM3XvUz9rL5YWXho6NpPW4L5ojMV39gdrZNdXiBTqtkn8B1ZpwPFDw+m+7UlAKGliGW40NqjAD08JcAuSlit8ao6P/WJTGUuKal+/0SbCG6g435PGPWP6x7lnqSXdma3A3TmA4R50pfEdaVe/yYh3gzWOZRBcItImZhtxliUMnNG0dZtw9yalemNcWx8iabM5r/qCHtP75iFYlFERCi8B5NiiQkxQoYJdu2VKSI0cPKUEw96QnzHTiH+AjgmBhW7IvF9QwGQ/HQgnG+lcukm+gVtQDUrIMYS0yVlrXvMpKw7jLGWyKDv2Vga1Axm77m4VrQqU6O/0QAxlp1yLG6YPBSbZJroLny1cZBDq3epqUicr4wJCwK8aI0xgnWYSUFFw+KVluCGqYa/MRbJifYhb7pud
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(39860400002)(376002)(396003)(136003)(366004)(451199018)(33656002)(83380400001)(316002)(6506007)(478600001)(7696005)(186003)(26005)(9686003)(71200400001)(5660300002)(8936002)(52536014)(2906002)(86362001)(76116006)(55016003)(38070700005)(66556008)(66946007)(6916009)(8676002)(64756008)(66446008)(66476007)(122000001)(41300700001)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?lTLacjh+YCQPo2BXxOolwBJZ4bGSUkQKCVYtSSZ+HbRC/DjQtVEmW7iP0e5e?=
 =?us-ascii?Q?SmfSp93L0jAC6s+y2tHaBJr4FVYgweG02B/4zeEpbVb2ilsyiaQFopk3OfzA?=
 =?us-ascii?Q?Jt6pbVf+fTHkcW+JaoQJX6nIrPYCOX6rrV/RVGqcpxx3GvK5Wz4gsdglMoWz?=
 =?us-ascii?Q?qFh99w7DSBu6JZmI86+ibtI/ony40rmALaRS1OVW44ADAcDg4pYccTorHgp2?=
 =?us-ascii?Q?tUNn9gAKEbD1dWwWZcAvtMNWRL8wSBr0K2GHiV3YDtAAr1aK8KWGzgI/3M0l?=
 =?us-ascii?Q?3uDRNl5dl4PMcCQcO4gQ4+xVTyYYAJPBh31gjbNtWYfQsZdTLdfWlZqQI8dd?=
 =?us-ascii?Q?2yrd9zlEogIGgJd4EIXBm1qdDxqp58xoR5w33Xx7kJMdHumMJkK3ndRLXDHw?=
 =?us-ascii?Q?E9nORv2quRVV1IbiwIZp4bnS0Ggi3upSL1B/PZ0eeK0M3veisJ1z4hqTF6wp?=
 =?us-ascii?Q?IGnNLZzRceTx8hGST5i6IGNAtnrqzpb0K9x2Czg5Ge5ns9tRsvxO7x+z8ycw?=
 =?us-ascii?Q?6qSUtTFbQzYAVr7m+Y2GBmU9ClmJfR0P9osYy6a7lZ21rSJH60QxPcX6IbN1?=
 =?us-ascii?Q?E1Z/vZbNC5baaLEkSgIvMlL6wSMNqEtBsYbTY28y0wed1ztt7qzODkWiLvhH?=
 =?us-ascii?Q?Zwmd9h8H5XPO9gPct2rDKjGqNkmBnzWnMpnySHhP47nQrb1UZRDRDBsdot5F?=
 =?us-ascii?Q?0DvhRzstW1LXE54pXRjc8j+fBrs5MEnVK2TntLkoNp0sFFpJWmGolfPaPCea?=
 =?us-ascii?Q?rw3tQVI+EwiMHWGREIYYpTXE6mqzR0vMSj/ekke8OwKPOTab8ZrXHPXPpPhs?=
 =?us-ascii?Q?xB3V1FSoYmmieudwJAzZ0Yd5C/lPXGHtfYsQRr2o+DMdP/xyNfo6XgONjrDI?=
 =?us-ascii?Q?GekS+qXz4J+DNTSPXPfeTDN2XbhTOsWJ5E6fG8EjSZ0rTLfK0wzf0INYQlsN?=
 =?us-ascii?Q?PtoT34qEUk/2Ig4BHQY1feIRUZEzuKg+SdCuQ7r4usH3Yg2Fbb3eI3DJaGX7?=
 =?us-ascii?Q?hq5vrM8xjbV/7y76qaLX1OyRsy//GpA72GDdlqZFUrn1iseSGh813DAdXpib?=
 =?us-ascii?Q?D2zoFQg2G+s2M5JWVCksyHJqboNhHyhE9EKnZe/8GAlzKXKucFDcSwdBJBcl?=
 =?us-ascii?Q?3Bu5sDrR2+sYhU1WGMkg+VYyX2V6CEs0wQYfOFkm3Vi/cof0UUllMqkIWPx5?=
 =?us-ascii?Q?Dpd8qAdgWctnDeZVLMzGJISA3sukGcL/Ka+MlHw/bucLH++81l7i4o6g4BpN?=
 =?us-ascii?Q?hSWktQC6DBLeq11wKg3UEYOIiWwBKxlWz9qbfAzowDZ/tppVqqrSWJb4oRBZ?=
 =?us-ascii?Q?8QfcNWoV9qeyP+NqaiR5Zg4RFk6mpKaugnsfEx8bxFxleBoppkOkTvQEox6M?=
 =?us-ascii?Q?7f31Gx3MeZjOBfrXBp0UeA8WBWUGP+CEgBgp9XuSE6oNcvOinvSigj5od7p1?=
 =?us-ascii?Q?T+i8pbyED+5Cs8HT73Tk1f3OKJBrxI0Hm2fbxrv8HCYc94I6SyCan3ihU4UO?=
 =?us-ascii?Q?g32kHhbTEdAPLQJd4T8QYhNXomR7i+nYwlYHV16fWW/OyCk/4cJ4Shh8CJSf?=
 =?us-ascii?Q?/W8Nh/XJvsOSEQmbHzVWzFCSGH03uo7V84jn1IQ9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96f27dcd-22ce-4be3-a002-08db09d8115b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2023 13:26:21.1704
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 551AMDl9N6DbnSMyCPdVzsy9rEr8TB+x26zipqdy1hfuDLbvhgqBMVsbYkcRrf8EM3bsHeDIUv9Bzn/ARjWINwrzn8Qk1DO9DqshMQVs8fw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR07MB3475
X-Proofpoint-GUID: t7wxjyIDf5ydphj9ayvAQO1f1vCsoUVY
X-Proofpoint-ORIG-GUID: t7wxjyIDf5ydphj9ayvAQO1f1vCsoUVY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-08_05,2023-02-08_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 clxscore=1011 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=753 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2302080119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_052630_227158_C29A867A 
X-CRM114-Status: GOOD (  19.39  )
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
Subject: [PATCH 0/2] Initial LS1021-IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The LS1021A-IOT is NXP ARMv7 Layerscape evaluation board.

These patches provide a basic board support with:
	- UART
	- boot from SPI
	- One Ethernet port - eth1*

The content of the EEPROM having been lost so the MAC should be set in the
config file

The code is ported from NXP U-boot 2021-04. Like U-boot, the machine suppor=
t
i.e mac-lxxx lives in its own directory. However, it is very similar to the=
=20
ls1046a machine support. This migth be merged. Please advise.

Renaud Barbier (2):
  ARM: Add Layerscape v7 support
  ARM: Layerscape: Add LS1021A IOT board support

 arch/arm/Kconfig                              |  12 +
 arch/arm/Makefile                             |   1 +
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1021aiot/Makefile           |   3 +
 arch/arm/boards/ls1021aiot/board.c            |  83 ++++
 arch/arm/boards/ls1021aiot/lowlevel.c         | 121 ++++++
 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg    |  11 +
 .../boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg |   8 +
 arch/arm/boards/ls1021aiot/start.S            |  11 +
 arch/arm/configs/layerscape_v7_defconfig      | 100 +++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1021a-iot.dts              | 124 ++++++
 arch/arm/lib32/Makefile                       |   1 +
 arch/arm/lib32/pbl.c                          |  21 +
 arch/arm/mach-ls102xa/Kconfig                 |  22 +
 arch/arm/mach-ls102xa/Makefile                |   9 +
 arch/arm/mach-ls102xa/boot.c                  |  39 ++
 arch/arm/mach-ls102xa/errata.c                | 112 +++++
 arch/arm/mach-ls102xa/include/mach/debug_ll.h |  36 ++
 arch/arm/mach-ls102xa/include/mach/errata.h   |   9 +
 arch/arm/mach-ls102xa/include/mach/fsl_epu.h  |  73 ++++
 .../mach-ls102xa/include/mach/layerscape.h    |  11 +
 arch/arm/mach-ls102xa/include/mach/lowlevel.h |   8 +
 arch/arm/mach-ls102xa/include/mach/xload.h    |  14 +
 arch/arm/mach-ls102xa/lowlevel-ls102xa.c      | 378 ++++++++++++++++
 arch/arm/mach-ls102xa/ls102xa_stream_id.c     |  46 ++
 arch/arm/mach-ls102xa/ls102xa_stream_id.h     |  17 +
 arch/arm/mach-ls102xa/pblimage.c              |  60 +++
 arch/arm/mach-ls102xa/restart.c               |  27 ++
 arch/arm/mach-ls102xa/xload-qspi.c            |  34 ++
 arch/arm/mach-ls102xa/xload.c                 |  22 +
 common/Kconfig                                |   2 +-
 drivers/clk/Makefile                          |   1 +
 drivers/ddr/fsl/Kconfig                       |   2 +-
 drivers/i2c/busses/Kconfig                    |   2 +-
 drivers/net/Kconfig                           |   2 +-
 drivers/net/gianfar.c                         | 211 ++++++++-
 drivers/net/gianfar.h                         |  16 +-
 images/Makefile.layerscape                    |   9 +
 include/soc/fsl/immap_ls102xa.h               | 408 ++++++++++++++++++
 scripts/Kconfig                               |   4 +-
 41 files changed, 2044 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm/boards/ls1021aiot/Makefile
 create mode 100644 arch/arm/boards/ls1021aiot/board.c
 create mode 100644 arch/arm/boards/ls1021aiot/lowlevel.c
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/start.S
 create mode 100644 arch/arm/configs/layerscape_v7_defconfig
 create mode 100644 arch/arm/dts/fsl-ls1021a-iot.dts
 create mode 100644 arch/arm/lib32/pbl.c
 create mode 100644 arch/arm/mach-ls102xa/Kconfig
 create mode 100644 arch/arm/mach-ls102xa/Makefile
 create mode 100644 arch/arm/mach-ls102xa/boot.c
 create mode 100644 arch/arm/mach-ls102xa/errata.c
 create mode 100644 arch/arm/mach-ls102xa/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-ls102xa/include/mach/errata.h
 create mode 100644 arch/arm/mach-ls102xa/include/mach/fsl_epu.h
 create mode 100644 arch/arm/mach-ls102xa/include/mach/layerscape.h
 create mode 100644 arch/arm/mach-ls102xa/include/mach/lowlevel.h
 create mode 100644 arch/arm/mach-ls102xa/include/mach/xload.h
 create mode 100644 arch/arm/mach-ls102xa/lowlevel-ls102xa.c
 create mode 100644 arch/arm/mach-ls102xa/ls102xa_stream_id.c
 create mode 100644 arch/arm/mach-ls102xa/ls102xa_stream_id.h
 create mode 100644 arch/arm/mach-ls102xa/pblimage.c
 create mode 100644 arch/arm/mach-ls102xa/restart.c
 create mode 100644 arch/arm/mach-ls102xa/xload-qspi.c
 create mode 100644 arch/arm/mach-ls102xa/xload.c
 create mode 100644 include/soc/fsl/immap_ls102xa.h



