Delivery-date: Mon, 17 Jul 2023 18:56:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWk-000n9I-81
	for lore@lore.pengutronix.de; Mon, 17 Jul 2023 18:56:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWh-00077I-Iu
	for lore@pengutronix.de; Mon, 17 Jul 2023 18:56:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DKkBr/GQ+faLJ35cO7eUFJXGBPz69EWKsmvgtRcSPus=; b=XH7OdWiFLbZciZG16/GlkpUrIS
	KmDZMSUij1OaipWUa06OK7aZiWwMP4orzIGW6EafVdObGKr0YcYFypFH2vuphnJHjREvF/HVxdC3P
	ndPnR7V4uOlpyNKnxyMsr3+zPb7zriMBfWwvFhF9aoDwjxJ2dr3Yl3Zy6z+KiBdk+duxgJ9h+g7ZS
	3aZJyJQSdEAasWVYvI6ODgnTpAxmoHBHSjY00BLA0r8BXMAsFV4AxWQ62qPUnespA5mJct+ATUTk6
	rUEVUxA/FsFdCc4lQVc2FvxTo0cb0hQQI+IS6HMcTK3JAgEh/lw1UIHsO/EUHHIZGBRxY5Eep/A+r
	nfeLINqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRVF-004bGB-2G;
	Mon, 17 Jul 2023 16:55:17 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRUn-004bEB-2w
	for barebox@lists.infradead.org;
	Mon, 17 Jul 2023 16:54:51 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id A9C888A3B7A
	for <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689612886;
	bh=NesHH/6bjyUPnZbag4dnxIlRXOidOZycwPmKsPyphCI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=5nDQrdRwYvLjXPGyn2aYk+bDCTo0LHdIrSRuF5cYkXnFBstlWprhci7AEIwifdaxX
	 0U7JSr2uxYhmIe83VaBJ0uS27C9mI5NGdIZZsGyuo8XcuuKh7G61ZySqKjqajs57Ok
	 v47eJQWH4q9qmzeGPuj7z1AxizN9dU5//+viy2so=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 8E68F8A3FEA for <barebox@lists.infradead.org>; Mon,
 17 Jul 2023 18:54:46 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0100.outbound.protection.outlook.com [104.47.25.100]) by
 fx304.security-mail.net (Postfix) with ESMTPS id 2097B8A3CE6 for
 <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:45 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by MRZP264MB2332.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:30::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Mon, 17 Jul
 2023 16:54:44 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca%3]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 16:54:44 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <cdaa.64b57255.1fdd1.1>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zua93Rsk6IGl3j0VL3t5DBdFE1DjdubLPe95I/Rxk+Yj7LUNB1fO9qDfwJtH73lU+bc6aQMhlZGBU/kJ1zeFRbcrHQWy9nakwlLbRCJiwgQrT1oqhnD8t5iaYS1I6n9AgkJL6pbC0C88P2yEGWkc1l48a17XTkIVvX0Vt4iNfQWNl4X5pIxudgqHQvwjX2o2IJYwFOuqa7fvj5nGnPR8fxPzwyJaKrnwuxtIR/FU7svHbyhPC2Bkio0nB8T47xWzXi+sm5T2zAqdNtGfOzczuoQp6xKQwaEKFoUHH/+17vfLyMoAizNhCkIKSAIP2QbE67bQZ1oYU6O3sVO0f3/HbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DKkBr/GQ+faLJ35cO7eUFJXGBPz69EWKsmvgtRcSPus=;
 b=Fw2tJp0nxwOFxPT6jegL3l9k0vxRIfRqVRuVCOUAZxoKoodyz5lChvIbYsb+bIUVzZF6rq36Lb0Zi1TgEKfC9+Sw/zRyxd0hpAD5kiylQJ+RvLpuQjf+FIAPR1PB5JLKNL6fiMzD4/O4slfE+D4WvwsABQGZ7OdwYvFyEFVqcRNlNilyHtLtQWiWhSKJFz63Z5hIRD/ieZxyedfjfWzK0KJPYMgsfDYPTFiw2Ovkkuqp2IAoz/uBmSFgQWVjA2tSaHk8L7FmLvgZG3ihpmpel1chsK70c4uLm71ylHCKiG6v0cXg0OuljQzdUCtkkQEbsd6xyxor8DKqkGRcX/byEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DKkBr/GQ+faLJ35cO7eUFJXGBPz69EWKsmvgtRcSPus=;
 b=6ggiwx/0X8lqq1Ia339Y6jPtieBSlC5Ctz4DyOIiuzfn3petq+cORxNx+E6fXN//blOMgmOU3cVWkHhfeE4Snwyc5VWBThqp6C9R6DcUdPn7Leprz4+5btRD+tyQcP8bChCG0pkADIyKtY9wQfmwOgj38o89tC4QOypMQ/FdBGUhWf2sv2Or6GXjn5ygZ6Npl5EMsj+BHlyteQGNVOnzq2JjJlLB75lvG3FcdY7luIJUJ8aIqklq+Nh+ujRViZ+d/ogDOm756hOB0JeIwGACYepxuIQBkeydEMC5WExo8bAhjb/0Zs2D4t/1j0Ph3jah5JEQ5gZWZvyOASQHms//Eg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jul 2023 18:54:27 +0200
