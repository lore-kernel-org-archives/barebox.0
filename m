Delivery-date: Wed, 01 Mar 2023 18:01:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXPpn-005mt7-Tl
	for lore@lore.pengutronix.de; Wed, 01 Mar 2023 18:01:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXPpm-00085P-4b
	for lore@pengutronix.de; Wed, 01 Mar 2023 18:01:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3KDOZTA/xBL05uqfLbn02iDFhQ66EcJYClb+eapvaZE=; b=VTQ8R/d7Or5K5B
	UISu3o8gwd6XDBN4b2vxA6u0W5CFk3UEHSv4/V2nCK2A/si+mruOmwC2n0vIjOd7Du8iZlc/uJcqP
	Jv1R2/XVwSJrXoS07kmrE2mJweGHOaLx3p4PLLAehRsxSJhrbCKSafEdNyocWBfbjci0zcBy+DveW
	4XdHX/cP81XrijwMhT3i00c8fXuKGda/pQDNq3kQVNXYYaLfcSuZk5VV1esminPELcjQgsv/TOnrx
	+JJCxPVAe3fa+W9sNF7wo1fW12054AFKO9ftGnIab6SX+GJkZCt85VOcu6jeRd0uWGYhXrjzgLfAi
	8fslqkXZHBaqcshghzyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXPoE-00GufD-8w; Wed, 01 Mar 2023 17:00:06 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXPo5-00Gucg-Uz
	for barebox@lists.infradead.org; Wed, 01 Mar 2023 17:00:02 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 321FjkJZ009224
	for <barebox@lists.infradead.org>; Wed, 1 Mar 2023 11:59:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=3KDOZTA/xBL05uqfLbn02iDFhQ66EcJYClb+eapvaZE=;
 b=wcKwNyO2Pc/Wrwkd8fxslhHKBGmcq8ZwVs3wJ+qJx0P4dPTET9hNjtuU6A0OiVSsVPO+
 +OedCz7ejmGb4VVPoNkMAZ4ZGt2207S+T4RNDhRbOMHOZfoqu4J7bIZs3cQTI/esktWw
 ijIlic4avsFo7GAzx73E5lxLe8hWRHp8ef/I0M/lXjOqguVmb0yFJ7ApTcJYoqDb4Bul
 hAIPL2POU5hGxfuW6B7FZm/nbixBLyjfKIg0Y8AaBo3YQRYzDIxxFo0v08ifVH48PR0z
 3LAWsQEE5TceeugUSZM6xEEwtfvRHSAWJZSbUGEvixSRzUcYtjFQ7Ksd5otxdh3txOQ6 VA== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3nyde36j5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 01 Mar 2023 11:59:57 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fiiQLWhDFFB7wfdvdqq/nEywv/mj6AfcjoOF+3r9805xWizHgANc6A9n6b4YcdSaAcwzvJWT2nYWQHJoaI+6VgkSuNE+lBNaltJT8sOxMHWCl+LCZ/asgIthf7iIuYYg0uGVMLr0IT3hwGHGVhyzivISa6PFsI6AVZk3UniNtB683km4+OSBSK2wcKuYb42o/L5ZKhs5DRr5MsdvqiTxU4yYTfH9ckIYb+UhKAhOly632l3fhcdhCBhdEws1WHerrR8gCpxORavmFniBAd699KsmdfAka6pati6IHPipzpk4vq5vlX5srWVxdczRKFfgpyWqT542OmANziazsfQ7hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3KDOZTA/xBL05uqfLbn02iDFhQ66EcJYClb+eapvaZE=;
 b=Kj40oSSqHLz9kT7iTML/Qz0f0Qqbiy8M7mOPs90KueI1MIVhhCmnWNFqi/l+1OMGA9L3H/BRZp4WFCD0qJvw9n0RI4rdSI9lDC+7rYAwtn1L5IO7fTz8PAhgLb74Fde5scuk8tCEl2/W9hdmnpHGUSSDzAJMDlPqB1EZlVmXlhyxS5F4eMBdBd3K2zthYLjCy9fXbLK+88gQfrH5iq13lxq6esJg9AO77RhV152qnbxOObX3PVJqH24FsV6uVct+sGJFUHrUzH0ddt/hr1XJ0Bvk4+tIKiaydxANo8wqUZs7uPSzteaFVdSHz8h5XwJ6XQuru5bBxDwf4/txXQEOrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by DM4PR07MB9888.namprd07.prod.outlook.com (2603:10b6:8:18d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Wed, 1 Mar
 2023 16:59:54 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.018; Wed, 1 Mar 2023
 16:59:54 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 2/3] ARM: add LS1021A to Layerscape machine
 support
