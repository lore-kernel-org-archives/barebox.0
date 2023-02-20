Delivery-date: Mon, 20 Feb 2023 10:08:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU29b-00CYn0-0a
	for lore@lore.pengutronix.de; Mon, 20 Feb 2023 10:08:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU29Z-0000Tu-JN
	for lore@pengutronix.de; Mon, 20 Feb 2023 10:08:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3K4qTvbrmnexqQGOGo6UKMAB7ktAZIwdbYS+agqziEs=; b=CT6lhEGeEtPsOeX7CTO+cKK1ey
	gL9DmV0kwoSwGFpeZ/SrQ8PyHmhDYxxRgJtTAg9Q52+ZhBc0ASdGwp0G1Roo5NxajnSEk0n9V6rHj
	mFUabvCG/+zoc4CqSuWvO40uYmN6YGwu2r7IoCDvWvtCUiq3iYlX3tcYhAHoRKQuG86QqnNbeMvxe
	WELv1lHpJ/IXsGrBUXOgTjR+hF6/ZNYES6oPBhG1zsnc52s4g3sp+cAGMtF3CMqS0PCGeutNmRm1o
	I1IMWYjo/A42ZXUdx/qKFxOlVZYopG3nVae7uBAiBstDc56Aqu212x2soovq4Lr8yLDP8T0pUN3Va
	EoaWqgcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU28C-003S2v-FL; Mon, 20 Feb 2023 09:06:44 +0000
