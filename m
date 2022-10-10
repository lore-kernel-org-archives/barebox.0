Delivery-date: Mon, 10 Oct 2022 09:38:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohnMm-003774-4h
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 09:38:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohnMj-0004Ce-Ij
	for lore@pengutronix.de; Mon, 10 Oct 2022 09:38:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6PL6GTn2ZKs9/WjXHHRQC6Vv8Aq78FpDVV0C1zz8X3s=; b=VtJU3RFaK/E7t4KXLNkT9ecr1i
	ZWne+3ZgigaWOdLxqhDVtV6p5Ut0QlXAr8s4zloT6QG+qdKfYqphwU6CjPODHeCTtCZNWjYkpaS/G
	3Zta2rnnwztPDSGR7BXAeakL1mrHZCdbbhSnofgVRHGbVFcHjy2iQuk5DoxqWCFTuExcvKbBx4jUs
	B/ym85sOWu88l9SbYHPHIXaHeE8AzPLoaCdhBOR21lV3g3IPGK+8sXw5rtkrnRRcDlHtjfiSHkedv
	Kt89fHbwFlYrSTQ+oDwkYKzEaLtG3aATgDB1dXZ5GXMLCIMhfNgk2FX8M/jxHrCsKsTkbJFGxI8WA
	uHgq66NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohnLE-00HOhU-1J; Mon, 10 Oct 2022 07:36:48 +0000