Thread-Index: AdlMXW90AqBAq/Q8QyK5xoMIkgujPA==
Date: Wed, 1 Mar 2023 16:59:54 +0000
Message-ID:  <BL0PR07MB5665A5ED9E9CCDC47EAD2873ECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|DM4PR07MB9888:EE_
x-ms-office365-filtering-correlation-id: c589baee-493b-4458-7b5d-08db1a766162
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  QwZiZ2+oVFdM3w7ApyATcxfOf7Hy2540jr/V6zi/t1QOFLpo8eNxJOmyi/VMadhjjH3/rlbo74mdXNHBAIpHdxSjKJDcvA0FVxxBwdTWHNom7sbga7BgfcaENx3iBRgH0LZnltu/pSOaaDcXJWqZ3jRnL5+2hWwSfKuyYpEVux41hLNwwZR0T9savBF3oZxHwO6zUwTImsBXPsb/hlgcpDQu9VJSDunpSbJOMYjWRjg6KsX/JC/FnEkoJ+73YDa7nGvDT3o9ueGKhHUmoUAf3PVEytjPJSoHt6ywOyd8Qij5j1+6qn0Mjlzraji+CfgcypiIgAFVtskV7Um91zlMsd6dNLmK9oKP1iWpG5gfOdGZm3J/t3XSWlUmzBtsufrczcOLZwui8PMgMKOd0LfUtm5rjct9VltPUNBdSqElGFqkEuSginJf60WTgV7PPQcy5+i73kYugVB47C0xbXrAXw4GxOo4K1QUZ1/Sj0K6wIIIpese43th53I8KHJl/P9IcF+noL4rErkd5JXE0TAGxP0u9a73vURNJBRRLaUPhq20kxP2jJ+vhEaI1Dulsh8d8yceQsEzyqeYz6DqxcIiJnpauem01NFSD/fGigiSXatKwzohhwf6ZbHfws0nq+WX7XNp5ooudikX4b5u4kgQfocunP5n6CjBPY6SsM1E+ma/a8I83B5+aHZDXThkGsEES+n/FrJYwZwhb7JLuuGN5vDH4R4OaQT8IzUfeHZkLJU6T/Fv31wi/aDgLg6j16cKGeje0dFJRX1XsV1YN3FZAg==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199018)(5660300002)(30864003)(38070700005)(7696005)(38100700002)(478600001)(122000001)(71200400001)(41300700001)(186003)(9686003)(52536014)(8936002)(6506007)(26005)(316002)(86362001)(55016003)(64756008)(66446008)(66946007)(8676002)(66556008)(66476007)(33656002)(6916009)(76116006)(83380400001)(2906002)(559001)(579004)(414714003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?pTBTqWGikIcdpMOWG3mG6jnEUiTiHz2MlYtOz58tgEEFVk2c4oA0rQvTWNxn?=
 =?us-ascii?Q?SqaAekLofv9i8mKalXC5ZBnM0h4k8TxWJkoGGx2dhFKBMVR+kf0rC3yvLY40?=
 =?us-ascii?Q?wqUY6AsiqgT3XgegEb283789CfBnKTSH8osHWwAFJNKGMvq6ziaCET/9WKsv?=
 =?us-ascii?Q?H39q7IdyyrB0XoTJWsdOexI5fv8ZoKRpIIgl4CiOLemtZ69kog5163r0HXbC?=
 =?us-ascii?Q?L6BCzOFOCYkf7LO8n7mi9UZNb9q6IV2qYzK/tvPSgnec9bcHAqWT3YuAK00r?=
 =?us-ascii?Q?B+zZ/ikzoV5Oj9akJN9O8xxYvI43o8wmgs5tIXkLBQVXAS5fJ7C1g8hwYBUX?=
 =?us-ascii?Q?C46DNJVhyut9uhxXv6mxJQq9d/ZVvJl1Y0YF9ZrKPSW/BCh6XzqfdRKhcDC6?=
 =?us-ascii?Q?LxaQ2i8oZu0pU5rWoBV9KcTQ7IZfAJ/ZqG/hzda56Cs/f57kU0XlmYqHTidt?=
 =?us-ascii?Q?SGn4MesaqtUQrsy3X7BRzPfyxjHmCyMdNx9w7K8KH/RWnSTxN1ZNRH0V7seN?=
 =?us-ascii?Q?RBPQpCXCZEPq/r65vP3+TgEbvfJDnrqVxtiDfPH765NbhMaNlffASW95hzEu?=
 =?us-ascii?Q?UuKzTMYm/VJGJXQKYdENKNNKM/dtmxgUur5TJrmyle8qpkQsPNfm3X+OaEJn?=
 =?us-ascii?Q?4EKyb4CgxsffkAv7QoPJfxXF5MYNC0BbM8J+Y4QTBnx701eu+zaIJ1KYlOMB?=
 =?us-ascii?Q?nE0iPbv5swC2wyWf8xxV8H1aDVfRAbuy+qKvyeeAwTHYaqEzA1Yaaz2VP/Of?=
 =?us-ascii?Q?fmZhW4lQtk4yuYEQaONZdZZ5xYFsFMggduAzNqn+0YO7/+u6NYqsvt3spQGN?=
 =?us-ascii?Q?yCVGDR9SHHUepP5rwZ0tnSqDcfgQXN7xvzYYomAWvRv+Zh9bD72banKbHK0i?=
 =?us-ascii?Q?HFwZiHGlp76xCoRU8T1+Uz4znRny+hCqBRmDZgbeauiubcDduI7LSrUk9ubc?=
 =?us-ascii?Q?WwvtQfsnz5rUZm6BQcy99YlSF2XaMbYkIQWwvhKtql437duJR258WZYzPm9U?=
 =?us-ascii?Q?eLeY+RlcRnpdf4zKVhNJAx93SkA0RlUCgHOoQ4NG/VSoT1x6eaVnaRzswtoy?=
 =?us-ascii?Q?R3Krz8d2SMIwkO9Dc7h86gDUD4Og8R52xSgHT99qewuvIKSSzd9HOBiqyXUU?=
 =?us-ascii?Q?Ha+ReN9jhs9q4LZJ5/7qofrQ4ZLZwIpq8MP50b+P3jamec1pWLAoF7LViI02?=
 =?us-ascii?Q?QqTfv6m1PZioqGNH8RsHJj5hkEBUxUuCRQiV2Krxf/XLPzQqR9htkGIIJpJe?=
 =?us-ascii?Q?lLnVQHd6hIlPas7xcQTlpvZ3Xx3hmGW+H9p0Zji2pjRl9sFS45iGWCw0QCN6?=
 =?us-ascii?Q?CazynmbiyA/oPCpgqlkFSQebiOnOK6HIrwbs16CVx8wyA4vk60nyLLN+AW0Z?=
 =?us-ascii?Q?HGYSTlwyOI1hN/C5ml2uEcbc4GCGlvOK/DCNs9hUFeFn/9f/Dw0F63jLG8tn?=
 =?us-ascii?Q?QHrELgDaBdm8doZ3lp7vMoyHodhfHAqiyGaNKAP4muWwMNV4ANLzGoKOPTYI?=
 =?us-ascii?Q?eQ6Iy3HL8/2AgRbHLsncFQQ05Enz2srtfqo3VSaRdK2HC31tBUAA5HIUF4g8?=
 =?us-ascii?Q?XPU5wZ4PQsYQdRlsFtl8eW4G1HBf3QJQ5jVg6/Yv34O1WQR7EIlIRulXmbrU?=
 =?us-ascii?Q?zA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c589baee-493b-4458-7b5d-08db1a766162
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2023 16:59:54.4739
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lx900vZemCvQxgyA67S81m5lxaW5oWNEje5Q7f1TA2CCzqP6qiZe7F12j6q2bCucQBap9X4rGSzkrhoFioh2YJ4t7NJmcWqqXGWnk5yeB0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR07MB9888
X-Proofpoint-GUID: 4mANlmAgaSGy5cBHKiycwieLOByaNT5i
X-Proofpoint-ORIG-GUID: 4mANlmAgaSGy5cBHKiycwieLOByaNT5i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-01_13,2023-03-01_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 phishscore=0 suspectscore=0 mlxscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 adultscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303010139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_085958_075463_6227FA6F 
X-CRM114-Status: GOOD (  23.68  )
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
Subject: Subject: [PATCH 2/3] ARM: add LS1021A to Layerscape machine support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This updates the Layerscape support in preparation for the
introduction of the LS1021A-IOT:

- Makefile/Kconfig
- LS1021A specific register maps and configurations
- errata workarounds update

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1046ardb/lowlevel.c         |   2 +-
 arch/arm/boards/tqmls1046a/board.c            |   2 +-
 arch/arm/boards/tqmls1046a/lowlevel.c         |   2 +-
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
 21 files changed, 883 insertions(+), 37 deletions(-)
 create mode 100644 arch/arm/mach-layerscape/include/mach/fsl_epu.h
 create mode 100644 arch/arm/mach-layerscape/lowlevel-ls102xa.c
 create mode 100644 arch/arm/mach-layerscape/ls102xa_stream_id.c
 create mode 100644 arch/arm/mach-layerscape/restart.c

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f47aea6602..b148c8c1c1 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -192,6 +192,7 @@ obj-$(CONFIG_MACH_ZII_IMX7D_DEV)		+=3D zii-imx7d-dev/
 obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+=3D wago-pfc-am35xx/
 obj-$(CONFIG_MACH_LS1046ARDB)			+=3D ls1046ardb/
 obj-$(CONFIG_MACH_TQMLS1046A)			+=3D tqmls1046a/
+obj-$(CONFIG_MACH_LS1021AIOT)			+=3D ls1021aiot/
 obj-$(CONFIG_MACH_MNT_REFORM)			+=3D mnt-reform/
 obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+=3D skov-arm9cpu/
 obj-$(CONFIG_MACH_RK3568_EVB)			+=3D rockchip-rk3568-evb/
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046=
ardb/lowlevel.c
index 055e5f4c99..7a98eb34ee 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -186,7 +186,7 @@ static struct fsl_ddr_info ls1046a_info =3D {
=20
 static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 {
-	unsigned long membase =3D LS1046A_DDR_SDRAM_BASE;
+	unsigned long membase =3D LAYERSCAPE_DDR_SDRAM_BASE;
 	struct pbl_i2c *i2c;
 	int ret;
=20
diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046=
a/board.c
index 028be890e0..08684239e5 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -47,7 +47,7 @@ static int tqmls1046a_postcore_init(void)
 	/* divide CGA1/CGA2 PLL by 24 to get QSPI interface clock */
 	out_be32(&scfg->qspi_cfg, 0x30100000);
=20
-	bootsource =3D ls1046_bootsource_get();
+	bootsource =3D layerscape_bootsource_get();
=20
 	switch (bootsource) {
 	case BOOTSOURCE_MMC:
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1=
046a/lowlevel.c
index 99dcf1eff7..40e505fbaf 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -95,7 +95,7 @@ extern char __dtb_fsl_tqmls1046a_mbls10xxa_start[];
=20
 static noinline __noreturn void tqmls1046a_r_entry(void)
 {
-	unsigned long membase =3D LS1046A_DDR_SDRAM_BASE;
+	unsigned long membase =3D LAYERSCAPE_DDR_SDRAM_BASE;
=20
 	if (get_pc() >=3D membase)
 		barebox_arm_entry(membase, 0x80000000 - SZ_64M,
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kc=
onfig
index 943a474808..670a7b38c1 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -2,6 +2,10 @@
=20
 if ARCH_LAYERSCAPE
=20
+config ARCH_TEXT_BASE
+	hex
+	default 0x40000000 if MACH_LS1021AIOT
+
 config ARCH_LAYERSCAPE_PPA
 	bool "Include PPA firmware"
 	select ARM_PSCI_OF
@@ -36,4 +40,14 @@ config MACH_TQMLS1046A
 	select DDR_FSL
 	select DDR_FSL_DDR4
=20
+config ARCH_LS1021
+	select CPU_V7
+	bool
+
+config MACH_LS1021AIOT
+	bool "LS1021AIOT Board"
+	select ARCH_LS1021
+	select DDR_FSL
+	select DDR_FSL_DDR3
+
 endif
diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/M=
akefile
index 58d3ea820a..ed55867390 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -1,10 +1,13 @@
 # SPDX-License-Identifier: GPL-2.0-only
=20
 obj- :=3D __dummy__.o
-lwl-y +=3D lowlevel.o errata.o
-lwl-$(CONFIG_ARCH_LS1046) +=3D lowlevel-ls1046a.o
-obj-y +=3D icid.o
+lwl-y +=3D errata.o
+lwl-$(CONFIG_ARCH_LS1046) +=3D lowlevel.o lowlevel-ls1046a.o
+obj-$(CONFIG_ARCH_LS1046) +=3D icid.o
 obj-pbl-y +=3D boot.o
 pbl-y +=3D xload-qspi.o xload.o
 obj-$(CONFIG_ARCH_LAYERSCAPE_PPA) +=3D ppa.o ppa-entry.o
 obj-$(CONFIG_BOOTM) +=3D pblimage.o
+
+lwl-$(CONFIG_ARCH_LS1021) +=3D lowlevel-ls102xa.o
+obj-$(CONFIG_ARCH_LS1021) +=3D restart.o ls102xa_stream_id.o
diff --git a/arch/arm/mach-layerscape/boot.c b/arch/arm/mach-layerscape/boo=
t.c
index c6f816444a..12b5608a5b 100644
--- a/arch/arm/mach-layerscape/boot.c
+++ b/arch/arm/mach-layerscape/boot.c
@@ -6,7 +6,7 @@
 #include <mach/layerscape.h>
 #include <soc/fsl/immap_lsch2.h>
=20
-enum bootsource ls1046_bootsource_get(void)
+enum bootsource layerscape_bootsource_get(void)
 {
 	void __iomem *dcfg =3D IOMEM(LSCH2_DCFG_ADDR);
 	uint32_t rcw_src;
@@ -27,13 +27,14 @@ enum bootsource ls1046_bootsource_get(void)
 	return BOOTSOURCE_UNKNOWN;
 }
=20
-static int ls1046a_bootsource_init(void)
+static int layerscape_bootsource_init(void)
 {
-	if (!of_machine_is_compatible("fsl,ls1046a"))
+	if (!of_machine_is_compatible("fsl,ls1046a") &&
+		!of_machine_is_compatible("fsl,ls1021a"))
 		return 0;
=20
-	bootsource_set_raw(ls1046_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNOWN);
+	bootsource_set_raw(layerscape_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNO=
WN);
=20
 	return 0;
 }
-coredevice_initcall(ls1046a_bootsource_init);
+coredevice_initcall(layerscape_bootsource_init);
diff --git a/arch/arm/mach-layerscape/errata.c b/arch/arm/mach-layerscape/e=
rrata.c
index 4f4b759ddb..7571d39eaf 100644
--- a/arch/arm/mach-layerscape/errata.c
+++ b/arch/arm/mach-layerscape/errata.c
@@ -17,11 +17,17 @@ static inline void set_usb_pcstxswingfull(u32 __iomem *=
scfg, u32 offset)
 			SCFG_USB_PCSTXSWINGFULL << 9);
 }
=20
-static void erratum_a008997_ls1046a(void)
+static void erratum_a008997_layerscape(void)
 {
 	u32 __iomem *scfg =3D (u32 __iomem *)LSCH2_SCFG_ADDR;
=20
 	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB1);
+}
+
+static void erratum_a008997_ls1046a(void)
+{
+	u32 __iomem *scfg =3D (u32 __iomem *)LSCH2_SCFG_ADDR;
+
 	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB2);
 	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB3);
 }
@@ -32,6 +38,14 @@ static void erratum_a008997_ls1046a(void)
 	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_3);      \
 	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_4)
