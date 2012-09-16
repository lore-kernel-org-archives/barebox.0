Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDA30-0005L5-GC
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:17:47 +0000
Date: Sun, 16 Sep 2012 10:17:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916081744.GD6180@pengutronix.de>
References: <1347709506-8669-1-git-send-email-marcus.folkesson@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347709506-8669-1-git-send-email-marcus.folkesson@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: extend NAND flash detection to new MLC chips
To: Marcus Folkesson <marcus.folkesson@gmail.com>
Cc: barebox@lists.infradead.org

Hi Marcus,

On Sat, Sep 15, 2012 at 01:45:06PM +0200, Marcus Folkesson wrote:
> Some of the newer MLC devices have a 6-byte ID sequence in which
> several field definitions differ from older chips in a manner that is
> not backward compatible.
> 
> This method is already used in the Linux Kernel.
> 
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>

Applied, thanks. I dropped the patch adding one of the new nand ids
below from next in favour for this more complete list of new nand ids.

> diff --git a/drivers/mtd/nand/nand_ids.c b/drivers/mtd/nand/nand_ids.c
> index cb53fc6..73d4cc2 100644
> --- a/drivers/mtd/nand/nand_ids.c
> +++ b/drivers/mtd/nand/nand_ids.c
> @@ -107,17 +107,47 @@ struct nand_flash_dev nand_flash_ids[] = {
>  	{__NANDSTR("NAND 512MiB 3,3V 16-bit"),	0xCC, 0, 512, 0, LP_OPTIONS16},
>  
>  	/* 8 Gigabit */
> -	{__NANDSTR("NAND 1GiB 1,8V 8-bit"),	0xA3, 0, 1024, 0, LP_OPTIONS},
> -	{__NANDSTR("NAND 1GiB 3,3V 8-bit"),	0xD3, 0, 1024, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 1GiB 1,8V 8-bit"),		0xA3, 0, 1024, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 1GiB 3,3V 8-bit"),		0xD3, 0, 1024, 0, LP_OPTIONS},
>  	{__NANDSTR("NAND 1GiB 1,8V 16-bit"),	0xB3, 0, 1024, 0, LP_OPTIONS16},
>  	{__NANDSTR("NAND 1GiB 3,3V 16-bit"),	0xC3, 0, 1024, 0, LP_OPTIONS16},
>  
>  	/* 16 Gigabit */
> -	{__NANDSTR("NAND 2GiB 1,8V 8-bit"),	0xA5, 0, 2048, 0, LP_OPTIONS},
> -	{__NANDSTR("NAND 2GiB 3,3V 8-bit"),	0xD5, 0, 2048, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 2GiB 1,8V 8-bit"),		0xA5, 0, 2048, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 2GiB 3,3V 8-bit"),		0xD5, 0, 2048, 0, LP_OPTIONS},
>  	{__NANDSTR("NAND 2GiB 1,8V 16-bit"),	0xB5, 0, 2048, 0, LP_OPTIONS16},
>  	{__NANDSTR("NAND 2GiB 3,3V 16-bit"),	0xC5, 0, 2048, 0, LP_OPTIONS16},
>  
> +	/* 32 Gigabit */
> +	{__NANDSTR("NAND 4GiB 1,8V 8-bit"),		0xA7, 0, 4096, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 4GiB 3,3V 8-bit"),		0xD7, 0, 4096, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 4GiB 1,8V 16-bit"),	0xB7, 0, 4096, 0, LP_OPTIONS16},
> +	{__NANDSTR("NAND 4GiB 3,3V 16-bit"),	0xC7, 0, 4096, 0, LP_OPTIONS16},
> +
> +	/* 64 Gigabit */
> +	{__NANDSTR("NAND 8GiB 1,8V 8-bit"),		0xAE, 0, 8192, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 8GiB 3,3V 8-bit"),		0xDE, 0, 8192, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 8GiB 1,8V 16-bit"),	0xBE, 0, 8192, 0, LP_OPTIONS16},
> +	{__NANDSTR("NAND 8GiB 3,3V 16-bit"),	0xCE, 0, 8192, 0, LP_OPTIONS16},
> +
> +	/* 128 Gigabit */
> +	{__NANDSTR("NAND 16GiB 1,8V 8-bit"),	0x1A, 0, 16384, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 16GiB 3,3V 8-bit"),	0x3A, 0, 16384, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 16GiB 1,8V 16-bit"),	0x2A, 0, 16384, 0, LP_OPTIONS16},
> +	{__NANDSTR("NAND 16GiB 3,3V 16-bit"),	0x4A, 0, 16384, 0, LP_OPTIONS16},
> +
> +	/* 256 Gigabit */
> +	{__NANDSTR("NAND 32GiB 1,8V 8-bit"),	0x1C, 0, 32768, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 32GiB 3,3V 8-bit"),	0x3C, 0, 32768, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 32GiB 1,8V 16-bit"),	0x2C, 0, 32768, 0, LP_OPTIONS16},
> +	{__NANDSTR("NAND 32GiB 3,3V 16-bit"),	0x4C, 0, 32768, 0, LP_OPTIONS16},
> +
> +	/* 512 Gigabit */
> +	{__NANDSTR("NAND 64GiB 1,8V 8-bit"),	0x1E, 0, 65536, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 64GiB 3,3V 8-bit"),	0x3E, 0, 65536, 0, LP_OPTIONS},
> +	{__NANDSTR("NAND 64GiB 1,8V 16-bit"),	0x2E, 0, 65536, 0, LP_OPTIONS16},
> +	{__NANDSTR("NAND 64GiB 3,3V 16-bit"),	0x4E, 0, 65536, 0, LP_OPTIONS16},

BTW do you have one of those chips > 4GiB? I bet barebox does not work out
of the box with these.

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
