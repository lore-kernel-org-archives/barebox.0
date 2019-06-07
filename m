Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8Nc-0000ol-Ts
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 06:29:38 +0000
Date: Fri, 7 Jun 2019 08:29:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607062930.hx64ikj5xw7c2t62@pengutronix.de>
References: <20190604105552.20619-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604105552.20619-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH] MIPS: use anonymous labels in ENTRY_FUNCTION_END and
 STOP_WITH_DEBUG_EVENT macros
To: Peter Mamonov <pmamonov@gmail.com>
Cc: o.rempel@pengutronix.de, barebox@lists.infradead.org

On Tue, Jun 04, 2019 at 01:55:52PM +0300, Peter Mamonov wrote:
> Use of global labels of the same name inside ENTRY_FUNCTION_END and
> STOP_WITH_DEBUG_EVENT prevents simultaneous use of both macros. It also
> prevents multiple use of one of them.
> 
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  arch/mips/include/asm/asm.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
> index 019be4843b..be3a1bcdbc 100644
> --- a/arch/mips/include/asm/asm.h
> +++ b/arch/mips/include/asm/asm.h
> @@ -100,8 +100,8 @@ EXPORT(symbol)
>  	 nop;						\
>  							\
>  	/* No return */					\
> -__error:						\
> -	b	__error;				\
> +1:							\
> +	b	1b;					\
>  	 nop;
>  
>  /*
> @@ -114,8 +114,8 @@ __error:						\
>  	/* trigger a soft breakpoint for OpenOCD */	\
>  	SDBBP;						\
>  	/* position independent variant of dead loop */	\
> -	__error:					\
> -	b	__error;				\
> +1:							\
> +	b	1b;					\
>  	 nop;						\
>  	/* Call some code from .text section.		\
>  	 * It is needed to keep same linker script for	\
> -- 
> 2.20.1
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
