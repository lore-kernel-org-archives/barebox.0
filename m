Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyYXf-0000mi-5b
 for barebox@lists.infradead.org; Thu, 23 Jul 2020 10:33:38 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 23 Jul 2020 12:33:24 +0200
Message-Id: <20200723103326.23226-10-o.rempel@pengutronix.de>
In-Reply-To: <20200723103326.23226-1-o.rempel@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 09/11] ARM: protonic-imx6: port protonic specific board code
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/Makefile |   1 +
 arch/arm/boards/protonic-imx6/board.c  | 598 +++++++++++++++++++++++++
 2 files changed, 599 insertions(+)
 create mode 100644 arch/arm/boards/protonic-imx6/board.c

diff --git a/arch/arm/boards/protonic-imx6/Makefile b/arch/arm/boards/protonic-imx6/Makefile
index b08c4a93ca..01c7a259e9 100644
--- a/arch/arm/boards/protonic-imx6/Makefile
+++ b/arch/arm/boards/protonic-imx6/Makefile
@@ -1 +1,2 @@
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
new file mode 100644
index 0000000000..7f501ad28b
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -0,0 +1,598 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) 2020 Pengutronix, Oleksij Rempel <kernel@pengutronix.de>
+// Copyright (C) 2014 Protonic Holland
+// Copyright (C) 2012 Steffen Trumtrar, Pengutronix
+
+#include <common.h>
+#include <gpio.h>
+#include <mach/imx6.h>
+#include <of_device.h>
+
+#define GPIO_HW_REV_ID  {\
+	{IMX_GPIO_NR(2, 8), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "rev_id0"}, \
+	{IMX_GPIO_NR(2, 9), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "rev_id1"}, \
+	{IMX_GPIO_NR(2, 10), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "rev_id2"} \
+}
+
+#define GPIO_HW_TYPE_ID  {\
+	{IMX_GPIO_NR(2, 11), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "hw_id0"}, \
+	{IMX_GPIO_NR(2, 12), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "hw_id1"}, \
+	{IMX_GPIO_NR(2, 13), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "hw_id2"}, \
+	{IMX_GPIO_NR(2, 14), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "hw_id3"}, \
+	{IMX_GPIO_NR(2, 15), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "hw_id4"} \
+}
+
+enum {
+	HW_TYPE_PRTI6Q = 0,
+	HW_TYPE_PRTWD2 = 1,
+	HW_TYPE_ALTI6S = 2,
+	HW_TYPE_VICUT1 = 4,
+	HW_TYPE_ALTI6P = 6,
+	HW_TYPE_PRTMVT = 8,
+	HW_TYPE_PRTI6G = 10,
+	HW_TYPE_PRTRVT = 12,
+	HW_TYPE_VICUT2 = 16,
+	HW_TYPE_PLYM2M = 20,
+	HW_TYPE_PRTVT7 = 22,
+	HW_TYPE_LANMCU = 23,
+	HW_TYPE_PLYBAS = 24,
+	HW_TYPE_VICTGO = 28,
+};
+
+struct prt_imx6_priv;
+struct prt_machine_data {
+	unsigned int hw_id;
+	unsigned int hw_rev;
+	unsigned int i2c_addr;
+	unsigned int i2c_adapter;
+	int (*init)(struct prt_imx6_priv *priv);
+};
+
+struct prt_imx6_priv {
+	struct device_d *dev;
+	const struct prt_machine_data *dcfg;
+	unsigned int hw_id;
+	unsigned int hw_rev;
+};
+
+static int prt_imx6_nvmem_link_serial(struct prt_imx6_priv *priv,
+				      struct device_node *root,
+				      struct device_node *nvmem_node)
+{
+	struct device_node *ser_node;
+	phandle nvmem_handle;
+	int ret;
+
+	/* Ignore non-barebox DTs */
+	if (root != of_get_root_node())
+		return 0;
+
+	ser_node = of_find_compatible_node(root, NULL, "barebox,serial");
+	if (!ser_node) {
+		dev_err(priv->dev, "Cant find the serial node\n");
+		return -ENODEV;
+	}
+
+	nvmem_handle = of_node_create_phandle(nvmem_node);
+
+	ret = of_property_write_u32(ser_node, "nvmem-cells", nvmem_handle);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int prt_imx6_nvmem_link_fec(struct prt_imx6_priv *priv,
+				   struct device_node *root,
+				   struct device_node *nvmem_node)
+{
+	struct device_node *fec_node;
+	phandle nvmem_handle;
+	int ret;
+
+	fec_node = of_find_node_by_alias(root, "ethernet0");
+	if (!fec_node) {
+		dev_err(priv->dev, "Cant find the fec node\n");
+		return -ENODEV;
+	}
+
+	nvmem_handle = of_node_create_phandle(nvmem_node);
+
+	ret = of_property_write_u32(fec_node, "nvmem-cells", nvmem_handle);
+	if (ret)
+		return ret;
+
+	ret = of_property_write_string(fec_node, "nvmem-cell-names",
+				       "mac-address");
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct device_node *
+prt_imx6_create_nvmem_cells(struct prt_imx6_priv *priv,
+			    struct device_node *nvmem_node,
+			    const char *node_name, size_t offset, size_t size)
+{
+	struct device_node *nvcell_node;
+	int na, ns, len = 0;
+	int ret;
+	u8 *tmp;
+
+	nvcell_node = of_create_node(nvmem_node, node_name);
+	if (!nvcell_node) {
+		dev_err(priv->dev, "Failed to create %s cell\n", node_name);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	na = of_n_addr_cells(nvcell_node);
+	ns = of_n_size_cells(nvcell_node);
+	tmp = xzalloc((na + ns) * 4);
+
+	of_write_number(tmp + len, offset, na);
+	len += na * 4;
+	of_write_number(tmp + len, size, ns);
+	len += ns * 4;
+
+	ret = of_set_property(nvcell_node, "reg", tmp, len, 1);
+	kfree(tmp);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return nvcell_node;
+}
+
+static int prt_imx6_rfid_fixup(struct device_node *root, void *data)
+{
+	struct prt_imx6_priv *priv = data;
+	const struct prt_machine_data *dcfg = priv->dcfg;
+	struct device_node *node, *i2c_node, *tmp_node;
+	char *eeprom_node_name, *alias;
+	int na, ns, len = 0;
+	int ret;
+	u8 *tmp;
+
+	if (!root) {
+		dev_err(priv->dev, "Unable to find the root node\n");
+		return -ENODEV;
+	}
+
+	alias = basprintf("i2c%d", dcfg->i2c_adapter);
+	if (!alias) {
+		ret = -ENOMEM;
+		goto exit_error;
+	}
+
+	i2c_node = of_find_node_by_alias(root, alias);
+	if (!i2c_node) {
+		dev_err(priv->dev, "Unsupported i2c adapter\n");
+		ret = -ENODEV;
+		goto free_alias;
+	}
+
+	eeprom_node_name = basprintf("/eeprom@%x", dcfg->i2c_addr);
+	if (!eeprom_node_name) {
+		ret = -ENOMEM;
+		goto free_alias;
+	}
+
+	node = of_create_node(i2c_node, eeprom_node_name);
+	if (!node) {
+		dev_err(priv->dev, "Filed to create node %s\n",
+			eeprom_node_name);
+		ret = -ENOMEM;
+		goto free_eeprom;
+	}
+
+	ret = of_property_write_string(node, "compatible", "atmel,24c256");
+	if (ret)
+		goto free_eeprom;
+
+	na = of_n_addr_cells(node);
+	ns = of_n_size_cells(node);
+	tmp = xzalloc((na + ns) * 4);
+
+	of_write_number(tmp + len, dcfg->i2c_addr, na);
+	len += na * 4;
+	of_write_number(tmp + len, 0, ns);
+	len += ns * 4;
+
+	ret = of_set_property(node, "reg", tmp, len, 1);
+	kfree(tmp);
+	if (ret)
+		goto free_eeprom;
+
+	ret = of_property_write_u32(node, "#size-cells", 1);
+	if (ret)
+		goto free_eeprom;
+
+	ret = of_property_write_u32(node, "#address-cells", 1);
+	if (ret)
+		goto free_eeprom;
+
+	tmp_node = prt_imx6_create_nvmem_cells(priv, node, "/mac-address@0",
+					       0x6000, 6);
+	if (IS_ERR(tmp_node)) {
+		ret = PTR_ERR(tmp_node);
+		goto free_eeprom;
+	}
+
+	ret = prt_imx6_nvmem_link_fec(priv, root, tmp_node);
+	if (ret)
+		goto free_eeprom;
+
+	tmp_node = prt_imx6_create_nvmem_cells(priv, node, "/serial@6",
+					       0x6006, 10);
+	if (IS_ERR(tmp_node)) {
+		ret = PTR_ERR(tmp_node);
+		goto free_eeprom;
+	}
+
+	ret = prt_imx6_nvmem_link_serial(priv, root, tmp_node);
+	if (ret)
+		goto free_eeprom;
+
+	return 0;
+free_eeprom:
+	kfree(eeprom_node_name);
+free_alias:
+	kfree(alias);
+exit_error:
+	dev_err(priv->dev, "Failed to apply fixup\n");
+	return ret;
+}
+
+static int prt_imx6_init_victgo(struct prt_imx6_priv *priv)
+{
+	int ret = 0;
+
+	/* Bit 1 of HW-REV is pulled low by 2k2, but must be high on some
+	 * revisions
+	 */
+	if (priv->hw_rev & 2) {
+		ret = gpio_direction_output(IMX_GPIO_NR(2, 9), 1);
+		if (ret)
+			dev_err(priv->dev, "Filed to set gpio up\n");
+	}
+
+	return ret;
+}
+
+static const struct prt_machine_data prt_imx6_cfg_alti6p[] = {
+	{
+		.hw_id = HW_TYPE_ALTI6P,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_victgo[] = {
+	{
+		.hw_id = HW_TYPE_VICTGO,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+		.init = prt_imx6_init_victgo,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_vicut1[] = {
+	{
+		.hw_id = HW_TYPE_VICUT1,
+		.hw_rev = 0,
+		.i2c_addr = 0x50,
+		.i2c_adapter = 1,
+	}, {
+		.hw_id = HW_TYPE_VICUT1,
+		.hw_rev = 1,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = HW_TYPE_VICUT2,
+		.hw_rev = 1,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_vicut1q[] = {
+	{
+		.hw_id = HW_TYPE_VICUT1,
+		.hw_rev = 0,
+		.i2c_addr = 0x50,
+		.i2c_adapter = 1,
+	}, {
+		.hw_id = HW_TYPE_VICUT1,
+		.hw_rev = 1,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = HW_TYPE_VICUT2,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = HW_TYPE_VICUT2,
+		.hw_rev = 1,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_vicutp[] = {
+	{
+		.hw_id = HW_TYPE_VICUT2,
+		.hw_rev = 1,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_lanmcu[] = {
+	{
+		.hw_id = HW_TYPE_LANMCU,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_plybas[] = {
+	{
+		.hw_id = HW_TYPE_PLYBAS,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_plym2m[] = {
+	{
+		.hw_id = HW_TYPE_PLYM2M,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_prti6g[] = {
+	{
+		.hw_id = HW_TYPE_PRTI6G,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_prti6q[] = {
+	{
+		.hw_id = HW_TYPE_PRTI6Q,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 2,
+	}, {
+		.hw_id = HW_TYPE_PRTI6Q,
+		.hw_rev = 1,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_prtmvt[] = {
+	{
+		.hw_id = HW_TYPE_PRTMVT,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_prtrvt[] = {
+	{
+		.hw_id = HW_TYPE_PRTRVT,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_prtvt7[] = {
+	{
+		.hw_id = HW_TYPE_PRTVT7,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_prtwd2[] = {
+	{
+		.hw_id = HW_TYPE_PRTWD2,
+		.hw_rev = 0,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static const struct prt_machine_data prt_imx6_cfg_prtwd3[] = {
+	{
+		.hw_id = HW_TYPE_PRTWD2,
+		.hw_rev = 2,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
+static int prt_imx6_get_id(struct prt_imx6_priv *priv)
+{
+	struct gpio gpios_type[] = GPIO_HW_TYPE_ID;
+	struct gpio gpios_rev[] = GPIO_HW_REV_ID;
+	int ret;
+
+	ret = gpio_array_to_id(gpios_type, ARRAY_SIZE(gpios_type), &priv->hw_id);
+	if (ret)
+		goto exit_get_id;
+
+	ret = gpio_array_to_id(gpios_rev, ARRAY_SIZE(gpios_rev), &priv->hw_rev);
+	if (ret)
+		goto exit_get_id;
+
+	return 0;
+exit_get_id:
+	dev_err(priv->dev, "Failed to read gpio ID\n");
+	return ret;
+}
+
+static int prt_imx6_get_dcfg(struct prt_imx6_priv *priv)
+{
+	const struct prt_machine_data *dcfg, *found = NULL;
+	int ret;
+
+	dcfg = of_device_get_match_data(priv->dev);
+	if (!dcfg) {
+		ret = -EINVAL;
+		goto exit_get_dcfg;
+	}
+
+	for (; dcfg->hw_id != UINT_MAX; dcfg++) {
+		if (dcfg->hw_id != priv->hw_id)
+			continue;
+		if (dcfg->hw_rev > priv->hw_rev)
+			break;
+		found = dcfg;
+	}
+
+	if (!found) {
+		ret = -ENODEV;
+		goto exit_get_dcfg;
+	}
+
+	priv->dcfg = found;
+
+	return 0;
+exit_get_dcfg:
+	dev_err(priv->dev, "Failed to get dcfg\n");
+	return ret;
+}
+
+static int prt_imx6_probe(struct device_d *dev)
+{
+	struct prt_imx6_priv *priv;
+	struct param_d *p;
+	int ret;
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv) {
+		ret = -ENOMEM;
+		goto exit_probe;
+	}
+
+	priv->dev = dev;
+
+	pr_info("Detected machine type: %s\n",
+		of_device_get_match_compatible(priv->dev));
+
+	ret = prt_imx6_get_id(priv);
+	if (ret)
+		goto free_priv;
+
+	pr_info("  HW type:     %d\n", priv->hw_id);
+	pr_info("  HW revision: %d\n", priv->hw_rev);
+
+	ret = prt_imx6_get_dcfg(priv);
+	if (ret)
+		goto free_priv;
+
+	if (priv->dcfg->init) {
+		ret = priv->dcfg->init(priv);
+		if (ret)
+			goto free_priv;
+	}
+
+	p = dev_add_param_uint32_ro(dev, "boardrev", &priv->hw_rev, "%u");
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto free_priv;
+	}
+
+	p = dev_add_param_uint32_ro(dev, "boardid", &priv->hw_id, "%u");
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto free_priv;
+	}
+
+	ret = prt_imx6_rfid_fixup(of_get_root_node(), priv);
+	if (ret)
+		goto free_priv;
+
+	ret = of_register_fixup(prt_imx6_rfid_fixup, priv);
+	if (ret) {
+		dev_err(dev, "Failed to register fixup\n");
+		goto free_priv;
+	}
+
+	return 0;
+free_priv:
+	kfree(priv);
+exit_probe:
+	dev_err(dev, "Probe filed\n");
+	return ret;
+}
+
+static const struct of_device_id prt_imx6_of_match[] = {
+	{ .compatible = "alt,alti6p", .data = &prt_imx6_cfg_alti6p },
+	{ .compatible = "kvg,victgo", .data = &prt_imx6_cfg_victgo },
+	{ .compatible = "kvg,vicut1", .data = &prt_imx6_cfg_vicut1 },
+	{ .compatible = "kvg,vicut1q", .data = &prt_imx6_cfg_vicut1q },
+	{ .compatible = "kvg,vicutp", .data = &prt_imx6_cfg_vicutp },
+	{ .compatible = "lan,lanmcu", .data = &prt_imx6_cfg_lanmcu },
+	{ .compatible = "ply,plybas", .data = &prt_imx6_cfg_plybas },
+	{ .compatible = "ply,plym2m", .data = &prt_imx6_cfg_plym2m },
+	{ .compatible = "prt,prti6g", .data = &prt_imx6_cfg_prti6g },
+	{ .compatible = "prt,prti6q", .data = &prt_imx6_cfg_prti6q },
+	{ .compatible = "prt,prtmvt", .data = &prt_imx6_cfg_prtmvt },
+	{ .compatible = "prt,prtrvt", .data = &prt_imx6_cfg_prtrvt },
+	{ .compatible = "prt,prtvt7", .data = &prt_imx6_cfg_prtvt7 },
+	{ .compatible = "prt,prtwd2", .data = &prt_imx6_cfg_prtwd2 },
+	{ .compatible = "prt,prtwd3", .data = &prt_imx6_cfg_prtwd3 },
+	{ /* sentinel */ },
+};
+
+static struct driver_d prt_imx6_board_driver = {
+	.name = "board-protonic-imx6",
+	.probe = prt_imx6_probe,
+	.of_compatible = DRV_OF_COMPAT(prt_imx6_of_match),
+};
+postcore_platform_driver(prt_imx6_board_driver);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
