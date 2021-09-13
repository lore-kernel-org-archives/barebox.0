Delivery-date: Mon, 13 Sep 2021 14:16:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPkse-0003MJ-6y
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 14:16:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPksc-0007dQ-6G
	for lore@pengutronix.de; Mon, 13 Sep 2021 14:16:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jfkh3Yfiu3+rrpK0vxdg45LXAWd4ldTRz+8I4VDJzgs=; b=Wcts5Z5LHWOBcE
	EXiM5t7wwzbGEHuytpeeuHIkoAyKwTDZ9vicnjf+CvhYRVmxebU2zI30SqWd3eHi6XzYQ4XBGaQwA
	AN0D/p2bSmNL9ytS7FQiu0AIrtbbkKJT/URZglvqNVUwf+1vQF8bOlAdhhFdDFLBlHRJOG91tldpF
	9BhVrTLYL8z1CdIoqXKT8uW6F+m7jipNIS3m3QrEmkmOUM9qzQQpA8IgOa665vTLMrauoGDL8Skqf
	aC4Pw5LVsMLmO4L2QPf8dXR6Sqm80RPbLEIsm32VcZq9zIt+R2jjCXgNqdcFBpk84eZVpLvHHlr/g
	Y1Jo2Kn/+kculiwCbIZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPkr3-001YaT-9N; Mon, 13 Sep 2021 12:14:33 +0000