Message-ID: <20230717165428.27286-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230717165428.27286-1-jmaselbas@kalray.eu>
References: <20230717165428.27286-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LO2P265CA0050.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::14) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|MRZP264MB2332:EE_
X-MS-Office365-Filtering-Correlation-Id: 4545df3d-814d-4804-d0e6-08db86e6850e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L2fJX3euat2Ut5UoXNCH7y8qb6ltxwtZCjoSOeXbzUBG5GON6Y0t04ECatqis4NYXrfgdMn6SuB8e4eHyovI+leUbfuHGHPqdm8L+j29B2XPHpHNqP7y46/tCahxNoh2gFStO763D5WBsHAvuB6bakJ8IndiwQ3U1CmJqws85W8irbNDZ+OvMtk5K4Nt1xqLtFHerRLeJWbXj+F08JADkmFF4CFMRxlYKW6o8qnjOXhkMgdHf7SwNo0FAFked5rfaOleFs0YMOqb6SV3YR4NIhQlTEd8pk/7AiMLk2wlMdRZIK2WQon/38wAyhTd5ImJJV4klNG3+hppc0SDIRbM0IDVs/LZU14AXkTOfXpmNro/WrGuIheMpoYHDR9yvvwHKpvkcUHp3s8dFd1dt3+mXi2FyKItg1JoNeZZg3V6DUmNJbcVLWB8q71NmTTHCIgnOP7WQK6pmr/VqBgEG0WgpL0j1xHPTonXMrIb2IhQ8clJm/bc2ZYe2xuaEj597ulzufNwNztmmZg6VW/P1QhqSZnbPGJcmk3hRAZg84VzhvC1IMo6F09iHDgYQ/8WlXRizNaXiPSJZnYJr7gs2wVNjk0c0R8m67BhpRfoWyN8M7h0ooHK8P+roLyyUA74Gk2s
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(346002)(136003)(39850400004)(376002)(451199021)(83380400001)(478600001)(52116002)(42882007)(186003)(2616005)(6486002)(1076003)(26005)(6512007)(6506007)(107886003)(6666004)(66476007)(66946007)(38350700002)(66556008)(36756003)(38100700002)(41300700001)(83170400001)(2906002)(4326008)(8676002)(6916009)(8936002)(5660300002)(316002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 8vfcYO6Gi8CiKoRobGkHeIzoGqe8nJLSXGL9u5dCrKbI+2z0lzs4cwbr+3GsPIr3VywIe+kmvKLkxjNTeLjGPq1tgoZcQWnGyaWfA0IywHnzvSGwyX+Yv0pwlQoUYfreOsnOiaodmd+XCXK4fuBtbK98yxn76zjLJkS/s0YZHqMtOwuhzxbzkmppPwOzRtFNb3sCxhS/3oPpL1/vs2+WjmOT6GmQtM0XxRFrV5rNUYhMZlSAgEh+vwbpWeqMbw0PRqii/b5LhkxoG1tng8j/FNe9b4HycprI7XZ8ysGY0VyXCN+vMB1ngYryfEz0EVlmlK5pyKd96MpBdsd+pJ0d5mR5eOTgHVgA1J16IyitpCw2zoWcE1RXUNaY5f2mmHiGKUJ9T+9wMOfiXrKkmAQ1hFnSbB3JDPWLpXstt0C1vpFGjqbdToXQugRDe8pAX/+StnFWfe7i//V+hVp1ZfeRygNkOLVJe83V/ZmMbHNHjzOSMQVL4Rj/GqJJLkUEXPUmtFAGYpESRW2RueanNgiiRL7AWfYZmZ0jcqGDfVhSBXPOo2/6ybabUKGgWzuXfO5kDsgvd4t4qrwJ05YxFCiPg6RR0GxYq6Uvy5AmbcU/A/mt1RdOBHvGpASvNGS1yd+srlTdCnqDPj71Q4hY7d5ixCBBWI2djYRnFsNS+Mr9mgzqM+zrqpnXgJXa2r6dqHNswWvMiG5NL6Qs4Cc5A8IUKUGbAzzgzXCNVd98X0CrNqBxZR+jQlSBhN/WnjPSMP0TMWPSwD005U55ICAWw+nn/roG6hQAkHh2UL4KF37+iWBf1G7K5sZH2BuUbrVleGi8z6dcZK620f/3Zmt/erGloBhoATeQQ3gzK7y+HWE7C4QmkYrUZBl/9bqA7ixMZHLRrn7yLcDZ4NLX8fUk8/5d0LTjL4QT5UrivA/1zMgoRy7KA5xKXAOQ1BOzKI/1IJji
 3KIa2Rr/wA5Hvb0Bm87ddRYugi2KWOQksuEFcgSOBvsJR41xkmLYSP9iEijy+mgv09Il+nSTn/0o14j+8+0hxEv87PIfqrg6jwahqakDZpsYrNOqhO/SJkiMhAbxV73S+QOsgT7mNeXBTn7xYruBxaW46QE1Zj6ianzehPK78tGdNWAu/TyfP0+H/D4XEOWR42p7bFbWxb2wMC5L64vvpRvdRSirCshyXdiJnTsvGplNo2AQziefQ0L59YDbUizaL/H2INWtu+k+3sIQUyORNCuBT31LkbJChOFIDCB3yQlXYk3SjFt4aTomHUXUijkfBlEHGQ4WM338lqw1DwABxhWKlgwd1OjENsp4iKn8j/5PYoHrMJ5x6wgLYuKAUDL3yYx6fs1/1kusYfuvc1xkFp0dK011HmRbbyLZnSgAnJWUyrNLqefbQqw8yCR/8LxfzD99YnxDR1hAaMYP7fmRytyK4bE2N10/kEsSvcTgIkkXKM+fg9tVltVKWRZRRyTdD9GQaprTJp4afqLHwE5YPj7f/emRMkyK9Mkdx7nhDYx6RhEdbso8g4Sd/XsRdLIKs0HV+XuJtyWDaWTYLQOn1yBlCUL61bFifJbreSzhALA=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 4545df3d-814d-4804-d0e6-08db86e6850e
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 16:54:43.6948
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: am2isjwDMqLTlrYCSorwVnlVtY7jumBPmNQxlEo7z4vBfMOh2oko9nexOaO18k1Y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2332
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_095450_341248_A7428279 
X-CRM114-Status: UNSURE (   9.49  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] mtd: spi-nor: move SPI_NOR_MAX_ADDR_WIDTH define to
 spi-nor.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Move the SPI_NOR_MAX_ADDR_WIDTH define into spi-nor.h to be used by
drivers.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 -
 include/linux/mtd/spi-nor.h   | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 968fd3ea7a..ab61e7824c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -21,7 +21,6 @@
 #include <of.h>
 
 #define SPI_NOR_MAX_ID_LEN	6
-#define SPI_NOR_MAX_ADDR_WIDTH	4
 
 /*
  * For everything but full-chip erase; probably could be much smaller, but kept
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index fc7cefb55e..720b4888d4 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -142,6 +142,8 @@
         SNOR_PROTO_ADDR(_addr_nbits) |                         \
         SNOR_PROTO_DATA(_data_nbits))
 
+#define SPI_NOR_MAX_ADDR_WIDTH	4
+
 enum spi_nor_protocol {
        SNOR_PROTO_1_1_1 = SNOR_PROTO_STR(1, 1, 1),
        SNOR_PROTO_1_1_2 = SNOR_PROTO_STR(1, 1, 2),
-- 
2.17.1







