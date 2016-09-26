Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boOzO-0003BC-B0
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 06:02:07 +0000
Date: Mon, 26 Sep 2016 08:01:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160926060144.5otktcflay6wkeaz@pengutronix.de>
References: <1474547628-16751-1-git-send-email-s.trumtrar@pengutronix.de>
 <1474547628-16751-2-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1474547628-16751-2-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 2/3] watchdog: add designware driver
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 22, 2016 at 02:33:47PM +0200, Steffen Trumtrar wrote:
> Port the linux v4.8-rc1 Synopsys DesignWare watchdog driver to barebox.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/watchdog/Kconfig  |   6 ++
>  drivers/watchdog/Makefile |   1 +
>  drivers/watchdog/dw_wdt.c | 194 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 201 insertions(+)
>  create mode 100644 drivers/watchdog/dw_wdt.c
> 
> +	struct dw_wdt *dw_wdt = to_dw_wdt(wdd);
> +
> +	writel(WDOG_CONTROL_REG_WDT_EN_MASK,
> +	       dw_wdt->regs + WDOG_CONTROL_REG_OFFSET);
> +
> +	return 0;
> +}
> +
> +static int dw_wdt_stop(struct watchdog *wdd)
> +{
> +	struct dw_wdt *dw_wdt = to_dw_wdt(wdd);
> +
> +	if (IS_ERR(dw_wdt->rst)) {
> +		pr_warn("No reset line. Will not stop.\n");

dev_warn

> +		return PTR_ERR(dw_wdt->rst);
> +	}
> +
> +	reset_control_assert(dw_wdt->rst);
> +	reset_control_deassert(dw_wdt->rst);
> +
> +	return 0;
> +}

...

> +
> +	ret = restart_handler_register(&dw_wdt->restart);
> +	if (ret)
> +		pr_warn("cannot register restart handler\n");

ditto

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
