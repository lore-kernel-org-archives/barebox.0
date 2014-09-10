Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:67c:670:100:5054:ff:fe01:4dd6]
 (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRbI1-0001cx-RT
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 06:22:02 +0000
Date: Wed, 10 Sep 2014 08:21:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140910062133.GY5352@pengutronix.de>
References: <1410183458-19535-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410183458-19535-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH v2] mach-at91: declare device tree clock
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 08, 2014 at 03:37:37PM +0200, Rapha=EBl Poggi wrote:
> This commit use the clkdev_add_physbase function, to declare device tree =
and non device tree gpio clocks.
> =

> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>

Applied, thanks

I replaced the hardcoded values with the existing defines whily
applying.

Sascha

> ---
>  arch/arm/mach-at91/at91sam9g45.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> =

> diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sa=
m9g45.c
> index 9a50deb..584ef9d 100644
> --- a/arch/arm/mach-at91/at91sam9g45.c
> +++ b/arch/arm/mach-at91/at91sam9g45.c
> @@ -192,11 +192,6 @@ static struct clk_lookup periph_clocks_lookups[] =3D=
 {
>  	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
>  	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
>  	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
> -	CLKDEV_DEV_ID("at91rm9200-gpio0", &pioA_clk),
> -	CLKDEV_DEV_ID("at91rm9200-gpio1", &pioB_clk),
> -	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioC_clk),
> -	CLKDEV_DEV_ID("at91rm9200-gpio3", &pioDE_clk),
> -	CLKDEV_DEV_ID("at91rm9200-gpio4", &pioDE_clk),
>  	CLKDEV_DEV_ID("at91-pit", &mck),
>  	CLKDEV_CON_DEV_ID("hck1", "atmel_lcdfb", &lcdc_clk),
>  };
> @@ -238,6 +233,14 @@ static void __init at91sam9g45_register_clocks(void)
>  	clkdev_add_table(usart_clocks_lookups,
>  			 ARRAY_SIZE(usart_clocks_lookups));
>  =

> +	clkdev_add_physbase(&twi0_clk, 0xfff84000, NULL);
> +	clkdev_add_physbase(&twi1_clk, 0xfff88000, NULL);
> +	clkdev_add_physbase(&pioA_clk, 0xfffff200, NULL);
> +	clkdev_add_physbase(&pioB_clk, 0xfffff400, NULL);
> +	clkdev_add_physbase(&pioC_clk, 0xfffff600, NULL);
> +	clkdev_add_physbase(&pioDE_clk, 0xfffff800, NULL);
> +	clkdev_add_physbase(&pioDE_clk, 0xfffffa00, NULL);
> +
>  	if (cpu_is_at91sam9m10() || cpu_is_at91sam9m11())
>  		clk_register(&vdec_clk);
>  =

> -- =

> 2.1.0
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
