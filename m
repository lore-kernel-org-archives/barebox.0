Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL5W6-0000QQ-Ao
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 08:18:10 +0000
Date: Fri, 31 Jul 2015 10:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150731081746.GT18700@pengutronix.de>
References: <1438270321-945-1-git-send-email-jluebbe@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1438270321-945-1-git-send-email-jluebbe@debian.org>
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
Subject: Re: [PATCH v2] davinci_nand: add support for the NAND controller
To: Jan Luebbe <jluebbe@debian.org>
Cc: barebox@lists.infradead.org

On Thu, Jul 30, 2015 at 05:32:01PM +0200, Jan Luebbe wrote:
> This driver is based on the Linux driver (v4.0).
> 
> Signed-off-by: Jan Luebbe <jluebbe@debian.org>
> ---
> Changes from v1:
>   - Fix style problems reported by checkpatch (reported by Antony Pavlov).
> 
> +	*nand_davinci_get_pdata(struct device_d *dev)
> +{
> +	struct davinci_nand_pdata *pdata;
> +	const char *mode;
> +	u32 prop;
> +
> +	pdata = kzalloc(sizeof(struct davinci_nand_pdata),
> +			GFP_KERNEL);
> +	if (!pdata)
> +		return ERR_PTR(-ENOMEM);
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-chipselect", &prop))
> +		pdata->chipsel = prop;
> +	else
> +		return ERR_PTR(-EINVAL);
> +
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-mask-ale", &prop))
> +		pdata->mask_ale = prop;
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-mask-cle", &prop))
> +		pdata->mask_cle = prop;
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-mask-chipsel", &prop))
> +		pdata->mask_chipsel = prop;
> +	if (!of_property_read_string(dev->device_node,
> +		"nand-ecc-mode", &mode) ||
> +	    !of_property_read_string(dev->device_node,
> +		"ti,davinci-ecc-mode", &mode)) {

We have of_get_nand_ecc_mode(). How about adding an optional propname
argument to it and using it here?

> +		if (!strncmp("none", mode, 4))
> +			pdata->ecc_mode = NAND_ECC_NONE;
> +		if (!strncmp("soft", mode, 4))
> +			pdata->ecc_mode = NAND_ECC_SOFT;
> +		if (!strncmp("hw", mode, 2))
> +			pdata->ecc_mode = NAND_ECC_HW;
> +	}
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-ecc-bits", &prop))
> +		pdata->ecc_bits = prop;
> +
> +	prop = of_get_nand_bus_width(dev->device_node);
> +	if (0 < prop || !of_property_read_u32(dev->device_node,
> +		"ti,davinci-nand-buswidth", &prop))
> +		if (prop == 16)
> +			pdata->options |= NAND_BUSWIDTH_16;
> +	if (of_property_read_bool(dev->device_node,
> +		"nand-on-flash-bbt") ||

of_get_nand_on_flash_bbt()?

> +	    of_property_read_bool(dev->device_node,
> +		"ti,davinci-nand-use-bbt"))
> +		pdata->bbt_options = NAND_BBT_USE_FLASH;
> +
> +	if (of_device_is_compatible(dev->device_node,
> +				    "ti,keystone-nand")) {
> +		pdata->options |= NAND_NO_SUBPAGE_WRITE;
> +	}
> +	return pdata;
> +}
> +
> +static int nand_davinci_probe(struct device_d *dev)
> +{
> +	struct davinci_nand_pdata	*pdata;
> +	struct davinci_nand_info	*info;
> +	int				ret;
> +	uint32_t			val;
> +	nand_ecc_modes_t		ecc_mode;
> +
> +	pdata = nand_davinci_get_pdata(dev);

Could you strip the pdata leftovers a bit more? Since this driver is
device tree only it's a bit odd that all data is first parsed into a
separately allocated struct davinci_nand_pdata * from where it is
then moved to it's final destination in struct davinci_nand_info.


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