=20
+static void erratum_a009007_layerscape(void)
+{
+	void __iomem *usb_phy =3D IOMEM(SCFG_USB_PHY1);
+
+	usb_phy =3D (void __iomem *)SCFG_USB_PHY3;
+	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
+}
+
 static void erratum_a009007_ls1046a(void)
 {
 	void __iomem *usb_phy =3D IOMEM(SCFG_USB_PHY1);
@@ -39,9 +53,6 @@ static void erratum_a009007_ls1046a(void)
 	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
 	usb_phy =3D (void __iomem *)SCFG_USB_PHY2;
 	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
-
-	usb_phy =3D (void __iomem *)SCFG_USB_PHY3;
-	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
 }
=20
 static inline void set_usb_txvreftune(u32 __iomem *scfg, u32 offset)
@@ -49,25 +60,44 @@ static inline void set_usb_txvreftune(u32 __iomem *scfg=
, u32 offset)
 	scfg_clrsetbits32(scfg + offset / 4, 0xf << 6, SCFG_USB_TXVREFTUNE << 6);
 }
=20
-static void erratum_a009008_ls1046a(void)
+static void erratum_a009008_layerscape(void)
 {
 	u32 __iomem *scfg =3D IOMEM(LSCH2_SCFG_ADDR);
=20
 	set_usb_txvreftune(scfg, SCFG_USB3PRM1CR_USB1);
+}
+
+static void erratum_a009008_ls1046a(void)
+{
+	u32 __iomem *scfg =3D IOMEM(LSCH2_SCFG_ADDR);
+
 	set_usb_txvreftune(scfg, SCFG_USB3PRM1CR_USB2);
 	set_usb_txvreftune(scfg, SCFG_USB3PRM1CR_USB3);
 }
=20
+static void erratum_a009008_ls1021a(void)
+{
+	u32 __iomem *scfg =3D IOMEM(LSCH2_SCFG_ADDR);
+
+	set_usb_txvreftune(scfg, SCFG_USB3PRM2CR_USB1);
+}
+
 static inline void set_usb_sqrxtune(u32 __iomem *scfg, u32 offset)
 {
 	scfg_clrbits32(scfg + offset / 4, SCFG_USB_SQRXTUNE_MASK << 23);
 }
=20
-static void erratum_a009798_ls1046a(void)
+static void erratum_a009798_layerscape(void)
 {
 	u32 __iomem *scfg =3D IOMEM(LSCH2_SCFG_ADDR);
=20
 	set_usb_sqrxtune(scfg, SCFG_USB3PRM1CR_USB1);
+}
+
+static void erratum_a009798_ls1046a(void)
+{
+	u32 __iomem *scfg =3D IOMEM(LSCH2_SCFG_ADDR);
+
 	set_usb_sqrxtune(scfg, SCFG_USB3PRM1CR_USB2);
 	set_usb_sqrxtune(scfg, SCFG_USB3PRM1CR_USB3);
 }
@@ -79,8 +109,10 @@ static void erratum_a008850_early(void)
 	struct ccsr_ddr __iomem *ddr =3D IOMEM(LSCH2_DDR_ADDR);
=20
 	/* Skip if running at lower exception level */
-	if (current_el() < 3)
-		return;
+#if __LINUX_ARM_ARCH__ > 7
+		if (current_el() < 3)
+			return;
+#endif
=20
 	/* disables propagation of barrier transactions to DDRC from CCI400 */
 	out_le32(&cci->ctrl_ord, CCI400_CTRLORD_TERM_BARRIER);
@@ -89,17 +121,30 @@ static void erratum_a008850_early(void)
 	ddr_out32(&ddr->eor, DDR_EOR_RD_REOD_DIS | DDR_EOR_WD_REOD_DIS);
 }
=20
-/* erratum_a009942_check_cpo */
+static void layerscape_errata(void)
+{
+	erratum_a008850_early();
+	erratum_a009008_layerscape();
+	erratum_a009798_layerscape();
+	erratum_a008997_layerscape();
+	erratum_a009007_layerscape();
+}
=20
 void ls1046a_errata(void)
 {
-	erratum_a008850_early();
+	layerscape_errata();
 	erratum_a009008_ls1046a();
 	erratum_a009798_ls1046a();
 	erratum_a008997_ls1046a();
 	erratum_a009007_ls1046a();
 }
=20
+void ls1021a_errata(void)
+{
+	layerscape_errata();
+	erratum_a009008_ls1021a();
+}
+
 static void erratum_a008850_post(void)
 {
 	/* part 2 of 2 */
@@ -108,8 +153,10 @@ static void erratum_a008850_post(void)
 	u32 tmp;
=20
 	/* Skip if running at lower exception level */
-	if (current_el() < 3)
-		return;
+#if __LINUX_ARM_ARCH__ > 7
+		if (current_el() < 3)
+			return;
+#endif
=20
 	/* enable propagation of barrier transactions to DDRC from CCI400 */
 	out_le32(&cci->ctrl_ord, CCI400_CTRLORD_EN_BARRIER);
@@ -193,3 +240,8 @@ void ls1046a_errata_post_ddr(void)
 	erratum_a008850_post();
 	erratum_a009942_check_cpo();
 }
+
+void ls1021a_errata_post_ddr(void)
+{
+	erratum_a008850_post();
+}
diff --git a/arch/arm/mach-layerscape/include/mach/debug_ll.h b/arch/arm/ma=
ch-layerscape/include/mach/debug_ll.h
index b6630af143..0e05347961 100644
--- a/arch/arm/mach-layerscape/include/mach/debug_ll.h
+++ b/arch/arm/mach-layerscape/include/mach/debug_ll.h
@@ -28,8 +28,11 @@ static inline void debug_ll_write_reg(int reg, uint8_t v=
al)
 static inline void debug_ll_init(void)
 {
 	uint16_t divisor;
+	u32 freq =3D 300000000;
=20
-	divisor =3D debug_ll_ns16550_calc_divisor(300000000);
+	if (IS_ENABLED(CONFIG_ARCH_LS1021))
+		freq =3D 150000000;
+	divisor =3D debug_ll_ns16550_calc_divisor(freq);
 	debug_ll_ns16550_init(divisor);
 }
