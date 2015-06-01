Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YzOYD-0000ME-9c
 for barebox@lists.infradead.org; Mon, 01 Jun 2015 12:10:41 +0000
Date: Mon, 1 Jun 2015 14:10:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150601121018.GJ6325@pengutronix.de>
References: <1432991021-20738-1-git-send-email-jluebbe@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1432991021-20738-1-git-send-email-jluebbe@debian.org>
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
Subject: Re: [PATCH] watchdog: add davinci watchdog driver
To: Jan Luebbe <jluebbe@debian.org>
Cc: barebox@lists.infradead.org

On Sat, May 30, 2015 at 03:03:41PM +0200, Jan Luebbe wrote:
> This driver is based on the Linux driver (v4.0).
> 
> Signed-off-by: Jan Luebbe <jluebbe@debian.org>
> ---
>  drivers/watchdog/Kconfig       |   6 ++
>  drivers/watchdog/Makefile      |   1 +
>  drivers/watchdog/davinci_wdt.c | 172 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 179 insertions(+)
>  create mode 100644 drivers/watchdog/davinci_wdt.c
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 7f7b02e..582c615 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> +
> +static int davinci_wdt_probe(struct device_d *dev)
> +{
> +	int ret = 0;
> +	struct davinci_wdt *davinci_wdt;
> +
> +	davinci_wdt = xzalloc(sizeof(*davinci_wdt));
> +
> +	davinci_wdt->base = dev_request_mem_region(dev, 0);
> +	if (!davinci_wdt->base)
> +		return -ENODEV;

dev_request_mem_region returns as ERR_PTR.

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
