Delivery-date: Tue, 07 Mar 2023 17:19:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZa1l-00CV3e-IO
	for lore@lore.pengutronix.de; Tue, 07 Mar 2023 17:19:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZa1k-0004Fj-Ik
	for lore@pengutronix.de; Tue, 07 Mar 2023 17:19:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qTKvs70L0Nam2WSfIICrasvvxxYLx3wB2g0+hBFBYH0=; b=19dGXJ+VEyyAH6
	kH23cEyfadcccA7StiHRBVk0O3wdr7ULMTqj2pRsajWtegK09TTDsgie8VU946hQ2MGoyWBB40BNi
	VAK1d4ryiyAKGMQEoZdMV5fwEgX1YaCJRyqPvifcEoHrkCfSQDUJ+Ies6OSraoYZPiDbndruShFcH
	TY4tRtWj97oMWbr/h5K00qRI8v6iltdfBUhqTvwuIvR+rwWmRtIlSDLHCZJP16NyZqpfizLNv7R0G
	AIfuBg3oDr3onoaHlF7nkhpzT2szCPpVhobHaZ8ul/Q0IXBtQJwVoMXSjd+Y1gx1ah7EqKSd+e+0E
	wdgMSE7kcIpGkQTkGJBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZa08-001TAP-0j; Tue, 07 Mar 2023 16:17:20 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZa00-001T8O-UC
	for barebox@lists.infradead.org; Tue, 07 Mar 2023 16:17:16 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 327E8F5L018944
	for <barebox@lists.infradead.org>; Tue, 7 Mar 2023 11:17:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=qTKvs70L0Nam2WSfIICrasvvxxYLx3wB2g0+hBFBYH0=;
 b=ZIjSrjOdyk5rjImB68hAq01bwjudPQIb/1vcGvrMabApBzCFXtUn7mJlDJXc5J2KFz52
 8nhK06g1qn0zaMnEb9Ivq7JelYky8jdoO0TAO0/vLW8ZeY94TzrQMLZ4Nk8m7sbWQHIu
 9pGmuncV/Hn6Fjzseo9gdNqYvr4GttCmRng+9TuKb83cPf4S/qR0JafIKTFl16TJwGs3
 SeRTt2IF5/pL3gM/DFvrYoVBKn1Rw0nFpiOzB7yO9Og5xLzhps4hele2zxd+pSzupMO9
 WncVkuHu5Idva/PeKuAzR78WJLe+Ws2yNmw7ufEwEfFCEtT/NaphleyOzqFtTaWGIq8U LQ== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3p4150rbc4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Tue, 07 Mar 2023 11:17:10 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GUQdjUSDsqWsD1p2X2pHsfHgFL+26pqlj8xPGqO1tqYX8gbGErDwJxRt9gC2eO0wnfDKmncJ+8dtIirqwpthI5ntbjqZVboV6z1LlZiJdbxlfHIamFTpxqJ7WVU3VDi2wmSWn8IoOmcbuKKbafNgdoRySu2RTvTBXkvoqlBdyKUwu6LHd+GbT/FNJFETmmfSLcxExPFqzYc+9Z8OorJ/e18DXAmCu6OnVz63BDK1RQXuEnJg1rl5l6eItOfP7yh6qPa6emzP0uZ2qyd7+fcwKH9Eyd6wwC5SLorxLd6wpMNkqEzvvHPmxdTXelkEpLesK31zMg9TzZyzPy5/ia0lkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qTKvs70L0Nam2WSfIICrasvvxxYLx3wB2g0+hBFBYH0=;
 b=fw4G0DCYzI/a4U6alYWjznYw5cF9RVbRy3oYNWoqZQ4jSkW9TMiEfLtBXg+8NS7YrIVAKxwQfGu2zpz6DRCsojy3FBLPmceoRgaNsseL2Jy2OYQL5Fw6ahdRXw4mxBTQZFss5SJHkm+1EVEkHuAeecLVfXMF1UTrl4Bnm7oxiOaDriiYC4+NM/XucI7YjW36Sq3ulAgyWKU32gHiYMfcftd1j/u7vFgKKWM6zCYd2TOKfpsN0NwCA0D0XG0kyk3RN4K6QUEjASq1U0DTPZtWJ9leV7IO5O/+O7uoZtFJwCauL/J5ATd6MOspyCksgAUwI//ShJi6I7SSSeiMWvaCKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qTKvs70L0Nam2WSfIICrasvvxxYLx3wB2g0+hBFBYH0=;
 b=WTVzrwQn/DxOqCWTBgnGAcnGvFvjeUAeIGsnrugtc7lTq39gtSjyTOQt1Eo41u0BCpoul8ED2enKaBhgnBwQ32iibOIC2vNem4OXuQYQvwcFEIHnwLNVbpFhFdYj6QOrNOyPduopdW/YZFIojPjAFUzroz/zrfH2Ij4t16zGbzQ=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BN6PR07MB2740.namprd07.prod.outlook.com (2603:10b6:404:3f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Tue, 7 Mar
 2023 16:17:08 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.029; Tue, 7 Mar 2023
 16:17:08 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 1/1] ARM:lib32: add architected timer
