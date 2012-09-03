Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Qlm-0004Cm-M1
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 07:08:28 +0000
Date: Mon, 3 Sep 2012 09:08:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903070824.GW26594@pengutronix.de>
References: <1346404447-31961-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346404447-31961-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346404447-31961-3-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 2/2] gpio: add driver for stmpe io-expander
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 31, 2012 at 11:14:07AM +0200, Steffen Trumtrar wrote:
> Add a driver for the stmpe1601 gpio block. The stmpe io-expanders have multiple
> blocks (keypad, gpio...) that can be enabled and used. Only gpio is supported atm.
> 
> This was only tested on a stmpe connected via i2c. It is also possible to connect
> via spi.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> +
> +static int stmpe_gpio_probe(struct device_d *dev)
> +{
> +	struct stmpe_gpio_chip *stmpegpio;
> +
> +	stmpegpio = xzalloc(sizeof(*stmpegpio));
> +
> +	stmpegpio->base = dev_request_mem_region(dev, 0);
> +	stmpegpio->chip.ops = &stmpe_gpio_ops;
> +	stmpegpio->chip.base = 224;

This is not a good idea. Configure the base from platform_data instead.
Maybe we can add an optional -1 for dynamic base, but having hardcoded
bases so that board code knows the correct gpio numbers seems more
important for now.

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
