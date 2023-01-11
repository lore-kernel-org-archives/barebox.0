Delivery-date: Wed, 11 Jan 2023 18:44:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf8r-0091lg-7n
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:44:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf8n-0006Po-QW
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:43:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sZcUAMWvzmP3LSb/rydkMW2lnL4OtJEO3Ww0cb+z+kM=; b=J9KpdKlwP6Nve1bloiHrup4mtv
	0ComqCjK/3u8i7EAIWaB1U/iZzVMksKjlBEPdR5BoKKXJFgy5he8p6++9zH3N1/2BlTAEf4BCwwbu
	VReyYY/iF5GtpioNb6td3KCCzeJ76xXZxQ0Qly3p72mDAPq3RhI2zNkRG2lqQIcFd5NxXNeweIKZV
	FJqcrtFHRn380N7Gy7je0HBj1sbuefj7vCDOw5thZuyBF+5kAqHIVaCd3WmJoDqNxx/Ky6xLQX99b
	fP6qc0db5wy14uXZJMQKRuLPNW7ARlZOE6fThXn/49bVeWTxtOMF/QYX3sOHb8v8y+8khk1uKcXKK
	7zCBARfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf7C-00CUI9-Um; Wed, 11 Jan 2023 17:42:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5T-00CTI7-6e
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-00054K-VL; Wed, 11 Jan 2023 18:40:30 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-005M6u-Av; Wed, 11 Jan 2023 18:40:29 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DGZ-H0; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:18 +0100
Message-Id: <20230111174023.1719129-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094031_642492_58A09D4A 
X-CRM114-Status: GOOD (  29.37  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/15] memory: add Atmel EBI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver is used to configure the EBI (external bus interface) when
the device-tree is used. This bus supports NANDs, external Ethernet
controller, SRAMs, ATA devices, etc.

We import it from Linux in barebox in preparation for importing a newer
state of the Atmel NAND controller driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/memory/Kconfig                  |  14 +
 drivers/memory/Makefile                 |   1 +
 drivers/memory/atmel-ebi.c              | 614 ++++++++++++++++++++++++
 include/linux/mfd/syscon/atmel-matrix.h | 112 +++++
 include/soc/at91/atmel-sfr.h            |   1 +
 5 files changed, 742 insertions(+)
 create mode 100644 drivers/memory/atmel-ebi.c
 create mode 100644 include/linux/mfd/syscon/atmel-matrix.h

diff --git a/drivers/memory/Kconfig b/drivers/memory/Kconfig
index e27695e98143..e18b452009d0 100644
--- a/drivers/memory/Kconfig
+++ b/drivers/memory/Kconfig
@@ -1,6 +1,20 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menu "Memory controller drivers"
 
+config ATMEL_EBI
+	bool "Atmel EBI driver"
+	default y if ARCH_AT91
+	depends on ARCH_AT91 || COMPILE_TEST
+	depends on OFDEVICE
+	select MFD_SYSCON
+	select MFD_ATMEL_SMC
+	help
+	  Driver for Atmel EBI controller.
+	  Used to configure the EBI (external bus interface) when the device-
+	  tree is used. This bus supports NANDs, external ethernet controller,
+	  SRAMs, ATA devices, etc.
+
+
 config MC_TEGRA124
 	bool "Support for Tegra124 memory controller"
 	depends on ARCH_TEGRA || COMPILE_TEST
diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
index 39d1ba08ea1a..bdf8db66e88d 100644
--- a/drivers/memory/Makefile
+++ b/drivers/memory/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_ATMEL_EBI)		+= atmel-ebi.o
 obj-$(CONFIG_MC_TEGRA124)	+= mc-tegra124.o
