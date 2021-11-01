Delivery-date: Mon, 01 Nov 2021 13:13:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhWBw-0004bh-Cj
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 13:13:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhWBu-0004bS-Ss
	for lore@pengutronix.de; Mon, 01 Nov 2021 13:13:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mXGC8gVlc+DQ27r4G93Lr7VE6UgYSTvMob3BRs+z9uc=; b=Jtudk3X3PKCXCJ
	lP1BVB5bm2FbL8bJlry+2kizQV7SO4SCmix+Wb06lyXeBJuxdy6iHTpVXZtPMEcLSsNOKgP4Hb6bR
	4Owqkyq4NQtKTZuPWfNeDrXyo5NKwTqpVdHzIA1N4bfvaBzNMTr0gCJNlJaqzBifwVwMXU4Z4TvsZ
	EY2DQyqDl3AnztFwx3XDs8NWb4cM0HCI0pli35SrvIFLzO6yjK9KuMSoiZnbje1qtpzS4jEZGFD21
	Nw9KAnOAXDmWi9qcP6coDZJFKqhA1Kzf/Om4GnYlX3I6ClcUNmYak4f6I5SQnCAnnxMucoePfK/I3
	7AnzOg/mnJdA+xV0PXcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhWAD-00GKk1-Et; Mon, 01 Nov 2021 12:11:45 +0000
Received: from mail-eopbgr140078.outbound.protection.outlook.com
 ([40.107.14.78] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhWA6-00GKh4-6m
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 12:11:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DgbaEvtr8Io+K27Ee/ErfweC2HUM6Ot9V2Y4kbcrqyXBXP5d/nw7Yts0VKbENwyznBiD8faiIs8mpeO4zhe5C2ARDiqnfZ3qoMHFvLcbQr6tM7hEglHSm+Erd7JdNsN5GHleILy5oqx9M5jDfV+742AD782vVdUsf6UY+X5p1Eehcm2qk97pLH/i5uAPhWVBEjmvwbIU9d+6u9vO9Ot6HYAEn8/28HW+SQTy3Vuw7+QjlL5N10NSRre6eVCUIHhwUZqrcrfNXs2gJ4ntNmAUBjn5yYuq8Z3oj2Di0wa+ykTyhKdnY6KaodAWx6c4Yqy8/tdSRpBQI87Nv9j/KvwMzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v+YwMKb9qHv0YeP2neQnqhHkF+XoZcznwpnYkfsu9hU=;
 b=SbMHKf2e0V5jhukHGknIQMEwnUp3UtBkmPq2LhIetb3ix6IanoIdjIfFcnDKn6v6pyPHf2KI6MltBCElEBaPAyAT4y4if3D+IfTcCGwD42yiA2KIa0wQIUW6NDgIu74q6LWwwShMVOU9R5rNDCKlIMcBKuMHRtSUGwLlJaAEAuObP39PKoXJuJmIzfIjOTVwJYYrybi5l92FK9zIVBxuyMy+hbjuKP1Nqt3Eq8Jj472TQ/3pX9vMVeoaEX6yI/zx5/8y8Sm0ukShe+Ge93v6q7iyQOy3BQ2bvXHwdjdOUmAVVBAjTgP1/WEqZyLv6oIEWKnIlKHLlb+UcFiA4pPMhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v+YwMKb9qHv0YeP2neQnqhHkF+XoZcznwpnYkfsu9hU=;
 b=wfvO3gkVWSB+36fiwHByT9vucYfwwULE8gZrs3+L/616mCR21Xjw4Ki/06VI+H1QaQh5ae+CKCkmxPsQNo7wbRqJ8XolpUFRXBGkqnRIrfWAoNqS94oK4PwDVc/UA/45vzmFDTqOysBs1Bo9gzpH8ZTu/zZM+LFJNtTibS50OS0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 HE1P192MB0058.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:101::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15; Mon, 1 Nov 2021 12:11:33 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::cd56:de39:90bb:7466]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::cd56:de39:90bb:7466%12]) with mapi id 15.20.4649.019; Mon, 1 Nov 2021
 12:11:33 +0000
Date: Mon, 1 Nov 2021 13:11:09 +0100
From: Joacim Zetterling <joaze@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Message-ID: <20211101121109.GA56533@wsevst-c0022>
Content-Disposition: inline
X-ClientProxiedBy: OL1P279CA0007.NORP279.PROD.OUTLOOK.COM
 (2603:10a6:e10:12::12) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
