Delivery-date: Mon, 10 Apr 2023 17:00:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1plt0C-00GXjp-PY
	for lore@lore.pengutronix.de; Mon, 10 Apr 2023 17:00:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1plt09-0003JD-B9
	for lore@pengutronix.de; Mon, 10 Apr 2023 17:00:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jIeZOxqbK0YUlugzDg+JD6lgrD3XLDdrYUaqYAd6Woc=; b=SIg5VQQpNspYpb
	CWWIAoLRDx1ZeZ54B8yugneX44EH5fKpuJh4h4BE5gXs+LnOamRM0iZk2Sss+HRLyOi/lvX4qNthc
	+ttv2SJzoJafkr+WAHuup6GV2EG28Vy+41bu6m9WvdYa6N8nm76lUMZ17UQseGseObUNkiiIU6fBq
	mq+em5Tefbqpsyq3X+fu+nWI6vBgCcI0DIea8yMkLPIQApAej4C42yfJ6/CikWQVSTSqYS1bOuxCG
	Cr5ib4QkwTzdlskwZd2GbD+BngW5M5Ime26oguL5GXJrmLrxfmSC5Km2Osq47OnbBjcOtV/vOZpF4
	3CO8pmNoyXp+LO5GNojw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plsyF-00FPPP-36;
	Mon, 10 Apr 2023 14:58:15 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plsyC-00FPP0-2T
	for barebox@lists.infradead.org;
	Mon, 10 Apr 2023 14:58:14 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33AD2Llo005544
	for <barebox@lists.infradead.org>; Mon, 10 Apr 2023 10:58:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=jIeZOxqbK0YUlugzDg+JD6lgrD3XLDdrYUaqYAd6Woc=;
 b=G4v9NTCeRrzqP3LN7v8piKQQw5j6a0bhZvZ8PkgWqyqFk6oWxsiIjig3874dGBMpImNK
 P+9HBEOtZmJTgAG5ZtlKYIU+0PN+Jg+BBNfOH1vm4d+k7wMACmmqRYC5A/TpTO6mIAI/
 H2oto53V/5pIHlavAYX87oEYMg7sAM+zmT1TQSSf9219/WAp73PcYX6P2uciX7BAG5sf
 cQrpeiTMVKmiQ87I7MxHFJutkmySh8VkR7o0KeaSKH1IweXCndGxKBzbYnViCBOSbkrP
 n8GpEREBRnGz8Gjb5vdLIBYow1nm/XSp6nXLIGQKnw8AR3PcimZE2i4TEbxI6wW9Vhdg eQ== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2104.outbound.protection.outlook.com [104.47.55.104])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3pu23b4vfj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Mon, 10 Apr 2023 10:58:11 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLKxCsBryhWGAr4S2DGOeP99038Bp4COavTGAQWdyxYj7bCIv1Cckz+2wRr9X0IpwoTBv7hb/cHBrJz/JaZw9dTSIH52MDI7xAVtnaFAA9Iyhc4VafqN0EuWInwIzvp2aiVFwt3IoJZiK/3KLDwbXW6lc8x3u+FQBKgFRKDuszWI+JdxPegWTgpwT4wQcEIKYbUKgzcDMUkMTtCPtBlmzcTWkG1OBSlr8yTeaoBSbyMyha7375wsQJE7HKcmOiIFYCfL1QRNMfOad7xsHoHVHnFb03lqT4bisS7nwtzbGsu4NFELBo2PjkrZgz/60/zgqDEKx6A7aSORWeo9bZqgzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jIeZOxqbK0YUlugzDg+JD6lgrD3XLDdrYUaqYAd6Woc=;
 b=NLgnYnweVqlsdR5nHBBn1h6e39nBFduGnvuodxSowBe95WuA601Q4MaTFjW/E4suxgpwyFwMd2R2i0X1WZxTVR3USn6I94tx9RZi1Vvf4wguEJ/e2ll9IV4YCvmEryg6j9/y53UubF24onsV5rKB2HKyi2Ye6p8ucU1nBI4AC/xst4nAcvmpwKXfjcfiV8ntW3FpF69sAEYU51wOUH7zNKu69GZ4hO+GUkmFUCvyvh9n1UjZj5furbs4jUdYVBR2+MYxfet+LF8i0VSPHdfacl6IRbtN3u7zePumhdulvccYp8PQxxAVSVY+LbLdPcCdfBnZaoFAQqEWxKHDt82Vow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jIeZOxqbK0YUlugzDg+JD6lgrD3XLDdrYUaqYAd6Woc=;
 b=s1KwklwvMnU9DgKcgY7JGcmPeY4VuQWqkv1Ck/hmSiXOouTOe7g7DAbWnW46l9ohgvDv9DQW6eXHP56+lj9jA5rslHSdQZNbDLqg6qeUZrWSN6A4N5uAseJ9yRPFicnqD2W6m4ZKmVrfn59OdkM6hnXYX/zBqsDdljcio812BuI=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by MN2PR07MB7325.namprd07.prod.outlook.com (2603:10b6:208:1da::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.31; Mon, 10 Apr
 2023 14:58:08 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5%7]) with mapi id 15.20.6277.034; Mon, 10 Apr 2023
 14:58:08 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH] ARM: LS1021A: slow boot
