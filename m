Delivery-date: Fri, 25 Aug 2023 12:02:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZTeD-008K7a-5N
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 12:02:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZTeA-0002fN-Ef
	for lore@pengutronix.de; Fri, 25 Aug 2023 12:02:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=miYlg3V3oASXmN6evdNkZ/uXX6M/YI3PJbsdVR8oLXk=; b=CQHsiOC16UDpUkmTXU4RlHtmGr
	VLox7q7zGzMXsiN027GXfljpEenArYcibiMG54gRfAHSPZOzCcVXXj+SadONsQ/wkcaz8dWwmo0Jw
	GV8424sHZJW0IdLspf5dqBdlCwICBeA5Qah3FHPmCeYRAsbZuR2E0egmhbCvKfFCRlpDUj+q95vH6
	pdS9nFiYsvRB48ygP0MKeUmYpIEhnEIvAa0Qg2yrGNKqeuodn8Ahkcyel0QsyctgiFXGUKcOrkCI0
	/UWBjl+7vzgr6Cb9Sc6jbb3i3vaDLRsFXxrI4mBK8Qa6IjwUsEM4jdZBvDe+uwP09g6PP/21FefX+
	hjnlTPaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTcs-004mY4-21;
	Fri, 25 Aug 2023 10:01:10 +0000
