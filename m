Delivery-date: Fri, 10 Sep 2021 15:45:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOgql-0005Yf-Om
	for lore@lore.pengutronix.de; Fri, 10 Sep 2021 15:45:51 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOgqk-0002rq-FA
	for lore@pengutronix.de; Fri, 10 Sep 2021 15:45:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ae8QThQFgBmB+1knxBVVVsgZGHyfrI/NtIZtJLKlwtE=; b=rfC6Q1ERX0txQT
	FlssbrGBJI7/luCvEiM4BV+taogUEDZHv42CEgmtJcGkPxTc5bobKfLfBqfps8p8YfYLcQdtEMdO3
	RTxA8n3MRHUCzNCpvATZqmtnYzWzqKEcey4esAuuv76VP1jf8d9hre5KcDBEbPcjxjoYf9Z+h3l3+
	S7g53iv/DHxOxlXgmkgCh3EsaXHMAwn86CKpp2fb6wdoTmO8qbrgs9EeYxVnOZ3/AWJjEAiBZHQjm
	qQGJOd2vPE2kXGIac5lSp+9NPc1R/DUx2PTDEGiNFjhW35wKiHg7mgNlM629A9q+4zCwG2zMClg8p
	zsjh7yUaIje9qVBInRzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOgp3-00Cpkg-6Y; Fri, 10 Sep 2021 13:44:05 +0000
