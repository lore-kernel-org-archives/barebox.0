Delivery-date: Mon, 05 Jun 2023 12:12:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q67Ca-00Beb5-LR
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 12:12:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q67CY-0003iN-Bw
	for lore@pengutronix.de; Mon, 05 Jun 2023 12:12:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T3YZNMv+3n0JmbOtey6SJwW7vl7KVCXUKmxYYmaJe9Q=; b=Q0QlDkfcKJh9BCGuzIE3QwWom5
	ml2AOPcIWNp4IsGi/MLPljidq5BEcoAqoXEokN33T47oSMTnyzYLSpQm/QMVIbqauio/P9yQXW0g8
	UQupatPe0QaDxmHtOOFgGapTQay68iL6FHAubZimRIymNq0C5QZGeL75J7lVvR06vwxXN458j/luE
	YNHj7+ToFCyyg9adE4KWhipiB6aHuABVFxa5UMMZ57j45ViOOt2sOFFCjgEFQvmBW6/Twnu5TF7lF
	OU4jBkvPpBlnkebC2lGDC30Jtm3b0hc6Z6bwvgOyoyfDe6gotUnrF2jbxv0IDddlAyeIgSJXeHo3W
	n3qDFqqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q67BT-00EyCi-1w;
	Mon, 05 Jun 2023 10:11:31 +0000
