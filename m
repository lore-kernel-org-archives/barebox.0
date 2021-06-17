Delivery-date: Thu, 17 Jun 2021 16:39:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lttAe-0005aH-Cd
	for lore@lore.pengutronix.de; Thu, 17 Jun 2021 16:39:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lttAd-0001oV-1a
	for lore@pengutronix.de; Thu, 17 Jun 2021 16:39:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hrr4NrWpje641Ugd3ehl4+wqOhIlhhjRwfVvg/sUkyg=; b=Lm5Xv7UOidY0/Z
	fdDW4t+4Sy1aIA4j9OgNDI7Dkj4XbQMO2JlC3pUVvZJ/WsR1MGWy0fjUPHzT59HfoMvs1iHug/kk4
	CWzlKm570NxGnXI8LYjXSq4aBvA171tBxGmQeo8/1Hav4YHoYd4cGTxNILnjKAd6diJstE2YHi51D
	WJm0YJ/n/RhYZx6Sfde866nVLiqPjyxIaVvOGrOUwz/CAl5HvXGE9ib0wfpi4Evzo7tSBE4aWbPQx
	yMYrZUDNPRZTWrzhx9mlfV2gI/R3Qm329iGspOzNNqJdZaX4BaeLebIVyWav5aNC+meEvDHS3xkPj
	+Pi1X7f0GeAB6QbjDK0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltt96-00Al8C-4r; Thu, 17 Jun 2021 14:37:28 +0000
Received: from mail-db8eur05on2083.outbound.protection.outlook.com
 ([40.107.20.83] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltt8z-00Al6K-UF
 for barebox@lists.infradead.org; Thu, 17 Jun 2021 14:37:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LcIBJLuc0yhOceTpbvi2uF77CBE9AEj/BM1b8lHvE4oB5+pc6XbNHeMzLs8Iqy9w194Mx3qEHMu+gEYzUryG0WlAmrJlgsfTzNBFzVdSofwIBRgHP6NxdjmNDTu8NRG0DO59/2UPnj0qp5+0lo+2w/k3q+bLgAxlRnF/d89EimtrG0kv/Vr1t0z3TEpOHgLuAhwYDdAvC9EgXKCsSHp74kfoQw2kJ0RSzOF/IX69aVVSgzxUuAjxcdXmZh6yQ0jEOxkqa4cyE6c+A7bMo14uUf4ELGXYLscTcaCKzpi1NLSEMm9mLLdAKI0UNI/jRvXCuwctWVegAfX6FjP+zQb5sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CtxzqWRAMW7P6rW12oHFV1uggDcX9ghMpACMOz3mm2o=;
 b=cgAfFi8FQHUmVWeA3qwHmfL0QJWXKEtU/VbFL+1OHgfp5g8xOk9TZAbBZ8y+1nIgk5B4799kKI9M3VVGTniuFLC2fPfkapDMWF4kk6bn790JPc0rPSs+e90rxmu6L0z03sYR9jxvXbj1RGChZi69GwCdYcUnPQJ1qt8YttFsudmRPtVs9Xp+g5qDMbql79/xDjNh70+PJYdGfhjxRQQ/73Td7Z+QOByv/IsS/Th4zqOIoVe5360AbfCAPUyYYfYdt9HOf0gu8rM+woVySNDXaopX/wC+KnGQ2OxMUrz3oIiEbmlIkaww113/3wKHiIYz6Zlf8gQEd5OxVskzjwTsHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CtxzqWRAMW7P6rW12oHFV1uggDcX9ghMpACMOz3mm2o=;
 b=XSJuhfsJlmJPbXifeUYnTmqAnM8xH6piMmW9sYL7itS9eGjxaF4zJQxNCOGpCWPmQkoS3NqAdmYS3g2SZNxq0gCT8pssW1uBZ+X9IoIi759c+AekFEYmra467WCYAL2QjEwVfALdkYo8dsvdsEmZDoF1KSvz2DEcVM/B1cyDgWw=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB4393.eurprd08.prod.outlook.com (2603:10a6:10:c7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.24; Thu, 17 Jun
 2021 14:37:14 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd%7]) with mapi id 15.20.4219.026; Thu, 17 Jun 2021
 14:37:14 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 17 Jun 2021 16:36:54 +0200