Received: from wsevst-c0022 (90.229.138.185) by
 OL1P279CA0007.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:12::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15 via Frontend Transport; Mon, 1 Nov 2021 12:11:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 11bd9aee-3aad-46f0-5e59-08d99d30be60
X-MS-TrafficTypeDiagnostic: HE1P192MB0058:
X-Microsoft-Antispam-PRVS: <HE1P192MB0058B1CE900EF27CAE15755A9C8A9@HE1P192MB0058.EURP192.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NQmXtyPjrKQ32lTwQ/WwoJksi1QtQKtz/rTcKILWo/MwlVUmx7+AcAOvQ19D89SkmTpuh3Z8ITGNop3cjgKOEmguQ3r2SENSEfKhx/M+0MP4xx1fKR1bOKE0PLtAjisr3TMcleB7PgGRGaPdph3GEJeh1CWAgss6u2hUOtkIvA202A6jsEYYqI2mrmAxi0qIWPFVEPRLEYYn+2HZ3I+sxYU5hHuipORvS4UaM1ykcYrYgVggg3R8bXk98vQ/DOJCMzdkajDR7qn2VtDmqgspb6L6jVbV2s/oXP9p4MODwm8naFxVkCjDqy5dXfgFyyZNA332dbyppL4RO6tSig9H1F33p8LYa4qHaQWKoNAcTquXAzqnu/ybw7iDMVDpFlorstWEcjxSYfFx8NQ+gZHvW19v0QLyT76LSuaeymXVlooXAx5lmkkgt2eyTqx796UqRpGq9matIJl5r7OJLRSAXzgIZVfmmCpp0U42eI5zaglL4xKVN+wzYlYz7+LVFOkr1zinWlvt6WJXXEbUsRqBrUZBaMqBbhWBtb6UJxdx1xDmZ0Nd/tpKefi7Hdtr7LBU2iWCASlI3K1Cd6DJ1j05/C9VFL/Itl9fE6+m79O4sJUm8jUY2XUosvVtgurkb2nUKEboqkzPxKdKevLEeL5PG8rSZboP4DYRxLxbId7QtuOsuW0cu6S5tMXWrSwzDb/pXTPBHSM9rHekmyQTH4Lb/A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(26005)(508600001)(5660300002)(2906002)(66946007)(8676002)(33656002)(4326008)(8936002)(55016002)(66476007)(956004)(1076003)(38100700002)(52116002)(6496006)(6666004)(6916009)(316002)(83380400001)(66556008)(9686003)(33716001)(38350700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/JPZEJQwU3y54jdjoSLuFoiCJuyvtUJx/jIql8rg37nhO0pYpBw9mTjfkoA7?=
 =?us-ascii?Q?8gFUtUwaUeFPwGuJyjwS2d2nmL3yO88pVZhaimRcfRbETltak7qN2OU1Lq1N?=
 =?us-ascii?Q?7UOLZB41GU2mBujaCdt1yzTG00/eOxiRA13zwZODOGYM3FjnjiXPLQrsz/ke?=
 =?us-ascii?Q?KnpYWp3MwV1Iftc/EtW2bkggcYeNWOT+FvyR4ntFiKMUKLhv3TsgEOo39+Jh?=
 =?us-ascii?Q?rgwIuWXm7tl7okmZq/kysUHWhRwC+JniwUCugIXqU920YHfl6x+XVUOoKm7A?=
 =?us-ascii?Q?70f5fChKKM/laamPOhYkbPY80tCUMcIgD4el3lhrPHCHFYUAqAZJS0S273PU?=
 =?us-ascii?Q?/JI7R8Oz8WeQ3Y/whqpy3/SKPQ1nd9fNc9eXEJYKxJqR2Gewp2T6J16RRrxY?=
 =?us-ascii?Q?bbyjyfFC5375tb/pcmVvCGmtgfMr0eKKWjsUg+NqBvGt5jsjB+l9T8fE8tQ8?=
 =?us-ascii?Q?K4hSaAJHZzvsQlhQYOdCAMeGjRB53Ph+47JeWJonwddTSHazrWtth7laTRVW?=
 =?us-ascii?Q?s0wvTylhhzwzicv5ESa30Vsu5URFakAhQY8Oq4AIrTaDBhbWGOQGf/msohAQ?=
 =?us-ascii?Q?rTucN8XJhe7IBtV9QZFjE1NLKsrFFSgAF+clFzQSYkXJ60IThwSOzelSpDJU?=
 =?us-ascii?Q?fsJW0iHAtoXE0Qmy4IDR21NqCENNYqtvBcrcZ6LTrJNyxdMSlfw/ZXilTbxO?=
 =?us-ascii?Q?VKtj8UQa4GKce78RDpNjlP8VjhPnq6qArLh2sRD9rhvMxWHEbfs7AIn0NBrC?=
 =?us-ascii?Q?fI1BzweyO6DeIixStyp2e2XUWDQlibsXUSNkoHPPvwFHG6weVBq9NosaowA+?=
 =?us-ascii?Q?jkhJKbXgUPWTov5VnrKSbMJdCVl6lqsSeKIjIjKeVD5SL2/jHM3mXEA/Os5W?=
 =?us-ascii?Q?6n9h6nqGqhRJ2dcE/RzI4Us35sTIwM+SQ41+8xM8qWtDN+uWY2j7UZNK0u/O?=
 =?us-ascii?Q?/sLNl5410Y2slRhM02LJKHZ6XlcJdf0MYzRZ7zR5QD1vDl1awmLd8Uf09uQW?=
 =?us-ascii?Q?OHPv2wMNiWOqW5pN79G/U5lC8Uf3An3PiApY4p6hkPHY97jiZuodpBNbDIqa?=
 =?us-ascii?Q?i9dVjh2AoZ2pJWNzVuV+HVP44WU6aMj3fkciI5YFD6/A4j1LfXnBfA+Tp+AC?=
 =?us-ascii?Q?ksG+w9fMT/IwBmHMk+IuxBfitANgoWf5wCnj9xaEURChq8OIlicIKD2Ovkgp?=
 =?us-ascii?Q?uzlG11UJ6vbu0ms4bRiKxUR4bFfHjsE5v30/l4H/GVrNAVa0/AUJ5zg8Qq5x?=
 =?us-ascii?Q?DLYw2ZMfLDT6Y82XBZhMElILAWy5kB+uenraOhsqE4DsaQfFWBD/1I9uSo3t?=
 =?us-ascii?Q?sN5t6zSR/PwnCjNkEqKOHYMxdkOR3YOSJJHXD7Lk3MqZBIEVrnC2pIfJ/fnT?=
 =?us-ascii?Q?dVI4a5foKUmEWZXiqKLccMVOIkI5PZUa4YAyHqYBgxJYRnjnsDm/ip/Nm44m?=
 =?us-ascii?Q?cQAERfsTEXVqPyjJTvJCOG4fMF6aO3mfEC6Wi8UP4n7ZeSf4vIaSd9rgJDp8?=
 =?us-ascii?Q?yyn1PCKAG3fHeDIjJSmq+zHWhQJFNzbJAhmU/VeTzNzmSpgq2uTCA3xEYR67?=
 =?us-ascii?Q?oGuu1h+jChzAw6lGHImlfHAVskIoIb2AQAm//QZWbU3WIVv0g/7k67PlvCs0?=
 =?us-ascii?Q?ColcanPBO5rAzvQh8nzOSTo=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11bd9aee-3aad-46f0-5e59-08d99d30be60
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2021 12:11:33.0452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bjSkIIgyq+kqZ6hmVoMoqrzdePLAunzcJPpmSU46kiXZaKYfQT0moN2WvQZLVtm5WahE6g7PPm9PLxNdjrcCsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P192MB0058
X-MS-Exchange-CrossPremises-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 90.229.138.185
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: HE1P192MB0058.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_051138_520616_D8060681 
X-CRM114-Status: GOOD (  22.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3] Fix problem with imx_ddrc_sdram_size calc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There was some issues with the imx_ddrc_sdram_size calculation.

If we compare the imx8mn DDR4 evk against the LPDDR4 variant in
code and in the datasheets, we see the following:

             DDR4   LPDDR4
  ========================
  Bus width   16      16
  Rank        1       1
  Ranks       1       1
  Banks       4       8
  Banks grps  2       1
  Rows        17      15
  Col         10      10

This gives us the following problems:

1. Bus width problem.
   Does not support 16 bit SDRAM bus mode, only 32 bit supported

2. Row size problem.
   Only up to 16 bit row size support.

3. Bank groups support.
   Only support of 1 bank group.

4. Bit count problem.
   The imx_ddrc_count_bits function does not do a correct count.

The fact that the code only handled a 32 bit bus width, compensated
the problems with rows, banks and rank.

1. Bus width problem:
=====================

The imx8mn has a 16-bit SDRAM bus width access but the calculation
of the memory size treat it as a 32-bit width bus which makes the
memory calculation to be wrong (meminfo wrong and memtest fails).

There is a difference between the imx7 and the imx8 familys.
The imx8 family has a device config field in the master register of
the DDRC controller which the imx7 family doesn't have (the bus width
is 32-bit as default).

