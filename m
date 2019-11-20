Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXLSo-0006kq-Ka
 for barebox@lists.infradead.org; Wed, 20 Nov 2019 08:35:52 +0000
Received: from geraet.fritz.box (i577B6BFD.versanet.de [87.123.107.253])
 (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 04DE52000E
 for <barebox@lists.infradead.org>; Wed, 20 Nov 2019 08:35:45 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 20 Nov 2019 09:35:37 +0100
Message-Id: <20191120083537.2548-2-ahmad@a3f.at>
In-Reply-To: <20191120083537.2548-1-ahmad@a3f.at>
References: <20191120083537.2548-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] remoteproc: add support for starting st,stm32mp1-m4
To: barebox@lists.infradead.org

The STM32MP157C-DK2 has a Cortex-M4 MCU in addition to the two Cortex-A7
MPUs. This remoteproc driver allows barebox running on a Cortex-A7 core
to bootstrap the MCU with an ELF binary.

Code ported from Linux v5.3 with rpmsg bits removed.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/remoteproc/Kconfig       |  10 ++
 drivers/remoteproc/Makefile      |   1 +
 drivers/remoteproc/stm32_rproc.c | 199 +++++++++++++++++++++++++++++++
 3 files changed, 210 insertions(+)
 create mode 100644 drivers/remoteproc/stm32_rproc.c

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index 8139b6442cc8..a193fadb69a9 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -21,6 +21,16 @@ config IMX_REMOTEPROC
 
 	  It's safe to say N here.
 
+config STM32_REMOTEPROC
+	tristate "STM32 remoteproc support"
+	depends on ARCH_STM32MP
+	select MFD_SYSCON
+	help
+	  Say y here to support STM32 MCU processors via the
+	  remote processor framework.
+
+	  It's safe to say N here.
+
 endif # REMOTEPROC
 
 endmenu
diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
index 107296922998..43658df5c6ac 100644
--- a/drivers/remoteproc/Makefile
+++ b/drivers/remoteproc/Makefile
@@ -5,3 +5,4 @@
 
 obj-$(CONFIG_REMOTEPROC)		+= remoteproc_core.o remoteproc_elf_loader.o
 obj-$(CONFIG_IMX_REMOTEPROC)		+= imx_rproc.o
