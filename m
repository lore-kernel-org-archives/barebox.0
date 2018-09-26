Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g53lJ-0004QA-9B
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 06:57:32 +0000
Date: Wed, 26 Sep 2018 08:56:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180926065657.GP4097@pengutronix.de>
References: <20180925105914.GB15416@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180925105914.GB15416@lenoch>
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
Subject: Re: [PATCH] spi: atmel_spi: fix duplicate const warning
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Tue, Sep 25, 2018 at 12:59:14PM +0200, Ladislav Michl wrote:
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  drivers/spi/atmel_spi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
> index 446e1d993..a0243be85 100644
> --- a/drivers/spi/atmel_spi.c
> +++ b/drivers/spi/atmel_spi.c
> @@ -482,7 +482,7 @@ out_free:
>  	return ret;
>  }
>  
> -const static __maybe_unused const struct of_device_id atmel_spi_dt_ids[] = {
> +const static __maybe_unused struct of_device_id atmel_spi_dt_ids[] = {
>  	{ .compatible = "atmel,at91rm9200-spi" },
>  	{ /* sentinel */ }
>  };
> -- 
> 2.19.0
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
