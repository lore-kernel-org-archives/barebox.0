Delivery-date: Wed, 14 Jun 2023 15:53:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qwg-006iuX-Vv
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 15:53:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qwe-0004pO-Jx
	for lore@pengutronix.de; Wed, 14 Jun 2023 15:53:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8nzP+JdU0ubwUeO2MjsR89pCcSTGT92K1nHyjUuy0Qg=; b=sd+4Ku829snEekjGJthl1j1LwA
	ouBDxks3qYS1lfLXSf0ccVHjRsNH0w61EbWet59g9CY+aaNomoJrUJ/sdcI7tSqsdUX6K92tjt/PC
	9i4ignAwQkeed7wDWKXcNoZ25M1pj8BY2hHN97TRDIxzhsUbZck2lamOWM6EzvGk4yS6qlphn2FdW
	bE9A1Xib2aRfPHzSZ7hrT62Zgrd4O3FwPfLi0KJW1u79F5XIss1hd3BfukwPSC+TwruvQBqsZyKT5
	exy29/n0ve5Z7koHIfibNe15URV8JWknoTc3ZhVTnImhLUNDznKhbYNzwKSyGiqvdsGGA5TjLSmtt
	HRCbCYsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9QvK-00BoL0-0V;
	Wed, 14 Jun 2023 13:52:34 +0000
