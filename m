Delivery-date: Thu, 24 Jun 2021 18:11:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwRwp-0006GH-3X
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 18:11:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwRwn-0001jD-9M
	for lore@pengutronix.de; Thu, 24 Jun 2021 18:11:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRf/cGLzjPwzSv8EZmxcBQHpJn1Md9Vbx9PiXjZbdTg=; b=BTunpA8Cu5N2w1
	mVqkWimNZfOpz7gHOuQS4uoQAqPTlMF+oZ2T6yKfCBVFTxKrIpzKdPHtTfLV9gzxzQiZ+zyTNyhNa
	RM9t5Z+6PJ6aP1yG7DuiUEXiMkrwMu5Y1qzMPgPTeyFT603rV4Xc4rWvG5xtAjuBWfQgyzjM5pZ4N
	62pmLuEBoJZjEyG7BBKxkX/rhyiipF2Us4xLouvDpP4SsnMEE1MxVOKeRCj7L+ZdRwwSfqCFpV6q0
	id5cFy0g9lFqPqyy+aBcfnTs59/2nNRFNRtTMTyKhQ+qbfJ5R4K6JUBbkaHu+mXmcxYBgH/YIBbY8
	aETBPoUvDMGC+NbtF/gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwRvG-00FPej-Vs; Thu, 24 Jun 2021 16:09:47 +0000
Received: from mail-eopbgr60046.outbound.protection.outlook.com ([40.107.6.46]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwRv3-00FPbR-Md
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 16:09:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XTocXS5z1aRuageZQIkNnkImfr2Ow8HSVj/KwU0RhmL6N/FRA9qaBQkRiXvKiVtZrJzEBQVk+v/IzEzVQH7rQDcfdGpHyhGOuwUu1Rq/GWLgx8a+4wJrrxsY2hmkFZB7AUKe+kVNs+mo8opGrUxUaQOuJqiQcuiuIThlX633DkKKkB2HbG3dgNbC4ZE+lzmhhcn+M/n69UFybvvjlQsC/sNPzj53fPjzjgySYgDhqcQBUErb+MV9irNldHNfU5B8yWur7+qYgEv6Tad7e6Y80zr2xGcysX7WIsxWmdX7l36t/7VxxQftdtSRC1lkompX5Dm+2X2+mcshu4LX0EfT1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qo+6Jc6N6WBJr3vUqQdUpW+IHsXv36u+Uvv5izaRucQ=;
 b=iDyRdJavmHR5PNm56lvEcE3dFQcAte3r0u1RCHQB8yKmQDUpc/ojTQyZ1rjxI0r7FcjoRgOFZgJuZUw6ZTxUS7PO4eZ3arpFBBpFa2Llq+gb4M1S1ofAMEPgo6zailWCgheizLOwjYgvR1FkR+7MEc0as+DiaUzyf34/JEKX8Q2Fcv0yAU2MEJCr9XLJhbx/HMBbBL3Koumqv9rTrc1F5G/5Ew8pHBfZ+Hh11Up5h//A9vV6FCalv3P+DjswatD/M6SqMw8ZRTDSGUhvIMo+u6OFq5QwUM0wC+vTUDhjELgGRQCEmy5gTlT6kILL6dS6BaMk1dNI1uoG0H6Got6ttw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qo+6Jc6N6WBJr3vUqQdUpW+IHsXv36u+Uvv5izaRucQ=;
 b=q2VvV9fDeFqoQW2OcYeXDi8EmJb5hjrhz/sNobyW5ieY6tMvBD4Z4Xdm7K0hHdeGTGy3PxzR/zSKuIUeIpVGddhnyb8dNhzMtvK2k19O4iI0W9KH8x1tAI3QL7z8CT9s8VarcnhPsxjNxikOvJejqQ28iY03+QrYwvB/HWYBE38=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB5404.eurprd08.prod.outlook.com (2603:10a6:10:117::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19; Thu, 24 Jun
 2021 16:09:32 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd%7]) with mapi id 15.20.4242.024; Thu, 24 Jun 2021
 16:09:32 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 24 Jun 2021 18:09:14 +0200
