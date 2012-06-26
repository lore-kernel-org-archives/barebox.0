Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjb0K-00055L-O0
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:00:49 +0000
Date: Tue, 26 Jun 2012 21:00:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120626190046.GO14321@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
 <1340704314-12593-5-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340704314-12593-5-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 04/12] mach-davinci: setup pin mux for da850
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 26, 2012 at 11:51:46AM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-davinci/Makefile |    1 +
>  arch/arm/mach-davinci/da850.c  |  279 ++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 280 insertions(+)
>  create mode 100644 arch/arm/mach-davinci/da850.c
> 
> diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
> index 936566e..d617d9e 100644
> --- a/arch/arm/mach-davinci/Makefile
> +++ b/arch/arm/mach-davinci/Makefile
> @@ -1,4 +1,5 @@
>  obj-y += clock.o
>  obj-y += clocksource.o
> +obj-y += da850.o
>  obj-y += gpio.o
>  obj-y += mux.o
> diff --git a/arch/arm/mach-davinci/da850.c b/arch/arm/mach-davinci/da850.c
> new file mode 100644
> index 0000000..5d89a87
> --- /dev/null
> +++ b/arch/arm/mach-davinci/da850.c
> +
> +static int da8xx_mux_init(void)
> +{
> +	if (davinci_cfg_reg_list(da850_uart2_pins))
> +		printf("mux failed for da850_uart2_pins\n");
> +
> +	if (davinci_cfg_reg_list(da850_gpio_pins))
> +		printf("mux failed for da850_gpio_pins\n");
> +
> +	if (davinci_cfg_reg_list(da850_emifa_pins))
> +		printf("mux failed for da850_emifa_pins\n");
> +
> +	if (davinci_cfg_reg_list(da850_spi0_pins))
> +		printf("mux failed for da850_spi0_pins\n");
> +
> +	if (davinci_cfg_reg_list(da850_spi1_pins))
> +		printf("mux failed for da850_spi1_pins\n");
> +
> +	if (davinci_cfg_reg_list(da850_emac_pins))
> +		printf("mux failed for da850_emac_pins\n");
> +
> +	return 0;
> +}
> +postconsole_initcall(da8xx_mux_init);

Is this really common to all da8xx boards?

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
