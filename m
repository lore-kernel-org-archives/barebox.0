Delivery-date: Wed, 08 Feb 2023 14:28:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkUr-000bAl-Jy
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 14:28:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkUn-0001Ah-Fl
	for lore@pengutronix.de; Wed, 08 Feb 2023 14:28:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=657X+aojsV7W3pxv+sOklfOkG7TQHCoQT97zRkfFLAA=; b=xrMuYcLGKftqWp
	F+HTov1+9eQOtS4Rb0IEhWB6eXOop1OdxNXAATanl0IMakzqDa5Clev+wVuaJI1uLgT/GwlWclEXS
	8HHKcUxo/Ygziz4YWqzGAz3F5d/Co4Zud+qr2kDmir2muBdjveHmLVDohDs8U8vwdxD886N/PWcae
	bA7UJz0nGWTc3/bMjf7b02LxQ6riqODGWv6SyuqvbqZdbcqhbDaxz0bPHhCdaa1Azum3N+DUcAxmY
	KPRRUpEIMVMhNa+QrqoxB4fX7qGm2AApflNO//9h3hrywKUu+aFwB0ozl3y4P5DG5ZrolYWrSY6Kd
	OU6Zpm+Ev52ZcMSjTP7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkTC-00FjdL-GU; Wed, 08 Feb 2023 13:26:42 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkT5-00Fjbb-J1
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 13:26:38 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 318AUt68012437
	for <barebox@lists.infradead.org>; Wed, 8 Feb 2023 08:26:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=657X+aojsV7W3pxv+sOklfOkG7TQHCoQT97zRkfFLAA=;
 b=cj/GnjQuvBCTaqu55nLd5Y8iGSFm2gLmY19I4mFrkmQlvHi9Imn0NJ1Fez52L77Sy02o
 cXe9u/sf9H7Dhyi0N2ucFl2UbgJUbE6RSp7up7XDR87+Zez1S+7XEgwINRxPYEmoI8I4
 n1dY2Nx8DWrUTFAZvinqXR5R0wnMinZ60phT5Z/FiuPTTwKDqWP93B0upv5rRUeioel2
 Z7H3VYRPjHpWxK3LL1rwlzO/j4Iip/ZFTs9ZL3b6mS0Ps/CAIT+P4fJ+IeGMDWG5wiwu
 /LqdAaFquOLxE/arO31lcDgP8TuQxbeEe4b2lH96BZRgKGi9yzlIl8aADML7KHFbAFG2 FQ== 
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2043.outbound.protection.outlook.com [104.47.56.43])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3nhjf2wkfy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 08 Feb 2023 08:26:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c9HgrJ8xaU5QgZ9ZzCYmIDRz0x5trlKX7acP4phQ8E+rBM80Q3lIYvwi4bLmqmXG2VjC0VI6jggipdRkrdWA4T6WtdKWB5BqLM1I7Hv51DlEVHo664/D8fFeIl3mAQ+0Pjnj77FWU+t0pWMG0zw1jzESzWjj9Zhe/fOPVDrZ1EpPQZPdtb0sxJJDjCHmOGRTgtHXGH0P79y/7tA2/6qrnMTBVOgRuFKenPvHUWTDr0OxjdCwYJCj0TH3APmquth92t3vQhFCm5BkFGPSULoIp8ieuxR3B2zb3UfasjPGNvN0sDHOhKV9YPIPbjfqSeO1fRSqhLt9xYmKnLgz3NYm/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=657X+aojsV7W3pxv+sOklfOkG7TQHCoQT97zRkfFLAA=;
 b=evdEb36vMhlmvSeaweQNF4QJD0ey70SfiWPKsOIJ71GB7CMzUOG73sHRDEtMnNpI2WvOYw8OIHK1YGKGpPKDGNBvUU/VAopHwxM/cu3+Z21PjGLd5r5yuhZ+FM69ki27EQhVVNBf8/XLSnCTFDBNaVkWU4XqM2tT3OD0iwpTeKnAw3Glj8jx7mQCXJMRZUvHmCwRvsNBgVmm4n2OS6cc/SDwb/dUW5Z9QSlTSfrzmfTiXpjK2LqgJXrWi78lA1B97M5lCF3cfT8B/U9rIzKJefJEeX8d7F3kVwydz2vyqPJy+/4TfYH/rdtv09V2pdpXjCyDGdWbt+jIn/Mjq1Cm+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=657X+aojsV7W3pxv+sOklfOkG7TQHCoQT97zRkfFLAA=;
 b=g53U8qrYAYbj2eoiixMPgMjH4BtlCh53Do+DwJCuwkvHbCDoro2REFBcxHI4e93YPitIsua4FCqA3Jd8dNnB1uFIa9U0KYAD32vk9Tp2rs4X9ISsdCQWoYAhuxxt4Rr3fTlmrUXcf9Hf0/ArMrQoZa9uhNNQ4LkezhBKyqeLMbo=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BN6PR07MB3475.namprd07.prod.outlook.com (2603:10b6:405:64::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Wed, 8 Feb
 2023 13:26:30 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%4]) with mapi id 15.20.6064.027; Wed, 8 Feb 2023
 13:26:30 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
