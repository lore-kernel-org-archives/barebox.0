Delivery-date: Wed, 08 Feb 2023 14:28:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkUt-000bB5-Jd
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 14:28:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkUo-0001Ax-Al
	for lore@pengutronix.de; Wed, 08 Feb 2023 14:28:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QMyQDlISBo4L0lOORWr/FQt7O4Zuqd0elq82dktaBRc=; b=4a7vWR1pJ/QG/T
	t/eU/5DjpVKvT4tCfZRqnYf1yyrFtjcrnCdUjwYxg2wVi6WAYEnENIF8HPBczL1Gu6ZaB9pwOaYuv
	g+vixB3NQyhPdlSOl5+yhNKwmjjO2MXJSc8K6j606opUpOzsrmEz+Z8TiA1wG6SL2cMZ+C+RF3hOt
	cvlYjbq6SFXfONRClETUfXUBDy5MqG5YCKITdlwf5EXcZDDXsy9pZib1Zrpzoes1K2OyXE/6/y55/
	aD3GEbtwGS88w6P1Y/3qkqk7mJtZ5Pe6u65xwbQF3xEfcvo+r7WZKqH+jCZftM/n54GaZnhhA4DgB
	WGgymeEBeD4zL8Wwt2bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkT9-00FjcI-Mr; Wed, 08 Feb 2023 13:26:39 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkT0-00Fjak-IU
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 13:26:36 +0000
Received: from pps.filterd (m0163891.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3188ku48004243
	for <barebox@lists.infradead.org>; Wed, 8 Feb 2023 08:26:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=QMyQDlISBo4L0lOORWr/FQt7O4Zuqd0elq82dktaBRc=;
 b=WzUUrT9L5apyz+XscOcZVJ9CrTKbOYeMn3gBMQIdTijIzKkSzVPkupYcHL2CsYp3S8Re
 rUxaMsCMyi6m7rdAOiXu5MXdbQKZuPqMhtnsMHfX7aOo9O6WvKgOnfI0/QKAZrVixSkW
 Q49y223GuLEzgQpL8GdHfeBsNovQf4Y8nPCcvRhKl4Uwwu780Olh35LkL+SzCC+nBBnM
 6DxraN7lk1+0A702qAs+hYuZVXZnbZhO8XdNS6IP1z18wlIp8IcsM0K5czBDEkOSrmiP
 4pY/QyAzFwBrrYE9iOttBrgryQQe/cA2+l2dkL1441LfA22CfZa3xcDTQvJ6Oz0Ul8pz Mw== 
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2040.outbound.protection.outlook.com [104.47.56.40])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3nhk45jkbg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 08 Feb 2023 08:26:29 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I69rEJDv010y5qR1KCJkCGH2WzTVtQcnsZ5eFY9Wwhd6En829eIYQlAzYeOEkoDqspQZXy6jUpycZJC6BKiFEAp71d73jK2BbZUR47EaTgGcIkz61bbU/B7SrR264CdMRAlhxg9/P3YJOtZVyTIytFq1ysa+vcQzyAbYujSDZlpmIIzOjVoQMBxekX/OS2Xl0tBJpHuYjkLvjJmzjlTwo+zuQEb7TJOSJ/3tm5iiYaF53gfK/cvakzg8cJZ3QGb+KU0ktX+vDGwZmzZpt9Mq0jzxTIIxia7zrj1iyDaIW14NW8eBuKGWOBbncL7Qr5QtduhkL6EqqF34ObTeFnb8MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QMyQDlISBo4L0lOORWr/FQt7O4Zuqd0elq82dktaBRc=;
 b=H6iEUApxkv2v7MWfmaoPMib3FJHfxCGvj3JAQQ4AmZe1Nd4E+aObd8zSV4X3zj2SWhRHrNeqCNwN+yQnAFclaAof73YsdgKLvUoTMlMoaB1naFMId7WCN0DEiiNoXQaxz7hXUq04tTA/S2vvkYBnEtQfrgd5oIXL2ktuCSh+GA9WxkqBRGPeQLvomL84UXAKAx/7OqBdWWSmNLaztvHvDX40cPJDY/Q6WM+sXtfl0ehTqID/WQWLJSm7eziGiTLyvec9WJlakwpkJ25Azs1lmn9waVVc8xAk8efDKGLTxr/WrNmEMWUtXIEBW6GOQAj1vdJnz/K6PspMG1gI2qR/oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QMyQDlISBo4L0lOORWr/FQt7O4Zuqd0elq82dktaBRc=;
 b=imbKzbV10cZBaoBxnZpq5Nozv1kIAnQJqI/NGQwzcMslYUhaohoUndesIxVhudMzvSpvM11UW/iijVGjw4TH9dmrygv5A25ZOgYjx6F5byELIEvVu33hIs+s4EaJMZ5kOakdjtWPTzVeyM/rx3eiFUrpprgG6FB9AkoMzvceq/I=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BN6PR07MB3475.namprd07.prod.outlook.com (2603:10b6:405:64::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Wed, 8 Feb
 2023 13:26:25 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%4]) with mapi id 15.20.6064.027; Wed, 8 Feb 2023
 13:26:25 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 1/2] ARM: Add Layerscape v7 support
