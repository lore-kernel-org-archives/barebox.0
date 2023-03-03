Delivery-date: Fri, 03 Mar 2023 18:07:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY8s0-007lE3-Fu
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 18:07:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY8s0-0004dr-07
	for lore@pengutronix.de; Fri, 03 Mar 2023 18:07:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DYFXTfrtw2d9RNa5mVuqnc/Z2fLOP1cjcBrjG5CrhqQ=; b=vL5sqzcoOGQQ5P
	+Fg2AoioO20QYoLl3TumELhqmkh32wWYbU3GnSlFz4jw5P+FJzd3YFxEBXsLb2+eMn0ppuClOt7za
	kc5N/Q6jBtmLxZc/YLGJ/JQypZI32gb+jz/zGgCJrD67XapF+Z7CddIoh3NoH7EOZGlmfj2B9SRVQ
	oZmGWRAxO91Wu4atxc5kFcDLf+mrW7cxhPdCWGkxhAuoqpJ5NKDMo1bFAFh64ae3CUz/aVNvL5p2y
	f8LppAdKVn2+eF7M9eVkEz8+4vnFd+JCTS5fRmJfJgGPl+j5CSDd1jecaBqIczXIk+yhEk4MbVxua
	8Vef7Wpig24hWAGiJnTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY8qQ-006rVd-GI; Fri, 03 Mar 2023 17:05:22 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY8qK-006rV5-Vs
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 17:05:18 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 323GBRk5030572
	for <barebox@lists.infradead.org>; Fri, 3 Mar 2023 12:05:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=DYFXTfrtw2d9RNa5mVuqnc/Z2fLOP1cjcBrjG5CrhqQ=;
 b=f0OM4bEGte2oGBetiE1sp4c8MxO80YKhHCvLg6RONigPT9d2SDZWQB/YVDc2L/crsreT
 FgqSUrzCP6V1qod8mLJhKJ3nqaZUudX/nk63eggFRqCtC+t1XCeapqwCazEvQ637d/AG
 nYG6HoU6H/6w8Tv1kXh7wHGQjs3dqxMf3S+4KgmWyDQh370Og0HcbnP5AKxQCkYaWs57
 0GsudSfSk9XCmhSUozN0BWJ8hbotD/ppHTrfUwiB7Nu5MhGlgJnFx7PLJ628oCpTDihj
 pvK0XQXPJ8ESqIM8wt0WtUvNAu9Fr6VlI76imcqCaEEg2C8z4Z4kd5wWa8BLSxzAwqfi rA== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2102.outbound.protection.outlook.com [104.47.58.102])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3nyft1sx7a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Fri, 03 Mar 2023 12:05:15 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NPPBgPlC3v+tXw59thFPN61uIrEKj1xzHBgwiiKomOW4Vm8Zl62HojL0hzWW6cliAKoLMXjK5uchspVtZ+LSJTXCcycIQwukQWR+Dn99BEeZVxIwr0m1ppvCqMPyMQ2Dj74OVaSVLuqn/kfUp/PneGl0buGU4l3FfOcAb28QmmxdNXuhZMf+bEuM74eJxyiuJOBKeBaMHwIRGs4mf9FEJR+j+qwNAe2VrKDjQmGm99GKLl3An5NBntOAXy6sEsU/RvRjlKP2t8Qp0NXoSQ0DKlSvz+uUhOaOR/NTcMBRHdXw2yKmIWv3T89xjkKDPaWN1lZW5uIb9x38XpbDiBm+kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DYFXTfrtw2d9RNa5mVuqnc/Z2fLOP1cjcBrjG5CrhqQ=;
 b=F5/O2vgBFEbfNBh/dmBcPfr2llg0uHDhSikrzUuvjurV27oBIJE2Bu5li42LsKLfYpbYE7cHLId+9mEZXD2+spUo2qnK1rs5sOABo5x4yeIInwNz98raIPQ+HgYxUES76dU+Ifq0nrJ8Rqwa9DnPGv+EcTqbwHsNd1OqMEJ/Hok1jgN/nNzUi3ZCb24B4JtMDHMHL7Y8Y/lD7fWdx801C52atKw4OBnMopad5Qut/t1WfARpCMhM00yTbzlH1FoKN8s8nvMdj7XGu7tJ9+RzWg0zE0O91ljetNK63ywFuKvIRictZD/p7/V3td5eyV7aaMTqvK4unuM1Rnzno4Jj1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DYFXTfrtw2d9RNa5mVuqnc/Z2fLOP1cjcBrjG5CrhqQ=;
 b=pQUu66G/Sf8ZaZRt8Elm2SWTloL6ETba86wbWTlrvnl2fi7fY6iM9hqpqj7yjFHUvBqOTdVBDYI5oIXpCoLqzrXyAiyh9nXbBRTo8KgdAR7VLNFGsa5zumHSU2oDJsI7kcGxIXhyyI412auwGS3OlL/r54+6In0dNEYBmMEW35Y=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BY5PR07MB6578.namprd07.prod.outlook.com (2603:10b6:a03:1a6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Fri, 3 Mar
 2023 17:05:13 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.019; Fri, 3 Mar 2023
 17:05:13 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 1/1] ARM:lib32: add architected timer
