Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpwLA-00075m-LZ
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 08:37:21 +0000
Date: Mon, 9 Dec 2013 09:36:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131209083657.GM24559@pengutronix.de>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386409020-11914-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 1/7] atmel_nand: check gpio validity before using it
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org


The series looks fine for me. Jean-Christophe?

Sascha

On Sat, Dec 07, 2013 at 10:36:54AM +0100, Eric B=E9nard wrote:
> else we get : "invalid GPIO -22"
> (as enable_pin is EINVAL)
> =

> tested on SAMA5D35
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/mtd/nand/atmel_nand.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index a0f0966..658ae52 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -107,7 +107,7 @@ static struct nand_ecclayout atmel_pmecc_oobinfo;
>   */
>  static void atmel_nand_enable(struct atmel_nand_host *host)
>  {
> -	if (host->board->enable_pin)
> +	if (gpio_is_valid(host->board->enable_pin))
>  		gpio_set_value(host->board->enable_pin, 0);
>  }
>  =

> @@ -116,7 +116,7 @@ static void atmel_nand_enable(struct atmel_nand_host =
*host)
>   */
>  static void atmel_nand_disable(struct atmel_nand_host *host)
>  {
> -	if (host->board->enable_pin)
> +	if (gpio_is_valid(host->board->enable_pin))
>  		gpio_set_value(host->board->enable_pin, 1);
>  }
>  =

> -- =

> 1.8.3.1
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