The device config field together with the DQ configuration tells us
the actual bus width of the device for a correct mem size calculaton.

>From the imx8mn reference manual:
+----------------------------------------------------+
|    Field      |     Function                       |
|----------------------------------------------------|
|    31-30      | Indicates the configuration of the |
|               | device used in the system.         |
| device_config |     00b - x4 device                |
|               |     01b - x8 device                |
|               |     10b - x16 device               |
|               |     11b - x32 device               |
+----------------------------------------------------+
	...
	...

The imx8 supports a bus width of 4 bits or x4 (device_config b00).
This is a problem for the calculation of the mem size when it only
handle the bus width in bytes. Therefore we must treat the mem size
calculation for the half bus width (width = 0) in a special way.
Do the calculation with one byte width and then divide the mem size
by 2 later on.

2. Row size problem:
====================
The current row calculation in imx_ddrc_sdram_size does only handle
16 bit row size, the row size of the imx8mn DDR4 need 17 bits.

We need to add DDRC_ADDRMAP7_ROW_B16 and DDRC_ADDRMAP7_ROW_B17 in
the row check table to support a 18 bit row size.

i.e.
	...
  #define DDRC_ADDRMAP7_ROW_B17		GENMASK(11,  8)
  #define DDRC_ADDRMAP7_ROW_B16		GENMASK(3,  0)
	...
	...
    const u8 row_b[] = {
	FIELD_GET(DDRC_ADDRMAP7_ROW_B17, addrmap[7]),
	FIELD_GET(DDRC_ADDRMAP7_ROW_B16, addrmap[7]),
	FIELD_GET(DDRC_ADDRMAP6_ROW_B15, addrmap[6]),
	FIELD_GET(DDRC_ADDRMAP6_ROW_B14, addrmap[6]),
	...
	...

3. Bank groups support:
=======================

Add bank group size to handle mem chip with two or more bank groups
in one chip. The imx8mn DDR4 has one mem chip with ranks set to 1 and
the number of banks is 4 in 2 groups, total of 8 banks.

We need two add the DDRC_ADDRMAP8 and do a check DDRC_ADDRMAP8_BG_B0
and DDRC_ADDRMAP8_BG_B1 to get the number of bank groups in the chip.

i.e.
	...
  #define DDRC_ADDRMAP8_BG_B1		GENMASK(13,  8)
  #define DDRC_ADDRMAP8_BG_B0		GENMASK(4,  0)
	...
	...
  if (addrmap[8]) {
	if (FIELD_GET(DDRC_ADDRMAP8_BG_B0, addrmap[8]) != 0b11111)
		banks++;
	if (FIELD_GET(DDRC_ADDRMAP8_BG_B1, addrmap[8]) != 0b111111)
		banks++;
  }
	...
	...

4. Bit count problem:
=====================
Also adjusted the imx_ddrc_count_bits which currently did a wrong
bit check (stopped after the first check).


Tested on a IMX8MN Evk with 2GB DDR4 and on a IMX8MN custom board
with 512MB LPDDR4, checked size and made memory test.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/mach-imx/esdctl.c | 63 +++++++++++++++++++++++++-------------
 1 file changed, 42 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index e56da3cb76d4..39b98655668b 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -320,6 +320,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 #define DDRC_MSTR_LPDDR4			BIT(5)
 #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
 #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
+#define DDRC_MSTR_DEVICE_CONFIG		GENMASK(31, 30)
 
 #define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
 
@@ -346,13 +347,19 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 #define DDRC_ADDRMAP7_ROW_B17			GENMASK(11,  8)
 #define DDRC_ADDRMAP7_ROW_B16			GENMASK( 3,  0)
 
+#define DDRC_ADDRMAP8_BG_B1			GENMASK(13,  8)
+#define DDRC_ADDRMAP8_BG_B0			GENMASK(4,  0)
+
 static unsigned int
 imx_ddrc_count_bits(unsigned int bits, const u8 config[],
 		     unsigned int config_num)
 {
 	unsigned int i;
-	for (i = 0; i < config_num && config[i] == 0b1111; i++)
-		bits--;
+
+	for (i = 0; i < config_num; i++) {
+		if (config[i] == 0b1111)
+			bits--;
+	}
 
 	return bits;
 }
@@ -361,7 +368,7 @@ static resource_size_t
 imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
 		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
-		    bool reduced_adress_space)
+		    bool reduced_adress_space, bool is_imx8)
 {
 	const u32 mstr = readl(ddrc + DDRC_MSTR);
 	unsigned int banks, ranks, columns, rows, active_ranks, width;
@@ -384,15 +391,20 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 		BUG();
 	}
 