Received: from mail-am6eur05on20708.outbound.protection.outlook.com ([2a01:111:f400:7e1b::708] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU285-003S0I-H5
	for barebox@lists.infradead.org; Mon, 20 Feb 2023 09:06:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lVtS9w//91IfPkbaala8NqFBLRYFMhUNapi0kF7OLQ3Y6dyn+9ub89Dp9K0Xlg7POA/KVxYNI7r6AGajRqBiZ2jOUwylVuYqp02BeU6eTAfdyNf5tC0+JE2+iQYOm2QFFZVM/RTQJ9KhyOAzJUYKXslk1xEWjDqW51/T5Vf/CMQeRcXMNXYU7l5xKPup4qG3By9KXOeVMCU4P6+zr6Z9LrrURjJmAf2TxnLXgxFMot554D5khfConzdVn1hYl4C0XsejBbwbKYBnMtqwKkJ4mdHtizpH31yjEmakBSIfMTiQPpP4LUs7ObYVOYt5QQKiEZOVV3n5sS/VoHzjLeENGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3K4qTvbrmnexqQGOGo6UKMAB7ktAZIwdbYS+agqziEs=;
 b=Ediis5fFWFKhsGpZzBilXjzEOfPXw2uMLaaagLMFbnuXxgQqMu8AP9sMEUwBTEVbbtVDvrIombt8VY7m+FNt72W/8dSqt0XLEG8TmKcS0VUNQWgB+//pFjyLoJRY5TLHV/n8pwOrVi8ORXUGBUTIAmtdpxY4yonxwdoiU4YF+CkR7rKmXTn6rSY44xLv7J3tWXWEndPSLyrAOe5GZqZZDm/fFFOvOGy9uDwNTgmvSkSf4Va40GdgIWePB9h+vGa1OIsHD09Ba6HFGiYlRLmV6r1LjTx66qIhTR2dYM41v5jdhEjl+Z8EcXqc6cJQZuOUax8Tmmul+mzh2Ad3hCqfeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vahle.com; dmarc=pass action=none header.from=vahle.com;
 dkim=pass header.d=vahle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vahle.onmicrosoft.com;
 s=selector2-vahle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3K4qTvbrmnexqQGOGo6UKMAB7ktAZIwdbYS+agqziEs=;
 b=K9UmDUqsG2bd2AThYZgVwwtFMulyaMDc0fvtOWzKUrbLgG8G9lMTdiUMlG/dmmSIeUCTdaZm6f8VNVA5ZvWd9XH1jyDSCids6sPyTdYeRKEf9E5lQdUmeBmPJZ5Xpd0Dr49Dfu3z9Bs0997acfKS+eYW8oIsgvg2xzV+8L8zzc8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vahle.com;
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com (2603:10a6:20b:ff::21)
 by DU2PR04MB8791.eurprd04.prod.outlook.com (2603:10a6:10:2e2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Mon, 20 Feb
 2023 09:06:30 +0000
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::18c1:671b:6784:55ee]) by AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::18c1:671b:6784:55ee%4]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 09:06:30 +0000
From: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
To: barebox@lists.infradead.org
Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Date: Mon, 20 Feb 2023 10:06:13 +0100
Message-Id: <20230220090615.4451-1-michael.kopfensteiner@vahle.com>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR3P281CA0192.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::16) To AM6PR04MB6503.eurprd04.prod.outlook.com
 (2603:10a6:20b:ff::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6PR04MB6503:EE_|DU2PR04MB8791:EE_
X-MS-Office365-Filtering-Correlation-Id: 79a20c85-547b-42b1-add2-08db1321c197
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	/l4O6fRnHW5dF+V1rKMgCZPSA55s0VvV9oY8+/YI3VwD/Nn0sfVr5pJi2ZayK/C2Dfs6mjASxNkQxZx6F/lqhxBct70vsvMn06xUCeu9lZDG2VjDBNs5kYjXmDV5oUKpjbP6Q8VQDwrGhX8JH0u/B+4YspD3xazdK9EiIsSHsoRGbIPQKZPYCtIh0Fve3mMUfB6kJvNlCGu3iewMKHini9Mu8LT8a/OXhGmJpREs0BBFac0km/HjD7U+AxUfbP/eGGXreBXshcHDUxIA7QLynWYn6qd1wc+Eu3uUghxrM6kdicnThMEuU9eArwqWK0+3k8RvWEz7T2ZZ+DcOmxwSRu+cn9LyG22oFdUIhiwZl1/9FtQEofTFBkLb8e3lSTcJiklRdLBXS6Pmp6owGJMDyHZ4Ywm+Z40tbx+cYgDRq4i5fwRWNF8b1IntcvARgj9Bw9n7Lx/R/7PV3dkVMf/8ZsDnLns3v6LshdAoifBQ8dUrh9q9Xyp3yQJ9wjDhAjiq4l/nZS+5XPx7zGB1D/VFrQ6VIBf+XdDHkSc4XWrdMmGLhgUhRa75sFfG3lyEtQ+mbepU7dlx6h9HCiweD4IkM6hEwZOQmiLYohIY0hMdZZETQbL5vnVWxN53ub65k/i2YfTb5rTFkD5HQKgQzadjz14CqNKbnAGJzZSQ5MkD2+Q67+yTy4Awnmf3Oaz67UxhycAQc2NyrBw/IMWBBhRUaA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6503.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(366004)(376002)(396003)(346002)(39850400004)(451199018)(186003)(26005)(2906002)(6512007)(41300700001)(6506007)(44832011)(1076003)(38350700002)(38100700002)(6666004)(107886003)(2616005)(5660300002)(8936002)(478600001)(316002)(6486002)(86362001)(66946007)(66556008)(66476007)(8676002)(6916009)(4326008)(52116002)(36756003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?tjLwdf+MKt+V6VS2aCFYZ63huDcJThhb3IFcDZdB8Jcu9AacqptAg/058GN5?=
 =?us-ascii?Q?dXEZeYRat56A8EmMzlqIsR7wW7JfLELthaU5YWYUcFpMV2eLARspkkwrMw3/?=
 =?us-ascii?Q?MbgvPVGIMZuFkfNpG+uyglaCqKazTqkiEc0QwrrcATma39cml51Em2gOt1/c?=
 =?us-ascii?Q?lK2Gw1nNSvA9MQITnVUMkMc7Jr90XL44YxNVYCUlQvdtkiHJYc+KBTqZxpAw?=
 =?us-ascii?Q?GTzvvFF08djoix3EuEZSK5SyTUu553Vcpqh3jGio51VsWX8eeSwjXJuJpxmJ?=
 =?us-ascii?Q?aM/Hxyr0sV3M2hhwkYIegOJ3R2dJo73yaXP1W4NKCJZTXoC8lFAEBE718otY?=
 =?us-ascii?Q?fr9BKtbdJ4ytgdYEHh/efthhozkKpPuWtoKkD2FmZVIjTHbhucYyroi6B0hp?=
 =?us-ascii?Q?0p4lndpZrM0lc/jm5mcnIlqlI9k7FYJcmR8O3C9RsLbuorxw0xbKRZJa6ut3?=
 =?us-ascii?Q?Ewp0uTUF25YOPKBvsaEZ7gcwr5uEbxczswRpDmszFX+BdtXxIAT3YCrRsUxR?=
 =?us-ascii?Q?qqzcWyn83ks8onFK2kFzvkkd4V2fALipZBWXQm1qKVqm4zSgWdZtwfJZXF1R?=
 =?us-ascii?Q?6J4I7Pzqdjs6SKEiB3Byy+yh5QYszteTC9bFwfoo7rQ3mvcktZ2Xvq0ejiId?=
 =?us-ascii?Q?26YKOu1ACikO+YKo5G3tk0+oVyEfxeUYBV398wTChfAwrf2vINVn9eyASdLr?=
 =?us-ascii?Q?o6+teBjDLGtH8uvYY5UH8cZrCNi6FrgdWjX5kE86DenwLexaFFBJgxN9KLM1?=
 =?us-ascii?Q?V2TTcai2OQhIVLxjiU9LKxCNF5odXmFKvS3pzLaHHPIYhZNzQF+b9bf5cTlo?=
 =?us-ascii?Q?3NVbPg7vb/3lIZw4SjhXoMSHyVyxU+oBkHt/zxdAKAo+lifx1IHX+C5qwy8q?=
 =?us-ascii?Q?N9bwc2EkNi0Dki+HBA85fFQRPWrFkYNJP3BrXrU4E0G+f5G+eeMEP75ODGY7?=
 =?us-ascii?Q?U2VnrXnIF4A64CMit8xRm9g3S36YzGBa0EW6UVDp68/PWL5TQdQzvbyMktSv?=
 =?us-ascii?Q?pxaYwpIkNRFjFY8gkdCBWlYU9/TaceBt574RWctmdB0bXnEW3wbZ5z3mjryW?=
 =?us-ascii?Q?/Ylpcas8mtmlbLAIPHIrelL1oMFp7rGL4LGPs72maHUQRsVD7u0qoruYNxQN?=
 =?us-ascii?Q?ROKQlTAJXtZOdiNMBa5yoeaJm/4kvksoLfKwbZTxIJUXKWCRNDEZF2C495OU?=
 =?us-ascii?Q?wlItF9Y84WmQJ6HrYOBkxnGF/JBVpOV0zeKsNlb37iz+iFI4iMNLD3ivyPL3?=
 =?us-ascii?Q?2H7FY8cNyH0R3s7WIGjmdGh45SO1v1LYKz0mVO6S1L2S4/q4F7A7d1lHTk7b?=
 =?us-ascii?Q?B3XezyK6rhbhGEWKofF8KYSVOWBdL7Iw2GFOZctJtfOf4G8t1ML4BA0ZUdVj?=
 =?us-ascii?Q?P9zaq500UEuj25bPe+kUalmVOLCOdmYkCWuTEvyZQx4LUWD62mKAhHdAbxez?=
 =?us-ascii?Q?PG6RJccqRcKQ/wisH/k/f4TdIeCRkj88wwtnjX4s2mn04LNa+ir2q831axqG?=
 =?us-ascii?Q?RhSoMgjnUZ6k7vvJUXaGMaUr4cY4VJCIuQY/ZM6Sd6H21YK580/7+XXnVv4V?=
 =?us-ascii?Q?koTm2ydHAsTWLjL8Jw/kqwGpNm4dFc+hdUHLRZm32vHmP4+6vKXPJLuZogWZ?=
 =?us-ascii?Q?M8Vj8vAaTRLEbtANL6xFz1U=3D?=
X-OriginatorOrg: vahle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a20c85-547b-42b1-add2-08db1321c197
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6503.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 09:06:30.6942
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 251574ce-9f08-4528-b17a-70ad2956ff08
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AgHXND++HN031mApkugNPimDSz0OfDmivlWSC0QBwCslZBgtm5p1dI64+jo68vxHNBoDeHcp0nYjJGvViTdB1etNBRfvFBsle+IwbL+aJQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8791
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_010637_858510_15FDB53E 
X-CRM114-Status: GOOD (  11.70  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] gio: add support for PCAL6408 chip to the pca953x driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The PCAL6408 chip similar enough to the PCA95xx chip series such that
it can be handled by the pca953x driver as well.

This solution is copied from the linux kernel's pca953x driver.

Signed-off-by: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
---
 drivers/gpio/gpio-pca953x.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index 4633d4f15d..2d3f8a8871 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -37,6 +37,8 @@
 
 #define PCA_GPIO_MASK		0x00FF
 #define PCA_INT			0x0100
+#define PCA_PCAL		0x0200
+#define PCA_LATCH_INT		(PCA_PCAL | PCA_INT)
 #define PCA953X_TYPE		0x1000
 #define PCA957X_TYPE		0x2000
 
@@ -56,6 +58,8 @@ static struct platform_device_id pca953x_id[] = {
 	{ "pca9575", 16 | PCA957X_TYPE | PCA_INT, },
 	{ "pca9698", 40 | PCA953X_TYPE, },
 
+	{ "pcal6408", 8 | PCA953X_TYPE | PCA_LATCH_INT, },
+
 	{ "max7310", 8  | PCA953X_TYPE, },
 	{ "max7312", 16 | PCA953X_TYPE | PCA_INT, },
 	{ "max7313", 16 | PCA953X_TYPE | PCA_INT, },
@@ -483,6 +487,8 @@ static const struct of_device_id pca953x_dt_ids[] = {
 	{ .compatible = "nxp,pca9575", .data = OF_957X(16, PCA_INT), },
 	{ .compatible = "nxp,pca9698", .data = OF_953X(40, 0), },
 
+	{ .compatible = "nxp,pcal6408", .data = OF_953X(8, PCA_LATCH_INT), },
+
 	{ .compatible = "maxim,max7310", .data = OF_953X( 8, 0), },
 	{ .compatible = "maxim,max7312", .data = OF_953X(16, PCA_INT), },
 	{ .compatible = "maxim,max7313", .data = OF_953X(16, PCA_INT), },
-- 
2.30.2