Thread-Index: Adk7wNf9VK5kFY61TROWRHlLMdbVRw==
Date: Wed, 8 Feb 2023 13:26:30 +0000
Message-ID:  <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BN6PR07MB3475:EE_
x-ms-office365-filtering-correlation-id: 9afc2074-0644-41e5-4c91-08db09d816af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  hs2FG8tkUy75tdA2N77Euf0icJM2mtI2W3NGlwollPrPL70js/2RokGhtUOksAsdy0A2zI0Tt8NQkmZUmcTBULuLXzk1OOJ+nzhRbuvG39/0IOmJRNbqMx5pzMkZXtlfRi2hICJT0XFvqh9hMy1+av6bgC+ciq8oPZ02U+nRiXH0c2J81JzaiABheylkGWJYN2dWmroNtP1Geo+w6heLzrHBJTWF5huX7FF0RloHQKErspkHbsko9dHvse1ThswaW6l/evJbm3TNOTNKq4i36raeN1giJxPkZeDoM+wV55XqRhxdQ/ldGH0verMeBHFjEaoScb9dacjHpgUmDscY7b4kkpz0lwLaWEuR2hjRhlkVyJNg8u/fruWDdzlxdtmItxPsUQsIVZP8K9QHz0ORhXRfesenwK0ATVTHWbrQNeMU8QHevc7UEPLX+WyE0NWBGOaYEVsm0RC4XXsK61pygi3R3tloyjNp+VIy/w6OCFR1FJC7xmYP0Zthx5UZyZqLXX1ESNBlAII55lE4lmjsEP/MZBFNpUURQ1x3AC4VCFwvwQTp1t3xcPi9aXl956HeP113SlX7uaGJ3s5ixbTPH4gnGxogp6k0mifGAo1nkqNpdD8Tj4TX9vFoicWYc++aexqA0IOcUs4qH45+gSYJEvTZ/eEK8fNEWjki7zjxWxo7Q2Nsiiga8zgOFPV3TkDmplsRcrB9/aj1sBkrK6BOWA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(39860400002)(376002)(396003)(136003)(366004)(451199018)(33656002)(83380400001)(316002)(6506007)(478600001)(7696005)(186003)(26005)(9686003)(71200400001)(5660300002)(8936002)(52536014)(2906002)(86362001)(30864003)(76116006)(55016003)(38070700005)(66556008)(66946007)(6916009)(8676002)(64756008)(66446008)(66476007)(122000001)(41300700001)(38100700002)(579004)(559001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?Sc53cuL5qjNPzRadt/af3d9QQCk+bVJPQgdv8Zkcvp/0U/eFd8NnDvLtlHsH?=
 =?us-ascii?Q?0MSln1k8mxBf+7PuwE1l4OFQ0jUduiDxBkwT44SqxaOihbeRzMggoAa+xqd6?=
 =?us-ascii?Q?z5vUTkjLfapYUxYaAu+uQVA1a/Do3EMFeR3sgNr11qM+g0fUVuxlyzvMDl7E?=
 =?us-ascii?Q?7ePoQP8Cv4bZzp94TERn3pkiSqrhqhF+IcbkHaWjFyTOjb3Xi1ysxH6a0sZE?=
 =?us-ascii?Q?WaZp1hYV0DfuGpzjLdypOrrShe884YZqykN1Hhy9w/IX59kipa5CzI0EhUkA?=
 =?us-ascii?Q?tcADu4XOBGhm56+kEizuwDCs1HVGEOK0uqq9WZVcuu5HE1P9z1oqdORbuz4r?=
 =?us-ascii?Q?SPZbk4HpIny8vdaD6zk4AxwuHQObYuZ9rkthneNsZWM2ojpEc91e6cndpvSw?=
 =?us-ascii?Q?gajCokaY1mIOPUGfsr7qdRNORPnkBk+N1knYHC0CwpkyEXbRjaSnoK8O/P1q?=
 =?us-ascii?Q?7/oRMIh2lNfcCE59cVypri/FgIWUYBO9iFFB24UN6Ll5CX3Ld/CHMcVa4GKG?=
 =?us-ascii?Q?Ju5+h10PO6udZEreu5oqypoIE6t1kdZYarB9CeNzRSg8dIRnSscyBrUlu/Zg?=
 =?us-ascii?Q?msJPvap7e0LjXHnqDfc3o0ZuSKOR1FAuYfbd7RpqibgU8O8H9q66zcQ6QKBu?=
 =?us-ascii?Q?0PQhjhgNRcOcGIjrQPoSrgpdmnTtfQQtjx4ER32uDrjLqZ0b7PjfsY7GGD6o?=
 =?us-ascii?Q?iUYKyxxx/Pjg2WCQZiu0IAgqfcXmAm+fuXp4BGos8QHyBruIX9h71PMJRpoM?=
 =?us-ascii?Q?sW4MZusWV99+qrpFSR3vBbsZM9gRgLKwHHBPCdFlNmeaj1stGreCPW0i9FXT?=
 =?us-ascii?Q?rs/dpZ9Gy6laY+r1z3z/ZDNKsihZpAA6dGp13poWdZ+4gqdDEPBoyFVtGqGV?=
 =?us-ascii?Q?tMlN8nrdqbdzF8tP/kyByRKkDcMNHzo+dPCPvlvB8NDhcWLSloH8DJbxgu6H?=
 =?us-ascii?Q?AAJazLGwIPXQh9ktt+EkUK4HRmBNHzqP+4UQQe/wpnGLT8QfjvcpiUT9OQAz?=
 =?us-ascii?Q?Klk0d5nD60T0cMeUP9Bl85+j9AMX+CtvKOOahC+MOLuNmfFzisoNi+/mkwTj?=
 =?us-ascii?Q?oU7HaSFYwKl5mqOBv9sbwmlYIiisicxiWXN2ree+BKKNIB36YmyYS5XXXz5W?=
 =?us-ascii?Q?yczK6U+b8HVzmBfjmIKJuYec3TenCV/rb6b7TuLUffBOGeT6WdMOUw7LJ+vb?=
 =?us-ascii?Q?J8HOKlCDcBw1BXycPyanEe2w3Zz1Bw7HcIJnX387OEBkftgfgpmBzNY78sQ5?=
 =?us-ascii?Q?Z+C6YnJNAEegmD3sGnoHVFsS1MFkez9e08+qvtoKsAHN729YtJkQw1tCB/hh?=
 =?us-ascii?Q?IWQQl7VUvtkL5Xj9hPFLcMDJkuAoac+U55ePe2pwDxJpQ/xjJYdWZNJC6zu+?=
 =?us-ascii?Q?xBTfop++eOqB5801f8Z/YAEKTuXfFgHiEPwoxTjt33QD/AVlER6eNhlfLju4?=
 =?us-ascii?Q?s/Z4paCmQQroWptjw/dmsI7cdg5Fpydr3foWJc0GlgilqHAz+TKNJjjzHsiR?=
 =?us-ascii?Q?gSTH2jzOKTUKQhTPpf3lgiNRtAw6Q+6h8OjwbEU1svHyOvuWl/Dz0Ow7kkk+?=
 =?us-ascii?Q?XGuFemfvZe9OBWEBzgx8a9V5PtuRNcqwNRaZ6a+d?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9afc2074-0644-41e5-4c91-08db09d816af
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2023 13:26:30.0917
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: by6MizIylQ8EXf2qxFFZCC8RnO9ATSUyw/F3hLRA2azk4py+Wgx4y3dwhFhRE5NH5kch9gsqNNcq/2p/pVh5ADFOy8v1i3Kv0IxNylLB7ek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR07MB3475
X-Proofpoint-GUID: ZLItmrEQ_6t5hwjpHsUH54e4LIPhkXZH
X-Proofpoint-ORIG-GUID: ZLItmrEQ_6t5hwjpHsUH54e4LIPhkXZH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-08_04,2023-02-08_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 malwarescore=0 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015
 mlxscore=0 bulkscore=0 mlxlogscore=999 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302080118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_052635_676941_33298688 
X-CRM114-Status: GOOD (  23.94  )
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
Subject: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The LS1021A-IOR is a NXP reference board.
Currently supported:

    - DDR3 RAM fixed settings
    - UART
    - SPI boot
    - One SGMII network ports

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1021aiot/Makefile           |   3 +
 arch/arm/boards/ls1021aiot/board.c            |  83 +++++++
 arch/arm/boards/ls1021aiot/lowlevel.c         | 121 ++++++++++
 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg    |  11 +
 .../boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg |   8 +
 arch/arm/boards/ls1021aiot/start.S            |  11 +
 arch/arm/configs/layerscape_v7_defconfig      | 100 +++++++++
 arch/arm/dts/fsl-ls1021a-iot.dts              | 124 ++++++++++
 arch/arm/lib32/Makefile                       |   1 +
 arch/arm/lib32/pbl.c                          |  21 ++
 drivers/net/Kconfig                           |   2 +-
 drivers/net/gianfar.c                         | 211 ++++++++++++++++--
 drivers/net/gianfar.h                         |  16 +-
 14 files changed, 690 insertions(+), 23 deletions(-)
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
index 0000000000..8f99f1a996
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/board.c
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: (C) Copyright 2021 Ametek Inc.
+// SPDX-FileCopyrightText: 2021 Renaud Barbier <renaud.barbier@abaco.com>,
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
+#include <soc/fsl/immap_ls102xa.h>
+
+
+/* Currently 1000FD is not working. Below is a bit of guess work
+ * from reading MMD3/MMD7 of the AR8033
+ */
+static int phy_fixup(struct phy_device *phydev)
+{
+	unsigned short val;
+	int advertise =3D SUPPORTED_1000baseT_Full | SUPPORTED_1000baseT_Half;
+
+	phydev->advertising &=3D ~advertise;
+
+	/* Ar8031 phy SmartEEE feature cause link status generates glitch,
+	 * which cause ethernet link down/up issue, so disable SmartEEE
+	 */
+	phy_write(phydev, 0xd, 0x3);
+	phy_write(phydev, 0xe, 0x805d);
+	phy_write(phydev, 0xd, 0x4003);
+	val =3D phy_read(phydev, 0xe);
+	val &=3D ~(0x1 << 8);
+	phy_write(phydev, 0xe, val);
+
+	/* Use XTAL */
+	phy_write(phydev, 0xd, 0x7);
+	phy_write(phydev, 0xe, 0x8016);
+	phy_write(phydev, 0xd, 0x4007);
+	val =3D phy_read(phydev, 0xe);
+	val &=3D 0xffe3;
+	phy_write(phydev, 0xe, val);
+
+	return 0;
+}
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
+#define PHY_ID_AR8031	0x004dd074
+static int iot_postcore_init(void)
+{
+	struct ccsr_scfg *scfg =3D IOMEM(LS102XA_SCFG_ADDR);
+
+	if (!of_machine_is_compatible("fsl,ls1021a"))
+		return 0;
+
+	/* clear BD & FR bits for BE BD's and frame data */
+	clrbits_be32(&scfg->etsecdmamcr, SCFG_ETSECDMAMCR_LE_BD_FR);
+	out_be32(&scfg->etsecmcr, SCFG_ETSECCMCR_GE2_CLK125);
+
+	phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff, phy_fixup);
+
+	return 0;
+}
+
+coredevice_initcall(iot_postcore_init);
diff --git a/arch/arm/boards/ls1021aiot/lowlevel.c b/arch/arm/boards/ls1021=
aiot/lowlevel.c
new file mode 100644
index 0000000000..d2e0332da8
--- /dev/null
+++ b/arch/arm/boards/ls1021aiot/lowlevel.c
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: (C) Copyright 2021 Ametek Inc.
+// SPDX-FileCopyrightText: 2021 Renaud Barbier <renaud.barbier@abaco.com>
+
+/*
+ * Derived from Freescale LSDK-19.09-update-311219
+ */
+#include <common.h>
+#include <clock.h>
+#include <debug_ll.h>
+#include <image-metadata.h>
+#include <platform_data/mmc-esdhc-imx.h>
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
+	.memctl_opts.ddrtype =3D SDRAM_TYPE_DDR3,
+	.base =3D IOMEM(LS102XA_DDR_ADDR),
+	.ddr_freq =3D LS1021A_DDR_FREQ,
+	.erratum_A009942 =3D 1,
+	.chip_selects_per_ctrl =3D 4,
+	.fsl_ddr_config_reg =3D {
+		.cs[0].bnds         =3D 0x008000bf,
+		.cs[0].config       =3D 0x80014302,
+		.cs[0].config_2     =3D 0x00000000,
+		.cs[1].bnds         =3D 0x00000000,
+		.cs[1].config       =3D 0x00000000,
+		.cs[1].config_2     =3D 0x00000000,
+		.cs[2].bnds         =3D 0x00000000,
+		.cs[2].config       =3D 0x00000000,
+		.cs[2].config_2     =3D 0x00000000,
+		.cs[3].bnds         =3D 0x00000000,
+		.cs[3].config       =3D 0x00000000,
+		.cs[3].config_2     =3D 0x00000000,
+		.timing_cfg_3       =3D 0x010e1000,
+		.timing_cfg_0       =3D 0x50550004,
+		.timing_cfg_1       =3D 0xbcb38c56,
+		.timing_cfg_2       =3D 0x0040d120,
+		.ddr_sdram_cfg      =3D 0x470c0008,
+		.ddr_sdram_cfg_2    =3D 0x00401010,
+		.ddr_sdram_mode     =3D 0x00061c60,
+		.ddr_sdram_mode_2   =3D 0x00180000,
+		.ddr_sdram_interval =3D 0x18600618,
+		.ddr_data_init      =3D 0xDEADBEEF,
+		.ddr_sdram_clk_cntl =3D 0x02000000,
+		.ddr_init_addr      =3D 0x00000000,
+		.ddr_init_ext_addr  =3D 0x00000000,
+		.timing_cfg_4       =3D 0x00000001,
+		.timing_cfg_5       =3D 0x03401400,
+		.ddr_zq_cntl        =3D 0x89080600,
+		.ddr_wrlvl_cntl     =3D 0x8655f605,
+		.ddr_wrlvl_cntl_2   =3D 0x05060607,
+		.ddr_wrlvl_cntl_3   =3D 0x05050505,
+		.ddr_sr_cntr        =3D 0x00000000,
+		.ddr_sdram_rcw_1    =3D 0x00000000,
+		.ddr_sdram_rcw_2    =3D 0x00000000,
+		.ddr_sdram_rcw_3    =3D 0x00000000,
+		.ddr_cdr1           =3D 0x80040000,
+		.ddr_cdr2           =3D 0x000000C0,
+		.dq_map_0           =3D 0x00000000,
+		.dq_map_1           =3D 0x00000000,
+		.dq_map_2           =3D 0x00000000,
+		.dq_map_3           =3D 0x00000000,
+		.debug[28]          =3D 0x00700046,
+		},
+	},
+};
+
+extern char __dtb_fsl_ls1021a_iot_start[];
+
+static noinline __noreturn void ls1021aiot_r_entry(void)
+{
+	unsigned long membase =3D LS1021A_DDR_SDRAM_BASE;
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
+	ls102xa_errata_post_ddr();
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
index 0000000000..79cdc357c8
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
+    ldr r3, =3DSTACK_TOP
+	mov sp, r3
+	b ls1021aiot_entry
+ENTRY_PROC_END(start_ls1021aiot)
diff --git a/arch/arm/configs/layerscape_v7_defconfig b/arch/arm/configs/la=
yerscape_v7_defconfig
new file mode 100644
index 0000000000..208c61933e
--- /dev/null
+++ b/arch/arm/configs/layerscape_v7_defconfig
@@ -0,0 +1,100 @@
+CONFIG_ARCH_LS102XA=3Dy
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
+CONFIG_CMD_DHCP=3Dy
+CONFIG_CMD_TFTP=3Dy
+CONFIG_CMD_MIITOOL=3Dy
+CONFIG_CMD_PING=3Dy
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
+CONFIG_NET=3Dy
+CONFIG_DRIVER_NET_GIANFAR=3Dy
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
diff --git a/arch/arm/dts/fsl-ls1021a-iot.dts b/arch/arm/dts/fsl-ls1021a-io=
t.dts
new file mode 100644
index 0000000000..5d50829313
--- /dev/null
+++ b/arch/arm/dts/fsl-ls1021a-iot.dts
@@ -0,0 +1,124 @@
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
+	model =3D "LS1021A IOT Board";
+
+	aliases {
+		enet2-rgmii-phy =3D &rgmii_phy1;
+		enet0-sgmii-phy =3D &sgmii_phy2;
+		enet1-sgmii-phy =3D &sgmii_phy0;
+	};
+
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
+/* I2C1 and I2C1 are connected due to Errata on rev1 board */
+&i2c2 {
+	status =3D "disabled";
+};
+
+&enet0 {
+	phy-handle =3D <&sgmii_phy2>;
+	phy-mode =3D "sgmii";
+	status =3D "disabled";
+};
+
+&enet1 {
+	tbi-handle =3D <&tbi0>;
+	phy-handle =3D <&sgmii_phy0>;
+	phy-mode =3D "sgmii";
+	status =3D "okay";
+};
+
+&enet2 {
+	phy-handle =3D <&rgmii_phy1>;
+	phy-connection-type =3D "rgmii-id";
+	status =3D "disabled";
+};
+
+&mdio0 {
+	sgmii_phy0: ethernet-phy@3 {
+		reg =3D <0x3>;
+	};
+	rgmii_phy1: ethernet-phy@1 {
+		reg =3D <0x1>;
+	};
+	sgmii_phy2: ethernet-phy@2 {
+		reg =3D <0x2>;
+	};
+	tbi0: tbi-phy@1f {
+		reg =3D <0x1f>;
+		device_type =3D "tbi-phy";
+	};
+};
+
+&mdio1 {
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
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 30de1f544c..19709b0163 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -189,7 +189,7 @@ config DRIVER_NET_FSL_FMAN
=20
 config DRIVER_NET_GIANFAR
 	bool "Gianfar Ethernet"
-	depends on ARCH_MPC85XX
+	depends on ARCH_MPC85XX || ARCH_LS102XA
 	select PHYLIB
=20
 config DRIVER_NET_KS8851_MLL
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 4b374b4a50..d7ecd8f6c6 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -16,6 +16,7 @@
 #include <driver.h>
 #include <command.h>
 #include <errno.h>
+#include <of_address.h>
 #include <asm/io.h>
 #include <linux/phy.h>
 #include <linux/err.h>
@@ -26,6 +27,19 @@
 #define RX_BUF_CNT 	PKTBUFSRX
 #define BUF_ALIGN	8
=20
+#define TBIANA_SETTINGS ( \
+	GFAR_TBIANA_ASYMMETRIC_PAUSE \
+	| GFAR_TBIANA_SYMMETRIC_PAUSE \
+	| GFAR_TBIANA_FULL_DUPLEX \
+	)
+
+#define TSEC_TBICR_SETTINGS ( \
+	GFAR_TBICR_PHY_RESET \
+	| GFAR_TBICR_ANEG_ENABLE \
+	| GFAR_TBICR_FULL_DUPLEX \
+	| GFAR_TBICR_SPEED1_SET \
+	)
+
 /*
  * Initialize required registers to appropriate values, zeroing
  * those we don't care about (unless zero is bad, in which case,
@@ -82,11 +96,12 @@ static void gfar_adjust_link(struct eth_device *edev)
 	u32 ecntrl, maccfg2;
=20
 	priv->link =3D edev->phydev->link;
-	priv->duplexity =3Dedev->phydev->duplex;
+	priv->duplexity =3D edev->phydev->duplex;
+	priv->speed =3D edev->phydev->speed;
=20
 	if (edev->phydev->speed =3D=3D SPEED_1000)
 		priv->speed =3D 1000;
-	if (edev->phydev->speed =3D=3D SPEED_100)
+	else if (edev->phydev->speed =3D=3D SPEED_100)
 		priv->speed =3D 100;
 	else
 		priv->speed =3D 10;
@@ -126,11 +141,11 @@ static void gfar_adjust_link(struct eth_device *edev)
 		out_be32(regs + GFAR_ECNTRL_OFFSET, ecntrl);
 		out_be32(regs + GFAR_MACCFG2_OFFSET, maccfg2);
=20
-		dev_info(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
-		       (priv->duplexity) ? "full" : "half");
+		dev_dbg(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
+			(priv->duplexity) ? "full" : "half");
=20
 	} else {
-		dev_info(&edev->dev, "No link.\n");
+		dev_dbg(&edev->dev, "No link.\n");
 	}
 }
=20
@@ -187,7 +202,7 @@ static int gfar_open(struct eth_device *edev)
 	int ret;
=20
 	ret =3D phy_device_connect(edev, &phy->miibus, priv->phyaddr,
-				 gfar_adjust_link, 0, PHY_INTERFACE_MODE_NA);
+				 gfar_adjust_link, 0, phy->interface);
 	if (ret)
 		return ret;
=20
@@ -246,7 +261,10 @@ static int gfar_set_ethaddr(struct eth_device *edev, c=
onst unsigned char *mac)
=20
 	out_be32(regs + GFAR_MACSTRADDR1_OFFSET, tempval);
=20
-	tempval =3D *((uint *)(tmpbuf + 4));
+	if (IS_ENABLED(CONFIG_PPC))
+		tempval =3D *((uint *)(tmpbuf + 4));
+	else
+		tempval =3D tmpbuf[4] << 24 | tmpbuf[5] << 16;
=20
 	out_be32(regs + GFAR_MACSTRADDR2_OFFSET, tempval);
=20
@@ -342,26 +360,33 @@ static void gfar_init_phy(struct eth_device *dev)
 	struct gfar_phy *phy =3D priv->gfar_mdio;
 	void __iomem *regs =3D priv->regs;
 	uint64_t start;
+	uint32_t ecntrl;
+
=20
 	gfar_local_mdio_write(phy->regs, priv->phyaddr, GFAR_MIIM_CR,
-			GFAR_MIIM_CR_RST);
+		GFAR_MIIM_CR_RST);
=20
 	start =3D get_time_ns();
 	while (!is_timeout(start, 10 * MSECOND)) {
 		if (!(gfar_local_mdio_read(phy->regs, priv->phyaddr,
-					GFAR_MIIM_CR) & GFAR_MIIM_CR_RST))
+				GFAR_MIIM_CR) & GFAR_MIIM_CR_RST))
 			break;
 	}
=20
-	if (in_be32(regs + GFAR_ECNTRL_OFFSET) & GFAR_ECNTRL_SGMII_MODE)
+	ecntrl =3D in_be32(regs + GFAR_ECNTRL_OFFSET);
+	if (ecntrl & GFAR_ECNTRL_SGMII_MODE) {
+		phy->interface =3D PHY_INTERFACE_MODE_SGMII;
 		gfar_configure_serdes(priv);
+	} else if (ecntrl & ECNTRL_REDUCED_MODE) {
+		phy->interface =3D PHY_INTERFACE_MODE_RGMII;
+	}
 }
=20
 static int gfar_send(struct eth_device *edev, void *packet, int length)
 {
 	struct gfar_private *priv =3D edev->priv;
 	void __iomem *regs =3D priv->regs;
-	struct device *dev =3D edev->parent;
+	struct device_d *dev =3D edev->parent;
 	uint64_t start;
 	uint tidx;
 	uint16_t status;
@@ -401,7 +426,7 @@ static int gfar_send(struct eth_device *edev, void *pac=
ket, int length)
 static int gfar_recv(struct eth_device *edev)
 {
 	struct gfar_private *priv =3D edev->priv;
-	struct device *dev =3D edev->parent;
+	struct device_d *dev =3D edev->parent;
 	void __iomem *regs =3D priv->regs;
 	uint16_t status, length;
=20
@@ -409,7 +434,6 @@ static int gfar_recv(struct eth_device *edev)
 		return 0;
=20
 	length =3D in_be16(&priv->rxbd[priv->rxidx].length);
-
 	/* Send the packet up if there were no errors */
 	status =3D in_be16(&priv->rxbd[priv->rxidx].status);
 	if (!(status & RXBD_STATS))
