Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Usr21-0006Cc-JN
 for barebox@lists.infradead.org; Sat, 29 Jun 2013 09:01:22 +0000
Date: Sat, 29 Jun 2013 11:00:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130629090059.GO516@pengutronix.de>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372443947-12599-5-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372443947-12599-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 4/6] spi: add Marvell MVEBU SoC SPI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Fri, Jun 28, 2013 at 08:25:45PM +0200, Sebastian Hesselbarth wrote:
> This adds support for the SPI controller found on Marvell MVEBU SoCs
> (Dove, Kirkwood, Discovery Innovation, and Armada 370/XP). Current driver
> is DT only. Compatible strings are provided for Orion (common denominator),
> Armada 370/XP and Dove SoCs.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Mostly good, some minor stuff inline.

> +static int mvebu_spi_set_transfer_size(struct mvebu_spi *p, int size)
> +{
> +	u32 val;
> +
> +	if (size != 8 && size != 16)
> +		return -EINVAL;
> +
> +	p->data16 = (size == 16);
> +
> +	val = readl(p->base + SPI_IF_CONFIG) & ~IF_TRANSFER_2BYTE;
> +	if (p->data16)
> +		val |= IF_TRANSFER_2BYTE;
> +	writel(val, p->base + SPI_IF_CONFIG);
> +	

Trailing whitespaces here and elsewhere.

> +	return 0;
> +}
> +
> +static int mvebu_spi_set_baudrate(struct mvebu_spi *p, u32 speed)
> +{
> +	u32 pscl, val;
> +
> +	/* standard prescaler values: 1,2,4,6,...,30 */
> +	pscl = DIV_ROUND_UP(clk_get_rate(p->clk), speed);
> +	pscl = roundup(pscl, 2);
> +
> +	debug("%s: clk = %lu, speed = %u, pscl = %d\n",
> +		__func__, clk_get_rate(p->clk), speed, pscl);

Please use dev_dbg and friends in drivers.

> +	int ret = 0;
> +
> +	match = of_match_node(mvebu_spi_dt_ids, dev->device_node);
> +	if (!match)
> +		return -EINVAL;
> +
> +	priv = xzalloc(sizeof(*priv));
> +	priv->base = dev_request_mem_region(dev, 0);

Please check priv->base for validity. I know, most other drivers also
don't do it, but at least new drivers should.

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
