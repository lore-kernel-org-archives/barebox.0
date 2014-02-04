Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAaNu-00066w-Uo
 for barebox@lists.infradead.org; Tue, 04 Feb 2014 07:25:31 +0000
Date: Tue, 4 Feb 2014 08:25:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140204072508.GR16215@pengutronix.de>
References: <BLU0-SMTP17431D5E93FD5424E6A8C41F7AB0@phx.gbl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BLU0-SMTP17431D5E93FD5424E6A8C41F7AB0@phx.gbl>
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
Subject: Re: [PATCH] cfi_flash.c: correct calculation of region erasesize and
 offset for multiple (size_ratio > 1) chips in parallel
To: Cristiano De Alti <cristiano_dealti@hotmail.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 03, 2014 at 11:27:52PM +0100, Cristiano De Alti wrote:
> Signed-off-by: Cristiano De Alti <cristiano_dealti@hotmail.com>

Applied, thanks.

Sascha

> ---
>  drivers/mtd/nor/cfi_flash.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> index 71dd3c8..514eab5 100644
> --- a/drivers/mtd/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -404,9 +404,9 @@ static ulong flash_get_size (struct flash_info *info)
>  				erase_region_count, erase_region_size);
>  
>  			region->offset = cur_offset;
> -			region->erasesize = erase_region_size;
> +			region->erasesize = erase_region_size * size_ratio;
>  			region->numblocks = erase_region_count;
> -			cur_offset += erase_region_size * erase_region_count;
> +			cur_offset += erase_region_size * size_ratio * erase_region_count;
>  
>  			/* increase the space malloced for the sector start addresses */
>  			info->start = xrealloc(info->start, sizeof(ulong) * (erase_region_count + sect_cnt));
> -- 
> 1.7.10.4
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