Received: from mail-db3eur04on0710.outbound.protection.outlook.com ([2a01:111:f400:fe0c::710] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTcn-004mX9-2s
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 10:01:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XComgEnChCXYuKZYejUoxJmIIic40uHyTuX5EHSyEY1AMRY30Zabs4ZiEkFoqkygXp3cQX4EgCwdX2SzzdoeAD+kFCcG5XMcNjlq550mAWwR+L5ZoPvpwtO/kLo8Rml06oQQawetslF1xqKq2Rkvjzvw5ywkDp96S0mpDM4qrcohYlH8Stfd6lKcrqF6o3S1nLSUadTDKUaAXHWQASDr9L0dGDkDo8iA5VCp1rsLGFI+DiusWlhW1cu2CIsUGxIjUmp/tSfdPhHVBwztLWePMxgEMCnD++UZOHEroD2FbJ9GBBIhCjGpKckM+RJixlvHWhFlmvQiVCb3Cj4uBGTvfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=miYlg3V3oASXmN6evdNkZ/uXX6M/YI3PJbsdVR8oLXk=;
 b=bUK3hvaGVV204c5G3nllkJu9Y3H7LXevGeUjQGjEvPcK3y1TwN9yyn9rMEEHlBqrtTVymfyT1QSUQfMqOOBPRMWPnFswTJCl2GkFP7laAnXs0UFN+5j83DjplkNP26tDOPYaRmR5KdGWjXFtlzfVm+hdlJYhnEpPHTh87fosXGVbpSMhbdG0x2+e93E78zLfjmuYIEKL8M6vvsgPUIqNfArMworlugyAUyGESmp5RZz7L7u5FQjfkNT9T+BFpIvSUUjoWxZuPvBaFb9OsakdC+N7iG6VCeHH/IJkjKEiWey6+0Qkyb83elrGbl0tPJ8BVmPJFWsGVLw2xMA+ia3B2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=miYlg3V3oASXmN6evdNkZ/uXX6M/YI3PJbsdVR8oLXk=;
 b=wX6TlApPUtU1gIQFnF2jzKR5hv5NMvgKhSWxtLKCD/70KXsLjCYvuG7LFVn4pPa32cnlF791DQZ9/QtWfePtge5KKrBTJcQAzWDBBChzFdfKticRyr4XD4AuFx/FlkpazOcXnLcvd9xe0N6Tu3TG+rfeW3NY+vB0EDVFOEC6TTs=
Received: from AS8PR04CA0001.eurprd04.prod.outlook.com (2603:10a6:20b:310::6)
 by VI1PR07MB9498.eurprd07.prod.outlook.com (2603:10a6:800:1c4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 10:00:55 +0000
Received: from VI1EUR02FT046.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:310:cafe::ba) by AS8PR04CA0001.outlook.office365.com
 (2603:10a6:20b:310::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27 via Frontend
 Transport; Fri, 25 Aug 2023 10:00:55 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 VI1EUR02FT046.mail.protection.outlook.com (10.13.60.169) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6723.17 via Frontend Transport; Fri, 25 Aug 2023 10:00:54 +0000
Received: from N95HX1G2.arri.de (10.30.5.31) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Fri, 25 Aug
 2023 12:00:54 +0200
From: Christian Eggers <ceggers@arri.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, <barebox@lists.infradead.org>
CC: Christian Eggers <ceggers@arri.de>
Date: Fri, 25 Aug 2023 12:00:31 +0200
Message-ID: <20230825100031.11647-1-ceggers@arri.de>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.30.5.31]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT046:EE_|VI1PR07MB9498:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b8428c3-40e3-4bf3-691b-08dba5522c29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5z8bNvJ7e6iSvTOE0BKxVjnfFsso2Hp9+ajrsRDcVwm2GDJN7vX4A49141QBTA//oOo9Y6rQMRbIiDD0i0Xq3Hd3igIsGJkp+42orMhVaPFNTF6eeTNXjSr9hmLJsUmijKU40wnAkZK1c+5qw6aNcSfUmBPpD6r5RIOxn2uxd3jdxVY/Vhq9fw6cBN9Oz5yrdV7/AWUzTXBl8zKI7gRSBYzIRxB/V0QGWGlYNLavHP051XJQESZfMztfcmNvRycKhbH89CmBrnUkxl+sDHf+qo83ZMtghi/CsAXq3sI3F2uxCh2XJF4mUlkibz9pLPq7zBxBjfWrN1waA9Uod0EWGzBITFlgr1eQu92HvvUI8T/lbjS0NB4RADpg6psT3gztz6Q/qIQo4RuxXLZ8IpgO4dlrvqj48SfaTfALJY4QEm94/caiW6eG8JU2WB3grctYEZKTwx8l3cVP22V6yaXQRBfX2nuxopp40Aj+BQAodHHGDHsoENV4EhnHxrGdAUHlhY5jwntnk7/kBGgm/tl9GxtBHQFVEjaJlwwTxdWGuIJJEJs6EC3KgIyuw8JgJtL3vKk0uCgotE9wBVwIt1P/B0FatGMAjPYH+YpT6izYaJ7GJuWn53xwMn3REVDFTwzBu+jQgHzpqck7HcxezbTiNx3uG+jSvx0FB4AzQIzEXJmZbcp+U4+Ie2wYUadeWYKY9gK9MN5+qE4P8bvsOF1E7AfmCCP/4TIY7TH1ye82Om6rksDLR7vbbD1AUYsCMCFglwWmRRqez6tT06/RDykEjLscBKKEE2zy1k0J+85YdsX6eEHvfEfVzlNI7dBTyrmq
X-Forefront-Antispam-Report: CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(346002)(39850400004)(396003)(136003)(376002)(1800799009)(186009)(451199024)(82310400011)(46966006)(36840700001)(70206006)(70586007)(316002)(81166007)(478600001)(110136005)(16526019)(40480700001)(26005)(6666004)(82740400003)(41300700001)(86362001)(7696005)(12101799020)(356005)(2906002)(83380400001)(8676002)(8936002)(4326008)(2616005)(107886003)(5660300002)(47076005)(30864003)(426003)(1076003)(336012)(36756003)(36860700001)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 10:00:54.9401
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b8428c3-40e3-4bf3-691b-08dba5522c29
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR02FT046.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB9498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_030106_066508_E14F73DB 
X-CRM114-Status: GOOD (  24.76  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] aiodev: port Linux vf610-adc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver works with the ADC on i.MX6SLX, i.MX6UL and i.MX6ULL.
Port the Linux v6.4 driver of the peripheral to make them usable in
barebox.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
This port has been heavily inspired by the imx7d_adc driver,
ported by Ahmad Fatoum.

 drivers/aiodev/Kconfig     |   7 +
 drivers/aiodev/Makefile    |   1 +
 drivers/aiodev/vf610_adc.c | 620 +++++++++++++++++++++++++++++++++++++
 3 files changed, 628 insertions(+)
 create mode 100644 drivers/aiodev/vf610_adc.c

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 5c8706ffef4a..e1edc25320f3 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -73,4 +73,11 @@ config IMX7D_ADC
 	help
 	  Say yes here to build support for IMX7D ADC.
 
+config VF610_ADC
+	tristate "Freescale vf610 ADC driver"
+	depends on ARCH_IMX6 || COMPILE_TEST
+	help
+	  Say yes here to support for Vybrid board analog-to-digital converter.
+	  Since the IP is used for i.MX6SLX, the driver also support i.MX6SLX.
+
 endif
diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
index 9cb11605ed09..ce95d5be2fb6 100644
--- a/drivers/aiodev/Makefile
+++ b/drivers/aiodev/Makefile
@@ -10,3 +10,4 @@ obj-$(CONFIG_AM335X_ADC) += am335x_adc.o
 obj-$(CONFIG_STM32_ADC) += stm32-adc.o stm32-adc-core.o
 obj-$(CONFIG_ROCKCHIP_SARADC) += rockchip_saradc.o
 obj-$(CONFIG_IMX7D_ADC) += imx7d_adc.o
+obj-$(CONFIG_VF610_ADC) += vf610_adc.o
diff --git a/drivers/aiodev/vf610_adc.c b/drivers/aiodev/vf610_adc.c
new file mode 100644
index 000000000000..cb062e08460e
--- /dev/null
+++ b/drivers/aiodev/vf610_adc.c
@@ -0,0 +1,620 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Freescale Vybrid vf610 ADC driver
+ *
+ * Copyright 2013 Freescale Semiconductor, Inc.
+ */
+
+#include <clock.h>
+#include <io.h>
+#include <linux/printk.h>
+#include <driver.h>
+#include <init.h>
+
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/clk.h>
+#include <regulator.h>
+#include <linux/err.h>
+
+#include <aiodev.h>
+
+/* This will be the driver name the kernel reports */
+#define DRIVER_NAME "vf610-adc"
+
+/* Vybrid/IMX ADC registers */
+#define VF610_REG_ADC_HC0		0x00
+#define VF610_REG_ADC_HS		0x08
+#define VF610_REG_ADC_R0		0x0c
+#define VF610_REG_ADC_CFG		0x14
+#define VF610_REG_ADC_GC		0x18
+#define VF610_REG_ADC_GS		0x1c
+
+/* Configuration register field define */
+#define VF610_ADC_MODE_BIT8		0x00
+#define VF610_ADC_MODE_BIT10		0x04
+#define VF610_ADC_MODE_BIT12		0x08
+#define VF610_ADC_MODE_MASK		0x0c
+#define VF610_ADC_BUSCLK2_SEL		0x01
+#define VF610_ADC_ALTCLK_SEL		0x02
+#define VF610_ADC_ADACK_SEL		0x03
+#define VF610_ADC_ADCCLK_MASK		0x03
+#define VF610_ADC_CLK_DIV2		0x20
+#define VF610_ADC_CLK_DIV4		0x40
+#define VF610_ADC_CLK_DIV8		0x60
+#define VF610_ADC_CLK_MASK		0x60
+#define VF610_ADC_ADLSMP_LONG		0x10
+#define VF610_ADC_ADSTS_SHORT   0x100
+#define VF610_ADC_ADSTS_NORMAL  0x200
+#define VF610_ADC_ADSTS_LONG    0x300
+#define VF610_ADC_ADSTS_MASK		0x300
+#define VF610_ADC_ADLPC_EN		0x80
+#define VF610_ADC_ADHSC_EN		0x400
+#define VF610_ADC_REFSEL_VALT		0x800
+#define VF610_ADC_REFSEL_VBG		0x1000
+#define VF610_ADC_AVGS_8		0x4000
+#define VF610_ADC_AVGS_16		0x8000
+#define VF610_ADC_AVGS_32		0xC000
+#define VF610_ADC_AVGS_MASK		0xC000
+#define VF610_ADC_OVWREN		0x10000
+
+/* General control register field define */
+#define VF610_ADC_AVGEN			0x20
+#define VF610_ADC_CAL			0x80
+
+/* Other field define */
+#define VF610_ADC_ADCHC(x)		((x) & 0x1F)
+#define VF610_ADC_CONV_DISABLE		0x1F
+#define VF610_ADC_HS_COCO0		0x1
+#define VF610_ADC_CALF			0x2
+#define VF610_ADC_TIMEOUT_NSEC	(100 * NSEC_PER_MSEC)
+
+#define DEFAULT_SAMPLE_TIME		1000
+
+enum clk_sel {
+	VF610_ADCIOC_BUSCLK_SET,
+	VF610_ADCIOC_ALTCLK_SET,
+	VF610_ADCIOC_ADACK_SET,
+};
+
+enum vol_ref {
+	VF610_ADCIOC_VR_VREF_SET,
+	VF610_ADCIOC_VR_VALT_SET,
+	VF610_ADCIOC_VR_VBG_SET,
+};
+
+enum average_sel {
+	VF610_ADC_SAMPLE_1,
+	VF610_ADC_SAMPLE_4,
+	VF610_ADC_SAMPLE_8,
+	VF610_ADC_SAMPLE_16,
+	VF610_ADC_SAMPLE_32,
+};
+
+enum conversion_mode_sel {
+	VF610_ADC_CONV_NORMAL,
+	VF610_ADC_CONV_HIGH_SPEED,
+	VF610_ADC_CONV_LOW_POWER,
+};
+
+enum lst_adder_sel {
+	VF610_ADCK_CYCLES_3,
+	VF610_ADCK_CYCLES_5,
+	VF610_ADCK_CYCLES_7,
+	VF610_ADCK_CYCLES_9,
+	VF610_ADCK_CYCLES_13,
+	VF610_ADCK_CYCLES_17,
+	VF610_ADCK_CYCLES_21,
+	VF610_ADCK_CYCLES_25,
+};
+
+struct vf610_adc_feature {
+	enum clk_sel	clk_sel;
+	enum vol_ref	vol_ref;
+	enum conversion_mode_sel conv_mode;
+
+	int	clk_div;
+	int     sample_rate;
+	int	res_mode;
+	u32 lst_adder_index;
+	u32 default_sample_time;
+
+	bool	calibration;
+	bool	ovwren;
+};
+
+struct vf610_adc {
+	struct device *dev;
+	void __iomem *regs;
+	struct clk *clk;
+	struct aiodevice aiodev;
+	void (*aiodev_info)(struct device *);
+
+	u32 vref_uv;
+	u32 value;
+	struct regulator *vref;
+
+	u32 max_adck_rate[3];
+	struct vf610_adc_feature adc_feature;
+
+	u32 sample_freq_avail[5];
+
+	struct aiochannel aiochan[16];
+};
+
+static const u32 vf610_hw_avgs[] = { 1, 4, 8, 16, 32 };
+static const u32 vf610_lst_adder[] = { 3, 5, 7, 9, 13, 17, 21, 25 };
+
+static inline void vf610_adc_calculate_rates(struct vf610_adc *info)
+{
+	struct vf610_adc_feature *adc_feature = &info->adc_feature;
+	unsigned long adck_rate, ipg_rate = clk_get_rate(info->clk);
+	u32 adck_period, lst_addr_min;
+	int divisor, i;
+
+	adck_rate = info->max_adck_rate[adc_feature->conv_mode];
+
+	if (adck_rate) {
+		/* calculate clk divider which is within specification */
+		divisor = ipg_rate / adck_rate;
+		adc_feature->clk_div = 1 << fls(divisor + 1);
+	} else {
+		/* fall-back value using a safe divisor */
+		adc_feature->clk_div = 8;
+	}
+
+	adck_rate = ipg_rate / adc_feature->clk_div;
+
+	/*
+	 * Determine the long sample time adder value to be used based
+	 * on the default minimum sample time provided.
+	 */
+	adck_period = NSEC_PER_SEC / adck_rate;
+	lst_addr_min = adc_feature->default_sample_time / adck_period;
+	for (i = 0; i < ARRAY_SIZE(vf610_lst_adder); i++) {
+		if (vf610_lst_adder[i] > lst_addr_min) {
+			adc_feature->lst_adder_index = i;
+			break;
+		}
+	}
+
+	/*
+	 * Calculate ADC sample frequencies
+	 * Sample time unit is ADCK cycles. ADCK clk source is ipg clock,
+	 * which is the same as bus clock.
+	 *
+	 * ADC conversion time = SFCAdder + AverageNum x (BCT + LSTAdder)
+	 * SFCAdder: fixed to 6 ADCK cycles
+	 * AverageNum: 1, 4, 8, 16, 32 samples for hardware average.
+	 * BCT (Base Conversion Time): fixed to 25 ADCK cycles for 12 bit mode
+	 * LSTAdder(Long Sample Time): 3, 5, 7, 9, 13, 17, 21, 25 ADCK cycles
+	 */
+	for (i = 0; i < ARRAY_SIZE(vf610_hw_avgs); i++)
+		info->sample_freq_avail[i] =
+			adck_rate / (6 + vf610_hw_avgs[i] *
+			 (25 + vf610_lst_adder[adc_feature->lst_adder_index]));
+}
+
+static inline void vf610_adc_cfg_init(struct vf610_adc *info)
+{
+	struct vf610_adc_feature *adc_feature = &info->adc_feature;
+
+	/* set default Configuration for ADC controller */
+	adc_feature->clk_sel = VF610_ADCIOC_BUSCLK_SET;
+	adc_feature->vol_ref = VF610_ADCIOC_VR_VREF_SET;
+
+	adc_feature->calibration = true;
+	adc_feature->ovwren = true;
+
+	adc_feature->res_mode = 12;
+	adc_feature->sample_rate = 1;
+
+	adc_feature->conv_mode = VF610_ADC_CONV_LOW_POWER;
+
+	vf610_adc_calculate_rates(info);
+}
+
+static void vf610_adc_cfg_post_set(struct vf610_adc *info)
+{
+	struct vf610_adc_feature *adc_feature = &info->adc_feature;
+	int cfg_data = 0;
+	int gc_data = 0;
+
+	switch (adc_feature->clk_sel) {
+	case VF610_ADCIOC_ALTCLK_SET:
+		cfg_data |= VF610_ADC_ALTCLK_SEL;
+		break;
+	case VF610_ADCIOC_ADACK_SET:
+		cfg_data |= VF610_ADC_ADACK_SEL;
+		break;
+	default:
+		break;
+	}
+
+	/* low power set for calibration */
+	cfg_data |= VF610_ADC_ADLPC_EN;
+
+	/* enable high speed for calibration */
+	cfg_data |= VF610_ADC_ADHSC_EN;
+
+	/* voltage reference */
+	switch (adc_feature->vol_ref) {
+	case VF610_ADCIOC_VR_VREF_SET:
+		break;
+	case VF610_ADCIOC_VR_VALT_SET:
+		cfg_data |= VF610_ADC_REFSEL_VALT;
+		break;
+	case VF610_ADCIOC_VR_VBG_SET:
+		cfg_data |= VF610_ADC_REFSEL_VBG;
+		break;
+	default:
+		dev_err(info->dev, "error voltage reference\n");
+	}
+
+	/* data overwrite enable */
+	if (adc_feature->ovwren)
+		cfg_data |= VF610_ADC_OVWREN;
+
+	writel(cfg_data, info->regs + VF610_REG_ADC_CFG);
+	writel(gc_data, info->regs + VF610_REG_ADC_GC);
+}
+
+static void vf610_adc_calibration(struct vf610_adc *info)
+{
+	int adc_gc, hc_cfg;
+	u64 start;
+	int coco;
+
+	if (!info->adc_feature.calibration)
+		return;
+
+	hc_cfg = VF610_ADC_CONV_DISABLE;
+	writel(hc_cfg, info->regs + VF610_REG_ADC_HC0);
+
+	adc_gc = readl(info->regs + VF610_REG_ADC_GC);
+	writel(adc_gc | VF610_ADC_CAL, info->regs + VF610_REG_ADC_GC);
+
+	start = get_time_ns();
+	do {
+		if (is_timeout(start, VF610_ADC_TIMEOUT_NSEC)) {
+			dev_err(info->dev, "Timeout for adc calibration\n");
+			break;
+		}
+
+		coco = readl(info->regs + VF610_REG_ADC_HS);
+	} while (!(coco & VF610_ADC_HS_COCO0));
+
+	adc_gc = readl(info->regs + VF610_REG_ADC_GS);
+	if (adc_gc & VF610_ADC_CALF)
+		dev_err(info->dev, "ADC calibration failed\n");
+
+	info->adc_feature.calibration = false;
+}
+
+static void vf610_adc_cfg_set(struct vf610_adc *info)
+{
+	struct vf610_adc_feature *adc_feature = &(info->adc_feature);
+	int cfg_data;
+
+	cfg_data = readl(info->regs + VF610_REG_ADC_CFG);
+
+	cfg_data &= ~VF610_ADC_ADLPC_EN;
+	if (adc_feature->conv_mode == VF610_ADC_CONV_LOW_POWER)
+		cfg_data |= VF610_ADC_ADLPC_EN;
+
+	cfg_data &= ~VF610_ADC_ADHSC_EN;
+	if (adc_feature->conv_mode == VF610_ADC_CONV_HIGH_SPEED)
+		cfg_data |= VF610_ADC_ADHSC_EN;
+
+	writel(cfg_data, info->regs + VF610_REG_ADC_CFG);
+}
+
+static void vf610_adc_sample_set(struct vf610_adc *info)
+{
+	struct vf610_adc_feature *adc_feature = &(info->adc_feature);
+	int cfg_data, gc_data;
+
+	cfg_data = readl(info->regs + VF610_REG_ADC_CFG);
+	gc_data = readl(info->regs + VF610_REG_ADC_GC);
+
+	/* resolution mode */
+	cfg_data &= ~VF610_ADC_MODE_MASK;
+	switch (adc_feature->res_mode) {
+	case 8:
+		cfg_data |= VF610_ADC_MODE_BIT8;
+		break;
+	case 10:
+		cfg_data |= VF610_ADC_MODE_BIT10;
+		break;
+	case 12:
+		cfg_data |= VF610_ADC_MODE_BIT12;
+		break;
+	default:
+		dev_err(info->dev, "error resolution mode\n");
+		break;
+	}
+
+	/* clock select and clock divider */
+	cfg_data &= ~(VF610_ADC_CLK_MASK | VF610_ADC_ADCCLK_MASK);
+	switch (adc_feature->clk_div) {
+	case 1:
+		break;
+	case 2:
+		cfg_data |= VF610_ADC_CLK_DIV2;
+		break;
+	case 4:
+		cfg_data |= VF610_ADC_CLK_DIV4;
+		break;
+	case 8:
+		cfg_data |= VF610_ADC_CLK_DIV8;
+		break;
+	case 16:
+		switch (adc_feature->clk_sel) {
+		case VF610_ADCIOC_BUSCLK_SET:
+			cfg_data |= VF610_ADC_BUSCLK2_SEL | VF610_ADC_CLK_DIV8;
+			break;
+		default:
+			dev_err(info->dev, "error clk divider\n");
+			break;
+		}
+		break;
+	}
+
+	/*
+	 * Set ADLSMP and ADSTS based on the Long Sample Time Adder value
+	 * determined.
+	 */
+	switch (adc_feature->lst_adder_index) {
+	case VF610_ADCK_CYCLES_3:
+		break;
+	case VF610_ADCK_CYCLES_5:
+		cfg_data |= VF610_ADC_ADSTS_SHORT;
+		break;
+	case VF610_ADCK_CYCLES_7:
+		cfg_data |= VF610_ADC_ADSTS_NORMAL;
+		break;
+	case VF610_ADCK_CYCLES_9:
+		cfg_data |= VF610_ADC_ADSTS_LONG;
+		break;
+	case VF610_ADCK_CYCLES_13:
+		cfg_data |= VF610_ADC_ADLSMP_LONG;
+		break;
+	case VF610_ADCK_CYCLES_17:
+		cfg_data |= VF610_ADC_ADLSMP_LONG;
+		cfg_data |= VF610_ADC_ADSTS_SHORT;
+		break;
+	case VF610_ADCK_CYCLES_21:
+		cfg_data |= VF610_ADC_ADLSMP_LONG;
+		cfg_data |= VF610_ADC_ADSTS_NORMAL;
+		break;
+	case VF610_ADCK_CYCLES_25:
+		cfg_data |= VF610_ADC_ADLSMP_LONG;
+		cfg_data |= VF610_ADC_ADSTS_NORMAL;
+		break;
+	default:
+		dev_err(info->dev, "error in sample time select\n");
+	}
+
+	/* update hardware average selection */
+	cfg_data &= ~VF610_ADC_AVGS_MASK;
+	gc_data &= ~VF610_ADC_AVGEN;
+	switch (adc_feature->sample_rate) {
+	case VF610_ADC_SAMPLE_1:
+		break;
+	case VF610_ADC_SAMPLE_4:
+		gc_data |= VF610_ADC_AVGEN;
+		break;
+	case VF610_ADC_SAMPLE_8:
+		gc_data |= VF610_ADC_AVGEN;
+		cfg_data |= VF610_ADC_AVGS_8;
+		break;
+	case VF610_ADC_SAMPLE_16:
+		gc_data |= VF610_ADC_AVGEN;
+		cfg_data |= VF610_ADC_AVGS_16;
+		break;
+	case VF610_ADC_SAMPLE_32:
+		gc_data |= VF610_ADC_AVGEN;
+		cfg_data |= VF610_ADC_AVGS_32;
+		break;
+	default:
+		dev_err(info->dev,
+			"error hardware sample average select\n");
+	}
+
+	writel(cfg_data, info->regs + VF610_REG_ADC_CFG);
+	writel(gc_data, info->regs + VF610_REG_ADC_GC);
+}
+
+static void vf610_adc_hw_init(struct vf610_adc *info)
+{
+	/* CFG: Feature set */
+	vf610_adc_cfg_post_set(info);
+	vf610_adc_sample_set(info);
+
+	/* adc calibration */
+	vf610_adc_calibration(info);
+
+	/* CFG: power and speed set */
+	vf610_adc_cfg_set(info);
+}
+
+static int __vf610_adc_read_data(struct vf610_adc *info)
+{
+	int result;
+
+	result = readl(info->regs + VF610_REG_ADC_R0);
+
+	switch (info->adc_feature.res_mode) {
+	case 8:
+		result &= 0xFF;
+		break;
+	case 10:
+		result &= 0x3FF;
+		break;
+	case 12:
+		result &= 0xFFF;
+		break;
+	default:
+		break;
+	}
+
+	return result;
+}
+
+static int vf610_adc_read_data(struct vf610_adc *info)
+{
+	int coco;
+	int ret = -EAGAIN;
+
+	coco = readl(info->regs + VF610_REG_ADC_HS);
+	if (coco & VF610_ADC_HS_COCO0) {
+		ret = __vf610_adc_read_data(info);
+	}
+
+	return ret;
+}
+
+static int vf610_read_sample(struct aiochannel *chan, int *val)
+{
+	struct vf610_adc *info = container_of(chan->aiodev, struct vf610_adc, aiodev);
+	unsigned int hc_cfg;
+	u64 raw64, start;
+	int ret;
+
+	hc_cfg = VF610_ADC_ADCHC(chan->index & 0x0f);
+	writel(hc_cfg, info->regs + VF610_REG_ADC_HC0);
+
+	start = get_time_ns();
+	do {
+		if (is_timeout(start, VF610_ADC_TIMEOUT_NSEC)) {
+			ret = -ETIMEDOUT;
+			break;
+		}
+
+		ret = vf610_adc_read_data(info);
+	} while (ret == -EAGAIN);
+
+	if (ret < 0)
+		return ret;
+
+	raw64 = ret;
+	raw64 *= info->vref_uv;
+	raw64 = div_u64(raw64, 1000);
+	*val = div_u64(raw64, (1 << 12));
+
+	return 0;
+}
+
+
+static const struct of_device_id vf610_adc_match[] = {
+	{ .compatible = "fsl,vf610-adc", },
+	{ /* sentinel */ }
+};
+
+static void vf610_adc_devinfo(struct device *dev)
+{
+	struct vf610_adc *info = dev->parent->priv;
+
+	if (info->aiodev_info)
+		info->aiodev_info(dev);
+
+	pr_info("Sample Rate: %u\n", info->sample_freq_avail[info->adc_feature.sample_rate]);
+}
+
+static int vf610_adc_probe(struct device *dev)
+{
+	struct aiodevice *aiodev;
+	struct vf610_adc *info;
+	int ret, i;
+
+	info = xzalloc(sizeof(*info));
+	info->dev = dev;
+
+	info->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(info->regs))
+		return PTR_ERR(info->regs);
+
+	info->clk = clk_get(dev, "adc");
+	if (IS_ERR(info->clk)) {
+		dev_err(dev, "failed getting clock, err = %ld\n",
+						PTR_ERR(info->clk));
+		return PTR_ERR(info->clk);
+	}
+
+	info->vref = regulator_get(dev, "vref");
+	if (IS_ERR(info->vref))
+		return PTR_ERR(info->vref);
+
+	of_property_read_u32_array(dev->device_node, "fsl,adck-max-frequency", info->max_adck_rate, 3);
+
+	info->adc_feature.default_sample_time = DEFAULT_SAMPLE_TIME;
+	of_property_read_u32(dev->device_node, "min-sample-time", &info->adc_feature.default_sample_time);
+
+	dev->priv = info;
+	aiodev = &info->aiodev;
+
+	aiodev->num_channels = 16;
+	aiodev->hwdev = dev;
+	aiodev->read = vf610_read_sample;
+	aiodev->channels = xzalloc(aiodev->num_channels * sizeof(aiodev->channels[0]));
+
+	for (i = 0; i < aiodev->num_channels; i++) {
+		aiodev->channels[i] = &info->aiochan[i];
+		info->aiochan[i].unit = "mV";
+	}
+
+	ret = regulator_enable(info->vref);
+	if (ret)
+		return ret;
+
+	info->vref_uv = regulator_get_voltage(info->vref);
+
+	ret = clk_enable(info->clk);
+	if (ret) {
+		dev_err(dev,
+			"Could not prepare or enable the clock.\n");
+		goto error_adc_clk_enable;
+	}
+
+	vf610_adc_cfg_init(info);
+	vf610_adc_hw_init(info);
+
+	ret = aiodevice_register(aiodev);
+	if (ret < 0) {
+		dev_err(dev, "Couldn't register the device.\n");
+		goto error_adc_buffer_init;
+	}
+
+	info->aiodev_info = aiodev->dev.info;
+	aiodev->dev.info = vf610_adc_devinfo;
+
+	return 0;
+
+error_adc_buffer_init:
+	clk_disable(info->clk);
+error_adc_clk_enable:
+	regulator_disable(info->vref);
+
+	return ret;
+}
+
+static void vf610_adc_remove(struct device *dev)
+{
+	struct vf610_adc *info = dev->priv;
+
+	regulator_disable(info->vref);
+	clk_disable(info->clk);
+}
+
+static struct driver vf610_adc_driver = {
+	.probe          = vf610_adc_probe,
+	.remove         = vf610_adc_remove,
+	.name           = DRIVER_NAME,
+	.of_compatible  = vf610_adc_match,
+};
+
+device_platform_driver(vf610_adc_driver);
+
+MODULE_AUTHOR("Fugang Duan <B38611@freescale.com>");
+MODULE_DESCRIPTION("Freescale VF610 ADC driver");
+MODULE_LICENSE("GPL v2");
-- 
2.35.3



