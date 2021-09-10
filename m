Delivery-date: Fri, 10 Sep 2021 15:45:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOgql-0005Y5-21
	for lore@lore.pengutronix.de; Fri, 10 Sep 2021 15:45:51 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOgqj-0002r3-KY
	for lore@pengutronix.de; Fri, 10 Sep 2021 15:45:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXlc03rk5bwAdk/fgsGC6DHm8KAys2LfH4dbIQmR2H4=; b=tqx90nCAcxAfQR
	qLB9m9g/j1D4yT7HJk/dUKbufqi+uo/om4fKAl9/yLXH//MF4smsTxLmH0YIw6yVDD4r3dWtSycR+
	4Z/Ypojr8e6tibmWAcd11BHnLOoYIKNK+Taegtp2/O5G8zcOcx36DY6h1e6/h7b9ArRB/hWN6IGKw
	ZK3mwRrRbfAnOUykgwI4sRy6jX4AFDhs7pABm8TqDRc4dK5MEZpiZwvGP5z7zwTAx3WHAx6gdt89X
	cXlyIKb4scP8nXRSicyf2I+lJIgIHUG7dsHnM+fK1YO6MpU6i+VMttRGVHFLv7/HAeeZsoq9TGM+M
	7wZtiR8nbDNPb33vHH3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOgox-00Cpik-As; Fri, 10 Sep 2021 13:43:59 +0000
