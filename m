Delivery-date: Mon, 13 Mar 2023 15:45:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjQm-006Mh4-DZ
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 15:45:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjQl-0007Kf-Ef
	for lore@pengutronix.de; Mon, 13 Mar 2023 15:45:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gXjTQnJ+XdQeWVZgQ+6WCo9p/Kk7uXqdGMZzQj7FdJA=; b=3iqZmYvCwJrTlv
	BMjoQvzteJ2McZColsUed6Begwxq+RMEiRvHH51HGpBbNk9mnH1fC4vIErILAZI5aNpmGefsfd88D
	JQRqtmdreDUbp9UmS/TJQcxwWXVSLMxJcZMxYYpK08OI58apCq/9imqqi7T38eNMfBPyccLu75ZRc
	Y6+13t2V4vMqqFi9zvxF63m3VqUglKhoM49XYn0o8V6wQPgWSRgCnYaWyb3vMCRVOd4QaR87ukJXH
	oigsV+/S8cS4kSMmV8HpdRFHOfnWM4nxvwRIc3WzTq093ru+5bRC1ifzwO41NPduV2eeiVzPzcwGj
	2pbZV65BM/hWllIUBtBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjPL-006B8U-En; Mon, 13 Mar 2023 14:44:16 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjP4-006B3D-Ux
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:44:02 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32DCFEt3018093
	for <barebox@lists.infradead.org>; Mon, 13 Mar 2023 10:43:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=gXjTQnJ+XdQeWVZgQ+6WCo9p/Kk7uXqdGMZzQj7FdJA=;
 b=u8PUZjcPDBa6xwcyPXYMfLj31t2fQODFH9Qa+LlP/CvVbvgtKkMPwGqHnJ2Ksx0dhB7X
 wD9Nz2D8yX4iz/r7drRF8+Lclm+lbeUcX0IwL7LVbD/1x5Au1iPjB9/hEunDVvBAcJrq
 bMbi1y5QAtTlld947y0ciNS8/z2qDB+9hqsxeb7nMcWsgbXgs8MyOUe0hLfZKK+is5VL
 K04rKGClIyOx8X0m5QpslqnODiEojHAheB8v1Em5+e9obA4Jm637DIHXy6tVEvUDGZtI
 HucCdVZPughWgXt6bltCtxKHR3oKWt14O6KEWfBd8rKmXkKfZE3+yXY/cIhAiGm5zkxC 2w== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2109.outbound.protection.outlook.com [104.47.55.109])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3p8mbd5hh9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Mon, 13 Mar 2023 10:43:56 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KmVuK0PzzzVr2Cd7lEHh6E+sNVYtonsPXgKsYVcBqw/T6MEpyhNy/ARHnXYtAPYV0I8XRL2v2RwcKDfE15zMPlNilBcpW8Zc6Tqfq5cWnno7k/BcLDCpw/7qJfIPKdUPQ1jXAQR2kAB9ctAyY6zyRgkCzvbBKDmMLGfP3t4DtzZBlvun8YkWezbGZu3Qfxvsa/Nshv/nobAKYbdeSQiU0t56qW+v4eWZ5AHaPQqcojjoIIQI6K2Im+FgZlOJPjSstV3TAOr9sFZWp4i9+aY/xWf/yXKoevhwUP1JlnPyveQEa/3pqsiSgGbyeAPj+w20sJ8XdgL9co18MgY7hcgBxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gXjTQnJ+XdQeWVZgQ+6WCo9p/Kk7uXqdGMZzQj7FdJA=;
 b=Nzo2wLTySIsoxdtOuce/bxhtyjnqW5cWOGX8nTaS7zhVuncIoPYnaBHFGTKx4ZcKcaZKJJ/xzJyC+Qc/iWj0g9t5+pigxALHuei6zkGnVB9KccI72PL4A2ZG52XrxSu8zRG3VTrZELsQfYOHTKWqdA4iVCwCfFMMRdElswGZYi3i/pIwt62GisZAWBNb9zSMMA6/k0G4bBpZxhGjqUm/IHayMHuaq81r8jtHD3Qxa7VXRXI5uBHATNKyUQCDcUQTzhj7E3dw0fW7dVjLh1BXe1TogchzgCk8YGhRxUsx40bW8WbZeEHISZlez2RXZHW28xedaFZCVAXzLDwR5h8B1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gXjTQnJ+XdQeWVZgQ+6WCo9p/Kk7uXqdGMZzQj7FdJA=;
 b=fLGv6Z3JRmiycUXUrr0OnOYIPK/Hi1iPGIgT08wu0cFi8TBR6uNt75uzgIcg4d7MXV0qOKzbiswa1twtzRInO7Hwpm5lkAcWelyazE/W9PLFcdXhp7JSmjxahvyQDKRa3VaekTK5oWQL9aF6LizK6gYrTm2TCYR9L8kibVhDYdQ=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BN7PR07MB4354.namprd07.prod.outlook.com (2603:10b6:406:b4::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 14:43:54 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5%7]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 14:43:54 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
