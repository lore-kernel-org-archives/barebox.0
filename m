Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuBsd-0008HD-U5
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 07:24:09 +0000
Date: Mon, 27 Aug 2018 09:23:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180827072355.thh2jkcmabnnkamj@pengutronix.de>
References: <20180824160842.12844-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180824160842.12844-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] bootsource: handle SPI-NOR in the same way as SPI-EEPROM
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 24, 2018 at 06:08:42PM +0200, Lucas Stach wrote:
> The NOR flash device itself does not have an alias in the kernel DT, so
> we want to have the bootsource pointing at the SPI controller the flash
> chip is attached to.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  common/bootsource.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/common/bootsource.c b/common/bootsource.c
> index e68338faa5b7..4ef8d8ad9585 100644
> --- a/common/bootsource.c
> +++ b/common/bootsource.c
> @@ -82,6 +82,7 @@ char *bootsource_get_alias_name(void)
>  		stem = bootsource_str[BOOTSOURCE_I2C];
>  		break;
>  	case BOOTSOURCE_SPI_EEPROM:
> +	case BOOTSOURCE_SPI_NOR:
>  		stem = bootsource_str[BOOTSOURCE_SPI];
>  		break;
>  	case BOOTSOURCE_SERIAL:	/* FALLTHROUGH */
> -- 
> 2.18.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
