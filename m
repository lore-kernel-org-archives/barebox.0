Delivery-date: Wed, 01 Mar 2023 18:01:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXPpL-005ms2-KR
	for lore@lore.pengutronix.de; Wed, 01 Mar 2023 18:01:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXPpL-0007xU-5j
	for lore@pengutronix.de; Wed, 01 Mar 2023 18:01:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VYgQi0l+6Ok+pQTFETUXgz4r0X0eSq8NTIOI+x4SO9o=; b=0a++Im6Pd9mdpH
	1GQqV0pni6RQ995mf721aoS4+kNsyCjrjbaHm3JolEP0Oc8ahAR10jjPMZru3aboLmnwkFT3OHq9O
	yYp6Ihs82KTfIxlJ3W3GRlIKDgs9Ndq7Yrxy3kmJTyAmpYJNCyl7pu96K33lKOoV0CdRskl8vCPjZ
	29Y86RWJKBIekOJ65n2/flP+v6hlJrGF8gHfNvj6VKLv8xY/NBYLK9EN1AC8nfA7iESd+dw1/1vmD
	K4YnSortCxbUhNr7/g9cD8f/jGGboxscKTCVhxVsfno7L5WjuBir45cdjgb4K5gN2moujYQzKf8+Q
	z7ED55AOtAQ8rnXma1Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXPnm-00GuWM-J4; Wed, 01 Mar 2023 16:59:38 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXPnh-00GuVQ-Pr
	for barebox@lists.infradead.org; Wed, 01 Mar 2023 16:59:35 +0000