Message-Id: <20210617143654.32616-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR07CA0173.eurprd07.prod.outlook.com
 (2603:10a6:802:3e::21) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR07CA0173.eurprd07.prod.outlook.com (2603:10a6:802:3e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.7 via Frontend Transport; Thu, 17 Jun 2021 14:37:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f26a9083-b60e-4df1-3889-08d9319d6639
X-MS-TrafficTypeDiagnostic: DBBPR08MB4393:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB4393CAEC7ABA0E6CB934C37BF20E9@DBBPR08MB4393.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:215;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A5tECZY4WDcDZMRPoq40G47zEcph6H4fBHnDCdzt0cwxW8vGrvQDQVvOzn6xCvwGE4lUXQ0BnYNwQtohFbPmxVUuIFOk5htizCt+GGP7+6uTeWXtKrOmHI5Z/karzYLYHLoEmZEKDn6z4TT6L8u4y9jrPCn4OsN7dVnKaMts3HjeGAxnFqBc3YHDPLeOG0Tpn01OJOI4iy/yDrvZsZ3PVk/7bWzMi3yTTYd6K5HcEpxeGuh1YI04JEuZ9MYcAxyYygv7n5te0JzYgEI1rT4utPMs4NytPjJvTzhP19eJeXBCWk9ll7SbwX1vMNpIDmdyVAQwf+Obsy9FJbrhhS7iHHRU1xiigWEtwXnQtgI3SzYWNoMgeoSC1ItiXca53nFxQm9Amzj5q3n4TphF1sMQmQvD5z7Wl+uxJF77aUc17X7Xwu4vZfk2zwgXxUtOV2Fyv0fBj4EbuOFG/ni8MHmXL7cYppYLLRx90p1oEle0rkDpE19x8vJvOETAFrRTSHBnUdM6L0uEo0JFPO83zmCAotlJOnNMdEb88wTVgaVOW2Q3xcQfSJII1t6l34m4xb4OZA004v2S59YmqsAtTY87xT1iYXioO/iNLAlq3TSzgLf3AsoB3+Al+FkFvR+UGVv2PYaRuJT5v0KnYLjtLDJJPXcBr+kRP9zgd3P8Z/eGmk4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(38100700002)(66476007)(16526019)(66556008)(2616005)(186003)(6916009)(6512007)(8676002)(86362001)(44832011)(956004)(498600001)(2906002)(6506007)(26005)(1076003)(66946007)(5660300002)(6486002)(8936002)(52116002)(4326008)(107886003)(83380400001)(36756003)(6666004)(38350700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6CyHpfAITeJ37y9K7DKFaikPCS/1x7V6k3Y+v3e4y2v/6WIntPFALaQgCSK0?=
 =?us-ascii?Q?+RangoyYmOdDDUl2tYgWn/co6VOspqAiUdD0dsZe0s7iKIRS6oec9yc3JzFb?=
 =?us-ascii?Q?BBerphnflubmRZo7Siq7Ufahm1dh3Uz5pA7JnAaR/m9wNtqSeutqOm7EjzLX?=
 =?us-ascii?Q?0pMowZSEXi2p1Qa7gNQVRUc9vrep2xcpkhcvgMsA/w/Ti04O+oQ/jteu4Nhl?=
 =?us-ascii?Q?0TSv6uFuVrXceNJcH4FmR/Uj7oLKcLNVpMFNFU0+SfWonPsGPbO/9mMR5eXr?=
 =?us-ascii?Q?J9pVaaWF4b9+U4s2uAgQMxmCLhopp65afaw1KGV24Tv30uCkDibYF3EQ4x4u?=
 =?us-ascii?Q?tzcZwA+Z3unlm1X+jH9xOXEHtD1VFbn5e3JZazaBH+3UMY8FE1iQC+cXasLH?=
 =?us-ascii?Q?HNGjFHQRz6l8M+8+vZo9zau8IkCobiTrvHBhojfX3eg/7bOzVigZZrgNivHR?=
 =?us-ascii?Q?+sO6pCMc20HYp7tTb5oImGgJESw3X+ez9mCzK4z/z1KYdUC+bNqatz3vVvLh?=
 =?us-ascii?Q?qNxi8JWmhzGbBlo0kCL1fDMaS4cvE5oUPoE7heIHKOY7WQgjeTsF1OH7sQj8?=
 =?us-ascii?Q?j9WvrilJPN6oRBAVix77aS6c10lFpQVjmE+GYGy4ma/YdnawTr56scEmifj7?=
 =?us-ascii?Q?X992Xc0+UQkB2lgc3J6juHNytgdHijcEzHZFrE2B4LUVf88dJCHOS+mNsp+Z?=
 =?us-ascii?Q?kso27POjZkxdMbkuY2JS4OzobHcGT9QquVFqQcaj0OEgU9roHiNFvqttQWDC?=
 =?us-ascii?Q?Emyy0oUqTpvnIPHcFBAhgcIcmCt8cPsHe6mMi/TlyrFia2EblmAfXGDIGzwd?=
 =?us-ascii?Q?ZrO+lt+Te1fxnG6ZMVeKb7w6C3+2nctCuffYFG8dkPAJhT9jqMtZudU7DL94?=
 =?us-ascii?Q?4FJBw1YloQqqbZAVVSHG9sC9413SHo44I5RB+APzPFG8zCjjk0TcA4lAJd6q?=
 =?us-ascii?Q?g3A7yXFUCvmxChF8ijzQ1tmZfy1NZJyjr/c9PYTIfglg5eeHFxwDTxUvMBIt?=
 =?us-ascii?Q?bHrGCc843pMHKlLtYSzCXsBmAGt4XHwmIUvEgf4xMO7X1P+KbQjn9wAZQWab?=
 =?us-ascii?Q?1gKzKgwaqNE6ZZGMWq4BCq3qmeJFUFnU0To65Wr/I3GwkJGTwfjSJ5vVkmdC?=
 =?us-ascii?Q?rrasrESlSxdvlhTLfREHQZcOdy3M07M5X9uSylRvpzIZD0oYlwUkzLeTxTDy?=
 =?us-ascii?Q?go5bI/jNxIPOvdm/US2PvDa3dtSEJ5vaIddZCb/n73Xlr46sLvf9Vp/1MHSB?=
 =?us-ascii?Q?yBba/5qYgUvgUkmK2r8ASvDAiWXyYdF72TrId8c1C7yUKj2lBLNTdQsREpyv?=
 =?us-ascii?Q?L4tepndHBhtZ9CUPR4+zAw7L?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: f26a9083-b60e-4df1-3889-08d9319d6639
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2021 14:37:14.5297 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1fgc02cBvCEqeFoHgDAKqzhWQpeGSLqoHvYpOWByq6qfsK7Z5niHtXNC+LXTQLdKpS16qS+Fxl970LLg+Jfi82OhTTlpPzO/Bh78PZ2HygI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4393
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_073722_094489_DB9BB8D3 
X-CRM114-Status: GOOD (  20.82  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] aiodev: add driver for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit adds support for the Successive Approximation Register (SAR)
ADCs that can be found in Rockchip SoCs, such as the RK3568.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/aiodev/Kconfig           |   7 ++
 drivers/aiodev/Makefile          |   1 +
 drivers/aiodev/rockchip_saradc.c | 153 +++++++++++++++++++++++++++++++
 3 files changed, 161 insertions(+)
 create mode 100644 drivers/aiodev/rockchip_saradc.c

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 88d013aad..98223a8f9 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -50,4 +50,11 @@ config STM32_ADC
 	  Support for ADC on STM32.  Supports simple one-shot readings
 	  rather than continuous sampling with DMA, etc.  ADC channels should be
 	  configured via device tree, using the kernel bindings.
+
+config ROCKCHIP_SARADC
+	tristate "Rockchip SARADC driver"
+	depends on ARCH_RK3568
+	help
+	  Support for Successive Approximation Register (SAR) ADC in Rockchip
+	  SoCs.
 endif
diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
index 52652f67b..1b480f6fa 100644
--- a/drivers/aiodev/Makefile
+++ b/drivers/aiodev/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_MC13XXX_ADC) += mc13xxx_adc.o
 obj-$(CONFIG_QORIQ_THERMAL) += qoriq_thermal.o
 obj-$(CONFIG_AM335X_ADC) += am335x_adc.o
 obj-$(CONFIG_STM32_ADC) += stm32-adc.o stm32-adc-core.o
+obj-$(CONFIG_ROCKCHIP_SARADC) += rockchip_saradc.o
diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
new file mode 100644
index 000000000..abd7ccdd8
--- /dev/null
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -0,0 +1,153 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021, WolfVision GmbH
+ * Author: Michael Riesch <michael.riesch@wolfvision.net>
+ *
+ * Originally based on the Linux kernel v5.12 drivers/iio/adc/rockchip-saradc.c.
+ */
+
+#include <common.h>
+#include <aiodev.h>
+
+#define SARADC_DATA	       0x00
+
+#define SARADC_CTRL	       0x08
+#define SARADC_CTRL_IRQ_STATUS (1 << 6)
+#define SARADC_CTRL_IRQ_ENABLE (1 << 5)
+#define SARADC_CTRL_POWER_CTRL (1 << 3)
+#define SARADC_CTRL_CHN_MASK   0x07
+
+#define SARADC_DLY_PU_SOC      0x0c
+
+#define SARADC_TIMEOUT	       100
+
+struct rockchip_saradc_cfg {
+	unsigned int ref_voltage_mv;
+	unsigned int num_bits;
+	unsigned int num_channels;
+};
+
+struct rockchip_saradc_data {
+	const struct rockchip_saradc_cfg *config;
+	struct aiodevice aiodev;
+	void __iomem *base;
+	struct aiochannel *channels;
+};
+
+static inline void rockchip_saradc_reg_wr(struct rockchip_saradc_data *data,
+					  u32 value, u32 reg)
+{
+	writel(value, data->base + reg);
+}
+
+static inline u32 rockchip_saradc_reg_rd(struct rockchip_saradc_data *data,
+					 u32 reg)
+{
+	return readl(data->base + reg);
+}
+
+static int rockchip_saradc_read(struct aiochannel *chan, int *val)
+{
+	struct rockchip_saradc_data *data;
+	int timeout = SARADC_TIMEOUT;
+	u32 value = 0;
+	u32 control = 0;
+	u32 mask;
+
+	if (!chan || !val)
+		return -EINVAL;
+
+	data = container_of(chan->aiodev, struct rockchip_saradc_data, aiodev);
+	if (!data)
+		return -EINVAL;
+
+	rockchip_saradc_reg_wr(data, 8, SARADC_DLY_PU_SOC);
+	rockchip_saradc_reg_wr(data,
+			       (chan->index & SARADC_CTRL_CHN_MASK) |
+				       SARADC_CTRL_IRQ_ENABLE |
+				       SARADC_CTRL_POWER_CTRL,
+			       SARADC_CTRL);
+
+	do {
+		control = rockchip_saradc_reg_rd(data, SARADC_CTRL);
+
+		if (--timeout == 0)
+			return -ETIMEDOUT;
+		mdelay(1);
+	} while (!(control & SARADC_CTRL_IRQ_STATUS));
+
+	mask = (1 << data->config->num_bits) - 1;
+	value = rockchip_saradc_reg_rd(data, SARADC_DATA) & mask;
+	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
+
+	printf("Raw value: %d\n", value);
+
+	*val = (value * data->config->ref_voltage_mv) / mask;
+
+	return 0;
+}
+
+static int rockchip_saradc_probe(struct device_d *dev)
+{
+	struct rockchip_saradc_data *data;
+	int i, ret;
+
+	data = xzalloc(sizeof(struct rockchip_saradc_data));
+	data->config = device_get_match_data(dev);
+	if (!data->config) {
+		ret = -EINVAL;
+		goto fail_data;
+	}
+	data->aiodev.hwdev = dev;
+	data->aiodev.read = rockchip_saradc_read;
+	data->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(data->base)) {
+		ret = PTR_ERR(data->base);
+		goto fail_data;
+	}
+
+	data->aiodev.num_channels = data->config->num_channels;
+	data->channels =
+		xzalloc(sizeof(*data->channels) * data->aiodev.num_channels);
+	data->aiodev.channels = xmalloc(sizeof(*data->aiodev.channels) *
+					data->aiodev.num_channels);
+	for (i = 0; i < data->aiodev.num_channels; i++) {
+		data->aiodev.channels[i] = &data->channels[i];
+		data->channels[i].unit = "mV";
+	}
+
+	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
+
+	ret = aiodevice_register(&data->aiodev);
+	if (ret)
+		goto fail_channels;
+
+	dev_info(dev, "registered as %s\n", dev_name(&data->aiodev.dev));
+	return 0;
+
+fail_channels:
+	kfree(data->channels);
+	kfree(data->aiodev.channels);
+
+fail_data:
+	kfree(data);
+	return ret;
+}
+
+static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
+	.ref_voltage_mv = 1800,
+	.num_bits = 10,
+	.num_channels = 8,
+};
+
+static const struct of_device_id of_rockchip_saradc_match[] = {
+	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },
+	{ /* end */ }
+};
+
+static struct driver_d rockchip_saradc_driver = {
+	.name = "rockchip_saradc",
+	.probe = rockchip_saradc_probe,
+	.of_compatible = DRV_OF_COMPAT(of_rockchip_saradc_match),
+};
+device_platform_driver(rockchip_saradc_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