Thread-Index: AdlN8jkS1lxZ9ul5SViai9HEBQQHEw==
Date: Fri, 3 Mar 2023 17:05:13 +0000
Message-ID:  <BL0PR07MB566575E744709713CB99A86DECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BY5PR07MB6578:EE_
x-ms-office365-filtering-correlation-id: 21f3c3a8-b4cc-4ac6-f1eb-08db1c097415
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  rR/KVPQtf9SN5Lsmw/VshPyYWGC54K1EzJXJaRTFo0RvOPLvHcB2SRNwAXKWDGSRJaU8P9bSF8Jn/z5+IBtckNCjpxHqsipVvr1Z7IeaVnKjO9PBBPES5Vr+CgqsrrGYl3sIGsWg94wuGJOspwknFvqtwSHUXHagpsabWkHVvYWZnPL2q1wK4XEwImG+SjbszWYekLZsCbO07hba8L+ux/yDCg7d6I90COex06QKGW21xhs0LhzgY/54Sc2do4SlrRnq4HDCXtZ6j6jSkZMHPrm5Z9pkmEHP5pT/7W9uTVaWASAoBweX3QrK8QAFhcJ5b+9bdhJVMOrzcFXRYIS6a+cMjJxy7Qs7RTCNjT8Ghe8YMfeXB7JS9nZqgpRPjKagmKH9oYWB8ZfokZTI8LDPgjOkURqjrYHpJ7HIWw4G9tFLHvzNUN7l64e2Sefo/e4X84iwgV8wvqodU/I31zJ+l1YM/Cm90MYmuZMjUNoCw47QmfG0lMIDA2nfl0RIgogtrQWtrLtgB6D+UpWeIy+QJLx9DoYySUeh6r31YgZi+gG3H7vNTEOgh22Pg/CMPH5Y9RSxK/gNucUF+aDJpLwF3ttKC7zWIkhaFHppQVO7eqnrpNBHt//ktnwBrcZGbrfPDYIB3oEyKjf6N6QpjmZ4WV91JAcKzX6E4eFFAKtAFoNAupMO3aswKru6qnC80u9SROEM7zpujCBRtdAb/Z67gg==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(366004)(346002)(396003)(136003)(376002)(451199018)(33656002)(71200400001)(55016003)(8936002)(6506007)(9686003)(26005)(186003)(122000001)(478600001)(7696005)(38100700002)(5660300002)(2906002)(83380400001)(64756008)(52536014)(316002)(41300700001)(86362001)(8676002)(66556008)(76116006)(6916009)(66946007)(66476007)(66446008)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?z2c5d5N0VOPzK10p5xzmRDNkJxCK2JIqNnr7QNk7Rs2k81VOEbFPKTE9obzL?=
 =?us-ascii?Q?hELvUOTnWQic8M7fvP/iTmXdjM68RrwvGqZiLbV0LoGRLh5gBrjVtlfnTHkC?=
 =?us-ascii?Q?ERhzvDghXBFyoFXYf8mR2e8VjSyIvpuWFkD8sz+SvvXQ01C/ADHxOs2COrbV?=
 =?us-ascii?Q?qpw9x2U1t4zrOwLW7xDE+WUOqntQVQMhdB52bRf4+CtGydkSzIgRBqV5+hnD?=
 =?us-ascii?Q?necI1b37cSJbbNx3et5KIS3UDYuURUw/ZqFF828bL/5126NwY/fTJA2jPow1?=
 =?us-ascii?Q?kQiVTdWdxOG68wao3NNM9yFP+06P3C/q4394+UkshJo/Uoh/i3wOoAuklmDS?=
 =?us-ascii?Q?Dupub85oWXj7UmH5MuNmMmi/ALvTLyLK2fmc9YW3oMdwQOQNic1mNfsD/8Sm?=
 =?us-ascii?Q?kzAUvMU0NxWz3/Ww/q9oWBWo55uj9ANBWFix7EqKPbFC9nAa9X4usHl2BeNV?=
 =?us-ascii?Q?/S6QKrAWtevATIFx0x0MmcTNsNwlivg3E/hb2HnWrGMmsz+XlpBSg+Z2W9tn?=
 =?us-ascii?Q?VCKqFJ23fGMSwFni6l1XXssbjsP6OH2834ir/qaBnPd9/xXAEWFz8UG4o2nN?=
 =?us-ascii?Q?4lPG9CoC/ABnwRX7cRPJyG5JAX/vIIvFVBNhiUU5j16GdWo36Cu7pkk3e7aS?=
 =?us-ascii?Q?55j0skFLB/lYz1Nuglw5/jnvJwtCp5LJr1lLQQlqZCIDIkHw1A7O1ckGXSdl?=
 =?us-ascii?Q?3G0sKCDK4QQyZuSCyiN4Pr2CvV7+ExNefx/ibK0epwVu38C0A73HpspXilDY?=
 =?us-ascii?Q?Sux1zkILJASRjfWKeBf7IjWK4jTg9bGnJaQporu55AzdY4bWllAYFZRLaybL?=
 =?us-ascii?Q?ujtnXjeIQ3aaGHyFKjzXFvFbDDDWWILZ2zIlZrus0Yl768m4SwjBFFyEveYA?=
 =?us-ascii?Q?dguhRr199sI7q86BciSk1B2IwoyrAWuV6diZUrr5w16j7KNuSWBTBJqSd+qz?=
 =?us-ascii?Q?N+41c3RVh3ZbDtaNwX/6twZ7T2WJ3iCVVzYMDcTSOb1+e4uJlkVxjLasCYpO?=
 =?us-ascii?Q?jX92UxPNFslCdOCE8QIambA9SMhcjQ4NdKjy8RifDJy4EaHWX0O6tQgM8geo?=
 =?us-ascii?Q?IsFDx5xof+zsbar2nB3ml5Y9GW8synd0XETdzEuf+j9y0IwKnJqlsOVHYExv?=
 =?us-ascii?Q?TUIuROTQ2/wIGlMU2r9jx5L0jZmwdwStjHmWjLuKO2hsVIj2gpQqthCNnKiy?=
 =?us-ascii?Q?uBWFer4JMUC614UKR3XLuR64cvT+8CoK/OKOffVJx/PR4wWNSQZ8yUalHOSU?=
 =?us-ascii?Q?5kIKF48o9UHo4xTBfD/g39KrNe1FobvHBREN1SXF70cQ6jM3LQ8DQKgU2ilr?=
 =?us-ascii?Q?KEvRSsDEN/CCgPBbKG9gJ61J+1IP2jy+t/V2MexYzReKELXw7qrOZh0abxpX?=
 =?us-ascii?Q?HqzRPiOqSyCcaW9aW4wAXuPuHqq4+pgy0YNc3oclcpkt8iuV2ylhWYQuY205?=
 =?us-ascii?Q?/ydrSf7gA+QSR8qINCy3SinjTodtJD2ciOIMARVaLYbhvjCBV11Hbsal1AkE?=
 =?us-ascii?Q?gWl1uIJxH1MCigESUCwdRfGiFg2KGyxdu1bswPmC4hQRfQmYErK0CvnXR8kh?=
 =?us-ascii?Q?OUZkwUU2rZPTnbzEpSLeU9cAJPydDtcSjedLGV6KjDtbYF51Fn4fGZbv8B1D?=
 =?us-ascii?Q?8Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21f3c3a8-b4cc-4ac6-f1eb-08db1c097415
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2023 17:05:13.0467
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jHhgH2NN8aP6Usb754+QbloVeoRD+8+deIJo8VbCZ91Gto+9s8J0SWoEWl1UvY93LOn4kP32e01BMW/VLDPdEODbjMZ/EjcZmaGbojgcJu4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR07MB6578
X-Proofpoint-GUID: vESiO_AZu3m8T1XPfDyoPLUu4iAZKNdU
X-Proofpoint-ORIG-GUID: vESiO_AZu3m8T1XPfDyoPLUu4iAZKNdU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-03_03,2023-03-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0 adultscore=0
 clxscore=1015 mlxlogscore=909 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303030148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_090517_183535_8FF9D710 
X-CRM114-Status: GOOD (  19.51  )
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
index 0000000000..83b49656cb
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
+	ticks =3D us * cntfrq + 999999;
+	do_div(ticks, 1000000);
+
+	while ((long)(start + ticks - get_cntpct()) > 0);
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