@@ -464,16 +488,135 @@ static int gfar_miiphy_write(struct mii_bus *bus, in=
t addr, int reg,
 	return 0;
 }
=20
+#ifdef CONFIG_OFDEVICE
+static int gfar_probe(struct device_d *dev)
+{
+	struct eth_device *edev;
+	struct gfar_private *priv;
+	struct device_node *np;
+	uint32_t tbiaddr =3D 0x1f;
+	size_t size;
+	char *p;
+
+	priv =3D xzalloc(sizeof(struct gfar_private));
+
+	edev =3D &priv->edev;
+
+	priv->regs =3D dev_get_mem_region(dev, 0);
+	if (IS_ERR(priv->regs)) {
+		struct device_node *child;
+
+		child =3D of_get_next_child(dev->device_node, NULL);
+		for_each_child_of_node(dev->device_node, child) {
+			if (child->name && !strncmp(child->name, "queue-group",
+						strlen("queue-group"))) {
+				priv->regs =3D of_iomap(child, 0);
+				if (IS_ERR(priv->regs)) {
+					pr_err("Failed to acquire first group address\n");
+					return PTR_ERR(priv->regs);
+				}
+				break;
+			}
+		}
+	}
+
+	priv->phyaddr =3D -1;
+	np =3D of_parse_phandle_from(dev->device_node, NULL, "phy-handle", 0);
+	if (np) {
+		struct device_node *parent;
+		uint32_t reg =3D 0;
+
+		/* Get mdio parent */
+		parent =3D of_get_parent(np);
+		if (!parent)  {
+			pr_err("No parent node for phy-handle\n");
+			return PTR_ERR(parent);
+		}
+		priv->gfar_mdio =3D parent->dev->priv;
+		if (!of_property_read_u32(np, "reg", &reg))
+			priv->phyaddr =3D reg;
+	} else {
+		pr_err("Could not get phy-handle address\n");
+		return -ENOENT;
+	}
+
+	priv->tbicr =3D TSEC_TBICR_SETTINGS;
+	priv->tbiana =3D TBIANA_SETTINGS;
+
+	/* Handle to tbi node */
+	np =3D of_parse_phandle_from(dev->device_node, NULL, "tbi-handle", 0);
+	if (np) {
+		struct gfar_phy *tbiphy;
+		struct device_node *parent;
+
+		/* Get tbi address to be programmed in device */
+		if (of_property_read_u32(np, "reg", &tbiaddr)) {
+			pr_err("Failed to get tbi reg property\n");
+			return -ENOENT;
+		}
+		/* mdio is the parent  */
+		parent =3D of_get_parent(np);
+		if (!parent)  {
+			pr_err("No parent node for TBI PHY?\n");
+			return -ENOENT;
+		}
+		tbiphy =3D xzalloc(sizeof(*tbiphy));
+		tbiphy->dev =3D parent->dev;
+		tbiphy->regs =3D dev_get_mem_region(tbiphy->dev, 0);
+
+		if (IS_ERR(tbiphy->regs)) {
+			pr_err("Could not get TBI address\n");
+			free(tbiphy);
+			return PTR_ERR(tbiphy->regs);
+		}
+
+		tbiphy->miibus.read =3D gfar_miiphy_read;
+		tbiphy->miibus.write =3D gfar_miiphy_write;
+		tbiphy->miibus.priv =3D tbiphy;
+		tbiphy->miibus.parent =3D dev;
+		tbiphy->dev->priv =3D tbiphy;
+		priv->gfar_tbi =3D tbiphy;
+	}
+
+	priv->tbiaddr =3D tbiaddr;
+	out_be32(priv->regs + GFAR_TBIPA_OFFSET, priv->tbiaddr);
+
+	size =3D ((TX_BUF_CNT * sizeof(struct txbd8)) +
+		(RX_BUF_CNT * sizeof(struct rxbd8))) + BUF_ALIGN;
+	p =3D (char *)xmemalign(BUF_ALIGN, size);
+	priv->txbd =3D (struct txbd8 __iomem *)p;
+	priv->rxbd =3D (struct rxbd8 __iomem *)(p +
+			(TX_BUF_CNT * sizeof(struct txbd8)));
+
+	edev->priv =3D priv;
+	edev->init =3D gfar_init;
+	edev->open =3D gfar_open;
+	edev->halt =3D gfar_halt;
+	edev->send =3D gfar_send;
+	edev->recv =3D gfar_recv;
+	edev->get_ethaddr =3D gfar_get_ethaddr;
+	edev->set_ethaddr =3D gfar_set_ethaddr;
+	edev->parent =3D dev;
+
+	setbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
+	udelay(2);
+	clrbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
+
+	gfar_init_phy(edev);
+
+	return eth_register(edev);
+}
+#else
 /*
  * Initialize device structure. Returns success if
  * initialization succeeded.
  */