Received: from pps.filterd (m0163890.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 321GkwEm018770
	for <barebox@lists.infradead.org>; Wed, 1 Mar 2023 11:59:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=VYgQi0l+6Ok+pQTFETUXgz4r0X0eSq8NTIOI+x4SO9o=;
 b=0y7F4B0zAdP182Di1eQ2LJwSdiA8sE4KZUR7UuNTA6ObfAoGfQePnUs4WCdnZp3v5Atr
 HVpyLJq7z5jRXb52k08Bv77l47QEMOa2Q0lHuL9qVhcfKltau4CjXqfCnqT+6qjkJcz1
 DWed848S1nINHUAMY9gpkNL173SUMvdSMtJz6jERXah0yvAfHnG9ZWrQbihaUrx8pqg+
 8CL6gFGx4ohLJ3M7xnyENpGu+brK4OoKbsQimr6RNZR3P2EXWj9QWK2VS3pdR/QbvKjO
 HG5aW2em2Jy/CInpWSyb+tUQyCiHD5bTeLSxbnyi2z+dAq0FVnBGTV9z+ch87KaT2D2q DQ== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3nydmmu9tb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 01 Mar 2023 11:59:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RmLIRHHDv2zQadwg1gsMnFc1BlqZvqld/gVgAoFF787n4oZDe0vszCKbu8a5tMNZviwsKS4KZ5aWc/uwgAu7pH5zqoiqmM+ApoUDFX4VuyZDZC32hM+sQF+gLwiBv/yxTvvAuqvflr7PohAhuPmNoWPlRWlkHmqcLg2GfA5FbLymv6jdjB8afPg/OSvY9vb1oapZkMPjmguWnZX2FVV5i4T89bNdp4SiGhDVpAVsBlfhXC4NCTkVyEbmWwXGTnd7nhmvTxYeB668M1ni0ICbQVyKF4apvfD0eCf20CRSt/8OOTvp3Z871N8fSIwI9jwzCCQc2avgP8qorEWYFtQ2jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VYgQi0l+6Ok+pQTFETUXgz4r0X0eSq8NTIOI+x4SO9o=;
 b=hkRs8ezQUOHLjoWSSXstazhJaDrZG6NMD2ZltDQ26/Wb5VhYpdFOA27e75IpyAuU0Ms9jrsmHJtOLTP0Mjb3e5lVpQrZjgaYVeooqCN2CKHv/mWsMeYbOc1+dR5SVn3keLCkUMgowKy+Vd09+GwFe0SFKc8F4xvG2uF7fCxIohKDOSpWujFXlPzgIbpMU9SK0P+hdpIWNAi6cxOmU55rSLpcPdQN3YWxR1bAlydaObT3+1T4rO/Xya1PyUeeteqO5sTVboJHw9lPpLz3kQMGn4agb1kaOkQMNzxVSvmAIadpM1+hyydqp5xlA020YjZUfPZ/8eVGBeDwwpViokaHTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by DM4PR07MB9888.namprd07.prod.outlook.com (2603:10b6:8:18d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Wed, 1 Mar
 2023 16:59:30 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.018; Wed, 1 Mar 2023
 16:59:30 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 1/3] ARM:lib32: add architected timer
Thread-Index: AdlMXelGirHc6OEFSQe5WNNMJQy/fg==
Date: Wed, 1 Mar 2023 16:59:30 +0000
Message-ID:  <BL0PR07MB56653CD55ED2742BBC7561CCECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|DM4PR07MB9888:EE_
x-ms-office365-filtering-correlation-id: 0fd9492a-6fb0-4fb6-32d6-08db1a7652f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  I6aAIOkV4LeaCOS1ypGhik47lOGl1QQHg/AuxZTHUwboSJ2j5Nq38+JybLuHczhOmWoKRK/csm7MfIbLEa9ioiKHXEhYvuqkypYD6ntH4igodH13XHrDGATfBh3yNG2iwfkfyZ/4kqEqb+vj1iS9g8jmmLbyPT3jLFaxgsoZGBWyjit2ND74T38LdRExRNpsO+g3NJu6NNqF+qU2UtTbqYVtQmKSoUMdT3SX6jzhdEpOe+Z3U9wlbt7gBRpflaMBB8vS8BgIAkrBJ3Y1ebJUhOjjD7SGPOXlpujXQeEnOAGNYMRSijRhFVgoRGsYBdmnxRA2s1FGuasC1wiEbKUWPaixp7mUXkmeBaFo6+4JJAN8VdWLjpR3ZkriS/RPZOZefbGqQCWD4SUHUophyWgkEpsHi8yslPbPAzLQNC+UVC3id09CnLSzCUvkqHkoriGVQwuxMkz+fcJejVLv2DFr9cZEtCWMRZcCj3EPtdqGQhnzGl6ZvHLL296LvIPLJDs09UuZTRaPMw50Fsv7ZO2r3u15HvKehDrDIhVf6e/zzEGbmTmOnJKBKtgRx9/QoaHbAK6gzrvODgzzX1mBDtd7ErkSGatZlpTQQwrdw/5BZEftvrbdfbM5HQBcsvoTsh7FzAcMa/NvabHfIm5JdSX2Q1Ste6kZJd4wl6WJZjNlS+LlUGjt+nLu2CZVoeddVWqXZK636qCZh3AZI+ib9TUysBZypGpY0NjhmAvMc4roL8MN6xes0H6Nn5BrSgz/zn/Z
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199018)(5660300002)(38070700005)(7696005)(38100700002)(478600001)(122000001)(71200400001)(41300700001)(186003)(9686003)(52536014)(8936002)(6506007)(26005)(316002)(86362001)(55016003)(64756008)(66446008)(66946007)(8676002)(66556008)(66476007)(33656002)(6916009)(76116006)(83380400001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?4A8ltUDE4A2XFY1fHX6H40EwGz9dhJy+yWThdxvAuy4M7UqTSYPCgARo2yBH?=
 =?us-ascii?Q?EPWvu1xTJoJ2Ldg0jLXdP0LVpm/jdKhhrnC5kN03Eas79NZ+COHJ30ECYTMF?=
 =?us-ascii?Q?gt7hVdSCm3wngcINiXVQvIwdZdlSArb7cEmrLZFcbl3Z59pDhr/tYrq/xZp+?=
 =?us-ascii?Q?Ig5NgBYTxl9lJ/CsSwZo36K3zVOQ+A9fxf+dKV5BEEabwrBqIKQxrOoWz5kp?=
 =?us-ascii?Q?vsaMXQFpl0DeH5TFkLEowgx0b577KTyDR7Ur8TCvQYL3zPYhb+T2cgcgfrJJ?=
 =?us-ascii?Q?IRRkl0eROAbDcjZ1ic2YxjTCoiflKf987H704/QHeW3gV5FX6dGYQu4a2zS9?=
 =?us-ascii?Q?koB5VZ5v0Ey5MS2eXXQ2lNvdYb2CYiknDRrUcz5yZexlcIaepKeta5SvssTp?=
 =?us-ascii?Q?tDUzILRaALlDIODQQKCs3H8E4LuixpZCdp+WlX+F9yCVb902uJB9NSlEWGaA?=
 =?us-ascii?Q?8ttyPRoeJc1AvCWiubBp/g1Q0s8lgSZYwWohw341/oj8BYFyPrdO1ktk1N4d?=
 =?us-ascii?Q?jY36w5UgcfOrB9OKeLypYi7wTVhf4J4S3G2HbJq3K0Cfty6JvEkka6IwqXAX?=
 =?us-ascii?Q?vObmUwqNcuDVgM8wMDjg02zH8/XieFUIt8QMXyW9SHpJwy5CaieBCg7u9k29?=
 =?us-ascii?Q?nKs+vfl01fHoUtxMxqL+eVjVOqwOUJEbj4LRiwKY8va0EXgmQpYN6a30XuDI?=
 =?us-ascii?Q?O4Mgt0Qmj4bu/FvPfsk0cAm3jQX4EHW6vPXJXjMnveL13Bur9WNNiN7W1uz3?=
 =?us-ascii?Q?aVk0wI7TWP9lKZV7lmggbnJBzPnXuP7qOkx+0HflKVQCGKuRNZRdimOJ17ID?=
 =?us-ascii?Q?yb7hD0LTpP5yA05+jw8+YeiF7LTCOLpQi6HluwFoGdXMVIHfjTlwKtP+vX4F?=
 =?us-ascii?Q?WjMJBRohYJLJw5ojYMaRlvC7rnx3hFzhlvSbjUVdo5Hi+5P4G+jTOdPQdh9s?=
 =?us-ascii?Q?vApztyBV2eCj9SOufsx7b0uRk7nyN7VkkPzOPoRXmhQZKzAlgH/LjGq/d7tF?=
 =?us-ascii?Q?P5bMCurm5VrIY8ch2inuI5wa+el9bADhHrwl2uAtU5x1fuXBNk1/TvWAZmJT?=
 =?us-ascii?Q?GcLulzLdrJ/bJ23/7aTTHuvCUgIjhPl7j4U0Z1Q1mhMwukiszJC032mGlQs5?=
 =?us-ascii?Q?f/BPEH0d3Ohp0gzE28259dLY0PpP9mFlwnuA3gOOTH266yHwA9lcqKB7hUri?=
 =?us-ascii?Q?AvZ4X/Rghr6FocC0p6YkDMfr8nghJYdl0BOSHtT07wrGjFgpKEQw95+MttV2?=
 =?us-ascii?Q?J/OVRRjQVCUZKFD4+2kdn2YcBCDg7NGYghKOZ02Ka53L73eU7c2Y4/KSGeZZ?=
 =?us-ascii?Q?Qi4QMfzxqVOgLbJll201oYcZM7KR96nSK2smuayzewmU31mc2CzM4VKPJpir?=
 =?us-ascii?Q?J2Xfi6EQbqbUVyPbDGkk6Kldg1T8ynrBkJRD7QodzWJEfJG/7EpL3iA6xqMD?=
 =?us-ascii?Q?iyfsxGWMB30eDkjn9GSWNAJrTxKFN7gXDV/OcPhKIYh1iudQiGEe0fGtopfc?=
 =?us-ascii?Q?AxOt2nUaBqUK+shy5wzr5CslEip7E7pFVxP54kE61CinbvwUqddR2+VB/hVN?=
 =?us-ascii?Q?chqKYtQErF7TUWW0/HE35XqZMJJoUP6DVxP3B3qajSAH3iVSQ8Mu0dmYZ67g?=
 =?us-ascii?Q?hw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fd9492a-6fb0-4fb6-32d6-08db1a7652f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2023 16:59:30.2877
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /tCItSXAd6NDV3VJ0BPT5Wlfuv2S263erTdJHRJF3RY9FjFgyGYgYBHMmE0YnfSKpwLP6z7v++RA2lh6WO34Q9zwzYlCwp2QsL/wsXjmSpE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR07MB9888
X-Proofpoint-GUID: 9u7r3vVyDbG35_yA3lYYZjOEgEjKVHsr
X-Proofpoint-ORIG-GUID: 9u7r3vVyDbG35_yA3lYYZjOEgEjKVHsr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-01_13,2023-03-01_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1011
 mlxscore=0 malwarescore=0 suspectscore=0 mlxlogscore=780
 priorityscore=1501 phishscore=0 impostorscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303010140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_085933_996302_97466B81 
X-CRM114-Status: GOOD (  21.12  )
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
Subject: Subject: [PATCH 1/3] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Subject: [PATCH 1/3] ARM:lib32: add architected timer

In preparation for the introduction of the LS1021A support,
add a specific timer support based on the LS1046A support so
that delays can be used in the PBL.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/arm/lib32/Makefile |  1 +
 arch/arm/lib32/pbl.c    | 17 +++++++++++++++++
 include/clock.h         |  2 ++
 3 files changed, 20 insertions(+)
 create mode 100644 arch/arm/lib32/pbl.c

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
index 0000000000..83b49656cb
--- /dev/null
+++ b/arch/arm/lib32/pbl.c
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



