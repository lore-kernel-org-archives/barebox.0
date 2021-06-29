Delivery-date: Tue, 29 Jun 2021 14:06:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyCVn-0004cP-EC
	for lore@lore.pengutronix.de; Tue, 29 Jun 2021 14:06:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyCVm-0006pE-Cb
	for lore@pengutronix.de; Tue, 29 Jun 2021 14:06:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fClRVnx4Aw/NP3Sh5DspNWFIi6rfaWTF7IOEo1VgVXE=; b=KXnuaWwHKyzNYt
	pKyHY1q7VfOlpOzagFrL0KpZFzSdcqS9JEhRW0CcatN3oFcnwSGTyS+pdRwBTZiXC8AZPHLeBcEkA
	q4AlIy5p5JirNWi2cC9uZoDqf1vAlbUczMU0wFdQwVYcqH/QBXSvomb0yLDs7plJxlGhc5fnKR+j4
	TtJo18oCKoEM/EG0RSq2tPPU/4Ed+b14sbcHq5i7Yzb0A0MtFhid/GKvq6sRdVhfNcK4XPY1G8lI6
	9hi33Em52V5pjQl42aK9ABl/cBPrDaimAFbbYkm/5oB9JmH8An2Fl3+rBcgrrrrtMPB+ixVkWu5O1
	KhxVJg4z8eBCXaGvpp4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyCUE-00AlMt-8m; Tue, 29 Jun 2021 12:05:06 +0000