Received: from mail-eopbgr60085.outbound.protection.outlook.com ([40.107.6.85]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPkqt-001YXt-Is
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 12:14:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H/8Ndh7HBpRlOV41eTTViCjhaiFLTBLP94hC/TO8yJ3OkZc6tZLBcmNB5S0WWIn91g2ObGLDiGLxzsyhjmHcscOp3RGd9hW2qnVarxKuHGh+RYh44+nQ0brk0Fdo5nu9nWCvjdhVmmMftChoxgdANgMBu9+tuEz+TSVu4F/ygG1maSfdtmq94yYlpAzef8QviUNcRMhjcALyE46L50hRPSDHVnoGvZAQJ7SQkHGaygQmaIWHMgzoJJ332bPhN3Vce34Zk9p63b0uzBP4R3Z9r1iapeXxqJzHZj+CPkmwAADBVcFzufuXSbPDAQLoNTGWJKAIrRP89jWJ8ZI9xyRwxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Xy9rOurU3mKjXO2FXjRaIXIQsfFDbzVydVgHZOHDvv8=;
 b=kUPjDb1YBtnp/qg4uBzGp9SkkYJMUhHSfaD9MVIUMhi7UDCJf0cruPbptT9wZb3eF+SHElvmWU5L+DvvvrvoXwZTrqGkVHGYNEJzG4dYNDYvlinyK0eVqiUbDBWvMIWy5EaKoWQjHPWKDPjjuWtE5i0d9CBaq/68M0C40aDHn5Fm4aJnptphV1nSuDCvACIiyVWOaqO6jLyC92tpvWqAPYqTfBEidF3laRJu4yeu5JrOaLL6g9EanbvlyU0exW4V5YXPrH5vqWbGeolhHC0tiAO/DaJ6qVlrNsgw1ppWEXfigrEZyJ5OL+u+nHC6wL3VyE9plvBVcwwLgvVKmgDz+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xy9rOurU3mKjXO2FXjRaIXIQsfFDbzVydVgHZOHDvv8=;
 b=acRm1gKdEDBlg3WW+cdUGe5H8hHP0dVrfVLC2p6R9fk1xH7G4V6Y896jMzyNv7lWyRMNRnQlTjcuKft6o2fqF1rddXCiGM8zNy2LID6wmUwo6mq5ruso8ofU7ozsHVFnYzU4tvezspUfXozahbMFqYDIbUke0bXm/Xwfuulx8j0=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6874.eurprd08.prod.outlook.com (2603:10a6:10:2ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 12:14:17 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 12:14:17 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 13 Sep 2021 14:13:50 +0200
Message-Id: <20210913121350.9307-4-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210913121350.9307-1-michael.riesch@wolfvision.net>
References: <20210913121350.9307-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR07CA0277.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::44) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR07CA0277.eurprd07.prod.outlook.com (2603:10a6:803:b4::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.8 via Frontend Transport; Mon, 13 Sep 2021 12:14:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6c159d3-a11d-4846-852f-08d976b001fe
X-MS-TrafficTypeDiagnostic: DB9PR08MB6874:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB68741B24F156FB74CF21DBDFF2D99@DB9PR08MB6874.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:773;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: srR5OZ8M/HWnPBL40a3krOCa1upbqBUz/fCZWHrCpXW4utYNh0RUKUQoQ9bpyx9yZjUSyHBASf5kHahhtMEJGGRIQe4euAoTnqw1AfOsfchHtOkJMr+QGGMXacqTzYUZ7BCZPyh79SKjTPptjq+h17Rdj4GfuAIP+oBj7jP49T7gu1uKcfjgGZ2PHZcj4QQ8suUwxhIdfqv+FRpxKoI0CZCH0GqSTnUrdFjxruVRZ0zQAx3NQ96lp94hBf7V/cpso/Ikfp9GxNYj81AuFvMC2lSXyNuk5MiGWlUupZQBa4mSbMic45iPse0jXlJqo+Llu+hvDRlWI4ANmZNlC075820IXpILYP34JRvFnMqCBqoAPJqo+yOsktHSW6FqBiJfcwXYP4vEbD6O8yMi5uCVYwrRtQtP4LwMZgsWCZZ3m+njBbisOPdl4aLDPgJy3D9cXzo4q5qHFeiYCv/TIsb3cz8XBwoLtHx/nmysjnitcwHdwj9Og7FB7IHQPRijpw1sQzSqJgrbWRexTqDyOk0eyeDg0XnS6wkWLC1njR1jpkCSxX5U5z64e0dz97J9S73Y3ifT94Q9guY5kWKE1g1hPqcWVUNyPKEHjIvxlwXUXTdFYZyFEsIG9QE1fe0tZTYPkmE/U0Klz4tIawh3ZM8DN81IH0CJxJn/inBVdUgqoW33XBycKfKl5i3ricobt5jl8mPvKsFCHIsU1TKqP8v95w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(346002)(376002)(366004)(396003)(136003)(8936002)(5660300002)(107886003)(8676002)(26005)(52116002)(186003)(478600001)(38350700002)(6512007)(6486002)(6916009)(6506007)(66556008)(66476007)(66946007)(956004)(2616005)(6666004)(83380400001)(4326008)(86362001)(36756003)(316002)(44832011)(2906002)(38100700002)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hHGT3y9jclqHmVuNzU1pbdxDRGG3yW1l/n38pQTG95TaQ2gmMbg3Ql9UmwM9?=
 =?us-ascii?Q?ZzNh6TpyLYL9LP4TRvmnJLMzRca3of7GSDM+siJ/8+1EJzRf1AIseIbRlmjy?=
 =?us-ascii?Q?yfjLU9kZT0KV/5Gy6QWRpbPwdUZAk/iJasFceIAqoNkwaL4JLbZpwh3D/sJG?=
 =?us-ascii?Q?lCEqHt8m1+1hR/bWDP97UUuEbcxeAN6GPeIFAO6Ei5ThJ/yjzxHg/XaAOm94?=
 =?us-ascii?Q?39bSoOShagL5B00v1D9S+8vUucUr3hmf57aDDLTluLO8dTnxxjYNjwLkr/bI?=
 =?us-ascii?Q?t0W2Ts9zxxIwq1qvtZOSPX7FizvzpVqKOH/ZK2Bz/Mgfrc8npuLCU5F5HZba?=
 =?us-ascii?Q?VWXjJBNJtjGg5ciT/gL51E3WZQmrIx2I+6QgVhzrdDf3UURn946OwM4VSQJW?=
 =?us-ascii?Q?jRogFJ9OI7+jicqtqCC/2sMnRjCOSn4ce7/CMnEJezJn/gRB/Rck9E0YYdtw?=
 =?us-ascii?Q?pBDPHk8pnRXLFNL1DBe4tx/zBZyn9fnkef8UmQSLZVNwwUaObXuv82rc/zO0?=
 =?us-ascii?Q?AD8c4BQYReoZCbJusvgO/DG08oEZOUgq42LfJ/jw0cpMOIm5TrpfdDqhGT+x?=
 =?us-ascii?Q?yJU9TZBqowyT2szTBPekA5CkPYrAq/fHnSc9rBK2mndOTji6jnaxs9Gm7dsi?=
 =?us-ascii?Q?1U2SZ2zrQPZcRj/7UlaJrwGUSOzyBXpXW1c5aIRFRrvJQoyxFHR9F9gUgckl?=
 =?us-ascii?Q?SdAbiNKBNYUt0T2yFyphHPNT2c7d50WR8kP9ZqnLQf3P4aG87VB1X4/eNOqu?=
 =?us-ascii?Q?BoC6y7BzDYP7ffD05E0Z55K7x91DzJ1pVhQhagAyrnqSZCMVkuIWj9IhynE2?=
 =?us-ascii?Q?bsqIkUEcReO7XaOh6o4RHH7bDP2uM7T6kYJWBxY9iWiskqGqWOKavNdPB8QB?=
 =?us-ascii?Q?qdZ46rvCdnspChnXZYyjlUkIRRDUed5R0WMDZy0jXvERmSsveMXV0G4IJwhg?=
 =?us-ascii?Q?/M+Y1C58XgBzgeuJw0sKEJbFdjDbTFQ+GEzm5tn4dV2d1hnrYErAqoyNusFo?=
 =?us-ascii?Q?Xyfw32Y1PFwLiVUn7O6KBhHWJUTvl64glCWrFKa0K1qN1q+ZJbRdPdoU7MyR?=
 =?us-ascii?Q?//CPWkmQdU+Ls0ZGNSO4cJyGpGPU/KSwRcNDT5zIDi3SbXgL3vAUDmlMs06C?=
 =?us-ascii?Q?W4yUNuQtKKZOjGv1104BJEeMUb1wSWbJ7M7QFlSKI37ElmWirwv+0/gF9NfE?=
 =?us-ascii?Q?Hrdl7211J9a0trHY6VkQo4u5YKjtk1nc5ApRPQTN1cjxX2DhXCqrMYuSmtaE?=
 =?us-ascii?Q?CtHNJhSNO5HjDrAiYufL9c0yb+QqWC9gQqiGwgrtSED1dm09p0dv+Y/PMmaR?=
 =?us-ascii?Q?kLF7HpjEis8vhiJ/hsjriexZ?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b6c159d3-a11d-4846-852f-08d976b001fe
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 12:14:17.1983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EbUCbqA1ClZQjj9446nW59S3mJkRifX597HQUq+bp5MA/aFINe87lIj8bPYUKFnol/pIjIiNrkSPcdncX/6sjWETdM0eTB/zQMsEJbBE3Ko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_051423_650782_CF87B835 
X-CRM114-Status: GOOD (  13.15  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] arm: zynqmp: add boot source support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ZynqMP reports the mode pins sampled at POR via the register
ZYNQMP_CRL_APB_BOOT_MODE_USER. This commit adds a function that reads
the register and populates the boot source.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v2:
- moved bootsource_set(_instance) calls to zynqmp_init
- revised boot source/instance determination for better readability

 arch/arm/mach-zynqmp/zynqmp.c | 86 +++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
index 5871c145b..610d4bba6 100644
--- a/arch/arm/mach-zynqmp/zynqmp.c
+++ b/arch/arm/mach-zynqmp/zynqmp.c
@@ -6,11 +6,36 @@
 #include <common.h>
 #include <init.h>
 #include <linux/types.h>
+#include <bootsource.h>
 #include <reset_source.h>
 
 #define ZYNQMP_CRL_APB_BASE		0xff5e0000
+#define ZYNQMP_CRL_APB_BOOT_MODE_USER	(ZYNQMP_CRL_APB_BASE + 0x200)
 #define ZYNQMP_CRL_APB_RESET_REASON	(ZYNQMP_CRL_APB_BASE + 0x220)
 
+/* PSJTAG interface, PS dedicated pins. */
+#define ZYNQMP_CRL_APB_BOOT_MODE_PSJTAG        0x0
+/* SPI 24-bit addressing */
+#define ZYNQMP_CRL_APB_BOOT_MODE_QSPI24        0x1
+/* SPI 32-bit addressing */
+#define ZYNQMP_CRL_APB_BOOT_MODE_QSPI32        0x2
+/* SD 2.0 card @ controller 0 */
+#define ZYNQMP_CRL_APB_BOOT_MODE_SD0           0x3
+/* SPI NAND flash */
+#define ZYNQMP_CRL_APB_BOOT_MODE_NAND          0x4
+/* SD 2.0 card @ controller 1 */
+#define ZYNQMP_CRL_APB_BOOT_MODE_SD1           0x5
+/* eMMC @ controller 1 */
+#define ZYNQMP_CRL_APB_BOOT_MODE_EMMC          0x6
+/* USB 2.0 */
+#define ZYNQMP_CRL_APB_BOOT_MODE_USB           0x7
+/* PJTAG connection 0 option. */
+#define ZYNQMP_CRL_APB_BOOT_MODE_PJTAG0        0x8
+/* PJTAG connection 1 option. */
+#define ZYNQMP_CRL_APB_BOOT_MODE_PJTAG1        0x9
+/* SD 3.0 card (level-shifted) @ controller 1 */
+#define ZYNQMP_CRL_APB_BOOT_MODE_SD1LS         0xE
+
 /* External POR: The PS_POR_B reset signal pin was asserted. */
 #define ZYNQMP_CRL_APB_RESET_REASON_EXTERNAL   BIT(0)
 /* Internal POR: A system error triggered a POR reset. */
@@ -26,6 +51,60 @@
 /* Software debugger reset: Write to BLOCKONLY_RST [debug_only]. */
 #define ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS  BIT(6)
 
+static void zynqmp_get_bootsource(enum bootsource *src, int *instance)
+{
+	u32 v;
+
+	if (!src || !instance)
+		return;
+
+	v = readl(ZYNQMP_CRL_APB_BOOT_MODE_USER);
+	v &= 0x0F;
+
+	/* cf. Table 11-1 "Boot Modes" in UG1085 Zynq UltraScale+ Device TRM */
+	switch (v) {
+	case ZYNQMP_CRL_APB_BOOT_MODE_PSJTAG:
+	case ZYNQMP_CRL_APB_BOOT_MODE_PJTAG0:
+	case ZYNQMP_CRL_APB_BOOT_MODE_PJTAG1:
+		*src = BOOTSOURCE_JTAG;
+		*instance = 0;
+		break;
+
+	case ZYNQMP_CRL_APB_BOOT_MODE_QSPI24:
+	case ZYNQMP_CRL_APB_BOOT_MODE_QSPI32:
+		*src = BOOTSOURCE_SPI;
+		*instance = 0;
+		break;
+
+	case ZYNQMP_CRL_APB_BOOT_MODE_SD0:
+		*src = BOOTSOURCE_MMC;
+		*instance = 0;
+		break;
+
+	case ZYNQMP_CRL_APB_BOOT_MODE_NAND:
+		*src = BOOTSOURCE_SPI_NAND;
+		*instance = 0;
+		break;
+
+	case ZYNQMP_CRL_APB_BOOT_MODE_SD1:
+	case ZYNQMP_CRL_APB_BOOT_MODE_EMMC:
+	case ZYNQMP_CRL_APB_BOOT_MODE_SD1LS:
+		*src = BOOTSOURCE_MMC;
+		*instance = 1;
+		break;
+
+	case ZYNQMP_CRL_APB_BOOT_MODE_USB:
+		*src = BOOTSOURCE_USB;
+		*instance = 0;
+		break;
+
+	default:
+		*src = BOOTSOURCE_UNKNOWN;
+		*instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+		break;
+	}
+}
+
 struct zynqmp_reset_reason {
 	u32 mask;
 	enum reset_src_type type;
@@ -65,6 +144,13 @@ static enum reset_src_type zynqmp_get_reset_src(void)
 
 static int zynqmp_init(void)
 {
+	enum bootsource boot_src;
+	int boot_instance;
+
+	zynqmp_get_bootsource(&boot_src, &boot_instance);
+	bootsource_set(boot_src);
+	bootsource_set_instance(boot_instance);
+
 	reset_source_set(zynqmp_get_reset_src());
 
 	return 0;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

