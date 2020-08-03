Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2hOe-0007V6-Vq
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 20:49:26 +0000
Date: Mon, 3 Aug 2020 22:49:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803204923.GK31536@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
 <20200723103326.23226-10-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200723103326.23226-10-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 09/11] ARM: protonic-imx6: port protonic specific
 board code
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

On Thu, Jul 23, 2020 at 12:33:24PM +0200, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/protonic-imx6/Makefile |   1 +
>  arch/arm/boards/protonic-imx6/board.c  | 598 +++++++++++++++++++++++++
>  2 files changed, 599 insertions(+)
>  create mode 100644 arch/arm/boards/protonic-imx6/board.c
> 
> +static int prt_imx6_nvmem_link_fec(struct prt_imx6_priv *priv,
> +				   struct device_node *root,
> +				   struct device_node *nvmem_node)
> +{
> +	struct device_node *fec_node;
> +	phandle nvmem_handle;
> +	int ret;
> +
> +	fec_node = of_find_node_by_alias(root, "ethernet0");
> +	if (!fec_node) {
> +		dev_err(priv->dev, "Cant find the fec node\n");
> +		return -ENODEV;
> +	}
> +
> +	nvmem_handle = of_node_create_phandle(nvmem_node);
> +
> +	ret = of_property_write_u32(fec_node, "nvmem-cells", nvmem_handle);
> +	if (ret)
> +		return ret;
> +
> +	ret = of_property_write_string(fec_node, "nvmem-cell-names",
> +				       "mac-address");
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}

barebox will already write the "mac-address" property to the fec node.
Isn't this enough?

