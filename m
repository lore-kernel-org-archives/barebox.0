Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YShZv-0005NV-Ic
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 07:49:20 +0000
Date: Tue, 3 Mar 2015 08:48:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150303074857.GP11010@pengutronix.de>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
 <1425327722-28232-3-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425327722-28232-3-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH 02/18] CLK: Add support for composite clock from Linux
 kernel.
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Mon, Mar 02, 2015 at 11:21:46PM +0300, Andrey Panov wrote:
> Arch Kconfig should select CLK_NEED_COMPOSITE to have this support
> compiled in.
> 
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  drivers/clk/Kconfig         |   3 +
>  drivers/clk/Makefile        |   1 +
>  drivers/clk/clk-composite.c | 146 ++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/clk.h         |   6 ++
>  4 files changed, 156 insertions(+)
>  create mode 100644 drivers/clk/clk-composite.c
> 
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 1cf0ccb..6db1f33 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -8,6 +8,9 @@ config COMMON_CLK
>  	select HAVE_CLK
>  	bool
>  
> +config CLK_NEED_COMPOSITE
> +	bool
> +
>  config COMMON_CLK_OF_PROVIDER
>  	bool
>  	help
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index fa707dd..bdd93f5 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -1,6 +1,7 @@
>  obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
>  				clk-mux.o clk-gate.o
>  obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
> +obj-$(CONFIG_CLK_NEED_COMPOSITE)	+= clk-composite.o

Same here, no need for a separate option. You can add this to the
obj-$(CONFIG_COMMON_CLK) list above.

> +
> +static struct clk_ops clk_composite_ops = {
> +        .get_parent = clk_composite_get_parent,
> +        .set_parent = clk_composite_set_parent,
> +	.recalc_rate = clk_composite_recalc_rate,
> +        .round_rate = clk_composite_round_rate,

Indention broken here.

> +struct clk *clk_register_composite(const char *name,
> +			const char **parent_names, int num_parents,
> +			struct clk *mux_clk,
> +			struct clk *rate_clk,
> +			struct clk *gate_clk,
> +			unsigned long flags)
> +{
> +	struct clk_composite *composite;
> +	int ret;
> +
> +	composite = kzalloc(sizeof(*composite), GFP_KERNEL);
> +	if (!composite) {
> +		pr_err("%s: could not allocate composite clk\n", __func__);
> +		return ERR_PTR(-ENOMEM);
> +	}

Please use xzalloc here. You can skip the error check then.

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