Thread-Index: AdlVuhr1IplYVk2KS7mc+eReG4n+xg==
Date: Mon, 13 Mar 2023 14:43:54 +0000
Message-ID:  <BL0PR07MB5665D0F82835E5C29AA0B13BECB99@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BN7PR07MB4354:EE_
x-ms-office365-filtering-correlation-id: b7bccdc4-0222-4e20-5009-08db23d15e91
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  BSnqb2yGbrsSH7D6u+Squz7NjwcWeg2ACDkIQ4sQWxdAQNnuuS0GMtXeE7ZWGt6V04egZzqs5aWjsEakgWlXPilXGT515JvxdC3kfqklqHQf8oHiTrjqaPnOMX18cxljcVFQtaY6lnh0qXLlsKLH/oiaZ+WTuPa1Kj0L5EyMDFOzGm+i1XTb7ZLk/jhidrSHbPSJI77XNDH/hMesEivwvMSg+YvEsvB1c5t7w7pSRswD2RVBjRpqqf9kR2d+Ot6zXvVEJ1nn6by79E6gegf+8Q6VwM+WhOl7lyl7d+VS8BuTJHoEEHLJR/kHFuYOayolu9bQu5nR5dvQjhuKWUSxNx8fyi39SIrZoLtub7prZxVXpaGF+vATLLxHmiJMRE1Voz8AXRjZ9hX7cjoOFLXRmbsKyeXaVfAVWWes2A/3ahq4oce+/mQ7vdSh6Iq59pnF8tGyTaR4rk7z50rt0KkBVLjiTxrqHZWgbEbOzL80k8l6ojXKlHDoNsuGUnhd6R+vOZnsuDHZgj6KAxMCzvYQIGlyGSaGWaogO3wZu+l4RTwJeBe6hR0PbLREBJFeU/4lno0mADqfkQfQ10frkgb8BXy/13Cf3Gt+VNVQ02kc8vnUinsF7dw4A/yetEEnJV78dIq75zGZCMd9Z8VbyO+5kgXcSAFje7tcGJE2j6Vm5EhbZ5Tkzshqe18VRbhLpNh1/bfu9VHDmfWDwVJ5G5x4Sw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(366004)(136003)(39860400002)(396003)(376002)(451199018)(41300700001)(478600001)(8676002)(64756008)(66556008)(66476007)(66946007)(8936002)(52536014)(66446008)(6916009)(76116006)(33656002)(38070700005)(86362001)(122000001)(55016003)(38100700002)(26005)(7696005)(71200400001)(186003)(9686003)(30864003)(5660300002)(2906002)(316002)(6506007)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?0Yld5+MzZRcuqx5lkCc5Qnyvh6qdZiOMSLxdtJ5lOqejhJ7he9jtPYWUBeSb?=
 =?us-ascii?Q?Nx/D9kAF9mhnOZ42DVe/z6rdgqaoVgsTCWTn26iOHtbqjEgQw5YFB+5lrvgP?=
 =?us-ascii?Q?llpT2pNX1cNBTd+sOIqFx+U92mrgdFQ2c0xTQBfKVdZz26GioiBodCWqo4e2?=
 =?us-ascii?Q?Nn+qDtsTkON/lGi4Vy3mKAh2ijYRABPYEFUTkdW67fxa1FwkKEPo5xdtdXPv?=
 =?us-ascii?Q?dlusaFA8G/gaZQNxl6S2TgbrIefW3kJeISm8gBgcH484+dscMTHrnOqN20LA?=
 =?us-ascii?Q?Afn8MZp3Zuog7xEYlPSH+/GsbLU6D21TGoO7IVJdxGMRTJbVvRsZAPJkreXl?=
 =?us-ascii?Q?b5PCj5ob7HEUvBKKC8a11VCv6v65wPXjKFTgK2xKukT/9X8HBQg9fLHiOdRO?=
 =?us-ascii?Q?2eZD92aOaB8fbQCRO0WKCtos7tifk4Zmz+VM6pgZ6iMaPZlQld4G6cXnxklM?=
 =?us-ascii?Q?og9Qir4Zvm8Tkyd7YzLuZIiNGDTM23C5LrIi2JSSSFVpjZCVQXDdCYTsREbo?=
 =?us-ascii?Q?x1dd1oTCKlJ2OSGaqYg8R2m5Td+7uQZJAo/RBAwCO+++ih+fVOYpyury3fiZ?=
 =?us-ascii?Q?8BD3b2bnX9kEB9Qopc8VJJ9zEITrF84A69zoS+XFmo0ZfsQIUCAByjPXlm6T?=
 =?us-ascii?Q?/G3yGHcGLPlyc1yVqKqJPxBKgqcR19InHJYtls4/Ml3N5Busi55SEWQZYFok?=
 =?us-ascii?Q?pgB2UNxMMBtW0V8QBTnWjzn9Ne5a6YllW8XH6Na7P8RUCys1hwkNEutfmJCv?=
 =?us-ascii?Q?crFGrfJxlwm8G4K/6p8RA9kFDG/8DIpwHtyKxidxEToiNtD4777zDBRXeMN7?=
 =?us-ascii?Q?pknCjww316oxSdnCAUjWAeuS96svffPrvG3iuFUMgi6GR0OfPm4U2ud+GoZ6?=
 =?us-ascii?Q?vlsxzbiO//q1TsMtXI4pByIprUpfP0rgiRVN9Oa1hKPVG4NRkDTssCnOycPh?=
 =?us-ascii?Q?OlDG8ywb+GNs5oETCkn9dkd8a//EO0gwEqxrYQ9zE28IRoTwDaJZiUobBStZ?=
 =?us-ascii?Q?Ci02rsgPg2B2cOMl0PDjF3E21Vptxh8HeRNywg5gZI60ZCgP9gza3/mfmG/f?=
 =?us-ascii?Q?nbpHHrYEmTPK5VPa4VAau2uGg3rbmIgtlXKp9jXiHCebYqDVfTIULfOgIaLC?=
 =?us-ascii?Q?kWMSDEdTBvkWu/AvY4sn/BRUkMV7f2NUgzYZAdmYHD0wYXEXfny1v2uaTEJ6?=
 =?us-ascii?Q?asaAlOuWXmAFb7G1w8e17Ig3PB0iABbibwQVL6GUPA2RQt4XSRXWNbQJ4g0o?=
 =?us-ascii?Q?Zn/oqCof3VYG/sQtzCTWxDM7GVyxyjatzNi//TVUxZ05cj+csx1D9KAmUQDv?=
 =?us-ascii?Q?f90p8v6Xtpc+ytvTvfmQx+hr0tPviixHDwkzAUm/kWlADpzbRQPLfBp8+4wc?=
 =?us-ascii?Q?LIw+h44xP+zGtMgvZbtWhcQdTsHQPjTq44ND/8kR1M0haVE7Cc1+3W+gENQv?=
 =?us-ascii?Q?+ZrL4/gVJp2yxm3F/vT9PimGwsEUHFBoy/GGaoEPRUuR/tuc7zWIUvgnOklF?=
 =?us-ascii?Q?ilkhbN8vOQXchDznqDGrmfqgj0arhA6t3s8a5ZOQFe8tw47tMe1MfnEAZhDA?=
 =?us-ascii?Q?8ognxEKbGJB6qQ243L5IMp4J3Ef4A2LtPwIvQkjTOWpHXeC9B1OrZ+EIYybf?=
 =?us-ascii?Q?WA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7bccdc4-0222-4e20-5009-08db23d15e91
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 14:43:54.4306
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oGIPrwceTLLiKhj+6vEk21qfWp375IBgL8zYZAkljlFlce7kohTbedefF7K2WMrbjoHNrV4mli2tnRou1tYmG41MyOmd5b6W6aqDmF1pEcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR07MB4354
X-Proofpoint-ORIG-GUID: gEs9bIIFeGrowsNZ1XIcvec-mz_ZGuKg
X-Proofpoint-GUID: gEs9bIIFeGrowsNZ1XIcvec-mz_ZGuKg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-13_07,2023-03-13_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2303130115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_074359_076177_57550A1E 
X-CRM114-Status: GOOD (  21.07  )
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
Subject: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The LS1021A-IOT is a NXP reference board.
Currently supported:

