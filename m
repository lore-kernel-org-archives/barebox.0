Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bUokI-0002Jp-NQ
 for barebox@lists.infradead.org; Wed, 03 Aug 2016 05:29:35 +0000
Date: Wed, 3 Aug 2016 07:29:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160803052912.GE20657@pengutronix.de>
References: <1469631879-27461-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1469631879-27461-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] mtd: spi-nor: add new variants
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 27, 2016 at 05:04:39PM +0200, Alexander Kurz wrote:
> Read access tested on W25Q20BW and MX25U4035.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 4b55b0c..748b328 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -526,6 +526,8 @@ static const struct spi_device_id spi_nor_ids[] = {
>  	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, 0) },
>  	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, SECT_4K) },
>  	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
> +	{ "mx25u4035",   INFO(0xc22533, 0, 64 * 1024,   8, SECT_4K) },
> +	{ "mx25u8035",   INFO(0xc22534, 0, 64 * 1024,  16, SECT_4K) },
>  	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, SECT_4K) },
>  	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
>  	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
> @@ -631,6 +633,9 @@ static const struct spi_device_id spi_nor_ids[] = {
>  	{ "w25x80", INFO(0xef3014, 0, 64 * 1024,  16, SECT_4K) },
>  	{ "w25x16", INFO(0xef3015, 0, 64 * 1024,  32, SECT_4K) },
>  	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
> +	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
> +	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
> +	{ "w25q20ew", INFO(0xef6012, 0, 64 * 1024,  4, SECT_4K) },
>  	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
>  	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64, SECT_4K) },
>  	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
> -- 
> 2.1.4
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