Received: from mail-vi1eur05on2070c.outbound.protection.outlook.com ([2a01:111:f400:7d00::70c] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9QvG-00BoHx-2r
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 13:52:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BtVD5Buei3LLK+lfxzHRSSQaeB79rHtpQatw7wqzjL4DF0IW0STWtXfxwOVvkWlg1qoMZPONwN+dgpiJ3xVlKbvt3MXkSljQquxzxGQlEqteFcEJQJ5M6BS8n0Y+6AzR76H7i+zL14nU/qYZksQSbwkP6fddvBu7hYM1XwoeKtDAeWXdwqhLJBsUIOeF5pCuHG/S5QjO/PZrVrXaCBOAAEqQYk4kSz8c0tLYMZU6B7sFY3p7hQae86+KW91Aa+hrJiWxOJ9BheJzIb14bCZMO9LmMiBqj7pQs3dbMGRlYH9YLVq5RXLkauteOkojGEW94T2QIVAMoZZ54boElR302Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8nzP+JdU0ubwUeO2MjsR89pCcSTGT92K1nHyjUuy0Qg=;
 b=hNHl0aVsYP26e0kTqsQ3QTePg3trp53wKSI9uSC1VBJT34CdbFk10r2J9l0Twl11HYkqhgwTe4fmA0uk2GqdDPNeQOVCU2+v6uGAtSVPrwglbvs339bmntEXfn9/DIay5jlSxDq66ibm2feLBrLM6UaC5EiO/SojW9Xs0sOmf23mJ7XVrH9AOi37Vwj5ROx8p6Gh1BcyO7GonqyKNi9nJWBbM+otQ9aQahpAu8Xd60RPDCWefSdOsDPXzUyxMEkmhg4SYQ71butGkv+kLWXERqwCHOY2d90CM+H0rwQU9TtAxiRL8ZhnU+9BlkGWINsQa1GLSFUgFLGn2RmXE1ROIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vahle.com; dmarc=pass action=none header.from=vahle.com;
 dkim=pass header.d=vahle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vahle.onmicrosoft.com;
 s=selector2-vahle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8nzP+JdU0ubwUeO2MjsR89pCcSTGT92K1nHyjUuy0Qg=;
 b=Z0V5erRHS8wn1VojN2peAw0ZgcTITmIlpKDCHFOQsxwZwsu6JuhkOwmCwZx7JMr0wT/ngzFhFJdovcg9zYfdzfQhZhQ9BDuxDd49hrx5FT0QjxkpVBiVHQlL/p9kBe/RWfAH4HMkLuxtNBae89CVHAQt5k+1yFsPkuO9zF5sFX0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vahle.com;
Received: from AM7PR04MB7080.eurprd04.prod.outlook.com (2603:10a6:20b:11b::7)
 by AM8PR04MB7986.eurprd04.prod.outlook.com (2603:10a6:20b:245::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Wed, 14 Jun
 2023 13:52:17 +0000
Received: from AM7PR04MB7080.eurprd04.prod.outlook.com
 ([fe80::c265:2c6f:d72b:bb67]) by AM7PR04MB7080.eurprd04.prod.outlook.com
 ([fe80::c265:2c6f:d72b:bb67%3]) with mapi id 15.20.6477.037; Wed, 14 Jun 2023
 13:52:17 +0000
From: michael.kopfensteiner@vahle.com
To: barebox@lists.infradead.org
Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Date: Wed, 14 Jun 2023 15:51:33 +0200
Message-Id: <20230614135133.59312-1-michael.kopfensteiner@vahle.com>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR0P278CA0189.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::6) To AM7PR04MB7080.eurprd04.prod.outlook.com
 (2603:10a6:20b:11b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7080:EE_|AM8PR04MB7986:EE_
X-MS-Office365-Filtering-Correlation-Id: 2338f0d3-bf7c-400d-dcab-08db6cde9124
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ivwVBsmj48rwmxesYQBWPk+4njym2acT5myuruG2HSvfhUdoBZcRE6qbY77DBsEleCsAO2/CWR1JcmM0VXAtycbzJLmUJXwF7FGdRWSdwDmRz/KjrlBuYcTM9h2lI2LzD62mDG7p9i8Ytu4bmLE0IBpr1auwv2Sk4vA8ALM3rkFgh8j5rdILlVFIjlp5nmQfYWMQkC9E9TFKvsXjVLBMHqm/HZJu2gGxRfQEvPuYAm8vAzuM8Us0bjs26GD2LbgBBs+ts+AIFyk88Ib0v3WrJgKkZGBeqcIY8IhLiJz8CuBSg1KH/SUcp2zNsGBeufvAaZftrBnV7icHA3+D14GhEcXy2LIVLrf6o9DMs40Twt/9WB6Hb1B5xf1T9GD9pAV6r3K7WCmoWurSw4cPJKlsog7RfZ/XKoM4wJ5fjM5q7YDt1Y33F50yoKAs7lotJKnxG7iYlEECa2/XtwmGUXWtVmgkF6irKeUBtpRe1tpH+7BpmK0n17Axp9CEZocAwT5YZj9EbIsl3JEIq+XXBxI4kYg/mFY4OH2FZtcKjZ4vV6hom4pZ052yHMNCrOEO7wa2rPf1dnbliMJQuSx2JtSh5gnfU3/awzRrpAuEzz12JrHK5Xq6tVZZLjxEKiPn91aX
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7080.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(396003)(136003)(376002)(39840400004)(451199021)(83380400001)(5660300002)(186003)(6506007)(2906002)(4744005)(2616005)(107886003)(41300700001)(6512007)(8936002)(9686003)(52116002)(26005)(8676002)(6486002)(316002)(6666004)(36756003)(478600001)(38350700002)(38100700002)(86362001)(4326008)(66476007)(66556008)(66946007)(6916009)(1076003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gb/LnSzZ1ZDsnEg3Uowzfia2rP8x/XsMN1/igG99M1TDk02SiQDn9MdmAVw6?=
 =?us-ascii?Q?0cU0m6OTplZiyfTSJgasR1fzvdljOxoblGi7rdVcl1Z7vLbxerojSdrrUCTL?=
 =?us-ascii?Q?wpg2WH6/zE9Wh7wkW4jK8/S/Z0JcoUwqMuBhej96eyhcQghqBCBdFNxxr6cR?=
 =?us-ascii?Q?ZXzNyaF/C87IVyzrIfw/4ULy7vW+UYbdwLOQ7hI4CXJRig0SX1KuaLYzWVQS?=
 =?us-ascii?Q?7iUwiTwKccjw2sZZb6k3IkcUDZzHpHk3WMuiITOzDegy5EIZpcaSXIMEfrcQ?=
 =?us-ascii?Q?IudUeHhEiQcwCMEyNHLp22B7wvbJhJs2+Ct8K6eY/JhFWzM0ATdlUFXArMZe?=
 =?us-ascii?Q?SUe46rzRwIAQ8Z/nDy2gprr1JebR6NNHXs0pTvr7Jo0ZJuY3TLKhzSq6IK5i?=
 =?us-ascii?Q?Q0U+gInmzK6VnYAJ2Oz7Qh9sCUjgkwZlKwLMss9qz9Gb2HXbCKPcF7NNvvkW?=
 =?us-ascii?Q?IQtHWgwoASDlisQJY0CPtTkJL1iwr4WEjDuPzRa+KVkz7T+FSq9ti0+Oqpvr?=
 =?us-ascii?Q?jnUXZl4LzjmppwyasbS2K8dtl7bCf+U7mzGoc2kKDizbieZPXeIiJw2xa5x5?=
 =?us-ascii?Q?Jkq0mEWsqBLhg/Zkd8jZ3lpsv3MGdgDc2sahqClJkI9i6PRsxEYQm4s3Q5z7?=
 =?us-ascii?Q?MS3V3H+JK5oFw21qGNQhAiy0WkvtVFRZUF2Hkl3N1mjx3leP1i6pIU6Kuk1k?=
 =?us-ascii?Q?dGe7egRIbEGVfDnBZZ4Cfl+qN+dZrmZX1uGjsoFyiNDK5llWnJ9SXYHj8BCL?=
 =?us-ascii?Q?kLBH845GAA6ltW/mMQqnAf21IY9hq0oGTLn2sOusqHYLJzoJdSs2UvDB4RVx?=
 =?us-ascii?Q?5bTbgydmNdOvDjtjYmTKFEpLifup+IWgTvbMSr8xWNh2/9e3EZudpyJNXePW?=
 =?us-ascii?Q?hoXOWVN773Jx5zbMBylBRfoT/OPzj/z0HnFcLDfl6FUbiND0Z7JUwzpENSvR?=
 =?us-ascii?Q?n8MSZXsl/8TPscNbzLcex6cZrXHjnwT/6qFdnax1AATPcdP2PkDkmECFb2RY?=
 =?us-ascii?Q?CDGeurmIPoqf2AjFwJQSef1F7In2Z85XGkQZ4G4q9eT7gtwl+L2Kh10lTjXl?=
 =?us-ascii?Q?pNhdIlR3zcxWKWrDQ2Ej8SBGKvCJc4+XzuQL20oKBbmvDQ+7OMnxG0RC8IJ+?=
 =?us-ascii?Q?sOiubWerYOMfvFyuS3pyGuT2Fdq5gRHFd/xQdt8WotAiJ1IvKvy1kGxICtBQ?=
 =?us-ascii?Q?SCxiXI2DuEYClyQiHNbcttIVuUB6+Oj6o+rVmBHzJsWhT4IdmuyzicidkCAw?=
 =?us-ascii?Q?8U3UMXBBmjAJl/BRwGOOQIM6UauSkdTbHxQvRmBC2Vn49ZkRs9Umcjvyh9Wb?=
 =?us-ascii?Q?A+lf1lzM/pmDSI2p7AMUscnoj9jAvB0yrHvC9HQOAkcwEnI6HApbxAD7MwH/?=
 =?us-ascii?Q?c5mWdu6DRdiy8jH2afIxFE5J5l0Jw0OfTqSpO7PGBfcWJS5MGfSRfvqke7my?=
 =?us-ascii?Q?PVl5eaHUY9uTfpyrvUivBcZqIgPVvPY7C3oIymcDnmxO883G6YYGfyXIWGZ8?=
 =?us-ascii?Q?sQoOjX1P2WQ06UBjSXwHxFIk0XaiTimbuSzX0zcme1uIQDhPmQWzFQ516zHw?=
 =?us-ascii?Q?6n5GBRaqtBoC7sBMOx/79RwIdaoiXTN3jAfAf1ak/OAu7kD/D6Ikz8aNNRpC?=
 =?us-ascii?Q?gh/w34ycc3To7pzga81C5z0=3D?=
X-OriginatorOrg: vahle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2338f0d3-bf7c-400d-dcab-08db6cde9124
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7080.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 13:52:17.8551
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 251574ce-9f08-4528-b17a-70ad2956ff08
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nMkRt6LBo7eM4iJ++HUmfS8PG9TS4YNvtObE3xnClvPdPBDrTEQge5Uigm5/Sk4tpjv3fpvzezLD/xZwSuycfQNiQ8/lqihzqdbCMKfIsuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7986
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_065231_000559_FEDE5A51 
X-CRM114-Status: UNSURE (   9.25  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: driver: fixes argument name mismatch in for_each_cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>

The for_each_cdev makro takes a pointer argument as loop cursor.
Due to a name mismatch, not the provided pointer was used but
whatever was called `cdev`.
This mismatch had no effect, because in every usage the given
pointer is named cdev anyway.

This commit fixes the name-mismatch. The makro now works with
arguments name differently than 'cdev' too.
---
 include/driver.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/driver.h b/include/driver.h
index d33e0fcbcc..e1ee3dc2dd 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -566,7 +566,7 @@ int cdev_truncate(struct cdev*, size_t size);
 loff_t cdev_unallocated_space(struct cdev *cdev);
 
 extern struct list_head cdev_list;
-#define for_each_cdev(c) \
+#define for_each_cdev(cdev) \
 	list_for_each_entry(cdev, &cdev_list, list)
 
 #define DEVFS_PARTITION_FIXED		(1U << 0)
-- 
2.30.2



