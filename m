Delivery-date: Mon, 13 Mar 2023 15:45:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjQO-006MXU-39
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 15:45:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjQM-0007DO-S8
	for lore@pengutronix.de; Mon, 13 Mar 2023 15:45:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U2/rogTGpZ/pkI1fnR9CdlqbXcqaipbVN8bRNCasKK0=; b=KybhZT50t5tTbt
	ZxSjlTcsnYLZNgzSeZ4/M1TrOt1DlG4qv1nurk4CiveccItYSx9QJZObuga48p0V2C/tLyv4eftVB
	LYTUMi1HULlJLNgdCXzEiKIWrn/NTTcszkrYiqKFWyj3CECCI2jj65lw67/y/adsnl0e9o1ag5xeo
	s4e4gVaZR3dbCY7j8GvAxfMgPSDJpiB2kROqYLxayxDVJAgNpe4xpTmlTZBUzX5+YejxIuw+V+yjs
	RnojiL3/IPhmEtky9UV9q6h1RZvcBrq0Q5vM2Suawb+VP3v197RVO9cE/pWfhY59UHtViwGFVSx30
	JAdE1s/+bwTy6jF9va4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjOs-006Ath-4J; Mon, 13 Mar 2023 14:43:46 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjOi-006Aos-6P
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:43:38 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32DBqNfj016046
	for <barebox@lists.infradead.org>; Mon, 13 Mar 2023 10:43:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=U2/rogTGpZ/pkI1fnR9CdlqbXcqaipbVN8bRNCasKK0=;
 b=VE8xrvlf4PSaxFvgrT0+vLVNYgYpJYJVv2eDtTtnxfhh1/4IDk6IK5r25Xqo4bOmQu2M
 297qdRaHYmHMTWs185zmm4Qx3TtNxnVTsCja66wt3FsJPOJIH3CU3wRFegWH5tVS9M06
 vV3HynRCw9Pcaoc34O73mZCJq16LNJLUSI968IASCRztmsNaXPZJQNw2cKUDmjPs0ABn
 JGNcxETwT6DuNxNKYp2xY2PM3nzOTdX8PAKXYTTu0KI8Py3fhJh1UvnCoz2fxgDkpNGc
 iKuCgxn3EbX3Mnw8IyauyDpE3r8nU43u6EvDqwZfg9ArtGhfzE4SWRy6gVaizAfrEk3B yA== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3p8q4045re-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Mon, 13 Mar 2023 10:43:29 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P5KI6u/dLZWr2Ak7hY4EK/+UwvSvtbjA6jCRS4eG1X6ctdYQhkJJVrr3g5Yahjga3WUiM5RQG2op0c5XLxXL5xCKimvd4WJtRuTIuxurhGvxJOOX82oD8GgOWZuo6XoECGIN5Jm5iFetvIykxShvb2AmYdXu8J2lglg9xMa+ZuYWoiWwA4ynucsg2ora5dQ6oK264tfoOsYgyCD42OoWXYJRBTF6egHvmOsb1MQWLgQVLpFArNjMIo19puQJZss20wP/VjrG2E2HTRsrU+iyqgPYSD05gTM54jwVWYJCnaVNlIfzQ8iZ7IR1QMj42CaWaADHFEv96EsvGR3V/aH+eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U2/rogTGpZ/pkI1fnR9CdlqbXcqaipbVN8bRNCasKK0=;
 b=SPPXTeQQ1NbtizPAzg6vdzC1WFQ7phAOKFtVBekQAwkumT30jLPAPMUQdgdIwVa/E0eUvfecM4o1xZ1DokDl6/XVkax9xAp+biWdHiSuItM/NkzVudI1ULfOAjFSbRj9E+Jzdi6O76rvYoRNg3iVJZXObjTmI4rm72iGAQMNKZspRQsArxIDTFyxfY3B3NEHogjglh5XgA7cCrKX73XBzcGL5/RkNac8mITzA1YOGSwJ3zm9vezjZdp4ZTjhLyWbrNmzlbd0TaQiJJDCjHf9smuJi3w35eJ9qReAHeFUhP3bMQkl7bd43bPEabDaNUc5kWwlfi1RNjmW7RhbH+PPhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U2/rogTGpZ/pkI1fnR9CdlqbXcqaipbVN8bRNCasKK0=;
 b=uT6Y2ueHnIZIdqqiZcxcudQC9ZoIM+CeluH4+COf8pAD7VCg9o71KqSXvwETmvmWVzyg8qxatdLUaKPhI9GYIJrquTAIydorFnaErSw2f2ydvl4Ms6PkNS+CCDdquKzrqFYXsJaS4MtjEkCfKIW5Bxch6YqQsuRdNFK6Mh4qdoc=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by MN2PR07MB6494.namprd07.prod.outlook.com (2603:10b6:208:162::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 14:43:27 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5%7]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 14:43:27 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH v3 0/2] Initial LS1021-IOT board support
