Delivery-date: Fri, 21 Jun 2024 07:19:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKWg6-009eTo-20
	for lore@lore.pengutronix.de;
	Fri, 21 Jun 2024 07:19:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKWg5-0001Oa-CP
	for lore@pengutronix.de; Fri, 21 Jun 2024 07:19:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o57XXQaCKu/OsDSuxorWViTmMSiv8Xxijt2oAw0EYSs=; b=JbO3vkuVNpKR5Tzh9kzf26vhKp
	f3nsqMsHYfqI2Bg3HBfk2Bi3kwZHtZRwEOkQGUUg6jHsy+yhfUWowRFjZLTFjJA+MxFp3lh8XnyKQ
	3PxjvwuXgYzvFWrB4zTRehwusAY2ZnY87esPhVpU2vuL/ufFGc/StbKcOmEcF2wj9Lq3BZThmCen3
	A+h9q7VriOeibZL/3gOTa7FrsepszS+/fhvtSByzgru7546gbkJ6ef3m7uXH59QrzYK5eMknNGKbs
	qOa7tsdP3jszRbP4QvgbhqLFYOZjW1eFUxGnu5Ck+0TirctFmg8Ipf56zAz9oMh/wBlrJGf4QCivZ
	1AvhTzPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKWfH-00000007kkQ-2yaG;
	Fri, 21 Jun 2024 05:18:23 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKWfF-00000007kjv-00C5
	for barebox@lists.infradead.org;
	Fri, 21 Jun 2024 05:18:22 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2ec1620a956so18007911fa.1
        for <barebox@lists.infradead.org>; Thu, 20 Jun 2024 22:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718947097; x=1719551897; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o57XXQaCKu/OsDSuxorWViTmMSiv8Xxijt2oAw0EYSs=;
        b=hvHNHqBTOcCnwOavVExmMtL3ZERIqCCXzwTlZMipmFEtI5SUx8e+ZD/MMHqyE5yG9l
         N5YeOzRfNP58LA3xVQMiYAVSW5ZKaCiYRaHZAw2bFywDWj1cK/mmSdGS6ATIR8cDJCSm
         9AOMzqXhfyMiHAtl209FT7bNRgBLVRlh3ig4KOHFcD+YKtWbV95Bs3gS/8YQ0gnbb1kZ
         iuGPrvKn8f206NVoLgNPCZA90M9nZ2VQ6M2n5Ki+f8ELWuUwhAZyyJs+9h55hZQ0vxpy
         eCbL7eFX9cSuydP343oVVV4QiOYcwTSyQqPO3/KxWB56yl7ADAvQKsFkgwXZe08nsydF
         6q5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718947097; x=1719551897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o57XXQaCKu/OsDSuxorWViTmMSiv8Xxijt2oAw0EYSs=;
        b=G97O55nYLjepXg/U5uFrjleQP7jPfP7IGsgniFjh5LXhF2KNPtOj28oQ+uyKwRKKEM
         wc+uPzD8r1F2CHadiwt2Gxr7DBYfL7Ji4pqfpuZKYh/JYxITg+qPrciNhz7Aayj6Qw2v
         NvWhl4PdnxsEE+oHpBNdCVGz/xbSUdPiLYs8LX50NqSMG6Xc8+/46qKjvrgl9MXO5VkZ
         bbFi9mFYFWoxrpDNQ/8eKAWZQGAHdPDyVrw/FOUAgBokwdl2vprd7G5WtKKg1FyqNiV8
         Hz3F8ORtOS1NlN83nRng5wR+SUmIolfvUN6gGY5vLwkZFhONPFJckIhiWCfqXHAFVnMU
         vxgg==
X-Gm-Message-State: AOJu0Yw+jq6m6xiHU3Mx0f2pZMxcL5ZrDXCP20Hyvttasl5qLtqV9Wyq
	25ZHgTFXRcHlIH6BsqE1scXR+Fig3Gm8HbhyvQ73rJVyaZlT8RwRZWjTKA==
X-Google-Smtp-Source: AGHT+IG1E8Og+AtMDWu5CrXJw8q28dk4825xTALC59lpmol5IFFvpXhefILH35HFqus6YVr+km8fsQ==
X-Received: by 2002:a05:6512:3b8b:b0:52c:ce4a:3a8a with SMTP id 2adb3069b0e04-52cce4a3b5emr3931483e87.1.1718947096749;
        Thu, 20 Jun 2024 22:18:16 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd63b417asm91623e87.58.2024.06.20.22.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 22:18:16 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 21 Jun 2024 08:18:06 +0300
