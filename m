Delivery-date: Wed, 23 Jun 2021 09:54:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvxi7-0007qq-5C
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 09:54:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvxi5-0000pS-Nh
	for lore@pengutronix.de; Wed, 23 Jun 2021 09:54:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FVfdUfiXkf2j1yw6kCxPo3rqUyIcQWuT++HshRCA20=; b=kk70yXr0/q4mJq
	TadZcn703WGgfGJanw0lcqKAXaZN7mGNpxuiI3Thi1UshHVHOZUZu76C9Y+Q2P/6Efloy3nM5aiTC
	kAlJoBMDJmvuNYakOD2BrjC1Lawccbpt9/2PmG7TvOvWWHJ0JL2+zhbjg/CDBv+/kNoQlg14BHqsb
	tUY3NEuB+H3+ItBk3JytMKoLTXrN25wniOiBzv941tXpZRr/bsU4UD2O5Hm82Nu9oD9kIRxczW+At
	dTPJ+GrCpK3HyA9O2YfI40GZFszjWxX+etfWqk0KtEmW6+aVYB1Oz2n2T3lyI1fgUEUyGS+8lFxaU
	23P4RqkOmp6ibxZYnkFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxgX-009rsk-Et; Wed, 23 Jun 2021 07:52:33 +0000
Received: from mail-eopbgr60060.outbound.protection.outlook.com ([40.107.6.60]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxgQ-009rqp-62
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 07:52:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SMclFyztohH0E0/E5jLwuYBpFIkWClPUd/oThb+Bnn+rp0Y41dB0+QNg8A9Fsr9BsjfK1YLxgLLHIgRNm00LzD0jTczAHUrMScEwb8yNchdc1lRGys5z6/haGiW9l5XQ9Z36VY2mxPRmbxJF7y1GlD7dEgEJGKi10AVtFiIeUPXWaWnP9duU28/QpW7mDHonSsKX7Mkbi3eXC34vDlyAzhJ7/J6mDzH//A1nI4KOP40LCCi4H09PAZolDVV9TLEy1hFE4znBADUlQnwxCWD+/j3ieiikhmIZP/obJI7VVFFmNKyfrukD3qkTPx5gAzef8KTzMO28qHtC3kfoTtOVlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TRUG0QC4qMu9AUKzmWnlg63beiQe4Sff2p93BQ2+GEQ=;
 b=IPQ7crfOI716tvZ2PKOa8HMQkNBes3BGvvqMA+vUmoaN1JjDqn2Bw4o59DvvIWHAKE+dcKThF2sBaI3R39mK89l/7PzFMdc9o354FAalE2vD55PHcm50bq8JwBjRGbbmf0Lo7xYNBkchsrkjRwcsVf5lc+Fp/O6ksrEBtJ8lpmZgYIvl57i+/G/AKIBoQhMSlTFtghtOe9lQEUnM98EGPtxHN4PH3b2pvbBLdrsc30971wA9xc35YDPZrhIthlaw7SBU5jp4Rxa8B+5c4UlLPalqHcuBfgTFTdlmlYAIV0z4yqUMnBTEiXB2C2kQtS3zYB/TDm1Dm/xHkpnI/izIng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TRUG0QC4qMu9AUKzmWnlg63beiQe4Sff2p93BQ2+GEQ=;
 b=M90hlMgto6+Me9wS5YjdamwGB2RaaZafHASLbVCECLY29h1WRG6zYsP/FCUOqkCx8IYvBNTeGt2g1q2fiWtwJuSNnZyZdR0bD3btKuWWIZaFusBGlv6CQ2aw+UFkHU6bAPXaXF4pDdr1j/LGNm0S9ecQA9Qyrv6yfnYGPwm1f18=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB6028.eurprd08.prod.outlook.com (2603:10a6:10:208::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Wed, 23 Jun
 2021 07:52:20 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd%7]) with mapi id 15.20.4242.024; Wed, 23 Jun 2021
 07:52:20 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 23 Jun 2021 09:52:00 +0200
