Delivery-date: Thu, 03 Aug 2023 12:34:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVet-004vUV-1e
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:34:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVeq-00073C-5T
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:34:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3x7XDLJBlhEWNMDPc8OMxTHtBaysKbKpHccMOJ7/TyE=; b=wEwH0E5TlO5WSzdlne7HiWYtAg
	+5jubuBY2AlU94BxjGj+jjaBz9BTTAQZ+uKVHylAsv0KXExlZEINYgVtPxdftsU2f2Ov//oSo2XLC
	9Y+lz8MhJErKI93mAarmNlJWbw40+998hQ/Wv31cGqS7Rjl1M9QufVTet0DI1OMYzYhwKqmqGeA9F
	/gtMaFI3NM9gMNEYAlq+ZRWv0uK9Po/dXsYC7IbOHSq6MDQ/2bToZk3k4ujhQDKhscg55OO45E+sG
	EDhl/EUzf1L+fPVK1UyIeHRWYSGs2Z0lrEGTlX6lE8znNZAWf3FfADsMtP4q+IzxJFsu4z/+MfBPC
	t/mIvz9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVde-007OB5-0I;
	Thu, 03 Aug 2023 10:33:02 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVdV-007O4v-2S
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:32:57 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fe48d0ab0fso1355351e87.1
        for <barebox@lists.infradead.org>; Thu, 03 Aug 2023 03:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691058770; x=1691663570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3x7XDLJBlhEWNMDPc8OMxTHtBaysKbKpHccMOJ7/TyE=;
        b=Y9mP3Rj1o2ccqiLLhaDHZCk7qEhO+6FZ+ay2lcwvbEqoIgWEA8YbDBEv0XYCUaGUDW
         58PHqf9RjcPUKdlKrrLLahayAKPRmLJGigoz6uOslfP90lJ9PwBKrKNoMeG1KL8YggpR
         nS16Rw+oXSvDlCp9NIaTAHhK3J8qXYMrGf9PC3bgUwm/vj8hKFMLU00jBHqZ7SjKCF4T
         +MBAFhcS2J0btSBWVqSTOpSr97tm4CZGVj3hMpF+6VMApLEEQ2mzFrdfMshdR2iQ42+H
         gd+uj0z2Ks7Nu2aOsjN5FLJPtoW5V81K8Ku/kW/xVq6IbNP88As+zyk8XzrJ/K7dUTpE
         sbHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691058770; x=1691663570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3x7XDLJBlhEWNMDPc8OMxTHtBaysKbKpHccMOJ7/TyE=;
        b=Tl/IWuksPN/r61dEQw71ziNQcmjGxgoB40sks5poWdapYUcbsOQNxIUbOSk/FMIksT
         vHzevFxOdGlUyYGXlbPQGAXk8llTA3eLHhY3qS0f/UmESiPF82c5YL+N8bZXY8Pylb2r
         FioFvLQkvPg/tP0oQ9iPM/906X87Hz0iwp+r4/DX8wAwhHmH7/x3jTo9BXuYfdBCviEx
         cMlcJNxal0XK4AAk7lW6THdkmOZOGIeDPkjQqMX6RZyFoOyOK2ErM59Jb2y/GVSlpPoP
         7UjwmizfSISWBN/woIIMGOzlFamQkdXi6LKHX8UjVufBsN8JXWeRrHRpUXCHCCqP2jST
         7p/Q==
X-Gm-Message-State: ABy/qLb8zYtYU4t+Ix6ksIpYyqfF7bF+JHla4Skc5AakOwoSldwEU1nv
	xMQsFec1jbWNbUk+2OJ/s2a5uHTa1jha1Q==
X-Google-Smtp-Source: APBJJlFJ/lT+0Xz8d1KVtaXSC3WKJyDl1WbbjwdvtuKyCCmkAranMiSO8E/Xbi8GpP9YbPOCwrpAZQ==
X-Received: by 2002:a05:6512:2356:b0:4fd:d002:ddad with SMTP id p22-20020a056512235600b004fdd002ddadmr7433931lfu.12.1691058769754;
        Thu, 03 Aug 2023 03:32:49 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id o12-20020a05651238ac00b004fe0c3d8bb4sm3278485lft.84.2023.08.03.03.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 03:32:49 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  3 Aug 2023 13:32:38 +0300
