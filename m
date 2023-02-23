Delivery-date: Thu, 23 Feb 2023 16:38:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVDfl-00H2Xa-2a
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 16:38:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVDfi-00063U-VA
	for lore@pengutronix.de; Thu, 23 Feb 2023 16:38:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3K4qTvbrmnexqQGOGo6UKMAB7ktAZIwdbYS+agqziEs=; b=ms3KHxAZTSvYcQT0g1/t86ORh0
	U6wiNfga6UcVvmstePdRTLPY2qUmQ2x55TYkaAN1R1cpILNQ/tfGr1HFe8z01F22RrpxbbI/13qXw
	M3TKweJCCAiFOFHreffNWvnwAzjwFZWYFrfUH0HfOtQEelIqQXQomvQtBuki46tdD/hrFHVEm3TL8
	WMWrIu5FENKeFGL6gzG7boGdqAULYMYQOydIPT6ckdCHIm/g0XxsUJIFksHbdH+O2DZ3ztdB/b2Yx
	ARE/KZf363x9RbfeTjJXxU8837GHfOGUSJmzgCRDfy4c7JW9rKfOTnuEqscb/tvnHyvwLvA59GCJD
	yDDZOfQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVDe9-00H4kt-MD; Thu, 23 Feb 2023 15:36:37 +0000
Received: from mail-am0eur02on20729.outbound.protection.outlook.com ([2a01:111:f400:fe13::729] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVDdy-00H4gm-98
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 15:36:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=od4NriF65iPxPSawdzt0NRWrd0HhaUGSlrW8GE7m8ukW3VFEzzM6chwImlz+YomrVhcqpHTVj5HitYc3NdBxZ8wkmvd78G+YgtqpEPZfHmJ17Hv18SpEz5BWR7PcgvqGaL1p47yiBeIMcQzscaq3uXOptXQpTYtnSORMpinEcjETpuA68kTDnKNqmfVjwxsuZ9IkrfN+4+Isxgh2zNayXM5kEQJH1nn+IiaFHiCmyh/8cWDx4+qBbO/IlDp6B+Yy5QFVB6wUO8WGZrStE1YUxStmcSp+THrpANdU4cBgrHh+oOePoxoDfQaih1mLH+YazIQNgwau1OC+HY6ViWlpDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3K4qTvbrmnexqQGOGo6UKMAB7ktAZIwdbYS+agqziEs=;
 b=fT5oh1yug3aSv/3LghvAvfC26NwKfjnmv4yfjwLJtNmvdu6olBpVRHSnq8O9q/8yhMaC9tNlx/ENwV/MAYuN9nInCWgEpGnREK8rgY+Ct81PIJWTitHLZyMSdqzzrhN3CWon4gMEKxQDoIBSILrrV8KGDepKEXY4nt0YMDBJ0+n0AtGRDkD6k2LZUclEg1Y5et0YiUWciGsr/0C1h4ZnzQSgX7v3+qPOLLnf+CPOH16A/Qm8cfKId8Zg3t7cBO7Q4bS6OTusssfi8OZ3vpApesMRiAMsEljAEqMrW7Zv74YaD+8YqWjcoh9iU5tQT0Wo9J21bhTmZ8CRLyguZ7lYkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vahle.com; dmarc=pass action=none header.from=vahle.com;
 dkim=pass header.d=vahle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vahle.onmicrosoft.com;
 s=selector2-vahle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3K4qTvbrmnexqQGOGo6UKMAB7ktAZIwdbYS+agqziEs=;
 b=MNXR5bx4MNthmXAPh6f5WqeJVW5R6BkWdk/PJYiWeD79XEqUvCn8bksR6FyCRlBRC5YXpU9+tGTVBbpQLuj5LJPTgztI2kVJJwlkNxhdD1k8bGRsfBra+RRo2FwAztLiwg7LtsB7OryPWUPPmhYDxa8jRzanDLvNtb6v1YvlGWI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vahle.com;
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com (2603:10a6:20b:ff::21)
 by AS8PR04MB8625.eurprd04.prod.outlook.com (2603:10a6:20b:428::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Thu, 23 Feb
 2023 15:36:21 +0000
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::5680:8906:65f8:4dc6]) by AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::5680:8906:65f8:4dc6%6]) with mapi id 15.20.6134.018; Thu, 23 Feb 2023
 15:36:21 +0000
