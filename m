Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnflq-0003EC-O8
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 10:03:15 +0000
Date: Tue, 23 Jun 2020 12:03:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200623100313.GZ11869@pengutronix.de>
References: <20200622084205.23897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200622084205.23897-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] ARM: at91: add at91sam9/sama5 reset reason detection
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 22, 2020 at 10:42:05AM +0200, Ahmad Fatoum wrote:
> The reset controller status register contains information about the last
> reset's cause. Tell barebox about it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-at91/at91sam9_rst.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-at91/at91sam9_rst.c b/arch/arm/mach-at91/at91sam9_rst.c
> index 8f03576e698f..a61a26936f5a 100644
> --- a/arch/arm/mach-at91/at91sam9_rst.c
> +++ b/arch/arm/mach-at91/at91sam9_rst.c
> @@ -7,14 +7,42 @@
>  #include <init.h>
>  #include <io.h>
>  #include <restart.h>
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <mach/at91_rstc.h>
> +#include <reset_source.h>
>  
>  struct at91sam9x_rst {
>  	struct restart_handler restart;
>  	void __iomem *base;
>  };
>  
> +static int reasons[] = {
> +	RESET_POR, /* GENERAL  Both VDDCORE and VDDBU rising */
> +	RESET_WKE, /* WAKEUP   VDDCORE rising */
> +	RESET_WDG, /* WATCHDOG Watchdog fault occurred */
> +	RESET_RST, /* SOFTWARE Reset required by the software */
> +	RESET_EXT, /* USER     NRST pin detected low */
> +};
> +
> +static void at91sam9x_set_reset_reason(struct device_d *dev,
> +				       void __iomem *base)
> +{
> +	enum reset_src_type type = RESET_UKWN;
> +	u32 sr, rsttyp;
> +
> +	sr = readl(base + AT91_RSTC_SR);
> +	rsttyp = FIELD_GET(AT91_RSTC_RSTTYP, sr);
> +
> +	if (rsttyp < ARRAY_SIZE(reasons))
> +		type = reasons[rsttyp];
> +
> +	dev_info(dev, "reset reason %s (RSTC_SR: 0x%05x)\n",
> +		reset_source_to_string(type), sr);
> +
> +	reset_source_set(type);
> +}
> +
>  static void __noreturn at91sam9x_restart_soc(struct restart_handler *rst)
>  {
>  	struct at91sam9x_rst *priv = container_of(rst, struct at91sam9x_rst, restart);
> @@ -52,6 +80,8 @@ static int at91sam9x_rst_probe(struct device_d *dev)
>  
>  	clk_enable(clk);
>  
> +	at91sam9x_set_reset_reason(dev, priv->base);
> +
>  	priv->restart.name = "at91sam9x-rst";
>  	priv->restart.restart = at91sam9x_restart_soc;
>  
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
