Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uue5u-0000fF-Nv
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 07:36:47 +0000
Date: Thu, 4 Jul 2013 09:36:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130704073624.GU516@pengutronix.de>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372789849-12194-7-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372789849-12194-7-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 06/10] spi: add Marvell MVEBU SoC SPI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Tue, Jul 02, 2013 at 08:30:45PM +0200, Sebastian Hesselbarth wrote:
> This adds support for the SPI controller found on Marvell MVEBU SoCs
> (Dove, Kirkwood, Discovery Innovation, and Armada 370/XP). Current driver
> is DT only. Compatible strings are provided for Orion (common denominator),
> Armada 370/XP and Dove SoCs.
> 
> +#if defined(ARCH_ARMADA_370) || defined(ARCH_ARMADA_XP)

These have to be CONFIG_*. Also elsewhere in this patch.

> +static int mvebu_spi_probe(struct device_d *dev)
> +{
> +	struct spi_master *master;
> +	struct mvebu_spi *priv;
> +	const struct of_device_id *match;
> +	int ret = 0;
> +
> +	match = of_match_node(mvebu_spi_dt_ids, dev->device_node);
> +	if (!match)
> +		return -EINVAL;
> +
> +	priv = xzalloc(sizeof(*priv));
> +	priv->base = dev_request_mem_region(dev, 0);
> +	if (!priv->base) {
> +		ret = -EINVAL;
> +		goto err_free;
> +	}
> +	priv->set_baudrate = (void *)match->data;
> +	priv->clk = clk_lookup("tclk");

still clk_lookup?

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
