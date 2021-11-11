Delivery-date: Thu, 11 Nov 2021 15:05:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlAhp-0008J6-2B
	for lore@lore.pengutronix.de; Thu, 11 Nov 2021 15:05:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlAhn-0006PR-U8
	for lore@pengutronix.de; Thu, 11 Nov 2021 15:05:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZhRKTIHIgnG1Guualijejgn5xm1p+gy4hefDBeEe5A=; b=gr6SGWdu9mX4o6
	KRuZZfdgDZ1Un4YLLZjpXj+JLBqOPDl34j15sld4gz/eJjS8Rkg1+CkqZxhwNoV1VLT5VShnTZXbo
	FImhJos2W3ulZSXjg4wfGAEDna2QHQgeoMNXsSZDj1GBCd/rFiuqC2Twm7el46XKV8EGHQUXFrX0u
	LRAGRzsO1KOiB3UGT11ryNc53nHYxXEEkaCq7TjeQl+7TXVCvW+YCjPHol9LbUbKVmN+IcWTcj5zi
	i7D7peWMH1roV5ZB4nhjASxuNvsCL67K1MDXGBsNJp3jxZx+xcLt1SfvlRDAbK7xBWThfTk0Qk4mb
	GTBDh95xLwCQ6+U6CRYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlAg6-0086Fs-AS; Thu, 11 Nov 2021 14:03:46 +0000
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlAfy-0086D8-TH
 for barebox@lists.infradead.org; Thu, 11 Nov 2021 14:03:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=efJVwI+RbYn/WNSu0Ge3HWDBpWYWe72AZQMtogMm4/wQRZZWmlXQpNM+9Iy+V985Nt8wbb0WteI3N0CgDjo/Vvkh41+sYVkUk46A2ViqQhs31N8/Pfb6Q+0ygl8xSGSz3JL1Ezq/LF0sDQgoF+5VJmW/t842u2PUmiuL9v2TKLjdJWoaRgasN8BEf4CozTPDWjm5d1ABmHTQRC20mCTZGubQ2Stp7N4BHNM4z6ai2rmYq8QoG4lw/LAjoVoIGSzc8rkggn2XKSTWuBTiJadVbnQ8L2DByyrLteUWopSAdyE9oInm+kePARWkRMcJF6eBb6ustT8P7KBwx5sVJGqc7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R73iiWI4HTxqJ4iwzZvEtYLG3MfxALrkzveSPBVNdGk=;
 b=XGyt4zJq8Uzsf4y5crQdOUJQO+0mmWLrT9o/zAPxVtw0NvGmzRnwN///tOj/10pUBof9KH8mcSt7iqd/aeOGqbSO9FUd+4qASL/a/mruAAfyvCG2/T9Oxog6BcdkSNzm3JRTMgkcbQRQgTImoceGpKZodUUobRnHMgebGe2UqJI+xa16d0rk2pJidV0nJZh6vG9kh34SFLyTR0y38E0QiaXXxs36POu12ulbpxzV7peVj+CfIr72e1eN3qbczMPCn7LqY32EC/0S7+wm344Yuj1ghJqnzpW7NSmcrSutXkKfnHhJBVKpSmUQf/Lxr3tWQbVzAI7SChqITw5HeTkrLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R73iiWI4HTxqJ4iwzZvEtYLG3MfxALrkzveSPBVNdGk=;
 b=LVU6Rww74ExQCmxZRYTLwc1vcbnsA2uih+OnE54tvEJG90z7Q+nKWb3GSs4fRHwU1f1kJyr70gh2nui+ftmRyJ2Q3AvAFFxu07t9RILPTSJ0NQNoQqaMgOYR4fi14w4IWUVFlRMwbBrbz3NhQohuy45IfHMShLpkvczlRmp3wYs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6330.eurprd08.prod.outlook.com (2603:10a6:10:263::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Thu, 11 Nov
 2021 14:03:36 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 14:03:36 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 11 Nov 2021 15:03:15 +0100
Message-Id: <20211111140316.1646962-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
References: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0147.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::21) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 ZR0P278CA0147.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:41::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.17 via Frontend Transport; Thu, 11 Nov 2021 14:03:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e214fdef-a5a5-45aa-8a88-08d9a51c0dd6
X-MS-TrafficTypeDiagnostic: DB9PR08MB6330:
X-Microsoft-Antispam-PRVS: <DB9PR08MB63301082248A157DB5EA5D50F2949@DB9PR08MB6330.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IfL+d0WYtbAtp1KYRUQhx0oTHmsaqBCCV6hFz9C0DlZ1N6rrV7MLa53WAM++vdsAG3jvYpx6VaTxqqhT6MeTm1VQ1UmOuAYeOqMOiP7Mw2JG5q01mDWpCbK8WAGdgxy4F3PnJKAuOACyygtw7AOI1uH8uYZey3nI63fElUQhsPxAC3Oh++hmKHRGpoC2gZVu428zII4TrkeCjCb1KGs3mYYraTwiQhmx4OnGVyEzJnkhPWdrydujrwRI8KaOaR4BbbnR3tx3rg9qoNvw9/MdmybNw/LFy61C/8lyFeet8A75zlnGYdts8H6jmgytsTfqlksnZcDdA/AaglJO//GaM0RmMjr5vU7q/05Nw+HVb2zfFAvyXpoTzAOdcsXApTaL0ksz48uZg/Ma1j20r/Q4wItMNlHKMx8hqTXLoYHTfBIyOXZmzlWlRl4KTzCsHYLCAxvQXeqHJtKM0NmuEhHmsIBdcKCCQF4+ip9yR2eb/1M2eEPjAEPGrAktZJHuJGFXpeng4PWSC3S/wc75gbCYrBVZRlwpP50H2t7z5KRu5IWDZq7JU5FdOKIY9AQuQenPS2H/qlFPGjPrtqTA8Q/3FcxCFYqL8zvorISZewgrGxD39hVjCaTCQKWUDW640x0pAJ7mv+x02GvQ6iwM8PcvuA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(39840400004)(346002)(366004)(396003)(107886003)(8676002)(186003)(38100700002)(6916009)(2616005)(6512007)(508600001)(44832011)(4744005)(5660300002)(6666004)(8936002)(2906002)(6486002)(1076003)(86362001)(52116002)(4326008)(66556008)(66476007)(66946007)(316002)(83380400001)(36756003)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9uqQzLFvnlF6FmVsvpsLNo8VcXAcj4oA4/kVFHIylK/EtFQSLemuPBO0+kPU?=
 =?us-ascii?Q?sINLkS8gIgntnTkDIL2AIuF3oFtlfHOKr6YQTvZOqavuP1bh8nXM2H4j++Hg?=
 =?us-ascii?Q?NqcFMp3d/sRbc9CF4xhG62sf/vzj6JmgwLiYBnNHhOyV/hv5BRjanYlt7vxL?=
 =?us-ascii?Q?o/L5j3wte1ZYgPPWTBeHXYO4oex8qFrJc8DSvNWnHTENHu2usY5evHuc2Daf?=
 =?us-ascii?Q?J/AfTvTMom/GcL0I35GeLyxmPWf7yuTJJgh+aKnMinZYhjI25b5wJRKNDwwX?=
 =?us-ascii?Q?w+Om558CZ5odzlmvKEt/WGgcD7HUGdJO1Tco6bjpQ+7/92E5rCzqiQaO2f1q?=
 =?us-ascii?Q?qXYVhxB9jxidrilwx0bBm7FyUJNXX0v/BBK2wW/vEApxZJM1MkugsmolsNzn?=
 =?us-ascii?Q?aRtPR84ulkiwVJXqDsqzHAt9ZzpKs6ThK8/O1rY26EcC+MmjHRBAOJuogxcB?=
 =?us-ascii?Q?nDPiMU+G8SrdTSdGEwJmtcjvTXEN/5c4p2+js+eWkQxfEyX5SQaOiD2MO/hs?=
 =?us-ascii?Q?997CKKU933Dyd7Bhjn0tK5Qt5SqWzcKIqBWmI3I0J34fe6HaCaYKMVAlTFPE?=
 =?us-ascii?Q?TlCM1jQd98LwW3tsh35OhwByvzQF5Yr2pDrWRp4573kQQ7MnqrPTdbkTCoY5?=
 =?us-ascii?Q?Qcy43B1SvbqSJByQ6c2lQRYjGh2G0RJdaVof8LQicqSp6NzolPUUqlF/TQBx?=
 =?us-ascii?Q?wQKdiN7KllL5r1JPmuXBKSwM7mgwCZ/A27yXVv0/OcbDiMd8aQDqqa+vaRi0?=
 =?us-ascii?Q?yDZ6AOV6R0yoPbK0EyurfHq/0+DqYX3+v1UPM2bzc+7VxNWoMGRfGfyt8FwY?=
 =?us-ascii?Q?JQdh3wCOh/BoC00QiIhhD7vHIyCSTXj9ioEzS9N7MhVMJLadnTSRF9fiKjG8?=
 =?us-ascii?Q?CFGHSuev0gdzQhvG7F/eqtmdP4g5IcSYkG88Im7njcloTlYSjezABNgd6hy3?=
 =?us-ascii?Q?ZEb5RRylkuyd61lG+PqdQCPL9beJcbC8iN984aADvy8V0tNJhDhGdKNk9gdZ?=
 =?us-ascii?Q?kMpQga+/uiq4jJoMU+5lpzgHislm3B5l5WV8vLXC5MRJZigLlXb1Nl2G4ySo?=
 =?us-ascii?Q?6SXiXC9W934mQrrhIn+aE7FmosYcGR9O/tjqgEWKoxb+mRFkHIYZNzH6zdmg?=
 =?us-ascii?Q?TUqysvx4Id5QTF7bbhkdt8rX/XTAfBFT/D5+gAA8ZnApIdarXQrGv1x3sht+?=
 =?us-ascii?Q?kPKIJ6xjYNWHCGURMBKo4PsNtA3qnROsCgiLGDsIMHBRkwy4bX0H0g0zU4BJ?=
 =?us-ascii?Q?RaPjNyr8bXMIREcOAn86erKa/ogRiMZOw1lKe1Zj1aL2q/VTNywS35Qs7UGz?=
 =?us-ascii?Q?XrWRZApXhyvT3gwi1dYHvMqpPfggzQZUUMvjb3Ef4CB6H1QXkcxW/Ze7Trfu?=
 =?us-ascii?Q?2cMYtHoyw6vmMZhX8fOaZxCMBhxicJ7zAJQ60vUVbJf/RK7DxwJcOULYUN4W?=
 =?us-ascii?Q?CBcvmAsyGmnnIwoLRysJqeUe5+QOW9lPUZsOfVfbhPN3qYCbjz928Fq6iqQL?=
 =?us-ascii?Q?hVZaLmv1P0M/uAyqYRX/DKyf7XyE1oWSHBzeEVLcOoT4SWD6+VMNN3FtM2y3?=
 =?us-ascii?Q?gIPDFmejzP2CjsZnSrrRKjONK6iigRbmXP4Eq18CFvN5AHe79Eeq1+mTn+3h?=
 =?us-ascii?Q?/duVRpyPvjYfrjTe+ZLkX0EvP1R4PvZVxkXOwqX9S28oQQ0F0bRTveHBy0cz?=
 =?us-ascii?Q?+nQ52kKn8geqmsD8YmdaHS8WW3jlU2hRkIAffki5Use4OnYL9vr6ui+7EJoW?=
 =?us-ascii?Q?mhA2KDfNkg=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e214fdef-a5a5-45aa-8a88-08d9a51c0dd6
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 14:03:36.3594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B1V+zBDpoThF7jW8dyJREG1yy4UU6W+55v7DZ1LZOhUWm/TyCKEn/lgphf9axa+lm3N8WiKcgLCWQEu6XVT2mwxfRxpwgn904LmcH70Atx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6330
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_060338_971527_687081CB 
X-CRM114-Status: GOOD (  10.04  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] net: designware: rockchip: remove unnecessary clock
 pclk_xpcs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The pclk_xpcs clock is not used in the mainline Linux driver and
only rarely specified in the mainline dts files. Drop it in order
to avoid errors when the mainline dts files are used.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/net/designware_rockchip.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index e4f74f646..7acbd723b 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -44,7 +44,6 @@ enum {
 	CLK_MAC_PCLK,
 	CLK_MAC_SPEED,
 	CLK_PTP_REF,
-	CLK_XPCS_PCLK,
 };
 
 static const struct clk_bulk_data rk_gmac_clks[] = {
@@ -56,7 +55,6 @@ static const struct clk_bulk_data rk_gmac_clks[] = {
 	[CLK_MAC_PCLK]    = { .id = "pclk_mac" },
 	[CLK_MAC_SPEED]   = { .id = "clk_mac_speed" },
 	[CLK_PTP_REF]     = { .id = "ptp_ref" },
-	[CLK_XPCS_PCLK]   = { .id = "pclk_xpcs" },
 };
 
 static inline struct eqos_rk_gmac *to_rk_gmac(struct eqos *eqos)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

