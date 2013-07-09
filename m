Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwRrX-0007tU-D8
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 06:57:23 +0000
Date: Tue, 9 Jul 2013 08:57:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130709065701.GP516@pengutronix.de>
References: <1373084755-16398-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373084755-16398-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: rzx50: add nmon support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jul 06, 2013 at 08:25:55AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/Kconfig                                      | 1 +
>  arch/mips/boards/rzx50/include/board/board_pbl_start.h | 3 +++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index b2452c7..ca240d2 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -72,6 +72,7 @@ config MACH_MIPS_XBURST
>  	select HAS_DEBUG_LL
>  	select HAVE_PBL_IMAGE
>  	select HAVE_IMAGE_COMPRESSION
> +	select HAS_NMON
>  endchoice
>  
>  source arch/mips/mach-malta/Kconfig
> diff --git a/arch/mips/boards/rzx50/include/board/board_pbl_start.h b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
> index f71641a..fb914d9 100644
> --- a/arch/mips/boards/rzx50/include/board/board_pbl_start.h
> +++ b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
> @@ -19,6 +19,7 @@
>  
>  #include <asm/pbl_macros.h>
>  #include <mach/debug_ll.h>
> +#include <asm/pbl_nmon.h>
>  
>  	.macro	board_pbl_start
>  	.set	push
> @@ -34,6 +35,8 @@
>  	debug_ll_ns16550_outc '.'
>  	debug_ll_ns16550_outnl
>  
> +	mips_nmon
> +
>  	copy_to_link_location	pbl_start
>  
>  	.set	pop
> -- 
> 1.8.3.1
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
