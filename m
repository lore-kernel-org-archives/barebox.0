Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OrBcY-0006YL-1r
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 15:22:35 +0000
Date: Thu, 2 Sep 2010 17:22:31 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100902152231.GP14214@pengutronix.de>
References: <20100902141001.GA28968@game.jcrosoft.org>
	<1283436624-29567-9-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1283436624-29567-9-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 9/9] clkdev: add print clk info command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 02, 2010 at 04:10:24PM +0200, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/Kconfig     |    7 +++++++
>  drivers/clk/clkdev.c |   33 +++++++++++++++++++++++++++++++++
>  2 files changed, 40 insertions(+), 0 deletions(-)
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index 57c9b75..f20c2e1 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -338,4 +338,11 @@ config CMD_I2C
>  	  include i2c_probe, i2c_read and i2c_write commands to communicate
>  	  on i2c bus.
>  =

> +config CMD_CLOCK_INFO
> +	bool
> +	depends on LOOKUP_CLKDEV
> +	prompt "clock info command"
> +	help
> +	  shop list of registered clock
> +
>  endmenu
> diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> index 717fea5..d78d3e0 100644
> --- a/drivers/clk/clkdev.c
> +++ b/drivers/clk/clkdev.c
> @@ -11,6 +11,7 @@
>   */
>  =

>  #include <common.h>
> +#include <command.h>
>  #include <linux/list.h>
>  #include <errno.h>
>  #include <linux/err.h>
> @@ -166,3 +167,35 @@ void clkdev_drop(struct clk_lookup *cl)
>  	kfree(cl);
>  }
>  EXPORT_SYMBOL(clkdev_drop);
> +
> +#ifdef CONFIG_CMD_CLOCK_INFO
> +static int do_clock_info(struct command *cmdtp, int argc, char *argv[])
> +{
> +	struct clk_lookup *p;
> +
> +	puts("Clocks\n");
"global clocks"?
> +
> +	list_for_each_entry(p, &clocks, node)
> +		if (!p->dev_id)
> +			printf("%s: %wHz\n", p->con_id, clk_get_rate(p->clk));
> +
> +	puts("Clocks for dev\n");
"device specific clocks"?

> +
> +	list_for_each_entry(p, &clocks, node)
> +		if (p->dev_id)
> +			printf("%s[%s]: %wHz\n", p->con_id, p->dev_id,
> +					       clk_get_rate(p->clk));
> +
> +	return 0;
> +}
> +
> +static const __maybe_unused char cmd_clock_info_help[] =3D
> +"Print clocks info\n"
> +;
> +
> +BAREBOX_CMD_START(clock_info)
> +	.cmd		=3D do_clock_info,
> +	.usage		=3D "Clocks Info",
> +	BAREBOX_CMD_HELP(cmd_clock_info_help)
> +BAREBOX_CMD_END
> +#endif
> -- =

> 1.7.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
