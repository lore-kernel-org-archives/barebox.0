Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGIxc-0000TY-JI
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 05:15:37 +0000
Date: Mon, 12 Dec 2016 06:15:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161212051514.tn6ufcxvmabrbln6@pengutronix.de>
References: <20161208090544.10267-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161208090544.10267-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/3] spi: mvebu: fix register macros for Armada 370/XP
 clock divider
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 08, 2016 at 10:05:42AM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/spi/mvebu_spi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
> index 887a6a72134c..d61a545f02d8 100644
> --- a/drivers/spi/mvebu_spi.c
> +++ b/drivers/spi/mvebu_spi.c
> @@ -50,8 +50,8 @@
>  #define  IF_TRANSFER_2BYTE	BIT(5)
>  #define  IF_CLK_PRESCALE_POW2	BIT(4)
>  #define  IF_CLK_PRESCALE(x)	((x) & 0x0f)
> -#define  IF_CLK_PRE_PRESCALE(x)	(((((x) & 0xc) << 1) | ((x) & 0x1)) << 4)
> -#define  IF_CLK_PRESCALE_MASK	(IF_CLK_PRESCALE(7) | IF_CLK_PRE_PRESCALE(=
7))
> +#define  IF_CLK_PRE_PRESCALE(x)	(((((x) & 0x6) << 6) | ((x) & 0x1)) << 4)
> +#define  IF_CLK_PRESCALE_MASK	(IF_CLK_PRESCALE(0xf) | IF_CLK_PRE_PRESCAL=
E(7))
>  #define SPI_DATA_OUT		0x08
>  #define SPI_DATA_IN		0x0c
>  #define SPI_INT_CAUSE		0x10
> -- =

> 2.10.2
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
