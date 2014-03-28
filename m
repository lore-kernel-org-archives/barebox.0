Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTSkB-00067G-Qy
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:06:36 +0000
Date: Fri, 28 Mar 2014 10:06:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140328090600.GC17250@pengutronix.de>
References: <1395822565-14283-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395822565-14283-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: mach-xburst: fix DEBUG_LL=n build error
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 26, 2014 at 12:29:25PM +0400, Antony Pavlov wrote:
> Here is my error log:
> 
>   CC      common/startup.o
> In file included from arch/mips/mach-xburst/include/mach/debug_ll.h:25,
>                  from include/debug_ll.h:31,
>                  from common/startup.c:36:
> arch/mips/include/asm/debug_ll_ns16550.h: In function 'PUTC_LL':
> arch/mips/include/asm/debug_ll_ns16550.h:62: error: 'DEBUG_LL_UART_ADDR' undeclared (first use in this function)
> arch/mips/include/asm/debug_ll_ns16550.h:62: error: (Each undeclared identifier is reported only once
> arch/mips/include/asm/debug_ll_ns16550.h:62: error: for each function it appears in.)
> make[1]: *** [common/startup.o] Error 1
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/include/asm/debug_ll_ns16550.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
> index f36010c..032f0a2 100644
> --- a/arch/mips/include/asm/debug_ll_ns16550.h
> +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> @@ -59,9 +59,11 @@
>  
>  static __inline__ void PUTC_LL(char ch)
>  {
> +#ifdef CONFIG_DEBUG_LL
>  	while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_THRE))
>  		;
>  	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_THR);
> +#endif /* CONFIG_DEBUG_LL */
>  }
>  #else /* __ASSEMBLY__ */
>  /*
> -- 
> 1.9.0
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