=20
diff --git a/arch/arm/mach-layerscape/include/mach/errata.h b/arch/arm/mach=
-layerscape/include/mach/errata.h
index 1ec75b5d8d..4755031717 100644
--- a/arch/arm/mach-layerscape/include/mach/errata.h
+++ b/arch/arm/mach-layerscape/include/mach/errata.h
@@ -4,6 +4,8 @@
 #define __MACH_ERRATA_H
=20
 void ls1046a_errata(void);
+void ls1021a_errata(void);
 void ls1046a_errata_post_ddr(void);
+void ls1021a_errata_post_ddr(void);
=20
 #endif /* __MACH_ERRATA_H */
diff --git a/arch/arm/mach-layerscape/include/mach/fsl_epu.h b/arch/arm/mac=
h-layerscape/include/mach/fsl_epu.h
new file mode 100644
index 0000000000..523c73d990
--- /dev/null
+++ b/arch/arm/mach-layerscape/include/mach/fsl_epu.h
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2014 Freescale Semiconductor, Inc.
+ */
+
+#ifndef __FSL_EPU_H
+#define __FSL_EPU_H
+
+#include <asm/types.h>
+
+#define FSL_STRIDE_4B	4
+#define FSL_STRIDE_8B	8
+
+/* Block offsets */
+#define EPU_BLOCK_OFFSET	0x00000000
+
+/* EPGCR (Event Processor Global Control Register) */
+#define EPGCR		0x000
+
+/* EPEVTCR0-9 (Event Processor EVT Pin Control Registers) */
+#define EPEVTCR0	0x050
+#define EPEVTCR9	0x074
+#define EPEVTCR_STRIDE	FSL_STRIDE_4B
+
+/* EPXTRIGCR (Event Processor Crosstrigger Control Register) */
+#define EPXTRIGCR	0x090
+
+/* EPIMCR0-31 (Event Processor Input Mux Control Registers) */
+#define EPIMCR0		0x100
+#define EPIMCR31	0x17C
+#define EPIMCR_STRIDE	FSL_STRIDE_4B
+
+/* EPSMCR0-15 (Event Processor SCU Mux Control Registers) */
+#define EPSMCR0		0x200
+#define EPSMCR15	0x278
+#define EPSMCR_STRIDE	FSL_STRIDE_8B
+
+/* EPECR0-15 (Event Processor Event Control Registers) */
+#define EPECR0		0x300
+#define EPECR15		0x33C
+#define EPECR_STRIDE	FSL_STRIDE_4B
+
+/* EPACR0-15 (Event Processor Action Control Registers) */
+#define EPACR0		0x400
+#define EPACR15		0x43C
+#define EPACR_STRIDE	FSL_STRIDE_4B
+
+/* EPCCRi0-15 (Event Processor Counter Control Registers) */
+#define EPCCR0		0x800
+#define EPCCR15		0x83C
+#define EPCCR31		0x87C
+#define EPCCR_STRIDE	FSL_STRIDE_4B
+
+/* EPCMPR0-15 (Event Processor Counter Compare Registers) */
+#define EPCMPR0		0x900
+#define EPCMPR15	0x93C
+#define EPCMPR31	0x97C
+#define EPCMPR_STRIDE	FSL_STRIDE_4B
+
+/* EPCTR0-31 (Event Processor Counter Register) */
+#define EPCTR0		0xA00
+#define EPCTR31		0xA7C
+#define EPCTR_STRIDE	FSL_STRIDE_4B
+
+#define FSM_END_FLAG	0xFFFFFFFFUL
+
+#endif
diff --git a/arch/arm/mach-layerscape/include/mach/layerscape.h b/arch/arm/=
mach-layerscape/include/mach/layerscape.h
index 447417a266..fd7a24c505 100644
--- a/arch/arm/mach-layerscape/include/mach/layerscape.h
+++ b/arch/arm/mach-layerscape/include/mach/layerscape.h
@@ -3,10 +3,11 @@
 #ifndef __MACH_LAYERSCAPE_H
 #define __MACH_LAYERSCAPE_H
=20
-#define LS1046A_DDR_SDRAM_BASE	0x80000000
-#define LS1046A_DDR_FREQ	2100000000
+#define LAYERSCAPE_DDR_SDRAM_BASE	0x80000000
+#define LS1046A_DDR_FREQ		2100000000
+#define LS1021A_DDR_FREQ		1600000000
=20
-enum bootsource ls1046_bootsource_get(void);
+enum bootsource layerscape_bootsource_get(void);
=20
 #ifdef CONFIG_ARCH_LAYERSCAPE_PPA
 int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size);
diff --git a/arch/arm/mach-layerscape/include/mach/lowlevel.h b/arch/arm/ma=
ch-layerscape/include/mach/lowlevel.h
index 0c077d064b..d013c5e610 100644
--- a/arch/arm/mach-layerscape/include/mach/lowlevel.h
+++ b/arch/arm/mach-layerscape/include/mach/lowlevel.h
@@ -5,5 +5,6 @@
=20
 void ls1046a_init_lowlevel(void);
 void ls1046a_init_l2_latency(void);
+void ls102xa_init_lowlevel(void);
=20
 #endif /* __MACH_LOWLEVEL_H */
diff --git a/arch/arm/mach-layerscape/include/mach/xload.h b/arch/arm/mach-=
layerscape/include/mach/xload.h
index 0731681b43..e13c7368b0 100644
--- a/arch/arm/mach-layerscape/include/mach/xload.h
+++ b/arch/arm/mach-layerscape/include/mach/xload.h
@@ -6,7 +6,11 @@
 int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned=
 long r2);
 int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
 					     unsigned long r2);
+int ls1021a_qspi_start_image(unsigned long r0, unsigned long r1,
+					     unsigned long r2);
 int ls1046a_xload_start_image(unsigned long r0, unsigned long r1,
 			      unsigned long r2);
+int ls1021a_xload_start_image(unsigned long r0, unsigned long r1,
+			      unsigned long r2);
=20
 #endif /* __MACH_XLOAD_H */
