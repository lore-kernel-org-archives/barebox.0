Delivery-date: Wed, 17 Nov 2021 15:26:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnLtm-0001Ns-ID
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 15:26:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnLtl-00059L-8z
	for lore@pengutronix.de; Wed, 17 Nov 2021 15:26:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTEa7tgn+Flfvvi0adGoHU9JICSDlg4BBzXZW6tIN00=; b=sBFSZ2Ay2arFK6
	6e4TBKSKHNIEXtWMUGv39q8Vmlb9JLK9Sxv+Iiv3Aju78j0Kmdi49Lw+ycde5RvX40AVfoEvL+y9M
	nxZKEKHEBVBlYMk4OfAjO0V/qraEebWjsFU0fHbBlVHcxUkKe7OFQyjI116v0XJcTwcF9MsIk8Cqe
	z4rfaBYgVdN2d2z7Sn2+xmlNu6yRImP5Wis9YcGsrnscBVL4ltnvLJ80W+dHyl7+Eo/5Y3vUwaLX2
	1vBiSloFNmVyrVPSPhlnhZytHLR2ejkfAUp7wuiVugtz6kNEv5vPeShLAYHbPPfm80ciNiidW6ILK
	vcvUxULovJTWT8ZgTWsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnLsJ-0055zp-KE; Wed, 17 Nov 2021 14:25:23 +0000
