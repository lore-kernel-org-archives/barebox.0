Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6IyG-00053k-D9
 for barebox@lists.infradead.org; Mon, 14 Nov 2016 15:14:57 +0000
Date: Mon, 14 Nov 2016 16:14:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161114151432.jtzypouhxyse7ul7@pengutronix.de>
References: <20161017075052.30802-1-s.trumtrar@pengutronix.de>
 <20161017075052.30802-2-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161017075052.30802-2-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v3 2/3] watchdog: add designware driver
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 17, 2016 at 09:50:51AM +0200, Steffen Trumtrar wrote:
> Port the linux v4.8-rc1 Synopsys DesignWare watchdog driver to barebox.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> +static void __noreturn dw_wdt_restart_handle(struct restart_handler *rst)
> +{
> +	struct dw_wdt *dw_wdt;
> +
> +	dw_wdt = container_of(rst, struct dw_wdt, restart);
> +
> +	dw_wdt->wdd.set_timeout(&dw_wdt->wdd, -1);
> +
> +	mdelay(1000);
> +
> +	hang();
> +}
> +
> +static int dw_wdt_drv_probe(struct device_d *dev)
> +{
> +	struct watchdog *wdd;
> +	struct dw_wdt *dw_wdt;
> +	struct resource *mem;
> +	int ret;
> +
> +	dw_wdt = xzalloc(sizeof(*dw_wdt));
> +
> +	mem = dev_request_mem_resource(dev, 0);
> +	dw_wdt->regs = IOMEM(mem->start);
> +	if (IS_ERR(dw_wdt->regs))
> +		return PTR_ERR(dw_wdt->regs);

Just stumbled upon this. The result of dev_request_mem_resource() must
be error checked, not the IOMEM(). If mem is valid then IOMEM() is valid
aswell.

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