Thread-Index: AdlRD/aJXiOGpwOPTq+f4qO/mtDBhw==
Date: Tue, 7 Mar 2023 16:17:08 +0000
Message-ID:  <BL0PR07MB566565603B9BFC2D40141142ECB79@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BN6PR07MB2740:EE_
x-ms-office365-filtering-correlation-id: 1a7dbb0b-8dea-4463-dd8c-08db1f276697
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  +YF4cjjRennIpEvfPey1d0KouW62GyuHw/IAEvGoo03R4jXI1CyL5eMDrba5/XcVOuxgWCKVdSeoEc516UNt8FJ7DoYdw5jrnLEQAB+ndaqyz+A8x0ARypNGcRnIvk71nJHzqUjmRMBpME+1EO7bNAeb+l3iF4k/7OGx0yNNR6Vl2quidzHgsYQtoE3FxxpWOnw0QpauGexMTSWA9KegfMNCa/oJC8rayvh6XpAAt3xhxBRxOu0VBWfxgWArDzdrYxj149opZgdYFfEH4tMNY7A7GKDZT7Jw2rG6yc/nHLkOcoxZeaWuCVJiowi8oBbQ4kQv16L3hBahgYRlZ9Mkb98CdXc5W21Vb17gvaWOVZjcaJI6Q1iclc9nVtrqePZ+vbHeWL6SpMQB1hzCeTa27u8sJ9/acDyD4r5C/+YPBJQFNZYpAkLSysWMkCGWbr8t/ZttKIbJFjv+7Mq7YDjUsWwVUNrX3wPN5kCNrN/BaS01VnNtteyfQnnODVswahUf1siaDvQJPjmfQMx7JFcffHu52YdUsAT/771sHFcjKGF8BwrEqzwRzGtudKiHoVLHugY0WcW9ilacEeQt6pQbLfmDVq3S8/bjPFvy80stoyQFVSY5+JxktUVy4v5LunLTLsiTf6/spDdb7r/R7A1iIMJfKXRdUL8dSM9JByiwN/Kk4ONTQTAvlyJodTFforksEpuDAfiOJN2EgOfubRNglw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(346002)(136003)(39860400002)(366004)(376002)(451199018)(7696005)(71200400001)(6506007)(478600001)(38100700002)(66476007)(66446008)(64756008)(316002)(76116006)(66556008)(9686003)(66946007)(186003)(26005)(6916009)(83380400001)(8676002)(52536014)(8936002)(5660300002)(41300700001)(122000001)(2906002)(38070700005)(55016003)(86362001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?fsijWwT1bSrfrBcmCtopm+IIK9TRXd+OaaGXmb67jNa2Nd+nGn7k2MrJNBj1?=
 =?us-ascii?Q?hzjCvIHl/6yiJsan8zmHE+f9CwELADEg66wh8i2R7A2D/bnlRwQh4bbVetR+?=
 =?us-ascii?Q?c6SxXr4t6aVd7bz6Tjjp4tyHs0whA5UKHdCqPvb2Z9XgQjnR2wdVAWxA+F9W?=
 =?us-ascii?Q?b3btvCBA6hsFABVyNPCR6pzRQ4QrpbCUoQ7V2NiqbPvP6XsjyHxGzSPDBGMY?=
 =?us-ascii?Q?yUmOfVhsxVgt6pfpaBi2xEX8rUEvvL/LxFFjMNbDsxtwAWFKGIWlBvNTlVM9?=
 =?us-ascii?Q?K2D6g0gF5w/i/fFZP9S1XfW5VFvk39Dz4KbnezpGzbETlzGVXN0HHgSDgltc?=
 =?us-ascii?Q?wA+yaJXOpSQedqVUKSHmSsRSZBSW84z4+0kPAUSY7Hw+XXd5NIhH7DE8F27j?=
 =?us-ascii?Q?2FmxmGCCm78MbfphfVfIfN7i0xMyKa0S5znxyyNg299yhHOSEsGHmVHcL9R7?=
 =?us-ascii?Q?IVTxy8MpMRLW3RJrRQHmbOYeEAKKfUhLQ6JCjixvdWMFQsZM3q+b69qsgPSf?=
 =?us-ascii?Q?pG9v/vE513fv7R49ZBxCjkjfNtQRWm8ozvd2YyagANqgEb2B85xHXhRR8OU0?=
 =?us-ascii?Q?vY0b8X5PTeK6ZQNF0fWUZAKE8b8m//6KDXW7Hyo6aKjbc52S2l83nC/R3SwR?=
 =?us-ascii?Q?XSOTlSm/o09cdcNpxGW3lfK37iatXwPkknMNO58pWhitnrOVPRuZwXYVfpMd?=
 =?us-ascii?Q?cLT+KfVOxcQ/iqj6tnUUCO4CvfXxRi5LRE5b3VY/U/hBNy+y65QQ0jYb6DeA?=
 =?us-ascii?Q?+FCnmWRIVcjzSyXP2eF9guPUw99OQxYE2TdfdYkDobkYWDTQmYSkSR+JlWZa?=
 =?us-ascii?Q?zHCpHnSNe1TlSrkEoVQzj5yBI/C/mrIQLIHpw+Ar5TREMp3ROuTMRL7xWLxt?=
 =?us-ascii?Q?HloFt9mntdR9kRpOF9r2lcCK7KtyBGrbpKecIpX1PpNszpfFWvop6DhXsqrG?=
 =?us-ascii?Q?YVk0Hljm7z2SEPPJbqLBbCX4fBsm4UfNWiapv2luIqyN2nRN249/ildYMa7F?=
 =?us-ascii?Q?KW3Bw8i070AiqKwjoBf/idKk/6veIp6u4NAzrH5TPOFi3Pcw7QGTFYONxrPX?=
 =?us-ascii?Q?44Q8q9Q/AFsWMrfF3OuxUjkB114V6/6r33af6UQF0ElICIR5dRJQygvWuF8x?=
 =?us-ascii?Q?FaqXmkquqyzbff5x+R9pFUnD8PwFd3+n+fpvJMuE/ia0CbcNTKER3TUyJqLi?=
 =?us-ascii?Q?agJ7jSg03vcVKIaBS6j/rOUVLI7AMU3uyG6aRO2clLVaIj/r8nyYAiIQUbf9?=
 =?us-ascii?Q?/c6jZmSfCGiwBNAKknAi4O/MP0Qv6ioe6Ab6AKXDugpahHlHY8FP3eoLFcU3?=
 =?us-ascii?Q?iI1EqBUJW4jZ5+j+luIx03YeDh47ODr9ozGqnFydpvlT/m75DbS/9493xOLu?=
 =?us-ascii?Q?zKYM1pV0PW2AQD3+hcCq9310zWZ2l6RPZaxngLB1WEC4XpL6VQGNbAOJao/h?=
 =?us-ascii?Q?8GqKnvFufchxDExMvVQEbJI+jjIs6M2XMLsXJpRFRaneqwc/LYk+hCjToGn7?=
 =?us-ascii?Q?e4jHOTZ+ttcZcOkpXgrheXmtRLU9S7MSVF6sEqwcpuwvf75y8Oz0ebZT5Qdh?=
 =?us-ascii?Q?qU6eHsO+fmTzwaCNfOBcCfcFSdDW7h0YDcqnllY9ll3ORTSSb10PcMsnW9Em?=
 =?us-ascii?Q?mg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a7dbb0b-8dea-4463-dd8c-08db1f276697
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2023 16:17:08.8002
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DGTi9/0iMC1yRbUCdrVZCz8M2QSxhYjbzgDpMQNc5FK5ndOoLs/7gGPMCdRPcVHCB+fFCMcb9YFYjWcunpI+f3vFalDqhyAsJ9BJMUzfy1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR07MB2740
X-Proofpoint-ORIG-GUID: -PNOtvsjOAnYGr9eu94mpbxn_s8Totsa
X-Proofpoint-GUID: -PNOtvsjOAnYGr9eu94mpbxn_s8Totsa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-07_11,2023-03-07_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=912 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 mlxscore=0 clxscore=1015
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303070146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_081713_110299_EE89A25F 
X-CRM114-Status: GOOD (  20.44  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Subject: [PATCH 1/1] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In preparation for the introduction of the LS1021A support,
add a specific timer support based on the LS1046A support so
that delays can be used in the PBL.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/arm/lib32/Makefile                |  2 ++
 arch/arm/lib32/arm_architected_timer.c | 17 +++++++++++++++++
 include/clock.h                        |  2 ++
 3 files changed, 21 insertions(+)
 create mode 100644 arch/arm/lib32/arm_architected_timer.c

diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index 82507fffc0..d54fb7644c 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -31,6 +31,8 @@ extra-y +=3D barebox.lds
 pbl-y	+=3D lib1funcs.o
 pbl-y	+=3D ashldi3.o
 pbl-y	+=3D div0.o
+pbl-$(CONFIG_CPU_32v7)	+=3D arm_architected_timer.o
+CFLAGS_arm_architected_timer.o :=3D -march=3Darmv7-a
=20
 obj-pbl-y	+=3D setjmp.o
=20
diff --git a/arch/arm/lib32/arm_architected_timer.c b/arch/arm/lib32/arm_ar=
chitected_timer.c
new file mode 100644
index 0000000000..54eca13f8b
--- /dev/null
+++ b/arch/arm/lib32/arm_architected_timer.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <asm/system.h>
+#include <clock.h>
+#include <common.h>
+
+/* Unlike the ARMv8, the timer is not generic to ARM32 */
+void arm_architected_timer_udelay(unsigned long us)
+{
+	unsigned long long ticks, cntfrq =3D get_cntfrq();
+	unsigned long long start =3D get_cntpct();
+
+	ticks =3D DIV_ROUND_DOWN_ULL((us * cntfrq), 1000000);
+
+	while ((long)(start + ticks - get_cntpct()) > 0)
+		;
+}
diff --git a/include/clock.h b/include/clock.h
index e6197e7eb0..8e07c35d37 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -35,6 +35,8 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_=
constant);
 int is_timeout(uint64_t start_ns, uint64_t time_offset_ns);
 int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_n=
s);
=20
+void arm_architected_timer_udelay(unsigned long us);
+
 void ndelay(unsigned long nsecs);
 void udelay(unsigned long usecs);
 void mdelay(unsigned long msecs);
--=20
2.27.0