Received: from mail-vi1eur05on2079.outbound.protection.outlook.com ([40.107.21.79] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohnL8-00HOg7-9A
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 07:36:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YKXLsebWWbZit2QnZyOEvza136y4V50u33HziwxuDN+uUFaQXGnVG2xhOanoIyMj0S2UHaqr/0XKwz/zaUTLIn4k8rY8zBtLiPtYn2QtcdNSfSpg4IprXwbu9gMtkRg3y0eUmZ5QDORCpga8wn+CMLYs/WmXn628M61pGswD9Nq6RevZk/gJx3vsf0PmJ9xLhKvAoMI4lFIspuCHC0m4uY744VPaHhxkXTwLeuZbF0equP86Un95Xa4+sSgtUFnHUmTSojSpppwDzuNYb/A1+tkFBSwchpy4t61km7Ith5+g0I/3iO2WFz/nQS7nJwW0/m1/Jxwv47CbfbKH12zgjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6PL6GTn2ZKs9/WjXHHRQC6Vv8Aq78FpDVV0C1zz8X3s=;
 b=e/Qtjeo4Px0yjOrANkvPdQIFt2+SNn/7ZwzEFoys6lTUXG7ZozfTBsxQVT/tBrJ/hDNlNeAWbRAIW7RnelHt6ATV/+scqfl0y/1ePCrBq1aRvIeA5ZOqT6mX0YWxSb+Xonjv7f4fZkPyaDp6bUWUllwVohBXxfD1Qpr9FwcCZYUTiMb+S20fU+kYPLSrmHC+CFLuV2oTg17b04fuITZsftSejFnf8Psy5thLNi4IVrhSUo/9hnhDVU1wLkxyWM/XH2vN+jpeokPiLA6p1Y0CnIkSSZxMPR/e8uapSllbt/XPeDC0SfzA21tQGbY7rHOyyLmOgXTfnOlRisDRyVAh5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6PL6GTn2ZKs9/WjXHHRQC6Vv8Aq78FpDVV0C1zz8X3s=;
 b=dfSmnZI1t3ZPLVRUfctb8Wn8kL9HOg2o3mY89K02nM5adEFImeOUWdysPsjyV4BV6PTZaXlz+HwlV+PKJqG9qqTGXBuC9H7d1lcMcpk/bYceWYpj9/7ykhiAFvkBsfXmxDOs1ncr4KLK97tNnwlyUkKzCDc9osSxlFTRm7HCPSk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5119.eurprd04.prod.outlook.com (2603:10a6:803:55::28)
 by AM9PR04MB8471.eurprd04.prod.outlook.com (2603:10a6:20b:416::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Mon, 10 Oct
 2022 07:36:36 +0000
Received: from VI1PR04MB5119.eurprd04.prod.outlook.com
 ([fe80::cf38:75da:c15f:2db1]) by VI1PR04MB5119.eurprd04.prod.outlook.com
 ([fe80::cf38:75da:c15f:2db1%5]) with mapi id 15.20.5709.015; Mon, 10 Oct 2022
 07:36:36 +0000
From: Adrian Negreanu <adrian.negreanu@nxp.com>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>
Date: Mon, 10 Oct 2022 10:36:16 +0300
Message-Id: <20221010073616.673492-1-adrian.negreanu@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: AM8P191CA0026.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:21a::31) To VI1PR04MB5119.eurprd04.prod.outlook.com
 (2603:10a6:803:55::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5119:EE_|AM9PR04MB8471:EE_
X-MS-Office365-Filtering-Correlation-Id: 481734b6-718c-4000-7943-08daaa9228b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	YJYsDTJODul7clesUahzMQrgXZngkyZDiMlYWoFbGQRNMA/MoMioVdVAp89aIVM8LHyE4k2xjlAW7l8gcLwEzlnl2alEVOvxCjXMEPNVLy0Crnb3BxbVnOpd3WbXd9mJMKGWnc7M+rRQLl3NOLxqwqWMfXHJep0TQghXxmOY5iWBOrBAEQXcqT0thF4uqJw180Khc6YwtZBZa4L9xuaRCAWx2ufXaFEGYYUHx4W+oAJICG79D5j6mF+v5MP8iZTRPQr+ejRW4bvQgWVTJxzWKqvFZmpuA9KSRxAc2hO5oOcoaGyDYuFqqxc7gFHjBnlUGhq0kYeJWoqNRXoIUZjGe00k9qGXyC5Rlij6DP932oVpbf5QQCVMPvHGF7IEJ2aabYqo5d9kmu/atnUDE4ll91AxmJ4wfGsdlWAw3od4GqbqgFyZuEBLXtdkZ/2chdAJXDNztURvgEe6yYH1tIZwEf2y1n+djdzVrHw31fQ6BAahIcelCbELXBG/Lm30/CPHb7TV6iU6hhZH0BTL7dfPvIPLovGT+sk72oO1hYg/VvaBosIk6eRzZQ6KcYtKs7TdJfeYgBvq9hbRAx1NoeyVxuvNhex+bELSv1gNbyBst2ZECLY4ZkgQsUDvMaTUEhCki+lEw0w+AliQKM6DCUihgHh+dKIBQQ8kzJRIXuwqPjKgexmsNjbTOjryPc7cWrbaDMjsRTSzzSQSV6zqroiejtasI+N7/tKEQn1l87b8bqkvUbWC4qKtfKV34C1U62ZsPZYRnti4xvIz5w+/s70buw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5119.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199015)(26005)(1076003)(6666004)(86362001)(6486002)(5660300002)(44832011)(30864003)(41300700001)(478600001)(66556008)(8676002)(4326008)(66946007)(6916009)(36756003)(316002)(8936002)(66476007)(2616005)(38350700002)(6506007)(52116002)(6512007)(38100700002)(186003)(83380400001)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?EypN/hPecxJSRdZXyOUg49Qf6ntTKUp4X7qBkZLk3AJZjPbyqM+/4FsyTKEv?=
 =?us-ascii?Q?br5Q4sQapHKDg4LznYdQGk/ND5RlsfGgVUW7jD9abOBG7W/lBztFx6kJUCl3?=
 =?us-ascii?Q?/Ieg8qGxjC4zMgip/g1XzYGZavti3coUR1g3hxw/vQoicJQqbUWdmdWKOYqQ?=
 =?us-ascii?Q?UUjHIkBnpvhehAMgHqMjnb969KAEFoNYmmjTwAwe6l7Nxf7oGC4/3TRHs5lX?=
 =?us-ascii?Q?JBisn3mwZ62pay6VIhyYGYRKBgd78xFWl+ZSHCtQIU5F13J06LZRHvN1xYxu?=
 =?us-ascii?Q?zqgSKUbSgADUiIKS3Cnu/a+KvLCBgqcjOSXN1E6HOQ6zSjH7le8ewT+CRAYV?=
 =?us-ascii?Q?jRq5UQ40xaXkjMRx3rc55WXA2D3VBoiejsD1hXnipB+TvnMSdNfZdBfqp+hQ?=
 =?us-ascii?Q?CUzGtgsCjQYM2RB6ztpODN3iin4RPBTUjUrrUkb4fevL30f2vpfbkc9RyY0V?=
 =?us-ascii?Q?P2KxOmB4rOR6mfkhWZGs0BUJfyJLJewLS7ZI2TR8TIQxo7+AKI9lU/NgYi+2?=
 =?us-ascii?Q?DN6Kvh7oqTHkrX3bfU0NN6E7FaOvZ56K7enT6SgHTf7jv9ttkvLVZucd15Dn?=
 =?us-ascii?Q?UQ2owY1b2SLl3l48HQaprff+lPahmwyOAe42ij8fTQF/evdD0ypzWwVWMu+i?=
 =?us-ascii?Q?feYS+spAGNkflYneoS/1SdoZ3SOfBgV9x4ADc2+nUJv4UJnwdTNHnZDzGX3g?=
 =?us-ascii?Q?WZrByUZqSkB/bWebMsodAqyFhbRbdvL3TbLMPx06xM5hqvyA7FHsOocOUN28?=
 =?us-ascii?Q?il5Rxd0jwLiYT6IjFR8HncFL9dLHIE/P1X6Vn3AJG9OIrpNaovdVsabmnXUR?=
 =?us-ascii?Q?zAXabrUDUXZPD7Dz2LybLQh8Y2f67RnFbx3nV/jEP/vR7xNauZf73k0pTQpZ?=
 =?us-ascii?Q?r1C89NEkLgOjOU8pa4Y6CC8ONMkXdKGW0MIPVaazkpgIFYWathvJz858HqeT?=
 =?us-ascii?Q?pTQl9moHPce7eAdr4izDZScbR4mDqr9CNQ7qZl1OR00kYVFdV1juDIqXht//?=
 =?us-ascii?Q?YlLTN+gPOpuFA+ZuZDa1JGSijbtnEcX8oI/CvBCx2a8m6SW6jr/ujCZm55Cu?=
 =?us-ascii?Q?r1JiFFx/W0CU4k4gV6S2M43QlvxM2VbbcnmIK/AAiYwiIo+P41WYSvA/Iqa7?=
 =?us-ascii?Q?ya2S7FNn+n+9qUD0NYGfywYhb6fhXfr6hVweyYJqAWv6qB3yQ/iYuYRZPOHg?=
 =?us-ascii?Q?j8W/bewqCETXYwMypFLQteFjQnzEmted/9LG+UtN2HYVcITwIik3mc1ihvWd?=
 =?us-ascii?Q?Kv7PeA3jiiY1zfarwHOhMtuqpu9FjdRdMjtNAFt3rsyQUArAiv/LFS6+QaZn?=
 =?us-ascii?Q?fVOm5sUirZiCNcofAquffTq+8HAsB5m2JFrLr+A8XDBUiw+eBBo/ZcLQTd/i?=
 =?us-ascii?Q?eYQXbsmmUBvM8gvbUBvZZ6QXvIEC/475rpb1WUTZWr9RXPh9o/HO9kihJ+Fl?=
 =?us-ascii?Q?g2pTuucMz3PEbdiXvAFkijfHZU/cd0Vc7wJ8IwXduB/Cpxdbr9FS4KznKsIN?=
 =?us-ascii?Q?5E0CcIgkrho9086wVl9jZYsWxf+p+GOYnMp1mnfX3XISKj72Btg9YJtSqbDD?=
 =?us-ascii?Q?OAB/C9M2ew+ZwRArTz+y/+X4ptQupo3UVmGgK6+j?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 481734b6-718c-4000-7943-08daaa9228b5
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5119.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2022 07:36:36.3618
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T2+9jA0ztpWIAQPah+Xn79vHKYwLZAXZDSaCD3ibvF+w5mVKL8qS+T+95jpdEzXlCK5cok14kKjd8T53pPcD1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8471
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_003642_789958_D47505AE 
X-CRM114-Status: GOOD (  22.22  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] video: add support for qemu ramfb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver has Kconfig-urable width, height and color format.
Tested with:
	qemu-system-riscv32 -M virt -vga none -device ramfb -kernel images/barebox-dt-2nd.img

Signed-off-by: Adrian Negreanu <adrian.negreanu@nxp.com>
---
 drivers/video/Kconfig  |  39 ++++++
 drivers/video/Makefile |   1 +
 drivers/video/ramfb.c  | 308 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 348 insertions(+)
 create mode 100644 drivers/video/ramfb.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index a20b7bbee9..87181e51e2 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -123,6 +123,45 @@ config DRIVER_VIDEO_SIMPLEFB
 	  Add support for setting up the kernel's simple framebuffer driver
 	  based on the active barebox framebuffer.
 
+config DRIVER_VIDEO_RAMFB
+	bool "QEMU RamFB support"
+	depends on OFTREE
+	help
+	  Add support for setting up a QEMU RamFB driver.
+
+if DRIVER_VIDEO_RAMFB
+
+config DRIVER_VIDEO_RAMFB_WIDTH
+	int "Width"
+	default 800
+	help
+	  Set the RamFB width in pixels.
+
+config DRIVER_VIDEO_RAMFB_HEIGHT
+	int "Height"
+	default 600
+	help
+	  Set the RamFB height in pixels.
+
+choice
+	prompt "RamFB color format"
+	default DRIVER_VIDEO_RAMFB_FORMAT_X8R8G8B8
+	help
+	  Set the RamFB color format.
+
+config DRIVER_VIDEO_RAMFB_FORMAT_XRGB8888
+	bool "XRGB8888 (32bit)"
+
+config DRIVER_VIDEO_RAMFB_FORMAT_RGB888
+	bool "RGB8888 (24bit)"
+
+config DRIVER_VIDEO_RAMFB_FORMAT_RGB565
+	bool "RGB565 (16bit)"
+
+endchoice
+
+endif
+
 config DRIVER_VIDEO_EDID
 	bool "Add EDID support"
 	help
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 9ec0420cca..d50d2d3ba5 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -25,6 +25,7 @@ obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
 obj-$(CONFIG_DRIVER_VIDEO_BCM283X) += bcm2835.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT) += simplefb-client.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb-fixup.o
