Delivery-date: Mon, 13 Sep 2021 14:16:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPksY-0003L2-1c
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 14:16:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPksV-0007as-FO
	for lore@pengutronix.de; Mon, 13 Sep 2021 14:16:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXlc03rk5bwAdk/fgsGC6DHm8KAys2LfH4dbIQmR2H4=; b=R9shTI6718OhNm
	rZdKcAjMIQicK9P+QBpGAkPMGT5rRmdHhfPemBF8W46kWj/jMpwJH0Nyk0coVvFAYRwsTGzYKzNU2
	7G9jp6Z52ho9Seh+/ImldWKdww/J0DEFL+w7exumtP8lawrBNW37t0ulbLlZSbnGH7Y6S/d/RiVzX
	0SDs4EZ1fQMevMWMyO9EuXnsSgn988CChS4JLedC8+pHTEC/xJWHPCtaeBovr1Fc6zktXV8pb0Tro
	1ejMIm3DWBuovXhIvJHKLeuH9q2O8jvfofwo9+58jtNy559Vbdqe9fWlsLnem2x8cLM0rEH3axhK7
	5hFr/NPRV373xsxJ/dOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPkqw-001YZJ-IL; Mon, 13 Sep 2021 12:14:26 +0000
Received: from mail-eopbgr60085.outbound.protection.outlook.com ([40.107.6.85]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPkqp-001YXt-U1
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 12:14:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gM+kwLX7mAIezcKaoufRX4a1AdfHPHpkvUY7DH5+8TcC9VWbD6LWpCkTyOJ5re9hQRRpizWfxai+is5t3PfcxCc4wZKSPConliBWKR7qDkozwKQnzcisF+X5+JyyUn1wDhSUssGcw6I/RR+RutxTdlUbTi7O78eLGLwhhtgPjS/NFuu/jp0ITvqwW25S4qho0aw6dMsboCPPY5p9a1cp1DJwwweohQjnE0yXqfQDBPrUs/p90jCW3y5uPCsvAMfN/2WlE7mr55u0OGOcKPSz1rAscnOAB6kL/hVNBIDuPfUhNXqKp/cI4wrqVLt/a5AzByZ81HQurV44Db+IF4ZsXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=aH1GNzvLWujMLEe7zF6CXyrhTzAy6cYRCR51Nt7BGcE=;
 b=E0NaTP3FzASDOuK8Ng1Ckcu1T46E+M5S/cO83kmYnZrqkMy12YyCIxVOlgMy1cHHhVvAkJhFfw4ZfregyJQhsB2QKaYgxVYdl/JiwJxvoTlg3dJagvgTA67w8jYfZNlK5vEchaBUzdh9FdWE/sXySPNfrOohIXb4vfwCOpKMsNcO0HvBeBYegE13BHDGkj2zzU3ryPMkIdUBiJjJSDO8Kx/iXW5jJTPx8k4/qZy5EtXsi9fhebEuiSIHWs/Eewamd+pLLUvw005uzJgKBNUPnKvjRepCA81YQk3M9bnrPcs4eNf0Ai7JWOJffancIZUxGHaFUJq6xuIC7r7h8eI29Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aH1GNzvLWujMLEe7zF6CXyrhTzAy6cYRCR51Nt7BGcE=;
 b=VVeUtOucjKYoBr7uU4/xnR6janx7dzWSnNnfEVD42VvQsKgdj/JMrsmCIpQVe/RIgG2NV693UYJWfw51SIJw3vZjYG4jZEVW6FbNQqvkkThz4rr3UkXIlTjEXTPkhCWF48J9O9VwyQJmg/adguuamI4MJ49uteV0DKXn68li+HA=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6874.eurprd08.prod.outlook.com (2603:10a6:10:2ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 12:14:14 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 12:14:14 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 13 Sep 2021 14:13:48 +0200
Message-Id: <20210913121350.9307-2-michael.riesch@wolfvision.net>
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
 15.20.4523.8 via Frontend Transport; Mon, 13 Sep 2021 12:14:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c3b4ab26-c199-40e2-3a35-08d976b00097
X-MS-TrafficTypeDiagnostic: DB9PR08MB6874:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB687496A904D008C59F867E8DF2D99@DB9PR08MB6874.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N8lGc0MVb2HdseBWu4/Bt7Nq9tMHbKKICsci4ckjwGtp0QhvoLuHGAAoRO0w7uyUIurVOoQSziFQe3H83dTG29Zl3onCmhjy0h1wNhEGWGWim3PfiVNFcs5rjXPiyVQd5tmdszI9e4O9ALGMC0zq7EdtswCFmE/8WkxPNOOwKeVjviuOhXPACxV08kw0kr4lbv2itnK7Dn0wvnzinzFcKOjxP3hnmvJEV1L/Wpnw2wg+Q0XeRobjuXMtAtudvuowgDx5livZryeJy7Oa0NiFVoFqzOp+copKdOF9nXVrwX1davgmgIrpMqby4/dhfNw5ZyMaNmQd6sgLnadaDD2FRk49Km8+jv+jXwKRzTVhdyc1eFE7aIeH/SJDbtWGGZPWwQQI5GTLB/lfsWpWToVXEpoLpwbYvjjgcB6BoQvvypeu8Xl0eQoIyKtTJE6FY/4BzZBHiViSufON7RXQfWMpTg+NpnQUhbH3RumhdpE8fU1xrF8FAdRx2QA6hXryMcEv3/0XWjUe89/k7zMFzvSUZ/Lt1fPNe/EOAfM7pH1m7r19d0ad1WaEi6UWbRvQCnCsEepLddVqlNz7Zj71/hwNsWHujZzj+MJvmOKNtDPwzLS739u7a3lVaFD9cQn2J7bQWq8J6rSR7pwfVmnD9pXRiAqg6Dt/n+Kpxzj8x5WZsCHdLkZSc8pDfu72TNSIzueAQH5Gd319duKbXjtCq5YeHQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(346002)(376002)(366004)(396003)(136003)(8936002)(5660300002)(107886003)(8676002)(26005)(52116002)(186003)(478600001)(38350700002)(6512007)(6486002)(6916009)(6506007)(66556008)(66476007)(66946007)(956004)(2616005)(6666004)(83380400001)(4326008)(86362001)(36756003)(316002)(44832011)(2906002)(38100700002)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y0NgY36Ke/kBdOcP8j9UwOvFTnku30tYPVUW3qtDPhIH1g7/FrNaK96VYnVE?=
 =?us-ascii?Q?xZsnurRe1Y8ihKY6U6KMKGaPSpwcLUFct4MTjNaQu9U9jGii5a3KWSMr7XsT?=
 =?us-ascii?Q?8vLT8D8VJFdh1qXSIje0wJMIb6icDu4LHBQyX/PAEg7hD+QpNZzz8RUWWb11?=
 =?us-ascii?Q?Jv0H0fn6zMgqQtZRrdRdDfAjE1SOE+iMtJE8EFXwR3wSpFryVCAjcM2MXtyN?=
 =?us-ascii?Q?uR5ZJ9fbqHC2n7lMfkTwBms0swvhQ3mdF3MCbYY7qedeiz04eKtZHSlxOpTG?=
 =?us-ascii?Q?DzLprjXOj1/iPRfem2uBr5Ge+HblIn3XKQSUPozYve8ePJnnp9Ovy9tmjpzZ?=
 =?us-ascii?Q?sSjP6DrzgnWbWlgF5mwR6zDOVx5Lj4r9HgeeQXhc9UOpMSKdx3LzN5evJIXZ?=
 =?us-ascii?Q?W0hOzHVCPM5sl+/AGvznRhTb3V3B+dmkDQN2bV64F1Wixry53b0g9ARCdyDs?=
 =?us-ascii?Q?ZleUWjx81495FiUGZ2EKWDAiyGQPIpkxyuZOQAck7gVQsdZMJp3wp1aWPuhK?=
 =?us-ascii?Q?veYBHUXqqQXE3FebE90tHQNfAClV36EtJ4JMQElFsmgE84Fvh05ShAUjZqjZ?=
 =?us-ascii?Q?G6OoYL0UpW2pZ4Sfg+5BNjyAtW5iXATMDXUF7QIjZeaDHGPLXeePnmqyFx3f?=
 =?us-ascii?Q?njJR7oLQ46PsB4QsS+bjwlqcjX3vkopfAjvjnC4+QL690WTQlQSbovVshW6l?=
 =?us-ascii?Q?PizC8KaGD0vHuwERiVRpJ+h7bFS+vJLNG8Y5z7amnhd2vHCbAUxwXic0iFxD?=
 =?us-ascii?Q?8EQPmumVLDJsCF83kbV14O9m4XzrtsfVUpKMGCBjDrk9IctQx4rBn/+wyuWu?=
 =?us-ascii?Q?GlsCFn+CdG1NIYvVu5TTybTD6NMS2eLxXwCR8+N3xav1xgunHhKwNt78SidU?=
 =?us-ascii?Q?LNODqQukVTnVjuAERaSeeOiWlEPoXWt3bpk38KPfu31bU5kDC8tohBou8GH9?=
 =?us-ascii?Q?2aj/cAho5Cntn3IXtoPX8QRTsGnoFXHaD5MUSwXY/pjCTgkJEfEcUr/s35po?=
 =?us-ascii?Q?66se2wueWvpBCqk8cmOgwcAKOXHc8I5kYx3L/gb5jWLldj1/xsMzHPrTYr/x?=
 =?us-ascii?Q?gOovN6VyCLYWhh9omMjlr5+OlXlTSS+v1W5V/HYmPe5Ck7zdypzChdbDNrkA?=
 =?us-ascii?Q?8J3DWjP8W5dD2O+Af8KW+/ckaX5QcZQIzt9eOev7rBMU6oKI12ckMKQmW21F?=
 =?us-ascii?Q?56YRORsTk38AYKfAVu1AgP71OD2QSTYULmp4e/9lzpfUBunOk3xePpziWY48?=
 =?us-ascii?Q?Suto5scyf6N/qaOiIV83zhWQK4c0dUwRgrZfAo5SGbThYZcGUQZtJWz4h4bL?=
 =?us-ascii?Q?uABlLpt4touTwSlrVb85y40O?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c3b4ab26-c199-40e2-3a35-08d976b00097
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 12:14:14.7257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4e5BQZtYDbeyLLL69CKE8i1Y0iXTowUT4eYW/uph6sga5DkdQGPCapX/ttm1PyPXebH/5cgZKfDBskT22SUotTdfzgLEptxRHR1oQbffMrk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_051419_997246_BC76E658 
X-CRM114-Status: GOOD (  17.97  )
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
Subject: [PATCH v2 1/3] arm: zynqmp: add support for xilinx zcu106 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add support for the Xilinx Zynq UltraScale+ MPSoC ZCU106 evaluation
board.

The changes are derived from the ZCU104 board support by applying
s/104/106/g (more or less).

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/xilinx-zcu106/Makefile        |  3 +++
 arch/arm/boards/xilinx-zcu106/board.c         | 21 ++++++++++++++++
 arch/arm/boards/xilinx-zcu106/lowlevel.c      | 24 +++++++++++++++++++
 arch/arm/boards/xilinx-zcu106/lowlevel_init.S | 12 ++++++++++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/zynqmp-zcu106-revA.dts           | 21 ++++++++++++++++
 arch/arm/mach-zynqmp/Kconfig                  |  6 +++++
 images/Makefile.zynqmp                        |  4 ++++
 9 files changed, 93 insertions(+)
 create mode 100644 arch/arm/boards/xilinx-zcu106/Makefile
 create mode 100644 arch/arm/boards/xilinx-zcu106/board.c
 create mode 100644 arch/arm/boards/xilinx-zcu106/lowlevel.c
 create mode 100644 arch/arm/boards/xilinx-zcu106/lowlevel_init.S
 create mode 100644 arch/arm/dts/zynqmp-zcu106-revA.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 5aac64fce..22dc9fe3d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -170,6 +170,7 @@ obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_WEBASTO_CCBV2)		+= webasto-ccbv2/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
 obj-$(CONFIG_MACH_XILINX_ZCU104)		+= xilinx-zcu104/
+obj-$(CONFIG_MACH_XILINX_ZCU106)		+= xilinx-zcu106/
 obj-$(CONFIG_MACH_ZII_COMMON)			+= zii-common/
 obj-$(CONFIG_MACH_ZII_RDU1)			+= zii-imx51-rdu1/
 obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
diff --git a/arch/arm/boards/xilinx-zcu106/Makefile b/arch/arm/boards/xilinx-zcu106/Makefile
new file mode 100644
index 000000000..297f77d57
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu106/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+obj-y += board.o
+lwl-y += lowlevel.o lowlevel_init.o
diff --git a/arch/arm/boards/xilinx-zcu106/board.c b/arch/arm/boards/xilinx-zcu106/board.c
new file mode 100644
index 000000000..0cb5ce86e
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu106/board.c
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2021, WolfVision GmbH
+ * Author: Michael Riesch <michael.riesch@wolfvision.net>
+ *
+ * Based on the barebox ZCU104 board support code.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/zynqmp-bbu.h>
+
+static int zcu106_register_update_handler(void)
+{
+	if (!of_machine_is_compatible("xlnx,zynqmp-zcu106"))
+		return 0;
+
+	return zynqmp_bbu_register_handler("SD", "/boot/BOOT.BIN",
+					   BBU_HANDLER_FLAG_DEFAULT);
+}
+device_initcall(zcu106_register_update_handler);
diff --git a/arch/arm/boards/xilinx-zcu106/lowlevel.c b/arch/arm/boards/xilinx-zcu106/lowlevel.c
new file mode 100644
index 000000000..ccc8d6141
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu106/lowlevel.c
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2021, WolfVision GmbH
+ * Author: Michael Riesch <michael.riesch@wolfvision.net>
+ *
+ * Based on the barebox ZCU104 board support code.
+ */
+
+#include <common.h>
+#include <debug_ll.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_zynqmp_zcu106_revA_start[];
+
+void zynqmp_zcu106_start(uint32_t, uint32_t, uint32_t);
+
+void noinline zynqmp_zcu106_start(uint32_t r0, uint32_t r1, uint32_t r2)
+{
+	/* Assume that the first stage boot loader configured the UART */
+	putc_ll('>');
+
+	barebox_arm_entry(0, SZ_2G,
+			  __dtb_zynqmp_zcu106_revA_start + global_variable_offset());
+}
diff --git a/arch/arm/boards/xilinx-zcu106/lowlevel_init.S b/arch/arm/boards/xilinx-zcu106/lowlevel_init.S
new file mode 100644
index 000000000..f3d55dcef
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu106/lowlevel_init.S
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+
+/* The DRAM is already setup */
+#define STACK_TOP 0x80000000
+
+ENTRY_PROC(start_zynqmp_zcu106)
+	mov x0, #STACK_TOP
+	mov sp, x0
+	b zynqmp_zcu106_start
+ENTRY_PROC_END(start_zynqmp_zcu106)
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index ffa9fe88c..14ca6c38e 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -170,6 +170,7 @@ lwl-$(CONFIG_MACH_SAMA5D27_SOM1) += at91-sama5d27_som1_ek.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += at91-sama5d27_giantboard.dtb.o
 lwl-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 lwl-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
+lwl-$(CONFIG_MACH_XILINX_ZCU106) += zynqmp-zcu106-revA.dtb.o
 
 lwl-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.o
 lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
diff --git a/arch/arm/dts/zynqmp-zcu106-revA.dts b/arch/arm/dts/zynqmp-zcu106-revA.dts
new file mode 100644
index 000000000..7c5058826
--- /dev/null
+++ b/arch/arm/dts/zynqmp-zcu106-revA.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * dts file for Xilinx ZynqMP ZCU106
+ *
+ * Copyright (C) 2021, WolfVision GmbH
+ * Author: Michael Riesch <michael.riesch@wolfvision.net>
+ *
+ * Based on the dts for the Xilinx ZynqMP ZCU104.
+ */
+
+#include <arm64/xilinx/zynqmp-zcu106-revA.dts>
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &sdhci1, "partname:0";
+			file-path = "barebox.env";
+		};
+	};
+};
diff --git a/arch/arm/mach-zynqmp/Kconfig b/arch/arm/mach-zynqmp/Kconfig
index c9dc71c9e..78cb90165 100644
--- a/arch/arm/mach-zynqmp/Kconfig
+++ b/arch/arm/mach-zynqmp/Kconfig
@@ -7,4 +7,10 @@ config MACH_XILINX_ZCU104
 	  Say Y here if you are using the Xilinx Zynq UltraScale+ MPSoC ZCU104
 	  evaluation board.
 
+config MACH_XILINX_ZCU106
+	bool "Xilinx Zynq UltraScale+ MPSoC ZCU106"
+	help
+	  Say Y here if you are using the Xilinx Zynq UltraScale+ MPSoC ZCU106
+	  evaluation board.
+
 endif
diff --git a/images/Makefile.zynqmp b/images/Makefile.zynqmp
index da3e90b84..872f39988 100644
--- a/images/Makefile.zynqmp
+++ b/images/Makefile.zynqmp
@@ -6,3 +6,7 @@
 pblb-$(CONFIG_MACH_XILINX_ZCU104) += start_zynqmp_zcu104
 FILE_barebox-zynqmp-zcu104.img = start_zynqmp_zcu104.pblb
 image-$(CONFIG_MACH_XILINX_ZCU104) += barebox-zynqmp-zcu104.img
+
+pblb-$(CONFIG_MACH_XILINX_ZCU106) += start_zynqmp_zcu106
+FILE_barebox-zynqmp-zcu106.img = start_zynqmp_zcu106.pblb
+image-$(CONFIG_MACH_XILINX_ZCU106) += barebox-zynqmp-zcu106.img
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