Received: from mail-vi1eur05on2088.outbound.protection.outlook.com
 ([40.107.21.88] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyCU9-00AlM8-0c
 for barebox@lists.infradead.org; Tue, 29 Jun 2021 12:05:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h2G7oo7ap4dRZCsLmaff75ozDurqt1I/ItFz0gOyq0ONwte40JujdirNwcOhmlBExompE3qkhaSEeWIZhvke6ZYv41BnSrmzfriB4slxOh3rulP3PCHPnY5ApT93sDZyiHkCdTz25r6nqSSiGmy8PoSKQjuVzK85WXT0VmQgzjla1roQmG+5Jqh+stc0vLkkTYObP0qlF89A3rxuZD6twk358Ko4B950tzihJORS5xe8ixzzK2o1lr8Hq4RDs3yvJ/j7FL2xz/bk9lt21TXhcJcu92S2Al4IxoKClR6DyO5M9qh/CHacgo0z5YBD4QbfqCbN10gR1LEWH6li1O2Z4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PoVaFavuASQ0AtcR2Uzn1MJBD7hinimv+gzq9Kdzpwk=;
 b=G/ajA3+mOMHize5Iu3q9u41u4Ghr8mmqn84nwxNKIqV2uKh7TKtuArZBEfyIsF+CyAMGzWvTTr1TwrgZwkClnHSLaX7DnKGUrv0lSX/vNKA3yLnUyxHKEPKkhzFVmF3wBJUmNrRqGTWBf2YcUxTl0XQyiXmJQooC4lCxhquUfIkmSWNRwmRxijVOLxH7gr9PxH905j7NWec0WwwMPuz1xz4d+WsLHjsbfVnITlHeDRvx4t1uPk+GS6Q9609c5T/PgxwfeVDOKrjRyhLizgHmvij3fSt7QTujkyLGgUn9XL8PI78MIth/SHQ9WAmQXtDgWd7oQwlwluOFn9PuOYX0EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PoVaFavuASQ0AtcR2Uzn1MJBD7hinimv+gzq9Kdzpwk=;
 b=aY9AyyVeVCtru7WdZXO1VBCc88vzwDS9khfYU2oVSxeLPPFQ3jaPgk8QGn5GTYrpMD7T7Zv/naiY5P/zFSb+g02itPRdygNoB0qHe4YJBgy0rGSTeK8/2r/t2O83HaXPs99XLc8Yw267h+BAxEQ/d8585MOpZabZSF0/zKLJ3Uc=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB6171.eurprd08.prod.outlook.com (2603:10a6:10:20f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.23; Tue, 29 Jun
 2021 12:04:57 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4264.026; Tue, 29 Jun 2021
 12:04:57 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 29 Jun 2021 14:04:45 +0200
Message-Id: <20210629120445.10441-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <d9f643320cc9af6c1ad3fb8170cdd8f6de0dcfb6.camel@phytec.de>
References: <d9f643320cc9af6c1ad3fb8170cdd8f6de0dcfb6.camel@phytec.de>
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR0502CA0007.eurprd05.prod.outlook.com
 (2603:10a6:803:1::20) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0502CA0007.eurprd05.prod.outlook.com (2603:10a6:803:1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.21 via Frontend
 Transport; Tue, 29 Jun 2021 12:04:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f119878c-cc33-4fae-225b-08d93af61cb2
X-MS-TrafficTypeDiagnostic: DBBPR08MB6171:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB617117180BC3B8E892A763CFF2029@DBBPR08MB6171.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1148;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: smYFTaHFNBsQmAKqm1UooUcudjijNmN0tUOWTre7jS+fk+vLg5KTqv2M2IDOEZfTN7bEw/UVxj4bfyIbTQydjHrkXm0eCQRZjmgFa6XBt0jvfqcUpvyXKOZgyS8FczTcndIuaYxgrmJbxoBvo4trR3L2O8i9m0/8/z5/hZXA1GEBGOQWl/pI7wdZrkn9wWZhMISFYgxxcLWFC6vziL+4HbTl5CFLfMFtRu0SlgxV0rOONCSkuDIbZ05rT8LY8PeZh9FZPpCYkt5u//iqJ4hLURN8zoBCGC7bBDkxrVHfq9rEKRECUgw5AEUDyyGhZ4qfwOdy2hiYStQ28jyWqP+6aGHYMr5CZrD6TtKQKoSTzjBpCAIcT7evDokcv/jFPYq4ZwtA9ATf22Dd4W8SqQJTDUpqyAiz4Fyy1LVCUwLLdsdVEpvBy7gBZFqAuzix335aWjstu7u1DUP297KIrJlSgSG8nmEUyM4H3Up+9Rt2s1f+x5cVtqpN5PXJNjSeqQ/Y0TvZYMxpAYL0+SgPKrAB2HnxCMazuNuwo7xW0YGfeQDlKUGN/aA3GO0OKSelQSWNm19NTs0zhjwbn9Y/q5Lx0srS2ztmJe2Ipouo54jM3Up09Mm5dodEa/zMzgkpoYPtqLfyZ4Tc/JPY1gAZ6h7RKGUIcvUMTDiszyncC2u7StkVcHyG9gQz2/ALZaPMrCd6P6NTD8GVAyk0tpOobliEQQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(346002)(39830400003)(376002)(38100700002)(44832011)(52116002)(186003)(107886003)(86362001)(4326008)(2616005)(6666004)(6916009)(16526019)(6512007)(4744005)(956004)(8936002)(38350700002)(8676002)(26005)(6506007)(36756003)(6486002)(1076003)(66556008)(66476007)(66946007)(2906002)(5660300002)(83380400001)(478600001)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qbScjryGDFO/6Gw3ah5xWZg8dLR48fZixBIsFDYkrUmnk75xVcudUXo9iMjJ?=
 =?us-ascii?Q?aW8RpOEs7TieFoH+Vbs43gQMg+oybRFMQg0L1z1ebNhxS4PifgyvJHhWf60s?=
 =?us-ascii?Q?nWF2dWyD/BQ10gat67Hxsk4bX76Yh/VqXHOOjpQYe0XY1OI3cm3QlSWWHLPy?=
 =?us-ascii?Q?XSJSb3eFixeGC6jmfAo2WH5f/Vs+YSKsp86qn4gSif0TH9bgo/oBBu82C4/r?=
 =?us-ascii?Q?Lz7IhjS4wEU/TpMeADOJKZmGCpFk+S8eaU6L5bAfk8wKBFfGH2WAg51GFjX7?=
 =?us-ascii?Q?tppEu1TMvICgeRILq6QZ+1rL6BMKa1nvhJjqJZ92tChFVljO03Suhdp0lo1e?=
 =?us-ascii?Q?KMk7XQN0iLo15gxe1fLUf9lYjwErU7emZtp1qSizz8sVavSqGiEqwlKE1ske?=
 =?us-ascii?Q?FixIr5kfgafItPv3mJB1qrVLSOzbmwIqK79uxa93t2T9w6v4jy4yaGPMwZr+?=
 =?us-ascii?Q?qbQEz9o1czf0VJRdC/MFcqR/vhKw9Vnem8P2XeI4uJA1QMrkX3kc7L0J3xge?=
 =?us-ascii?Q?jO2y91R1pyZwXefNn2zX9La903yFrzX9Ab4F4mqKwV5jp6MXPkbehKZJRVwG?=
 =?us-ascii?Q?BPSpb5lT8M9+1YB8Co+uO/BkjIIHR2hkrDtUpz/PLFN5kWixMZ9OKpC4zblk?=
 =?us-ascii?Q?zLt3q5AhbdyDlvgo5gamAutdK4FfLajtHpLvmldLmheYJQwsljRLgUl6I9p6?=
 =?us-ascii?Q?JqnIPhQMi7uQStrX6txNbReKzCUkbTuDiHJSkrijJUj6iG4tzH1KAJB61Dnh?=
 =?us-ascii?Q?b2yQY8VcZSgCL3QsRagVu+WDO1s0KDH3TtBQQnvZZifp9aMNd4vxA3J5ztRR?=
 =?us-ascii?Q?ptOFYQv2uPrs71pVD/LQIMhlEd3eqSTr5AflaqOje4bWpu7SnEZ3PJ9CIGlu?=
 =?us-ascii?Q?UY5Ys/GCHZruIbczRLk+lXNJokmtrm9DMGDAjFjG2ATIc2SWDDIGDFV+ggfz?=
 =?us-ascii?Q?/67Xx/BMPKk/vOEqU3SucC/a9rQ8tXcSEGVIGrN2djD6N/nFNhMraGP0ZYQb?=
 =?us-ascii?Q?KPcpCeGrlCmwftvgpgNYctB2lDQT6G0H+NmmlgIs/YrLLYU1aBbaAw0rLUcl?=
 =?us-ascii?Q?nrr2QmiPDbVIaHBKvBYBRE1ZglmbIk2nusuuYfxkUYrtGYynDKMh1vnnAzr2?=
 =?us-ascii?Q?9aSEppj9jMB6p/zCNbJ8QyI2sD9rryRVPiZYeoxUFiO/ZLj+9ZgfTlCKz8Ww?=
 =?us-ascii?Q?CbHKztL2HStBoG3+IIHiUvYDLp7SMk6nXZ7Xlu5Io/9vvJkC/8t2xpAzCqSY?=
 =?us-ascii?Q?7urwc9xyCfrkuyNPZy9rt0hTTujxGE1FGilRu7hOerpC3vVsJybO4QGpgeAy?=
 =?us-ascii?Q?/FI0bOASEBXAVECE3EygS0Jg?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: f119878c-cc33-4fae-225b-08d93af61cb2
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2021 12:04:57.0376 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ARUPSfZnej5h/C45il+dRGg2QblVrENsMdIY4jXh7zwgOCXLh/K7MQlrVhljPt0M4y4+Hzwwej8xm+oYlRU7koSq8Z/JAGlXEOrh9bjrbHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_050501_162963_599B118C 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! commands: of_property: Extend command usage on
 external dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 commands/of_property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index 41bb5f71b..063e97775 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -346,7 +346,7 @@ static int do_of_property(int argc, char *argv[])
 			return -errno;
 		}
 
-		root = of_unflatten_dtb(fdt);
+		root = of_unflatten_dtb(fdt, size);
 
 		free(fdt);
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