Message-Id: <20210624160915.21897-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210624160915.21897-1-michael.riesch@wolfvision.net>
References: <20210624160915.21897-1-michael.riesch@wolfvision.net>
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR07CA0181.eurprd07.prod.outlook.com
 (2603:10a6:802:3e::29) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR07CA0181.eurprd07.prod.outlook.com (2603:10a6:802:3e::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4287.8 via Frontend Transport; Thu, 24 Jun 2021 16:09:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 67031189-7f82-42e4-fda2-08d9372a73ed
X-MS-TrafficTypeDiagnostic: DB8PR08MB5404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB540451452320EC2F7BA591ABF2079@DB8PR08MB5404.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:469;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jzcjRM+58mtw8ATQM9l/axbdphz5ckmG3Zcr9SpQzUcI5I01ROia9xVq5sTJINvhIl5zNANJLZx1r3XeZ2ug8dky0NbFDpuGwpGHK5HYsPQ93zHm8l1Cpr/F1vQlOcoCBvkQBzM/+jgxOu8U67lTIegNBZ/kwT8OlIRGkeYK88z1q+QtaBpK54Bc8qowXUtmf8890ctT+LYZX7tWafyAFYZo/YKh6g+FKqF05gHwM8y2BT6K6XvTBhicHXYI1L6eJYI1cHBiB5doyp0OBU3VmUjHAfZZJ0U0RZkAbGqmaTltzz/CzZJS4mTcmQURCsthBaJud7cZ744dmdTXTafSBr3mII64sq4B2ynCBQBzP8ROvqbiEAVNdPswzwSp5A+MvoKlTLGQOoCVv9j56NMEvAZ7WH0UY5YY5vgrSMTRkf8N8bXPCitf2/Ia+mFFXeizmHMv4Mz4cN15i4i82sGSx2EixhLkJtS8qYWkqF1TYt/CwyOuRyjCBTpq4RXpH2NwCEXCGFoHXyK2qsuRuFEzs0bFizuxgsJBmPLAwmLTagHznkGg0lkQZQmP90YhaJz2XvDVQlTyb3qMZgiLlkIccqflqKdVIRsd5H2kosZY8+RS31SdO1SqxgvdF+ktq8pmCqLix7ugzZC4FIJngEstyg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(39830400003)(396003)(376002)(366004)(6666004)(956004)(2616005)(36756003)(316002)(6506007)(8676002)(52116002)(6916009)(86362001)(1076003)(186003)(6486002)(26005)(6512007)(107886003)(5660300002)(16526019)(4326008)(38100700002)(38350700002)(2906002)(478600001)(66556008)(8936002)(44832011)(83380400001)(66476007)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2ZTpxJcZF2IrQ+ieZh0GnfdU7084x2TjZqGqd5ZKv2naiu4zOS4da4u2jPiC?=
 =?us-ascii?Q?H7l7v5K7teg+EjIzjVaAGxRQXeABeRUo+dHDIKaKEaPNcIK1mj0hEp5Ah/XX?=
 =?us-ascii?Q?Qv49ZloHUJhbg6A//JXuagnHS2pCeHfj3X/8rcbBbjCfweleTh7TYrkH/GAA?=
 =?us-ascii?Q?2mwizfCTn8Az8UmjpH51aIiSjX2hE5jPo8lNGOBUI9NVVZv+gGjqv3ZznA65?=
 =?us-ascii?Q?D8mL1ZbU75vaCm7M7SAgZa1t0/d9fUguJzJXzetSbveBQdenZhp1EeubOTKT?=
 =?us-ascii?Q?KWV2bNWrBQVUlm7NRKcstYfHrEprCzYow+ULhyPtou0axjh8f6hiIBi00340?=
 =?us-ascii?Q?QvP5jqnyLIEIhNmltmSYtxlqz89WssaEsvXrY9JyZmvivr+n35by4jxn0ll9?=
 =?us-ascii?Q?3DMev1bx1w32ionGyaRyhdPIYX/DuDOXK2HyGvP4gKIKiRzGCj6/sIvglahZ?=
 =?us-ascii?Q?V6n4whzSl/tRwBPUHGyLYcXWJkFnLYLTQloJm7fEI7dA8LNgkVqUCVxQ2K28?=
 =?us-ascii?Q?FPj+nSIAXiVw9xLjkfjUa6nRDiGLlCnNVyhcMur1kbbxBTtvZ171PzTS5zLJ?=
 =?us-ascii?Q?5MarvSu9QC0Ht7LjGQts7zgRTNNWmx8Oy6JpKXQrpoichGH4RV23seMTMr+z?=
 =?us-ascii?Q?IXccJYDFAct8GqQ5Ri7P6P8ko9enhW8bxl3QV5JRh4+qxtSIVU9CrEmeNP7e?=
 =?us-ascii?Q?kIzYk/zA7fYXTSMEg/5PLlaJ9El5aV7grI8mC23YSnwcjuCGNfPZRHta9jss?=
 =?us-ascii?Q?LuFl0Yj68lgj2SfOrCOtG39iO4FK+TuUlIo1qKvDPmyFzgnCPTLlLG/q8nQJ?=
 =?us-ascii?Q?qfGER1iAFUazl/G4sNUO9ffIrj31dKCMwKOaQ2qaT4uPB4xrquSA1hW58BYS?=
 =?us-ascii?Q?UTUJQ36DavHtuGVHyuUwqcZ8wc0MSSs1LOjL0X9xM9Bf8VVXOMaPO0iMszeD?=
 =?us-ascii?Q?BdrMFchY/h/icMrTbXZn8i7xy3CHQE8dqtrzng9LCef9ZGNbz9mimkm85y15?=
 =?us-ascii?Q?o2hC24kLHFKhY1d1wiPBc/Od0YmXT5IYxlzPEh68JxSEsADV3L2+6Ae0NLB4?=
 =?us-ascii?Q?wXKoKoNF2dS6WalnvD+RhXaCnKc4ZyNGBhacuKQtUEpzkQYdY3B+SdacVoY2?=
 =?us-ascii?Q?C0xO7kxTNo/x+qWlrlsR8d7azS5ApuUJQYCoIKa6c2a3lHs2qP1eZ8aL5L2P?=
 =?us-ascii?Q?DyWEVrqp+cohQet8+scD8CdAsXA7PPoqo2SxrCU31sxwZLkhe5DaXHQ2KOw7?=
 =?us-ascii?Q?a3PWgw6GpkuDLwoKlBvvPIPrhz5ipTwlhbDIKnJV0Gp+dYDX31+l0SfnFXfA?=
 =?us-ascii?Q?K6e98NKD1JE5gw4ionnq4nFg?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 67031189-7f82-42e4-fda2-08d9372a73ed
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2021 16:09:32.3826 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c+LW13k8PW2/5+ybkBwglWO8P+yYh+6cbV7EuTlL/vXwufdWyMdnnIvCmNirQpKxTI8/zcSsPS9M8Gm6sP1moLFpTy5Aex02/rw0oeuUQ9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_090933_781309_F3F9B9F6 
X-CRM114-Status: GOOD (  23.04  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 1/2] aiodev: add driver for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit adds support for the Successive Approximation Register (SAR)
ADCs that can be found in Rockchip SoCs, such as the RK3568.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v3:
- fix dependencies in Kconfig
- beautify timeout macro
- drop superfluous pointer checks
- switch to %pe in dev_err calls

v2:
- fix timeout loop
- remove spurious debug output
- revise reference voltage handling
- add handling of clocks

 drivers/aiodev/Kconfig           |   8 ++
 drivers/aiodev/Makefile          |   1 +
 drivers/aiodev/rockchip_saradc.c | 197 +++++++++++++++++++++++++++++++
 3 files changed, 206 insertions(+)
 create mode 100644 drivers/aiodev/rockchip_saradc.c

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 88d013aad..03c688ae6 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -50,4 +50,12 @@ config STM32_ADC
 	  Support for ADC on STM32.  Supports simple one-shot readings
 	  rather than continuous sampling with DMA, etc.  ADC channels should be
 	  configured via device tree, using the kernel bindings.
+
+config ROCKCHIP_SARADC
+	tristate "Rockchip SARADC driver"
+	depends on ARCH_RK3568 || COMPILE_TEST
+	depends on OFDEVICE
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
index 000000000..302f73c2c
--- /dev/null
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -0,0 +1,197 @@
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
+#define SARADC_TIMEOUT_NS      (100 * MSECOND)
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
+	data = container_of(chan->aiodev, struct rockchip_saradc_data, aiodev);
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
+		if (is_timeout(start, SARADC_TIMEOUT_NS))
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
+
+	data->config = device_get_match_data(dev);
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
+		dev_err(dev, "can't enable converter clock: %pe\n",
+			ERR_PTR(ret));
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
+		dev_err(dev, "can't enable peripheral clk: %pe\n",
+			ERR_PTR(ret));
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