Message-Id: <20210623075201.5328-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210623075201.5328-1-michael.riesch@wolfvision.net>
References: <20210623075201.5328-1-michael.riesch@wolfvision.net>
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR0802CA0020.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::30) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0802CA0020.eurprd08.prod.outlook.com (2603:10a6:800:aa::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19 via Frontend
 Transport; Wed, 23 Jun 2021 07:52:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d951dd50-0182-4be5-ab61-08d9361bd46f
X-MS-TrafficTypeDiagnostic: DBBPR08MB6028:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB602800751668BC809A842774F2089@DBBPR08MB6028.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:215;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cLEPl1uZJ12WYHyegL+Deddi8O5PjHar54/xtuvhWIR4fXwJ+DL64LbrqcvZ78nRq6KGeTuDWh3ZsKB0+0ePsFOcwGnqXfzKQhL0owTmzd3Hzk6jwnGhIJTjg1w15aPLVKfphJlhDfl9pQ5P8bI1PknBeLTDlFssZpDqGzJQBm1l+yaBRcMioGp6PgcF6omMwOS0CaBr31wCNh+nvx6V0WMz5xY5sgeQIS9cns+625PTwEsO6Eop7Ss+pi/4TtARQc6+AuzLLIjzAt0GjWC04aqTABABpFNvRKjd8Q3fYAWlePk8xAGeywGKK8J6R26SmdEQuk7qS1EktonYu71LmAp9gNYCnegP54fEPPCF5bMRtl6ThrF+otpjzQfGut6iv/fehTT4vAGpIAR+zWME9U5t+JDcajK/3yAHM9o15LbXgHPmadOw9WcrTYAgo9ZCgJ4BBD/OmOHPEg4Wue6elTDnGfrcCYmfatpbp8mJoc0+Ydipt+sH+ZFSP6mHTAAAJs3W1SUYGzFXPU0No3/ngzqLNKLn0lsJCPaiceOU15ztn1IacnHyoJJFhNzgYovzb492/pr6iINF485vdl3004/wdLqPIm/oTABTg4uYuICMVCQMFP83Ju5nXZfl+lFR+J3LW7vtYlF9ZzGPTKZvrKATd9lCI+nMsU4O8TSEGECpB4yGTIbZkNtA/NofxO+5ffOQOrwsX6WepGhH7cXK0g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39840400004)(136003)(376002)(366004)(396003)(2616005)(186003)(16526019)(316002)(1076003)(6666004)(5660300002)(52116002)(36756003)(8676002)(26005)(6506007)(956004)(4326008)(107886003)(83380400001)(44832011)(2906002)(66556008)(66946007)(478600001)(6512007)(38100700002)(38350700002)(86362001)(8936002)(6486002)(6916009)(66476007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9VVmIT+VNtACmha0jOxtvjm+WlYKdWeq6lsghFH/tyi6ti0NKxR9QDiRGrq/?=
 =?us-ascii?Q?AlxK4nfhxfSuMMJzmmS2wG4otly/ERcLpnXjtUI4sV6fxWdKRlX6WLLRn3Nv?=
 =?us-ascii?Q?FrOhiNZo3YzXXMeVPhvHv2zyHwKaRVB6rqY6ZijXUHFPC4y2YE6qybgqgab1?=
 =?us-ascii?Q?r1b8OossXcRw1qjhy/Aiq1du82U6fdPWQhfq/G2YUB8OxoVLvEqQSo04Y1Ov?=
 =?us-ascii?Q?LZcx6JxQn1hot+hN+RO1BDL9KcMbyKCY2IjQTELsnVpaufk2YNZ89dZv4byl?=
 =?us-ascii?Q?8QwauduAJFg+bqKxiXN3Buht4isjeUPrZJNDgIw4/aedWGyzvC66/RirSMKl?=
 =?us-ascii?Q?gQgGajtHpVcL85BupELFfL6iY8OoIhsbxqU0tC43BNOiRAAR+LxaRkoY8Z1m?=
 =?us-ascii?Q?Fe0kIX3Lf0d8BoxANulgz7VxUfVB5f0bWuhUN5VUZebgVftCWOI13IBIh4CN?=
 =?us-ascii?Q?YhBApbN0eJkMmQp4daUW8F13B7sDn69oJ08K675z+5spwbuINB3gNULtLVq/?=
 =?us-ascii?Q?rL2usbgec2HlEdqds+zMxey7vxVqMNV33hJPaBc1IUGA7E9HaPr9jMbPABmP?=
 =?us-ascii?Q?pUkq8b/4wJ/nIpZLnzJtDYSFlby93rjqIf9UUux4wM79zfzn9yKbggrGqh8X?=
 =?us-ascii?Q?20KnkinR1A+7P5sAxzMtmzyOC0E5H30zZGBUsH35UJlC2fvKujGGcWfa7FzC?=
 =?us-ascii?Q?58if+/5Qv4B8ixIAYxVHaAMr20D0ovY/5wqkO/uAiCOcsSrlRUo2/IHxLuHm?=
 =?us-ascii?Q?JkiE7IBu07c9Tfiu0rBre3dkTZ4sQ4avGxIewXIcKHDJB0bf+bmM+iYIWZEI?=
 =?us-ascii?Q?wuXiIZS40nhUojQ3AF2+v8FTPFu8Of0A7GAaG1FHvhz5Y9/GwGCaBS0f8G4L?=
 =?us-ascii?Q?eNSYBSGJ9ePEx8kc0ay6ay3nrAfKklcHMoExMLviWZ6D0VvYkKGgWHlgiSnO?=
 =?us-ascii?Q?a158sC2Y86o9+RWNYNDV3TaV5/e4NmPLil+f6jIW8GnQJOIAPrs9UE7ZcTaq?=
 =?us-ascii?Q?tgYCEDZSNFpsU3TIM7InoMJ0DbP9IJ6HoSyI4G0eY/PqYXW96Y5dvkQW6qdk?=
 =?us-ascii?Q?T++AGEtZhzlparjWrYRcaJyucEkON45xxtzWceJIoFPW2yx0WwYV9npu0BK5?=
 =?us-ascii?Q?xJibYBkjbll2WexztE7WRiAHk7DpV4RtJSt3EDycuF0uTRDlVz7KOe15HKKe?=
 =?us-ascii?Q?PpzXehB9f8V3TARftOWsfPZjykn5yU5jR/3rS0DV9utgwSiQXNPbwV93VcRU?=
 =?us-ascii?Q?1hQ2Uagx0JgQTJcr1wOW5wcGdU0Q6zmhV6qLyubiqmVQaRl/uabuqzFJtzNN?=
 =?us-ascii?Q?GjooVLuWLVBgM0vU31G1yPre?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d951dd50-0182-4be5-ab61-08d9361bd46f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 07:52:20.7379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JfntJsiSxYYXc0zcsLGYOvJMfPcFs7FFI4UTg+XokrPHX/ULQ4RJYcUEhzGYd4YflxD8axksbm29HNjIRSnF0yfVB+X5pFBqEq1I8i8unLw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_005226_254810_97B5AA48 
X-CRM114-Status: GOOD (  22.97  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] aiodev: add driver for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit adds support for the Successive Approximation Register (SAR)
ADCs that can be found in Rockchip SoCs, such as the RK3568.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v2:
- fix timeout loop
- remove spurious debug output
- revise reference voltage handling
- add handling of clocks

 drivers/aiodev/Kconfig           |   7 ++
 drivers/aiodev/Makefile          |   1 +
 drivers/aiodev/rockchip_saradc.c | 206 +++++++++++++++++++++++++++++++
 3 files changed, 214 insertions(+)
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
index 000000000..ae842eb1f
--- /dev/null
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -0,0 +1,206 @@
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
+#include <linux/clk.h>
+#include <regulator.h>
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
+#define SARADC_TIMEOUT	       100 /* ms */
+
+struct rockchip_saradc_cfg {
+	unsigned int num_bits;
+	unsigned int num_channels;
+};
+
+struct rockchip_saradc_data {
+	const struct rockchip_saradc_cfg *config;
+	void __iomem *base;
+	struct regulator *vref;
+	unsigned int ref_voltage_mv;
+	struct clk *cclk;
+	struct clk *pclk;
+	struct aiodevice aiodev;
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
+	u32 value = 0;
+	u32 control = 0;
+	u32 mask;
+	u64 start;
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
+	start = get_time_ns();
+	do {
+		control = rockchip_saradc_reg_rd(data, SARADC_CTRL);
+
+		if (is_timeout(start, SARADC_TIMEOUT * MSECOND))
+			return -ETIMEDOUT;
+	} while (!(control & SARADC_CTRL_IRQ_STATUS));
+
+	mask = (1 << data->config->num_bits) - 1;
+	value = rockchip_saradc_reg_rd(data, SARADC_DATA) & mask;
+	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
+
+	*val = (value * data->ref_voltage_mv) / mask;
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
+	if (!data)
+		return -ENOMEM;
+
+	data->config = device_get_match_data(dev);
+	if (!data->config) {
+		ret = -EINVAL;
+		goto fail_data;
+	}
+	data->aiodev.hwdev = dev;
+	data->aiodev.read = rockchip_saradc_read;
+
+	data->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(data->base)) {
+		ret = PTR_ERR(data->base);
+		goto fail_data;
+	}
+
+	data->vref = regulator_get(dev, "vref");
+	if (IS_ERR(data->vref)) {
+		dev_err(dev, "can't get vref-supply: %pe\n", data->vref);
+		ret = PTR_ERR(data->vref);
+		goto fail_data;
+	}
+
+	ret = regulator_enable(data->vref);
+	if (ret < 0) {
+		dev_err(dev, "can't enable vref-supply value: %d\n", ret);
+		goto fail_data;
+	}
+
+	ret = regulator_get_voltage(data->vref);
+	if (ret < 0) {
+		dev_warn(dev, "can't get vref-supply value: %d\n", ret);
+		/* use default value as fallback */
+		ret = 1800000;
+	}
+	data->ref_voltage_mv = ret / 1000;
+
+	data->cclk = clk_get(dev, "saradc");
+	if (IS_ERR(data->cclk)) {
+		dev_err(dev, "can't get converter clock: %pe\n", data->cclk);
+		ret = PTR_ERR(data->cclk);
+		goto fail_data;
+	}
+
+	ret = clk_enable(data->cclk);
+	if (ret < 0) {
+		dev_err(dev, "can't enable converter clock: %d\n", ret);
+		goto fail_data;
+	}
+
+	data->pclk = clk_get(dev, "apb_pclk");
+	if (IS_ERR(data->pclk)) {
+		dev_err(dev, "can't get peripheral clock: %pe\n", data->pclk);
+		ret = PTR_ERR(data->pclk);
+		goto fail_data;
+	}
+
+	ret = clk_enable(data->pclk);
+	if (ret < 0) {
+		dev_err(dev, "can't enable peripheral clk: %d\n", ret);
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