diff --git a/arch/arm/mach-layerscape/lowlevel-ls102xa.c b/arch/arm/mach-la=
yerscape/lowlevel-ls102xa.c
new file mode 100644
index 0000000000..6546186ee5
--- /dev/null
+++ b/arch/arm/mach-layerscape/lowlevel-ls102xa.c
@@ -0,0 +1,389 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Derived from Freescale LSDK-19.09-update-311219
+ */
+#include <common.h>
+#include <io.h>
+#include <clock.h>
+#include <asm/syscounter.h>
+#include <asm/system.h>
+#include <mach/errata.h>
+#include <mach/lowlevel.h>
+#include <mach/fsl_epu.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <soc/fsl/fsl_immap.h>
+
+void udelay(unsigned long usecs)
+{
+	arm_architected_timer_udelay(usecs);
+}
+
+void mdelay(unsigned long msecs)
+{
+	udelay(1000 * msecs);
+}
+
+enum csu_cslx_access {
+	CSU_NS_SUP_R =3D 0x08,
+	CSU_NS_SUP_W =3D 0x80,
+	CSU_NS_SUP_RW =3D 0x88,
+	CSU_NS_USER_R =3D 0x04,
+	CSU_NS_USER_W =3D 0x40,
+	CSU_NS_USER_RW =3D 0x44,
+	CSU_S_SUP_R =3D 0x02,
+	CSU_S_SUP_W =3D 0x20,
+	CSU_S_SUP_RW =3D 0x22,
+	CSU_S_USER_R =3D 0x01,
+	CSU_S_USER_W =3D 0x10,
+	CSU_S_USER_RW =3D 0x11,
+	CSU_ALL_RW =3D 0xff,
+};
+
+struct csu_ns_dev {
+	unsigned long ind;
+	uint32_t val;
+};
+
+enum csu_cslx_ind {
+	CSU_CSLX_PCIE2_IO =3D 0,
+	CSU_CSLX_PCIE1_IO,
+	CSU_CSLX_MG2TPR_IP,
+	CSU_CSLX_IFC_MEM,
+	CSU_CSLX_OCRAM,
+	CSU_CSLX_GIC,
+	CSU_CSLX_PCIE1,
+	CSU_CSLX_OCRAM2,
+	CSU_CSLX_QSPI_MEM,
+	CSU_CSLX_PCIE2,
+	CSU_CSLX_SATA,
+	CSU_CSLX_USB3,
+	CSU_CSLX_SERDES =3D 32,
+	CSU_CSLX_QDMA,
+	CSU_CSLX_LPUART2,
+	CSU_CSLX_LPUART1,
+	CSU_CSLX_LPUART4,
+	CSU_CSLX_LPUART3,
+	CSU_CSLX_LPUART6,
+	CSU_CSLX_LPUART5,
+	CSU_CSLX_DSPI2 =3D 40,
+	CSU_CSLX_DSPI1,
+	CSU_CSLX_QSPI,
+	CSU_CSLX_ESDHC,
+	CSU_CSLX_2D_ACE,
+	CSU_CSLX_IFC,
+	CSU_CSLX_I2C1,
+	CSU_CSLX_USB2,
+	CSU_CSLX_I2C3,
+	CSU_CSLX_I2C2,
+	CSU_CSLX_DUART2 =3D 50,
+	CSU_CSLX_DUART1,
+	CSU_CSLX_WDT2,
+	CSU_CSLX_WDT1,
+	CSU_CSLX_EDMA,
+	CSU_CSLX_SYS_CNT,
+	CSU_CSLX_DMA_MUX2,
+	CSU_CSLX_DMA_MUX1,
+	CSU_CSLX_DDR,
+	CSU_CSLX_QUICC,
+	CSU_CSLX_DCFG_CCU_RCPM =3D 60,
+	CSU_CSLX_SECURE_BOOTROM,
+	CSU_CSLX_SFP,
+	CSU_CSLX_TMU,
+	CSU_CSLX_SECURE_MONITOR,
+	CSU_CSLX_RESERVED0,
+	CSU_CSLX_ETSEC1,
+	CSU_CSLX_SEC5_5,
+	CSU_CSLX_ETSEC3,
+	CSU_CSLX_ETSEC2,
+	CSU_CSLX_GPIO2 =3D 70,
+	CSU_CSLX_GPIO1,
+	CSU_CSLX_GPIO4,
+	CSU_CSLX_GPIO3,
+	CSU_CSLX_PLATFORM_CONT,
+	CSU_CSLX_CSU,
+	CSU_CSLX_ASRC,
+	CSU_CSLX_SPDIF,
+	CSU_CSLX_FLEXCAN2,
+	CSU_CSLX_FLEXCAN1,
+	CSU_CSLX_FLEXCAN4 =3D 80,
+	CSU_CSLX_FLEXCAN3,
+	CSU_CSLX_SAI2,
+	CSU_CSLX_SAI1,
+	CSU_CSLX_SAI4,
+	CSU_CSLX_SAI3,
+	CSU_CSLX_FTM2,
+	CSU_CSLX_FTM1,
+	CSU_CSLX_FTM4,
+	CSU_CSLX_FTM3,
+	CSU_CSLX_FTM6 =3D 90,
+	CSU_CSLX_FTM5,
+	CSU_CSLX_FTM8,
+	CSU_CSLX_FTM7,
+	CSU_CSLX_EPU,
+	CSU_CSLX_COP_DCSR,
+	CSU_CSLX_DDI,
+	CSU_CSLX_GDI,
+	CSU_CSLX_RESERVED1,
+	CSU_CSLX_USB3_PHY =3D 116,
+	CSU_CSLX_RESERVED2,
+	CSU_CSLX_MAX,
+};
+
+static struct csu_ns_dev ns_dev[] =3D {
+	{ CSU_CSLX_PCIE2_IO, CSU_ALL_RW },
+	{ CSU_CSLX_PCIE1_IO, CSU_ALL_RW },
+	{ CSU_CSLX_MG2TPR_IP, CSU_ALL_RW },
+	{ CSU_CSLX_IFC_MEM, CSU_ALL_RW },
+	{ CSU_CSLX_OCRAM, CSU_ALL_RW },
+	{ CSU_CSLX_GIC, CSU_ALL_RW },
+	{ CSU_CSLX_PCIE1, CSU_ALL_RW },
+	{ CSU_CSLX_OCRAM2, CSU_ALL_RW },
+	{ CSU_CSLX_QSPI_MEM, CSU_ALL_RW },
+	{ CSU_CSLX_PCIE2, CSU_ALL_RW },
+	{ CSU_CSLX_SATA, CSU_ALL_RW },
+	{ CSU_CSLX_USB3, CSU_ALL_RW },
+	{ CSU_CSLX_SERDES, CSU_ALL_RW },
+	{ CSU_CSLX_QDMA, CSU_ALL_RW },
+	{ CSU_CSLX_LPUART2, CSU_ALL_RW },
+	{ CSU_CSLX_LPUART1, CSU_ALL_RW },
+	{ CSU_CSLX_LPUART4, CSU_ALL_RW },
+	{ CSU_CSLX_LPUART3, CSU_ALL_RW },
+	{ CSU_CSLX_LPUART6, CSU_ALL_RW },
+	{ CSU_CSLX_LPUART5, CSU_ALL_RW },
+	{ CSU_CSLX_DSPI2, CSU_ALL_RW },
+	{ CSU_CSLX_DSPI1, CSU_ALL_RW },
+	{ CSU_CSLX_QSPI, CSU_ALL_RW },
+	{ CSU_CSLX_ESDHC, CSU_ALL_RW },
+	{ CSU_CSLX_2D_ACE, CSU_ALL_RW },
+	{ CSU_CSLX_IFC, CSU_ALL_RW },
+	{ CSU_CSLX_I2C1, CSU_ALL_RW },
+	{ CSU_CSLX_USB2, CSU_ALL_RW },
+	{ CSU_CSLX_I2C3, CSU_ALL_RW },
+	{ CSU_CSLX_I2C2, CSU_ALL_RW },
+	{ CSU_CSLX_DUART2, CSU_ALL_RW },
+	{ CSU_CSLX_DUART1, CSU_ALL_RW },
+	{ CSU_CSLX_WDT2, CSU_ALL_RW },
+	{ CSU_CSLX_WDT1, CSU_ALL_RW },
+	{ CSU_CSLX_EDMA, CSU_ALL_RW },
+	{ CSU_CSLX_SYS_CNT, CSU_ALL_RW },
+	{ CSU_CSLX_DMA_MUX2, CSU_ALL_RW },
+	{ CSU_CSLX_DMA_MUX1, CSU_ALL_RW },
+	{ CSU_CSLX_DDR, CSU_ALL_RW },
+	{ CSU_CSLX_QUICC, CSU_ALL_RW },
+	{ CSU_CSLX_DCFG_CCU_RCPM, CSU_ALL_RW },
+	{ CSU_CSLX_SECURE_BOOTROM, CSU_ALL_RW },
+	{ CSU_CSLX_SFP, CSU_ALL_RW },
+	{ CSU_CSLX_TMU, CSU_ALL_RW },
+	{ CSU_CSLX_SECURE_MONITOR, CSU_ALL_RW },
+	{ CSU_CSLX_RESERVED0, CSU_ALL_RW },
+	{ CSU_CSLX_ETSEC1, CSU_ALL_RW },
+	{ CSU_CSLX_SEC5_5, CSU_ALL_RW },
+	{ CSU_CSLX_ETSEC3, CSU_ALL_RW },
+	{ CSU_CSLX_ETSEC2, CSU_ALL_RW },
+	{ CSU_CSLX_GPIO2, CSU_ALL_RW },
+	{ CSU_CSLX_GPIO1, CSU_ALL_RW },
+	{ CSU_CSLX_GPIO4, CSU_ALL_RW },
+	{ CSU_CSLX_GPIO3, CSU_ALL_RW },
+	{ CSU_CSLX_PLATFORM_CONT, CSU_ALL_RW },
+	{ CSU_CSLX_CSU, CSU_ALL_RW },
+	{ CSU_CSLX_ASRC, CSU_ALL_RW },
+	{ CSU_CSLX_SPDIF, CSU_ALL_RW },
+	{ CSU_CSLX_FLEXCAN2, CSU_ALL_RW },
+	{ CSU_CSLX_FLEXCAN1, CSU_ALL_RW },
+	{ CSU_CSLX_FLEXCAN4, CSU_ALL_RW },
+	{ CSU_CSLX_FLEXCAN3, CSU_ALL_RW },
+	{ CSU_CSLX_SAI2, CSU_ALL_RW },
+	{ CSU_CSLX_SAI1, CSU_ALL_RW },
+	{ CSU_CSLX_SAI4, CSU_ALL_RW },
+	{ CSU_CSLX_SAI3, CSU_ALL_RW },
+	{ CSU_CSLX_FTM2, CSU_ALL_RW },
+	{ CSU_CSLX_FTM1, CSU_ALL_RW },
+	{ CSU_CSLX_FTM4, CSU_ALL_RW },
+	{ CSU_CSLX_FTM3, CSU_ALL_RW },
+	{ CSU_CSLX_FTM6, CSU_ALL_RW },
+	{ CSU_CSLX_FTM5, CSU_ALL_RW },
+	{ CSU_CSLX_FTM8, CSU_ALL_RW },
+	{ CSU_CSLX_FTM7, CSU_ALL_RW },
+	{ CSU_CSLX_COP_DCSR, CSU_ALL_RW },
+	{ CSU_CSLX_EPU, CSU_ALL_RW },
+	{ CSU_CSLX_GDI, CSU_ALL_RW },
+	{ CSU_CSLX_DDI, CSU_ALL_RW },
+	{ CSU_CSLX_RESERVED1, CSU_ALL_RW },
+	{ CSU_CSLX_USB3_PHY, CSU_ALL_RW },
+	{ CSU_CSLX_RESERVED2, CSU_ALL_RW },
+};
+
+/* Found in U-boot but not in LS1021ARM.pdf 02/2020 */
+#define DCSR_RCPM2_ADDR	0x20223000
+#define DCSR_RCPM2_CPMFSMCR0	0x400
+#define DCSR_RCPM2_CPMFSMSR0	0x404
+#define DCSR_RCPM2_CPMFSMCR1	0x414
+#define DCSR_RCPM2_CPMFSMSR1	0x418
+#define CPMFSMSR_FSM_STATE_MASK	0x7f
+
+#define DCSR_EPU_ADDR	0x20000000
+
+static void set_devices_ns_access(unsigned long index, u16 val)
+{
+	u32 *base =3D IOMEM(LSCH2_CSU_ADDR);
+	u32 *reg;
+	uint32_t tmp;
+
+	reg =3D base + index / 2;
+	tmp =3D in_be32(reg);
+	if (index % 2 =3D=3D 0) {
+		tmp &=3D 0x0000ffff;
+		tmp |=3D val << 16;
+	} else {
+		tmp &=3D 0xffff0000;
+		tmp |=3D val;
+	}
+
+	out_be32(reg, tmp);
+}
+
+static void init_csu(void)
+{
+	int i;
+
+	for (i =3D 0; i < ARRAY_SIZE(ns_dev); i++)
+		set_devices_ns_access(ns_dev[i].ind, ns_dev[i].val);
+}
+
+/**
+ * fsl_epu_clean - Clear EPU registers
+ */
+static void fsl_epu_clean(void *epu_base)
+{
+	u32 offset;
+
+	/* follow the exact sequence to clear the registers */
+	/* Clear EPACRn */
+	for (offset =3D EPACR0; offset <=3D EPACR15; offset +=3D EPACR_STRIDE)
+		out_be32(epu_base + offset, 0);
+
+	/* Clear EPEVTCRn */
+	for (offset =3D EPEVTCR0; offset <=3D EPEVTCR9; offset +=3D EPEVTCR_STRID=
E)
+		out_be32(epu_base + offset, 0);
+
+	/* Clear EPGCR */
+	out_be32(epu_base + EPGCR, 0);
+
+	/* Clear EPSMCRn */
+	for (offset =3D EPSMCR0; offset <=3D EPSMCR15; offset +=3D EPSMCR_STRIDE)
+		out_be32(epu_base + offset, 0);
+
+	/* Clear EPCCRn */
+	for (offset =3D EPCCR0; offset <=3D EPCCR31; offset +=3D EPCCR_STRIDE)
+		out_be32(epu_base + offset, 0);
+
+	/* Clear EPCMPRn */
+	for (offset =3D EPCMPR0; offset <=3D EPCMPR31; offset +=3D EPCMPR_STRIDE)
+		out_be32(epu_base + offset, 0);
+
+	/* Clear EPCTRn */
+	for (offset =3D EPCTR0; offset <=3D EPCTR31; offset +=3D EPCTR_STRIDE)
+		out_be32(epu_base + offset, 0);
+
+	/* Clear EPIMCRn */
+	for (offset =3D EPIMCR0; offset <=3D EPIMCR31; offset +=3D EPIMCR_STRIDE)
+		out_be32(epu_base + offset, 0);
+
+	/* Clear EPXTRIGCRn */
+	out_be32(epu_base + EPXTRIGCR, 0);
+
+	/* Clear EPECRn */
+	for (offset =3D EPECR0; offset <=3D EPECR15; offset +=3D EPECR_STRIDE)
+		out_be32(epu_base + offset, 0);
+}
+
+/* ls102xa_init_lowlevel
+ * Based on ls1046 and U-boot ls102xa arch_cpu_init
+ */
+void ls102xa_init_lowlevel(void)
+{
+	struct ccsr_cci400 __iomem *cci =3D IOMEM(LSCH2_CCI400_ADDR);
+	struct ls102xa_ccsr_scfg *scfg =3D IOMEM(LSCH2_SCFG_ADDR);
+	struct ls102xa_ccsr_gur __iomem *gur =3D IOMEM(LSCH2_GUTS_ADDR);
+	void *rcpm2_base =3D IOMEM(DCSR_RCPM2_ADDR);
+	void *epu_base =3D IOMEM(DCSR_EPU_ADDR);
+	uint32_t state, major, ctrl, freq;
+	uint64_t val;
+
+	init_csu();
+
+	writel(SYS_COUNTER_CTRL_ENABLE, LSCH2_SYS_COUNTER_ADDR);
+	freq =3D 12500000;
+	asm("mcr p15, 0, %0, c14, c0, 0" : : "r" (freq));
+
+	/* Set PL1 Physical Timer Ctrl */
+	ctrl =3D ARCH_TIMER_CTRL_ENABLE;
+	asm("mcr p15, 0, %0, c14, c2, 1" : : "r" (ctrl));
+
+	/* Set PL1 Physical Comp Value */
+	val =3D TIMER_COMP_VAL;
+	asm("mcrr p15, 2, %Q0, %R0, c14" : : "r" (val));
+
+
+	state =3D in_be32(rcpm2_base + DCSR_RCPM2_CPMFSMSR0) &
+		CPMFSMSR_FSM_STATE_MASK;
+	if (state !=3D 0) {
+		out_be32(rcpm2_base + DCSR_RCPM2_CPMFSMCR0, 0x80);
+		out_be32(rcpm2_base + DCSR_RCPM2_CPMFSMCR0, 0x0);
+	}
+	state =3D in_be32(rcpm2_base + DCSR_RCPM2_CPMFSMSR1) &
+		CPMFSMSR_FSM_STATE_MASK;
+	if (state !=3D 0) {
+		out_be32(rcpm2_base + DCSR_RCPM2_CPMFSMCR1, 0x80);
+		out_be32(rcpm2_base + DCSR_RCPM2_CPMFSMCR1, 0x0);
+	}
+
+	fsl_epu_clean(epu_base);
+
+	/* Enable all the snoop signal for various masters */
+	out_be32(&scfg->snpcnfgcr, SCFG_SNPCNFGCR_SEC_RD_WR |
+				SCFG_SNPCNFGCR_DBG_RD_WR |
+				SCFG_SNPCNFGCR_EDMA_SNP);
+
+	if (IS_ENABLED(CONFIG_DRIVER_SPI_FSL_QUADSPI))
+		out_be32(&scfg->qspi_cfg, SCFG_QSPI_CLKSEL);
+
+	/* Configure Little endian for SAI, ASRC and SPDIF */
+	out_be32(&scfg->endiancr, SCFG_ENDIANCR_LE);
+
+	/*
+	 * Enable snoop requests and DVM message requests for
+	 * All the slave interfaces.
+	 */
+	out_le32(&cci->slave[0].snoop_ctrl,
+		CCI400_DVM_MESSAGE_REQ_EN | CCI400_SNOOP_REQ_EN);
+	out_le32(&cci->slave[1].snoop_ctrl,
+		 CCI400_DVM_MESSAGE_REQ_EN | CCI400_SNOOP_REQ_EN);
+	out_le32(&cci->slave[2].snoop_ctrl,
+		 CCI400_DVM_MESSAGE_REQ_EN | CCI400_SNOOP_REQ_EN);
+	out_le32(&cci->slave[4].snoop_ctrl,
+		 CCI400_DVM_MESSAGE_REQ_EN | CCI400_SNOOP_REQ_EN);
+
+	major =3D in_be32(&gur->svr);
+	if (SVR_MAJ(major) =3D=3D SOC_MAJOR_VER_1_0) {
+		/*
+		 * Set CCI-400 Slave interface S1, S2 Shareable Override
+		 * Register All transactions are treated as non-shareable
+		 */
+		out_le32(&cci->slave[1].sha_ord, CCI400_SHAORD_NON_SHAREABLE);
+		out_le32(&cci->slave[2].sha_ord, CCI400_SHAORD_NON_SHAREABLE);
+	}
+
+	/*
+	 * Memory controller require a register write before being enabled.
+	 * Affects: DDR
+	 * Register: EDDRTQCFG
+	 * Description: Memory controller performance is not optimal with
+	 *		default internal target queue register values.
+	 * Workaround: Write a value of 63b2_0042h to address: 157_020Ch.
+	 */
+	out_be32(&scfg->eddrtqcfg, 0x63b20042);
+
+	ls1021a_errata();
+}
diff --git a/arch/arm/mach-layerscape/ls102xa_stream_id.c b/arch/arm/mach-l=
ayerscape/ls102xa_stream_id.c
new file mode 100644
index 0000000000..c47c463b48
--- /dev/null
+++ b/arch/arm/mach-layerscape/ls102xa_stream_id.c
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2014 Freescale Semiconductor
+ */
+
+#include <common.h>
+#include <asm/io.h>
+#include <soc/fsl/immap_lsch2.h>
+
+struct smmu_stream_id {
+	uint16_t offset;
+	uint16_t stream_id;
+	char dev_name[32];
+};
+
+static struct smmu_stream_id dev_stream_id[] =3D {
+	{ 0x100, 0x01, "ETSEC MAC1" },
+	{ 0x104, 0x02, "ETSEC MAC2" },
+	{ 0x108, 0x03, "ETSEC MAC3" },
+	{ 0x10c, 0x04, "PEX1" },
+	{ 0x110, 0x05, "PEX2" },
+	{ 0x114, 0x06, "qDMA" },
+	{ 0x118, 0x07, "SATA" },
+	{ 0x11c, 0x08, "USB3" },
+	{ 0x120, 0x09, "QE" },
+	{ 0x124, 0x0a, "eSDHC" },
+	{ 0x128, 0x0b, "eMA" },
+	{ 0x14c, 0x0c, "2D-ACE" },
+	{ 0x150, 0x0d, "USB2" },
+	{ 0x18c, 0x0e, "DEBUG" },
+};
+
+static void
+ls102xa_config_smmu_stream_id(struct smmu_stream_id *id, uint32_t num)
+{
+	void *scfg =3D (void *)LSCH2_SCFG_ADDR;
+	int i;
+	u32 icid;
+
+	for (i =3D 0; i < num; i++) {
+		icid =3D (id[i].stream_id & 0xff) << 24;
+		out_be32((u32 *)(scfg + id[i].offset), icid);
+	}
+}
+
+static int ls102xa_smmu_stream_id_init(void)
+{
+	if (!of_machine_is_compatible("fsl,ls1021a"))
+		return 0;
+
+	ls102xa_config_smmu_stream_id(dev_stream_id, ARRAY_SIZE(dev_stream_id));
+
+	return 0;
+}
+mmu_initcall(ls102xa_smmu_stream_id_init);
diff --git a/arch/arm/mach-layerscape/restart.c b/arch/arm/mach-layerscape/=
restart.c
new file mode 100644
index 0000000000..e8bd041ebf
--- /dev/null
+++ b/arch/arm/mach-layerscape/restart.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <init.h>
+#include <restart.h>
+#include <asm/io.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <soc/fsl/fsl_immap.h>
+
+static void ls102xa_restart(struct restart_handler *rst)
+{
+	void __iomem *rcr =3D IOMEM(LSCH2_RST_ADDR);
+
+	/* Set RESET_REQ bit */
+	setbits_be32(rcr, 0x2);
+
+	mdelay(100);
+
+	hang();
+}
+
+static int restart_register_feature(void)
+{
+	if (!of_machine_is_compatible("fsl,ls1021a"))
+		return 0;
+
+	restart_handler_register_fn("soc-reset", ls102xa_restart);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-layerscape/xload-qspi.c b/arch/arm/mach-layersca=
pe/xload-qspi.c
index 192aea64b4..bfc964589e 100644
--- a/arch/arm/mach-layerscape/xload-qspi.c
+++ b/arch/arm/mach-layerscape/xload-qspi.c
@@ -13,18 +13,21 @@
  */
 #define BAREBOX_START	(128 * 1024)
=20
-int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
-					     unsigned long r2)
+struct layerscape_base_addr {
+	void *qspi_reg_base;
+	void *membase;
+	void *qspi_mem_base;
+};
+
+static int layerscape_qspi_start_image(struct layerscape_base_addr *base,
+		unsigned long r0, unsigned long r1, unsigned long r2)
 {
-	void *qspi_reg_base =3D IOMEM(LSCH2_QSPI0_BASE_ADDR);
-	void *membase =3D (void *)LS1046A_DDR_SDRAM_BASE;
-	void *qspi_mem_base =3D IOMEM(0x40000000);
-	void (*barebox)(unsigned long, unsigned long, unsigned long) =3D membase;
+	void (*barebox)(unsigned long, unsigned long, unsigned long) =3D base->me=
mbase;
=20
 	/* Switch controller into little endian mode */
-	out_be32(qspi_reg_base, 0x000f400c);
+	out_be32(base->qspi_reg_base, 0x000f400c);
=20
-	memcpy(membase, qspi_mem_base + BAREBOX_START, barebox_image_size);
+	memcpy(base->membase, base->qspi_mem_base + BAREBOX_START, barebox_image_=
size);
=20
 	sync_caches_for_execution();
=20
@@ -36,3 +39,27 @@ int ls1046a_qspi_start_image(unsigned long r0, unsigned =
long r1,
=20
 	return -EIO;
 }
+
+int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
+					     unsigned long r2)
+{
+	struct layerscape_base_addr base;
+
+	base.qspi_reg_base =3D IOMEM(LSCH2_QSPI0_BASE_ADDR);
+	base.membase =3D IOMEM(LAYERSCAPE_DDR_SDRAM_BASE);
+	base.qspi_mem_base =3D IOMEM(0x40000000);
+
+	return layerscape_qspi_start_image(&base, r0, r1, r2);
+}
+
+int ls1021a_qspi_start_image(unsigned long r0, unsigned long r1,
+					     unsigned long r2)
+{
+	struct layerscape_base_addr base;
+
+	base.qspi_reg_base =3D IOMEM(LSCH2_QSPI0_BASE_ADDR);
+	base.membase =3D IOMEM(LAYERSCAPE_DDR_SDRAM_BASE);
+	base.qspi_mem_base =3D IOMEM(0x40000000);
+
+	return layerscape_qspi_start_image(&base, r0, r1, r2);
+}
diff --git a/arch/arm/mach-layerscape/xload.c b/arch/arm/mach-layerscape/xl=
oad.c
index 54495d7f97..7898ce5ae8 100644
--- a/arch/arm/mach-layerscape/xload.c
+++ b/arch/arm/mach-layerscape/xload.c
@@ -10,13 +10,31 @@ int ls1046a_xload_start_image(unsigned long r0, unsigne=
d long r1,
 {
 	enum bootsource src;
=20
-	src =3D ls1046_bootsource_get();
+	src =3D layerscape_bootsource_get();
=20
 	switch (src) {
 	case BOOTSOURCE_SPI_NOR:
 		return ls1046a_qspi_start_image(r0, r1, r2);
+#if defined(CONFIG_MCI_IMX_ESDHC_PBL)
 	case BOOTSOURCE_MMC:
 		return ls1046a_esdhc_start_image(r0, r1, r2);
+#endif
+	default:
+		pr_err("Unknown bootsource\n");
+		return -EINVAL;
+	}
+}
+
+int ls1021a_xload_start_image(unsigned long r0, unsigned long r1,
+			      unsigned long r2)
+{
+	enum bootsource src;
+
+	src =3D layerscape_bootsource_get();
+
+	switch (src) {
+	case BOOTSOURCE_SPI_NOR:
+		return ls1021a_qspi_start_image(r0, r1, r2);
 	default:
 		pr_err("Unknown bootsource\n");
 		return -EINVAL;
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index a180c230c7..062e7263b5 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -55,3 +55,12 @@ $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls=
1046a.pblb \
=20
 image-$(CONFIG_MACH_TQMLS1046A) +=3D barebox-tqmls1046a-sd.image \
 	barebox-tqmls1046a-qspi.image
+
+pbl-$(CONFIG_MACH_LS1021AIOT) +=3D start_ls1021aiot.pbl
+
+$(obj)/barebox-ls1021aiot-qspi.image: $(obj)/start_ls1021aiot.pblb \
+		$(board)/ls1021aiot/ls102xa_rcw_sd_qspi.cfg \
+		$(board)/ls1021aiot/ls102xa_pbi.cfg
+	$(call if_changed,lspbl_spi_image)
+
+image-$(CONFIG_MACH_LS1021AIOT) +=3D barebox-ls1021aiot-qspi.image
diff --git a/include/soc/fsl/immap_lsch2.h b/include/soc/fsl/immap_lsch2.h
index 1b74c77908..62e48ae746 100644
--- a/include/soc/fsl/immap_lsch2.h
+++ b/include/soc/fsl/immap_lsch2.h
@@ -6,6 +6,9 @@
 #ifndef __ARCH_FSL_LSCH2_IMMAP_H__
 #define __ARCH_FSL_LSCH2_IMMAP_H__
=20
+#define SVR_MAJ(svr)		(((svr) >>  4) & 0xf)
+#define SOC_MAJOR_VER_1_0	0x1
+
 #define gur_in32(a)       in_be32(a)
 #define gur_out32(a, v)   out_be32(a, v)
=20
@@ -60,6 +63,10 @@
 #define LSCH2_QDMA_BASE_ADDR		(LSCH2_IMMR + 0x07380000)
 #define LSCH2_EHCI_USB1_ADDR		(LSCH2_IMMR + 0x07600000)
=20
+#define TIMER_COMP_VAL			0xffffffffffffffffull
+#define ARCH_TIMER_CTRL_ENABLE		(1 << 0)
+#define SYS_COUNTER_CTRL_ENABLE		(1 << 24)
+
 struct ccsr_gur {
 	u32     porsr1;         /* POR status 1 */
 #define FSL_CHASSIS2_CCSR_PORSR1_RCW_MASK	0xFF800000
@@ -214,7 +221,67 @@ struct ccsr_gur {
 	u32 dcfg_ccsr_reserved1;
 };
=20
-#define SCFG_QSPI_CLKSEL		0x40100000
+/* LS102XA Device Configuration and Pin Control */
+struct ls102xa_ccsr_gur {
+	u32     porsr1;         /* POR status 1 */
+	u32     porsr2;         /* POR status 2 */
+	u8      res_008[0x20-0x8];
+	u32     gpporcr1;       /* General-purpose POR configuration */
+	u32	gpporcr2;
+	u32     dcfg_fusesr;    /* Fuse status register */
+	u8      res_02c[0x70-0x2c];
+	u32     devdisr;        /* Device disable control */
+	u32     devdisr2;       /* Device disable control 2 */
+	u32     devdisr3;       /* Device disable control 3 */
+	u32     devdisr4;       /* Device disable control 4 */
+	u32     devdisr5;       /* Device disable control 5 */
+	u8      res_084[0x94-0x84];
+	u32     coredisru;      /* uppper portion for support of 64 cores */
+	u32     coredisrl;      /* lower portion for support of 64 cores */
+	u8      res_09c[0xa4-0x9c];
+	u32     svr;            /* System version */
+	u8	res_0a8[0xb0-0xa8];
+	u32	rstcr;		/* Reset control */
+	u32	rstrqpblsr;	/* Reset request preboot loader status */
+	u8	res_0b8[0xc0-0xb8];
+	u32	rstrqmr1;	/* Reset request mask */
+	u8	res_0c4[0xc8-0xc4];
+	u32	rstrqsr1;	/* Reset request status */
+	u8	res_0cc[0xd4-0xcc];
+	u32	rstrqwdtmrl;	/* Reset request WDT mask */
+	u8	res_0d8[0xdc-0xd8];
+	u32	rstrqwdtsrl;	/* Reset request WDT status */
+	u8	res_0e0[0xe4-0xe0];
+	u32	brrl;		/* Boot release */
+	u8      res_0e8[0x100-0xe8];
+	u32     rcwsr[16];      /* Reset control word status */
+#define RCW_SB_EN_REG_INDEX	7
+#define RCW_SB_EN_MASK		0x00200000
+	u8      res_140[0x200-0x140];
+	u32     scratchrw[4];  /* Scratch Read/Write */
+	u8      res_210[0x300-0x210];
+	u32     scratchw1r[4];  /* Scratch Read (Write once) */
+	u8      res_310[0x400-0x310];
+	u32	crstsr;
+	u8      res_404[0x550-0x404];
+	u32	sataliodnr;
+	u8	res_554[0x604-0x554];
+	u32	pamubypenr;
+	u32	dmacr1;
+	u8      res_60c[0x740-0x60c];   /* add more registers when needed */
+	u32     tp_ityp[64];    /* Topology Initiator Type Register */
+	struct {
+		u32     upper;
+		u32     lower;
+	} tp_cluster[1];        /* Core Cluster n Topology Register */
+	u8	res_848[0xe60-0x848];
+	u32	ddrclkdr;
+	u8	res_e60[0xe68-0xe64];
+	u32	ifcclkdr;
+	u8	res_e68[0xe80-0xe6c];
+	u32	sdhcpcr;
+};
+
 #define SCFG_USBDRVVBUS_SELCR_USB1	0x00000000
 #define SCFG_USBDRVVBUS_SELCR_USB2	0x00000001
 #define SCFG_USBDRVVBUS_SELCR_USB3	0x00000002
@@ -238,10 +305,27 @@ struct ccsr_gur {
 #define SCFG_USB_PHY2			0x08500000
 #define SCFG_USB_PHY3			0x08510000
 #define SCFG_USB_PHY_RX_OVRD_IN_HI		0x200c
+#if defined CONFIG_ARCH_LS1046
+#define SCFG_QSPI_CLKSEL		0x40100000
 #define USB_PHY_RX_EQ_VAL_1		0x0000
 #define USB_PHY_RX_EQ_VAL_2		0x0080
 #define USB_PHY_RX_EQ_VAL_3		0x0380
 #define USB_PHY_RX_EQ_VAL_4		0x0b80
+#elif defined CONFIG_ARCH_LS1021
+#define SCFG_QSPI_CLKSEL		0x50100000
+#define USB_PHY_RX_EQ_VAL_1		0x0000
+#define USB_PHY_RX_EQ_VAL_2		0x8000
+#define USB_PHY_RX_EQ_VAL_3		0x8004
+#define USB_PHY_RX_EQ_VAL_4		0x800C
+#endif
+
+#define SCFG_ETSECDMAMCR_LE_BD_FR	0x00000c00
+#define SCFG_SNPCNFGCR_SEC_RD_WR	0xc0000000
+#define SCFG_ETSECCMCR_GE2_CLK125	0x04000000
+#define SCFG_ETSECCMCR_GE0_CLK125	0x00000000
+#define SCFG_SNPCNFGCR_DBG_RD_WR	0x000c0000
+#define SCFG_SNPCNFGCR_EDMA_SNP		0x00020000
+#define SCFG_ENDIANCR_LE		0x80000000
=20
 #define SCFG_SNPCNFGCR_SECRDSNP		0x80000000
 #define SCFG_SNPCNFGCR_SECWRSNP		0x40000000
@@ -353,4 +437,89 @@ struct ccsr_scfg {
 	u32 pex3msir;
 };
=20
+/* LS102XA Supplemental Configuration Unit */
+struct ls102xa_ccsr_scfg {
+	u32 dpslpcr;
+	u32 resv0[2];
+	u32 etsecclkdpslpcr;
+	u32 resv1[5];
+	u32 fuseovrdcr;
+	u32 pixclkcr;
+	u32 resv2[5];
+	u32 spimsicr;
+	u32 resv3[6];
+	u32 pex1pmwrcr;
+	u32 pex1pmrdsr;
+	u32 resv4[3];
+	u32 usb3prm1cr;
+	u32 usb4prm2cr;
+	u32 pex1rdmsgpldlsbsr;
+	u32 pex1rdmsgpldmsbsr;
+	u32 pex2rdmsgpldlsbsr;
+	u32 pex2rdmsgpldmsbsr;
+	u32 pex1rdmmsgrqsr;
+	u32 pex2rdmmsgrqsr;
+	u32 spimsiclrcr;
+	u32 pexmscportsr[2];
+	u32 pex2pmwrcr;
+	u32 resv5[24];
+	u32 mac1_streamid;
+	u32 mac2_streamid;
+	u32 mac3_streamid;
+	u32 pex1_streamid;
+	u32 pex2_streamid;
+	u32 dma_streamid;
+	u32 sata_streamid;
+	u32 usb3_streamid;
+	u32 qe_streamid;
+	u32 sdhc_streamid;
+	u32 adma_streamid;
+	u32 letechsftrstcr;
+	u32 core0_sft_rst;
+	u32 core1_sft_rst;
+	u32 resv6[1];
+	u32 usb_hi_addr;
+	u32 etsecclkadjcr;
+	u32 sai_clk;
+	u32 resv7[1];
+	u32 dcu_streamid;
+	u32 usb2_streamid;
+	u32 ftm_reset;
+	u32 altcbar;
+	u32 qspi_cfg;
+	u32 pmcintecr;
+	u32 pmcintlecr;
+	u32 pmcintsr;
+	u32 qos1;
+	u32 qos2;
+	u32 qos3;
+	u32 cci_cfg;
+	u32 endiancr;
+	u32 etsecdmamcr;
+	u32 usb3prm3cr;
+	u32 resv9[1];
+	u32 debug_streamid;
+	u32 resv10[5];
+	u32 snpcnfgcr;
+	u32 hrstcr;
+	u32 intpcr;
+	u32 resv12[20];
+	u32 scfgrevcr;
+	u32 coresrencr;
+	u32 pex2pmrdsr;
+	u32 eddrtqcfg;
+	u32 ddrc2cr;
+	u32 ddrc3cr;
+	u32 ddrc4cr;
+	u32 ddrgcr;
+	u32 resv13[120];
+	u32 qeioclkcr;
+	u32 etsecmcr;
+	u32 sdhciovserlcr;
+	u32 resv14[61];
+	u32 sparecr[8];
+	u32 resv15[248];
+	u32 core0sftrstsr;
+	u32 clusterpmcr;
+};
 #endif	/* __ARCH_FSL_LSCH2_IMMAP_H__*/
--=20
2.27.0



