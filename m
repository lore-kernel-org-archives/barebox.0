Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T999z-0002kL-VI
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 06:32:25 +0000
Date: Wed, 5 Sep 2012 08:32:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120905063218.GC26594@pengutronix.de>
References: <1346752726-27051-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346752726-27051-2-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346752726-27051-2-git-send-email-s.trumtrar@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 1/2] mfd: add stmpe-i2c driver
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 04, 2012 at 11:58:45AM +0200, Steffen Trumtrar wrote:
> The stmpe mfds can be connected via i2c and spi. This driver provides the basic
> infrastructure for the i2c kind. It can be added as a normal i2c-device in the
> board code. To enable functions a platform_data struct has to be provided, that
> describes what parts of the chip are to be used.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> +static struct stmpe_client_info i2c_ci = {
> +	.read_reg = stmpe_reg_read,
> +	.write_reg = stmpe_reg_write,
> +};
> +
> +static int stmpe_probe(struct device_d *dev)
> +{
> +	struct stmpe_platform_data *pdata = dev->platform_data;
> +	struct stmpe *stmpe_dev;
> +
> +	if (!pdata) {
> +		dev_dbg(dev, "no platform data\n");
> +		return -ENODEV;
> +	}
> +
> +	stmpe_dev = xzalloc(sizeof(struct stmpe));
> +	stmpe_dev->cdev.name = DRIVERNAME;
> +	stmpe_dev->client = to_i2c_client(dev);
> +	stmpe_dev->cdev.size = 191;		/* 191 known registers */
> +	stmpe_dev->cdev.dev = dev;
> +	stmpe_dev->cdev.ops = &stmpe_fops;
> +	stmpe_dev->pdata = pdata;
> +	dev->priv = stmpe_dev;
> +	i2c_ci.stmpe = stmpe_dev;

This breaks for multiple instances of a stmpe device. You have to
allocate a static struct stmpe_client_info dynamically.

> +
> +	if (pdata->blocks &= STMPE_BLOCK_GPIO)
> +		add_generic_device("stmpe-gpio", 0, NULL, pdata->base, 0x10, IORESOURCE_MEM, &i2c_ci);

This issues:

drivers/mfd/stmpe-i2c.c: In function 'stmpe_probe':
drivers/mfd/stmpe-i2c.c:135:3: warning: passing argument 4 of 'add_generic_device' makes integer from pointer without a cast [enabled by default]
include/driver.h:197:18: note: expected 'resource_size_t' but argument is of type 'void *'

The base and size refer to the iomem space. As an i2c device we do not
have iomem here, so this is wrong.

Looking further at it it seems to be unused by the gpio driver anyway,
so you can just pass 0, 0 as iomem and size.


> +struct stmpe_platform_data {
> +	enum	stmpe_revision	revision;
> +	enum	stmpe_blocks	blocks;
> +	void	__iomem		*base;

This is unused, please remove.

> +	int			gpio_base;
> +};
> +
> +
> +extern int stmpe_reg_read(struct stmpe *priv, u32 reg, u8 *val);
> +extern int stmpe_reg_write(struct stmpe *priv, u32 reg, u8 val);
> +extern int stmpe_set_bits(struct stmpe *priv, u32 reg, u8 mask, u8 val);

no 'extern' for function prototypes please.

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