Thread-Index: Adk7wErJg44hzrdOT5GRRs13fq6jXw==
Date: Wed, 8 Feb 2023 13:26:25 +0000
Message-ID:  <BL0PR07MB5665819F86371B87366646E2ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BN6PR07MB3475:EE_
x-ms-office365-filtering-correlation-id: a844576f-be20-4a24-d699-08db09d81426
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  v3Rb19M883rNCyrMJjVwFW6hkV+y30Yfq/a4V+QqPXUvXX/JM5Z+K2vOBFkDEKvv8Q1bCFhc/+Dz6QMW+pgGMoNM/wqRY3jg+ECI4BX2WQ6hNp1KOkhCCOB/NJcKqbCxxHVb3cAJ2byDXPuYxLsC+HPsxDWLKodiDIQSmt0zE9OQ59NwTX6gLAaWFLer7oNF/JJ2HPfiF72sddhjn93PnjzSaI/JGihn2sJo9/Hviu7b/aQ68vXCsHTuVd8yZs+fhVVmdQCLMkT9PNYMkxtB0yLEmut+Rd12Px7f2vr74APmGgfQEBrFk7k4W76Otte5ONlmrlz2Vs6SYtzQ0hW4bnQdFmONK1NgNvudx8doV7Zhleh8qTpy2H60mgiS5fXmtDseEM0QYtdUwIjRP/XVqsZOTMP8CDsoQGDpxNZR5Cr1mz2GTumNwRLs4fzROzyKGUEyn7JUnJa+8pHnV9Grbr12VhEp1a3vX9k+ShM4/qqouAZAVys3BWZUWxTcawqEncMsn7JE42n8bAzSQn1V/d9lryfjr0JGPoNPBB+u8DOZ8xD7K8QJidjFzB1TgJyLpaPaPs1ImSmAYg4scpeaFfQ5C9Zp9FyYSGFW1flIfPbrfcDEjr3tC73tDbKR446KXpU9kiLbQkV73QXC4m9BlxYv1pSkrHYyIDaM/7J4fS4VZrD44HdUtZK3Upcdt/J5hpnIIBN+XJGdfvqMASIUXIRY/JUz9hgFC1IIhZDLGXg=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(39860400002)(376002)(396003)(136003)(366004)(451199018)(33656002)(83380400001)(316002)(6506007)(478600001)(7696005)(186003)(26005)(9686003)(71200400001)(5660300002)(8936002)(52536014)(2906002)(86362001)(30864003)(76116006)(55016003)(38070700005)(66556008)(66946007)(6916009)(8676002)(64756008)(66446008)(66476007)(122000001)(41300700001)(38100700002)(579004)(559001)(414714003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?Y+0+8ec8iy+LfaYI5xX0nMgKLEzHQdBf9gA0Or5xcHlsye38doTGWKoByg4b?=
 =?us-ascii?Q?SdR/XrLqSFzG00lyAvRB/vBTIwifqg1DybuEyshr+gzV0toqkbdmI03KFjzm?=
 =?us-ascii?Q?UNSuu/Unog/nHLHSf6DSHWsNQywFgmXh7OkubP8mGiU2aoYL9XKzwoH9qyOh?=
 =?us-ascii?Q?6iLlqjXcLUcnzm2mUxyX4RixCt+aYhmKfbXN+/FYS51pG7ICkxOyqwBiNyyM?=
 =?us-ascii?Q?eM1WFX+Xs1Ev++Y5YHstzqwgKWu8/MdgXFRDoWsKQkmK0LCpNQ2z3Uc6fAch?=
 =?us-ascii?Q?riA1B0D17cY2VPHsmY/BGeLdm8RVTrZj1AlRi0HYWE39/qzt+SIAzWyBeLkk?=
 =?us-ascii?Q?miCfHoSwEkYVSHY5z/P3rw/YaJxbJxaio5OuaoqU/NJH6nfKY0r1OvOboiaP?=
 =?us-ascii?Q?0WbvU7IdzjCVRfpBy/1dkoZzWSvjGfHOSPwkGDEaK41xnya7HkPjzLEYoT5r?=
 =?us-ascii?Q?uNGZLTdRHBt8rVL8I/YEj1YNvJYUBtJTkf9IFEoCgETn0HCez4bKGCXrnYzH?=
 =?us-ascii?Q?P30jz7Cu2mA0YH0zDBVpq+IjjasODuveZMAcphMBbALn1nHKyTu/tDwN6pbi?=
 =?us-ascii?Q?4PfkrdVSfulNCMF0WyYp6yn54zJ1UlKCtvDuVgNLPy8pLZj8TixdzCmcg74N?=
 =?us-ascii?Q?cxHuuoNCXRRpvcV/TSBQ5/xTn/6leHFhkJNvHCwvHzXwevjGKDrJC6sUBw4j?=
 =?us-ascii?Q?QJaeFbnfrS04D1jkH7A0bSwLlxaOmK62CoH1wD2jWF0wVDwqgIEdj9wkt6DU?=
 =?us-ascii?Q?cP5kF01dEnZoNLPXqQ6uQQZ6x4FXQOOdW/Fz61cD14Fwij6Ri8IcGE40FC5i?=
 =?us-ascii?Q?yB8dlwgX4FaHb0OOq844QOiSgny1QpMBGcTxukreo6m/RM4FA/eMkizoFRv+?=
 =?us-ascii?Q?2OqJ0iSlsXf1LHg5YbtG/Hl+sUklwJ61S5TXBHnOdgeIyibWwTSJDZrN4WAb?=
 =?us-ascii?Q?uAubiM8XPxbtNA8DNR68CrJilOipGg1zmVC8k/ywbqHLdpRRtWG3bKevuBpL?=
 =?us-ascii?Q?bIkvhrT8PEKUMC60SeXMo75DVCySAQaLBfpRshP1VdW3NAvB8vsFWDWTN5/X?=
 =?us-ascii?Q?C8ywXXDy4EKpSTMFwFPno5YsqyuWobrrb2ziyaENZT9ukXrEmbREIWebGt/D?=
 =?us-ascii?Q?4U86mWi+xmyBEAsF0XVTsG9mHeTBHFit0BLt5832GSh6H8U37RSsXiRYXMJF?=
 =?us-ascii?Q?Q4USP0yIP4jRHGEN931Sjn9KuDbAAwXDE399XD61p5JzaQKmueHA8zpZDVOi?=
 =?us-ascii?Q?bZKCjN2CAyafsNN/1J9bUunn9kQqTwHxZB3P/8P7NR6W43Acmambm+Q3nacL?=
 =?us-ascii?Q?qzoUfexYE9mSZNoL6Fy92qX+rmGgP/bsPernyUi4PbPI+sJpr654mc6uNLN/?=
 =?us-ascii?Q?bur+sHCrYvy9FguQPIsoGq0P+HNQrWT3wnELhtuFSOytUwXr7Zrgg/w+m2np?=
 =?us-ascii?Q?CFfJ9Iq+1wSUms2CnOLfQ1gVRW5dty1R+8pwuiPXryaP92BupEX0ckOxjppV?=
 =?us-ascii?Q?/MD8Q0d/+uTXCCy+MZG9pDWTp90/RfjgrAw1pHOFm4vkKNGrABQZBKzgx6KJ?=
 =?us-ascii?Q?SwEyWSPQbQKvtjnb5A7z4pJct/UbDSCvowd2S3fX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a844576f-be20-4a24-d699-08db09d81426
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2023 13:26:25.8420
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lKBLM+oJRroo94W54CRExJWef0KebZu2AoZDeY+j9ggYv8OsXCpyr/9rsyDEbuooIkdBMc1kR+IumOh/uawLXS62dJXP1KULJ7zXNKkK7bI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR07MB3475
X-Proofpoint-GUID: t-p6S-Ki0XtgejpRQaL4U90V2JxPCYSK
X-Proofpoint-ORIG-GUID: t-p6S-Ki0XtgejpRQaL4U90V2JxPCYSK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-08_05,2023-02-08_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 phishscore=0
 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302080119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_052630_842140_29B82F2B 
X-CRM114-Status: GOOD (  23.37  )
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
Subject: [PATCH 1/2] ARM: Add Layerscape v7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds basic Layerscape v7 support in preparation for the
introduction of the LS1021a support:

    - Makefile/Kconfig
    - Register maps
    - errata workarounds

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 arch/arm/Kconfig                              |  12 +
 arch/arm/Makefile                             |   1 +
 arch/arm/dts/Makefile                         |   1 +
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
 images/Makefile.layerscape                    |   9 +
 include/soc/fsl/immap_ls102xa.h               | 408 ++++++++++++++++++
 scripts/Kconfig                               |   4 +-
 27 files changed, 1354 insertions(+), 5 deletions(-)
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

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 759b29ee77..1ddcb4c856 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -116,6 +116,17 @@ config ARCH_LAYERSCAPE
 	select OFTREE
 	select OFDEVICE
=20
+config ARCH_LS102XA
+	bool "NXP LS102XA based"
+	select GPIOLIB
+	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
+	select COMMON_CLK_OF_PROVIDER
+	select OFTREE
+	select OFDEVICE
+
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
 	select COMMON_CLK
@@ -304,6 +315,7 @@ source "arch/arm/mach-digic/Kconfig"
 source "arch/arm/mach-ep93xx/Kconfig"
 source "arch/arm/mach-imx/Kconfig"
 source "arch/arm/mach-layerscape/Kconfig"
+source "arch/arm/mach-ls102xa/Kconfig"
 source "arch/arm/mach-mxs/Kconfig"
 source "arch/arm/mach-mvebu/Kconfig"
 source "arch/arm/mach-nomadik/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 124a3fc40c..dffbfaaddf 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -93,6 +93,7 @@ machine-$(CONFIG_ARCH_DIGIC)		:=3D digic
 machine-$(CONFIG_ARCH_EP93XX)		:=3D ep93xx
 machine-$(CONFIG_ARCH_IMX)		:=3D imx
 machine-$(CONFIG_ARCH_LAYERSCAPE)	:=3D layerscape
+machine-$(CONFIG_ARCH_LS102XA)		:=3D ls102xa
 machine-$(CONFIG_ARCH_MXS)		:=3D mxs
 machine-$(CONFIG_ARCH_MVEBU)		:=3D mvebu
 machine-$(CONFIG_ARCH_NOMADIK)		:=3D nomadik
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
diff --git a/arch/arm/mach-ls102xa/Kconfig b/arch/arm/mach-ls102xa/Kconfig
new file mode 100644
index 0000000000..4030a9f14e
--- /dev/null
+++ b/arch/arm/mach-ls102xa/Kconfig
@@ -0,0 +1,22 @@
+if ARCH_LS102XA
+
+config ARCH_TEXT_BASE
+    hex
+	default 0x40000000 if MACH_LS1021AIOT
+
+config ARCH_LS1021
+	select CPU_V7
+	bool
+
+config MACH_LS1021AIOT
+	bool "LS1021AIOT Board"
+	select ARCH_LS1021
+	select DDR_FSL
+	select DDR_FSL_DDR3
+	select SNOR
+
+endif
+
+
+
+
diff --git a/arch/arm/mach-ls102xa/Makefile b/arch/arm/mach-ls102xa/Makefil=
e
new file mode 100644
index 0000000000..e31eb64864
--- /dev/null
+++ b/arch/arm/mach-ls102xa/Makefile
@@ -0,0 +1,9 @@
+obj- :=3D __dummy__.o
+lwl-y +=3D errata.o
+lwl-$(CONFIG_ARCH_LS1021) +=3D lowlevel-ls102xa.o
+obj-y +=3D ls102xa_stream_id.o
+obj-pbl-y +=3D boot.o
+pbl-y +=3D xload-qspi.o xload.o
+obj-$(CONFIG_BOOTM) +=3D pblimage.o
+obj-$(CONFIG_ARCH_LS1021) +=3D restart.o
+obj-y +=3D ls102xa_stream_id.o
diff --git a/arch/arm/mach-ls102xa/boot.c b/arch/arm/mach-ls102xa/boot.c
new file mode 100644
index 0000000000..df20e70fca
--- /dev/null
+++ b/arch/arm/mach-ls102xa/boot.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <init.h>
+#include <bootsource.h>
+#include <mach/layerscape.h>
+#include <soc/fsl/immap_ls102xa.h>
+
+enum bootsource ls1021_bootsource_get(void)
+{
+	void __iomem *dcfg =3D IOMEM(LS102XA_DCFG_ADDR);
+	uint32_t rcw_src;
+
+	rcw_src =3D in_be32(dcfg) >> 23;
+
+	if (rcw_src =3D=3D 0x40)
+		return BOOTSOURCE_MMC;
+	if ((rcw_src & 0x1fe) =3D=3D 0x44)
+		return BOOTSOURCE_SPI_NOR;
+	if ((rcw_src & 0x1f0) =3D=3D 0x10)
+		/* 8bit NOR Flash */
+		return BOOTSOURCE_NOR;
+	if ((rcw_src & 0x1f0) =3D=3D 0x20)
+		/* 16bit NOR Flash */
+		return BOOTSOURCE_NOR;
+
+	return BOOTSOURCE_UNKNOWN;
+}
+
+static int ls1021a_bootsource_init(void)
+{
+	if (!of_machine_is_compatible("fsl,ls1021a"))
+		return 0;
+
+	bootsource_set_raw(ls1021_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNOWN);
+
+	return 0;
+}
+coredevice_initcall(ls1021a_bootsource_init);
diff --git a/arch/arm/mach-ls102xa/errata.c b/arch/arm/mach-ls102xa/errata.=
c
new file mode 100644
index 0000000000..a7a6ebc636
--- /dev/null
+++ b/arch/arm/mach-ls102xa/errata.c
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Derived from Freescale LSDK-19.09-update-311219
+ */
+#include <common.h>
+#include <io.h>
+#include <soc/fsl/immap_ls102xa.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <asm/system.h>
+#include <mach/errata.h>
+#include <mach/lowlevel.h>
+
+#define scfg_clrsetbits32(addr, clear, set) clrsetbits_be32(addr, clear, s=
et)
+#define scfg_clrbits32(addr, clear) clrbits_be32(addr, clear)
+
+static inline void set_usb_pcstxswingfull(u32 __iomem *scfg, u32 offset)
+{
+	scfg_clrsetbits32(scfg + offset / 4,
+			0x7f << 9,
+			SCFG_USB_PCSTXSWINGFULL << 9);
+}
+
+static void erratum_a008997_ls102xa(void)
+{
+	u32 __iomem *scfg =3D (u32 __iomem *)LS102XA_SCFG_ADDR;
+
+	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR);
+}
+
+#define PROGRAM_USB_PHY_RX_OVRD_IN_HI(phy)      \
+	do { \
+		out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_1);  \
+		out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_2);  \
+		out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_3);  \
+		out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_4);  \
+	} while (0)
+
+static void erratum_a009007_ls102xa(void)
+{
+	void __iomem *usb_phy =3D (void __iomem *)SCFG_USB_PHY3;
+
+	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
+}
+
+static inline void set_usb_txvreftune(u32 __iomem *scfg, u32 offset)
+{
+	scfg_clrsetbits32(scfg + offset / 4, 0xf << 6, SCFG_USB_TXVREFTUNE << 6);
+}
+
+static void erratum_a009008_ls102xa(void)
+{
+	u32 __iomem *scfg =3D IOMEM(LS102XA_SCFG_ADDR);
+
+	set_usb_txvreftune(scfg, SCFG_USB3PRM1CR);
+	set_usb_txvreftune(scfg, SCFG_USB3PRM2CR);
+}
+
+static inline void set_usb_sqrxtune(u32 __iomem *scfg, u32 offset)
+{
+	scfg_clrbits32(scfg + offset / 4, SCFG_USB_SQRXTUNE_MASK << 23);
+}
+
+static void erratum_a009798_ls102xa(void)
+{
+	u32 __iomem *scfg =3D IOMEM(LS102XA_SCFG_ADDR);
+
+	set_usb_sqrxtune(scfg, SCFG_USB3PRM1CR);
+}
+
+static void erratum_a008850_early(void)
+{
+	/* part 1 of 2 */
+	struct ccsr_cci400 __iomem *cci =3D IOMEM(LS102XA_CCI400_ADDR);
+	struct ccsr_ddr __iomem *ddr =3D IOMEM(LS102XA_DDR_ADDR);
+
+	/* disables propagation of barrier transactions to DDRC from CCI400 */
+	out_le32(&cci->ctrl_ord, CCI400_CTRLORD_TERM_BARRIER);
+
+	/* disable the re-ordering in DDRC */
+	ddr_out32(&ddr->eor, DDR_EOR_RD_REOD_DIS | DDR_EOR_WD_REOD_DIS);
+}
+
+void ls102xa_errata(void)
+{
+	erratum_a008850_early();
+	erratum_a009008_ls102xa();
+	erratum_a009798_ls102xa();
+	erratum_a008997_ls102xa();
+	erratum_a009007_ls102xa();
+}
+
+static void erratum_a008850_post(void)
+{
+	/* part 2 of 2 */
+	struct ccsr_cci400 __iomem *cci =3D IOMEM(LS102XA_CCI400_ADDR);
+	struct ccsr_ddr __iomem *ddr =3D IOMEM(LS102XA_DDR_ADDR);
+	u32 tmp;
+
+	/* enable propagation of barrier transactions to DDRC from CCI400 */
+	out_le32(&cci->ctrl_ord, CCI400_CTRLORD_EN_BARRIER);
+
+	/* enable the re-ordering in DDRC */
+	tmp =3D ddr_in32(&ddr->eor);
+	tmp &=3D ~(DDR_EOR_RD_REOD_DIS | DDR_EOR_WD_REOD_DIS);
+	ddr_out32(&ddr->eor, tmp);
+}
+
+void ls102xa_errata_post_ddr(void)
+{
+	erratum_a008850_post();
+}
diff --git a/arch/arm/mach-ls102xa/include/mach/debug_ll.h b/arch/arm/mach-=
ls102xa/include/mach/debug_ll.h
new file mode 100644
index 0000000000..e6300b09ee
--- /dev/null
+++ b/arch/arm/mach-ls102xa/include/mach/debug_ll.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
+#define __INCLUDE_ARCH_DEBUG_LL_H__
+
+#include <io.h>
+#include <soc/fsl/immap_ls102xa.h>
+
+#define __LS_UART_BASE(num)	LS102XA_NS16550_COM##num
+#define LS_UART_BASE(num) __LS_UART_BASE(num)
+
+static inline uint8_t debug_ll_read_reg(int reg)
+{
+	void __iomem *base =3D IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PO=
RT));
+
+	return readb(base + reg);
+}
+
+static inline void debug_ll_write_reg(int reg, uint8_t val)
+{
+	void __iomem *base =3D IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PO=
RT));
+
+	writeb(val, base + reg);
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void debug_ll_init(void)
+{
+	uint16_t divisor;
+
+	divisor =3D debug_ll_ns16550_calc_divisor(150000000);
+	debug_ll_ns16550_init(divisor);
+}
+
+#endif /* __INCLUDE_ARCH_DEBUG_LL_H__ */
diff --git a/arch/arm/mach-ls102xa/include/mach/errata.h b/arch/arm/mach-ls=
102xa/include/mach/errata.h
new file mode 100644
index 0000000000..2448a46b23
--- /dev/null
+++ b/arch/arm/mach-ls102xa/include/mach/errata.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_ERRATA_H
+#define __MACH_ERRATA_H
+
+void ls102xa_errata(void);
+void ls102xa_errata_post_ddr(void);
+
+#endif /* __MACH_ERRATA_H */
diff --git a/arch/arm/mach-ls102xa/include/mach/fsl_epu.h b/arch/arm/mach-l=
s102xa/include/mach/fsl_epu.h
new file mode 100644
index 0000000000..2c5a8317c4
--- /dev/null
+++ b/arch/arm/mach-ls102xa/include/mach/fsl_epu.h
@@ -0,0 +1,73 @@
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
+struct fsm_reg_vals {
+	u32 offset;
+	u32 value;
+};
+
+
+#endif
diff --git a/arch/arm/mach-ls102xa/include/mach/layerscape.h b/arch/arm/mac=
h-ls102xa/include/mach/layerscape.h
new file mode 100644
index 0000000000..b362aeed0f
--- /dev/null
+++ b/arch/arm/mach-ls102xa/include/mach/layerscape.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_LAYERSCAPE_H
+#define __MACH_LAYERSCAPE_H
+
+#define LS1021A_DDR_SDRAM_BASE	0x80000000
+#define LS1021A_DDR_FREQ	1600000000
+
+enum bootsource ls1021_bootsource_get(void);
+
+#endif /* __MACH_LAYERSCAPE_H */
diff --git a/arch/arm/mach-ls102xa/include/mach/lowlevel.h b/arch/arm/mach-=
ls102xa/include/mach/lowlevel.h
new file mode 100644
index 0000000000..291645613b
--- /dev/null
+++ b/arch/arm/mach-ls102xa/include/mach/lowlevel.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_LOWLEVEL_H
+#define __MACH_LOWLEVEL_H
+
+void ls102xa_init_lowlevel(void);
+
+#endif /* __MACH_LOWLEVEL_H */
diff --git a/arch/arm/mach-ls102xa/include/mach/xload.h b/arch/arm/mach-ls1=
02xa/include/mach/xload.h
new file mode 100644
index 0000000000..5487bd4f6b
--- /dev/null
+++ b/arch/arm/mach-ls102xa/include/mach/xload.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_XLOAD_H
+#define __MACH_XLOAD_H
+
+int ls1021a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned=
 long r2);