Thread-Index: AdlVuiMQ2DVws+SJSj+P47mTitYI4Q==
Date: Mon, 13 Mar 2023 14:43:26 +0000
Message-ID:  <BL0PR07MB5665108F4F12614684A2569BECB99@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|MN2PR07MB6494:EE_
x-ms-office365-filtering-correlation-id: d66071d6-821a-432a-dc60-08db23d14e23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  kHuBJNe9S+Z/cXfSoCsSG9gzNg82nVVqbFiRoSczN2pPj3xaver9rYNTfNLEk2pBzq/8XOPEEz/97pI0XGupN4c4X7ufA1q14SQAGexhAg/NwN9v8/+IzU+9+PlyDUE8Bw52YqGLHpsnslz7wppkX60rX3cD/HsamhC1NY5l5+TP3yc1JIEiw0fT1Oiixa3O2CjRlQcDYQ4wqqyQZomScHvbjTMXpMDpJHaCvDCPpisucwbgO3lV71757DKSvaKgvY4YI5L0B03bjIttLwKd6RcyuHR9oJ5cWKpXB1Dy6SH+kVeQyLMI9aVUewkRBZBBjyuS36zS5hXg3vZC7/GLX7QXmKqa9ej1/zCXN0a9QjKW7W/1VEGiagekYPYQdj7OlrXZqOYVnQJtzwof0MGgqtNVw1ivgflbhC8z1CUFW3o7u6fG793GOKgIthp3HgyW5qsQl/mLrXHVBb7FKXbPZuhXvJoawIdMIZ0+CLIM9jrkIHRT6HzfFNXDu5R52zKSrbcZxKdVf+6EQ+spwYk0Eju747pYl+qIpu8Vhu+T9f2WNJXhP/HcfAZHmhJ4DuImLw/PDXtF5F1hqrN+Ls6tBT2Xus4JNhmjq9l8BxrmOePI8pMgnZT8lGTbRubQsepbII1nsycB0D4BbiO5XrXEuRoBVbesFI7J1chwgmTm2efd4JTBuc1glwU8RtlpnBss
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(39860400002)(136003)(366004)(346002)(396003)(451199018)(2906002)(122000001)(41300700001)(83380400001)(5660300002)(52536014)(33656002)(66946007)(8676002)(64756008)(8936002)(66556008)(55016003)(76116006)(6916009)(66476007)(38070700005)(38100700002)(316002)(86362001)(66446008)(478600001)(186003)(9686003)(26005)(6506007)(71200400001)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?cR8JqrO6qc2myEt2Nbajpm+58Z7r8snRe/csWWYeMhFdo4nBa9eRrIbExitB?=
 =?us-ascii?Q?iK8yG0Cu7xIgxT/7fbFFV7lfslH6NbX87eirCNrZwYQCgTV0fHjpcu3fwCN4?=
 =?us-ascii?Q?N5j6wqGJa4MfQR2GJ4D4ozTHQEJxQC9J/JAOC+6hKneU2YqDqMVpPbqEMT/j?=
 =?us-ascii?Q?G45uZArJsoKhM9seRTgWIaugPSspQpXDbV8OrLEcbk/AxdJ7IpKH1wxCX1nh?=
 =?us-ascii?Q?mbn3V8dlpAFeyrb2ulOKIP6FvX+5HE9jXSV+5tSg+vSwXNNfmpOQgsKDEMOi?=
 =?us-ascii?Q?FXOOClJQPQC6TZutflx36qLMiQJyKnv7+Oh39Gcv3tTioNHyIUocVAEwiiEt?=
 =?us-ascii?Q?jmiQCTGv9GRwuYNxNUZWxiEs9PI0GLqu6Gip1Lj3mUUULgBvegy6FPXOe3Gj?=
 =?us-ascii?Q?H+Tj5p2Th9im5DapGtILUIfsia7PIz36xGZFhJQpRtXeB5rvZ9c4XGpyBU2D?=
 =?us-ascii?Q?phcWq+0io54B+jup5QJiGxFNZNad+uTaACULZHzFXik2TzE9TRywTy6J/YAw?=
 =?us-ascii?Q?vZ6oGxIXwFHtJJ3FL30Ue5WkdxqtPuopTxTWL7q3Rhl8g8Q+Xhg0e/00YbUN?=
 =?us-ascii?Q?MpNTdGTsVQmEb6YDJeACxuchyvrUcP5YnCbHaPRarZGamXczClnP4VyHVGVO?=
 =?us-ascii?Q?aRyJWAyTHG68KgVwF23WiaL2WAHrgOnfG1Hxa6vIweaMwR9J5Gn56s/FCQ9M?=
 =?us-ascii?Q?0WRmftoACsTkFnAG9cFXOwNLEcZjjhloYgLZJggqw2QCI4znMYvvyGwDbhib?=
 =?us-ascii?Q?IITwjJutEmhz2oQHkEncTHk4TqIgoHz60RHLyVO4Heg06z43aCLktLV6Qkgy?=
 =?us-ascii?Q?vbG3gTf5c+pwKWZsnJ7HFhBWlhaN/Y0w/UP1xLj+EvtLtCIG/gYo44VMesZw?=
 =?us-ascii?Q?E4bnOr8fK+NqakmOsK1XfT0pQD6zYxHsGnzHTDIb4c8DTARAJ4h7VHTpU4KD?=
 =?us-ascii?Q?GHtdur5RQPY94CwvWFsRhuJQVo5z5fz0ZtQ1iEfgLxNXceiGCP118J58IHKl?=
 =?us-ascii?Q?DtyrA1XxIpklezIplc8UbjDrqcEVnIVm1gfUd8OywXVRPw5ODp7lULiD2RTk?=
 =?us-ascii?Q?4VFB21IFYSyHvY9NzXv4KjOlogBK9HptS9lcBeBrvAxVoJQbCOriwZhSzyYL?=
 =?us-ascii?Q?ina9MYfG1t2tpnM5lUmGblNnx/W/8JRpWPXKB+QETVDHGpHIrVRw3ELA/WHs?=
 =?us-ascii?Q?jn4yNA68LlCsYT4MuPcMKC3SRiE/Jm6ChKl6M6RLOR03SCYZe5QFKXpru1dL?=
 =?us-ascii?Q?UrNahRwU/TCZBIFoz0EgQ/iR7mya4LXbcZK7DGd648Er1zFUMReFu5XGtcY9?=
 =?us-ascii?Q?o1CoW0YECSwBrzOe+JlnYAWbUQRiRYuJD9QYX7q9u4ABz6kWDN2h1JqbDmre?=
 =?us-ascii?Q?BmgnYMjniCWXvCPZy7uweWaTq5AE4wBGj3UYowiBV5PCCDSQXIYV9y8AIaIA?=
 =?us-ascii?Q?HIgkxrb1VJp9WPPuvDl2hwpHTZ60zgBNIrLUl6lewK/hdyvi5O6frw1hkBEN?=
 =?us-ascii?Q?9GfPPCRto+S2nATrSz5fy10B07n7xh1EiITi9XuWTHy+n8Te+03n+1hTmJuK?=
 =?us-ascii?Q?zuseWlmQKwPDuPrdrI1P0JKgf28X6VV125sdMtJNXFte7043UM/u+2GOLA+P?=
 =?us-ascii?Q?3A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d66071d6-821a-432a-dc60-08db23d14e23
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 14:43:26.8854
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cYI67CsK4pRS3CPhjmMWOYxBb5ztOTwJs98Evz5iG7u5RW2MZbbMDKku3e8m2YzbYFRuz55HqPKtymLcN0s5OuJ9p0lEhzH7dkiG3ipBmOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB6494
X-Proofpoint-ORIG-GUID: i9XkMXeU_s2aYVfObal__JXqIByRcGkM
X-Proofpoint-GUID: i9XkMXeU_s2aYVfObal__JXqIByRcGkM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-13_06,2023-03-13_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0
 mlxlogscore=533 malwarescore=0 bulkscore=0 adultscore=0 mlxscore=0
 lowpriorityscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2303130115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_074337_092283_071990B0 