Thread-Index: AdlrvHdWSdh/q1eDSrKwC2F11/CaMA==
Date: Mon, 10 Apr 2023 14:58:08 +0000
Message-ID:  <BL0PR07MB5665E8DA118845ED96A8289DEC959@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|MN2PR07MB7325:EE_
x-ms-office365-filtering-correlation-id: fc9b291c-314d-4a1a-92f4-08db39d3ff4e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  NdxNbnQnHznIhS2Td6C2em/pOkhwLSVNU0YF3U8xTYmlP2lx9ZtRjeKUNMKUceG1laZfxY7z7DFri/DNbD+9hmMYwZHOaelVbjLfUfCgg/vaMhHU/ZeOEGK20DdrWTvanoE4ACuwcMKCh/ttapesmJKnk1sJaEgIsbYnzJ5/OKuguFcuFtHXDO3dSrBW8A4KMfgqvKdZtfGyynCtK0S7mzcqhn9BYDkEjRpAnGDQOFLoCYGB6n49ht1YxvKtBLBA81RbRWuhwP8n/OGga7YJmAhYuXHzp9DIlPJCCL7tfZ3E3++VioT2O2562gA4imRz0TcN5KReG0mL3EnnWQHl2ZiD7n5ygs8nDzIFDZVmwnK+7gGAGqr5DXo4xLY42Jvk4JS9y9Bb1i/rop1bDVx0It7I3VbHeCN1uWtFRPl/4Qq0dl7dGK8zpE9f6Y1bWSNjbc0a/uJZurNIwBj6tarZ8XFyORJfD6L6rJTHCnexStHrk2CYc24gO+IiyqjQNNO+2TXWpuDIbaUuDWY17a9yYJy7udbEr9kOSyAJRR2xwge+eXHJh6SHpq741mbvjAfyqkrfSPvxrikrlvCEHBQLKmMahQkYKl1Mf85F8wPJjmnGbak6zExXJyCI2JuBch95
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(346002)(376002)(39860400002)(366004)(451199021)(122000001)(38100700002)(86362001)(33656002)(38070700005)(6506007)(8936002)(52536014)(5660300002)(478600001)(316002)(7696005)(55016003)(71200400001)(9686003)(66446008)(186003)(76116006)(6916009)(66946007)(2906002)(64756008)(41300700001)(8676002)(66476007)(66556008)(83380400001)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?v9EsBKPKzM4+Tz358L+QWPGSPBBoKbmaaSr3wpAfod9RZuZzjZQ5WAEq2177?=
 =?us-ascii?Q?Z+Edwe1fl3Mnvv0kjgPZ2qKyCyYx1aD3hLFoyw66d8JcHiLHUreijjxalpAq?=
 =?us-ascii?Q?RkUgcj5NGyLjyfw5S4a5DUdp/61vG9IGUXIlxLozelTOC0qLUHyqmCZ4WIVR?=
 =?us-ascii?Q?ceBZkGRpYI2g3MBzP4oO0UHEF5XoJWIh9Uf9EsgJHQWTPYorT0S5+AoLIu4a?=
 =?us-ascii?Q?gKq216z3r4Ek2LpI5BeRF/zqlpqQBIRw8x0HXl63tfhmNsUqzHUM88AJrfeZ?=
 =?us-ascii?Q?kneDDIivdgn0wVZR48L/F7+LIYrSxafXi8Q6ymxW5Gma0EX4nhwIi2oM7AIQ?=
 =?us-ascii?Q?o4BfbwRFwv/nGRoNcj21Hg7tb502m6lspgsgpnuO/2uXUF0Ek3VF9K2WA9Qo?=
 =?us-ascii?Q?q9eRb9aXDtXa0Xp+JmluKBD32Db8RYs1TyqRXA3s7p6pAWRBihdimbVhz/Dl?=
 =?us-ascii?Q?h5BdFnkGrMlYbR5VVpOnvLfIZdoJhK0HSgrGCnhQGNOLMDQ9htcMOy0bUk+Q?=
 =?us-ascii?Q?lF+9aXIep4W2ng+OKjEmwTqAzaNT6KPgpdk43BJWRCe4Dbqf0lp4lDPWLyXi?=
 =?us-ascii?Q?y7FRMhBUFKbj1P+9GegpfAqtJm9k0jAI4Xs6YflZ9WqV2uSQYXFFtE3Km2mT?=
 =?us-ascii?Q?IjkThydQdRnediqGoo8KdZ9ROI7VichiYk+YuHPhtRSH0EfNKH4NZts2EgfL?=
 =?us-ascii?Q?m/vX2WdRYmRalHGFWFE6Gh3GJ+6zyZU98D+JoltYJEqyGBdt+UvfdChB8V3A?=
 =?us-ascii?Q?0sROsmGYnsOVooPsG0/qRhoUhesNb+b2YMiH4YV5JphftOmqqEpOJnI74N8J?=
 =?us-ascii?Q?WPEYAL+rmYP8nmqigPP//n/uxBNm0/GSKo1eOjlqDSbqALAW/19r3XKRPH1Z?=
 =?us-ascii?Q?cdjzwXEbka8YxqlRnAgnTe451FpIAJRJu2iB+P/wNYJKByv2IOo4RMNZyrmU?=
 =?us-ascii?Q?YP3ndTO61+vp3dpvLwXF7lVvNIewBLudy26YfRM3Qsv1uE+XKdoV66oyVw2U?=
 =?us-ascii?Q?oscpzp8B33In6NL2Wv+RbPBBW3iWV3hYLyPUNA3Xh3M6RCyjsK0xf3cO9Ell?=
 =?us-ascii?Q?ZPdkwp3Ufx8LJnWNsuzz4MwExbYr2QPoK39sGxtys/ZoKlRNNmjTZWYTPiLb?=
 =?us-ascii?Q?McFoqazfnqIcFBwYM6cTdSJxs/mkf2ToVCoAC/EyJcSc4ixBEnYTVn9F0BBx?=
 =?us-ascii?Q?xJypJARy4N2gXk7OG6dpSXkAZL+3TKtXnpb27rRcWSpvlshrIuKNqg3yCjOn?=
 =?us-ascii?Q?IGvaw3Gl4frSwadZpASSYGLgB0p7pmbyGhIUM5nsF6p1g1G35bHU+y+CWBbN?=
 =?us-ascii?Q?2pgSqC1MKVKZ/a5vi05DDThVNOVDfig/z92w/8EsvpxwKf29CSdhyhrT2UWa?=
 =?us-ascii?Q?iDSdKPaWbOIiI/QuLi4IQOl35Gl9hiuarK83cLgvb7zCqgdDTsefYVeYkV4h?=
 =?us-ascii?Q?ap2W+zEjt50heAc8V5B14dJF4Hyw3DNe/xybWm5GC1ofpq2DnDpC+81u1yVF?=
 =?us-ascii?Q?IEtER/Qi5Le1MyNSbV5Z8bl8L3iCrrIp8+71NVXhS+muLzHRH2deBJBaDCy0?=
 =?us-ascii?Q?S2ssMlqAUaKRtgAtpa6BDpCzAugpQyouzRTto6aA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc9b291c-314d-4a1a-92f4-08db39d3ff4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2023 14:58:08.6963
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iAN424pWxSH/bvfWKSOKkzXbdnKkkzBBfPiVF46ofsXR6s/Q31T/uKD4U3eOSNEyggK/jmpPHUG02oQ3gPkKfOmSJl4KUVNCw5WyRCQ6qD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB7325
X-Proofpoint-GUID: Vs7fX7GGCtaPNJn1fjOCjsv7wqXf0YrM
X-Proofpoint-ORIG-GUID: Vs7fX7GGCtaPNJn1fjOCjsv7wqXf0YrM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-10_10,2023-04-06_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 mlxlogscore=912 clxscore=1015 malwarescore=0 suspectscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 mlxscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304100127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230410_075813_173994_9A3AA526 
X-CRM114-Status: GOOD (  16.54  )
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
Subject: [PATCH] ARM: LS1021A: slow boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It was noticed that the LS1021A-IOT was slow to boot and perform
computing intensive operations. Enable SMP so the cortex-a7 cache
works as expected.

