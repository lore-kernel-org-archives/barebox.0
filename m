Delivery-date: Thu, 23 Feb 2023 15:01:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVCA5-00GvSy-N3
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 15:01:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVCA3-0008HH-Fa
	for lore@pengutronix.de; Thu, 23 Feb 2023 15:01:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sK3Yh56gzoKg0SQBanTplA/evzeihOfFPU8fsESYC/o=; b=i/1fKCgsBzYwIv
	19rzggtoespcmQms65YJE2NxVE+6ytjvH0lb/2OAfg1Qwgn8ItxossTyb+9e/E6bQtQE22yOjHoYL
	MQGJDgPHPuqfktrWBEWlCTl6v0pgTpdUNO8AI/ZNzvDJshYUB5TJgctABY5w8txmvLrQlf2wTzPvM
	VJ83mroNKkpxtSRUHtCCOYRoy29ncnVQU/Hf8WeevluPpbvG/Dseu02/kihgWaCdE+2YUoXtHTdXq
	dVPucOIibYKH4B5wzH6V2zT27SzA4jMKPXti0EY0CviE6n0/G0x3/CULRhPOaDbvzvQx3uxIDGhTH
	0TSaBhphrJAKPgwXO7JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVC8I-00Ggkz-Us; Thu, 23 Feb 2023 13:59:40 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVC7V-00GgXD-5p
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 13:58:52 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31NDHgmA016430
	for <barebox@lists.infradead.org>; Thu, 23 Feb 2023 08:58:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=sK3Yh56gzoKg0SQBanTplA/evzeihOfFPU8fsESYC/o=;
 b=ZXPlsh+9a/4KtiyRmsKBsIfN6fwa5KgMeknnUtk7LZAF5ADcQ8xMAgEKe3VrnLdkBftJ
 GyZuirD2qDIWzcSlTXKrYQtnJFDgHCNPQuvGCwjYc7+2WANKwP6M3qhbVC9N2LFE59sw
 UZxN93FmVZWdZLWoBCOD3A/GofqfQaseReWuEmdUEFrWeO9SLkPnsTIaf0u1TUk09Uwh
 1SSsFMkQ4GWyl0DN0QEAx8Nd40WF5KJ4mvzyk6EGsZh0cA+XgXZ7zIacHXJ6iGJYbQES
 77SUqe09jN2TrZhnhwWEDj8Rmea7qQACLN+b/9T0ukKvLzPkGi3CbFS8kco+wKaIqQ1A Kg== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2044.outbound.protection.outlook.com [104.47.74.44])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3nwy6m9qrv-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Thu, 23 Feb 2023 08:58:48 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YdL8bTl6IkLSQbsMghAkKWVdZoc0kCz2B+pxsrwxEBjiKXzQDMDOi5iazMoSwsAUGAQUT0c1+h7BWINCfy7f8z/Vpth1VoOUBpwOPZSaRjstGGvrtnxNrjA5Cjc6VSwf4t/OozjEQYBFnUQKcDv63f2zc2iPePGZn5/C906GlZglLdbrmVaTCumHiWiDXiSZPgY4+gLVSwflxuBlCkWzk3Qb4lkFE1eI7PTzXmME4zl1p+MQlpCXnkA1wIZs6jJ1wgCHcPyy7auxgnwIbQp5z9NwWF+8dRw09w+a5xCj4hFiM4bzZwO/lH38ThmXPXnPl7ASpcbjBaVYJP3UPp961g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sK3Yh56gzoKg0SQBanTplA/evzeihOfFPU8fsESYC/o=;
 b=RdW4DSa9wGRUGACke68dyOALP9lU7d8yOHqRCe9LC0Kd/rOMyHGtFJLRvGwfuWtjjB6mNjXJVpIYDS5wc9SN4G9om+/iTB4PsjYzVgoeGFMh6XOgInInyfNSUjGCOZb4CnAj9P3gc4Lb8J8nVKvaf5R64b/+Sw1Yf9uHgSr+0h+7rYM7sC9Uo9KFopm/vPNERQvgFKPWbFRGefZJY5YuyY37ptHMSGuaneL9+UooQiz6dnowBuKgWvzHbGWXRL/X6zhhFrJz10QwqXVTqXA+D05o+eueTBuoIZ5APmiUpJLjhgKdz0RGuksNNY0tYXdEN3FdSnp+JHhbG0B348saZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sK3Yh56gzoKg0SQBanTplA/evzeihOfFPU8fsESYC/o=;
 b=3ebFCV85Oi8koRX8xNjyAK4mKDlXgwWaYvausa3DusOFde7qiFQzU+eXzvpa0v+o0zrvqNmLx4hIgvIG69KhWuppEBhcm/PxtdWmeTql/cLijNYmxExBKQTz4XcrVagYsoCFSnaCy/6yqGeNIultuPPn52XIYsnuBsHGmdFiW6E=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by CH3PR07MB9859.namprd07.prod.outlook.com (2603:10b6:610:15c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Thu, 23 Feb
 2023 13:58:46 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6134.019; Thu, 23 Feb 2023
 13:58:46 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board
 support
Thread-Index: AdlHjsBiEhCshAcMRVyRnnQXgXtASw==
Date: Thu, 23 Feb 2023 13:58:46 +0000
Message-ID:  <BL0PR07MB5665F629C595F00D77D51D4FECAB9@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|CH3PR07MB9859:EE_
x-ms-office365-filtering-correlation-id: 6614256e-3450-4066-8de7-08db15a61521
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  CzOuQlxabYmsI7016OxJSWXqxM0TtQtnOcHHHqqxjcdNfEm0+uZngzNhh+SQw/MTZ1P2l7PlO2+VMO6lrGD0+xIiXnUsU2c8DKzQz5w+RTfrMrsYQNpj8+GKUUufi+Lvjq3f6cxiS4UGAYwlFay6fOonjZ3t/JLp9zbf8fHzpDFYDpsZxJ7FwFsWOcpcU5GnlrOePXWECdg0gEj75tfNlTl4qg0nIFFdyWTT/1y5ax5ccLci4aBBIfulVoKyCRFz7LgX+tFxseWhGyriw+UlQu0NtCOPNMMbYS/0hNRyJd2sbwCCUMv2JM+VuXNJ4HtyAcMLf09TWkVJqrH5OLQeligv6ldV8bhEDbWZYAKGip4S9eZKMxDQcQts+91xOp5NklZnyarzXF0RBxD9rxZOPUs80N8cTjQw3FGLOOQRelSkj4JpViWwtQuDA7g4Bmje6aRNGCWDgRJq/x6uZnfOsWnkmIqlvQpN/JzFDjnxAEaTErl0ffmd5ruPZioHTC6Nyo83kgNjMPm6QtlJTlbUsOIr/KklNDZ+/usm9RsMJVzzN3uaWTPxh61eEyaEOfHm/1pOk271oRuq3AAzqXXBNjLX3znaQXBvLJIY7NMIKFbs0ASqJAphRLGSpD8cRZob6WinxLCgyd2Q0N6JUcS5fF64u9wUDKNCErdFh4Yv1opPz2wcbRKPCYpDUCWPHD7f4RHDdsZU6ifz3747oct96Q==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(136003)(39860400002)(346002)(366004)(376002)(451199018)(64756008)(122000001)(38100700002)(83380400001)(86362001)(8676002)(316002)(5660300002)(66476007)(6916009)(52536014)(55016003)(8936002)(76116006)(71200400001)(478600001)(33656002)(38070700005)(66946007)(30864003)(41300700001)(66556008)(66446008)(7696005)(9686003)(186003)(26005)(6506007)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?b0NeGayfKUiTdYNjPcaKbusLbevyFEKCHOe1hfWo+ElZqAsk7KSZ5VE+IRw3?=
 =?us-ascii?Q?JW9xVcNlMFyhqajqcwVZWCSevS/qNkRYoBdfj6quVcTd4yp6QbUQ86b3lGob?=
 =?us-ascii?Q?I5ZyRXw+VMOTF6oCqJvodYuU/QT35vXtQd608nlA62G0L+pphRNkSNyNUsYQ?=
 =?us-ascii?Q?YprXBrMv9pVdo2vxYlfywOtO+BY/ZsXSrhYtZFC+JTy7+gktBTzH0abvCdr6?=
 =?us-ascii?Q?D0nS8+8bxNrJ7Qagra3mDecO7gv9fvxHwbupNi70XvKOnpZ7AL873fzOjua7?=
 =?us-ascii?Q?r3hEmuZOXlJb/YGBT0DB9yGqlb/tucCiVjzZfSEIrebgpP1rzwwqNKlj27wv?=
 =?us-ascii?Q?RbUFArgGnl1QVYP1jgUSR9qNYIYRArGmLS1LLdtCR7Q6JTscr6BD07dIKQNH?=
 =?us-ascii?Q?1dFV04lFz0qDJYlcgV2Mm3lXDaqvw1iU/O0XoiIHgSaNPolEjYKqCn5YRKAF?=
 =?us-ascii?Q?R6dx1yQo6y9RPfe3FbyQC3Kbv8JTJLMoSGcndNAEf0pzNArKSiWfZJFVYK0f?=
 =?us-ascii?Q?UewBx0BWOuUl8M+/GrRryzr9yVc5+zsDM7kNfhfoRlmfU9AunvmORmy7iHAp?=
 =?us-ascii?Q?HKW0tYgDeGQG/1z09Ma7E+/OzV89fCdTwwVVHDl642KLyGMSguUPB8FYM740?=
 =?us-ascii?Q?eAv9spQg3aJb76UNObTJn29RMsyuI/tvmLrHNF+RRMPqmD/JLhR9rDpQH289?=
 =?us-ascii?Q?i+wdfam82TsBqg13tpocg46yjLpYBz0IuxWDOmQ0BTGWpCgYQw8mpgZo5+uh?=
 =?us-ascii?Q?i102Jj/7Npqn+fMlWRMOqHObl1XYB8DJcvCJUoA4A15AYbfqR3r+CeR9X/Hk?=
 =?us-ascii?Q?mzneUpgEfDq276e1A8LMu7JXkGP6fQGo55VEjPvV17QFA1B4Xlc9pjcqtsci?=
 =?us-ascii?Q?Y0ZY2gmJoMrriqPt5zJ/9oiNUghGdsBTAUXHCFeQ6sIG3fIeTZHDwycWQRtS?=
 =?us-ascii?Q?s5FQ9H2SyWsFmrpA51GzKs9L634Z5QP+nS1CxizmaSyb9Z4vnob3J83A0/N2?=
 =?us-ascii?Q?xzkgVUVzYY4Dlqz0FdOLeGMeqQ77JRzDzWZwHI6lR6xrj7s1IqiQ+zuNK3Mm?=
 =?us-ascii?Q?Wbysxf/9QoIYSad3YJ4kzAjXNuppgvZuS7A0fHTUOzw5VgokbClgKQXHXY6I?=
 =?us-ascii?Q?RxKvbZBA1au0TBMtfcOGqNVI1itNWEsTmSh5um6lgjOHnSas0ogL+/Pp2zXu?=
 =?us-ascii?Q?a/z0q2BdQIWbAR3YoUAoBgT6/GdRvwJxOUlucpSegw3t/zXwoIE+9LGgdcUS?=
 =?us-ascii?Q?RfWPG4q96WnPHT4ET60v1DoR3qJxWU/2kXRGsKJeXVmbXT5ovw/9up/abrwS?=
 =?us-ascii?Q?/fXoCxx+Om2sl83ajOBaUjwiXf5np8AcrvHQ7gQ2AAEtVJhXpIxLnOzC8gI+?=
 =?us-ascii?Q?UqUFOe0nYcmd2FuPwEPp++HbR0g5M2RLSzrgkbKw2b4KZHhEbUODH81oN69Z?=
 =?us-ascii?Q?S5u3LpXCJHZR4NS5tsdl9s7Y2Owzta5bBT68HV6wnNyyeABRzZJpqXGsVRM0?=
 =?us-ascii?Q?p54V8F4G9t/9bE9peQ2c4WH8QiaPxqnyYNl08yOjfZimiSAlKcsjueblIyn/?=
 =?us-ascii?Q?Auzk9RoTFWxxmwJ0y0BLbFmbO71BIlSNUL2Ya04V?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6614256e-3450-4066-8de7-08db15a61521
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 13:58:46.6019
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RUSP6VejIutrJdfY3g1rnXxBzD/mJ6pBTW8N5d2SAihN5EHeDaYmy7U6cJNQsPsZTpe+lpJgfe3elo8M3DMowODLCcEq3tLRbw6fuhNCGvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR07MB9859
X-Proofpoint-GUID: 2mqjCn6ilWYm7Q0BUYXVAIF-XQZJ9S7O
X-Proofpoint-ORIG-GUID: 2mqjCn6ilWYm7Q0BUYXVAIF-XQZJ9S7O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-23_08,2023-02-23_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=999 spamscore=0 impostorscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 phishscore=0 mlxscore=0 suspectscore=0
 clxscore=1015 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2302230114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_055849_286941_A17414B5 
X-CRM114-Status: GOOD (  22.13  )
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
Subject: Subject: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The LS1021A-IOT is a NXP reference board.
Currently supported:

- DDR3 RAM fixed settings
- UART
- SPI boot

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1021aiot/Makefile           |   3 +
 arch/arm/boards/ls1021aiot/board.c            |  47 +++++++
 arch/arm/boards/ls1021aiot/lowlevel.c         | 120 ++++++++++++++++++
 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg    |  11 ++
 .../boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg |   8 ++
 arch/arm/boards/ls1021aiot/start.S            |  11 ++
 arch/arm/configs/layerscape_v7_defconfig      |  94 ++++++++++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1021a-iot.dts              |  77 +++++++++++
 arch/arm/lib32/Makefile                       |   1 +
 arch/arm/lib32/pbl.c                          |  21 +++
 12 files changed, 395 insertions(+)
 create mode 100644 arch/arm/boards/ls1021aiot/Makefile
 create mode 100644 arch/arm/boards/ls1021aiot/board.c
 create mode 100644 arch/arm/boards/ls1021aiot/lowlevel.c
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
 create mode 100644 arch/arm/boards/ls1021aiot/start.S
 create mode 100644 arch/arm/configs/layerscape_v7_defconfig
 create mode 100644 arch/arm/dts/fsl-ls1021a-iot.dts
 create mode 100644 arch/arm/lib32/pbl.c

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
index 0000000000..210f4433b6
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
+	layerscape_errata_post_ddr();
+
+	layerscape_xload_start_image(SZ_1G, 0, 0);
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
index dca13df4ba..f3dd88241b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -200,6 +200,7 @@ lwl-$(CONFIG_MACH_ZII_IMX7D_DEV) +=3D imx7d-zii-rpu2.dt=
b.o imx7d-zii-rmu2.dtb.o
 lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) +=3D am35xx-pfc-750_820x.dtb.o
 lwl-$(CONFIG_MACH_LS1046ARDB) +=3D fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) +=3D fsl-tqmls1046a-mbls10xxa.dtb.o