Received: from mail-eopbgr150084.outbound.protection.outlook.com
 ([40.107.15.84] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOgot-00Cpga-J4
 for barebox@lists.infradead.org; Fri, 10 Sep 2021 13:43:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CBT6QSdYfEinfDZeJpwnDe1b4RJJskh5NS2Jj8wZUGLQsWlCvyDiYBwWeCZgCOHfHESol4lYyBPcstKyZjktgHrhtWGUk7OefOYlgWVMHX4fy32soHBDUXR6pdxvZ8DM/PZ8PZz+/iZTHxF4uzonB4eleDlJIaMMwVjWdhKPQKUDk7R6ZwTNTWqeZ18U1G/JGoCv6Z5CVvPxiZA/n/rZ+5kGrXO+HzyJdupRnW9vUk5fyEZsxIW7kgPE4vRDvkjqxPWKayndBZF0FbgQkS1pZAgLi9hV0PT7ipVDtiiHOAIpUEjOHvJh82V1aTT8bHT3OCjNde1LDdAMhVQoVBXTiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=rWTVUGRnR3s6hT+nuSOulzRd0nQuSSg2AC+QAitA5zQ=;
 b=BPzDpulW8h0laVxWxTkfcHw8OHRc0qdItnAtg6W1c9kh61FFeeoXxjKzjUIS8kMSkCBvFlge0TSYiJToYuGaxhb+2dIDCLexm8h0MsmnpKz/hOJ10CTNedT0NnZWekvjZvFxdjEkLW0+N37EAjMXnlFwidShIxV9173t7L8YLl252t+DhmrMIutniqjveGdlylaEzHR54u6bQH/rvU1Fy1VhLIdls1pMqDC89aFErS/Z+hKlIAEPxMFEhP8lTvUrw8i0gXp6xjzn6I4Tjk1PY1ceyvns7ihqLTg5CWF3KhkZWwW1uZof3B+bXeLyfXd74x37rLskhL2cH3EQg14jhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rWTVUGRnR3s6hT+nuSOulzRd0nQuSSg2AC+QAitA5zQ=;
 b=kQpPPY29gS4ZJ5UMjl+CKeZIg0NaTn+6/N9k9KRTigoVJLhXzgC9Ll4F3/u0APCZmolyiXGQOum9xqKSyGfpopuqfdSBoIhcdX3mYxF0/2W8CW3tVUyi3ML0cU/nZLDKB6fVfmQrGBVt3qZAwrcUWAwYCALeVgr1OD80qGQMiB8=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB4010.eurprd08.prod.outlook.com (2603:10a6:10:ab::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 13:43:48 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.016; Fri, 10 Sep 2021
 13:43:48 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 10 Sep 2021 15:43:23 +0200
Message-Id: <20210910134323.26136-4-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210910134323.26136-1-michael.riesch@wolfvision.net>
References: <20210910134323.26136-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR08CA0163.eurprd08.prod.outlook.com
 (2603:10a6:800:d1::17) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR08CA0163.eurprd08.prod.outlook.com (2603:10a6:800:d1::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 13:43:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec77d407-5843-4832-91c1-08d974610498
X-MS-TrafficTypeDiagnostic: DB8PR08MB4010:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB4010AA6938CDF7A87167DCF7F2D69@DB8PR08MB4010.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:608;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GRAd+7qRfgEDGJXuYIb5CqhNT3hVlIACZ1dWYxup8Pzwocn32lpKYdMyQnbYxCUgLpwwCu71riES64s5LeyVxwykeq5kTs/pbTJrKCtCklQsSBfUwDya3p9+L+Dv1X9FvKZz26qeiDCiMF9j1OoKg7T1yoFLSTx6Pftt/iNnsMl5CxZsqOaV/t5rZykEJU6Jbrlfg75znWqlU9bqIop3/1BSQa8aYmoHQnGFNiSmn2oNJ/UPSl9sZn1Kf1ckKixLrBPjS/jpkL8KbNOSBBcbjMOqbt/NI87v+tXhxLo2bx6HDvnFaiYpyQaF2SiVS65Ff5tTu7XunW0hsUuNRPUTaQFn9g75dhHi0PIpT1LV61iQx2ytOKxSxBFG0623kk2phuFztVAbN9RBavclKBSmAICuJYijVmdHTQuKFFpJIv+yjZAz+f7pvRIwQG3I69UFo3CAyUcL4gneaKCNlG7jIUvlrT/2mbuC+TPxwjYuwLOMjJtzlRAd47aXzu/ccKPaTYUDE/JnxZOiD2DE64yjzvTF66iEN9DDbwbgPleNADeAWyjt6se3DWxlR9q1qJLaEc/rZLGPWnxP8qNq+5iDHmwZHagB02ReO8e3e/QkR8iHgbqErUBzngr48pzUyONCvNYnTaXU18DEivBcgXa0mwDqu9LAH9c56RFVqBWhWMYSeWSDaEVpbcFAgv6jzUceu0AuQ8Yt92iK52CitZKLpw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(39840400004)(396003)(376002)(86362001)(8936002)(83380400001)(8676002)(2906002)(4326008)(186003)(52116002)(5660300002)(1076003)(26005)(6916009)(66946007)(956004)(6666004)(44832011)(38100700002)(6506007)(107886003)(36756003)(6486002)(316002)(2616005)(66556008)(66476007)(38350700002)(6512007)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VGJ+OGCHluWYn3jRlw3a405xXKoiRy9RYC2Xa5S3d0lH9chYMIzKjbHur4x5?=
 =?us-ascii?Q?9gG1dOugEGHuysDYg3Da3UZ+/WRHL+qAAhRdYxWbGL0yCEQ6FDbXJqjiIrNL?=
 =?us-ascii?Q?ECDiZwhoUs7pcvOwS3hzDm1pprKYkMDub5MvwWwDqWuQqydipkkcmlvTUK7G?=
 =?us-ascii?Q?D/VbS1wth8BMzAlPvvSaFeHNFbmv5KibTBdO/Ktk9xRCv2U8gTdMX/1e4RKO?=
 =?us-ascii?Q?i9JPv3V4ZNAME+AsCM5/pFnUjtUOhelsmxDYT/lDcTXk50hnDVNJEQtC00Eq?=
 =?us-ascii?Q?1DwPyQxnT2Hni7eZUafQiPllWoVEKEIzkWwqTfDIYkypYzqaGma7vUxnishq?=
 =?us-ascii?Q?DmJG5prTEGAVKwp2IhyGDx5L6rrsd8LimFFTqDX4KKWP8uk0xK1Xyqu9qwDd?=
 =?us-ascii?Q?ElkEIs3NKI5u+aGeT24S0RrV4P26f2X8/4L34w/3R+ohqoW34SyfW3hCJ2Al?=
 =?us-ascii?Q?Pst/IkcVwW55SiWQz/givvpx0DmWuRHUFldV+s1NLwo3elqkrrwGjgunYKqw?=
 =?us-ascii?Q?jjTaa/dmZKe0K03zUWgIgA4eKp0qPly0IZhDPXvR4o8u27zcKB6HDob5i7LI?=
 =?us-ascii?Q?Ds9fx/f8BmaODRB5O116uw7kCqD1HzWxdSGeAZ2rsKdf+M7ZwOJC8pfIpmbz?=
 =?us-ascii?Q?Hu8/VvcW3baYLDHFoTDGy/f5oLxwzJ9pYdv2g5RyLC/xNcxkC4V013DQmQFj?=
 =?us-ascii?Q?fCu6LOKjGcUIEdSHlpeswmvK9x80smn2N+h+PdB4PTrSYzw8rEXa0ZnItE27?=
 =?us-ascii?Q?H11208u7NouUgCA1+RtZvxvtq7xSvLBY0smfiZpAYfwHXKt0iJgoHd0iy/Qv?=
 =?us-ascii?Q?bTJS+QWNjkqkLJ6+hjTRVwAnkDsjGtiKbeNQ0vde1hJdOGBu4UZBqa+eRBCr?=
 =?us-ascii?Q?EnR5kB0PCO4UXFzHkw/9qRkQ9IG83d7hjZT9fQ6Okm9bmyrGpebYGv1bZM20?=
 =?us-ascii?Q?BvRJKXkanBg/2zXT34o9FQq9z5EY1nTa21os/AHLiU8g7mhBKNX/j2wCLpe8?=
 =?us-ascii?Q?hOtEzNNBYN+9pFNCYOPHJcVKh6P1Hw2awx7ZD9YFu8vvC5Ll/YbdyMik2Geo?=
 =?us-ascii?Q?y2WV76gwWM4igNchXSE9spovtR9HSfsDkJmbF0lkHvo5xUeKNHmGqkIYqyzB?=
 =?us-ascii?Q?l1cFB/CofM9pYOIK+D4taz5PiBcDPUERnII40Lz7sCrFcogJFhMrFHFo2tt4?=
 =?us-ascii?Q?e2aS/fJ1t7kEWGjJ1WuL0NbNTbjFyZdmFIGFy+Ww/IXNNG0gz6jmgPRblKRQ?=
 =?us-ascii?Q?3jYQp4Xbf/JU8kb0YOv8CZtv/NCJTR7kZJ1Z7EUgb+ng0d698ZSLZCfQV0Kw?=
 =?us-ascii?Q?FJyHbfzwdaEmmCiYrcrudDH4?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: ec77d407-5843-4832-91c1-08d974610498
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 13:43:48.8772 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OVt1XPVx7QvNtp8xjIEtMuMXX0PBSjbUJV9GmtEuDUuQCFgZp4jwCrc5ybHQaGxj0Ip47jZli0gkFTkdaLSGb8sREt6BxtSgcEoiNuu7IAw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_064355_659113_1D757BB4 
X-CRM114-Status: GOOD (  12.16  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,PTX_BROKEN_RDNS,
	RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] arm: zynqmp: add boot source support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ZynqMP reports the mode pins sampled at POR via the register
ZYNQMP_CRL_APB_BOOT_MODE_USER. This commit adds a function that reads
the register and populates the boot source.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/mach-zynqmp/zynqmp.c | 43 +++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
index 5871c145b..262bc0dd4 100644
--- a/arch/arm/mach-zynqmp/zynqmp.c
+++ b/arch/arm/mach-zynqmp/zynqmp.c
@@ -6,9 +6,11 @@
 #include <common.h>
 #include <init.h>
 #include <linux/types.h>
+#include <bootsource.h>
 #include <reset_source.h>
 
 #define ZYNQMP_CRL_APB_BASE		0xff5e0000
+#define ZYNQMP_CRL_APB_BOOT_MODE_USER	(ZYNQMP_CRL_APB_BASE + 0x200)
 #define ZYNQMP_CRL_APB_RESET_REASON	(ZYNQMP_CRL_APB_BASE + 0x220)
 
 /* External POR: The PS_POR_B reset signal pin was asserted. */
@@ -26,6 +28,46 @@
 /* Software debugger reset: Write to BLOCKONLY_RST [debug_only]. */
 #define ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS  BIT(6)
 
+struct zynqmp_bootsource {
+	enum bootsource src;
+	int instance;
+};
+
+/* cf. Table 11-1 "Boot Modes" in UG1085 Zynq UltraScale+ Device TRM */
+static struct zynqmp_bootsource boot_modes[] = {
+	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
+	{ .src = BOOTSOURCE_SPI, .instance = 0 },
+	{ .src = BOOTSOURCE_SPI, .instance = 0 },
+	{ .src = BOOTSOURCE_MMC, .instance = 0 },
+	{ .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
+	{ .src = BOOTSOURCE_MMC, .instance = 1 },
+	{ .src = BOOTSOURCE_MMC, .instance = 0 },
+	{ .src = BOOTSOURCE_USB, .instance = 0 },
+	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
+	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
+	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
+	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
+	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
+	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
+	{ .src = BOOTSOURCE_MMC, .instance = 1 },
+};
+
+static enum bootsource zynqmp_bootsource(void)
+{
+	u32 v;
+
+	v = readl(ZYNQMP_CRL_APB_BOOT_MODE_USER);
+	v &= 0x0F;
+
+	if (v >= ARRAY_SIZE(boot_modes))
+		return BOOTSOURCE_UNKNOWN;
+
+	bootsource_set(boot_modes[v].src);
+	bootsource_set_instance(boot_modes[v].instance);
+
+	return boot_modes[v].src;
+}
+
 struct zynqmp_reset_reason {
 	u32 mask;
 	enum reset_src_type type;
@@ -65,6 +107,7 @@ static enum reset_src_type zynqmp_get_reset_src(void)
 
 static int zynqmp_init(void)
 {
+	zynqmp_bootsource();
 	reset_source_set(zynqmp_get_reset_src());
 
 	return 0;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