Signed-off-by: Renaud Barbier mailto:renaud.barbier@ametek.com
---
 arch/arm/boards/ls1021aiot/lowlevel.c       | 1 -
 arch/arm/mach-layerscape/lowlevel-ls102xa.c | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/ls1021aiot/lowlevel.c b/arch/arm/boards/ls1021=
aiot/lowlevel.c
index 4dec451558..b7106887f2 100644
--- a/arch/arm/boards/ls1021aiot/lowlevel.c
+++ b/arch/arm/boards/ls1021aiot/lowlevel.c
@@ -86,7 +86,6 @@ static noinline __noreturn void ls1021aiot_r_entry(void)
                  __dtb_fsl_ls1021a_iot_start);
    }

-   arm_cpu_lowlevel_init();
    ls102xa_init_lowlevel();
    ls102xa_debug_ll_init();

diff --git a/arch/arm/mach-layerscape/lowlevel-ls102xa.c b/arch/arm/mach-la=
yerscape/lowlevel-ls102xa.c
index 7f4fcdf55c..259d8866d5 100644
--- a/arch/arm/mach-layerscape/lowlevel-ls102xa.c
+++ b/arch/arm/mach-layerscape/lowlevel-ls102xa.c
@@ -6,6 +6,7 @@
 #include <common.h>
 #include <io.h>
 #include <clock.h>
+#include <asm/barebox-arm-head.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
 #include <mach/layerscape/errata.h>
@@ -311,6 +312,9 @@ void ls102xa_init_lowlevel(void)
    uint32_t state, major, ctrl, freq;
    uint64_t val;

+   cortex_a7_lowlevel_init();
+   arm_cpu_lowlevel_init();
+
    init_csu();

    writel(SYS_COUNTER_CTRL_ENABLE, LSCH2_SYS_COUNTER_ADDR);
--
2.34.1


