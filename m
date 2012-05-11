Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSjuw-0005sB-VX
 for barebox@lists.infradead.org; Fri, 11 May 2012 07:05:37 +0000
Date: Fri, 11 May 2012 09:05:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511070530.GV27341@pengutronix.de>
References: <1336642512-23885-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336642512-23885-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFCv2 1/2] MIPS: start.S: add "barebox" label at _start + 0x10
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 10, 2012 at 01:35:11PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied (both)

Thanks
 Sascha

> ---
>  arch/mips/boot/start.S |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> index b756d40..e8868e1 100644
> --- a/arch/mips/boot/start.S
> +++ b/arch/mips/boot/start.S
> @@ -25,6 +25,8 @@
>  #include <asm/mipsregs.h>
>  #include <asm/asm.h>
>  #include <asm-generic/memory_layout.h>
> +#include <generated/compile.h>
> +#include <generated/utsrelease.h>
>  
>  	/*
>  	 * ADR macro instruction (inspired by ARM)
> @@ -52,6 +54,16 @@ _pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
>  	.align 4
>  
>  EXPORT(_start)
> +
> +	b	__start
> +	 nop
> +
> +	.org	0x10
> +	.ascii	"barebox " UTS_RELEASE " " UTS_VERSION
> +	.byte	0
> +
> +	.align 4
> +__start:
>  	/* disable watchpoints */
>  	mtc0	zero, CP0_WATCHLO
>  	mtc0	zero, CP0_WATCHHI
> -- 
> 1.7.10
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