Received: from mail-eopbgr80050.outbound.protection.outlook.com ([40.107.8.50]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnLs5-0055xg-Jl
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 14:25:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KhBPiMNSpJHFPhK9H/WFFDBCRxt4jjoLqr+KzTeEkhPm7jygLvUOGYesKBmkFSA4ZUbsqd3Jvbw5HKmPCC95WPEqDU8Mq0VO9y3j7gBc3P+liwPSTRPrO6c3Av/U6t5n8tyQZ7UUqyvdzfCkMyFvTsjJh83xGDXG98k2taW0OEfoYovcyRqItazeGi2z9tPxVFzp62Bu/W7X1Wan60vGEG/M+NwjTZG7+NsiU1yrjgNVv7VPVuNIZJ2+9j6OeWzLwoVeshtzt6BjPtO/G98+y+Hr4VPYK3kR/X45hLB+MiGuK93IyXv+0g0guukRHolZT8r2qHEifeM6CMvix84wvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PrBV8AcIF+044ghqTL3lqrzvdSuAOiV1NaDoDbw3JPY=;
 b=m03qn5kr6a2f3nCIuo6O3/nepFA3MCjSX1VN2m2SDM/i77mmu4INHqdA4f5cqBp8T6MRgypraRzyFiQi7O/8HqBAxbll4N0g5StmEVwrQgU749QyKge9g5+9q/WSCSGu1+QQMWCnpMMsAUq5xVWKqOwQU0amgxrUhjKh5u3dOIHxTZQH3QouIQKUF+pdQ7AMw0CO83hKEetwakT6qNXWL1L6sYAVHLiNOqZ8RZSX+Il1qakEY7t4TlaFHAlz1Gxb8SkQjywnla8tjuCl+AWmjNyv6hCrYmCTZUYN2qOZ+e7XSc8THrAsJQUWsOOFQQ4uM0fjiBoTJwIiUand3uP4ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PrBV8AcIF+044ghqTL3lqrzvdSuAOiV1NaDoDbw3JPY=;
 b=AjHkMzQjQ/SbJ0aRvWQWXj+BZbVvmCCmxPu1gHWZW1zH5DTF2CZ7aqY/HayNwjcssvp2BnlPgsaFcSGIimtOs7Qhnb2Q3Y3GnxWj4h55l5Pk2CbiSXnRfhkgNMo123yP+bXVuB9hGUxflPyWuCakHM2ZdOKnUfkLyEoql2nOHeE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB6PR0802MB2392.eurprd08.prod.outlook.com (2603:10a6:4:a1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.27; Wed, 17 Nov
 2021 14:25:01 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4690.027; Wed, 17 Nov 2021
 14:25:01 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 17 Nov 2021 15:24:48 +0100
Message-Id: <20211117142448.2091017-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <3fb6debc-4891-c366-94df-0d7c0b80685c@wolfvision.net>
References: <3fb6debc-4891-c366-94df-0d7c0b80685c@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0007.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::17) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 ZR0P278CA0007.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:16::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.27 via Frontend Transport; Wed, 17 Nov 2021 14:25:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7eb460d6-a76d-4d49-37aa-08d9a9d60a41
X-MS-TrafficTypeDiagnostic: DB6PR0802MB2392:
X-Microsoft-Antispam-PRVS: <DB6PR0802MB2392D6E7FBD6E0A934D1A05FF29A9@DB6PR0802MB2392.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:497;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K30SssTz1ahaGtoiBfBYDlubugC56lpTY7zEugIrkrUWaie1Ato54faztYF+VT+Uj9Bp20OvVMAUBZoBleRDhV28lhkRVgaeQDjQbAdrFDSK0IrW5jYj7sJT5kwDHQr4WNKWE7L7+15jEWXl/DqbB8Fa2e4LKNmfEnhOxl4JxCMKIP2KOT40MHHk1F7nImIck/DSqqvQU1eQWL+nkw3O+cfCZv78hX+bckukvqK4tGQmu53JPZ3Nyn7KnUXdNJyArGlvx2U0IYUEThP8DkC7l0ncjskmSG7vMaz9xY6CzBPacilm2ReLjZ/Hm/xFNmsfyHbEhXjOKRaXiBxZ1MEXbm28fKah4kdWSh21hQHcoRkFKbl//XLsIvorheo1dItgvxLBfwsBIj/KxsGvMz+MRQ3EqbfdhyGBGqVS936QlYKbXes+G14vqX+KxqPxZ7oVkiicPjKxscAqDke9mlyFky6mJMQvNynlviow+/DADDPqtWIaqKowdBWjSwo2Pe5Uc9OVJ2eFkARxE6cd0Zl18bnTHfMGH8DFDPOH5jDNEKFxoXmNrz/vGXwLW0Vdydh2pe9uO1Jblm+qVz6Munr9F8xE3OTIOUS0ZNpJdzLshZwiZlUxqp99SP45qSSyuy5IEm7RW5zHpbXW/qEVIvwO1g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66476007)(8676002)(4326008)(6666004)(186003)(107886003)(2906002)(86362001)(6512007)(44832011)(508600001)(66946007)(38100700002)(5660300002)(66556008)(6506007)(6486002)(8936002)(2616005)(83380400001)(6916009)(1076003)(36756003)(316002)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WaaPg1LemOeyDB9/R6nsxTe5yE29CpI4slhxzq3ejM3jQbqGT8U8Xc2HQxXG?=
 =?us-ascii?Q?6xiFk7Bv5HCe8V15d3J64XTE9+0a3LfNinvItjD/0k7fnxVSyFJpBZBEQ9or?=
 =?us-ascii?Q?KCvVu5jf0egpAUApxCC2rQ6OdS/TUsN/AZQjaYR494SqmcDFSqd4zQUCYkSN?=
 =?us-ascii?Q?t+L6BpV0wHWcL2JtkKfXMyRTrX5c6o9/5VdIPK/deoBtdATCxfC7w2+fBY3S?=
 =?us-ascii?Q?mNMh0iRLLhp8v0U6KQYdlQZc6qxBGfmyp9Odqun9SbIgDcKVSUxWrEUP7quB?=
 =?us-ascii?Q?R1FVeQ8Gk7BBnE+g85lPCj6fwZo/VTJ4X2jDTD/DN67Z3YL2i0VjxAOcoXWg?=
 =?us-ascii?Q?qkcmZGJJEOet3fXL1mtTWACDjI/91WgFuAtLlvnHq52flSzurHkTxN371eWE?=
 =?us-ascii?Q?Y6gspynlcyhljh0/P/4JMUOAgD4fboKFvwQ8q9eP9vHNaVlNPXy6sbsjPXGi?=
 =?us-ascii?Q?ncfS1oEmTvVIir7o8smIH4xr5fa189RavzbkEBiyWOQin80cB3BeLw60T2pY?=
 =?us-ascii?Q?hs7FLBTJvQ7JQRS7i4dBKoqE6T5OIXti3/4X7WZLmW7umZXVb+NrlMhhgI+o?=
 =?us-ascii?Q?TEUXyuraS9B5z1fl09oN/YSlSXaCaX2Ho0ldOknQRushaEXA1A5i/7sv4uNO?=
 =?us-ascii?Q?v2UhhgH7cEeGiqZfBaT68gwD9Df1dcKmRx1D5Jv9qmW0Dk2OeDXm6Sj/a99Y?=
 =?us-ascii?Q?bYumzlAZaJs8oSdgH9v7HxelxoWDO/iaq+ly6G08pWLHbbSG4HiK5LEBKURj?=
 =?us-ascii?Q?j84Sp9AkVI9ioguuOF3bzOwBKqqz9+Aa4ymHwhExOI9kbWiyhGKDXzYkjYuU?=
 =?us-ascii?Q?R0icRo44ySWXL1bwm0YN9dcaqihkV1dsXIfGwrj8Uf4ONeJdh1Qe4nq8wlsr?=
 =?us-ascii?Q?RqT8Gfi3+5owLqZyeNyAErxH7HIfPZ0eN36Zo2/DyzNi/gsH8K/4Ft4Qq4D4?=
 =?us-ascii?Q?138WkrCQNaFbj79OyQzPF1hIP7TK36XChA+e22z9c7kOxhLvU1hRVEUxD4/G?=
 =?us-ascii?Q?/rTpV+4F4ouKCYmD+FPs2xQ6wHW9Dj1IRreQRuSDETgYjTCVl4rTYBcxdOO8?=
 =?us-ascii?Q?Qi/fDSij+qKqcrN2HRhM0lZX6z+ikvtx7v+nLjqcPs3X2GbRgCSanfXuWPxD?=
 =?us-ascii?Q?JqSX4Jiccy+3udUghJyt/4cIKs4ffBdysfLP4FiQShyWO5Y9TbHJ0S7kfGp6?=
 =?us-ascii?Q?KAahBqHwOpCfZ1JGU6rZCfqKRdzE07x0OuWwLnXIazRZ/9Jlo5/xjEJ9dlKZ?=
 =?us-ascii?Q?8NtMZc9sXIMPlnGbqNbituJBj7Q8xVEbRrjkAnwRX4fvo4gkqR6ITcszldX2?=
 =?us-ascii?Q?TB+nLwh8PUM84MHxD8k0+o2uAJgzBtiRJjRUieXPtc2L6PuULzSxIYe33ulg?=
 =?us-ascii?Q?ILcPx42i91QrA9PYP1uIHxa67pAfYAH7CFaPM8Df8/zb1mv0ou9QTOFD6GXe?=
 =?us-ascii?Q?jMnywsEOSUWP5NWnG97+5mVm6KUjEZ8Ma+FBWNeDLIuCLuG8C7HRTnbF9VLU?=
 =?us-ascii?Q?RVeZIYHGpF/iRwHIqKzapfKlbau2s5V95EiCvT4njrnk67I8pJ6whyPEw8xy?=
 =?us-ascii?Q?kCkYTNbVabNn3hhna1ir9xxBbhWqvniu2RvKeOhn7HXIw6gQLhscdOBMfi8K?=
 =?us-ascii?Q?+Wrch0aUpPuTr2nXg5qAbxJvtvG6Eep4Q5O52pXkOsSf/T5QAGMvogt8b0pt?=
 =?us-ascii?Q?Hlv3423hUqaCPYD8H8jOQEmbllJOmHqm34+EeLjRXw8DY0Qc2gqG/Z7tVRuU?=
 =?us-ascii?Q?7SGfJ1XpoA=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eb460d6-a76d-4d49-37aa-08d9a9d60a41
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2021 14:25:01.1096 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RtCmSo0XzSkJmXjbd1RMlfhUXmn1wxMMmyrd50RNkJcfkQ5czhFi94zoX6yQnQNyfSTApPoaHtl3uK1vbEKq48ug0/u3v3ONiX/riQXJL3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2392
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_062509_759312_6FE12DC5 
X-CRM114-Status: GOOD (  17.30  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH] bootsource: add helper to set instance by name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instance numbers should be related to device tree aliases, which may be
board-specific. In order to establish a board-independent link between
the boot source and the actual alias, introduce a helper that sets the
instance by the OF name.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 common/bootsource.c  | 74 ++++++++++++++++++++++++++++----------------
 include/bootsource.h |  1 +
 2 files changed, 48 insertions(+), 27 deletions(-)

diff --git a/common/bootsource.c b/common/bootsource.c
index 1f8d053a8..1b45956a5 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -9,6 +9,7 @@
 #include <environment.h>
 #include <magicvar.h>
 #include <init.h>
+#include <of.h>
 
 static const char *bootsource_str[] = {
 	[BOOTSOURCE_UNKNOWN] = "unknown",
@@ -33,31 +34,8 @@ static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
 static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
 const char *bootsource_alias_name = NULL;
 
-/**
- * bootsource_get_alias_name() - Get the name of the bootsource alias
- *
- * This function will return newly allocated string containing name of
- * the alias that is expected to point to DTB node corresponding to
- * detected bootsource
- *
- * NOTE: Caller is expected to free() the string allocated by this
- * function
- */
-char *bootsource_get_alias_name(void)
+static const char *bootsource_get_of_stem(void)
 {
-	const char *stem;
-
-	/*
-	 * If alias name was overridden via
-	 * bootsource_set_alias_name() return that value without
-	 * asking any questions.
-	 *
-	 * Note that we have to strdup() the result to make it
-	 * free-able.
-	 */
-	if (bootsource_alias_name)
-		return strdup(bootsource_alias_name);
-
 	switch (bootsource) {
 		/*
 		 * For I2C and SPI EEPROMs we set the stem to be 'i2c'
@@ -69,22 +47,50 @@ char *bootsource_get_alias_name(void)
 		 * controller
 		 */
 	case BOOTSOURCE_I2C_EEPROM:
-		stem = bootsource_str[BOOTSOURCE_I2C];
+		return bootsource_str[BOOTSOURCE_I2C];
 		break;
 	case BOOTSOURCE_SPI_EEPROM:
 	case BOOTSOURCE_SPI_NOR:
-		stem = bootsource_str[BOOTSOURCE_SPI];
+		return bootsource_str[BOOTSOURCE_SPI];
 		break;
 	case BOOTSOURCE_SERIAL:	/* FALLTHROUGH */
 	case BOOTSOURCE_I2C:	/* FALLTHROUGH */
 	case BOOTSOURCE_MMC:	/* FALLTHROUGH */
 	case BOOTSOURCE_SPI:	/* FALLTHROUGH */
 	case BOOTSOURCE_CAN:
-		stem = bootsource_str[bootsource];
+		return bootsource_str[bootsource];
 		break;
 	default:
 		return NULL;
 	}
+}
+
+/**
+ * bootsource_get_alias_name() - Get the name of the bootsource alias
+ *
+ * This function will return newly allocated string containing name of
+ * the alias that is expected to point to DTB node corresponding to
+ * detected bootsource
+ *
+ * NOTE: Caller is expected to free() the string allocated by this
+ * function
+ */
+char *bootsource_get_alias_name(void)
+{
+	const char *stem;
+
+	/*
+	 * If alias name was overridden via
+	 * bootsource_set_alias_name() return that value without
+	 * asking any questions.
+	 *
+	 * Note that we have to strdup() the result to make it
+	 * free-able.
+	 */
+	if (bootsource_alias_name)
+		return strdup(bootsource_alias_name);
+
+	stem = bootsource_get_of_stem();
 
 	/*
 	 * We expect SoC specific bootsource detection code to properly
@@ -125,6 +131,20 @@ void bootsource_set_instance(int instance)
 	setenv("bootsource_instance", buf);
 }
 
+void bootsource_set_instance_by_of_name(const char *name)
+{
+	int instance = BOOTSOURCE_UNKNOWN;
+	struct device_node *node;
+
+	node = of_find_node_by_name(of_get_root_node(), name);
+	if (node) {
+		instance = of_alias_get_id(node, bootsource_get_of_stem());
+		if (instance < 0)
+			instance = BOOTSOURCE_UNKNOWN;
+	}
+	bootsource_set_instance(instance);
+}
+
 enum bootsource bootsource_get(void)
 {
 	return bootsource;
diff --git a/include/bootsource.h b/include/bootsource.h
index 646b0e91c..4dcb969ac 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -28,6 +28,7 @@ enum bootsource bootsource_get(void);
 int bootsource_get_instance(void);
 void bootsource_set(enum bootsource src);
 void bootsource_set_instance(int instance);
+void bootsource_set_instance_by_of_name(const char *name);
 void bootsource_set_alias_name(const char *name);
 char *bootsource_get_alias_name(void);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