Message-Id: <20230803103238.51706-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230803103238.51706-1-eagle.alexander923@gmail.com>
References: <20230803103238.51706-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_033253_828787_5B997213 
X-CRM114-Status: GOOD (  27.77  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mtd: nand: Add driver for NAND controller on STM32MP SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds support for NAND controller on STM32MP SoCs.
The original source is taken from the STMicroelectronics/u-boot repository [1].

[1] https://github.com/STMicroelectronics/u-boot/blob/v2022.10-stm32mp/drivers/mtd/nand/raw/stm32_fmc2_nand.c

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mtd/nand/Kconfig      |   10 +
 drivers/mtd/nand/Makefile     |    1 +
 drivers/mtd/nand/nand_stm32.c | 1036 +++++++++++++++++++++++++++++++++
 3 files changed, 1047 insertions(+)
 create mode 100644 drivers/mtd/nand/nand_stm32.c

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index d4b941d20c..3237b4233f 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -95,6 +95,16 @@ config NAND_MRVL_NFC
 	  Support for the PXA3xx NAND controller, present in Armada 370/XP and
 	  PXA3xx SoCs.
 
+config NAND_STM32
+	bool "Support for NAND controller on STM32MP SoCs"
+	depends on ARCH_STM32MP || COMPILE_TEST
+	select STM32_FMC2_EBI if ARCH_STM32MP
+	help
+	  Enables support for NAND Flash chips on SoCs containing the FMC2
+	  NAND controller. This controller is found on STM32MP SoCs.
+	  The controller supports a maximum 8k page size and supports
+	  a maximum 8-bit correction error per sector of 512 bytes.
+
 config NAND_ATMEL
 	bool
 	prompt "Atmel (AT91SAM9xxx) NAND driver"
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 6258eb2177..8142d67116 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
 obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
 obj-$(CONFIG_MTD_NAND_OMAP_ELM)		+= omap_elm.o
 obj-$(CONFIG_NAND_ORION)		+= nand_orion.o
+obj-$(CONFIG_NAND_STM32)		+= nand_stm32.o
 obj-$(CONFIG_NAND_MRVL_NFC)		+= nand_mrvl_nfc.o
 obj-$(CONFIG_NAND_ATMEL)		+= atmel/
 obj-$(CONFIG_NAND_MXS)			+= nand_mxs.o
diff --git a/drivers/mtd/nand/nand_stm32.c b/drivers/mtd/nand/nand_stm32.c
new file mode 100644
index 0000000000..be13543a97
--- /dev/null
+++ b/drivers/mtd/nand/nand_stm32.c
@@ -0,0 +1,1036 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) STMicroelectronics 2019
+ * Author: Christophe Kerello <christophe.kerello@st.com>
+ */
+
+#define pr_fmt(fmt) "nand-stm32: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <of_address.h>
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/gpio/consumer.h>
+#include <linux/iopoll.h>
+#include <linux/reset.h>
+
+#include "internals.h"
+
+/* Bad block marker length */
+#define FMC2_BBM_LEN			2
+
+/* ECC step size */
+#define FMC2_ECC_STEP_SIZE		512
+
+/* Command delay */
+#define FMC2_RB_DELAY_US		30
+
+/* Max chip enable */
+#define FMC2_MAX_CE			2
+
+/* Timings */
+#define FMC2_THIZ			1
+#define FMC2_TIO			8000
+#define FMC2_TSYNC			3000
+#define FMC2_PCR_TIMING_MASK		0xf
+#define FMC2_PMEM_PATT_TIMING_MASK	0xff
+
+/* FMC2 Controller Registers */
+#define FMC2_BCR1			0x0
+#define FMC2_PCR			0x80
+#define FMC2_SR				0x84
+#define FMC2_PMEM			0x88
+#define FMC2_PATT			0x8c
+#define FMC2_HECCR			0x94
+#define FMC2_BCHISR			0x254
+#define FMC2_BCHICR			0x258
+#define FMC2_BCHPBR1			0x260
+#define FMC2_BCHPBR2			0x264
+#define FMC2_BCHPBR3			0x268
+#define FMC2_BCHPBR4			0x26c
+#define FMC2_BCHDSR0			0x27c
+#define FMC2_BCHDSR1			0x280
+#define FMC2_BCHDSR2			0x284
+#define FMC2_BCHDSR3			0x288
+#define FMC2_BCHDSR4			0x28c
+
+/* Register: FMC2_BCR1 */
+#define FMC2_BCR1_FMC2EN		BIT(31)
+
+/* Register: FMC2_PCR */
+#define FMC2_PCR_PWAITEN		BIT(1)
+#define FMC2_PCR_PBKEN			BIT(2)
+#define FMC2_PCR_PWID			GENMASK(5, 4)
+#define FMC2_PCR_PWID_BUSWIDTH_8	0
+#define FMC2_PCR_PWID_BUSWIDTH_16	1
+#define FMC2_PCR_ECCEN			BIT(6)
+#define FMC2_PCR_ECCALG			BIT(8)
+#define FMC2_PCR_TCLR			GENMASK(12, 9)
+#define FMC2_PCR_TCLR_DEFAULT		0xf
+#define FMC2_PCR_TAR			GENMASK(16, 13)
+#define FMC2_PCR_TAR_DEFAULT		0xf
+#define FMC2_PCR_ECCSS			GENMASK(19, 17)
+#define FMC2_PCR_ECCSS_512		1
+#define FMC2_PCR_ECCSS_2048		3
+#define FMC2_PCR_BCHECC			BIT(24)
+#define FMC2_PCR_WEN			BIT(25)
+
+/* Register: FMC2_SR */
+#define FMC2_SR_NWRF			BIT(6)
+
+/* Register: FMC2_PMEM */
+#define FMC2_PMEM_MEMSET		GENMASK(7, 0)
+#define FMC2_PMEM_MEMWAIT		GENMASK(15, 8)
+#define FMC2_PMEM_MEMHOLD		GENMASK(23, 16)
+#define FMC2_PMEM_MEMHIZ		GENMASK(31, 24)
+#define FMC2_PMEM_DEFAULT		0x0a0a0a0a
+
+/* Register: FMC2_PATT */
+#define FMC2_PATT_ATTSET		GENMASK(7, 0)
+#define FMC2_PATT_ATTWAIT		GENMASK(15, 8)
+#define FMC2_PATT_ATTHOLD		GENMASK(23, 16)
+#define FMC2_PATT_ATTHIZ		GENMASK(31, 24)
+#define FMC2_PATT_DEFAULT		0x0a0a0a0a
+
+/* Register: FMC2_BCHISR */
+#define FMC2_BCHISR_DERF		BIT(1)
+#define FMC2_BCHISR_EPBRF		BIT(4)
+
+/* Register: FMC2_BCHICR */
+#define FMC2_BCHICR_CLEAR_IRQ		GENMASK(4, 0)
+
+/* Register: FMC2_BCHDSR0 */
+#define FMC2_BCHDSR0_DUE		BIT(0)
+#define FMC2_BCHDSR0_DEF		BIT(1)
+#define FMC2_BCHDSR0_DEN		GENMASK(7, 4)
+
+/* Register: FMC2_BCHDSR1 */
+#define FMC2_BCHDSR1_EBP1		GENMASK(12, 0)
+#define FMC2_BCHDSR1_EBP2		GENMASK(28, 16)
+
+/* Register: FMC2_BCHDSR2 */
+#define FMC2_BCHDSR2_EBP3		GENMASK(12, 0)
+#define FMC2_BCHDSR2_EBP4		GENMASK(28, 16)
+
+/* Register: FMC2_BCHDSR3 */
+#define FMC2_BCHDSR3_EBP5		GENMASK(12, 0)
+#define FMC2_BCHDSR3_EBP6		GENMASK(28, 16)
+
+/* Register: FMC2_BCHDSR4 */
+#define FMC2_BCHDSR4_EBP7		GENMASK(12, 0)
+#define FMC2_BCHDSR4_EBP8		GENMASK(28, 16)
+
+#define FMC2_TIMEOUT_5S			5000000
+
+enum stm32_fmc2_ecc {
+	FMC2_ECC_HAM = 1,
+	FMC2_ECC_BCH4 = 4,
+	FMC2_ECC_BCH8 = 8
+};
+
+struct stm32_fmc2_timings {
+	u8 tclr;
+	u8 tar;
+	u8 thiz;
+	u8 twait;
+	u8 thold_mem;
+	u8 tset_mem;
+	u8 thold_att;
+	u8 tset_att;
+};
+
+struct stm32_fmc2_nand {
+	struct nand_chip chip;
+	struct stm32_fmc2_timings timings;
+	int wp_gpio;
+	int ncs;
+	int cs_used[FMC2_MAX_CE];
+};
+
+static inline struct stm32_fmc2_nand *to_fmc2_nand(struct nand_chip *chip)
+{
+	return container_of(chip, struct stm32_fmc2_nand, chip);
+}
+
+struct stm32_fmc2_nfc {
+	struct stm32_fmc2_nand nand;
+	struct nand_ecclayout ecclayout;
+	void __iomem *io_base;
+	void __iomem *data_base[FMC2_MAX_CE];
+	void __iomem *cmd_base[FMC2_MAX_CE];
+	void __iomem *addr_base[FMC2_MAX_CE];
+	struct clk *clk;
+
+	u8 cs_assigned;
+	int cs_sel;
+};
+
+static void stm32_fmc2_nfc_timings_init(struct nand_chip *chip)
+{
+	struct stm32_fmc2_nfc *nfc = (struct stm32_fmc2_nfc *)chip->priv;
+	struct stm32_fmc2_nand *nand = to_fmc2_nand(chip);
+	struct stm32_fmc2_timings *timings = &nand->timings;
+	u32 pmem, patt;
+
+	/* Set tclr/tar timings */
+	clrsetbits_le32(nfc->io_base + FMC2_PCR,
+			FMC2_PCR_TCLR | FMC2_PCR_TAR,
+			FIELD_PREP(FMC2_PCR_TCLR, timings->tclr) |
+			FIELD_PREP(FMC2_PCR_TAR, timings->tar));
+
+	/* Set tset/twait/thold/thiz timings in common bank */
+	pmem = FIELD_PREP(FMC2_PMEM_MEMSET, timings->tset_mem);
+	pmem |= FIELD_PREP(FMC2_PMEM_MEMWAIT, timings->twait);
+	pmem |= FIELD_PREP(FMC2_PMEM_MEMHOLD, timings->thold_mem);
+	pmem |= FIELD_PREP(FMC2_PMEM_MEMHIZ, timings->thiz);
+	writel(pmem, nfc->io_base + FMC2_PMEM);
+
+	/* Set tset/twait/thold/thiz timings in attribut bank */
+	patt = FIELD_PREP(FMC2_PATT_ATTSET, timings->tset_att);
+	patt |= FIELD_PREP(FMC2_PATT_ATTWAIT, timings->twait);
+	patt |= FIELD_PREP(FMC2_PATT_ATTHOLD, timings->thold_att);
+	patt |= FIELD_PREP(FMC2_PATT_ATTHIZ, timings->thiz);
+	writel(patt, nfc->io_base + FMC2_PATT);
+}
+
+static void stm32_fmc2_nfc_setup(struct nand_chip *chip)
+{
+	struct stm32_fmc2_nfc *nfc = (struct stm32_fmc2_nfc *)chip->priv;
+	u32 pcr = 0, pcr_mask;
+
+	/* Configure ECC algorithm (default configuration is Hamming) */
+	pcr_mask = FMC2_PCR_ECCALG;
+	pcr_mask |= FMC2_PCR_BCHECC;
+	if (chip->ecc.strength == FMC2_ECC_BCH8) {
+		pcr |= FMC2_PCR_ECCALG;
+		pcr |= FMC2_PCR_BCHECC;
+	} else if (chip->ecc.strength == FMC2_ECC_BCH4) {
+		pcr |= FMC2_PCR_ECCALG;
+	}
+
+	/* Set buswidth */
+	pcr_mask |= FMC2_PCR_PWID;
+	if (chip->options & NAND_BUSWIDTH_16)
+		pcr |= FIELD_PREP(FMC2_PCR_PWID, FMC2_PCR_PWID_BUSWIDTH_16);
+
+	/* Set ECC sector size */
+	pcr_mask |= FMC2_PCR_ECCSS;
+	pcr |= FIELD_PREP(FMC2_PCR_ECCSS, FMC2_PCR_ECCSS_512);
+
+	clrsetbits_le32(nfc->io_base + FMC2_PCR, pcr_mask, pcr);
+}
+
+static void stm32_fmc2_nfc_select_chip(struct nand_chip *chip, int chipnr)
+{
+	struct stm32_fmc2_nfc *nfc = (struct stm32_fmc2_nfc *)chip->priv;
+	struct stm32_fmc2_nand *nand = to_fmc2_nand(chip);
+
+	if (chipnr < 0 || chipnr >= nand->ncs)
+		return;
+
+	if (nand->cs_used[chipnr] == nfc->cs_sel)
+		return;
+
+	nfc->cs_sel = nand->cs_used[chipnr];
+	chip->legacy.IO_ADDR_R = nfc->data_base[nfc->cs_sel];
+	chip->legacy.IO_ADDR_W = nfc->data_base[nfc->cs_sel];
+
+	stm32_fmc2_nfc_setup(chip);
+	stm32_fmc2_nfc_timings_init(chip);
+}
+
+static void stm32_fmc2_nfc_set_buswidth_16(struct stm32_fmc2_nfc *nfc,
+					   bool set)
+{
+	u32 pcr;
+
+	pcr = set ? FIELD_PREP(FMC2_PCR_PWID, FMC2_PCR_PWID_BUSWIDTH_16) :
+		    FIELD_PREP(FMC2_PCR_PWID, FMC2_PCR_PWID_BUSWIDTH_8);
+
+	clrsetbits_le32(nfc->io_base + FMC2_PCR, FMC2_PCR_PWID, pcr);
+}
+
+static void stm32_fmc2_nfc_set_ecc(struct stm32_fmc2_nfc *nfc, bool enable)
+{
+	clrsetbits_le32(nfc->io_base + FMC2_PCR, FMC2_PCR_ECCEN,
+			enable ? FMC2_PCR_ECCEN : 0);
+}
+
+static void stm32_fmc2_nfc_clear_bch_irq(struct stm32_fmc2_nfc *nfc)
+{
+	writel(FMC2_BCHICR_CLEAR_IRQ, nfc->io_base + FMC2_BCHICR);
+}
+
+static void stm32_fmc2_nfc_cmd_ctrl(struct nand_chip *chip, int cmd,
+				    unsigned int ctrl)
+{
+	struct stm32_fmc2_nfc *nfc = (struct stm32_fmc2_nfc *)chip->priv;
+
+	if (cmd == NAND_CMD_NONE)
+		return;
+
+	if (ctrl & NAND_CLE) {
+		writeb(cmd, nfc->cmd_base[nfc->cs_sel]);
+		return;
+	}
+
+	writeb(cmd, nfc->addr_base[nfc->cs_sel]);
+}
+
+/*
+ * Enable ECC logic and reset syndrome/parity bits previously calculated
+ * Syndrome/parity bits is cleared by setting the ECCEN bit to 0
+ */
+static void stm32_fmc2_nfc_hwctl(struct nand_chip *chip, int mode)
+{
+	struct stm32_fmc2_nfc *nfc = (struct stm32_fmc2_nfc *)chip->priv;
+
+	stm32_fmc2_nfc_set_ecc(nfc, false);
+
+	if (chip->ecc.strength != FMC2_ECC_HAM) {
+		clrsetbits_le32(nfc->io_base + FMC2_PCR, FMC2_PCR_WEN,
+				mode == NAND_ECC_WRITE ? FMC2_PCR_WEN : 0);
+
+		stm32_fmc2_nfc_clear_bch_irq(nfc);
+	}
+
+	stm32_fmc2_nfc_set_ecc(nfc, true);
+}
+
+/*
+ * ECC Hamming calculation
+ * ECC is 3 bytes for 512 bytes of data (supports error correction up to
+ * max of 1-bit)
+ */
+static int stm32_fmc2_nfc_ham_calculate(struct nand_chip *chip, const u8 *data,
+					u8 *ecc)
+{
+	struct stm32_fmc2_nfc *nfc = (struct stm32_fmc2_nfc *)chip->priv;
+	u32 heccr, sr;
+	int ret;
+
+	ret = readl_poll_timeout(nfc->io_base + FMC2_SR, sr,
+				 sr & FMC2_SR_NWRF, FMC2_TIMEOUT_5S);
+	if (ret < 0) {
+		pr_err("Ham timeout\n");
+		return ret;
+	}
+
+	heccr = readl(nfc->io_base + FMC2_HECCR);
+
+	ecc[0] = heccr;
+	ecc[1] = heccr >> 8;
+	ecc[2] = heccr >> 16;
+
+	stm32_fmc2_nfc_set_ecc(nfc, false);
+
+	return 0;
+}
+
+static int stm32_fmc2_nfc_ham_correct(struct nand_chip *chip, u8 *dat,
+				      u8 *read_ecc, u8 *calc_ecc)
+{
+	u8 bit_position = 0, b0, b1, b2;
+	u32 byte_addr = 0, b;
+	u32 i, shifting = 1;
+
+	/* Indicate which bit and byte is faulty (if any) */
+	b0 = read_ecc[0] ^ calc_ecc[0];
+	b1 = read_ecc[1] ^ calc_ecc[1];
+	b2 = read_ecc[2] ^ calc_ecc[2];
+	b = b0 | (b1 << 8) | (b2 << 16);
+
+	/* No errors */
+	if (likely(!b))
+		return 0;
+
+	/* Calculate bit position */
+	for (i = 0; i < 3; i++) {
+		switch (b % 4) {
+		case 2:
+			bit_position += shifting;
+		case 1:
+			break;
+		default:
+			return -EBADMSG;
+		}
+		shifting <<= 1;
+		b >>= 2;
+	}
+
+	/* Calculate byte position */
+	shifting = 1;
+	for (i = 0; i < 9; i++) {
+		switch (b % 4) {
+		case 2:
+			byte_addr += shifting;
+		case 1:
+			break;
+		default:
+			return -EBADMSG;
+		}
+		shifting <<= 1;
+		b >>= 2;
+	}
+
+	/* Flip the bit */
+	dat[byte_addr] ^= (1 << bit_position);
+
+	return 1;
+}
+
+/*
+ * ECC BCH calculation and correction
+ * ECC is 7/13 bytes for 512 bytes of data (supports error correction up to
+ * max of 4-bit/8-bit)
+ */
+static int stm32_fmc2_nfc_bch_calculate(struct nand_chip *chip, const u8 *data,
+					u8 *ecc)
+{
+	struct stm32_fmc2_nfc *nfc = (struct stm32_fmc2_nfc *)chip->priv;
+	u32 bchpbr, bchisr;
+	int ret;
+
+	/* Wait until the BCH code is ready */
+	ret = readl_poll_timeout(nfc->io_base + FMC2_BCHISR, bchisr,
+				 bchisr & FMC2_BCHISR_EPBRF, FMC2_TIMEOUT_5S);
+	if (ret < 0) {
+		pr_err("Bch timeout\n");
+		return ret;
+	}
+
+	/* Read parity bits */
+	bchpbr = readl(nfc->io_base + FMC2_BCHPBR1);
+	ecc[0] = bchpbr;
+	ecc[1] = bchpbr >> 8;
+	ecc[2] = bchpbr >> 16;
+	ecc[3] = bchpbr >> 24;
+
+	bchpbr = readl(nfc->io_base + FMC2_BCHPBR2);
+	ecc[4] = bchpbr;
+	ecc[5] = bchpbr >> 8;
+	ecc[6] = bchpbr >> 16;
+
+	if (chip->ecc.strength == FMC2_ECC_BCH8) {
+		ecc[7] = bchpbr >> 24;
+
+		bchpbr = readl(nfc->io_base + FMC2_BCHPBR3);
+		ecc[8] = bchpbr;
+		ecc[9] = bchpbr >> 8;
+		ecc[10] = bchpbr >> 16;
+		ecc[11] = bchpbr >> 24;
+
+		bchpbr = readl(nfc->io_base + FMC2_BCHPBR4);
+		ecc[12] = bchpbr;
+	}
+
+	stm32_fmc2_nfc_set_ecc(nfc, false);
+
+	return 0;
+}
+
+static int stm32_fmc2_nfc_bch_correct(struct nand_chip *chip, u8 *dat,
+				      u8 *read_ecc, u8 *calc_ecc)
+{
+	struct stm32_fmc2_nfc *nfc = (struct stm32_fmc2_nfc *)chip->priv;
+	u32 bchdsr0, bchdsr1, bchdsr2, bchdsr3, bchdsr4, bchisr;
+	u16 pos[8];
+	int i, ret, den, eccsize = chip->ecc.size;
+	unsigned int nb_errs = 0;
+
+	/* Wait until the decoding error is ready */
+	ret = readl_poll_timeout(nfc->io_base + FMC2_BCHISR, bchisr,
+				 bchisr & FMC2_BCHISR_DERF, FMC2_TIMEOUT_5S);
+	if (ret < 0) {
+		pr_err("Bch timeout\n");
+		return ret;
+	}
+
+	bchdsr0 = readl(nfc->io_base + FMC2_BCHDSR0);
+	bchdsr1 = readl(nfc->io_base + FMC2_BCHDSR1);
+	bchdsr2 = readl(nfc->io_base + FMC2_BCHDSR2);
+	bchdsr3 = readl(nfc->io_base + FMC2_BCHDSR3);
+	bchdsr4 = readl(nfc->io_base + FMC2_BCHDSR4);
+
+	stm32_fmc2_nfc_set_ecc(nfc, false);
+
+	/* No errors found */
+	if (likely(!(bchdsr0 & FMC2_BCHDSR0_DEF)))
+		return 0;
+
+	/* Too many errors detected */
+	if (unlikely(bchdsr0 & FMC2_BCHDSR0_DUE))
+		return -EBADMSG;
+
+	pos[0] = FIELD_GET(FMC2_BCHDSR1_EBP1, bchdsr1);
+	pos[1] = FIELD_GET(FMC2_BCHDSR1_EBP2, bchdsr1);
+	pos[2] = FIELD_GET(FMC2_BCHDSR2_EBP3, bchdsr2);
+	pos[3] = FIELD_GET(FMC2_BCHDSR2_EBP4, bchdsr2);
+	pos[4] = FIELD_GET(FMC2_BCHDSR3_EBP5, bchdsr3);
+	pos[5] = FIELD_GET(FMC2_BCHDSR3_EBP6, bchdsr3);
+	pos[6] = FIELD_GET(FMC2_BCHDSR4_EBP7, bchdsr4);
+	pos[7] = FIELD_GET(FMC2_BCHDSR4_EBP8, bchdsr4);
+
+	den = FIELD_GET(FMC2_BCHDSR0_DEN, bchdsr0);
+	for (i = 0; i < den; i++) {
+		if (pos[i] < eccsize * 8) {
+			__change_bit(pos[i], (unsigned long *)dat);
+			nb_errs++;
+		}
+	}
+
+	return nb_errs;
+}
+
+static int stm32_fmc2_nfc_read_page(struct nand_chip *chip, u8 *buf,
+				    int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int i, s, stat, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	int eccstrength = chip->ecc.strength;
+	u8 *p = buf;
+	u8 *ecc_calc = chip->ecc.calc_buf;
+	u8 *ecc_code = chip->ecc.code_buf;
+	unsigned int max_bitflips = 0;
+
+	for (i = mtd->writesize + FMC2_BBM_LEN, s = 0; s < eccsteps;
+	     s++, i += eccbytes, p += eccsize) {
+		chip->ecc.hwctl(chip, NAND_ECC_READ);
+
+		/* Read the nand page sector (512 bytes) */
+		chip->legacy.cmdfunc(chip, NAND_CMD_RNDOUT, s * eccsize, -1);
+		chip->legacy.read_buf(chip, p, eccsize);
+
+		/* Read the corresponding ECC bytes */
+		chip->legacy.cmdfunc(chip, NAND_CMD_RNDOUT, i, -1);
+		chip->legacy.read_buf(chip, ecc_code, eccbytes);
+
+		/* Correct the data */
+		stat = chip->ecc.correct(chip, p, ecc_code, ecc_calc);
+		if (stat == -EBADMSG)
+			/* Check for empty pages with bitflips */
+			stat = nand_check_erased_ecc_chunk(p, eccsize,
+							   ecc_code, eccbytes,
+							   NULL, 0,
+							   eccstrength);
+
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
+
+	/* Read oob */
+	if (oob_required) {
+		chip->legacy.cmdfunc(chip, NAND_CMD_RNDOUT, mtd->writesize, -1);
+		chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
+	}
+
+	return max_bitflips;
+}
+
+static void stm32_fmc2_nfc_init(struct stm32_fmc2_nfc *nfc, bool has_parent)
+{
+	u32 pcr = readl(nfc->io_base + FMC2_PCR);
+
+	/* Set CS used to undefined */
+	nfc->cs_sel = -1;
+
+	/* Enable wait feature and nand flash memory bank */
+	pcr |= FMC2_PCR_PWAITEN;
+	pcr |= FMC2_PCR_PBKEN;
+
+	/* Set buswidth to 8 bits mode for identification */
+	pcr &= ~FMC2_PCR_PWID;
+
+	/* ECC logic is disabled */
+	pcr &= ~FMC2_PCR_ECCEN;
+
+	/* Default mode */
+	pcr &= ~FMC2_PCR_ECCALG;
+	pcr &= ~FMC2_PCR_BCHECC;
+	pcr &= ~FMC2_PCR_WEN;
+
+	/* Set default ECC sector size */
+	pcr &= ~FMC2_PCR_ECCSS;
+	pcr |= FIELD_PREP(FMC2_PCR_ECCSS, FMC2_PCR_ECCSS_2048);
+
+	/* Set default tclr/tar timings */
+	pcr &= ~FMC2_PCR_TCLR;
+	pcr |= FIELD_PREP(FMC2_PCR_TCLR, FMC2_PCR_TCLR_DEFAULT);
+	pcr &= ~FMC2_PCR_TAR;
+	pcr |= FIELD_PREP(FMC2_PCR_TAR, FMC2_PCR_TAR_DEFAULT);
+
+	/* Enable FMC2 controller */
+	if (!has_parent)
+		setbits_le32(nfc->io_base + FMC2_BCR1, FMC2_BCR1_FMC2EN);
+
+	writel(pcr, nfc->io_base + FMC2_PCR);
+	writel(FMC2_PMEM_DEFAULT, nfc->io_base + FMC2_PMEM);
+	writel(FMC2_PATT_DEFAULT, nfc->io_base + FMC2_PATT);
+}
+
+static void stm32_fmc2_nfc_calc_timings(struct nand_chip *chip,
+					const struct nand_sdr_timings *sdrt)
+{
+	struct stm32_fmc2_nfc *nfc = (struct stm32_fmc2_nfc *)chip->priv;
+	struct stm32_fmc2_nand *nand = to_fmc2_nand(chip);
+	struct stm32_fmc2_timings *tims = &nand->timings;
+	unsigned long hclk = clk_get_rate(nfc->clk);
+	unsigned long hclkp = NSEC_PER_SEC / (hclk / 1000);
+	unsigned long timing, tar, tclr, thiz, twait;
+	unsigned long tset_mem, tset_att, thold_mem, thold_att;
+
+	tar = max_t(unsigned long, hclkp, sdrt->tAR_min);
+	timing = DIV_ROUND_UP(tar, hclkp) - 1;
+	tims->tar = min_t(unsigned long, timing, FMC2_PCR_TIMING_MASK);
+
+	tclr = max_t(unsigned long, hclkp, sdrt->tCLR_min);
+	timing = DIV_ROUND_UP(tclr, hclkp) - 1;
+	tims->tclr = min_t(unsigned long, timing, FMC2_PCR_TIMING_MASK);
+
+	tims->thiz = FMC2_THIZ;
+	thiz = (tims->thiz + 1) * hclkp;
+
+	/*
+	 * tWAIT > tRP
+	 * tWAIT > tWP
+	 * tWAIT > tREA + tIO
+	 */
+	twait = max_t(unsigned long, hclkp, sdrt->tRP_min);
+	twait = max_t(unsigned long, twait, sdrt->tWP_min);
+	twait = max_t(unsigned long, twait, sdrt->tREA_max + FMC2_TIO);
+	timing = DIV_ROUND_UP(twait, hclkp);
+	tims->twait = clamp_val(timing, 1, FMC2_PMEM_PATT_TIMING_MASK);
+
+	/*
+	 * tSETUP_MEM > tCS - tWAIT
+	 * tSETUP_MEM > tALS - tWAIT
+	 * tSETUP_MEM > tDS - (tWAIT - tHIZ)
+	 */
+	tset_mem = hclkp;
+	if (sdrt->tCS_min > twait && (tset_mem < sdrt->tCS_min - twait))
+		tset_mem = sdrt->tCS_min - twait;
+	if (sdrt->tALS_min > twait && (tset_mem < sdrt->tALS_min - twait))
+		tset_mem = sdrt->tALS_min - twait;
+	if (twait > thiz && (sdrt->tDS_min > twait - thiz) &&
+	    (tset_mem < sdrt->tDS_min - (twait - thiz)))
+		tset_mem = sdrt->tDS_min - (twait - thiz);
+	timing = DIV_ROUND_UP(tset_mem, hclkp);
+	tims->tset_mem = clamp_val(timing, 1, FMC2_PMEM_PATT_TIMING_MASK);
+
+	/*
+	 * tHOLD_MEM > tCH
+	 * tHOLD_MEM > tREH - tSETUP_MEM
+	 * tHOLD_MEM > max(tRC, tWC) - (tSETUP_MEM + tWAIT)
+	 */
+	thold_mem = max_t(unsigned long, hclkp, sdrt->tCH_min);
+	if (sdrt->tREH_min > tset_mem &&
+	    (thold_mem < sdrt->tREH_min - tset_mem))
+		thold_mem = sdrt->tREH_min - tset_mem;
+	if ((sdrt->tRC_min > tset_mem + twait) &&
+	    (thold_mem < sdrt->tRC_min - (tset_mem + twait)))
+		thold_mem = sdrt->tRC_min - (tset_mem + twait);
+	if ((sdrt->tWC_min > tset_mem + twait) &&
+	    (thold_mem < sdrt->tWC_min - (tset_mem + twait)))
+		thold_mem = sdrt->tWC_min - (tset_mem + twait);
+	timing = DIV_ROUND_UP(thold_mem, hclkp);
+	tims->thold_mem = clamp_val(timing, 1, FMC2_PMEM_PATT_TIMING_MASK);
+
+	/*
+	 * tSETUP_ATT > tCS - tWAIT
+	 * tSETUP_ATT > tCLS - tWAIT
+	 * tSETUP_ATT > tALS - tWAIT
+	 * tSETUP_ATT > tRHW - tHOLD_MEM
+	 * tSETUP_ATT > tDS - (tWAIT - tHIZ)
+	 */
+	tset_att = hclkp;
+	if (sdrt->tCS_min > twait && (tset_att < sdrt->tCS_min - twait))
+		tset_att = sdrt->tCS_min - twait;
+	if (sdrt->tCLS_min > twait && (tset_att < sdrt->tCLS_min - twait))
+		tset_att = sdrt->tCLS_min - twait;
+	if (sdrt->tALS_min > twait && (tset_att < sdrt->tALS_min - twait))
+		tset_att = sdrt->tALS_min - twait;
+	if (sdrt->tRHW_min > thold_mem &&
+	    (tset_att < sdrt->tRHW_min - thold_mem))
+		tset_att = sdrt->tRHW_min - thold_mem;
+	if (twait > thiz && (sdrt->tDS_min > twait - thiz) &&
+	    (tset_att < sdrt->tDS_min - (twait - thiz)))
+		tset_att = sdrt->tDS_min - (twait - thiz);
+	timing = DIV_ROUND_UP(tset_att, hclkp);
+	tims->tset_att = clamp_val(timing, 1, FMC2_PMEM_PATT_TIMING_MASK);
+
+	/*
+	 * tHOLD_ATT > tALH
+	 * tHOLD_ATT > tCH
+	 * tHOLD_ATT > tCLH
+	 * tHOLD_ATT > tCOH
+	 * tHOLD_ATT > tDH
+	 * tHOLD_ATT > tWB + tIO + tSYNC - tSETUP_MEM
+	 * tHOLD_ATT > tADL - tSETUP_MEM
+	 * tHOLD_ATT > tWH - tSETUP_MEM
+	 * tHOLD_ATT > tWHR - tSETUP_MEM
+	 * tHOLD_ATT > tRC - (tSETUP_ATT + tWAIT)
+	 * tHOLD_ATT > tWC - (tSETUP_ATT + tWAIT)
+	 */
+	thold_att = max_t(unsigned long, hclkp, sdrt->tALH_min);
+	thold_att = max_t(unsigned long, thold_att, sdrt->tCH_min);
+	thold_att = max_t(unsigned long, thold_att, sdrt->tCLH_min);
+	thold_att = max_t(unsigned long, thold_att, sdrt->tCOH_min);
+	thold_att = max_t(unsigned long, thold_att, sdrt->tDH_min);
+	if ((sdrt->tWB_max + FMC2_TIO + FMC2_TSYNC > tset_mem) &&
+	    (thold_att < sdrt->tWB_max + FMC2_TIO + FMC2_TSYNC - tset_mem))
+		thold_att = sdrt->tWB_max + FMC2_TIO + FMC2_TSYNC - tset_mem;
+	if (sdrt->tADL_min > tset_mem &&
+	    (thold_att < sdrt->tADL_min - tset_mem))
+		thold_att = sdrt->tADL_min - tset_mem;
+	if (sdrt->tWH_min > tset_mem &&
+	    (thold_att < sdrt->tWH_min - tset_mem))
+		thold_att = sdrt->tWH_min - tset_mem;
+	if (sdrt->tWHR_min > tset_mem &&
+	    (thold_att < sdrt->tWHR_min - tset_mem))
+		thold_att = sdrt->tWHR_min - tset_mem;
+	if ((sdrt->tRC_min > tset_att + twait) &&
+	    (thold_att < sdrt->tRC_min - (tset_att + twait)))
+		thold_att = sdrt->tRC_min - (tset_att + twait);
+	if ((sdrt->tWC_min > tset_att + twait) &&
+	    (thold_att < sdrt->tWC_min - (tset_att + twait)))
+		thold_att = sdrt->tWC_min - (tset_att + twait);
+	timing = DIV_ROUND_UP(thold_att, hclkp);
+	tims->thold_att = clamp_val(timing, 1, FMC2_PMEM_PATT_TIMING_MASK);
+}
+
+static int stm32_fmc2_nfc_setup_interface(struct nand_chip *chip, int chipnr,
+					  const struct nand_interface_config *cf)
+{
+	const struct nand_sdr_timings *sdrt;
+
+	sdrt = nand_get_sdr_timings(cf);
+	if (IS_ERR(sdrt))
+		return PTR_ERR(sdrt);
+
+	if (sdrt->tRC_min < 30000)
+		return -EOPNOTSUPP;
+
+	if (chipnr == NAND_DATA_IFACE_CHECK_ONLY)
+		return 0;
+
+	stm32_fmc2_nfc_calc_timings(chip, sdrt);
+	stm32_fmc2_nfc_timings_init(chip);
+
+	return 0;
+}
+
+static void stm32_fmc2_nfc_nand_callbacks_setup(struct nand_chip *chip)
+{
+	chip->ecc.hwctl = stm32_fmc2_nfc_hwctl;
+
+	/*
+	 * Specific callbacks to read/write a page depending on
+	 * the algo used (Hamming, BCH).
+	 */
+	if (chip->ecc.strength == FMC2_ECC_HAM) {
+		/* Hamming is used */
+		chip->ecc.calculate = stm32_fmc2_nfc_ham_calculate;
+		chip->ecc.correct = stm32_fmc2_nfc_ham_correct;
+		chip->ecc.bytes = chip->options & NAND_BUSWIDTH_16 ? 4 : 3;
+		chip->ecc.options |= NAND_ECC_GENERIC_ERASED_CHECK;
+		return;
+	}
+
+	/* BCH is used */
+	chip->ecc.read_page = stm32_fmc2_nfc_read_page;
+	chip->ecc.calculate = stm32_fmc2_nfc_bch_calculate;
+	chip->ecc.correct = stm32_fmc2_nfc_bch_correct;
+
+	if (chip->ecc.strength == FMC2_ECC_BCH8)
+		chip->ecc.bytes = chip->options & NAND_BUSWIDTH_16 ? 14 : 13;
+	else
+		chip->ecc.bytes = chip->options & NAND_BUSWIDTH_16 ? 8 : 7;
+}
+
+static int stm32_fmc2_nfc_calc_ecc_bytes(int step_size, int strength)
+{
+	/* Hamming */
+	if (strength == FMC2_ECC_HAM)
+		return 4;
+
+	/* BCH8 */
+	if (strength == FMC2_ECC_BCH8)
+		return 14;
+
+	/* BCH4 */
+	return 8;
+}
+
+NAND_ECC_CAPS_SINGLE(stm32_fmc2_nfc_ecc_caps, stm32_fmc2_nfc_calc_ecc_bytes,
+		     FMC2_ECC_STEP_SIZE,
+		     FMC2_ECC_HAM, FMC2_ECC_BCH4, FMC2_ECC_BCH8);
+
+static int stm32_fmc2_nfc_parse_child(struct stm32_fmc2_nfc *nfc,
+				      struct device_node *node)
+{
+	struct stm32_fmc2_nand *nand = &nfc->nand;
+	u32 cs[FMC2_MAX_CE];
+	enum of_gpio_flags flags;
+	int ret, i;
+
+	if (!of_get_property(node, "reg", &nand->ncs))
+		return -EINVAL;
+
+	nand->ncs /= sizeof(u32);
+	if (!nand->ncs) {
+		pr_err("Invalid reg property size\n");
+		return -EINVAL;
+	}
+
+	ret = of_property_read_u32_array(node, "reg", cs, nand->ncs);
+	if (ret < 0) {
+		pr_err("Could not retrieve reg property\n");
+		return -EINVAL;
+	}
+
+	for (i = 0; i < nand->ncs; i++) {
+		if (cs[i] >= FMC2_MAX_CE) {
+			pr_err("Invalid reg value: %d\n", nand->cs_used[i]);
+			return -EINVAL;
+		}
+
+		if (nfc->cs_assigned & BIT(cs[i])) {
+			pr_err("Cs already assigned: %d\n", nand->cs_used[i]);
+			return -EINVAL;
+		}
+
+		nfc->cs_assigned |= BIT(cs[i]);
+		nand->cs_used[i] = cs[i];
+	}
+
+	nand->wp_gpio = of_get_named_gpio_flags(node, "wp-gpios", 0, &flags);
+	if (gpio_is_valid(nand->wp_gpio)) {
+		gpio_request(nand->wp_gpio, "nand-wp");
+		gpio_direction_output(nand->wp_gpio, !(flags & OF_GPIO_ACTIVE_LOW));
+	}
+
+	return 0;
+}
+
+static int stm32_fmc2_nfc_parse_dt(struct device *dev,
+				   struct stm32_fmc2_nfc *nfc)
+{
+	struct device_node *child;
+	int ret, nchips = 0;
+
+	for_each_available_child_of_node(dev->of_node, child)
+		nchips++;
+
+	if (!nchips) {
+		dev_err(dev, "NAND chip not defined\n");
+		return -EINVAL;
+	}
+
+	if (nchips > 1) {
+		dev_err(dev, "Too many NAND chips defined\n");
+		return -EINVAL;
+	}
+
+	for_each_available_child_of_node(dev->of_node, child) {
+		ret = stm32_fmc2_nfc_parse_child(nfc, child);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static struct device *stm32_fmc2_nfc_get_cdev(struct device *dev)
+{
+	struct device *pdev = dev->parent;
+	bool ebi_found = false;
+
+	if (pdev && of_device_is_compatible(pdev->of_node,
+					    "st,stm32mp1-fmc2-ebi"))
+		ebi_found = true;
+
+	if (of_device_is_compatible(dev->of_node, "st,stm32mp1-fmc2-nfc")) {
+		if (ebi_found)
+			return pdev;
+
+		return NULL;
+	}
+
+	if (!ebi_found)
+		return dev;
+
+	return NULL;
+}
+
+static const struct nand_controller_ops stm32_fmc2_nfc_controller_ops = {
+	.setup_interface = stm32_fmc2_nfc_setup_interface,
+};
+
+static int __init stm32_fmc2_nfc_probe(struct device *dev)
+{
+	struct stm32_fmc2_nfc *nfc;
+	struct nand_ecclayout *ecclayout;
+	struct device *cdev;
+	int oob_index, chip_cs, mem_region, ret;
+	unsigned int i;
+	int start_region = 0;
+	struct mtd_info *mtd;
+	struct nand_chip *nand;
+
+	cdev = stm32_fmc2_nfc_get_cdev(dev);
+	if (!cdev)
+		return -EINVAL;
+
+	nfc = kzalloc(sizeof(*nfc), GFP_KERNEL);
+	if (!nfc)
+		return -ENOMEM;
+
+	ret = stm32_fmc2_nfc_parse_dt(dev, nfc);
+	if (ret)
+		goto out_kfree;
+
+	nfc->clk = clk_get(cdev, NULL);
+	if (IS_ERR(nfc->clk)) {
+		ret = PTR_ERR(nfc->clk);
+		goto out_kfree;
+	}
+
+	clk_enable(nfc->clk);
+
+	nfc->io_base = of_iomap(cdev->of_node, 0);
+	if (!nfc->io_base) {
+		ret = -ENOMEM;
+		goto out_clk;
+	}
+
+	ret = device_reset_us(dev, 2);
+	if (ret)
+		goto out_clk;
+
+	if (dev == cdev)
+		start_region = 1;
+
+	for (chip_cs = 0, mem_region = start_region; chip_cs < FMC2_MAX_CE;
+	     chip_cs++, mem_region += 3) {
+		if (!(nfc->cs_assigned & BIT(chip_cs)))
+			continue;
+
+		nfc->data_base[chip_cs] = of_iomap(dev->of_node, mem_region);
+		if (!nfc->data_base[chip_cs]) {
+			dev_err(dev, "Resource data_base not found for cs%d", chip_cs);
+			return ret;
+		}
+
+		nfc->cmd_base[chip_cs] = of_iomap(dev->of_node, mem_region + 1);
+		if (!nfc->cmd_base[chip_cs]) {
+			dev_err(dev, "Resource cmd_base not found for cs%d", chip_cs);
+			return ret;
+		}
+
+		nfc->addr_base[chip_cs] = of_iomap(dev->of_node, mem_region + 2);
+		if (!nfc->addr_base[chip_cs]) {
+			dev_err(dev, "Resource addr_base not found for cs%d", chip_cs);
+			return ret;
+		}
+	}
+
+	stm32_fmc2_nfc_init(nfc, dev != cdev);
+
+	nand = &nfc->nand.chip;
+	mtd = nand_to_mtd(nand);
+	nand->priv = nfc;
+	mtd->dev.parent = dev;
+
+	nand_controller_init(&nand->legacy.dummy_controller);
+	nand->legacy.dummy_controller.ops = &stm32_fmc2_nfc_controller_ops;
+
+	nand->legacy.select_chip = stm32_fmc2_nfc_select_chip;
+	nand->legacy.cmd_ctrl = stm32_fmc2_nfc_cmd_ctrl;
+	nand->legacy.chip_delay = FMC2_RB_DELAY_US;
+	nand->options |= NAND_BUSWIDTH_AUTO | NAND_NO_SUBPAGE_WRITE;
+
+	/* Default ECC settings */
+	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.size = FMC2_ECC_STEP_SIZE;
+	nand->ecc.strength = FMC2_ECC_BCH8;
+
+	/* Disable Write Protect */
+	if (gpio_is_valid(nfc->nand.wp_gpio))
+		gpio_set_value(nfc->nand.wp_gpio, 0);
+
+	ret = nand_scan_ident(nand, nfc->nand.ncs, NULL);
+	if (ret)
+		return ret;
+
+	/*
+	 * Only NAND_ECC_HW mode is actually supported
+	 * Hamming => ecc.strength = 1
+	 * BCH4 => ecc.strength = 4
+	 * BCH8 => ecc.strength = 8
+	 * ECC sector size = 512
+	 */
+	if (nand->ecc.mode != NAND_ECC_HW) {
+		dev_err(dev, "Nand_ecc_mode is not well defined in the DT\n");
+		return -EINVAL;
+	}
+
+	ret = nand_ecc_choose_conf(nand, &stm32_fmc2_nfc_ecc_caps,
+				   mtd->oobsize - FMC2_BBM_LEN);
+	if (ret) {
+		dev_err(dev, "No valid ECC settings set\n");
+		return ret;
+	}
+
+	if (nand->bbt_options & NAND_BBT_USE_FLASH)
+		nand->bbt_options |= NAND_BBT_NO_OOB;
+
+	stm32_fmc2_nfc_nand_callbacks_setup(nand);
+
+	/* Define ECC layout */
+	ecclayout = &nfc->ecclayout;
+	ecclayout->eccbytes = nand->ecc.bytes *
+			      (mtd->writesize / nand->ecc.size);
+	oob_index = FMC2_BBM_LEN;
+	for (i = 0; i < ecclayout->eccbytes; i++, oob_index++)
+		ecclayout->eccpos[i] = oob_index;
+	ecclayout->oobfree->offset = oob_index;
+	ecclayout->oobfree->length = mtd->oobsize - ecclayout->oobfree->offset;
+	mtd_set_ecclayout(mtd, ecclayout);
+
+	stm32_fmc2_nfc_set_buswidth_16(nfc, nand->options & NAND_BUSWIDTH_16);
+
+	ret = nand_scan_tail(nand);
+	if (ret)
+		return ret;
+
+	return add_mtd_nand_device(mtd, "nand");
+
+out_clk:
+	clk_disable(nfc->clk);
+
+out_kfree:
+	kfree(nfc);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id stm32_nand_dt_ids[] = {
+	{ .compatible = "st,stm32mp15-fmc2", },
+	{ .compatible = "st,stm32mp1-fmc2-nfc", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, stm32_nand_dt_ids);
+
+static struct driver stm32_nand_driver = {
+	.name		= "stm32_fmc2_nfc",
+	.probe		= stm32_fmc2_nfc_probe,
+	.of_compatible	= DRV_OF_COMPAT(stm32_nand_dt_ids),
+};
+coredevice_platform_driver(stm32_nand_driver);
-- 
2.39.1