- DDR3 RAM fixed settings
- UART
- SPI boot

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/arm/boards/ls1021aiot/Makefile           |   3 +
 arch/arm/boards/ls1021aiot/board.c            |  47 +++++++
 arch/arm/boards/ls1021aiot/lowlevel.c         | 120 ++++++++++++++++++
 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg    |  11 ++
 .../boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg |   8 ++
 arch/arm/boards/ls1021aiot/start.S            |  11 ++
 arch/arm/configs/layerscape_v7_defconfig      |  94 ++++++++++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1021a-iot.dts              |  77 +++++++++++
 9 files changed, 372 insertions(+)
 create mode 100644 arch/arm/boards/ls1021aiot/Makefile
 create mode 100644 arch/arm/boards/ls1021aiot/board.c
 create mode 100644 arch/arm/boards/ls1021aiot/lowlevel.c
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/start.S
 create mode 100644 arch/arm/configs/layerscape_v7_defconfig
 create mode 100644 arch/arm/dts/fsl-ls1021a-iot.dts

diff --git a/arch/arm/boards/ls1021aiot/Makefile b/arch/arm/boards/ls1021ai=
ot/Makefile
new file mode 100644
index 0000000000..df69ce814b
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/Makefile
@@ -0,0 +1,3 @@
+lwl-y +=3D lowlevel.o
+obj-y +=3D board.o
+lwl-y +=3D start.o
diff --git a/arch/arm/boards/ls1021aiot/board.c b/arch/arm/boards/ls1021aio=
t/board.c
new file mode 100644
index 0000000000..6fe35f008c
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/board.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: (C) Copyright 2023 Ametek Inc.
+// SPDX-FileCopyrightText: 2023 Renaud Barbier <renaud.barbier@ametek.com>=
,
+
+#include <common.h>
+#include <init.h>
+#include <bbu.h>
+#include <net.h>
+#include <crc.h>
+#include <fs.h>
+#include <io.h>
+#include <envfs.h>
+#include <libfile.h>
+#include <asm/memory.h>
+#include <linux/sizes.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <asm/system.h>
+#include <mach/layerscape.h>
+#include <of_address.h>
+#include <soc/fsl/immap_lsch2.h>
+
+static int iot_mem_init(void)
+{
+	if (!of_machine_is_compatible("fsl,ls1021a"))
+		return 0;
+
+	arm_add_mem_device("ram0", 0x80000000, 0x40000000);
+
+	return 0;
+}
+mem_initcall(iot_mem_init);
+
+static int iot_postcore_init(void)
+{
+	struct ls102xa_ccsr_scfg *scfg =3D IOMEM(LSCH2_SCFG_ADDR);
+
+	if (!of_machine_is_compatible("fsl,ls1021a"))
+		return 0;
+
+	/* clear BD & FR bits for BE BD's and frame data */
+	clrbits_be32(&scfg->etsecdmamcr, SCFG_ETSECDMAMCR_LE_BD_FR);
+	out_be32(&scfg->etsecmcr, SCFG_ETSECCMCR_GE2_CLK125);
+
+	return 0;
+}
+coredevice_initcall(iot_postcore_init);
diff --git a/arch/arm/boards/ls1021aiot/lowlevel.c b/arch/arm/boards/ls1021=
aiot/lowlevel.c
new file mode 100644
index 0000000000..4cc6673eeb
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/lowlevel.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: (C) Copyright 2023 Ametek Inc.
+// SPDX-FileCopyrightText: 2023 Renaud Barbier <renaud.barbier@ametek.com>
+
+/*
+ * Derived from Freescale LSDK-19.09-update-311219
+ */
+#include <common.h>
+#include <clock.h>
+#include <debug_ll.h>
+#include <image-metadata.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/syscounter.h>
+#include <asm/system.h>
+#include <asm/cache.h>
+#include <linux/sizes.h>
+#include <mach/errata.h>
+#include <mach/lowlevel.h>
+#include <mach/xload.h>
+#include <mach/layerscape.h>
+
+static struct fsl_ddr_controller ddrc[] =3D {
+	{
+		.memctl_opts.ddrtype =3D SDRAM_TYPE_DDR3,
+		.base =3D IOMEM(LSCH2_DDR_ADDR),
+		.ddr_freq =3D LS1021A_DDR_FREQ,
+		.erratum_A009942 =3D 1,
+		.chip_selects_per_ctrl =3D 4,
+		.fsl_ddr_config_reg =3D {
+			.cs[0].bnds         =3D 0x008000bf,
+			.cs[0].config       =3D 0x80014302,
+			.cs[0].config_2     =3D 0x00000000,
+			.cs[1].bnds         =3D 0x00000000,
+			.cs[1].config       =3D 0x00000000,
+			.cs[1].config_2     =3D 0x00000000,
+			.cs[2].bnds         =3D 0x00000000,
+			.cs[2].config       =3D 0x00000000,
+			.cs[2].config_2     =3D 0x00000000,
+			.cs[3].bnds         =3D 0x00000000,
+			.cs[3].config       =3D 0x00000000,
+			.cs[3].config_2     =3D 0x00000000,
+			.timing_cfg_3       =3D 0x010e1000,
+			.timing_cfg_0       =3D 0x50550004,
+			.timing_cfg_1       =3D 0xbcb38c56,
+			.timing_cfg_2       =3D 0x0040d120,
+			.ddr_sdram_cfg      =3D 0x470c0008,
+			.ddr_sdram_cfg_2    =3D 0x00401010,
+			.ddr_sdram_mode     =3D 0x00061c60,
+			.ddr_sdram_mode_2   =3D 0x00180000,
+			.ddr_sdram_interval =3D 0x18600618,
+			.ddr_data_init      =3D 0xDEADBEEF,
+			.ddr_sdram_clk_cntl =3D 0x02000000,
+			.ddr_init_addr      =3D 0x00000000,
+			.ddr_init_ext_addr  =3D 0x00000000,
+			.timing_cfg_4       =3D 0x00000001,
+			.timing_cfg_5       =3D 0x03401400,
+			.ddr_zq_cntl        =3D 0x89080600,
+			.ddr_wrlvl_cntl     =3D 0x8655f605,
+			.ddr_wrlvl_cntl_2   =3D 0x05060607,
+			.ddr_wrlvl_cntl_3   =3D 0x05050505,
+			.ddr_sr_cntr        =3D 0x00000000,
+			.ddr_sdram_rcw_1    =3D 0x00000000,
+			.ddr_sdram_rcw_2    =3D 0x00000000,
+			.ddr_sdram_rcw_3    =3D 0x00000000,
+			.ddr_cdr1           =3D 0x80040000,
+			.ddr_cdr2           =3D 0x000000C0,
+			.dq_map_0           =3D 0x00000000,
+			.dq_map_1           =3D 0x00000000,
+			.dq_map_2           =3D 0x00000000,
+			.dq_map_3           =3D 0x00000000,
+			.debug[28]          =3D 0x00700046,
+		},
+	},
+};
+
+extern char __dtb_fsl_ls1021a_iot_start[];
+
+static noinline __noreturn void ls1021aiot_r_entry(void)
+{
+	unsigned long membase =3D LAYERSCAPE_DDR_SDRAM_BASE;
+
+	if (get_pc() >=3D membase) {
+		barebox_arm_entry(membase, SZ_1G - SZ_64M,
+				  __dtb_fsl_ls1021a_iot_start);
+	}
+
+	arm_cpu_lowlevel_init();
+	ls102xa_init_lowlevel();
+
+	debug_ll_init();
+
+	udelay(500);
+	putc_ll('>');
+
+	IMD_USED_OF(fsl_ls1021a_iot);
+
+	fsl_ddr_set_memctl_regs(&ddrc[0], 0);
+
+	ls1021a_errata_post_ddr();
+
+	ls1021a_xload_start_image(SZ_1G, 0, 0);
+
+	pr_err("Booting failed\n");
+
+	while (1)
+		;
+}
+
+void ls1021aiot_entry(unsigned long r0, unsigned long r1, unsigned long r2=
);
+
+__noreturn void
+ls1021aiot_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+{
+	relocate_to_current_adr();
+	setup_c();
+
+	ls1021aiot_r_entry();
+}
diff --git a/arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg b/arch/arm/boards/l=
s1021aiot/ls102xa_pbi.cfg
new file mode 100644
index 0000000000..840299be8d
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
@@ -0,0 +1,11 @@
+#PBI commands
+
+09570200 ffffffff
+09570158 00000300
+8940007c 21f47300
+#Configure Scratch register
+09ee0200 10000000
+#Configure alternate space
+09570158 00001000
+#Flush PBL data
+096100c0 000FFFFF
diff --git a/arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg b/arch/arm/=
boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
new file mode 100644
index 0000000000..3b5300501d
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
@@ -0,0 +1,8 @@
+#PBL preamble and RCW header
+aa55aa55 01ee0100
+
+#disable IFC, enable QSPI and DSPI
+0608000a 00000000 00000000 00000000
+20000000 08407900 e0025a00 21046000
+00000000 00000000 00000000 20038000
+20024800 881b1340 00000000 00000000
diff --git a/arch/arm/boards/ls1021aiot/start.S b/arch/arm/boards/ls1021aio=
t/start.S
new file mode 100644
index 0000000000..c907777ca1
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/start.S
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+
+#define STACK_TOP 0x10020000
+
+ENTRY_PROC(start_ls1021aiot)
+	ldr r3, =3DSTACK_TOP
+	mov sp, r3
+	b ls1021aiot_entry
+ENTRY_PROC_END(start_ls1021aiot)
diff --git a/arch/arm/configs/layerscape_v7_defconfig b/arch/arm/configs/la=
yerscape_v7_defconfig
new file mode 100644
index 0000000000..69176738d7
--- /dev/null
+++ b/arch/arm/configs/layerscape_v7_defconfig
@@ -0,0 +1,94 @@
+CONFIG_ARCH_LAYERSCAPE=3Dy
+CONFIG_MACH_LS1021AIOT=3Dy
+CONFIG_MMU=3Dy
+CONFIG_MALLOC_SIZE=3D0x0
+CONFIG_MALLOC_TLSF=3Dy
+CONFIG_KALLSYMS=3Dy
+CONFIG_RELOCATABLE=3Dy
+CONFIG_HUSH_FANCY_PROMPT=3Dy
+CONFIG_CMDLINE_EDITING=3Dy
+CONFIG_AUTO_COMPLETE=3Dy
+CONFIG_MENU=3Dy
+CONFIG_BOOTM_SHOW_TYPE=3Dy
+CONFIG_BOOTM_VERBOSE=3Dy
+CONFIG_BOOTM_INITRD=3Dy
+CONFIG_BOOTM_OFTREE=3Dy
+CONFIG_BOOTM_OFTREE_UIMAGE=3Dy
+CONFIG_BLSPEC=3Dy
+CONFIG_CONSOLE_ACTIVATE_NONE=3Dy
+CONFIG_CONSOLE_ALLOW_COLOR=3Dy
+CONFIG_PBL_CONSOLE=3Dy
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
+CONFIG_RESET_SOURCE=3Dy
+CONFIG_CMD_DMESG=3Dy
+CONFIG_LONGHELP=3Dy
+CONFIG_CMD_IOMEM=3Dy
+CONFIG_CMD_IMD=3Dy
+CONFIG_CMD_MEMINFO=3Dy
+CONFIG_CMD_GO=3Dy
+CONFIG_CMD_RESET=3Dy
+CONFIG_CMD_UIMAGE=3Dy
+CONFIG_CMD_PARTITION=3Dy
+CONFIG_CMD_MOUNT=3Dy
+CONFIG_CMD_UBI=3Dy
+CONFIG_CMD_UBIFORMAT=3Dy
+CONFIG_CMD_UMOUNT=3Dy
+CONFIG_CMD_EXPORT=3Dy
+CONFIG_CMD_LOADENV=3Dy
+CONFIG_CMD_PRINTENV=3Dy
+CONFIG_CMD_MAGICVAR=3Dy
+CONFIG_CMD_MAGICVAR_HELP=3Dy
+CONFIG_CMD_SAVEENV=3Dy
+CONFIG_CMD_FILETYPE=3Dy
+CONFIG_CMD_LN=3Dy
+CONFIG_CMD_MD5SUM=3Dy
+CONFIG_CMD_UNCOMPRESS=3Dy
+CONFIG_CMD_LET=3Dy
+CONFIG_CMD_MSLEEP=3Dy
+CONFIG_CMD_READF=3Dy
+CONFIG_CMD_SLEEP=3Dy
+CONFIG_CMD_ECHO_E=3Dy
+CONFIG_CMD_EDIT=3Dy
+CONFIG_CMD_MENU=3Dy
+CONFIG_CMD_MENU_MANAGEMENT=3Dy
+CONFIG_CMD_MENUTREE=3Dy
+CONFIG_CMD_READLINE=3Dy
+CONFIG_CMD_TIMEOUT=3Dy
+CONFIG_CMD_CRC=3Dy
+CONFIG_CMD_CRC_CMP=3Dy
+CONFIG_CMD_MEMTEST=3Dy
+CONFIG_CMD_MM=3Dy
+CONFIG_CMD_CLK=3Dy
+CONFIG_CMD_DETECT=3Dy
+CONFIG_CMD_FLASH=3Dy
+CONFIG_CMD_GPIO=3Dy
+CONFIG_CMD_I2C=3Dy
+CONFIG_CMD_LED=3Dy
+CONFIG_CMD_SPI=3Dy
+CONFIG_CMD_LED_TRIGGER=3Dy
+CONFIG_CMD_BAREBOX_UPDATE=3Dy
+CONFIG_CMD_OF_NODE=3Dy
+CONFIG_CMD_OF_PROPERTY=3Dy
+CONFIG_CMD_OFTREE=3Dy
+CONFIG_CMD_TIME=3Dy
+CONFIG_OF_BAREBOX_DRIVERS=3Dy
+CONFIG_DRIVER_SERIAL_NS16550=3Dy
+CONFIG_DRIVER_SPI_FSL_QUADSPI=3Dy
+CONFIG_MTD_UBI=3Dy
+CONFIG_MTD_UBI_BEB_LIMIT=3D20
+CONFIG_I2C=3Dy
+CONFIG_I2C_IMX=3Dy
+CONFIG_I2C_MUX=3Dy
+CONFIG_I2C_MUX_PCA954x=3Dy
+CONFIG_MTD=3Dy
+CONFIG_MTD_M25P80=3Dy
+CONFIG_MCI=3Dy
+CONFIG_MCI_MMC_BOOT_PARTITIONS=3Dy
+CONFIG_MCI_IMX_ESDHC=3Dy
+CONFIG_LED_PCA955X=3Dy
+CONFIG_EEPROM_AT25=3Dy
+CONFIG_EEPROM_AT24=3Dy
+CONFIG_GPIO_PCA953X=3Dy
+CONFIG_ZLIB=3Dy
+CONFIG_LZO_DECOMPRESS=3Dy
+CONFIG_FS_TFTP=3Dy
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 7f0d589d89..0a7cceb461 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -202,6 +202,7 @@ lwl-$(CONFIG_MACH_ZII_IMX7D_DEV) +=3D imx7d-zii-rpu2.dt=
b.o imx7d-zii-rmu2.dtb.o
 lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) +=3D am35xx-pfc-750_820x.dtb.o
 lwl-$(CONFIG_MACH_LS1046ARDB) +=3D fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) +=3D fsl-tqmls1046a-mbls10xxa.dtb.o
