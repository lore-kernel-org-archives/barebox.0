Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOro4-0005hT-Ge
 for barebox@lists.infradead.org; Sun, 27 Oct 2019 23:18:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Oct 2019 00:18:30 +0100
Message-Id: <20191027231832.10247-6-a.fatoum@pengutronix.de>
In-Reply-To: <20191027231832.10247-1-a.fatoum@pengutronix.de>
References: <20191027231832.10247-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 6/8] nvmem: add read support for STM32MP1 bsec OTP
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The bsec on the STM32MP157C provides a 380 byte OTP. Add initial support
for reading and writing the shadow copy of the fuses. Direct fuse
access is not yet supported.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp157c.dtsi             |   4 +
 arch/arm/mach-stm32mp/include/mach/bsec.h |  41 ++++
 arch/arm/mach-stm32mp/include/mach/smc.h  |  28 +++
 drivers/nvmem/Kconfig                     |   8 +
 drivers/nvmem/Makefile                    |   5 +-
 drivers/nvmem/bsec.c                      | 221 ++++++++++++++++++++++
 6 files changed, 306 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-stm32mp/include/mach/bsec.h
 create mode 100644 arch/arm/mach-stm32mp/include/mach/smc.h
 create mode 100644 drivers/nvmem/bsec.c

diff --git a/arch/arm/dts/stm32mp157c.dtsi b/arch/arm/dts/stm32mp157c.dtsi
index 8d9c84a04785..771139c28af0 100644
--- a/arch/arm/dts/stm32mp157c.dtsi
+++ b/arch/arm/dts/stm32mp157c.dtsi
@@ -20,3 +20,7 @@
 		gpio25 = &gpioz;
 	};
 };
+
+&bsec {
+	barebox,provide-mac-address = <&ethernet0 0x39>;
+};
diff --git a/arch/arm/mach-stm32mp/include/mach/bsec.h b/arch/arm/mach-stm32mp/include/mach/bsec.h
new file mode 100644
index 000000000000..559faaa2bac3
--- /dev/null
+++ b/arch/arm/mach-stm32mp/include/mach/bsec.h
@@ -0,0 +1,41 @@
+#ifndef __MACH_STM32_BSEC_H__
+#define __MACH_STM32_BSEC_H__
+
+#include <mach/smc.h>
+
+/* Return status */
+enum bsec_smc {
+	BSEC_SMC_OK		= 0,
+	BSEC_SMC_ERROR		= -1,
+	BSEC_SMC_DISTURBED	= -2,
+	BSEC_SMC_INVALID_PARAM	= -3,
+	BSEC_SMC_PROG_FAIL	= -4,
+	BSEC_SMC_LOCK_FAIL	= -5,
+	BSEC_SMC_WRITE_FAIL	= -6,
+	BSEC_SMC_SHADOW_FAIL	= -7,
+	BSEC_SMC_TIMEOUT	= -8,
+};
+
+/* Service for BSEC */
+enum bsec_field {
+	BSEC_SMC_READ_SHADOW	= 1,
+	BSEC_SMC_PROG_OTP	= 2,
+	BSEC_SMC_WRITE_SHADOW	= 3,
+	BSEC_SMC_READ_OTP	= 4,
+	BSEC_SMC_READ_ALL	= 5,
+	BSEC_SMC_WRITE_ALL	= 6,
+};
+
+static inline enum bsec_smc bsec_read_field(enum bsec_field field, unsigned *val)
+{
+	return stm32mp_smc(STM32_SMC_BSEC, BSEC_SMC_READ_SHADOW,
+			   field, 0, val);
+}
+
+static inline enum bsec_smc bsec_write_field(enum bsec_field field, unsigned val)
+{
+	return stm32mp_smc(STM32_SMC_BSEC, BSEC_SMC_WRITE_SHADOW,
+			   field, val, NULL);
+}
+
+#endif
diff --git a/arch/arm/mach-stm32mp/include/mach/smc.h b/arch/arm/mach-stm32mp/include/mach/smc.h
new file mode 100644
index 000000000000..6b8e62bd5302
--- /dev/null
+++ b/arch/arm/mach-stm32mp/include/mach/smc.h
@@ -0,0 +1,28 @@
+#ifndef __MACH_STM32_SMC_H__
+#define __MACH_STM32_SMC_H__
+
+#include <linux/arm-smccc.h>
+
+/* Secure Service access from Non-secure */
+#define STM32_SMC_RCC                   0x82001000
+#define STM32_SMC_PWR                   0x82001001
+#define STM32_SMC_RTC                   0x82001002
+#define STM32_SMC_BSEC                  0x82001003
+
+/* Register access service use for RCC/RTC/PWR */
+#define STM32_SMC_REG_WRITE             0x1
+#define STM32_SMC_REG_SET               0x2
+#define STM32_SMC_REG_CLEAR             0x3
+
+static inline int stm32mp_smc(u32 svc, u8 op, u32 data1, u32 data2, u32 *val)
+{
+        struct arm_smccc_res res;
+
+        arm_smccc_smc(svc, op, data1, data2, 0, 0, 0, 0, &res);
+        if (val)
+                *val = res.a1;
+
+        return (int)res.a0;
+}
+
+#endif
diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index c28a6d4e43c8..968342b281ad 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -51,4 +51,12 @@ config EEPROM_93XX46
 	  supports both read and write commands and also the command to
 	  erase the whole EEPROM.
 
