Delivery-date: Mon, 13 Sep 2021 17:27:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPns0-0000c0-3a
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 17:27:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPnry-0001rX-6q
	for lore@pengutronix.de; Mon, 13 Sep 2021 17:27:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SY5yQfGyo7Us7Q+PoXFcmQSXv4FKOOtGPCmMPozaSCI=; b=dFwX8d5XdYIPsz
	5yJhYKh34uxrd7v9/HCmU3w4mQm+GVjAuCggkduYNY44YzCs2bHsepfyvInF6zb4H4ILB8+Xye3Tl
	yO/cjARptsHHVC/wFZnJBk6qYU6HdnEsb0ejUIS0Qyn527snJVEHSX7mNyl8VtKgVNLTaydUV6Nn9
	2I1ASTEmOxodVVsDVSgHMn1EnPI5XL+xjaOFoMsXhZd0rJc3cLXeht+UwysMlJJq0Z9mIKQqs7wU1
	lEBtUmZqOH3BwMP+MC+PkQ4Llr551m+zg5HHh2qljWP9fd4xVDATL0Gfki/IFVNUdwMmf5Mso5jca
	Eut8O7NkgyveY0CgCTmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPnqK-0029z4-RL; Mon, 13 Sep 2021 15:26:01 +0000
Received: from mail-eopbgr70070.outbound.protection.outlook.com ([40.107.7.70]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPnqD-0029x1-L8
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 15:25:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l2JAcor6uTSQTP9ls1tCbaKneh2HFwMQuHFtsaFqFhje2KaRiQgHwqreYZUI8C77lGThkQwYEHEzDFyMZOqstb8NPX5KBNlfDHXUbflt/ti7/mlGfg5Nc0w3oibJ/21i7fEIk0qFkMXnmvxLCsEIooeW3JZHh0dkYpj4vP/8Fo3Fr6fTBJUhzFQl4FXo09xmI3bT4/syz/pZJHg5d7W0Eyn7wpR3K7FTb8Wmx+kL6Gg0mZhIZMwicMGdOLUBntuoz6n0gf9cPDobmYGIVx9kCmxI5kpOQnzAniSBJb2KVmwHsT357msBFZTcl6Ebpj1x6ghP60SAd2IN+nAl8B3eKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=2IaicQg2FkYfK0vA5dvM5nd9KCSj0/FwmNQwZEJ8AuM=;
 b=i1cwILygU9viahBWIpHUJ+2ujXX7mCDiJKLSPyYoQCyFcOkO7ztJbS/PvNDhh5nvPpy2jJbK6hAHprvkvy8tAEuMATmZe5tr24+mEnc5OIUhe6pjpfFSvdAEdtEOHoQa3ROBQ6DSK7mMePGCHpC9NQtpjTRz2vIxFdDmP/bDFmk8igfeKyaz9mToFV4IrHqqkCF8fPQOnB3sIpmyq1HmUyDteLu2LRdRZDp2bD2lE4WKB+BHHU3XZ7lmtsV82fgbXXU6kV8HZ+kXb+uO0GnbS+y/Qq/vCowhHHfCH9BS3U28DzsVWUHRshxKsqP6oNaCchdb8aiaKelBpQoNPksgOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2IaicQg2FkYfK0vA5dvM5nd9KCSj0/FwmNQwZEJ8AuM=;
 b=xUTtKjVQJCbDRp+tezh/AQeq2xZ4Ypn3AnCCvS/30TmxBOLenskOOUFQnD/w49vftEiHcF7B1MN7FrQEin44VhWFX596uez7siV2PvxFA8laoV/4UXKRGXweEo0m1lWPTklSrV68C1Qg9QvPI37MEjCSBMSz2ijuGWWn8FZ3Uy0=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB5420.eurprd08.prod.outlook.com (2603:10a6:10:11a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 15:25:48 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 15:25:48 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>,
 Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 13 Sep 2021 17:25:35 +0200
Message-Id: <20210913152536.27073-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210913152536.27073-1-michael.riesch@wolfvision.net>
References: <20210913152536.27073-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR0602CA0010.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::20) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0602CA0010.eurprd06.prod.outlook.com (2603:10a6:800:bc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend
 Transport; Mon, 13 Sep 2021 15:25:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c62575e2-6608-4c11-1939-08d976cac376
X-MS-TrafficTypeDiagnostic: DB8PR08MB5420:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB54203BCABD5A82401C168AD5F2D99@DB8PR08MB5420.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: R+gf/TVOh3kxC/qelaFqfS3zmUxAJf/3ymCpYeN4AnuJr3oWL6ovWvnXTw0csLF7+hisp0GmsuGyBMaf5r0M//vwy2oCdojLVdNqLpSb2P6mXO6W55uFSL1RV3CDSZuZnZC8JWhfrrfNoGUzEjZBuIgUVEz8BvOQDcKepjsSqoYLWMcNze5r4pwnI6VfWaktntwORJ2U9HEB+848Ta28NPoeznAWw7OS89kVy+6NeOz5cx1K0jgIeu/JIp2iGdKBsou2BCUp0gtTR5O4SvOvSehIvnE/8Mdq6hc0F8+tBsrs39+vOErF63xIuFY+cN+YWtvufoloYG8fO3W8gRR2tcxzSVJ3p/46O3ZyeSP0lsI+7a0jiB+mAbWvOozWGXr1A8WCOxZ5i9sbkOlPxmNtEJrEQB2CwL7+jC7ABDRly1omAx2ntKIxXpu7VNRyYeqzmksjwpmjg8S4nkQRaZVP+UoUySGrdhgsdu2W1O0RNtsKF1bKbU+DRv4QwUq0OTIwt2Fd47pHfh69UKtoQYekUaoaXNDYijlnei99l8oYS1eZV7so9jqo+olYdc9IQmofnAvukpngSlMWTIVr5l7chj/r/PUMDFgjKJ8ILItod1V1L+ucNucp3j+iTe6I31r7niXtYVwCzO2wmwYM703ET5UN80oF/vadSaq6fFF0/uDm53Sa/FPpBa3p03JHzPFjxh09NbbdLdZphynH3rTaOQfpWT2sPIUSxKZz7G/coJA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39850400004)(376002)(396003)(366004)(136003)(186003)(6666004)(4326008)(54906003)(66946007)(956004)(5660300002)(44832011)(6916009)(26005)(8676002)(2616005)(30864003)(1076003)(36756003)(38100700002)(38350700002)(66476007)(52116002)(2906002)(66556008)(6506007)(6512007)(83380400001)(8936002)(316002)(6486002)(107886003)(478600001)(86362001)(309714004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JKhgnpvGB9RNl9sp988xKhhBw577+y0quEWYesmnpORHEeQqtPLjh3OzqlhI?=
 =?us-ascii?Q?sX3hXqMwm1MbnKdj5F/rvJmPxkNEhHG6JhNIOb0LtpJ1Vjbk9hrXSwoTsXbN?=
 =?us-ascii?Q?Z5Px5FC1WI3cZJ7dQIkTrLTSWQEE48cL2HQFhkZBWD1oPb/Nyofglk/VoVuY?=
 =?us-ascii?Q?2Qide3Uo8lmkA3zeLFLa0BbFOQ7ngaf1MnhNuhs7u7YlyK8eXLX8XhvtMTuX?=
 =?us-ascii?Q?V7ANhgcf9JJEEJ/qDZgVI8wQRfqx3bG4UrACJU6AYJqFTWeo0CGg2kwfAjLN?=
 =?us-ascii?Q?+no3LDNhAZUYX5ABGs4OSPiFR1F2QqswUDf0JwGWzQLWQg13TB/9umQo5+Py?=
 =?us-ascii?Q?+uJWMv/wSai2ioQGz0/jkFIrj7A4xrfheBGyJH2Exe3suoCPa7UcGf6Ewnwq?=
 =?us-ascii?Q?vHO9poIZqyaHrYKFggzLE2TAHBVbtHmtVOMxCcvdjT8zd6yeo4bSVrqSzg8l?=
 =?us-ascii?Q?5rg1/LV0PPVqbCy/L6CYC4IZVWw8wvi/QxbK9On3lZmnVAUArDdQOHz3AnSZ?=
 =?us-ascii?Q?afjrvpBWUqyYkcr84+j6B6T3Jryc+DAp39D5bBCwnC/gV2lvGMdy7oF3A5tR?=
 =?us-ascii?Q?HVpzfbvUERYWh6HVKWHSfVcw1dULoowWWQO/n15sNTi+6801QsnXV//LcA2C?=
 =?us-ascii?Q?PiyL/e78TmZzgZXW3xEAWvX0d9i7Y4fYpJbi7Z+mxgi3vTTN/PZfAwhDaqED?=
 =?us-ascii?Q?lmmaMtM1nEg/q7w6wfKC/CyFazX8wCZhSRuzGZt/1iiuTNUQtflmmc9iWJBk?=
 =?us-ascii?Q?a3cVil2U8C7oH/M+q2XJVOyPkLpGfR0aEUFKmqZYoU/p++gJOZfLVVFNX1ZW?=
 =?us-ascii?Q?TYSB0DWX562rRjwWbcTUEF0VkNNmieL9/8iECtKmG9lEH2H+Q011/bmUybnh?=
 =?us-ascii?Q?tv6bGJj3tyfGiceUCqaKlEmIZJRWUhUEl/TLnMPcVA+FpE1MycaQ+g12yu+1?=
 =?us-ascii?Q?kO80pYCOM/ulLN5vbNz0WQYpsSVuthV2E5RhLLndw5bgR5jSmLcFXK0y6ffS?=
 =?us-ascii?Q?8YhO5B1AsC7yfGrX4jV3x+b/4ZVWwx5G3VkmmX6kDjoTerVz36JXLjMYet45?=
 =?us-ascii?Q?sSRkzemLXV1zqZYmT6X86/5AtLcIqu5hDh9S36hqegM0hjGClvLK2EMyClOx?=
 =?us-ascii?Q?9bKGA+TqHYE5PcR614nbfcESr9UOBhparPIwSywXjZ5cqYMBcNuDZrHMJP0d?=
 =?us-ascii?Q?9LJl/HsaXoVazrPB2xI55uEwLM3zoTPAfv/VcJpakTZ7qg0aPY8we7DNXFrN?=
 =?us-ascii?Q?felNZQ/u0mCsz19bTXadNJFf1G6igl+QXNUJVtoE6A73XNYJMDdjwYTvktf3?=
 =?us-ascii?Q?MvMa3lNKpNvmwkeZkX2orfhH?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c62575e2-6608-4c11-1939-08d976cac376
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 15:25:48.6362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X9J/JJLXxV4GiaMOP54v1RIjI+1MEYjcuX74oP1bS/whWfTomSchrhLiNR5cQ0FDbkmeZp85Cdkqagy8yTGbeXcC4r1XCaorTj2GjYNGOSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5420
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_082553_908676_2B594AC1 
X-CRM114-Status: GOOD (  20.60  )
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
Subject: [PATCH 1/2] gpio: add driver for xilinx zynq and zynqmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Port the driver for the Xilinx Zynq/Zynq UltraScale+ MPSoC architecture
to barebox (based on the Linux driver).

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
[apply format fixes]
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/Kconfig         |   2 +
 drivers/gpio/Kconfig     |   6 +
 drivers/gpio/Makefile    |   1 +
 drivers/gpio/gpio-zynq.c | 453 +++++++++++++++++++++++++++++++++++++++
 4 files changed, 462 insertions(+)
 create mode 100644 drivers/gpio/gpio-zynq.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c7ab16688..a8b7bdeaa 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -248,6 +248,7 @@ config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
 	select HAS_DEBUG_LL
 	select PBL_IMAGE
+	select GPIOLIB
 
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP-based boards"
@@ -258,6 +259,7 @@ config ARCH_ZYNQMP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
+	select GPIOLIB
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 98a44fbbb..295426d4b 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -183,6 +183,12 @@ config GPIO_LIBFTDI1
 	bool "libftdi1 driver"
 	depends on SANDBOX
 
+config GPIO_ZYNQ
+	tristate "Xilinx Zynq GPIO support"
+	depends on ARCH_ZYNQ || ARCH_ZYNQMP
+	help
+	  Say yes here to support Xilinx Zynq GPIO controller.
+
 endmenu
 
 endif
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 638cbb19a..905950a85 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_GPIO_VF610)	+= gpio-vf610.o
 obj-$(CONFIG_GPIO_RASPBERRYPI_EXP) += gpio-raspberrypi-exp.o
 obj-$(CONFIG_GPIO_SIFIVE)	+= gpio-sifive.o
 obj-$(CONFIG_GPIO_STARFIVE)	+= gpio-starfive-vic.o
+obj-$(CONFIG_GPIO_ZYNQ)		+= gpio-zynq.o
diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
new file mode 100644
index 000000000..156c2e83f
--- /dev/null
+++ b/drivers/gpio/gpio-zynq.c
@@ -0,0 +1,453 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Xilinx Zynq GPIO device driver
+ *
+ * Copyright (C) 2009 - 2014 Xilinx, Inc.
+ *
+ * Based on the Linux kernel driver (drivers/gpio/gpio-zynq.c).
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <gpio.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+
+/* Maximum banks */
+#define ZYNQ_GPIO_MAX_BANK	     4
+#define ZYNQMP_GPIO_MAX_BANK	     6
+
+#define ZYNQ_GPIO_BANK0_NGPIO	     32
+#define ZYNQ_GPIO_BANK1_NGPIO	     22
+#define ZYNQ_GPIO_BANK2_NGPIO	     32
+#define ZYNQ_GPIO_BANK3_NGPIO	     32
+
+#define ZYNQMP_GPIO_BANK0_NGPIO	     26
+#define ZYNQMP_GPIO_BANK1_NGPIO	     26
+#define ZYNQMP_GPIO_BANK2_NGPIO	     26
+#define ZYNQMP_GPIO_BANK3_NGPIO	     32
+#define ZYNQMP_GPIO_BANK4_NGPIO	     32
+#define ZYNQMP_GPIO_BANK5_NGPIO	     32
+
+#define ZYNQ_GPIO_NR_GPIOS	     118
+#define ZYNQMP_GPIO_NR_GPIOS	     174
+
+#define ZYNQ_GPIO_BANK0_PIN_MIN(str) 0
+#define ZYNQ_GPIO_BANK0_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK0_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK0_NGPIO - 1)
+#define ZYNQ_GPIO_BANK1_PIN_MIN(str) (ZYNQ_GPIO_BANK0_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK1_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK1_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK1_NGPIO - 1)
+#define ZYNQ_GPIO_BANK2_PIN_MIN(str) (ZYNQ_GPIO_BANK1_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK2_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK2_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK2_NGPIO - 1)
+#define ZYNQ_GPIO_BANK3_PIN_MIN(str) (ZYNQ_GPIO_BANK2_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK3_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK3_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK3_NGPIO - 1)
+#define ZYNQ_GPIO_BANK4_PIN_MIN(str) (ZYNQ_GPIO_BANK3_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK4_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK4_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK4_NGPIO - 1)
+#define ZYNQ_GPIO_BANK5_PIN_MIN(str) (ZYNQ_GPIO_BANK4_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK5_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK5_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK5_NGPIO - 1)
+
+/* Register offsets for the GPIO device */
+/* LSW Mask & Data -WO */
+#define ZYNQ_GPIO_DATA_LSW_OFFSET(BANK) (0x000 + (8 * BANK))
+/* MSW Mask & Data -WO */
+#define ZYNQ_GPIO_DATA_MSW_OFFSET(BANK) (0x004 + (8 * BANK))
+/* Data Register-RW */
+#define ZYNQ_GPIO_DATA_OFFSET(BANK)	(0x040 + (4 * BANK))
+#define ZYNQ_GPIO_DATA_RO_OFFSET(BANK)	(0x060 + (4 * BANK))
+/* Direction mode reg-RW */
+#define ZYNQ_GPIO_DIRM_OFFSET(BANK)	(0x204 + (0x40 * BANK))
+/* Output enable reg-RW */
+#define ZYNQ_GPIO_OUTEN_OFFSET(BANK)	(0x208 + (0x40 * BANK))
+/* Interrupt mask reg-RO */
+#define ZYNQ_GPIO_INTMASK_OFFSET(BANK)	(0x20C + (0x40 * BANK))
+/* Interrupt enable reg-WO */
+#define ZYNQ_GPIO_INTEN_OFFSET(BANK)	(0x210 + (0x40 * BANK))
+/* Interrupt disable reg-WO */
+#define ZYNQ_GPIO_INTDIS_OFFSET(BANK)	(0x214 + (0x40 * BANK))
+/* Interrupt status reg-RO */
+#define ZYNQ_GPIO_INTSTS_OFFSET(BANK)	(0x218 + (0x40 * BANK))
+/* Interrupt type reg-RW */
+#define ZYNQ_GPIO_INTTYPE_OFFSET(BANK)	(0x21C + (0x40 * BANK))
+/* Interrupt polarity reg-RW */
+#define ZYNQ_GPIO_INTPOL_OFFSET(BANK)	(0x220 + (0x40 * BANK))
+/* Interrupt on any, reg-RW */
+#define ZYNQ_GPIO_INTANY_OFFSET(BANK)	(0x224 + (0x40 * BANK))
+
+/* Disable all interrupts mask */
+#define ZYNQ_GPIO_IXR_DISABLE_ALL	0xFFFFFFFF
+
+/* Mid pin number of a bank */
+#define ZYNQ_GPIO_MID_PIN_NUM		16
+
+/* GPIO upper 16 bit mask */
+#define ZYNQ_GPIO_UPPER_MASK		0xFFFF0000
+
+/* set to differentiate zynq from zynqmp, 0=zynqmp, 1=zynq */
+#define ZYNQ_GPIO_QUIRK_IS_ZYNQ		BIT(0)
+#define GPIO_QUIRK_DATA_RO_BUG		BIT(1)
+
+/**
+ * struct zynq_gpio - GPIO device private data structure
+ * @chip:	instance of the gpio_chip
+ * @base_addr:	base address of the GPIO device
+ * @p_data:	pointer to platform data
+ */
+struct zynq_gpio {
+	struct gpio_chip chip;
+	void __iomem *base_addr;
+	const struct zynq_platform_data *p_data;
+};
+
+/**
+ * struct zynq_platform_data - Zynq GPIO platform data structure
+ * @quirks:	Flags is used to identify the platform
+ * @ngpio:	max number of gpio pins
+ * @max_bank:	maximum number of gpio banks
+ * @bank_min:	this array represents bank's min pin
+ * @bank_max:	this array represents bank's max pin
+ */
+struct zynq_platform_data {
+	u32 quirks;
+	u16 ngpio;
+	int max_bank;
+	int bank_min[ZYNQMP_GPIO_MAX_BANK];
+	int bank_max[ZYNQMP_GPIO_MAX_BANK];
+};
+
+/**
+ * zynq_gpio_is_zynq - Test if HW is Zynq or ZynqMP
+ * @gpio:	Pointer to driver data struct
+ *
+ * Return: 0 if ZynqMP, 1 if Zynq.
+ */
+static int zynq_gpio_is_zynq(struct zynq_gpio *gpio)
+{
+	return !!(gpio->p_data->quirks & ZYNQ_GPIO_QUIRK_IS_ZYNQ);
+}
+
+/**
+ * gpio_data_ro_bug - Test if HW bug exists or not
+ * @gpio:       Pointer to driver data struct
+ *
+ * Return: 0 if bug does not exist, 1 if bug exists.
+ */
+static int gpio_data_ro_bug(struct zynq_gpio *gpio)
+{
+	return !!(gpio->p_data->quirks & GPIO_QUIRK_DATA_RO_BUG);
+}
+
+/**
+ * zynq_gpio_get_bank_pin - Get the bank number and pin number within that bank
+ * for a given pin in the GPIO device
+ * @pin_num:	gpio pin number within the device
+ * @bank_num:	an output parameter used to return the bank number of the gpio
+ *		pin
+ * @bank_pin_num: an output parameter used to return pin number within a bank
+ *		  for the given gpio pin
+ * @gpio:	gpio device data structure
+ *
+ * Returns the bank number and pin offset within the bank.
+ */
+static int zynq_gpio_get_bank_pin(unsigned int pin_num, unsigned int *bank_num,
+				  unsigned int *bank_pin_num,
+				  struct zynq_gpio *gpio)
+{
+	int bank;
+
+	for (bank = 0; bank < gpio->p_data->max_bank; bank++) {
+		if ((pin_num >= gpio->p_data->bank_min[bank]) &&
+		    (pin_num <= gpio->p_data->bank_max[bank])) {
+			*bank_num = bank;
+			*bank_pin_num = pin_num - gpio->p_data->bank_min[bank];
+			return 0;
+		}
+	}
+
+	*bank_num = 0;
+	*bank_pin_num = 0;
+	return -ENODEV;
+}
+
+/**
+ * zynq_gpio_get_value - Get the state of the specified pin of GPIO device
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ *
+ * This function reads the state of the specified pin of the GPIO device.
+ *
+ * Return: 0 if the pin is low, 1 if pin is high.
+ */
+static int zynq_gpio_get_value(struct gpio_chip *chip, unsigned int pin)
+{
+	u32 data;
+	unsigned int bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return -EINVAL;
+
+	if (gpio_data_ro_bug(gpio)) {
+		if (zynq_gpio_is_zynq(gpio)) {
+			if (bank_num <= 1) {
+				data = readl_relaxed(
+					gpio->base_addr +
+					ZYNQ_GPIO_DATA_RO_OFFSET(bank_num));
+			} else {
+				data = readl_relaxed(
+					gpio->base_addr +
+					ZYNQ_GPIO_DATA_OFFSET(bank_num));
+			}
+		} else {
+			if (bank_num <= 2) {
+				data = readl_relaxed(
+					gpio->base_addr +
+					ZYNQ_GPIO_DATA_RO_OFFSET(bank_num));
+			} else {
+				data = readl_relaxed(
+					gpio->base_addr +
+					ZYNQ_GPIO_DATA_OFFSET(bank_num));
+			}
+		}
+	} else {
+		data = readl_relaxed(gpio->base_addr +
+				     ZYNQ_GPIO_DATA_RO_OFFSET(bank_num));
+	}
+	return (data >> bank_pin_num) & 1;
+}
+
+/**
+ * zynq_gpio_set_value - Modify the state of the pin with specified value
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ * @state:	value used to modify the state of the specified pin
+ *
+ * This function calculates the register offset (i.e to lower 16 bits or
+ * upper 16 bits) based on the given pin number and sets the state of a
+ * gpio pin to the specified value. The state is either 0 or non-zero.
+ */
+static void zynq_gpio_set_value(struct gpio_chip *chip, unsigned int pin,
+				int state)
+{
+	unsigned int reg_offset, bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return;
+
+	if (bank_pin_num >= ZYNQ_GPIO_MID_PIN_NUM) {
+		bank_pin_num -= ZYNQ_GPIO_MID_PIN_NUM;
+		reg_offset = ZYNQ_GPIO_DATA_MSW_OFFSET(bank_num);
+	} else {
+		reg_offset = ZYNQ_GPIO_DATA_LSW_OFFSET(bank_num);
+	}
+
+	/*
+	 * get the 32 bit value to be written to the mask/data register where
+	 * the upper 16 bits is the mask and lower 16 bits is the data
+	 */
+	state = !!state;
+	state = ~(1 << (bank_pin_num + ZYNQ_GPIO_MID_PIN_NUM)) &
+		((state << bank_pin_num) | ZYNQ_GPIO_UPPER_MASK);
+
+	writel_relaxed(state, gpio->base_addr + reg_offset);
+}
+
+/**
+ * zynq_gpio_dir_in - Set the direction of the specified GPIO pin as input
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ *
+ * This function uses the read-modify-write sequence to set the direction of
+ * the gpio pin as input.
+ *
+ * Return: 0 always
+ */
+static int zynq_gpio_dir_in(struct gpio_chip *chip, unsigned int pin)
+{
+	u32 reg;
+	unsigned int bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return -EINVAL;
+	/*
+	 * On zynq bank 0 pins 7 and 8 are special and cannot be used
+	 * as inputs.
+	 */
+	if (zynq_gpio_is_zynq(gpio) && bank_num == 0 &&
+	    (bank_pin_num == 7 || bank_pin_num == 8))
+		return -EINVAL;
+
+	/* clear the bit in direction mode reg to set the pin as input */
+	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+	reg &= ~BIT(bank_pin_num);
+	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+
+	return 0;
+}
+
+/**
+ * zynq_gpio_dir_out - Set the direction of the specified GPIO pin as output
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ * @state:	value to be written to specified pin
+ *
+ * This function sets the direction of specified GPIO pin as output, configures
+ * the Output Enable register for the pin and uses zynq_gpio_set to set
+ * the state of the pin to the value specified.
+ *
+ * Return: 0 always
+ */
+static int zynq_gpio_dir_out(struct gpio_chip *chip, unsigned int pin,
+			     int state)
+{
+	u32 reg;
+	unsigned int bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return -EINVAL;
+
+	/* set the GPIO pin as output */
+	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+	reg |= BIT(bank_pin_num);
+	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+
+	/* configure the output enable reg for the pin */
+	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_OUTEN_OFFSET(bank_num));
+	reg |= BIT(bank_pin_num);
+	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_OUTEN_OFFSET(bank_num));
+
+	/* set the state of the pin */
+	zynq_gpio_set_value(chip, pin, state);
+	return 0;
+}
+
+/**
+ * zynq_gpio_get_direction - Read the direction of the specified GPIO pin
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ *
+ * This function returns the direction of the specified GPIO.
+ *
+ * Return: 0 for output, 1 for input
+ */
+static int zynq_gpio_get_direction(struct gpio_chip *chip, unsigned int pin)
+{
+	u32 reg;
+	unsigned int bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return -EINVAL;
+
+	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+
+	return !(reg & BIT(bank_pin_num));
+}
+
+static struct gpio_ops zynq_gpio_ops = {
+	.direction_input = zynq_gpio_dir_in,
+	.direction_output = zynq_gpio_dir_out,
+	.get = zynq_gpio_get_value,
+	.set = zynq_gpio_set_value,
+	.get_direction = zynq_gpio_get_direction,
+};
+
+static int zynqmp_gpio_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct zynq_gpio *gpio;
+	struct zynq_platform_data *p_data;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (const void **)&p_data);
+	if (ret)
+		return ret;
+
+	gpio = xzalloc(sizeof(*gpio));
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		printk("dev_request_mem_resource\n");
+		return PTR_ERR(iores);
+	}
+
+	if (dev->id < 0) {
+		gpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
+		if (gpio->chip.base < 0) {
+			ret = gpio->chip.base;
+			printk("Failed to get GPIO alias\n");
+			goto free_gpio;
+		}
+	} else {
+		gpio->chip.base = dev->id;
+	}
+
+	gpio->base_addr = IOMEM(iores->start);
+	gpio->chip.ops = &zynq_gpio_ops;
+	gpio->chip.ngpio = p_data->ngpio;
+	gpio->chip.dev = dev;
+	gpio->p_data = p_data;
+
+	return gpiochip_add(&gpio->chip);
+free_gpio:
+	free(gpio);
+	return ret;
+}
+
+static const struct zynq_platform_data zynqmp_gpio_def = {
+	.quirks = GPIO_QUIRK_DATA_RO_BUG,
+	.ngpio = ZYNQMP_GPIO_NR_GPIOS,
+	.max_bank = ZYNQMP_GPIO_MAX_BANK,
+	.bank_min[0] = ZYNQ_GPIO_BANK0_PIN_MIN(MP),
+	.bank_max[0] = ZYNQ_GPIO_BANK0_PIN_MAX(MP),
+	.bank_min[1] = ZYNQ_GPIO_BANK1_PIN_MIN(MP),
+	.bank_max[1] = ZYNQ_GPIO_BANK1_PIN_MAX(MP),
+	.bank_min[2] = ZYNQ_GPIO_BANK2_PIN_MIN(MP),
+	.bank_max[2] = ZYNQ_GPIO_BANK2_PIN_MAX(MP),
+	.bank_min[3] = ZYNQ_GPIO_BANK3_PIN_MIN(MP),
+	.bank_max[3] = ZYNQ_GPIO_BANK3_PIN_MAX(MP),
+	.bank_min[4] = ZYNQ_GPIO_BANK4_PIN_MIN(MP),
+	.bank_max[4] = ZYNQ_GPIO_BANK4_PIN_MAX(MP),
+	.bank_min[5] = ZYNQ_GPIO_BANK5_PIN_MIN(MP),
+	.bank_max[5] = ZYNQ_GPIO_BANK5_PIN_MAX(MP),
+};
+
+static const struct zynq_platform_data zynq_gpio_def = {
+	.quirks = ZYNQ_GPIO_QUIRK_IS_ZYNQ | GPIO_QUIRK_DATA_RO_BUG,
+	.ngpio = ZYNQ_GPIO_NR_GPIOS,
+	.max_bank = ZYNQ_GPIO_MAX_BANK,
+	.bank_min[0] = ZYNQ_GPIO_BANK0_PIN_MIN(),
+	.bank_max[0] = ZYNQ_GPIO_BANK0_PIN_MAX(),
+	.bank_min[1] = ZYNQ_GPIO_BANK1_PIN_MIN(),
+	.bank_max[1] = ZYNQ_GPIO_BANK1_PIN_MAX(),
+	.bank_min[2] = ZYNQ_GPIO_BANK2_PIN_MIN(),
+	.bank_max[2] = ZYNQ_GPIO_BANK2_PIN_MAX(),
+	.bank_min[3] = ZYNQ_GPIO_BANK3_PIN_MIN(),
+	.bank_max[3] = ZYNQ_GPIO_BANK3_PIN_MAX(),
+};
+
+static const struct of_device_id zynq_gpio_of_match[] = {
+	{ .compatible = "xlnx,zynq-gpio-1.0", .data = &zynq_gpio_def },
+	{ .compatible = "xlnx,zynqmp-gpio-1.0", .data = &zynqmp_gpio_def },
+	{ /* end of table */ }
+};
+
+static struct driver_d zynqmp_gpio_driver = {
+	.name = "zynqmp-gpio",
+	.probe = zynqmp_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(zynq_gpio_of_match),
+};
+
+static int gpio_zynqmp_init(void)
+{
+	platform_driver_register(&zynqmp_gpio_driver);
+	return 0;
+}
+postcore_initcall(gpio_zynqmp_init);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