+lwl-$(CONFIG_MACH_LS1021AIOT) +=3D fsl-ls1021a-iot.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) +=3D zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) +=3D imx8mq-mnt-reform2.dtb.o
=20
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
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index 82507fffc0..1be8d70c45 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -31,6 +31,7 @@ extra-y +=3D barebox.lds
 pbl-y	+=3D lib1funcs.o
 pbl-y	+=3D ashldi3.o
 pbl-y	+=3D div0.o
+pbl-y	+=3D pbl.o
=20
 obj-pbl-y	+=3D setjmp.o
=20
diff --git a/arch/arm/lib32/pbl.c b/arch/arm/lib32/pbl.c
new file mode 100644
index 0000000000..f4be7b57dc
--- /dev/null
+++ b/arch/arm/lib32/pbl.c
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <asm/system.h>
+#include <clock.h>
+#include <common.h>
+
+void udelay(unsigned long us)
+{
+	unsigned long long ticks, cntfrq =3D get_cntfrq();
+	unsigned long long start =3D get_cntpct();
+
+	ticks =3D us * cntfrq + 999999;
+	do_div(ticks, 1000000);
+
+	while ((long)(start + ticks - get_cntpct()) > 0);
+}
+
+void mdelay(unsigned long ms)
+{
+	udelay(ms * 1000);
+}
--=20
2.27.0


