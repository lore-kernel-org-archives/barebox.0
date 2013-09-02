Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGPpI-0001jP-QF
 for barebox@lists.infradead.org; Mon, 02 Sep 2013 08:49:38 +0000
Date: Mon, 2 Sep 2013 10:49:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130902084912.GP30088@pengutronix.de>
References: <1377869669-27821-1-git-send-email-renaud.barbier@ge.com>
 <1377869669-27821-3-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377869669-27821-3-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 2/4] ppc: add mpc85xx device tree fixup functions
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Fri, Aug 30, 2013 at 02:34:27PM +0100, Renaud Barbier wrote:
> +/* These properties specify whether the hardware supports the stashing
> + * of buffer descriptors in L2 cache.
> + */
> +static void fdt_add_enet_stashing(void *fdt)
> +{
> +	struct device_node *node;
> +
> +	node = of_find_compatible_node(fdt, NULL, "gianfar");
> +	while (node) {
> +		of_set_property(node, "bd-stash", NULL, 0, 1);
> +		of_property_write_u32(node, "rx-stash-len", 96);
> +		of_property_write_u32(node, "rx-stash-idx", 0);
> +		node = of_find_compatible_node(node, NULL, "gianfar");
> +	}
> +}

Out of curiosity, why is this dynamically added and not part of the
static dts file?

> +
> +static int fdt_stdout_setup(struct device_node *blob)
> +{
> +	struct device_node *node, *alias;
> +	char sername[9] = { 0 };
> +	const char *prop;
> +	struct console_device *cdev;
> +	int len;
> +
> +	node = of_find_node_by_path("/chosen");
> +	if (node == NULL)
> +		node = of_create_node(blob, "/chosen");

You should be able to call of_create_node() without checking for
existence first. If the node already exists of_create_node() will just
return that node.

> +
> +	if (node == NULL) {
> +		pr_err("%s: could not open /chosen node\n", __func__);
> +		goto error;
> +	}
> +
> +	for_each_console(cdev)
> +		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
> +			break;
> +	if (cdev)
> +		sprintf(sername, "serial%d", cdev->dev->id);
> +	else
> +		sprintf(sername, "serial%d", 0);
> +
> +	alias = of_find_node_by_path_from(blob, "/aliases");
> +	if (!alias) {
> +		pr_err("%s: could not get aliases node.\n", __func__);
> +		goto error;
> +	}
> +	prop = of_get_property(alias, sername, &len);
> +	of_set_property(node, "linux,stdout-path", prop, len, 1);
> +	return 0;
> +error:
> +	return 1;

Please return an error code.

> +}
> +
> +static void fdt_mac_setup(struct device_node *blob)
> +{
> +	struct device_node *alias, *node;
> +	const char *path, *tmp;
> +	char mac[16], eth[12], *end;
> +	unsigned char mac_addr[6];
> +	struct device_d *dev;
> +	int ix, idx = 0;
> +
> +	alias = of_find_node_by_path_from(blob, "/aliases");
> +	if (!alias) {
> +		pr_err("%s: Failed to get /aliases node\n", __func__);
> +		return;
> +	}
> +
> +	sprintf(mac, "eth%d.ethaddr", idx);
> +	while ((tmp = getenv(mac)) != NULL) {
> +		sprintf(eth, "eth%d", idx);
> +		dev = get_device_by_name(eth);
> +
> +		/* If the parent id is not set correctly by
> +		 * the board support, the wrong device path
> +		 * may be obtained.
> +		 */
> +		sprintf(eth, "ethernet%d", dev->parent->id);
> +		path = of_get_property(alias, eth, NULL);
> +		if (!path) {
> +			idx++;
> +			sprintf(mac, "eth%d.ethaddr", idx);
> +			continue;
> +		}
> +
> +		for (ix = 0; ix < 6; ix++) {
> +			mac_addr[ix] = tmp ? simple_strtoul(tmp, &end, 16) : 0;
> +			if (tmp)
> +				tmp = (*end) ? end+1 : end;
> +		}
> +
> +		node = of_find_node_by_path_from(blob, path);
> +		of_set_property(node, "mac-address", mac_addr,
> +				sizeof(mac_addr), 1);
> +		of_set_property(node, "local-mac-address", mac_addr,
> +				sizeof(mac_addr), 1);
> +		idx++;
> +		sprintf(mac, "eth%d.ethaddr", idx);
> +	}
> +}

This function could be simplified by using of_find_node_by_alias().

We already have eth_of_fixup(). Would it be possible to use this by
changing it to something like this:

static int eth_of_fixup(struct device_node *root)
{
	struct eth_device *edev;
	struct device_node *node;
	int ret;

	/*
	 * Add the mac-address property for each network device we
	 * find a nodepath for and which has a valid mac address.
	 */
	list_for_each_entry(edev, &netdev_list, list) {
		if (!is_valid_ether_addr(edev->ethaddr)) {
			dev_dbg(&edev->dev, "%s: no valid mac address, cannot fixup\n",
					__func__);
			continue;
		}

		if (edev->nodepath) {
			node = of_find_node_by_path_from(root, edev->nodepath);
		} else {
			char eth[12];
			sprintf(eth, "ethernet%d", edev->dev.id);
			node = of_find_node_by_alias(root, eth);
		}

		if (!node) {
			dev_dbg(&edev->dev, "%s: no node to fixup\n", __func__);
			continue;
		}

		ret = of_set_property(node, "mac-address", edev->ethaddr, 6, 1);
		if (ret)
			pr_err("Setting mac-address property of %s failed with: %s\n",
					node->full_name, strerror(-ret));
	}

	return 0;
}

(untested)

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
