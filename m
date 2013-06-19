Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpOQO-00042m-7k
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 19:52:13 +0000
Date: Wed, 19 Jun 2013 21:51:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130619195149.GK32299@pengutronix.de>
References: <1371625785-27704-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371625785-27704-1-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv3 1/4] ARM: OMAP: AM33xx: Add muxing function for spi0
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 19, 2013 at 09:09:42AM +0200, Teresa G=E1mez wrote:
> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied all, =


Thanks
 Sascha

> ---
>  arch/arm/mach-omap/am33xx_mux.c              |    5 +++++
>  arch/arm/mach-omap/include/mach/am33xx-mux.h |    1 +
>  2 files changed, 6 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_=
mux.c
> index 424d120..abc8586 100644
> --- a/arch/arm/mach-omap/am33xx_mux.c
> +++ b/arch/arm/mach-omap/am33xx_mux.c
> @@ -314,3 +314,8 @@ void am33xx_enable_mmc0_pin_mux(void)
>  {
>  	configure_module_pin_mux(mmc0_pin_mux);
>  }
> +
> +void am33xx_enable_spi0_pin_mux(void)
> +{
> +	configure_module_pin_mux(spi0_pin_mux);
> +}
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-mux.h b/arch/arm/mach=
-omap/include/mach/am33xx-mux.h
> index 44b93bd..d6b19dd 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-mux.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-mux.h
> @@ -256,5 +256,6 @@ extern void am33xx_enable_i2c2_pin_mux(void);
>  extern void am33xx_enable_uart0_pin_mux(void);
>  extern void am33xx_enable_uart2_pin_mux(void);
>  extern void am33xx_enable_mmc0_pin_mux(void);
> +extern void am33xx_enable_spi0_pin_mux(void);
>  =

>  #endif /*__AM33XX_MUX_H__ */
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
