Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a41U3-0006S3-Tx
 for barebox@lists.infradead.org; Wed, 02 Dec 2015 07:05:49 +0000
Date: Wed, 2 Dec 2015 08:05:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151202070525.GL11966@pengutronix.de>
References: <1448978639-12375-1-git-send-email-fvallee@eukrea.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448978639-12375-1-git-send-email-fvallee@eukrea.fr>
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
Subject: Re: [PATCH] GPIO: add Microchip MCP23017 / MCP23008 GPIO driver
To: Florian Vallee <fvallee@eukrea.fr>
Cc: barebox@lists.infradead.org

Hi Florian,

On Tue, Dec 01, 2015 at 03:03:59PM +0100, Florian Vallee wrote:
> This is based on the I2C implementation of the corresponding linux
> driver. The SPI part was left out.
> 
> Tested with an MCP23017.
> 

...

> +
> +static int mcp230xx_probe(struct device_d *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	unsigned long driver_data;
> +	struct mcp23s08_platform_data *pdata;
> +	struct mcp23s08 *mcp;
> +	int status;
> +
> +	driver_data = 0;
> +	pdata = dev->platform_data;
> +	if (pdata) {
> +		pdata->base = -1;
> +	} else {
> +		int err;
> +
> +		err = dev_get_drvdata(dev, (const void **) &driver_data);
> +		if (err)
> +			return err;
> +
> +		pdata = xzalloc(sizeof(struct mcp23s08_platform_data));
> +		pdata->base = -1;
> +	}

platform_data should be treated as const by drivers. Please fill in
mcp->chip.base directly instead. Also pdata->base is always initialized
to -1, even  when a base is specified it is overwritten. This doesn't
seem to be intended.

> +
> +	mcp = xzalloc(sizeof(*mcp));
> +	if (!mcp)
> +		return -ENOMEM;

xzalloc does not fail. You don't need to check the result.

> +
> +	status = mcp23s08_probe_one(mcp, &client->dev, client, client->addr,
> +				    driver_data, pdata, 0);
> +
> +	return status;
> +}
> +
> +static struct platform_device_id mcp230xx_id[] = {
> +	{ "mcp23008", MCP_TYPE_008 },
> +	{ "mcp23017", MCP_TYPE_017 },
> +	{ },
> +};
> +
> +static struct driver_d mcp230xx_driver = {
> +	.name	= "mcp230xx",
> +	.probe		= mcp230xx_probe,
> +	.id_table	= mcp230xx_id,
> +};
> +
> +static int __init mcp23s08_i2c_init(void)
> +{
> +	return i2c_driver_register(&mcp230xx_driver);
> +}
> +
> +device_initcall(mcp23s08_i2c_init);
> diff --git a/include/platform_data/mcp23s08.h b/include/platform_data/mcp23s08.h
> new file mode 100644
> index 0000000..aa07d7b
> --- /dev/null
> +++ b/include/platform_data/mcp23s08.h
> @@ -0,0 +1,43 @@
> +
> +/* FIXME driver should be able to handle IRQs...  */
> +
> +struct mcp23s08_chip_info {
> +	bool		is_present;	/* true if populated */
> +	unsigned	pullups;	/* BIT(x) means enable pullup x */
> +};
> +
> +struct mcp23s08_platform_data {
> +	/* For mcp23s08, up to 4 slaves (numbered 0..3) can share one SPI
> +	 * chipselect, each providing 1 gpio_chip instance with 8 gpios.
> +	 * For mpc23s17, up to 8 slaves (numbered 0..7) can share one SPI
> +	 * chipselect, each providing 1 gpio_chip (port A + port B) with
> +	 * 16 gpios.
> +	 */
> +	struct mcp23s08_chip_info	chip[8];
> +
> +	/* "base" is the number of the first GPIO.  Dynamic assignment is
> +	 * not currently supported, and even if there are gaps in chip
> +	 * addressing the GPIO numbers are sequential .. so for example
> +	 * if only slaves 0 and 3 are present, their GPIOs range from
> +	 * base to base+15 (or base+31 for s17 variant).
> +	 */
> +	unsigned	base;
> +	/* Marks the device as a interrupt controller.
> +	 * NOTE: The interrupt functionality is only supported for i2c
> +	 * versions of the chips. The spi chips can also do the interrupts,
> +	 * but this is not supported by the linux driver yet.
> +	 */
> +	bool		irq_controller;
> +
> +	/* Sets the mirror flag in the IOCON register. Devices
> +	 * with two interrupt outputs (these are the devices ending with 17 and
> +	 * those that have 16 IOs) have two IO banks: IO 0-7 form bank 1 and
> +	 * IO 8-15 are bank 2. These chips have two different interrupt outputs:
> +	 * One for bank 1 and another for bank 2. If irq-mirror is set, both
> +	 * interrupts are generated regardless of the bank that an input change
> +	 * occurred on. If it is not set, the interrupt are only generated for
> +	 * the bank they belong to.
> +	 * On devices with only one interrupt output this property is useless.
> +	 */
> +	bool		mirror;
> +};

Everything except 'base' is ignored (well, base is ignored aswell, but
this was probably not intended). Please remove the unused fields.

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