diff --git a/drivers/memory/atmel-ebi.c b/drivers/memory/atmel-ebi.c
new file mode 100644
index 000000000000..cbb4f4cfe77d
--- /dev/null
+++ b/drivers/memory/atmel-ebi.c
@@ -0,0 +1,614 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * EBI driver for Atmel chips
+ * inspired by the fsl weim bus driver
+ *
+ * Copyright (C) 2013 Jean-Jacques Hiblot <jjhiblot@traphandler.com>
+ */
+
+#include <linux/clk.h>
+#include <io.h>
+#include <mfd/syscon.h>
+#include <linux/mfd/syscon/atmel-matrix.h>
+#include <linux/mfd/syscon/atmel-smc.h>
+#include <init.h>
+#include <driver.h>
+#include <of_device.h>
+#include <regmap.h>
+#include <soc/at91/atmel-sfr.h>
+#include <linux/time.h>
+#include <linux/printk.h>
+
+#define AT91_EBI_NUM_CS		8
+
+struct atmel_ebi_dev_config {
+	int cs;
+	struct atmel_smc_cs_conf smcconf;
+};
+
+struct atmel_ebi;
+
+struct atmel_ebi_dev {
+	struct list_head node;
+	struct atmel_ebi *ebi;
+	u32 mode;
+	int numcs;
+	struct atmel_ebi_dev_config configs[];
+};
+
+struct atmel_ebi_caps {
+	unsigned int available_cs;
+	unsigned int ebi_csa_offs;
+	const char *regmap_name;
+	void (*get_config)(struct atmel_ebi_dev *ebid,
+			   struct atmel_ebi_dev_config *conf);
+	int (*xlate_config)(struct atmel_ebi_dev *ebid,
+			    struct device_node *configs_np,
+			    struct atmel_ebi_dev_config *conf);
+	void (*apply_config)(struct atmel_ebi_dev *ebid,
+			     struct atmel_ebi_dev_config *conf);
+};
+
+struct atmel_ebi {
+	struct clk *clk;
+	struct regmap *regmap;
+	struct  {
+		struct regmap *regmap;
+		struct clk *clk;
+		const struct atmel_hsmc_reg_layout *layout;
+	} smc;
+
+	struct device *dev;
+	const struct atmel_ebi_caps *caps;
+	struct list_head devs;
+};
+
+struct atmel_smc_timing_xlate {
+	const char *name;
+	int (*converter)(struct atmel_smc_cs_conf *conf,
+			 unsigned int shift, unsigned int nycles);
+	unsigned int shift;
+};
+
+#define ATMEL_SMC_SETUP_XLATE(nm, pos)	\
+	{ .name = nm, .converter = atmel_smc_cs_conf_set_setup, .shift = pos}
+
+#define ATMEL_SMC_PULSE_XLATE(nm, pos)	\
+	{ .name = nm, .converter = atmel_smc_cs_conf_set_pulse, .shift = pos}
+
+#define ATMEL_SMC_CYCLE_XLATE(nm, pos)	\
+	{ .name = nm, .converter = atmel_smc_cs_conf_set_cycle, .shift = pos}
+
+static inline void *devm_kzalloc(struct device *dev, size_t size, gfp_t flags)
+{
+	return kzalloc(size, flags);
+}
+
+static void at91sam9_ebi_get_config(struct atmel_ebi_dev *ebid,
+				    struct atmel_ebi_dev_config *conf)
+{
+	atmel_smc_cs_conf_get(ebid->ebi->smc.regmap, conf->cs,
+			      &conf->smcconf);
+}
+
+static void sama5_ebi_get_config(struct atmel_ebi_dev *ebid,
+				 struct atmel_ebi_dev_config *conf)
+{
+	atmel_hsmc_cs_conf_get(ebid->ebi->smc.regmap, ebid->ebi->smc.layout,
+			       conf->cs, &conf->smcconf);
+}
+
+static const struct atmel_smc_timing_xlate timings_xlate_table[] = {
+	ATMEL_SMC_SETUP_XLATE("atmel,smc-ncs-rd-setup-ns",
+			      ATMEL_SMC_NCS_RD_SHIFT),
+	ATMEL_SMC_SETUP_XLATE("atmel,smc-ncs-wr-setup-ns",
+			      ATMEL_SMC_NCS_WR_SHIFT),
+	ATMEL_SMC_SETUP_XLATE("atmel,smc-nrd-setup-ns", ATMEL_SMC_NRD_SHIFT),
+	ATMEL_SMC_SETUP_XLATE("atmel,smc-nwe-setup-ns", ATMEL_SMC_NWE_SHIFT),
+	ATMEL_SMC_PULSE_XLATE("atmel,smc-ncs-rd-pulse-ns",
+			      ATMEL_SMC_NCS_RD_SHIFT),
+	ATMEL_SMC_PULSE_XLATE("atmel,smc-ncs-wr-pulse-ns",
+			      ATMEL_SMC_NCS_WR_SHIFT),
+	ATMEL_SMC_PULSE_XLATE("atmel,smc-nrd-pulse-ns", ATMEL_SMC_NRD_SHIFT),
+	ATMEL_SMC_PULSE_XLATE("atmel,smc-nwe-pulse-ns", ATMEL_SMC_NWE_SHIFT),
+	ATMEL_SMC_CYCLE_XLATE("atmel,smc-nrd-cycle-ns", ATMEL_SMC_NRD_SHIFT),
+	ATMEL_SMC_CYCLE_XLATE("atmel,smc-nwe-cycle-ns", ATMEL_SMC_NWE_SHIFT),
+};
+
+static int atmel_ebi_xslate_smc_timings(struct atmel_ebi_dev *ebid,
+					struct device_node *np,
+					struct atmel_smc_cs_conf *smcconf)
+{
+	unsigned int clk_rate = clk_get_rate(ebid->ebi->clk);
+	unsigned int clk_period_ns = NSEC_PER_SEC / clk_rate;
+	bool required = false;
+	unsigned int ncycles;
+	int ret, i;
+	u32 val;
+
+	ret = of_property_read_u32(np, "atmel,smc-tdf-ns", &val);
+	if (!ret) {
+		required = true;
+		ncycles = DIV_ROUND_UP(val, clk_period_ns);
+		if (ncycles > ATMEL_SMC_MODE_TDF_MAX) {
+			ret = -EINVAL;
+			goto out;
+		}
+
+		if (ncycles < ATMEL_SMC_MODE_TDF_MIN)
+			ncycles = ATMEL_SMC_MODE_TDF_MIN;
+
+		smcconf->mode |= ATMEL_SMC_MODE_TDF(ncycles);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(timings_xlate_table); i++) {
+		const struct atmel_smc_timing_xlate *xlate;
+
+		xlate = &timings_xlate_table[i];
+
+		ret = of_property_read_u32(np, xlate->name, &val);
+		if (ret) {
+			if (!required)
+				continue;
+			else
+				break;
+		}
+
+		if (!required) {
+			ret = -EINVAL;
+			break;
+		}
+
+		ncycles = DIV_ROUND_UP(val, clk_period_ns);
+		ret = xlate->converter(smcconf, xlate->shift, ncycles);
+		if (ret)
+			goto out;
+	}
+
+out:
+	if (ret) {
+		dev_err(ebid->ebi->dev,
+			"missing or invalid timings definition in %pOF",
+			np);
+		return ret;
+	}
+
+	return required;
+}
+
+static int atmel_ebi_xslate_smc_config(struct atmel_ebi_dev *ebid,
+				       struct device_node *np,
+				       struct atmel_ebi_dev_config *conf)
+{
+	struct atmel_smc_cs_conf *smcconf = &conf->smcconf;
+	bool required = false;
+	const char *tmp_str;
+	u32 tmp;
+	int ret;
+
+	ret = of_property_read_u32(np, "atmel,smc-bus-width", &tmp);
+	if (!ret) {
+		switch (tmp) {
+		case 8:
+			smcconf->mode |= ATMEL_SMC_MODE_DBW_8;
+			break;
+
+		case 16:
+			smcconf->mode |= ATMEL_SMC_MODE_DBW_16;
+			break;
+
+		case 32:
+			smcconf->mode |= ATMEL_SMC_MODE_DBW_32;
+			break;
+
+		default:
+			return -EINVAL;
+		}
+
+		required = true;
+	}
+
+	if (of_property_read_bool(np, "atmel,smc-tdf-optimized")) {
+		smcconf->mode |= ATMEL_SMC_MODE_TDFMODE_OPTIMIZED;
+		required = true;
+	}
+
+	tmp_str = NULL;
+	of_property_read_string(np, "atmel,smc-byte-access-type", &tmp_str);
+	if (tmp_str && !strcmp(tmp_str, "write")) {
+		smcconf->mode |= ATMEL_SMC_MODE_BAT_WRITE;
+		required = true;
+	}
+
+	tmp_str = NULL;
+	of_property_read_string(np, "atmel,smc-read-mode", &tmp_str);
+	if (tmp_str && !strcmp(tmp_str, "nrd")) {
+		smcconf->mode |= ATMEL_SMC_MODE_READMODE_NRD;
+		required = true;
+	}
+
+	tmp_str = NULL;
+	of_property_read_string(np, "atmel,smc-write-mode", &tmp_str);
+	if (tmp_str && !strcmp(tmp_str, "nwe")) {
+		smcconf->mode |= ATMEL_SMC_MODE_WRITEMODE_NWE;
+		required = true;
+	}
+
+	tmp_str = NULL;
+	of_property_read_string(np, "atmel,smc-exnw-mode", &tmp_str);
+	if (tmp_str) {
+		if (!strcmp(tmp_str, "frozen"))
+			smcconf->mode |= ATMEL_SMC_MODE_EXNWMODE_FROZEN;
+		else if (!strcmp(tmp_str, "ready"))
+			smcconf->mode |= ATMEL_SMC_MODE_EXNWMODE_READY;
+		else if (strcmp(tmp_str, "disabled"))
+			return -EINVAL;
+
+		required = true;
+	}
+
+	ret = of_property_read_u32(np, "atmel,smc-page-mode", &tmp);
+	if (!ret) {
+		switch (tmp) {
+		case 4:
+			smcconf->mode |= ATMEL_SMC_MODE_PS_4;
+			break;
+
+		case 8:
+			smcconf->mode |= ATMEL_SMC_MODE_PS_8;
+			break;
+
+		case 16:
+			smcconf->mode |= ATMEL_SMC_MODE_PS_16;
+			break;
+
+		case 32:
+			smcconf->mode |= ATMEL_SMC_MODE_PS_32;
+			break;
+
+		default:
+			return -EINVAL;
+		}
+
+		smcconf->mode |= ATMEL_SMC_MODE_PMEN;
+		required = true;
+	}
+
+	ret = atmel_ebi_xslate_smc_timings(ebid, np, &conf->smcconf);
+	if (ret < 0)
+		return -EINVAL;
+
+	if ((ret > 0 && !required) || (!ret && required)) {
+		dev_err(ebid->ebi->dev, "missing atmel,smc- properties in %pOF",
+			np);
+		return -EINVAL;
+	}
+
+	return required;
+}
+
+static void at91sam9_ebi_apply_config(struct atmel_ebi_dev *ebid,
+				      struct atmel_ebi_dev_config *conf)
+{
+	atmel_smc_cs_conf_apply(ebid->ebi->smc.regmap, conf->cs,
+				&conf->smcconf);
+}
+
+static void sama5_ebi_apply_config(struct atmel_ebi_dev *ebid,
+				   struct atmel_ebi_dev_config *conf)
+{
+	atmel_hsmc_cs_conf_apply(ebid->ebi->smc.regmap, ebid->ebi->smc.layout,
+				 conf->cs, &conf->smcconf);
+}
+
+static int atmel_ebi_dev_setup(struct atmel_ebi *ebi, struct device_node *np,
+			       int reg_cells)
+{
+	const struct atmel_ebi_caps *caps = ebi->caps;
+	struct atmel_ebi_dev_config conf = { };
+	struct device *dev = ebi->dev;
+	struct atmel_ebi_dev *ebid;
+	unsigned long cslines = 0;
+	int ret, numcs = 0, nentries, i;
+	bool apply = false;
+	u32 cs;
+
+	nentries = of_property_count_elems_of_size(np, "reg",
+						   reg_cells * sizeof(u32));
+	for (i = 0; i < nentries; i++) {
+		ret = of_property_read_u32_index(np, "reg", i * reg_cells,
+						 &cs);
+		if (ret)
+			return ret;
+
+		if (cs >= AT91_EBI_NUM_CS ||
+		    !(ebi->caps->available_cs & BIT(cs))) {
+			dev_err(dev, "invalid reg property in %pOF\n", np);
+			return -EINVAL;
+		}
+
+		if (!test_and_set_bit(cs, &cslines))
+			numcs++;
+	}
+
+	if (!numcs) {
+		dev_err(dev, "invalid reg property in %pOF\n", np);
+		return -EINVAL;
+	}
+
+	ebid = devm_kzalloc(ebi->dev, struct_size(ebid, configs, numcs),
+			    GFP_KERNEL);
+	if (!ebid)
+		return -ENOMEM;
+
+	ebid->ebi = ebi;
+	ebid->numcs = numcs;
+
+	ret = caps->xlate_config(ebid, np, &conf);
+	if (ret < 0)
+		return ret;
+	else if (ret)
+		apply = true;
+
+	i = 0;
+	for_each_set_bit(cs, &cslines, AT91_EBI_NUM_CS) {
+		ebid->configs[i].cs = cs;
+
+		if (apply) {
+			conf.cs = cs;
+			caps->apply_config(ebid, &conf);
+		}
+
+		caps->get_config(ebid, &ebid->configs[i]);
+
+		/*
+		 * Attach the EBI device to the generic SMC logic if at least
+		 * one "atmel,smc-" property is present.
+		 */
+		if (ebi->caps->ebi_csa_offs && apply)
+			regmap_update_bits(ebi->regmap,
+					   ebi->caps->ebi_csa_offs,
+					   BIT(cs), 0);
+
+		i++;
+	}
+
+	list_add_tail(&ebid->node, &ebi->devs);
+
+	return 0;
+}
+
+static const struct atmel_ebi_caps at91sam9260_ebi_caps = {
+	.available_cs = 0xff,
+	.ebi_csa_offs = AT91SAM9260_MATRIX_EBICSA,
+	.regmap_name = "atmel,matrix",
+	.get_config = at91sam9_ebi_get_config,
+	.xlate_config = atmel_ebi_xslate_smc_config,
+	.apply_config = at91sam9_ebi_apply_config,
+};
+
+static const struct atmel_ebi_caps at91sam9261_ebi_caps = {
+	.available_cs = 0xff,
+	.ebi_csa_offs = AT91SAM9261_MATRIX_EBICSA,
+	.regmap_name = "atmel,matrix",
+	.get_config = at91sam9_ebi_get_config,
+	.xlate_config = atmel_ebi_xslate_smc_config,
+	.apply_config = at91sam9_ebi_apply_config,
+};
+
+static const struct atmel_ebi_caps at91sam9263_ebi0_caps = {
+	.available_cs = 0x3f,
+	.ebi_csa_offs = AT91SAM9263_MATRIX_EBI0CSA,
+	.regmap_name = "atmel,matrix",
+	.get_config = at91sam9_ebi_get_config,
+	.xlate_config = atmel_ebi_xslate_smc_config,
+	.apply_config = at91sam9_ebi_apply_config,
+};
+
+static const struct atmel_ebi_caps at91sam9263_ebi1_caps = {
+	.available_cs = 0x7,
+	.ebi_csa_offs = AT91SAM9263_MATRIX_EBI1CSA,
+	.regmap_name = "atmel,matrix",
+	.get_config = at91sam9_ebi_get_config,
+	.xlate_config = atmel_ebi_xslate_smc_config,
+	.apply_config = at91sam9_ebi_apply_config,
+};
+
+static const struct atmel_ebi_caps at91sam9rl_ebi_caps = {
+	.available_cs = 0x3f,
+	.ebi_csa_offs = AT91SAM9RL_MATRIX_EBICSA,
+	.regmap_name = "atmel,matrix",
+	.get_config = at91sam9_ebi_get_config,
+	.xlate_config = atmel_ebi_xslate_smc_config,
+	.apply_config = at91sam9_ebi_apply_config,
+};
+
+static const struct atmel_ebi_caps at91sam9g45_ebi_caps = {
+	.available_cs = 0x3f,
+	.ebi_csa_offs = AT91SAM9G45_MATRIX_EBICSA,
+	.regmap_name = "atmel,matrix",
+	.get_config = at91sam9_ebi_get_config,
+	.xlate_config = atmel_ebi_xslate_smc_config,
+	.apply_config = at91sam9_ebi_apply_config,
+};
+
+static const struct atmel_ebi_caps at91sam9x5_ebi_caps = {
+	.available_cs = 0x3f,
+	.ebi_csa_offs = AT91SAM9X5_MATRIX_EBICSA,
+	.regmap_name = "atmel,matrix",
+	.get_config = at91sam9_ebi_get_config,
+	.xlate_config = atmel_ebi_xslate_smc_config,
+	.apply_config = at91sam9_ebi_apply_config,
+};
+
+static const struct atmel_ebi_caps sama5d3_ebi_caps = {
+	.available_cs = 0xf,
+	.get_config = sama5_ebi_get_config,
+	.xlate_config = atmel_ebi_xslate_smc_config,
+	.apply_config = sama5_ebi_apply_config,
+};
+
+static const struct atmel_ebi_caps sam9x60_ebi_caps = {
+	.available_cs = 0x3f,
+	.ebi_csa_offs = AT91_SFR_CCFG_EBICSA,
+	.regmap_name = "microchip,sfr",
+	.get_config = at91sam9_ebi_get_config,
+	.xlate_config = atmel_ebi_xslate_smc_config,
+	.apply_config = at91sam9_ebi_apply_config,
+};
+
+static const struct of_device_id atmel_ebi_id_table[] = {
+	{
+		.compatible = "atmel,at91sam9260-ebi",
+		.data = &at91sam9260_ebi_caps,
+	},
+	{
+		.compatible = "atmel,at91sam9261-ebi",
+		.data = &at91sam9261_ebi_caps,
+	},
+	{
+		.compatible = "atmel,at91sam9263-ebi0",
+		.data = &at91sam9263_ebi0_caps,
+	},
+	{
+		.compatible = "atmel,at91sam9263-ebi1",
+		.data = &at91sam9263_ebi1_caps,
+	},
+	{
+		.compatible = "atmel,at91sam9rl-ebi",
+		.data = &at91sam9rl_ebi_caps,
+	},
+	{
+		.compatible = "atmel,at91sam9g45-ebi",
+		.data = &at91sam9g45_ebi_caps,
+	},
+	{
+		.compatible = "atmel,at91sam9x5-ebi",
+		.data = &at91sam9x5_ebi_caps,
+	},
+	{
+		.compatible = "atmel,sama5d3-ebi",
+		.data = &sama5d3_ebi_caps,
+	},
+	{
+		.compatible = "microchip,sam9x60-ebi",
+		.data = &sam9x60_ebi_caps,
+	},
+	{ /* sentinel */ }
+};
+
+static int atmel_ebi_probe(struct device *dev)
+{
+	struct device_node *child, *np = dev->of_node, *smc_np;
+	const struct of_device_id *match;
+	struct atmel_ebi *ebi;
+	int ret, reg_cells;
+	struct clk *clk;
+	u32 val;
+
+	match = of_match_device(atmel_ebi_id_table, dev);
+	if (!match || !match->data)
+		return -EINVAL;
+
+	ebi = devm_kzalloc(dev, sizeof(*ebi), GFP_KERNEL);
+	if (!ebi)
+		return -ENOMEM;
+
+	dev->priv = ebi;
+
+	INIT_LIST_HEAD(&ebi->devs);
+	ebi->caps = match->data;
+	ebi->dev = dev;
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	ebi->clk = clk;
+
+	smc_np = of_parse_phandle(dev->of_node, "atmel,smc", 0);
+
+	ebi->smc.regmap = syscon_node_to_regmap(smc_np);
+	if (IS_ERR(ebi->smc.regmap)) {
+		ret = PTR_ERR(ebi->smc.regmap);
+		goto put_node;
+	}
+
+	ebi->smc.layout = atmel_hsmc_get_reg_layout(smc_np);
+	if (IS_ERR(ebi->smc.layout)) {
+		ret = PTR_ERR(ebi->smc.layout);
+		goto put_node;
+	}
+
+	ebi->smc.clk = of_clk_get(smc_np, 0);
+	if (IS_ERR(ebi->smc.clk)) {
+		if (PTR_ERR(ebi->smc.clk) != -ENOENT) {
+			ret = PTR_ERR(ebi->smc.clk);
+			goto put_node;
+		}
+
+		ebi->smc.clk = NULL;
+	}
+	of_node_put(smc_np);
+	ret = clk_prepare_enable(ebi->smc.clk);
+	if (ret)
+		return ret;
+
+	/*
+	 * The sama5d3 does not provide an EBICSA register and thus does need
+	 * to access it.
+	 */
+	if (ebi->caps->ebi_csa_offs) {
+		ebi->regmap =
+			syscon_regmap_lookup_by_phandle(np,
+							ebi->caps->regmap_name);
+		if (IS_ERR(ebi->regmap))
+			return PTR_ERR(ebi->regmap);
+	}
+
+	ret = of_property_read_u32(np, "#address-cells", &val);
+	if (ret) {
+		dev_err(dev, "missing #address-cells property\n");
+		return ret;
+	}
+
+	reg_cells = val;
+
+	ret = of_property_read_u32(np, "#size-cells", &val);
+	if (ret) {
+		dev_err(dev, "missing #address-cells property\n");
+		return ret;
+	}
+
+	reg_cells += val;
+
+	for_each_available_child_of_node(np, child) {
+		if (!of_find_property(child, "reg", NULL))
+			continue;
+
+		ret = atmel_ebi_dev_setup(ebi, child, reg_cells);
+		if (ret) {
+			dev_err(dev, "failed to configure EBI bus for %pOF, disabling the device",
+				child);
+
+			ret = of_device_disable(child);
+			if (ret) {
+				of_node_put(child);
+				return ret;
+			}
+		}
+	}
+
+	return of_platform_populate(np, NULL, dev);
+
+put_node:
+	of_node_put(smc_np);
+	return ret;
+}
+
+static struct driver atmel_ebi_driver = {
+	.name = "atmel-ebi",
+	.of_match_table	= atmel_ebi_id_table,
+	.probe = atmel_ebi_probe,
+};
+coredevice_platform_driver(atmel_ebi_driver);
diff --git a/include/linux/mfd/syscon/atmel-matrix.h b/include/linux/mfd/syscon/atmel-matrix.h
new file mode 100644
index 000000000000..20c25665216a
--- /dev/null
+++ b/include/linux/mfd/syscon/atmel-matrix.h
@@ -0,0 +1,112 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ *  Copyright (C) 2014 Atmel Corporation.
+ *
+ * Memory Controllers (MATRIX, EBI) - System peripherals registers.
+ */
+
+#ifndef _LINUX_MFD_SYSCON_ATMEL_MATRIX_H
+#define _LINUX_MFD_SYSCON_ATMEL_MATRIX_H
+
+#define AT91SAM9260_MATRIX_MCFG			0x00
+#define AT91SAM9260_MATRIX_SCFG			0x40
+#define AT91SAM9260_MATRIX_PRS			0x80
+#define AT91SAM9260_MATRIX_MRCR			0x100
+#define AT91SAM9260_MATRIX_EBICSA		0x11c
+
+#define AT91SAM9261_MATRIX_MRCR			0x0
+#define AT91SAM9261_MATRIX_SCFG			0x4
+#define AT91SAM9261_MATRIX_TCR			0x24
+#define AT91SAM9261_MATRIX_EBICSA		0x30
+#define AT91SAM9261_MATRIX_USBPUCR		0x34
+
+#define AT91SAM9263_MATRIX_MCFG			0x00
+#define AT91SAM9263_MATRIX_SCFG			0x40
+#define AT91SAM9263_MATRIX_PRS			0x80
+#define AT91SAM9263_MATRIX_MRCR			0x100
+#define AT91SAM9263_MATRIX_TCR			0x114
+#define AT91SAM9263_MATRIX_EBI0CSA		0x120
+#define AT91SAM9263_MATRIX_EBI1CSA		0x124
+
+#define AT91SAM9RL_MATRIX_MCFG			0x00
+#define AT91SAM9RL_MATRIX_SCFG			0x40
+#define AT91SAM9RL_MATRIX_PRS			0x80
+#define AT91SAM9RL_MATRIX_MRCR			0x100
+#define AT91SAM9RL_MATRIX_TCR			0x114
+#define AT91SAM9RL_MATRIX_EBICSA		0x120
+
+#define AT91SAM9G45_MATRIX_MCFG			0x00
+#define AT91SAM9G45_MATRIX_SCFG			0x40
+#define AT91SAM9G45_MATRIX_PRS			0x80
+#define AT91SAM9G45_MATRIX_MRCR			0x100
+#define AT91SAM9G45_MATRIX_TCR			0x110
+#define AT91SAM9G45_MATRIX_DDRMPR		0x118
+#define AT91SAM9G45_MATRIX_EBICSA		0x128
+
+#define AT91SAM9N12_MATRIX_MCFG			0x00
+#define AT91SAM9N12_MATRIX_SCFG			0x40
+#define AT91SAM9N12_MATRIX_PRS			0x80
+#define AT91SAM9N12_MATRIX_MRCR			0x100
+#define AT91SAM9N12_MATRIX_EBICSA		0x118
+
+#define AT91SAM9X5_MATRIX_MCFG			0x00
+#define AT91SAM9X5_MATRIX_SCFG			0x40
+#define AT91SAM9X5_MATRIX_PRS			0x80
+#define AT91SAM9X5_MATRIX_MRCR			0x100
+#define AT91SAM9X5_MATRIX_EBICSA		0x120
+
+#define SAMA5D3_MATRIX_MCFG			0x00
+#define SAMA5D3_MATRIX_SCFG			0x40
+#define SAMA5D3_MATRIX_PRS			0x80
+#define SAMA5D3_MATRIX_MRCR			0x100
+
+#define AT91_MATRIX_MCFG(o, x)			((o) + ((x) * 0x4))
+#define AT91_MATRIX_ULBT			GENMASK(2, 0)
+#define AT91_MATRIX_ULBT_INFINITE		(0 << 0)
+#define AT91_MATRIX_ULBT_SINGLE			(1 << 0)
+#define AT91_MATRIX_ULBT_FOUR			(2 << 0)
+#define AT91_MATRIX_ULBT_EIGHT			(3 << 0)
+#define AT91_MATRIX_ULBT_SIXTEEN		(4 << 0)
+
+#define AT91_MATRIX_SCFG(o, x)			((o) + ((x) * 0x4))
+#define AT91_MATRIX_SLOT_CYCLE			GENMASK(7,  0)
+#define AT91_MATRIX_DEFMSTR_TYPE		GENMASK(17, 16)
+#define AT91_MATRIX_DEFMSTR_TYPE_NONE		(0 << 16)
+#define AT91_MATRIX_DEFMSTR_TYPE_LAST		(1 << 16)
+#define AT91_MATRIX_DEFMSTR_TYPE_FIXED		(2 << 16)
+#define AT91_MATRIX_FIXED_DEFMSTR		GENMASK(20, 18)
+#define AT91_MATRIX_ARBT			GENMASK(25, 24)
+#define AT91_MATRIX_ARBT_ROUND_ROBIN		(0 << 24)
+#define AT91_MATRIX_ARBT_FIXED_PRIORITY		(1 << 24)
+
+#define AT91_MATRIX_ITCM_SIZE			GENMASK(3, 0)
+#define AT91_MATRIX_ITCM_0			(0 << 0)
+#define AT91_MATRIX_ITCM_16			(5 << 0)
+#define AT91_MATRIX_ITCM_32			(6 << 0)
+#define AT91_MATRIX_ITCM_64			(7 << 0)
+#define	AT91_MATRIX_DTCM_SIZE			GENMASK(7, 4)
+#define	AT91_MATRIX_DTCM_0			(0 << 4)
+#define	AT91_MATRIX_DTCM_16			(5 << 4)
+#define AT91_MATRIX_DTCM_32			(6 << 4)
+#define AT91_MATRIX_DTCM_64			(7 << 4)
+
+#define AT91_MATRIX_PRAS(o, x)			((o) + ((x) * 0x8))
+#define AT91_MATRIX_PRBS(o, x)			((o) + ((x) * 0x8) + 0x4)
+#define AT91_MATRIX_MPR(x)			GENMASK(((x) * 0x4) + 1, ((x) * 0x4))
+
+#define AT91_MATRIX_RCB(x)			BIT(x)
+
+#define AT91_MATRIX_CSA(cs, val)		(val << (cs))
+#define AT91_MATRIX_DBPUC			BIT(8)
+#define AT91_MATRIX_DBPDC			BIT(9)
+#define AT91_MATRIX_VDDIOMSEL			BIT(16)
+#define AT91_MATRIX_VDDIOMSEL_1_8V		(0 << 16)
+#define AT91_MATRIX_VDDIOMSEL_3_3V		(1 << 16)
+#define AT91_MATRIX_EBI_IOSR			BIT(17)
+#define AT91_MATRIX_DDR_IOSR			BIT(18)
+#define AT91_MATRIX_NFD0_SELECT			BIT(24)
+#define AT91_MATRIX_DDR_MP_EN			BIT(25)
+
+#define AT91_MATRIX_USBPUCR_PUON		BIT(30)
+
+#endif /* _LINUX_MFD_SYSCON_ATMEL_MATRIX_H */
diff --git a/include/soc/at91/atmel-sfr.h b/include/soc/at91/atmel-sfr.h
index 7418c5cab4a1..8e75508165b7 100644
--- a/include/soc/at91/atmel-sfr.h
+++ b/include/soc/at91/atmel-sfr.h
@@ -11,6 +11,7 @@
 #define _LINUX_MFD_SYSCON_ATMEL_SFR_H
 
 #define AT91_SFR_DDRCFG		0x04	/* DDR Configuration Register */
+#define AT91_SFR_CCFG_EBICSA	0x04	/* EBI Chip Select Register */
 /* 0x08 ~ 0x0c: Reserved */
 #define AT91_SFR_OHCIICR	0x10	/* OHCI INT Configuration Register */
 #define AT91_SFR_OHCIISR	0x14	/* OHCI INT Status Register */
-- 
2.30.2