Message-Id: <20240621051806.5660-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_221821_071227_09F421D9 
X-CRM114-Status: GOOD (  22.76  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] regulator: Add Fairchild FAN53555 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This driver supports Fairchild FAN53555 Digitally Programmable TinyBuck Regulator.

Supported ICs:
fan53526, fan53555, rk8600, rk8602, syr827, syr828, tcs4525, tcs4526.

The driver is written based on the fan53555.c linux kernel driver.
Widely used in new developments based on Rockchip SOCs RK35xx.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/regulator/Kconfig    |  11 +
 drivers/regulator/Makefile   |   1 +
 drivers/regulator/fan53555.c | 481 +++++++++++++++++++++++++++++++++++
 3 files changed, 493 insertions(+)
 create mode 100644 drivers/regulator/fan53555.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 17e217f0bb..54f27e1824 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -17,6 +17,17 @@ config REGULATOR_BCM283X
 	depends on ARCH_BCM283X
 	default y
 
+config REGULATOR_FAN53555
+	bool "Fairchild FAN53555 Regulator"
+	depends on I2C
+	depends on OFDEVICE
+	help
+	  This driver supports Fairchild FAN53555 Digitally Programmable
+	  TinyBuck Regulator. The FAN53555 is a step-down switching voltage
+	  regulator that delivers a digitally programmable output from an
+	  input voltage supply of 2.5V to 5.5V. The output voltage is
+	  programmed through an I2C interface.
+
 config REGULATOR_PFUZE
 	bool "Freescale PFUZE100/200/3000 regulator driver"
 	depends on I2C
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 95e42719d1..54ab6ef650 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_REGULATOR) += core.o helpers.o
 obj-$(CONFIG_OFDEVICE) += of_regulator.o
+obj-$(CONFIG_REGULATOR_FAN53555) += fan53555.o
 obj-$(CONFIG_REGULATOR_FIXED) += fixed.o
 obj-$(CONFIG_REGULATOR_BCM283X) += bcm2835.o
 obj-$(CONFIG_REGULATOR_PFUZE) += pfuze.o
diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
new file mode 100644
index 0000000000..9573dae803
--- /dev/null
+++ b/drivers/regulator/fan53555.c
@@ -0,0 +1,481 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// FAN53555 Fairchild Digitally Programmable TinyBuck Regulator Driver.
+//
+// Based on fan53555.c linux kernel driver:
+// Copyright (c) 2012 Marvell Technology Ltd.
+// Yunfan Zhang <yfzhang@marvell.com>
+
+#include <common.h>
+#include <driver.h>
+#include <of_device.h>
+#include <regulator.h>
+#include <i2c/i2c.h>
+#include <linux/regmap.h>
+
+#define FAN53555_VSEL0		(0x00)
+#define FAN53555_VSEL1		(0x01)
+# define VSEL_MODE		BIT(6)
+# define VSEL_BUCK_EN		BIT(7)
+#define FAN53555_CONTROL	(0x02)
+# define CTL_MODE_VSEL0_MODE	BIT(0)
+# define CTL_MODE_VSEL1_MODE	BIT(1)
+#define FAN53555_ID1		(0x03)
+# define DIE_ID			(0x0f)
+#define FAN53555_ID2		(0x04)
+# define DIE_REV		(0x0f)
+
+#define RK8602_VSEL0		(0x06)
+#define RK8602_VSEL1		(0x07)
+
+#define TCS4525_VSEL1		(0x10)
+#define TCS4525_VSEL0		(0x11)
+#define TCS4525_COMMAND		(0x14)
+# define TCS_VSEL1_MODE		BIT(6)
+# define TCS_VSEL0_MODE		BIT(7)
+
+#define FAN53555_NVOLTAGES	64
+#define FAN53526_NVOLTAGES	128
+#define RK8602_NVOLTAGES	160
+
+enum {
+	FAN53555_VSEL_ID_0 = 0,
+	FAN53555_VSEL_ID_1,
+};
+
+enum fan53555_vendor {
+	FAN53526_VENDOR_FAIRCHILD = 0,
+	FAN53555_VENDOR_FAIRCHILD,
+	FAN53555_VENDOR_ROCKCHIP,	/* RK8600, RK8601 */
+	RK8602_VENDOR_ROCKCHIP,		/* RK8602, RK8603 */
+	FAN53555_VENDOR_SILERGY,
+	FAN53526_VENDOR_TCS,
+};
+
+enum {
+	FAN53526_CHIP_ID_01 = 1,
+};
+
+enum {
+	FAN53526_CHIP_REV_08 = 8,
+};
+
+enum {
+	FAN53555_CHIP_ID_00 = 0,
+	FAN53555_CHIP_ID_01,
+	FAN53555_CHIP_ID_02,
+	FAN53555_CHIP_ID_03,
+	FAN53555_CHIP_ID_04,
+	FAN53555_CHIP_ID_05,
+	FAN53555_CHIP_ID_08 = 8,
+};
+
+enum {
+	RK8600_CHIP_ID_08 = 8,		/* RK8600, RK8601 */
+};
+
+enum {
+	RK8602_CHIP_ID_10 = 10,		/* RK8602, RK8603 */
+};
+
+enum {
+	TCS4525_CHIP_ID_12 = 12,
+};
+
+enum {
+	TCS4526_CHIP_ID_00 = 0,
+};
+
+enum {
+	FAN53555_CHIP_REV_00 = 0x3,
+	FAN53555_CHIP_REV_13 = 0xf,
+};
+
+enum {
+	SILERGY_SYR82X = 8,
+	SILERGY_SYR83X = 9,
+};
+
+struct fan53555_device_info {
+	enum fan53555_vendor vendor;
+	struct device *dev;
+	struct regulator_dev rdev;
+	struct regulator_desc rdesc;
+	int chip_id;
+	int chip_rev;
+	unsigned int sleep_vsel_id;
+};
+
+static int fan53526_voltages_setup_fairchild(struct fan53555_device_info *di)
+{
+	switch (di->chip_id) {
+	case FAN53526_CHIP_ID_01:
+		switch (di->chip_rev) {
+		case FAN53526_CHIP_REV_08:
+			di->rdesc.min_uV = 600000;
+			di->rdesc.uV_step = 6250;
+			di->rdesc.n_voltages = FAN53526_NVOLTAGES;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int fan53555_voltages_setup_fairchild(struct fan53555_device_info *di)
+{
+	switch (di->chip_id) {
+	case FAN53555_CHIP_ID_00:
+		switch (di->chip_rev) {
+		case FAN53555_CHIP_REV_00:
+			di->rdesc.min_uV = 600000;
+			di->rdesc.uV_step = 10000;
+			break;
+		case FAN53555_CHIP_REV_13:
+			di->rdesc.min_uV = 800000;
+			di->rdesc.uV_step = 10000;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+	case FAN53555_CHIP_ID_01:
+	case FAN53555_CHIP_ID_03:
+	case FAN53555_CHIP_ID_05:
+	case FAN53555_CHIP_ID_08:
+		di->rdesc.min_uV = 600000;
+		di->rdesc.uV_step = 10000;
+		break;
+	case FAN53555_CHIP_ID_04:
+		di->rdesc.min_uV = 603000;
+		di->rdesc.uV_step = 12826;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	di->rdesc.n_voltages = FAN53555_NVOLTAGES;
+
+	return 0;
+}
+
+static int fan53555_voltages_setup_rockchip(struct fan53555_device_info *di)
+{
+	switch (di->chip_id) {
+	case RK8600_CHIP_ID_08:
+		di->rdesc.min_uV = 712500;
+		di->rdesc.uV_step = 12500;
+		di->rdesc.n_voltages = FAN53555_NVOLTAGES;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int rk8602_voltages_setup_rockchip(struct fan53555_device_info *di)
+{
+	switch (di->chip_id) {
+	case RK8602_CHIP_ID_10:
+		di->rdesc.min_uV = 500000;
+		di->rdesc.uV_step = 6250;
+		di->rdesc.n_voltages = RK8602_NVOLTAGES;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int fan53555_voltages_setup_silergy(struct fan53555_device_info *di)
+{
+	switch (di->chip_id) {
+	case SILERGY_SYR82X:
+	case SILERGY_SYR83X:
+		di->rdesc.min_uV = 712500;
+		di->rdesc.uV_step = 12500;
+		di->rdesc.n_voltages = FAN53555_NVOLTAGES;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int fan53526_voltages_setup_tcs(struct fan53555_device_info *di)
+{
+	switch (di->chip_id) {
+	case TCS4525_CHIP_ID_12:
+	case TCS4526_CHIP_ID_00:
+		di->rdesc.min_uV = 600000;
+		di->rdesc.uV_step = 6250;
+		di->rdesc.n_voltages = FAN53526_NVOLTAGES;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static const struct regulator_ops fan53555_regulator_ops = {
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.map_voltage = regulator_map_voltage_linear,
+	.list_voltage = regulator_list_voltage_linear,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+};
+
+static int fan53555_device_setup(struct fan53555_device_info *di)
+{
+	unsigned int mode_reg, mode_mask;
+	int ret = 0;
+
+	/* Setup voltage control register */
+	switch (di->vendor) {
+	case FAN53526_VENDOR_FAIRCHILD:
+	case FAN53555_VENDOR_FAIRCHILD:
+	case FAN53555_VENDOR_ROCKCHIP:
+	case FAN53555_VENDOR_SILERGY:
+		switch (di->sleep_vsel_id) {
+		case FAN53555_VSEL_ID_0:
+			di->rdesc.vsel_reg = FAN53555_VSEL1;
+			break;
+		case FAN53555_VSEL_ID_1:
+			di->rdesc.vsel_reg = FAN53555_VSEL0;
+			break;
+		}
+		di->rdesc.enable_reg = di->rdesc.vsel_reg;
+		break;
+	case RK8602_VENDOR_ROCKCHIP:
+		switch (di->sleep_vsel_id) {
+		case FAN53555_VSEL_ID_0:
+			di->rdesc.vsel_reg = RK8602_VSEL1;
+			di->rdesc.enable_reg = FAN53555_VSEL1;
+			break;
+		case FAN53555_VSEL_ID_1:
+			di->rdesc.vsel_reg = RK8602_VSEL0;
+			di->rdesc.enable_reg = FAN53555_VSEL0;
+			break;
+		}
+		break;
+	case FAN53526_VENDOR_TCS:
+		switch (di->sleep_vsel_id) {
+		case FAN53555_VSEL_ID_0:
+			di->rdesc.vsel_reg = TCS4525_VSEL1;
+			break;
+		case FAN53555_VSEL_ID_1:
+			di->rdesc.vsel_reg = TCS4525_VSEL0;
+			break;
+		}
+		di->rdesc.enable_reg = di->rdesc.vsel_reg;
+		break;
+	default:
+		dev_err(di->dev, "Vendor %d not supported!\n", di->vendor);
+		return -EINVAL;
+	}
+
+	/* Setup mode control register */
+	switch (di->vendor) {
+	case FAN53526_VENDOR_FAIRCHILD:
+		mode_reg = FAN53555_CONTROL;
+
+		switch (di->sleep_vsel_id) {
+		case FAN53555_VSEL_ID_0:
+			mode_mask = CTL_MODE_VSEL1_MODE;
+			break;
+		case FAN53555_VSEL_ID_1:
+			mode_mask = CTL_MODE_VSEL0_MODE;
+			break;
+		}
+		break;
+	case FAN53555_VENDOR_FAIRCHILD:
+	case FAN53555_VENDOR_ROCKCHIP:
+	case FAN53555_VENDOR_SILERGY:
+		mode_reg = di->rdesc.vsel_reg;
+		mode_mask = VSEL_MODE;
+		break;
+	case RK8602_VENDOR_ROCKCHIP:
+		mode_mask = VSEL_MODE;
+
+		switch (di->sleep_vsel_id) {
+		case FAN53555_VSEL_ID_0:
+			mode_reg = FAN53555_VSEL1;
+			break;
+		case FAN53555_VSEL_ID_1:
+			mode_reg = FAN53555_VSEL0;
+			break;
+		}
+		break;
+	case FAN53526_VENDOR_TCS:
+		mode_reg = TCS4525_COMMAND;
+
+		switch (di->sleep_vsel_id) {
+		case FAN53555_VSEL_ID_0:
+			mode_mask = TCS_VSEL1_MODE;
+			break;
+		case FAN53555_VSEL_ID_1:
+			mode_mask = TCS_VSEL0_MODE;
+			break;
+		}
+		break;
+	}
+
+	/* Setup voltage range */
+	switch (di->vendor) {
+	case FAN53526_VENDOR_FAIRCHILD:
+		ret = fan53526_voltages_setup_fairchild(di);
+		break;
+	case FAN53555_VENDOR_FAIRCHILD:
+		ret = fan53555_voltages_setup_fairchild(di);
+		break;
+	case FAN53555_VENDOR_ROCKCHIP:
+		ret = fan53555_voltages_setup_rockchip(di);
+		break;
+	case RK8602_VENDOR_ROCKCHIP:
+		ret = rk8602_voltages_setup_rockchip(di);
+		break;
+	case FAN53555_VENDOR_SILERGY:
+		ret = fan53555_voltages_setup_silergy(di);
+		break;
+	case FAN53526_VENDOR_TCS:
+		ret = fan53526_voltages_setup_tcs(di);
+		break;
+	}
+	if (!ret) {
+		di->rdesc.supply_name = "vin";
+		di->rdesc.ops = &fan53555_regulator_ops;
+		di->rdesc.vsel_mask = BIT(fls(di->rdesc.n_voltages - 1)) - 1;
+		di->rdesc.enable_mask = VSEL_BUCK_EN;
+
+		/* REGULATOR_MODE_NORMAL */
+		regmap_update_bits(di->rdev.regmap, mode_reg, mode_mask, 0);
+	} else
+		dev_err(di->dev, "Chip ID %d with rev %d not supported!\n",
+			di->chip_id, di->chip_rev);
+
+	return ret;
+}
+
+static const struct regmap_config fan53555_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+};
+
+static int fan53555_regulator_probe(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct device_node *np = client->dev.of_node;
+	struct fan53555_device_info *di;
+	unsigned int val;
+	int ret;
+
+	di = xzalloc(sizeof(*di));
+
+	di->vendor = (enum fan53555_vendor)device_get_match_data(dev);
+
+	di->rdev.desc = &di->rdesc;
+	di->rdev.dev = dev;
+
+	di->rdev.regmap = regmap_init_i2c(client, &fan53555_regmap_config);
+	if (IS_ERR(di->rdev.regmap)) {
+		ret = PTR_ERR(di->rdev.regmap);
+		goto err;
+	}
+
+	di->dev = &client->dev;
+
+	/* Get chip ID */
+	ret = regmap_read(di->rdev.regmap, FAN53555_ID1, &val);
+	if (ret < 0) {
+		dev_err(di->dev, "Failed to get chip ID!\n");
+		goto err;
+	}
+
+	di->chip_id = val & DIE_ID;
+
+	/* Get chip revision */
+	ret = regmap_read(di->rdev.regmap, FAN53555_ID2, &val);
+	if (ret < 0) {
+		dev_err(di->dev, "Failed to get chip Rev!\n");
+		goto err;
+	}
+
+	di->chip_rev = val & DIE_REV;
+
+	ret = of_property_read_u32(np, "fcs,suspend-voltage-selector", &val);
+	if (!ret) {
+		if (val >> 1) {
+			dev_err(di->dev, "Invalid VSEL ID=%u!\n", val);
+			ret = -EINVAL;
+			goto err;
+		}
+
+		di->sleep_vsel_id = val;
+	}
+
+	ret = fan53555_device_setup(di);
+	if (ret < 0)
+		goto err;
+
+	ret = of_regulator_register(&di->rdev, np);
+	if (!ret) {
+		dev_info(di->dev, "FAN53555 Option[%d] Rev[%d] Detected!\n",
+			 di->chip_id, di->chip_rev);
+		return 0;
+	}
+
+	dev_err(di->dev, "Failed to register regulator!\n");
+
+err:
+	free(di);
+
+	return ret;
+}
+
+static const struct of_device_id __maybe_unused fan53555_dt_ids[] = {
+	{
+		.compatible = "fcs,fan53526",
+		.data = (void *)FAN53526_VENDOR_FAIRCHILD,
+	}, {
+		.compatible = "fcs,fan53555",
+		.data = (void *)FAN53555_VENDOR_FAIRCHILD
+	}, {
+		.compatible = "rockchip,rk8600",
+		.data = (void *)FAN53555_VENDOR_ROCKCHIP
+	}, {
+		.compatible = "rockchip,rk8602",
+		.data = (void *)RK8602_VENDOR_ROCKCHIP
+	}, {
+		.compatible = "silergy,syr827",
+		.data = (void *)FAN53555_VENDOR_SILERGY,
+	}, {
+		.compatible = "silergy,syr828",
+		.data = (void *)FAN53555_VENDOR_SILERGY,
+	}, {
+		.compatible = "tcs,tcs4525",
+		.data = (void *)FAN53526_VENDOR_TCS
+	}, {
+		.compatible = "tcs,tcs4526",
+		.data = (void *)FAN53526_VENDOR_TCS
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, fan53555_dt_ids);
+
+static struct driver fan53555_regulator_driver = {
+	.name		= "fan53555-regulator",
+	.probe		= fan53555_regulator_probe,
+	.of_compatible	= fan53555_dt_ids,
+};
+device_i2c_driver(fan53555_regulator_driver);
-- 
2.39.1