+	/* Bus width in bytes, 0 means half byte or 4-bit mode */
+	if (is_imx8)
+		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
+	else
+		width = 4;
+
 	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
 	case 0b00:	/* Full DQ bus  */
-		width = 4;
 		break;
-	case 0b01:      /* Half DQ bus  */
-		width = 2;
+	case 0b01:	/* Half DQ bus  */
+		width >>= 1;
 		break;
 	case 0b10:	/* Quarter DQ bus  */
-		width = 1;
+		width >>= 2;
 		break;
 	default:
 		BUG();
@@ -409,10 +421,25 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 	if (FIELD_GET(DDRC_ADDRMAP1_BANK_B2, addrmap[1]) != 0b11111)
 		banks++;
 
+	if (addrmap[8]) {
+		if (FIELD_GET(DDRC_ADDRMAP8_BG_B0, addrmap[8]) != 0b11111)
+			banks++;
+		if (FIELD_GET(DDRC_ADDRMAP8_BG_B1, addrmap[8]) != 0b111111)
+			banks++;
+	}
+
 	columns = imx_ddrc_count_bits(col_max, col_b, col_b_num);
 	rows    = imx_ddrc_count_bits(row_max, row_b, row_b_num);
 
-	size = memory_sdram_size(columns, rows, 1 << banks, width) << ranks;
+	/*
+	 * Special case when bus width is 0 or x4 mode,
+	 * calculate the mem size and then divide the size by 2.
+	 */
+	if (width)
+		size = memory_sdram_size(columns, rows, 1 << banks, width);
+	else
+		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
+	size <<= ranks;
 
 	return reduced_adress_space ? size * 3 / 4 : size;
 }