+obj-$(CONFIG_DRIVER_VIDEO_RAMFB) += ramfb.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += imx-ipu-v3/
 obj-$(CONFIG_DRIVER_VIDEO_EFI_GOP) += efi_gop.o
 obj-$(CONFIG_DRIVER_VIDEO_FB_SSD1307) += ssd1307fb.o
diff --git a/drivers/video/ramfb.c b/drivers/video/ramfb.c
new file mode 100644
index 0000000000..350f6a3aed
--- /dev/null
+++ b/drivers/video/ramfb.c
@@ -0,0 +1,308 @@
+/*
+ * RAMFB driver
+ *
+ * Copyright (C) 2022 Adrian Negreanu
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#define pr_fmt(fmt) "ramfb: " fmt
+
+#include <common.h>
+#include <errno.h>
+#include <fb.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <init.h>
+#include <xfuncs.h>
+
+
+#define PACKED                  __attribute__((packed))
+#define QFW_CFG_FILE_DIR        0x19
+#define QFW_CFG_INVALID         0xffff
+
+/* fw_cfg DMA commands */
+#define QFW_CFG_DMA_CTL_ERROR   0x01
+#define QFW_CFG_DMA_CTL_READ    0x02
+#define QFW_CFG_DMA_CTL_SKIP    0x04
+#define QFW_CFG_DMA_CTL_SELECT  0x08
+#define QFW_CFG_DMA_CTL_WRITE   0x10
+
+#define QFW_CFG_OFFSET_DATA8     0     /* Data Register address: Base + 0 (8 bytes). */
+#define QFW_CFG_OFFSET_DATA16    0
+#define QFW_CFG_OFFSET_DATA32    0
+#define QFW_CFG_OFFSET_DATA64    0
+#define QFW_CFG_OFFSET_SELECTOR  8     /* Selector Register address: Base + 8. */
+#define QFW_CFG_OFFSET_DMA64     16    /* DMA Address address: Base + 16 (8 bytes). */
+#define QFW_CFG_OFFSET_DMA32     20    /* DMA Address address: Base + 16 (8 bytes). */
+
+
+#define fourcc_code(a, b, c, d) ((u32)(a) | ((u32)(b) << 8) | \
+		((u32)(c) << 16) | ((u32)(d) << 24))
+
+#define DRM_FORMAT_RGB565       fourcc_code('R', 'G', '1', '6') /* [15:0] R:G:B 5:6:5 little endian */
+#define DRM_FORMAT_RGB888       fourcc_code('R', 'G', '2', '4') /* [23:0] R:G:B little endian */
+#define DRM_FORMAT_XRGB8888     fourcc_code('X', 'R', '2', '4') /* [31:0] x:R:G:B 8:8:8:8 little endian */
+
+static struct fb_ops ramfb_ops;
+
+struct ramfb {
+	struct fb_info info;
+	struct fb_videomode mode;
+};
+
+
+struct ramfb_mode {
+	const char *format;
+	u32 drm_format;
+	u32 bpp;
+	struct fb_bitfield red;
+	struct fb_bitfield green;
+	struct fb_bitfield blue;
+	struct fb_bitfield transp;
+};
+
+
+struct qfw_cfg_etc_ramfb {
+	u64 addr;
+	u32 fourcc;
+	u32 flags;
+	u32 width;
+	u32 height;
+	u32 stride;
+} PACKED;
+
+
+struct qfw_cfg_file {
+	u32  size;
+	u16  select;
+	u16  reserved;
+	char name[56];
+} PACKED;
+
+
+typedef struct qfw_cfg_dma {
+	u32 control;
+	u32 length;
+	u64 address;
+} PACKED qfw_cfg_dma;
+
+
+static const struct ramfb_mode fb_mode = {
+#if defined(CONFIG_DRIVER_VIDEO_RAMFB_FORMAT_RGB565)
+	.format	= "r5g6b5",
+	.drm_format = DRM_FORMAT_RGB565,
+	.bpp	= 16,
+	.red	= { .length = 5, .offset = 11 },
+	.green	= { .length = 6, .offset = 5 },
+	.blue	= { .length = 5, .offset = 0 },
+	.transp	= { .length = 0, .offset = 0 },
+#elif defined(CONFIG_DRIVER_VIDEO_RAMFB_FORMAT_RGB888)
+	.format	= "r8g8b8",
+	.drm_format = DRM_FORMAT_RGB888,
+	.bpp	= 24,
+	.red	= { .length = 8, .offset = 16 },
+	.green	= { .length = 8, .offset = 8 },
+	.blue	= { .length = 8, .offset = 0 },
+	.transp	= { .length = 0, .offset = 0 },
+#elif defined(CONFIG_DRIVER_VIDEO_RAMFB_FORMAT_XRGB8888)
+	.format	= "x8r8g8b8",
+	.drm_format = DRM_FORMAT_XRGB8888,
+	.bpp	= 32,
+	.red	= { .length = 8, .offset = 16 },
+	.green	= { .length = 8, .offset = 8 },
+	.blue	= { .length = 8, .offset = 0 },
+	.transp	= { .length = 0, .offset = 24 },
+#endif
+};
+
+
+static void qfw_cfg_read_entry(void __iomem *fw_cfg_base, void*address, u16 entry, u32 size)
+{
+	/*
+	 * writing QFW_CFG_INVALID will cause read operation to resume at last
+	 * offset, otherwise read will start at offset 0
+	 *
+	 * Note: on platform where the control register is MMIO, the register
+	 * is big endian.
+	 */
+	if (entry != QFW_CFG_INVALID)
+		__raw_writew(cpu_to_be16(entry), fw_cfg_base + QFW_CFG_OFFSET_SELECTOR);
+
+#ifdef CONFIG_64BIT
+	while (size >= 8) {
+		*(u64*)address = __raw_readq(fw_cfg_base + QFW_CFG_OFFSET_DATA64);
+		address += 8;
+		size -= 8;
+	}
+#endif
+	while (size >= 4) {
+		*(u32*)address = __raw_readl(fw_cfg_base + QFW_CFG_OFFSET_DATA32);
+		address += 4;
+		size -= 4;
+	}
+	while (size >= 2) {
+		*(u16*)address = __raw_readw(fw_cfg_base + QFW_CFG_OFFSET_DATA16);
+		address += 2;
+		size -= 2;
+	}
+	while (size >= 1) {
+		*(u8*)address = __raw_readb(fw_cfg_base + QFW_CFG_OFFSET_DATA8);
+		address += 1;
+		size -= 1;
+	}
+}
+
+
+static void qfw_cfg_write_entry(void __iomem *fw_cfg_base, void*address, u16 entry, u32 size)
+{
+	qfw_cfg_dma acc;
+
+	acc.address = cpu_to_be64((uintptr_t)address);
+	acc.control = cpu_to_be32(QFW_CFG_DMA_CTL_WRITE);
+	acc.length = cpu_to_be32(size);
+	if (entry != QFW_CFG_INVALID)
+		acc.control = cpu_to_be32(QFW_CFG_DMA_CTL_WRITE | QFW_CFG_DMA_CTL_SELECT | (entry << 16));
+
+#ifdef CONFIG_64BIT
+	__raw_writeq(cpu_to_be64((uintptr_t)&acc), fw_cfg_base + QFW_CFG_OFFSET_DMA64);
+#else
+	__raw_writel(cpu_to_be32((uintptr_t)&acc), fw_cfg_base + QFW_CFG_OFFSET_DMA32);
+#endif
+
+	barrier();
+
+	while (be32_to_cpu(acc.control) & ~QFW_CFG_DMA_CTL_ERROR);
+}
+
+
+static int qfw_cfg_find_file(void __iomem *fw_cfg_base, const char *filename)
+{
+	u32 count, e, select;
+
+	qfw_cfg_read_entry(fw_cfg_base, &count, QFW_CFG_FILE_DIR, sizeof(count));
+	count = be32_to_cpu(count);
+	for (select = 0, e = 0; e < count; e++) {
+		struct qfw_cfg_file qfile;
+		qfw_cfg_read_entry(fw_cfg_base, &qfile, QFW_CFG_INVALID, sizeof(qfile));
+		if (memcmp(qfile.name, filename, 10) == 0)
+		{
+			select = be16_to_cpu(qfile.select);
+			break;
+		}
+	}
+	return select;
+}
+
+
+static int ramfb_alloc(void __iomem *fw_cfg_base, struct fb_info *fbi)
+{
+	u32 select;
+	struct qfw_cfg_etc_ramfb etc_ramfb;
+
+	select = qfw_cfg_find_file(fw_cfg_base, "etc/ramfb");
+	if (select == 0) {
+		dev_err(&fbi->dev, "ramfb: fw_cfg (etc/ramfb) file not found\n");
+		return -1;
+	}
+	dev_info(&fbi->dev, "ramfb: fw_cfg (etc/ramfb) file at slot 0x%x\n", select);
+
+	fbi->screen_size = CONFIG_DRIVER_VIDEO_RAMFB_WIDTH * CONFIG_DRIVER_VIDEO_RAMFB_HEIGHT * fbi->bits_per_pixel;
+	fbi->screen_base = (void *)xzalloc(fbi->screen_size);
+
+	if (!fbi->screen_base) {
+		dev_err(&fbi->dev, "Unable to use FB\n");
+		return -1;
+	}
+
+	etc_ramfb.addr = cpu_to_be64((uintptr_t)fbi->screen_base),
+	etc_ramfb.fourcc = cpu_to_be32(fb_mode.drm_format),
+	etc_ramfb.flags  = cpu_to_be32(0),
+	etc_ramfb.width  = cpu_to_be32(fbi->xres),
+	etc_ramfb.height = cpu_to_be32(fbi->yres),
+	etc_ramfb.stride = cpu_to_be32(fbi->line_length),
+	qfw_cfg_write_entry(fw_cfg_base, &etc_ramfb, select, sizeof(etc_ramfb));
+
+	return 0;
+}
+
+
+static int ramfb_probe(struct device_d *dev)
+{
+	int ret;
+	struct ramfb *ramfb;
+	struct fb_info *fbi;
+	struct resource *fw_cfg_res;
+	void __iomem *fw_cfg_base;		/* base address of the registers */
+
+	ret = -ENODEV;
+
+	fw_cfg_res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(fw_cfg_res)) {
+		dev_err(dev, "No memory resource\n");
+		return PTR_ERR(fw_cfg_res);
+	}
+
+	ramfb = xzalloc(sizeof(*ramfb));
+
+	fw_cfg_base = IOMEM(fw_cfg_res->start);
+	if (!fw_cfg_base)
+		return ret;
+
+	ramfb->mode.name = fb_mode.format;
+	ramfb->mode.xres = CONFIG_DRIVER_VIDEO_RAMFB_WIDTH;
+	ramfb->mode.yres = CONFIG_DRIVER_VIDEO_RAMFB_HEIGHT;
+
+	fbi = &ramfb->info;
+	fbi->mode = &ramfb->mode;
+
+	fbi->bits_per_pixel = fb_mode.bpp;
+	fbi->red = fb_mode.red;
+	fbi->green = fb_mode.green;
+	fbi->blue = fb_mode.blue;
+	fbi->transp = fb_mode.transp;
+	fbi->xres = ramfb->mode.xres;
+	fbi->yres = ramfb->mode.yres;
+	/* this field is calculated by register_framebuffer()
+	 * but register_framebuffer() can't be called before ramfb_alloc()
+	 * so set line_length to zero.
+	 */
+	fbi->line_length = 0;
+	fbi->fbops = &ramfb_ops;
+
+	fbi->dev.parent = dev;
+
+	ret = ramfb_alloc(fw_cfg_base, fbi);
+	if (ret < 0) {
+		dev_err(dev, "Unable to allocate ramfb: %d\n", ret);
+		return ret;
+	}
+
+	ret = register_framebuffer(fbi);
+	if (ret < 0) {
+		dev_err(dev, "Unable to register ramfb: %d\n", ret);
+		return ret;
+	}
+
+	dev_info(dev, "size %s registered\n", size_human_readable(fbi->screen_size));
+
+	return 0;
+}
+
+
+static const struct of_device_id ramfb_of_match[] = {
+	{ .compatible = "qemu,fw-cfg-mmio", },
+	{ },
+};
+
+
+static struct driver_d ramfb_driver = {
+	.name = "ramfb-framebuffer",
+	.of_compatible = ramfb_of_match,
+	.probe = ramfb_probe,
+};
+device_platform_driver(ramfb_driver);
+
+MODULE_AUTHOR("Adrian Negreanu <adrian.negreanu@nxp.com>");
+MODULE_DESCRIPTION("QEMU RamFB driver");
+MODULE_LICENSE("GPL v2");
-- 
2.34.1



