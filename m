Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WHqad-0002XK-0F
 for barebox@lists.infradead.org; Mon, 24 Feb 2014 08:08:39 +0000
Date: Mon, 24 Feb 2014 09:08:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140224080817.GP17250@pengutronix.de>
References: <1392935821-14783-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392935821-14783-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 1/3] ARM: i.MX6: UDOO: rename watchdog function
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

Hi Rapha=EBl,

On Thu, Feb 20, 2014 at 02:36:59PM -0800, Rapha=EBl Poggi wrote:
> Rename the watchdog function to fit others functions names.
> =

> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/boards/udoo/board.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> =

> diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
> index 9027eb1..0a056fb 100644
> --- a/arch/arm/boards/udoo/board.c
> +++ b/arch/arm/boards/udoo/board.c
> @@ -147,7 +147,7 @@ static iomux_v3_cfg_t const wdog_pads[] =3D {
>  =

>  #define WDT_EN      IMX_GPIO_NR(5, 4)
>  #define WDT_TRG     IMX_GPIO_NR(3, 19)
> -static void setup_iomux_wdog(void)
> +static void udoo_wdog_init(void)
>  {
>  	mxc_iomux_v3_setup_multiple_pads(wdog_pads, ARRAY_SIZE(wdog_pads));
>  	gpio_direction_output(WDT_TRG, 0);
> @@ -157,11 +157,10 @@ static void setup_iomux_wdog(void)
>  =

>  static void udoo_epit_init(void)
>  {
> -
> -	writel(0x0000000, 0x20D0000);
> -	writel(0x142000F, 0x20D0000);
> -	writel(0x10000, 0x20D0008);
> -	writel(0x0, 0x20D000C);
> +	writel(0x0000000, MX6_EPIT1_BASE_ADDR);
> +	writel(0x142000F, MX6_EPIT1_BASE_ADDR);
> +	writel(0x30000, MX6_EPIT1_BASE_ADDR + 0x8);
> +	writel(0x0, MX6_EPIT1_BASE_ADDR + 0xC);
>  }

This is an unrelated change which shouldn't be in this patch. I squashed
this series in the original commit adding udoo support anyway. so it
doesn't matter in this case.
BTW what does this EPIT initialization do and what do you need it for?
It's quite unusual to initialize the EPIT since it's not used by
barebox.

Sascha

>  =

>  static int udoo_devices_init(void)
> @@ -169,7 +168,7 @@ static int udoo_devices_init(void)
>  	if (!of_machine_is_compatible("udoo,imx6qdl-udoo"))
>  		return 0;
>  =

> -	setup_iomux_wdog();
> +	udoo_wdog_init();
>  	udoo_ehci_init();
>  	udoo_epit_init();
>  =

> -- =

> 1.8.3.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