@@ -427,7 +454,8 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 		readl(ddrc + DDRC_ADDRMAP(4)),
 		readl(ddrc + DDRC_ADDRMAP(5)),
 		readl(ddrc + DDRC_ADDRMAP(6)),
-		readl(ddrc + DDRC_ADDRMAP(7))
+		readl(ddrc + DDRC_ADDRMAP(7)),
+		readl(ddrc + DDRC_ADDRMAP(8))
 	};
 	const u8 col_b[] = {
 		/*
@@ -445,15 +473,8 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 		FIELD_GET(DDRC_ADDRMAP2_COL_B4,  addrmap[2]),
 	};
 	const u8 row_b[] = {
-		/*
-		 * FIXME: RM mentions the following fields as being
-		 * present, but looking at the code generated by DDR
-		 * tool it doesn't look like those registers are
-		 * really implemented/used.
-		 *
-		 * FIELD_GET(DDRC_ADDRMAP7_ROW_B17, addrmap[7]),
-		 * FIELD_GET(DDRC_ADDRMAP7_ROW_B16, addrmap[7]),
-		 */
+		FIELD_GET(DDRC_ADDRMAP7_ROW_B17, addrmap[7]),
+		FIELD_GET(DDRC_ADDRMAP7_ROW_B16, addrmap[7]),
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B15, addrmap[6]),
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B14, addrmap[6]),
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B13, addrmap[6]),
@@ -465,8 +486,8 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   12, ARRAY_AND_SIZE(col_b),
-				   16, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space);
+				   18, ARRAY_AND_SIZE(row_b),
+				   reduced_adress_space, true);
 }
 
 static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
@@ -508,7 +529,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   11, ARRAY_AND_SIZE(col_b),
 				   15, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space);
+				   reduced_adress_space, false);
 }
 
 static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