+int ls1021a_qspi_start_image(unsigned long r0, unsigned long r1,
+					     unsigned long r2);
+int ls1021a_nor_start_image(unsigned long r0, unsigned long r1,
+					     unsigned long r2);
+int ls1021a_xload_start_image(unsigned long r0, unsigned long r1,
+			      unsigned long r2);
+
+#endif /* __MACH_XLOAD_H */
diff --git a/arch/arm/mach-ls102xa/lowlevel-ls102xa.c b/arch/arm/mach-ls102=
xa/lowlevel-ls102xa.c
new file mode 100644
index 0000000000..e624584954
--- /dev/null
+++ b/arch/arm/mach-ls102xa/lowlevel-ls102xa.c
@@ -0,0 +1,378 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Derived from Freescale LSDK-19.09-update-311219
+ */
+#include <common.h>
+#include <io.h>
+#include <asm/syscounter.h>
+#include <asm/system.h>
+#include <mach/errata.h>
+#include <mach/lowlevel.h>
+#include <mach/fsl_epu.h>
+#include <soc/fsl/immap_ls102xa.h>
+#include <soc/fsl/fsl_immap.h>
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
+	u32 *base =3D IOMEM(LS102XA_CSU_ADDR);
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
+	struct ccsr_cci400 __iomem *cci =3D IOMEM(LS102XA_CCI400_ADDR);
+	struct ccsr_scfg *scfg =3D IOMEM(LS102XA_SCFG_ADDR);
+	struct ccsr_gur __iomem *gur =3D IOMEM(LS102XA_GUTS_ADDR);
+	void *rcpm2_base =3D IOMEM(DCSR_RCPM2_ADDR);
+	void *epu_base =3D IOMEM(DCSR_EPU_ADDR);
+	uint32_t state, major, ctrl, freq;
+	uint64_t val;
+
+	init_csu();
+
+	writel(SYS_COUNTER_CTRL_ENABLE, LS102XA_SYS_COUNTER_ADDR);
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
+	ls102xa_errata();
+}
diff --git a/arch/arm/mach-ls102xa/ls102xa_stream_id.c b/arch/arm/mach-ls10=
2xa/ls102xa_stream_id.c
new file mode 100644
index 0000000000..1c30ec458f
--- /dev/null
+++ b/arch/arm/mach-ls102xa/ls102xa_stream_id.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2014 Freescale Semiconductor
+ */
+
+#include <common.h>
+#include <asm/io.h>
+#include "ls102xa_stream_id.h"
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
+	void *scfg =3D (void *)LS102XA_SCFG_ADDR;
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
+	ls102xa_config_smmu_stream_id(dev_stream_id, ARRAY_SIZE(dev_stream_id));
+
+	return 0;
+}
+mmu_initcall(ls102xa_smmu_stream_id_init);
diff --git a/arch/arm/mach-ls102xa/ls102xa_stream_id.h b/arch/arm/mach-ls10=
2xa/ls102xa_stream_id.h
new file mode 100644
index 0000000000..10b1c95ac2
--- /dev/null
+++ b/arch/arm/mach-ls102xa/ls102xa_stream_id.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2014 Freescale Semiconductor, Inc.
+ */
+
+#ifndef __FSL_LS102XA_STREAM_ID_H_
+#define __FSL_LS102XA_STREAM_ID_H_
+
+#include <soc/fsl/immap_ls102xa.h>
+
+struct smmu_stream_id {
+	uint16_t offset;
+	uint16_t stream_id;
+	char dev_name[32];
+};
+
+#endif
diff --git a/arch/arm/mach-ls102xa/pblimage.c b/arch/arm/mach-ls102xa/pblim=
age.c
new file mode 100644
index 0000000000..07ebb05433
--- /dev/null
+++ b/arch/arm/mach-ls102xa/pblimage.c
@@ -0,0 +1,60 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#define pr_fmt(fmt) "pblimage: " fmt
+
+#include <bootm.h>
+#include <common.h>
+#include <init.h>
+#include <memory.h>
+#include <linux/sizes.h>
+
+#define BAREBOX_STAGE2_OFFSET	SZ_128K
+
+static int do_bootm_layerscape_pblimage(struct image_data *data)
+{
+	void (*barebox)(unsigned long x0, unsigned long x1, unsigned long x2,
+		       unsigned long x3);
+	resource_size_t start, end;
+	int ret;
+
+	ret =3D memory_bank_first_find_space(&start, &end);
+	if (ret)
+		return ret;
+
+	ret =3D bootm_load_os(data, start);
+	if (ret)
+		return ret;
+
+	barebox =3D (void *)start + BAREBOX_STAGE2_OFFSET;
+
+	if (data->verbose)
+		printf("Loaded barebox image to 0x%08lx\n",
+		       (unsigned long)barebox);
+
+	shutdown_barebox();
+
+	barebox(0, 0, 0, 0);
+
+	return -EIO;
+}
+
+static struct image_handler image_handler_layerscape_pbl_image =3D {
+	.name =3D "Layerscape image",
+	.bootm =3D do_bootm_layerscape_pblimage,
+	.filetype =3D filetype_layerscape_image,
+};
+
+static struct image_handler image_handler_layerscape_qspi_pbl_image =3D {
+	.name =3D "Layerscape QSPI image",
+	.bootm =3D do_bootm_layerscape_pblimage,
+	.filetype =3D filetype_layerscape_qspi_image,
+};
+
+static int layerscape_register_pbl_image_handler(void)
+{
+	register_image_handler(&image_handler_layerscape_pbl_image);
+	register_image_handler(&image_handler_layerscape_qspi_pbl_image);
+
+	return 0;
+}
+late_initcall(layerscape_register_pbl_image_handler);
diff --git a/arch/arm/mach-ls102xa/restart.c b/arch/arm/mach-ls102xa/restar=
t.c
new file mode 100644
index 0000000000..81974366f8
--- /dev/null
+++ b/arch/arm/mach-ls102xa/restart.c
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <init.h>
+#include <restart.h>
+#include <asm/io.h>
+#include <soc/fsl/immap_ls102xa.h>
+#include <soc/fsl/fsl_immap.h>
+
+static void ls102xa_restart(struct restart_handler *rst)
+{
+	void __iomem *rcr =3D IOMEM(LS102XA_RST_ADDR);
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
+	restart_handler_register_fn("soc-reset", ls102xa_restart);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-ls102xa/xload-qspi.c b/arch/arm/mach-ls102xa/xlo=
ad-qspi.c
new file mode 100644
index 0000000000..5b25498d0c
--- /dev/null
+++ b/arch/arm/mach-ls102xa/xload-qspi.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <soc/fsl/immap_ls102xa.h>
+#include <asm-generic/sections.h>
+#include <asm/cache.h>
+#include <mach/xload.h>
+#include <mach/layerscape.h>
+
+#define BAREBOX_START	(128 * 1024)
+
+int ls1021a_qspi_start_image(unsigned long r0, unsigned long r1,
+					     unsigned long r2)
+{
+	void *qspi_reg_base =3D IOMEM(LS102XA_QSPI0_BASE_ADDR);
+	void *membase =3D (void *)LS1021A_DDR_SDRAM_BASE;
+	void *qspi_mem_base =3D IOMEM(0x40000000);
+	void (*barebox)(unsigned long, unsigned long, unsigned long) =3D membase;
+
+	/* Switch controller into little endian mode */
+	out_be32(qspi_reg_base, 0x000f400c);
+
+	memcpy(membase, qspi_mem_base + BAREBOX_START, barebox_image_size);
+
+	sync_caches_for_execution();
+
+	printf("Starting barebox: 0x%p\n", barebox);
+
+	barebox(r0, r1, r2);
+
+	printf("failed\n");
+
+	return -EIO;
+}
diff --git a/arch/arm/mach-ls102xa/xload.c b/arch/arm/mach-ls102xa/xload.c
new file mode 100644
index 0000000000..7d16dc8ff2
--- /dev/null
+++ b/arch/arm/mach-ls102xa/xload.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <bootsource.h>
+#include <mach/layerscape.h>
+#include <mach/xload.h>
+
+int ls1021a_xload_start_image(unsigned long r0, unsigned long r1,
+			      unsigned long r2)
+{
+	enum bootsource src;
+
+	src =3D ls1021_bootsource_get();
+
+	switch (src) {
+	case BOOTSOURCE_SPI_NOR:
+		return ls1021a_qspi_start_image(r0, r1, r2);
+	default:
+		pr_err("Unknown bootsource\n");
+		return -EINVAL;
+	}
+}
diff --git a/common/Kconfig b/common/Kconfig
index 9e175d36c4..f379f8393a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1546,7 +1546,7 @@ config DEBUG_SOCFPGA_UART_CLOCK
=20
 config DEBUG_LAYERSCAPE_UART_PORT
 	int "Layerscape UART port selection"
-	depends on ARCH_LAYERSCAPE
+	depends on ARCH_LAYERSCAPE || ARCH_LS102XA
 	default 1
 	help
 	  Select the UART port number used for early debugging here. Port
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index baf452de98..f4aff49112 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -21,6 +21,7 @@ obj-$(CONFIG_ARCH_STM32MP)	+=3D clk-stm32mp1.o
 obj-$(CONFIG_MACH_VEXPRESS)	+=3D vexpress/
 obj-$(CONFIG_MACH_MIPS_LOONGSON)+=3D loongson/
 obj-$(CONFIG_ARCH_LAYERSCAPE)	+=3D clk-qoric.o
+obj-$(CONFIG_ARCH_LS102XA)	+=3D clk-qoric.o
 obj-y				+=3D analogbits/
 obj-$(CONFIG_CLK_SIFIVE)	+=3D sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+=3D starfive/
diff --git a/drivers/ddr/fsl/Kconfig b/drivers/ddr/fsl/Kconfig
index 48f553b0c4..45d02d5851 100644
--- a/drivers/ddr/fsl/Kconfig
+++ b/drivers/ddr/fsl/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DDR_FSL
 	bool "Freescale DDR support"
-	depends on ARCH_LAYERSCAPE
+	depends on ARCH_LAYERSCAPE || ARCH_LS102XA
=20
 if DDR_FSL
=20
diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 766aa5edfa..56b16a18a1 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -23,7 +23,7 @@ config I2C_BCM283X
=20
 config I2C_IMX
 	bool "MPC85xx/MPC5200/i.MX I2C Master driver"
-	depends on ARCH_IMX || ARCH_MPC85XX || ARCH_MPC5200 || ARCH_LAYERSCAPE
+	depends on ARCH_IMX || ARCH_MPC85XX || ARCH_MPC5200 || ARCH_LAYERSCAPE ||=
 ARCH_LS102XA
 	help
 	  If you say yes to this option, support will be included for many
 	  built-in I2C master controllers found in Freescale SoCs. This is true
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
diff --git a/include/soc/fsl/immap_ls102xa.h b/include/soc/fsl/immap_ls102x=
a.h
new file mode 100644
index 0000000000..d5d8b7f0a6
--- /dev/null
+++ b/include/soc/fsl/immap_ls102xa.h
@@ -0,0 +1,408 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2014 Freescale Semiconductor, Inc.
+ */
+
+#ifndef __ASM_ARCH_LS102XA_IMMAP_H_
+#define __ASM_ARCH_LS102XA_IMMAP_H_
+
+#define SVR_MAJ(svr)		(((svr) >>  4) & 0xf)
+#define SVR_MIN(svr)		(((svr) >>  0) & 0xf)
+#define SVR_SOC_VER(svr)	(((svr) >> 8) & 0x7ff)
+#define IS_E_PROCESSOR(svr)	(svr & 0x80000)
+#define IS_SVR_REV(svr, maj, min) \
+		((SVR_MAJ(svr) =3D=3D maj) && (SVR_MIN(svr) =3D=3D min))
+
+#define SOC_VER_SLS1020		0x00
+#define SOC_VER_LS1020		0x10
+#define SOC_VER_LS1021		0x11
+#define SOC_VER_LS1022		0x12
+
+#define SOC_MAJOR_VER_1_0	0x1
+#define SOC_MAJOR_VER_2_0	0x2
+
+#define CCSR_BRR_OFFSET		0xe4
+#define CCSR_SCRATCHRW1_OFFSET	0x200
+
+#define RCWSR0_SYS_PLL_RAT_SHIFT	25
+#define RCWSR0_SYS_PLL_RAT_MASK		0x1f
+#define RCWSR0_MEM_PLL_RAT_SHIFT	16
+#define RCWSR0_MEM_PLL_RAT_MASK		0x3f
+
+#define RCWSR4_SRDS1_PRTCL_SHIFT	24
+#define RCWSR4_SRDS1_PRTCL_MASK		0xff000000
+
+#define TIMER_COMP_VAL			0xffffffffffffffffull
+#define ARCH_TIMER_CTRL_ENABLE		(1 << 0)
+#define SYS_COUNTER_CTRL_ENABLE		(1 << 24)
+
+#define DCFG_CCSR_PORSR1_RCW_MASK	0xff800000
+#define DCFG_CCSR_PORSR1_RCW_SRC_I2C	0x24800000
+
+#define DCFG_DCSR_PORCR1		0
+
+#define GFAR_TBIPA_OFFSET       0x030   /* TBI PHY offset */
+
+
+/*
+ * Define default values for some CCSR macros to make header files cleaner
+ *
+ * To completely disable CCSR relocation in a board header file, define
+ * CONFIG_SYS_CCSR_DO_NOT_RELOCATE.  This will force CONFIG_SYS_CCSRBAR_PH=
YS
+ * to a value that is the same as CONFIG_SYS_CCSRBAR.
+ */
+
+#define CCSR_DEVDISR1_QE	0x00000001
+
+#define LS102XA_IMMR				0x01000000
+
+#define LS102XA_DDR_ADDR		(LS102XA_IMMR + 0x00080000)
+#define LS102XA_CCI400_ADDR		(LS102XA_IMMR + 0x00180000)
+#define LS102XA_GIC400_ADDR		(LS102XA_IMMR + 0x00400000)
+#define LS102XA_CSU_ADDR		(LS102XA_IMMR + 0x00510000)
+#define LS102XA_IFC_ADDR		(LS102XA_IMMR + 0x00530000)
+#define IFC_ADDR			LS102XA_IFC_ADDR
+#define LS102XA_QSPI0_BASE_ADDR		(LS102XA_IMMR + 0x00550000)
+#define LS102XA_ESDHC_ADDR		(LS102XA_IMMR + 0x00560000)
+#define LS102XA_SCFG_ADDR		(LS102XA_IMMR + 0x00570000)
+#define LS102XA_SEC_ADDR		(LS102XA_IMMR + 0x00700000)
+#define LS102XA_SEC_MON_ADDR		(LS102XA_IMMR + 0x00e90000)
+#define LS102XA_SFP_ADDR		(LS102XA_IMMR + 0x00e80200)
+#define LS102XA_GUTS_ADDR		(LS102XA_IMMR + 0x00ee0000)
+#define LS102XA_RST_ADDR		(LS102XA_IMMR + 0x00ee00b0)
+#define LS102XA_SERDES_ADDR		(LS102XA_IMMR + 0x00ea0000)
+#define LS102XA_DCFG_ADDR		(LS102XA_IMMR + 0x00ee0000)
+#define LS102XA_CLK_ADDR		(LS102XA_IMMR + 0x00ee1000)
+#define LS102XA_DSPI1_BASE_ADDR		(LS102XA_IMMR + 0x01100000)
+#define LS102XA_I2C1_BASE_ADDR		(LS102XA_IMMR + 0x01180000)
+#define LS102XA_I2C2_BASE_ADDR		(LS102XA_IMMR + 0x01190000)
+#define LS102XA_I2C3_BASE_ADDR		(LS102XA_IMMR + 0x011a0000)
+#define LS102XA_NS16550_COM1		(LS102XA_IMMR + 0x011c0500)
+#define LS102XA_NS16550_COM2		(LS102XA_IMMR + 0x011c0600)
+#define LS102XA_NS16550_COM3		(LS102XA_IMMR + 0x011d0500)
+#define LS102XA_NS16550_COM4		(LS102XA_IMMR + 0x011d0600)
+#define LS102XA_GPIO1_BASE_ADDR		(LS102XA_IMMR + 0x01300000)
+#define LS102XA_GPIO2_BASE_ADDR		(LS102XA_IMMR + 0x01310000)
+#define LS102XA_GPIO3_BASE_ADDR		(LS102XA_IMMR + 0x01320000)
+#define LS102XA_GPIO4_BASE_ADDR		(LS102XA_IMMR + 0x01330000)
+#define LS102XA_QE_BASE_ADDR		(LS102XA_IMMR + 0x01400000)
+#define LS102XA_WDOG1_BASE_ADDR		(LS102XA_IMMR + 0x01ad0000)
+#define LS102XA_SYS_COUNTER_ADDR	(LS102XA_IMMR + 0x01b00000)
+#define LS102XA_EDMA_BASE_ADDR		(LS102XA_IMMR + 0x01c00000)
+#define LS102XA_XHCI_USB3_ADDR		(LS102XA_IMMR + 0x02100000)
+#define LS102XA_HCI_BASE_ADDR		(LS102XA_IMMR + 0x02200000)
+#define LS102XA_PCIE1_ADDR		(LS102XA_IMMR + 0x02400000)
+#define LS102XA_PCIE2_ADDR		(LS102XA_IMMR + 0x02500000)
+#define LS102XA_QDMA_BASE_ADDR		(LS102XA_IMMR + 0x07380000)
+#define LS102XA_EHCI_USB1_ADDR		(LS102XA_IMMR + 0x07600000)
+
+/* Device Configuration and Pin Control */
+struct ccsr_gur {
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
+#define SCFG_ETSECDMAMCR_LE_BD_FR	0x00000c00
+#define SCFG_SNPCNFGCR_SEC_RD_WR	0xc0000000
+#define SCFG_ETSECCMCR_GE2_CLK125	0x04000000
+#define SCFG_ETSECCMCR_GE0_CLK125	0x00000000
+#define SCFG_ETSECCMCR_GE1_CLK125	0x08000000
+#define SCFG_PIXCLKCR_PXCKEN		0x80000000
+#define SCFG_QSPI_CLKSEL		0x50100000
+#define SCFG_SNPCNFGCR_SEC_RD_WR	0xc0000000
+#define SCFG_SNPCNFGCR_DCU_RD_WR	0x03000000
+#define SCFG_SNPCNFGCR_SATA_RD_WR	0x00c00000
+#define SCFG_SNPCNFGCR_USB3_RD_WR	0x00300000
+#define SCFG_SNPCNFGCR_DBG_RD_WR	0x000c0000
+#define SCFG_SNPCNFGCR_EDMA_SNP		0x00020000
+#define SCFG_ENDIANCR_LE		0x80000000
+#define SCFG_DPSLPCR_WDRR_EN		0x00000001
+#define SCFG_PMCINTECR_LPUART		0x40000000
+#define SCFG_PMCINTECR_FTM		0x20000000
+#define SCFG_PMCINTECR_GPIO		0x10000000
+#define SCFG_PMCINTECR_IRQ0		0x08000000
+#define SCFG_PMCINTECR_IRQ1		0x04000000
+#define SCFG_PMCINTECR_ETSECRXG0	0x00800000
+#define SCFG_PMCINTECR_ETSECRXG1	0x00400000
+#define SCFG_PMCINTECR_ETSECERRG0	0x00080000
+#define SCFG_PMCINTECR_ETSECERRG1	0x00040000
+#define SCFG_CLUSTERPMCR_WFIL2EN	0x80000000
+
+#define SCFG_BASE			0x01570000
+#define SCFG_USB3PRM1CR			0x070
+#define SCFG_USB_TXVREFTUNE		0x9
+#define SCFG_USB_SQRXTUNE_MASK		0x7
+#define SCFG_USB_PCSTXSWINGFULL		0x47
+#define SCFG_USB3PRM2CR			0x074
+#define SCFG_USB_PCSTXSWINGFULL_MASK	0x0000FE00
+#define SCFG_USB_PCSTXSWINGFULL_VAL	0x00008E00
+
+#define SCFG_USB_PHY3			0x08510000
+#define SCFG_USB_PHY_RX_OVRD_IN_HI	0x200c
+#define USB_PHY_RX_EQ_VAL_1		0x0000
+#define USB_PHY_RX_EQ_VAL_2		0x8000
+#define USB_PHY_RX_EQ_VAL_3		0x8004
+#define USB_PHY_RX_EQ_VAL_4		0x800C
+
+/* Supplemental Configuration Unit */
+struct ccsr_scfg {
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
+
+#define MAX_SERDES			1
+#define SRDS_MAX_LANES			4
+#define SRDS_MAX_BANK			2
+
+#define SRDS_RSTCTL_RST			0x80000000
+#define SRDS_RSTCTL_RSTDONE		0x40000000
+#define SRDS_RSTCTL_RSTERR		0x20000000
+#define SRDS_RSTCTL_SWRST		0x10000000
+#define SRDS_RSTCTL_SDEN		0x00000020
+#define SRDS_RSTCTL_SDRST_B		0x00000040
+#define SRDS_RSTCTL_PLLRST_B		0x00000080
+#define SRDS_PLLCR0_POFF		0x80000000
+#define SRDS_PLLCR0_RFCK_SEL_MASK	0x70000000
+#define SRDS_PLLCR0_RFCK_SEL_100	0x00000000
+#define SRDS_PLLCR0_RFCK_SEL_125	0x10000000
+#define SRDS_PLLCR0_RFCK_SEL_156_25	0x20000000
+#define SRDS_PLLCR0_RFCK_SEL_150	0x30000000
+#define SRDS_PLLCR0_RFCK_SEL_161_13	0x40000000
+#define SRDS_PLLCR0_RFCK_SEL_122_88	0x50000000
+#define SRDS_PLLCR0_PLL_LCK		0x00800000
+#define SRDS_PLLCR0_FRATE_SEL_MASK	0x000f0000
+#define SRDS_PLLCR0_FRATE_SEL_5		0x00000000
+#define SRDS_PLLCR0_FRATE_SEL_3_75	0x00050000
+#define SRDS_PLLCR0_FRATE_SEL_5_15	0x00060000
+#define SRDS_PLLCR0_FRATE_SEL_4		0x00070000
+#define SRDS_PLLCR0_FRATE_SEL_3_12	0x00090000
+#define SRDS_PLLCR0_FRATE_SEL_3		0x000a0000
+#define SRDS_PLLCR1_PLL_BWSEL		0x08000000
+
+struct ccsr_serdes {
+	struct {
+		u32	rstctl;	/* Reset Control Register */
+
+		u32	pllcr0; /* PLL Control Register 0 */
+
+		u32	pllcr1; /* PLL Control Register 1 */
+		u32	res_0c;	/* 0x00c */
+		u32	pllcr3;
+		u32	pllcr4;
+		u8	res_18[0x20-0x18];
+	} bank[2];
+	u8	res_40[0x90-0x40];
+	u32	srdstcalcr;	/* 0x90 TX Calibration Control */
+	u8	res_94[0xa0-0x94];
+	u32	srdsrcalcr;	/* 0xa0 RX Calibration Control */
+	u8	res_a4[0xb0-0xa4];
+	u32	srdsgr0;	/* 0xb0 General Register 0 */
+	u8	res_b4[0xe0-0xb4];
+	u32	srdspccr0;	/* 0xe0 Protocol Converter Config 0 */
+	u32	srdspccr1;	/* 0xe4 Protocol Converter Config 1 */
+	u32	srdspccr2;	/* 0xe8 Protocol Converter Config 2 */
+	u32	srdspccr3;	/* 0xec Protocol Converter Config 3 */
+	u32	srdspccr4;	/* 0xf0 Protocol Converter Config 4 */
+	u8	res_f4[0x100-0xf4];
+	struct {
+		u32	lnpssr;	/* 0x100, 0x120, ..., 0x1e0 */
+		u8	res_104[0x120-0x104];
+	} srdslnpssr[4];
+	u8	res_180[0x300-0x180];
+	u32	srdspexeqcr;
+	u32	srdspexeqpcr[11];
+	u8	res_330[0x400-0x330];
+	u32	srdspexapcr;
+	u8	res_404[0x440-0x404];
+	u32	srdspexbpcr;
+	u8	res_444[0x800-0x444];
+	struct {
+		u32	gcr0;	/* 0x800 General Control Register 0 */
+		u32	gcr1;	/* 0x804 General Control Register 1 */
+		u32	gcr2;	/* 0x808 General Control Register 2 */
+		u32	sscr0;
+		u32	recr0;	/* 0x810 Receive Equalization Control */
+		u32	recr1;
+		u32	tecr0;	/* 0x818 Transmit Equalization Control */
+		u32	sscr1;
+		u32	ttlcr0;	/* 0x820 Transition Tracking Loop Ctrl 0 */
+		u8	res_824[0x83c-0x824];
+		u32	tcsr3;
+	} lane[4];	/* Lane A, B, C, D, E, F, G, H */
+	u8	res_a00[0x1000-0xa00];	/* from 0xa00 to 0xfff */
+};
+
+#define RCPM_POWMGTCSR			0x130
+#define RCPM_POWMGTCSR_SERDES_PW	0x80000000
+#define RCPM_POWMGTCSR_LPM20_REQ	0x00100000
+#define RCPM_POWMGTCSR_LPM20_ST		0x00000200
+#define RCPM_POWMGTCSR_P_LPM20_ST	0x00000100
+#define RCPM_IPPDEXPCR0			0x140
+#define RCPM_IPPDEXPCR0_ETSEC		0x80000000
+#define RCPM_IPPDEXPCR0_GPIO		0x00000040
+#define RCPM_IPPDEXPCR1			0x144
+#define RCPM_IPPDEXPCR1_LPUART		0x40000000
+#define RCPM_IPPDEXPCR1_FLEXTIMER	0x20000000
+#define RCPM_IPPDEXPCR1_OCRAM1		0x10000000
+#define RCPM_NFIQOUTR			0x15c
+#define RCPM_NIRQOUTR			0x16c
+#define RCPM_DSIMSKR			0x18c
+#define RCPM_CLPCL10SETR		0x1c4
+#define RCPM_CLPCL10SETR_C0		0x00000001
+
+struct ccsr_rcpm {
+	u8 rev1[0x4c];
+	u32 twaitsr;
+	u8 rev2[0xe0];
+	u32 powmgtcsr;
+	u8 rev3[0xc];
+	u32 ippdexpcr0;
+	u32 ippdexpcr1;
+	u8 rev4[0x14];
+	u32 nfiqoutr;
+	u8 rev5[0xc];
+	u32 nirqoutr;
+	u8 rev6[0x1c];
+	u32 dsimskr;
+	u8 rev7[0x34];
+	u32 clpcl10setr;
+};
+
+uint get_svr(void);
+
+#endif	/* __ASM_ARCH_LS102XA_IMMAP_H_ */
diff --git a/scripts/Kconfig b/scripts/Kconfig
index 25d57e4b2a..864841fb2d 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -37,8 +37,8 @@ config MXS_HOSTTOOLS
=20
 config LAYERSCAPE_PBLIMAGE
 	bool "Layerscape PBL image tool" if COMPILE_HOST_TOOLS
-	depends on ARCH_LAYERSCAPE || COMPILE_HOST_TOOLS
-	default y if ARCH_LAYERSCAPE
+	depends on ARCH_LAYERSCAPE || ARCH_LS102XA || COMPILE_HOST_TOOLS
+	default y if ARCH_LAYERSCAPE || ARCH_LS102XA
 	help
 	  This enables building the PBL image tool for Freescale Layerscape SoCs
=20



