Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bw2f5-0003fI-Nq
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 07:48:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <str@pengutronix.de>) id 1bw2ei-0003uz-Kf
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 09:48:20 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <str@pengutronix.de>) id 1bw2ei-0005vw-DB
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 09:48:20 +0200
Date: Mon, 17 Oct 2016 09:48:20 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20161017074820.225nlw6c2knd4j7r@pengutronix.de>
References: <20161014092715.4257-1-s.trumtrar@pengutronix.de>
 <20161014092715.4257-2-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161014092715.4257-2-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 2/3] watchdog: add designware driver
To: barebox@lists.infradead.org

On Fri, Oct 14, 2016 at 11:27:14AM +0200, Steffen Trumtrar wrote:
> Port the linux v4.8-rc1 Synopsys DesignWare watchdog driver to barebox.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> Changes since v1:
>   - change usages of pr_warn in favor of dev_warn
> 
>  drivers/watchdog/Kconfig  |   6 ++
>  drivers/watchdog/Makefile |   1 +
>  drivers/watchdog/dw_wdt.c | 193 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 200 insertions(+)
>  create mode 100644 drivers/watchdog/dw_wdt.c
> 

(...)

> +struct dw_wdt {
> +	void __iomem		*regs;
> +	struct clk		*clk;
> +	struct restart_handler	restart;
> +	struct watchdog		wdd;
> +	struct reset_control	*rst;
> +};
> +

(...)

> +static int dw_wdt_stop(struct watchdog *wdd)
> +{
> +	struct dw_wdt *dw_wdt = to_dw_wdt(wdd);
> +
> +	if (IS_ERR(dw_wdt->rst)) {
> +		dev_warn(dw_wdt->dev, "No reset line. Will not stop.\n");
                         ^^^^^^^^^^^

Meh, I sent the wrong version :-(
Let's try again.

Regards,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