+lwl-$(CONFIG_MACH_LS1021AIOT) +=3D fsl-ls1021a-iot.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) +=3D zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) +=3D imx8mq-mnt-reform2.dtb.o
 lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) +=3D imx8mp-var-dart-d=
t8mcustomboard.dtb.o
diff --git a/arch/arm/dts/fsl-ls1021a-iot.dts b/arch/arm/dts/fsl-ls1021a-io=
t.dts
new file mode 100644
index 0000000000..85331eefb4
--- /dev/null
+++ b/arch/arm/dts/fsl-ls1021a-iot.dts
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Freescale ls1021a IOT board device tree source
+ *
+ * Copyright 2016 Freescale Semiconductor, Inc.
+ */
+
+/dts-v1/;
+
+#include <arm/ls1021a-iot.dts>
+
+/ {
+	chosen {
+		stdout-path =3D &uart0;
+
+		environment {
+			compatible =3D "barebox,environment";
+			device-path =3D &environment_qspi;
+		};
+	};
+};
+
+&qspi {
+	bus-num =3D <0>;
+	status =3D "okay";
+
+	s70fl01gs: flash@0 {
+		compatible =3D "jedec,spi-nor";
+		#address-cells =3D <1>;
+		#size-cells =3D <1>;
+		spi-max-frequency =3D <20000000>;
+		reg =3D <0>;
+
+		partitions {
+			#address-cells =3D <1>;
+			#size-cells =3D <1>;
+
+			compatible =3D "fixed-partitions";
+
+			partition@0 {
+				label =3D "barebox";
+				reg =3D <0 0x100000>;
+			};
+
+			environment_qspi: partition@100000 {
+				label =3D "barebox-environment";
+				reg =3D <0x100000 0x40000>;
+			};
+		};
+	};
+};
+
+&i2c0 {
+	status =3D "disabled";
+};
+
+&i2c1 {
+	status =3D "okay";
+	eeprom@51 {
+		compatible =3D "atmel,24c512";
+		reg =3D <0x51>;
+	};
+};
+
+/* I2C1 and I2C2 are connected due to Errata on rev1 board */
+&i2c2 {
+	status =3D "disabled";
+};
+
+&uart0 {
+	status =3D "okay";
+	clock-frequency =3D <150000000>;
+};
+
+&uart1 {
+	status =3D "disabled";
+};
--=20
2.27.0