> +
> +static struct device_node *
> +prt_imx6_create_nvmem_cells(struct prt_imx6_priv *priv,
> +			    struct device_node *nvmem_node,
> +			    const char *node_name, size_t offset, size_t size)
> +{
> +	struct device_node *nvcell_node;
> +	int na, ns, len = 0;
> +	int ret;
> +	u8 *tmp;
> +
> +	nvcell_node = of_create_node(nvmem_node, node_name);
> +	if (!nvcell_node) {
> +		dev_err(priv->dev, "Failed to create %s cell\n", node_name);
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
> +	na = of_n_addr_cells(nvcell_node);
> +	ns = of_n_size_cells(nvcell_node);
> +	tmp = xzalloc((na + ns) * 4);
> +
> +	of_write_number(tmp + len, offset, na);
> +	len += na * 4;
> +	of_write_number(tmp + len, size, ns);
> +	len += ns * 4;
> +
> +	ret = of_set_property(nvcell_node, "reg", tmp, len, 1);
> +	kfree(tmp);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	return nvcell_node;
> +}
> +
> +static int prt_imx6_rfid_fixup(struct device_node *root, void *data)
> +{
> +	struct prt_imx6_priv *priv = data;
> +	const struct prt_machine_data *dcfg = priv->dcfg;
> +	struct device_node *node, *i2c_node, *tmp_node;
> +	char *eeprom_node_name, *alias;
> +	int na, ns, len = 0;
> +	int ret;
> +	u8 *tmp;
> +
> +	if (!root) {
> +		dev_err(priv->dev, "Unable to find the root node\n");
> +		return -ENODEV;
> +	}
> +
> +	alias = basprintf("i2c%d", dcfg->i2c_adapter);
> +	if (!alias) {
> +		ret = -ENOMEM;
> +		goto exit_error;
> +	}
> +
> +	i2c_node = of_find_node_by_alias(root, alias);
> +	if (!i2c_node) {
> +		dev_err(priv->dev, "Unsupported i2c adapter\n");
> +		ret = -ENODEV;
> +		goto free_alias;
> +	}
> +
> +	eeprom_node_name = basprintf("/eeprom@%x", dcfg->i2c_addr);
> +	if (!eeprom_node_name) {
> +		ret = -ENOMEM;
> +		goto free_alias;
> +	}
> +
> +	node = of_create_node(i2c_node, eeprom_node_name);
> +	if (!node) {
> +		dev_err(priv->dev, "Filed to create node %s\n",
> +			eeprom_node_name);

s/filed/failed/, multiple times in this patch.

> +		ret = -ENOMEM;
> +		goto free_eeprom;
> +	}
> +
> +	ret = of_property_write_string(node, "compatible", "atmel,24c256");
> +	if (ret)
> +		goto free_eeprom;
> +
> +	na = of_n_addr_cells(node);
> +	ns = of_n_size_cells(node);
> +	tmp = xzalloc((na + ns) * 4);
> +
> +	of_write_number(tmp + len, dcfg->i2c_addr, na);
> +	len += na * 4;
> +	of_write_number(tmp + len, 0, ns);
> +	len += ns * 4;
> +
> +	ret = of_set_property(node, "reg", tmp, len, 1);
> +	kfree(tmp);
> +	if (ret)
> +		goto free_eeprom;
> +
> +	ret = of_property_write_u32(node, "#size-cells", 1);
> +	if (ret)
> +		goto free_eeprom;
> +
> +	ret = of_property_write_u32(node, "#address-cells", 1);
> +	if (ret)
> +		goto free_eeprom;
> +
> +	tmp_node = prt_imx6_create_nvmem_cells(priv, node, "/mac-address@0",
> +					       0x6000, 6);
> +	if (IS_ERR(tmp_node)) {
> +		ret = PTR_ERR(tmp_node);
> +		goto free_eeprom;
> +	}
> +
> +	ret = prt_imx6_nvmem_link_fec(priv, root, tmp_node);
> +	if (ret)
> +		goto free_eeprom;
> +
> +	tmp_node = prt_imx6_create_nvmem_cells(priv, node, "/serial@6",
> +					       0x6006, 10);
> +	if (IS_ERR(tmp_node)) {
> +		ret = PTR_ERR(tmp_node);
> +		goto free_eeprom;
> +	}
> +
> +	ret = prt_imx6_nvmem_link_serial(priv, root, tmp_node);
> +	if (ret)
> +		goto free_eeprom;
> +
> +	return 0;
> +free_eeprom:
> +	kfree(eeprom_node_name);
> +free_alias:
> +	kfree(alias);
> +exit_error:
> +	dev_err(priv->dev, "Failed to apply fixup\n");

It's always nice to print the error code along with such a message.

> +static int prt_imx6_probe(struct device_d *dev)
> +{
> +	struct prt_imx6_priv *priv;
> +	struct param_d *p;
> +	int ret;
> +
> +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> +	if (!priv) {
> +		ret = -ENOMEM;
> +		goto exit_probe;
> +	}
> +
> +	priv->dev = dev;
> +
> +	pr_info("Detected machine type: %s\n",
> +		of_device_get_match_compatible(priv->dev));
> +
> +	ret = prt_imx6_get_id(priv);
> +	if (ret)
> +		goto free_priv;
> +
> +	pr_info("  HW type:     %d\n", priv->hw_id);
> +	pr_info("  HW revision: %d\n", priv->hw_rev);
> +
> +	ret = prt_imx6_get_dcfg(priv);
> +	if (ret)
> +		goto free_priv;
> +
> +	if (priv->dcfg->init) {
> +		ret = priv->dcfg->init(priv);
> +		if (ret)
> +			goto free_priv;
> +	}
> +
> +	p = dev_add_param_uint32_ro(dev, "boardrev", &priv->hw_rev, "%u");
> +	if (IS_ERR(p)) {
> +		ret = PTR_ERR(p);
> +		goto free_priv;
> +	}
> +
> +	p = dev_add_param_uint32_ro(dev, "boardid", &priv->hw_id, "%u");
> +	if (IS_ERR(p)) {
> +		ret = PTR_ERR(p);
> +		goto free_priv;
> +	}
> +
> +	ret = prt_imx6_rfid_fixup(of_get_root_node(), priv);
> +	if (ret)
> +		goto free_priv;
> +
> +	ret = of_register_fixup(prt_imx6_rfid_fixup, priv);
> +	if (ret) {
> +		dev_err(dev, "Failed to register fixup\n");
> +		goto free_priv;
> +	}
> +
> +	return 0;
> +free_priv:
> +	kfree(priv);
> +exit_probe:
> +	dev_err(dev, "Probe filed\n");

The caller should print this error already.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