X-CRM114-Status: GOOD (  17.63  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/2] Initial LS1021-IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After the acceptance of the architected timer, the LS1021A support is sent
again as two patches.

The LS1021A-IOT is NXP ARMv7 Layerscape evaluation board.

These patches provide a basic board support with:
	- DDR3
	- UART
	- boot from SPI

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
 arch/arm/boards/ls1046ardb/lowlevel.c         |   2 +-
 arch/arm/boards/tqmls1046a/board.c            |   2 +-
 arch/arm/boards/tqmls1046a/lowlevel.c         |   2 +-
 arch/arm/configs/layerscape_v7_defconfig      |  94 +++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1021a-iot.dts              |  77 ++++
 arch/arm/mach-layerscape/Kconfig              |  14 +
 arch/arm/mach-layerscape/Makefile             |   9 +-
 arch/arm/mach-layerscape/boot.c               |  11 +-
 arch/arm/mach-layerscape/errata.c             |  76 +++-
 .../mach-layerscape/include/mach/debug_ll.h   |   5 +-
 .../arm/mach-layerscape/include/mach/errata.h |   2 +
 .../mach-layerscape/include/mach/fsl_epu.h    |  67 +++
 .../mach-layerscape/include/mach/layerscape.h |   7 +-
 .../mach-layerscape/include/mach/lowlevel.h   |   1 +
 arch/arm/mach-layerscape/include/mach/xload.h |   4 +
 arch/arm/mach-layerscape/lowlevel-ls102xa.c   | 389 ++++++++++++++++++
 arch/arm/mach-layerscape/ls102xa_stream_id.c  |  55 +++
 arch/arm/mach-layerscape/restart.c            |  30 ++
 arch/arm/mach-layerscape/xload-qspi.c         |  43 +-
 arch/arm/mach-layerscape/xload.c              |  20 +-
 images/Makefile.layerscape                    |   9 +
 include/soc/fsl/immap_lsch2.h                 | 171 +++++++-
 30 files changed, 1255 insertions(+), 37 deletions(-)
 create mode 100644 arch/arm/boards/ls1021aiot/Makefile
 create mode 100644 arch/arm/boards/ls1021aiot/board.c
 create mode 100644 arch/arm/boards/ls1021aiot/lowlevel.c
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/start.S
 create mode 100644 arch/arm/configs/layerscape_v7_defconfig
 create mode 100644 arch/arm/dts/fsl-ls1021a-iot.dts
 create mode 100644 arch/arm/mach-layerscape/include/mach/fsl_epu.h
 create mode 100644 arch/arm/mach-layerscape/lowlevel-ls102xa.c
 create mode 100644 arch/arm/mach-layerscape/ls102xa_stream_id.c
 create mode 100644 arch/arm/mach-layerscape/restart.c

--=20
2.27.0