+obj-$(CONFIG_STM32_REMOTEPROC)		+= stm32_rproc.o
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
new file mode 100644
index 000000000000..bfd4d5976850
--- /dev/null
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -0,0 +1,199 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2018 - All Rights Reserved
+ * Authors: Ludovic Barre <ludovic.barre@st.com> for STMicroelectronics.
+ *          Fabien Dessenne <fabien.dessenne@st.com> for STMicroelectronics.
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <mach/smc.h>
+#include <mfd/syscon.h>
+#include <of_address.h>
+#include <regmap.h>
+#include <linux/remoteproc.h>
+#include <linux/reset.h>
+
+#include "remoteproc_internal.h"
+
+#define HOLD_BOOT		0
+#define RELEASE_BOOT		1
+
+struct stm32_syscon {
+	struct regmap *map;
+	u32 reg;
+	u32 mask;
+};
+
+struct stm32_rproc {
+	struct reset_control *rst;
+	struct stm32_syscon hold_boot;
+	bool secured_soc;
+};
+
+static void *stm32_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
+{
+	__be32 in_addr = cpu_to_be32(da);
+	struct device_d *dev = &rproc->dev;
+	u64 paddr;
+
+	paddr = of_translate_dma_address(dev->parent->device_node, &in_addr);
+	if (paddr == OF_BAD_ADDR)
+		return NULL;
+
+	return phys_to_virt(paddr);
+}
+
+static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
+{
+	struct stm32_rproc *ddata = rproc->priv;
+	struct stm32_syscon *hold_boot = &ddata->hold_boot;
+	struct arm_smccc_res smc_res;
+	int val, err;
+
+	val = hold ? HOLD_BOOT : RELEASE_BOOT;
+
+	if (IS_ENABLED(CONFIG_ARM_SMCC) && ddata->secured_soc) {
+		arm_smccc_smc(STM32_SMC_RCC, STM32_SMC_REG_WRITE,
+			      hold_boot->reg, val, 0, 0, 0, 0, &smc_res);
+		err = smc_res.a0;
+	} else {
+		err = regmap_update_bits(hold_boot->map, hold_boot->reg,
+					 hold_boot->mask, val);
+	}
+
+	if (err)
+		dev_err(&rproc->dev, "failed to set hold boot\n");
+
+	return err;
+}
+
+static int stm32_rproc_start(struct rproc *rproc)
+{
+	int err;
+
+	err = stm32_rproc_set_hold_boot(rproc, false);
+	if (err)
+		return err;
+
+	return stm32_rproc_set_hold_boot(rproc, true);
+}
+
+static int stm32_rproc_stop(struct rproc *rproc)
+{
+	struct stm32_rproc *ddata = rproc->priv;
+	int err;
+
+	err = stm32_rproc_set_hold_boot(rproc, true);
+	if (err)
+		return err;
+
+	err = reset_control_assert(ddata->rst);
+	if (err) {
+		dev_err(&rproc->dev, "failed to assert the reset\n");
+		return err;
+	}
+
+	return 0;
+}
+
+static struct rproc_ops st_rproc_ops = {
+	.start		= stm32_rproc_start,
+	.stop		= stm32_rproc_stop,
+	.da_to_va	= stm32_rproc_da_to_va,
+};
+
+static int stm32_rproc_get_syscon(struct device_node *np, const char *prop,
+				  struct stm32_syscon *syscon)
+{
+	int err = 0;
+
+	syscon->map = syscon_regmap_lookup_by_phandle(np, prop);
+	if (IS_ERR(syscon->map)) {
+		err = PTR_ERR(syscon->map);
+		syscon->map = NULL;
+		goto out;
+	}
+
+	err = of_property_read_u32_index(np, prop, 1, &syscon->reg);
+	if (err)
+		goto out;
+
+	err = of_property_read_u32_index(np, prop, 2, &syscon->mask);
+
+out:
+	return err;
+}
+
+static int stm32_rproc_parse_dt(struct device_d *dev, struct stm32_rproc *ddata)
+{
+	struct device_node *np = dev->device_node;
+	struct stm32_syscon tz;
+	unsigned int tzen;
+	int err;
+
+	ddata->rst = reset_control_get(dev, NULL);
+	if (IS_ERR(ddata->rst)) {
+		dev_err(dev, "failed to get mcu reset\n");
+		return PTR_ERR(ddata->rst);
+	}
+
+	/*
+	 * if platform is secured the hold boot bit must be written by
+	 * smc call and read normally.
+	 * if not secure the hold boot bit could be read/write normally
+	 */
+	err = stm32_rproc_get_syscon(np, "st,syscfg-tz", &tz);
+	if (err) {
+		dev_err(dev, "failed to get tz syscfg\n");
+		return err;
+	}
+
+	err = regmap_read(tz.map, tz.reg, &tzen);
+	if (err) {
+		dev_err(dev, "failed to read tzen\n");
+		return err;
+	}
+	ddata->secured_soc = tzen & tz.mask;
+
+	err = stm32_rproc_get_syscon(np, "st,syscfg-holdboot",
+				     &ddata->hold_boot);
+	if (err) {
+		dev_err(dev, "failed to get hold boot\n");
+		return err;
+	}
+
+	return 0;
+}
+
+static int stm32_rproc_probe(struct device_d *dev)
+{
+	struct rproc *rproc;
+	int ret;
+
+	rproc = rproc_alloc(dev, dev_name(dev), &st_rproc_ops,
+			    sizeof(struct stm32_rproc));
+	if (!rproc)
+		return -ENOMEM;
+
+	ret = stm32_rproc_parse_dt(dev, rproc->priv);
+	if (ret)
+		return ret;
+
+	return rproc_add(rproc);
+}
+
+static const struct of_device_id stm32_rproc_of_match[] = {
+	{ .compatible = "st,stm32mp1-m4" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d stm32_rproc_driver = {
+	.name = "stm32-rproc",
+	.probe = stm32_rproc_probe,
+	.of_compatible = DRV_OF_COMPAT(stm32_rproc_of_match),
+};
+device_platform_driver(stm32_rproc_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
