Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwjf2-0004Fr-MX
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 06:48:06 +0000
Date: Tue, 26 Sep 2017 08:47:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170926064742.w3c6rldd5awd7gx3@pengutronix.de>
References: <20170922095459.32629-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170922095459.32629-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX53 QSB: drop phy reset handling in board file
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 22, 2017 at 11:54:59AM +0200, Uwe Kleine-K=F6nig wrote:
> Since commit
> =

> 	5c1846b62524 ("ARM: i.mx53: Parse Reset GPIO pin in FEC driver from Devi=
cetree")
> =

> the fec driver ensures a phy reset. As there is little use in resetting
> twice, drop the reset from the board file.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boards/freescale-mx53-qsb/board.c | 11 -----------
>  1 file changed, 11 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/boards/freescale-mx53-qsb/board.c b/arch/arm/boards=
/freescale-mx53-qsb/board.c
> index f75c9d12cd6b..0b1c927b81d4 100644
> --- a/arch/arm/boards/freescale-mx53-qsb/board.c
> +++ b/arch/arm/boards/freescale-mx53-qsb/board.c
> @@ -64,15 +64,6 @@ static void set_board_rev(int rev)
>  	loco_system_rev =3D  (loco_system_rev & ~(0xF << 8)) | (rev & 0xF) << 8;
>  }
>  =

> -#define LOCO_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
> -
> -static void loco_fec_reset(void)
> -{
> -	gpio_direction_output(LOCO_FEC_PHY_RST, 0);
> -	mdelay(1);
> -	gpio_set_value(LOCO_FEC_PHY_RST, 1);
> -}
> -
>  #define MX53_LOCO_USB_PWREN		IMX_GPIO_NR(7, 8)
>  =

>  static int loco_late_init(void)
> @@ -148,8 +139,6 @@ static int loco_late_init(void)
>  	gpio_direction_output(MX53_LOCO_USB_PWREN, 0);
>  	gpio_set_value(MX53_LOCO_USB_PWREN, 1);
>  =

> -	loco_fec_reset();
> -
>  	set_silicon_rev(imx_silicon_revision());
>  =

>  	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
> -- =

> 2.11.0
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