Received: from mail-am7eur03on20611.outbound.protection.outlook.com ([2a01:111:f400:7eaf::611] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q67BQ-00EyAn-2W
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 10:11:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cVJZBVAg1dvH8ATd1DV4w5pCt5nbFdMKq3CYqeOaBNw5kCFh9b0j9NBP0mTC/MurQNqWnutoEzKfaMWyN3HUaIJM1jxYZPRNokvz2++nF8ZCWF7yHN6AH6SzAtb+2tV0PE2TMhXPwN3zWbskFO0ApMRICT9Af0JkKCMz4fgrqEBrHRdVoboNRtRVM6XnO6QWQNQZ7k7+sBZ9GqkZQZLl//mhm+a/sCVDP2uumLRCpzCeYYncGI1VinrOxG/VCAG+TCpdgQi6pVHSWRg7WRUknY+Y6iIm5MFBWy/3RqcYkypmma11l60WBic5v0srdj4MbnKLQIJdztwzZtb4KYsECA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T3YZNMv+3n0JmbOtey6SJwW7vl7KVCXUKmxYYmaJe9Q=;
 b=ZCIm1oFF0V4t4qDPN42tkH1JZDCAEWBOOWc5PkpvOo39Hjx2L/p/JCtgQgsRUMA/fYS8VeiEW0ysxVNsXWMUXxkeavB/QSA7lmJmmTQnDayOi4rQ5Uhsg1afbAGWQGKgjJMNEtKV/m1tLLZCR5nO3fePZuIqnYA1m7Jqq1Pq5qjSZyIz0kL35MayEbzraHO7Vlg3w83oSDfcG1G/vKQmnVMrqHS/rjCxfrJFTRDbaPxElXSv8i7qcGxdwY2LtU47s2hFORvhzhLtQdBPbf308KROc+NabonF86XwgMZBan1c9ZqVjZlgPUJaprPXim+5kq1B5nkeERwIipMUFMwSsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=commend.com; dmarc=pass action=none header.from=commend.com;
 dkim=pass header.d=commend.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=commend.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T3YZNMv+3n0JmbOtey6SJwW7vl7KVCXUKmxYYmaJe9Q=;
 b=OJuye48fgwS2hBgJ0dbzCpM2GiwNpCE6eErwAQ1ldm7fJs8rFMNx/I/CLLphpjL2ad5SRXSSdInCfM3bXNs0MRwa2Yx+2p7AGPXu4CJv7SF7RknRu3c0RUttNj2cD3MN1XMRudKyDJ8YQ4stj3u/8MHhMLzp5prgmm0W+kt9LCM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=commend.com;
Received: from AM8PR06MB7505.eurprd06.prod.outlook.com (2603:10a6:20b:365::12)
 by PA4PR06MB7213.eurprd06.prod.outlook.com (2603:10a6:102:d7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 10:11:14 +0000
Received: from AM8PR06MB7505.eurprd06.prod.outlook.com
 ([fe80::2d6f:2fe3:1e1a:e456]) by AM8PR06MB7505.eurprd06.prod.outlook.com
 ([fe80::2d6f:2fe3:1e1a:e456%4]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 10:11:14 +0000
From: Christopher Ebner <ch.ebner@commend.com>
To: barebox@lists.infradead.org
Cc: ch.ebner@commend.com
Date: Mon,  5 Jun 2023 12:11:05 +0200
Message-Id: <20230605101105.485283-1-ch.ebner@commend.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0901CA0106.eurprd09.prod.outlook.com
 (2603:10a6:800:7e::32) To AM8PR06MB7505.eurprd06.prod.outlook.com
 (2603:10a6:20b:365::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR06MB7505:EE_|PA4PR06MB7213:EE_
X-MS-Office365-Filtering-Correlation-Id: 6702f452-5763-4f19-4927-08db65ad31ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HS2fOQM1h8cPgH1zNz7g5UaAWKEC+JzZWBluIOpQFVbzi+MpEJfMWXk+V/Ih4jf9wlNluXvMj1Fa1AUn82Za5eo5xZUcyxlQIfwb5EDXknEPenlM+YDPC7kzq574XiRID1NNLccQqD4Idh/l0Q1WjBPvolu6I2+evoPZeldzJiQTs05GfLhqtbkKpQydTuolClaGUIsVac+kIyEYYS16eg5p89ZlFL3BZF/otstEI916fZXFYFdQ7795Ax6mCjSgUDu8vpWiTdQEl5hu0bYZpUuz83xf8qjVvGFSiuKGsxt3SPvocIMf5aqpnZpuRLbmga32scmHJvbo+Ccm1tqCpU2aiY3cA5670kamhl1UQGA/cEWvFD2O02hdeJsJ/w3Nca9HLsivHXZ2hclkkHIApNyhlGuN7eB/zbQZMzSP65PvBWLD5VPZCTiI0T6fcjSbNDO7L8yPSrLtREZb5DP5qbDgWALu9Fat05pcTiAcvXafRs1F57AWKZaLDizPcFShaG07VcuF4/LEvdDV5B9AHXWtoWkomuhpiQiB36RCTgZaaECVnsnipgjZRAQxbVZJv0llBuU2TADeYgkG2oj8igSfBRcjefuAbNYDye/8N7EE4qhQRIMg3lvI4pyTIj03
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR06MB7505.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(376002)(346002)(136003)(396003)(39850400004)(451199021)(1076003)(6506007)(107886003)(6512007)(38100700002)(2616005)(41300700001)(38350700002)(6486002)(52116002)(6666004)(186003)(26005)(83380400001)(478600001)(4326008)(6916009)(66476007)(66556008)(66946007)(316002)(8936002)(8676002)(5660300002)(2906002)(4744005)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1UAqiIRw0nZqYhcIYdM8xYl6t4cscuRD9BGFCRj1L40tY8yw+yMZSnOyd6/9?=
 =?us-ascii?Q?tdYvYb/kD8wkCTVHmucyQu23OM/8pWQ1gniIlUKQl/22jcZRD30rcplxFmPr?=
 =?us-ascii?Q?MEWSpnb2cN0QMs0Juk/uDD41kgCiWhigBhETOYopLoemMSrTYSfftyXOi9j1?=
 =?us-ascii?Q?R5f4RPS5OLLrB+T90Zq/YF0RzCxn8cUhCWWqyDvQ+/GrQ5lahGz8LzhXIHj2?=
 =?us-ascii?Q?xbN9oTD9G2h2MaHWVNQjuSDHXbFCD8QQKnfZ1Br07qhorErhpky0Khgk01bc?=
 =?us-ascii?Q?Mx+tpy68o5Fo2bhD/xr8pDGgXxVbMS9f3NTCc27h2xHSLdqgS845NOGPBezX?=
 =?us-ascii?Q?NhteYO65c+ZRv5EFfOhAE1OA6WTSfszC9xaoZLSYnIQdw5COgY2XFfjjSm6r?=
 =?us-ascii?Q?g4/tDuBb2aOJpSbG7pKLQukHgpfnoKedIHdJIkn2denE7dVedWPB+FqHmG+m?=
 =?us-ascii?Q?XE/S0nJVAAYBPHkJVRflAyb/2/6sfSIpomk+jzbTa+NoQCYJWK6/bFAtVdOc?=
 =?us-ascii?Q?OtdsNvZuNNFnjgxkkuhfNX2cNnDbirIEtibL28xaFFybmeUFYnAncDfpO/xm?=
 =?us-ascii?Q?+2XNxHWkXXY8Y8dr0SGHCmk2EXVizT5qOf7VBzqrkEhLShAf3F4pMu3wocNR?=
 =?us-ascii?Q?E+mH67WnY9Yij2Rbj247c5uvvCZyWH9gu1T2u9oZyOGWwWLOF11xpAsc8EOC?=
 =?us-ascii?Q?lzGJ6LEuhj+2bSvYcOkIONTR+8WMT5tbCO5WgeO96cmWoB4Q7kC/hLLqA6hA?=
 =?us-ascii?Q?CCM4ECFiQtXnO5xYHiLt7rbCeeDB2uOC3DY8UNKZfGNntjwLcWPb2ad3w4n6?=
 =?us-ascii?Q?5txu9eOWG55yUEtylMFPHcbjSn9CJLjtwhcsvF3RZlqBlsHEm+HZzkN/Av4r?=
 =?us-ascii?Q?qKMDO/mf/9lWP5RCRBeVcFxIat8Q8dFn3m4GVHiFWPWXD4hBC+ytSC5jFeC6?=
 =?us-ascii?Q?DHE0C45oItoZYe4NSdt3QNHySIh8vQSSUWP/0TUZ5VIblszetnMQts5s1N0M?=
 =?us-ascii?Q?yyXs+UycYAELLPLtfd71IStVkae9+w8QGNorbb4w0HraVms13LS8mQYRIEoR?=
 =?us-ascii?Q?6pJgoexYGYPe+lwlgHsBlk9l9Jspu6b4qKXvbOkf8cKS09rY7JgIKoTdpRo+?=
 =?us-ascii?Q?vY7id+PuPn4Dwld8wHZ14TxWY/VfP2hIkYsgMxsqVnn1a/KaVxNlUDX9SUDP?=
 =?us-ascii?Q?wW0pLibI6Ecnaczx1qXsdB0/5BFoaqWi5ZbWDKirY2zzgtmgXQ5M2EYoSrGa?=
 =?us-ascii?Q?c3n+miR0NbTGPP6ZsC6KT+VKaR7XIu1MbwWyxXtnsWm7Ux89GhVQZhHFVN7o?=
 =?us-ascii?Q?8+QSudNNNf05CRNAJX1jyoMLQd0gR6+cC6KzbTorVc5vv+zYCQs2yWB+KXHe?=
 =?us-ascii?Q?H/N505Kl6HisiEqEbSjiAPf/erU4jHI5eeexffqgkYLNdqDN9DI8KS+QuvOy?=
 =?us-ascii?Q?t81mTqOaKRdgTqtboShOh1dD103UcOKf8q0XFZs1q1eWUgkXFQqeOoN7ay2I?=
 =?us-ascii?Q?vaJRlQ2miosoLBXEdZzP3VuOmtNQ0OTFgCrvB4HJf1UpJYtNJUi9EDuZPJ4/?=
 =?us-ascii?Q?1dtFrLQqzf24Z/1j0JPVxFTLq/3LfkM8dkvwWbmD?=
X-OriginatorOrg: commend.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6702f452-5763-4f19-4927-08db65ad31ca
X-MS-Exchange-CrossTenant-AuthSource: AM8PR06MB7505.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 10:11:14.4003
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 13b1ddb7-5645-4e7f-be66-3171548559da
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: azhuB4yHX2cWAp3FMzSL5sLLimtD1/d0BAY0SueGzKqJAC248El4V4FP6eU49XYCwDuq7y8019V7Xz5DNuFo0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR06MB7213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_031128_899053_1C245743 
X-CRM114-Status: GOOD (  11.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] partitions: efi: Continue partition enumeration on invalid pte
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The efi partition enumeration stops, if a partition entry is
invalid or non-existent.
Later partitions which would be valid are therefore not enumerated.
This can be the case, eg. if a device with the following
partitions is enumerated: p1, p2, p4, p5, p6.
Skipping the invalid entry instead of exiting the enumeration fixes
this problem.

Signed-off-by: Christopher Ebner <ch.ebner@commend.com>
---
 common/partitions/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index ffdbd9a56f..0411a8b248 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -460,7 +460,7 @@ static void efi_partition(void *buf, struct block_device *blk,
 	for (i = 0; i < nb_part; i++) {
 		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
 			dev_dbg(blk->dev, "Invalid pte %d\n", i);
-			return;
+			continue;
 		}
 
 		pentry = &pd->parts[pd->used_entries];
-- 
2.25.1