-static int gfar_probe(struct device *dev)
+static int gfar_probe(struct device_d *dev)
 {
 	struct gfar_info_struct *gfar_info =3D dev->platform_data;
 	struct eth_device *edev;
 	struct gfar_private *priv;
-	struct device *mdev;
+	struct device_d *mdev;
 	size_t size;
 	char devname[16];
 	char *p;
@@ -535,21 +678,41 @@ static int gfar_probe(struct device *dev)
=20
 	return eth_register(edev);
 }
+#endif
=20
-static struct driver gfar_eth_driver =3D {
+static const struct of_device_id gfar_ids[] =3D {
+	{ .compatible =3D "fsl,etsec2" },
+	{ .compatible =3D "gianfar" },
+};
+
+static struct driver_d gfar_eth_driver =3D {
 	.name  =3D "gfar",
+#ifdef CONFIG_OFDEVICE
+	.of_compatible =3D DRV_OF_COMPAT(gfar_ids),
+#endif
 	.probe =3D gfar_probe,
 };
 device_platform_driver(gfar_eth_driver);
=20
-static int gfar_phy_probe(struct device *dev)
+/* MII bus */
+static struct fsl_pq_mdio_data mdio_gianfar_data =3D {
+	.mdio_regs_off =3D 0x0,
+};
+
+static const struct of_device_id gfar_mdio_ids[] =3D {
+	{ .compatible =3D "gianfar", .data =3D &mdio_gianfar_data },
+};
+
+static int gfar_phy_probe(struct device_d *dev)
 {
 	struct gfar_phy *phy;
+	struct fsl_pq_mdio_data *data;
 	int ret;
=20
+	data =3D (struct fsl_pq_mdio_data *)device_get_match_data(dev);
 	phy =3D xzalloc(sizeof(*phy));
 	phy->dev =3D dev;
-	phy->regs =3D dev_get_mem_region(dev, 0);
+	phy->regs =3D dev_get_mem_region(dev, 0) + data->mdio_regs_off;
 	if (IS_ERR(phy->regs))
 		return PTR_ERR(phy->regs);
=20
@@ -567,13 +730,18 @@ static int gfar_phy_probe(struct device *dev)
 	return 0;
 }
=20
-static struct driver gfar_phy_driver =3D {
+static struct driver_d gfar_phy_driver =3D {
 	.name  =3D "gfar-mdio",
+#ifdef CONFIG_OFDEVICE
+	.of_compatible =3D DRV_OF_COMPAT(gfar_mdio_ids),
+#endif
 	.probe =3D gfar_phy_probe,
 };
 register_driver_macro(coredevice, platform, gfar_phy_driver);
=20
-static int gfar_tbiphy_probe(struct device *dev)
+#ifndef CONFIG_OFDEVICE
+
+static int gfar_tbiphy_probe(struct device_d *dev)
 {
 	struct gfar_phy *phy;
 	int ret;
@@ -597,8 +765,9 @@ static int gfar_tbiphy_probe(struct device *dev)
 	return 0;
 }
=20
-static struct driver gfar_tbiphy_driver =3D {
+static struct driver_d gfar_tbiphy_driver =3D {
 	.name  =3D "gfar-tbiphy",
 	.probe =3D gfar_tbiphy_probe,
 };
 register_driver_macro(coredevice, platform, gfar_tbiphy_driver);
+#endif
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index cea41218a7..451fa17706 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -15,7 +15,9 @@
=20
 #include <net.h>
 #include <config.h>
+#ifdef CONFIG_ARCH_MPC85XX
 #include <mach/gianfar.h>
+#endif
=20
 #define MAC_ADDR_LEN 6
=20
@@ -27,6 +29,10 @@
 #define GFAR_TBI_ANEX		0x06
 #define GFAR_TBI_TBICON		0x11
=20
+#ifndef GFAR_TBIPA_OFFSET
+#define GFAR_TBIPA_OFFSET       0x030
+#endif
+
 /* TBI MDIO register bit fields*/
 #define GFAR_TBICON_CLK_SELECT		0x0020
 #define GFAR_TBIANA_ASYMMETRIC_PAUSE	0x0100
@@ -64,7 +70,9 @@
=20
 #define ECNTRL_INIT_SETTINGS		0x00001000
 #define GFAR_ECNTRL_TBI_MODE		0x00000020
+#define ECNTRL_REDUCED_MODE		0x00000010
 #define GFAR_ECNTRL_R100		0x00000008
+#define GFAR_ECNTRL_RMM			0x00000004
 #define GFAR_ECNTRL_SGMII_MODE		0x00000002
=20
 #ifndef GFAR_TBIPA_VALUE
@@ -261,7 +269,8 @@ struct rxbd8 {
=20
 struct gfar_phy {
 	void __iomem *regs;
-	struct device *dev;
+	struct device_d *dev;
+	phy_interface_t interface;
 	struct mii_bus miibus;
 };
=20
@@ -279,8 +288,13 @@ struct gfar_private {
 	uint phyaddr;
 	uint tbicr;
 	uint tbiana;
+	uint tbiaddr;
 	uint link;
 	uint duplexity;
 	uint speed;
 };
+
+struct fsl_pq_mdio_data {
+	uint32_t mdio_regs_off;
+};
 #endif /* __GIANFAR_H */