From: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
To: barebox@lists.infradead.org
Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Date: Thu, 23 Feb 2023 16:35:59 +0100
Message-Id: <20230223153601.59357-1-michael.kopfensteiner@vahle.com>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR2P278CA0075.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:52::12) To AM6PR04MB6503.eurprd04.prod.outlook.com
 (2603:10a6:20b:ff::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6PR04MB6503:EE_|AS8PR04MB8625:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e6c3810-8ed3-4290-5ae6-08db15b3b679
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	24j7/E16LcQZ4o9ADKaIMadQCQbt5pVvGw+bAAVO8Mv+YleMQJ1aXIsCLK0ONrouxtvjT/o4JPCOeBdi3v1Q100H7OUvtY7Tb7csCJcxBoUuJJ9vSoPkZsWIcarPDaD1fI3KOHLQwCA1N+7zSFAdnHtPZyhCAhViu4Hl2/vVPmfU3YEWm4+kdbkhRdeCU4pwubd1KWWEF8FJ3Lhto/R2oTpQ8M4eRE1rmCPPxUJpvqusTa7kBoq4fX68TTw0e8nJf/QUgImkJWt5sLZN2+hpkIHHeSgjar2X5rPrUDnmPljX7Dz65WJIIXFrj4saGP+gdwEc1wupBJHQUusZ74lUfHaSqBIUGerF13QzM2C08aQ2ITujvPywY5f02PPvQF5k70k/HWKjuzsJN81GrbV9nPHXdUvsWUldG2ooMsXhRiaD3ad0oSIVVHdRiTX2X8aaMDNsl3wqyJhi9mQ6TGmp2UftrFts4+baKzXfrg3GluQ+UKWWClHFuYlHSrG6DAd2VC4E350aQ0BvotHDSmQuKOeyBPPLqC+HNvxFhjgEoN7B6QE0Jw1KVHSBq9vp8UuxnP8aODwrB2elNBIJkAFoGImrY7KKULOluqrNH2NkV1mOeGQf30gz9fRp0WfnoICg8ufa7lZtY6sdF7HBlxtQklxFHTNDr8KIgptsusz4zN34CJrR1K6prjGOsawKpWLSTVskDWCfiuyozE7oADjKCw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6503.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(366004)(376002)(396003)(39840400004)(451199018)(36756003)(86362001)(2906002)(8936002)(41300700001)(5660300002)(44832011)(38350700002)(38100700002)(66476007)(4326008)(8676002)(316002)(66556008)(52116002)(6486002)(66946007)(478600001)(6916009)(186003)(26005)(2616005)(6512007)(1076003)(6666004)(107886003)(6506007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?mQTo0BupQQEtG1CYs30mL7qXJ13ELvwKneizYMa6qX/QJcDPqDW4TD6KqBq8?=
 =?us-ascii?Q?ssTL9yEnoBlYlBjQlAZMbRTSTc0S5l+tDiZB7TYtFSg9G6byAOwFU8JMIDOB?=
 =?us-ascii?Q?w+ctV1aXEmxLj86LuiXlyEOkvGWJe5TpwQDhUKrZbX159QGPbD5QgR+NiaNv?=
 =?us-ascii?Q?IXTEEkGmc98fzPmUApl0o18mgU93ZjfiQTfFvg6ZjmY8XTfpDMQWNCD3yUcK?=
 =?us-ascii?Q?ScIgIqFjp8YoOIGtrdaLxdE8636n20ngIEYIknVG81rXw9Y9eU2Kc8OyNbLC?=
 =?us-ascii?Q?phpBjMQ4QqOeiCAfUmCUKeq5zgy4bCd/L1HLYEWFimlioK4nZCfpiL1Zas6A?=
 =?us-ascii?Q?utW9rBrelAcIKmOkB3Av6/5Vfb2XmX3+bab8AFjzLtJFWi2TmUQg/LAH96MV?=
 =?us-ascii?Q?7bK4L9Z4vmNqSdRfQxCQVhSUBfIc+lUaNBVXoViOwIVWHEdLfLzzOHi5iqZD?=
 =?us-ascii?Q?vFIYrsdmI4ZLAP6Zf3YEFTcDVH5lk5w+mSpv1JLxYabhqpnqTlxbXwlOIBUM?=
 =?us-ascii?Q?03x7q9MRIw9lUJ4T71z8pnQX5Gpq78e1mXDBtB522oQ0noQu2yIgjB0PweMD?=
 =?us-ascii?Q?syTrF9OlfbviZTu2kjf3DobzEB5q4Ihhk95aZmaGfFVQ0hocz5K3Kor3ChR3?=
 =?us-ascii?Q?QSgM8AyP+ov5PUkSUGY+e8HRYv40WhmmZZh/qXMEhgoxm5vNghvZUS1sF7ej?=
 =?us-ascii?Q?MAHb5xPILHZ+SIeLBU/DNTz0efkrnX6kKMj78Ww2YTbIepVcRSskihpnPE/1?=
 =?us-ascii?Q?xO1PNjHEPlSWqNYYQYHNQ77v+0/0dcgh/vRfM+hIS+qgBfMZ1g2LIpofHEHb?=
 =?us-ascii?Q?2EPsOVpmongNlfPznFxjy0t+BJahm2rNFtU3Q510e7Ze63hMdW0zQ0QWjssg?=
 =?us-ascii?Q?MNzI8JkOCXW6q3ggugLmRof/pNyFqz5MW6p0Xn8u+WmF+adaicLfbbdwyIUc?=
 =?us-ascii?Q?SGt5EyKzznHud/YTiVmFcGJRcnD6fEMjPOww9BbXZuFSBFSB/xllmogO9SE2?=
 =?us-ascii?Q?JpmSo46IwE5Mz/bodkKRsbXCHwAtZXvqQhY16MPekEY+h9yAI3WIAZdwzRf6?=
 =?us-ascii?Q?Si6ovw+FrCt7mvk/WxAFr7ngV1xpVyMN8m94K58lgrYvaAMRGV4IgJmpiv2i?=
 =?us-ascii?Q?ZaQ+PYUMGu3m/JeUunKaK1mZkLGezRxlB9wvwRd2meqNrD5ZJ2b/6R9ogfKX?=
 =?us-ascii?Q?/UoLVxy3IFTRXOFgqBIEqTn/naallbFGADdpbeKt5uDORq679yFrEtb83erG?=
 =?us-ascii?Q?IWQiG7vQ15aBYfpFfHdfk/X3b39HiJYbmzbRCaKs+XKelTlHr0GN766HUm2A?=
 =?us-ascii?Q?eBfgr30Iusy/3iAg6vuoMORsh4XdK+mA2zyI8Xg12V9GB/5u45Y2Djo6NsNk?=
 =?us-ascii?Q?FLib0+sQE60n3gvEiJpYCzFJmZV7NW0kT3E0h172Wj5TUnIdy0ByqpV3tyQe?=
 =?us-ascii?Q?UAquOU8CB74+Chu2FUfTm08KJ6pzUzEgVRKuJmfrOab/egQMhrECXp1m+gNX?=
 =?us-ascii?Q?7XJlwg6Up2vv2qi/OsP+Aco+04zhCRO96UYV4OH7FnxuJBefsjC6eclLtWyi?=
 =?us-ascii?Q?jbnj3zIX14iBrk7M7xwD64o7pUsGWSPFSsqHpiYhij7D/xO1uQXglywHRCsC?=
 =?us-ascii?Q?h3n4m7b9WYdkkLdqd6wdlBQ=3D?=
X-OriginatorOrg: vahle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e6c3810-8ed3-4290-5ae6-08db15b3b679
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6503.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2023 15:36:20.9511
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 251574ce-9f08-4528-b17a-70ad2956ff08
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YNxFvCYlYvQiZn3CYnkst04b9DALGCXOmbMgULOsRF2lwDr2WSt0VkPgyGpd+LqAWfFZbU4A6rrqk0xBz810TRNlV5I4xEY5NTcBHsk3ZmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8625
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_073626_625854_C0AE6417 
X-CRM114-Status: GOOD (  11.55  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] gio: add support for PCAL6408 chip to the pca953x driver
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