Received: from mail-eopbgr150084.outbound.protection.outlook.com
 ([40.107.15.84] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOgop-00Cpga-Td
 for barebox@lists.infradead.org; Fri, 10 Sep 2021 13:43:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyAZuYZzu105upp5C6Qw1RMgjeOyNfsCJ7o/1VdAS1+KDfow3VmymCmyHQbc5YJEbpW4DWIl/mMdKaKnZmbnSlwdEoxciuzYf6ckEsNwaL/mPznwRggzeRGhKCjTBh5IHljOuTpINXQ1KjubbsqD3LzBtygM2Ufglh2KnjoGVfqrXNltxlp++zWRBWwVoukn3hpiyIFsaD5oaLNOxWKDlCw4gVnWMwXMpdLeZyJ58uVSu/fULEONuKCkNde6CdKEIu0XjtqEzuAi5pQlRME9JOm2LcwMtC5Xe1nFYYeyCpeRLBRAqWytmNN2qFZALFIeNTfW7fH5wmE9Fn+Dy9YJww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=aH1GNzvLWujMLEe7zF6CXyrhTzAy6cYRCR51Nt7BGcE=;
 b=D925pB8p4i/TWN+0OCJt4mlQz+k5VCur5ehH1CcBP88zFMZeUo/j7NRt8/lmLVfkp6TuXUAMb388a3YM6twic7KfOPQOTUg5NyO7RAO7Bwh34Ne3RKY+F+tMypaYN/MWNrG+jFjLkew0XToz4T0Iaz3RpouXzHfRPmppiDJz7Rprnk6mq2sdw9QKlKV+qlCxzK1pCfDZps51wpWZP89UkWWJAFIWTgE9h1495dql4VhkeIakatVMvsHQv3whzFOSUH5JveV/IExK9+yaftEh84dHa76xU96wvJ7IzW0ANzKKZ4rPVlnGF4XQw6NmcaOnUEDUL/vYWkz7zKBiPIFCDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aH1GNzvLWujMLEe7zF6CXyrhTzAy6cYRCR51Nt7BGcE=;
 b=jMeYXLeWMLWaqRBl6uid3SzPm8ZQswnCMA7VBHqGROP73jBsga501mTKRffRz9V+z6lOxbYijPdB4TLwKsXAaf5XFo8D4o04EDvmm1kXFQu4qr1KQDKPO96slh7gMolwe3ULZDOgpRlrtjdya8AEdpvKHs+eWE0WjJLvhsJVCWc=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB4010.eurprd08.prod.outlook.com (2603:10a6:10:ab::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 13:43:46 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.016; Fri, 10 Sep 2021
 13:43:46 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 10 Sep 2021 15:43:21 +0200
Message-Id: <20210910134323.26136-2-michael.riesch@wolfvision.net>
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
 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 13:43:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b5316945-57b7-4d1a-deff-08d9746102ed
X-MS-TrafficTypeDiagnostic: DB8PR08MB4010:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB4010353D389E6C7ECAE8974DF2D69@DB8PR08MB4010.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B2rlwDkUoM4RAhqyx4BzQn8z7+fMJPyeOLTUuxkR/pF0fj4qyyYT3UKJXrXAqdOHz26KEsTxkTFF3xTi9V1xN+Zflrp0lrAa3IHYpCkC74RP0XMEcfKFdkhMn8cRdhZ7IZUaSamDUoEa0vAoENkuO71dpbxV0Y1VI82dKzoJ8I1txrivij7tnDaxuDIvt10YcKsg7eoBxwadsc708ujqw25RoEsP9y+K1kzJYM2F6wWzCfC4ahbBZ/d1VQTgLZBHM6QRGZGWT4ZPWZksRViCT0NR+Vnfjsz56uYaLGVnlIfEbj404V/lrOU9gx8XrsT7yNLf4erYXS18Xtrrk+QDuuh53KrD+45YJnaDtnwW79NtBF+0ZNNe9+QM4KnTTVI/N98+pK3nzF7absMmyWOTe+kzr+BQ2jqjfCc9D/tHYvgz5OSeWKbf8dWTbgx8bN7UspwTsjJLDOrtDSoHRO4L05A1i0q0ZR6T3dRgskqUMCzRYAvxQwA2v9Og54ZGiB1XvC3bnGFgIsmZbb/8/jCaf9Xv+8oGooBW6OJOPtbxmiDHOhvFFRWCQUsXjKPISwDe5avPm6U9yiqPzy5pG0kwrBXzN+Hve3LdKDOF5TgpJxvZcyUkAiWRnHDJ8uwouB0x5z/v3DqJSo/uK/aYo2ys25bstEpACpHwp7b9dq4mjBc853BYK+WvTLAWouLZTBQoy8mJlpDCYykxzHA2HHTNcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(39840400004)(396003)(376002)(86362001)(8936002)(83380400001)(8676002)(2906002)(4326008)(186003)(52116002)(5660300002)(1076003)(26005)(6916009)(66946007)(956004)(6666004)(44832011)(38100700002)(6506007)(107886003)(36756003)(6486002)(316002)(2616005)(66556008)(66476007)(38350700002)(6512007)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7LUxvkkDiJiU5N0IYhUWgWonxvMhfjKlOEk2dyfM/V4PPM3C6XfvLVux6l8Y?=
 =?us-ascii?Q?3vnHny0dG+HQewU20jHW/Am/F+hYe8Q8N7HdUx8exhfuFP6dG3T9fgW+yfj+?=
 =?us-ascii?Q?WLaMG0QQbyW9jUzSpD8p1DtHeNsX0bT5VH4N240IzjG9VGaApiY6KEwy7KK3?=
 =?us-ascii?Q?alqMM85DBnmEW9twQp5faiWZ1Sv1hymOazUf9M3yG//3GoDM9ejUggvprRYW?=
 =?us-ascii?Q?SovcqZG0Oi6UO2IOL+gsLUFEopFRf+stxRoKdx5lUFzpPaQOKH98vrqm7HFr?=
 =?us-ascii?Q?SIncllcTmsKqtE7ix2Z3wzXw8Gz5l8L6d/v9tagSOBlfpjqeV90T2rtXyT3u?=
 =?us-ascii?Q?xlPoYJZFJTVk9fGhv2EB3JlBLzUwq5nuT/dnwIXe+vSmLF6lZ3TC1hPxr09P?=
 =?us-ascii?Q?CeBqHI4dm35aOWGK6enah3GNr7ZReNV605ZnGT5X38ls/O0LL80CUPXg2F4V?=
 =?us-ascii?Q?qvhMdWgDE7MdsTgHdL6wOKibT4jC2PGGtIJZj+GcY6F4TWJLzw8HKbaD7kvt?=
 =?us-ascii?Q?hhx4ushEyHF/hl48rBLjbcgtoEYjVIrIeU5/Qf99lsNtfJcTN5Dkctj8bi4m?=
 =?us-ascii?Q?okYsX8JG9wLSpRMMo6orI64IR5Nfoi6RVB6BGkh/U/klQjc6HgvDghZgWk7i?=
 =?us-ascii?Q?znMsdzVlPRRA0ZfKfVCtv4mu4oT273eXjgPdJGOaWUYGf33KRvZOOXaJlzsi?=
 =?us-ascii?Q?WUbqaYJh6UI2CAT0meUkzf1u2ewIwUe+IaPOa2tQdQQ5tcO4zU0fmIst+/DS?=
 =?us-ascii?Q?raf03snkAJtrhitPc338c19CNY+EgIPbwS6y+i5v/0BJ7EkhezMI4T+X2FMo?=
 =?us-ascii?Q?0Uh4wOZu/qV0OQcB7Vf6UbA//qgAexzQbGQJHj2ZNAFiDM2GlxONUlChNXjV?=
 =?us-ascii?Q?Wg7RnZ55dfv994kLhRbhEKLPBbC1BTpAwtG1cXcNOnkSIFip9rpylLwkNMy/?=
 =?us-ascii?Q?/Z9B9McPfDD7VXF20QtoCwUpUdRmBn29m6tnVKqRDn80OxdKzG4FT0g7t2wf?=
 =?us-ascii?Q?q2FhiLlKp9Q/KdoNuAjlZ/qrawishFY8VZ2dO47nQQMymuRgGkKnxENnsf7Q?=
 =?us-ascii?Q?uDLZKjwbuImGxtk+5yklcsG334+YEbkz8ryPGBFynvHjShZcaFyV4oVskKBn?=
 =?us-ascii?Q?3SPCydEafNAEAvcC1awhXhzSUW7ZEq0c083ylfSCPJ3c7pFMRRw1cmv5ZLPt?=
 =?us-ascii?Q?MtSr83uRHsooGuNlSM0oBLd+mYIxq+ttE54Dkha9yRA5asCdNnlshDIhhM4u?=
 =?us-ascii?Q?s4iXSKm5Ot3BWRpooRRPtjukU8JG79dpmUGPJyKfOfBmh5n5IhjisRCzmwTf?=
 =?us-ascii?Q?HWKaznISFjmCvuagEyVNUAZF?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b5316945-57b7-4d1a-deff-08d9746102ed
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 13:43:46.0418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ax6dlWmjgIcHupAdzkDCyhyM83Ma09wD1MI1eiI9zvUOlSKKSQJIZFD6JmUEj+oao8NhzVTK9VV8G3Pt1WmhnETfcFhfp8SX6uMzkE4ocvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_064351_987119_0B36CE4E 
X-CRM114-Status: GOOD (  18.39  )
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
Subject: [PATCH 1/3] arm: zynqmp: add support for xilinx zcu106 board
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

