Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1ODwRx-0005nA-FS
	for barebox@lists.infradead.org; Mon, 17 May 2010 09:17:26 +0000
Date: Mon, 17 May 2010 11:17:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100517091723.GN31199@pengutronix.de>
References: <1273754207-7763-1-git-send-email-eric@eukrea.com>
	<1273754207-7763-2-git-send-email-eric@eukrea.com>
	<1273754207-7763-3-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1273754207-7763-3-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 3/3] freescale-mx*5-3-stack : fix __flash_header_start
To: Eric Benard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, May 13, 2010 at 02:36:47PM +0200, Eric Benard wrote:
> _start is now exception_vectors since it was rewritten in C
> (not tested on these boards but compile should fail without
> this patch)

Ok, applied to -master.

Sascha

> 
> Signed-off-by: Eric Benard <eric@eukrea.com>
> ---
>  board/freescale-mx25-3-stack/3stack.c       |    2 +-
>  board/freescale-mx35-3-stack/flash_header.c |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
> index 5b802ad..f5316bf 100644
> --- a/board/freescale-mx25-3-stack/3stack.c
> +++ b/board/freescale-mx25-3-stack/3stack.c
> @@ -41,7 +41,7 @@ extern unsigned long _stext;
>  
>  void __naked __flash_header_start go(void)
>  {
> -	__asm__ __volatile__("b _start\n");
> +	__asm__ __volatile__("b exception_vectors\n");
>  }
>  
>  struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
> diff --git a/board/freescale-mx35-3-stack/flash_header.c b/board/freescale-mx35-3-stack/flash_header.c
> index 968a948..171c499 100644
> --- a/board/freescale-mx35-3-stack/flash_header.c
> +++ b/board/freescale-mx35-3-stack/flash_header.c
> @@ -5,7 +5,7 @@ extern unsigned long _stext;
>  
>  void __naked __flash_header_start go(void)
>  {
> -	__asm__ __volatile__("b _start\n");
> +	__asm__ __volatile__("b exception_vectors\n");
>  }
>  
>  struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
> -- 
> 1.6.3.3
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
