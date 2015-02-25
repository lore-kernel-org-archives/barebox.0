Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YQWRO-0004CC-2R
 for barebox@lists.infradead.org; Wed, 25 Feb 2015 07:31:30 +0000
Date: Wed, 25 Feb 2015 08:31:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150225073108.GR12209@pengutronix.de>
References: <1424789630-10461-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424789630-10461-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM Samsung: fix booting from NAND without pbl
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 24, 2015 at 03:53:48PM +0100, Michael Olbrich wrote:
> This was broken in 558d72dc5116 (ARM Samsung: fix booting from NAND with
> pbl). '_text' is TEXT_BASE when building without pbl and (TEXT_BASE -
> SZ_2M) when building with pbl, so this works in both cases.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
> 
> I hope I understood how this should work and this is correct now. It worked
> for me with and without pbl. Anything else that could mess this up?
> 
> Michael
> 
>  arch/arm/mach-samsung/lowlevel-s3c24x0.S | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-samsung/lowlevel-s3c24x0.S b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
> index 626ad0418778..d43cdff52863 100644
> --- a/arch/arm/mach-samsung/lowlevel-s3c24x0.S
> +++ b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
> @@ -15,7 +15,6 @@
>   */
>  
>  #include <config.h>
> -#include <linux/sizes.h>
>  #include <mach/s3c-iomap.h>
>  
>  	.section ".text_bare_init.s3c24x0_disable_wd","ax"
> @@ -251,7 +250,7 @@ s3c24x0_nand_boot:
>  	beq 2f
>  	mov pc, lr	/* NOR case: nothing to do here */
>  
> -2:	ldr sp, =(TEXT_BASE - SZ_2M)	/* Setup a temporary stack in SDRAM */
> +2:	ldr sp, =_text	/* Setup a temporary stack in SDRAM */
>  /*
>   * We still run at a location we are not linked to. But lets still running
>   * from the internal SRAM, this may speed up the boot
> @@ -262,7 +261,7 @@ s3c24x0_nand_boot:
>  /*
>   * Adjust the return address to the correct address in SDRAM
>   */
> -	ldr r1, =(TEXT_BASE - SZ_2M)
> +	ldr r1, =_text

Since nand_boot() copies the image to _text I believe this is the
correct address in all cases. Applied, thanks

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
