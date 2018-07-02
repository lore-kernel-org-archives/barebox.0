Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZq3t-0003d1-3t
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 04:03:39 +0000
Date: Mon, 2 Jul 2018 06:03:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180702040321.ifo265blmqfchmfw@pengutronix.de>
References: <20180629105823.16181-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180629105823.16181-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: don't include generated header files into MIPS asm
 files
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 29, 2018 at 01:58:23PM +0300, Antony Pavlov wrote:
> This patch came out of discussions in the 'MIPS parallel build breakage' e-mail thread:
> 
>     http://lists.infradead.org/pipermail/barebox/2018-March/032251.html
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/include/asm/pbl_macros.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

\o/ Applied, thanks

I'll add MIPS back to my autobuilder then.

Sascha

> 
> diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
> index 18115c8489..bb3182cda9 100644
> --- a/arch/mips/include/asm/pbl_macros.h
> +++ b/arch/mips/include/asm/pbl_macros.h
> @@ -25,8 +25,6 @@
>  #include <asm/mipsregs.h>
>  #include <asm/asm.h>
>  #include <asm-generic/memory_layout.h>
> -#include <generated/compile.h>
> -#include <generated/utsrelease.h>
>  #include <asm/addrspace.h>
>  #include <asm/cacheops.h>
>  
> @@ -174,7 +172,7 @@ copy_loop_exit:
>  	 nop
>  
>  	.org	0x10
> -	.ascii	"barebox " UTS_RELEASE " " UTS_VERSION
> +	.ascii	"barebox"
>  	.byte	0
>  
>  	.align	4
> -- 
> 2.18.0
> 
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
