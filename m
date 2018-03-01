Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erK47-0005hM-I7
 for barebox@lists.infradead.org; Thu, 01 Mar 2018 08:59:53 +0000
Date: Thu, 1 Mar 2018 09:59:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180301085939.36ot5tfnxprvene4@pengutronix.de>
References: <20180228093820.19423-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180228093820.19423-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] mtd: spi-nor: add support for w25q16dw
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 28, 2018 at 10:38:20AM +0100, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, although I would really prefer if we could start keeping the
table in barebox in sync with the one from the kernel.

Sascha

> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 5cf650c0e2..057638ec5a 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -641,6 +641,7 @@ static const struct spi_device_id spi_nor_ids[] = {
>  	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
>  	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
>  	{ "w25q20ew", INFO(0xef6012, 0, 64 * 1024,  4, SECT_4K) },
> +	{ "w25q16dw", INFO(0xef6015, 0, 64 * 1024, 32, SECT_4K) },
>  	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
>  	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64, SECT_4K) },
>  	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
> -- 
> 2.16.1
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
