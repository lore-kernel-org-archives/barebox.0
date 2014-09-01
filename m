Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOOfL-0000sJ-Jv
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 10:16:52 +0000
Date: Mon, 1 Sep 2014 12:16:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901101623.GT5352@pengutronix.de>
References: <1407320269-32368-1-git-send-email-poggi.raph@gmail.com>
 <1407320269-32368-3-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1407320269-32368-3-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH v3 2/3] at91sam9g45: clock: add i2c clocks
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 06, 2014 at 12:17:48PM +0200, Rapha=EBl Poggi wrote:
> Add the device tree and non device tree at91 i2c clocks.
> =

> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/mach-at91/at91sam9g45.c |    4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sa=
m9g45.c
> index 9a50deb..d19d26a 100644
> --- a/arch/arm/mach-at91/at91sam9g45.c
> +++ b/arch/arm/mach-at91/at91sam9g45.c
> @@ -192,6 +192,10 @@ static struct clk_lookup periph_clocks_lookups[] =3D=
 {
>  	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
>  	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
>  	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
> +	CLKDEV_DEV_ID("at91sam9g10-i2c0", &twi0_clk),
> +	CLKDEV_DEV_ID("at91sam9g10-i2c1", &twi1_clk),
> +	CLKDEV_DEV_ID("fff84000.i2c", &twi0_clk),
> +	CLKDEV_DEV_ID("fff88000.i2c", &twi1_clk),

Can you use clkdev_add_physbase()? This way you wouldn't have to
register separate clocks for the device tree and non device tree case.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