+config STM32_BSEC
+	tristate "STM32 Boot and security and OTP control"
+	depends on ARCH_STM32MP
+	depends on OFDEVICE
+	help
+	  This adds support for the STM32 OTP controller. Reads and writes
+	  to will go to the shadow RAM, not the OTP fuses themselvers.
+
 endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index abf9dae429e2..7101c5aca44c 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -16,4 +16,7 @@ obj-$(CONFIG_RAVE_SP_EEPROM)	+= nvmem-rave-sp-eeprom.o
 nvmem-rave-sp-eeprom-y		:= rave-sp-eeprom.o
 
 obj-$(CONFIG_EEPROM_93XX46)	+= nvmem_eeprom_93xx46.o
-nvmem_eeprom_93xx46-y		:= eeprom_93xx46.o
\ No newline at end of file
+nvmem_eeprom_93xx46-y		:= eeprom_93xx46.o
+
+obj-$(CONFIG_STM32_BSEC)	+= nvmem_bsec.o
+nvmem_bsec-y			:= bsec.o
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
new file mode 100644
index 000000000000..8235d468d16d
--- /dev/null
+++ b/drivers/nvmem/bsec.c
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ * Copyright (c) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <init.h>
+#include <net.h>
+#include <io.h>
+#include <of.h>
+#include <regmap.h>
+#include <mach/bsec.h>
+#include <machine_id.h>
+#include <linux/nvmem-provider.h>
+
+#define BSEC_OTP_SERIAL	13
+
+struct bsec_priv {
+	struct regmap *map;
+	u32 svc_id;
+	struct device_d dev;
+	struct regmap_config map_config;
+	struct nvmem_config config;
+};
+
+struct stm32_bsec_data {
+	unsigned long svc_id;
+	int num_regs;
+};
+
+static int bsec_smc(struct bsec_priv *priv, u8 op, enum bsec_field field,
+		    unsigned data2, unsigned *val)
+{
+	enum bsec_smc ret = stm32mp_smc(priv->svc_id, op, field / 4, data2, val);
+	switch(ret)
+	{
+	case BSEC_SMC_OK:
+		return 0;
+	case BSEC_SMC_ERROR:
+	case BSEC_SMC_DISTURBED:
+	case BSEC_SMC_PROG_FAIL:
+	case BSEC_SMC_LOCK_FAIL:
+	case BSEC_SMC_WRITE_FAIL:
+	case BSEC_SMC_SHADOW_FAIL:
+		return -EIO;
+	case BSEC_SMC_INVALID_PARAM:
+		return -EINVAL;
+	case BSEC_SMC_TIMEOUT:
+		return -ETIMEDOUT;
+	}
+
+	return -ENXIO;
+}
+
+static int st32_bsec_read_shadow(void *ctx, unsigned reg, unsigned *val)
+{
+	return bsec_smc(ctx, BSEC_SMC_READ_SHADOW, reg, 0, val);
+}
+
+static int stm32_bsec_reg_write_shadow(void *ctx, unsigned reg, unsigned val)
+{
+	return bsec_smc(ctx, BSEC_SMC_WRITE_SHADOW, reg, val, NULL);
+}
+
+static struct regmap_bus stm32_bsec_regmap_bus = {
+	.reg_write = stm32_bsec_reg_write_shadow,
+	.reg_read = st32_bsec_read_shadow,
+};
+
+static int stm32_bsec_write(struct device_d *dev, int offset,
+			    const void *val, int bytes)
+{
+	struct bsec_priv *priv = dev->parent->priv;
+
+	return regmap_bulk_write(priv->map, offset, val, bytes);
+}
+
+static int stm32_bsec_read(struct device_d *dev, int offset,
+			   void *val, int bytes)
+{
+	struct bsec_priv *priv = dev->parent->priv;
+
+	return regmap_bulk_read(priv->map, offset, val, bytes);
+}
+
+static const struct nvmem_bus stm32_bsec_nvmem_bus = {
+	.write = stm32_bsec_write,
+	.read  = stm32_bsec_read,
+};
+
+static void stm32_bsec_set_unique_machine_id(struct regmap *map)
+{
+	u32 unique_id[3];
+	int ret;
+
+	ret = regmap_bulk_read(map, BSEC_OTP_SERIAL * 4,
+			       unique_id, sizeof(unique_id));
+	if (ret)
+		return;
+
+	machine_id_set_hashable(unique_id, sizeof(unique_id));
+}
+
+static int stm32_bsec_read_mac(struct regmap *map, int offset, u8 *mac)
+{
+	u8 res[8];
+	int ret;
+
+	ret = regmap_bulk_read(map, offset * 4, res, 8);
+	if (ret)
+		return ret;
+
+	memcpy(mac, res, ETH_ALEN);
+	return 0;
+}
+
+static void stm32_bsec_init_dt(struct bsec_priv *priv)
+{
+	struct device_node *node = priv->dev.parent->device_node;
+	struct device_node *rnode;
+	u32 phandle, offset;
+	char mac[ETH_ALEN];
+	const __be32 *prop;
+
+	int len;
+	int ret;
+
+	if (!node)
+		return;
+
+	prop = of_get_property(node, "barebox,provide-mac-address", &len);
+	if (!prop)
+		return;
+
+	if (len != 2 * sizeof(__be32))
+		return;
+
+	phandle = be32_to_cpup(prop++);
+
+	rnode = of_find_node_by_phandle(phandle);
+	offset = be32_to_cpup(prop++);
+
+	ret = stm32_bsec_read_mac(priv->map, offset, mac);
+	if (ret) {
+		dev_warn(&priv->dev, "error setting MAC address: %s\n",
+			 strerror(-ret));
+		return;
+	}
+
+	of_eth_register_ethaddr(rnode, mac);
+}
+
+static int stm32_bsec_probe(struct device_d *dev)
+{
+	struct bsec_priv *priv;
+	int ret = 0;
+	const struct stm32_bsec_data *data;
+	struct nvmem_device *nvmem;
+
+	ret = dev_get_drvdata(dev, (const void **)&data);
+	if (ret)
+		return ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->svc_id = data->svc_id;
+
+	dev_set_name(&priv->dev, "bsec");
+	priv->dev.parent = dev;
+	register_device(&priv->dev);
+
+	priv->map_config.reg_bits = 32;
+	priv->map_config.val_bits = 32;
+	priv->map_config.reg_stride = 4;
+	priv->map_config.max_register = data->num_regs;
+
+	priv->map = regmap_init(dev, &stm32_bsec_regmap_bus, priv, &priv->map_config);
+	if (IS_ERR(priv->map))
+		return PTR_ERR(priv->map);
+
+	priv->config.name = "stm32-bsec";
+	priv->config.dev = dev;
+	priv->config.stride = 4;
+	priv->config.word_size = 4;
+	priv->config.size = data->num_regs;
+	priv->config.bus = &stm32_bsec_nvmem_bus;
+	dev->priv = priv;
+
+	nvmem = nvmem_register(&priv->config);
+	if (IS_ERR(nvmem))
+		return PTR_ERR(nvmem);
+
+	if (IS_ENABLED(CONFIG_MACHINE_ID))
+		stm32_bsec_set_unique_machine_id(priv->map);
+
+	stm32_bsec_init_dt(priv);
+
+	return 0;
+}
+
+static struct stm32_bsec_data stm32mp15_bsec_data = {
+	.num_regs = 95 * 4,
+	.svc_id = STM32_SMC_BSEC,
+};
+
+static __maybe_unused struct of_device_id stm32_bsec_dt_ids[] = {
+	{ .compatible = "st,stm32mp15-bsec", .data = &stm32mp15_bsec_data },
+	{ /* sentinel */ }
+};
+
+static struct driver_d stm32_bsec_driver = {
+	.name	= "stm32_bsec",
+	.probe	= stm32_bsec_probe,
+	.of_compatible = DRV_OF_COMPAT(stm32_bsec_dt_ids),
+};
+postcore_platform_driver(stm32_bsec_driver);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
