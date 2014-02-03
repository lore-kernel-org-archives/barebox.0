Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAF05-0000xz-IX
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 08:35:30 +0000
Date: Mon, 3 Feb 2014 09:35:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140203083506.GF16215@pengutronix.de>
References: <loom.20140128T004554-598@post.gmane.org>
 <20140128113311.GB16215@pengutronix.de>
 <loom.20140202T170955-777@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20140202T170955-777@post.gmane.org>
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
Subject: Re: i.mx21 ads nor flash
To: Cristiano De Alti <cristiano_dealti@hotmail.com>
Cc: barebox@lists.infradead.org

On Sun, Feb 02, 2014 at 04:17:22PM +0000, Cristiano De Alti wrote:
> Sascha Hauer <s.hauer@...> writes:
> 
> > 
> +CONFIG_FS_TFTP=y
> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> index 71dd3c8..514eab5 100644
> --- a/drivers/mtd/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -404,9 +404,9 @@ static ulong flash_get_size (struct flash_info *info)
>                                 erase_region_count, erase_region_size);
>  
>                         region->offset = cur_offset;
> -                       region->erasesize = erase_region_size;
> +                       region->erasesize = erase_region_size * size_ratio;
>                         region->numblocks = erase_region_count;
> -                       cur_offset += erase_region_size * erase_region_count;
> +                       cur_offset += erase_region_size * size_ratio *
> erase_region_count;

The patch looks correct. Could you split the patch into two, one with
the defconfig changes and one with the flash fix and send both with a
"<Signed-off-by>: Cristiano De Alti <cristiano_dealti@hotmail.com>" tag?

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
