Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIxvV-0008GV-Cx
 for barebox@lists.infradead.org; Thu, 17 Sep 2020 17:42:34 +0000
References: <1599827638-15320-1-git-send-email-u74147@gmail.com>
 <1599827638-15320-2-git-send-email-u74147@gmail.com>
 <c56b316a-1fba-3e2e-530f-da5d9c810d1a@pengutronix.de>
 <20200917135606.GA12263@beer>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7101cee8-bdf4-4869-daf2-e9f2aac72e4e@pengutronix.de>
Date: Thu, 17 Sep 2020 19:42:30 +0200
MIME-Version: 1.0
In-Reply-To: <20200917135606.GA12263@beer>
Content-Language: en-US
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
Subject: Re: [PATCH] MIPS: DEBUG_LL_UART_DIVISOR is 0, use a0 instead
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

Hello,

On 9/17/20 3:56 PM, Du Huanpeng wrote:
> Hi, this patch should not intoduce any regression to existing boards,
> because: 
> 
>  1. pass divisor by DEBUG_LL_UART_DIVISOR
> 
> #define DEBUG_LL_UART_DIVISOR NUMBER
> 
> which the ``NUMBER'' is not ``0'' (zero). In this case, this patch
> has no effect and this line of code will be removed by preprocessor,
> before compile :)
>         move    t1, a0
> 
>  2. Pass divisor by a0
> 
> #define DEBUG_LL_UART_DIVISOR 0
> 
> recalculate the divisor is needed when the pll/div setting is changed
> outside of barebox. e.g. ejtag. and load barebox and run in ram.
> 
> Because 0 maybe an invalid value for a divisor, so I take this value for
> a hint to pass a0 as divisor. this will not conflict with other boards
> which pass divisor by defining DEBUG_LL_UART_DIVISOR with a valied value.

I guess we can agree that

  debug_ll_ns16550_init(
#if DEBUG_LL_UART_DIVISOR
  int a0
#endif
  );

is not the best way to go about it, so why do its equivalent in assembly?
 
>> you should migrate all users of this function all at once to supply a valid divisor
>> (probably `move a0, DEBUG_LL_UART_DIVISOR`).
> 
> MIPS use ``li'' load immediate, and move to copy inter registers.
> so, maybe change my patch to:
> 
> #if DEBUG_LL_UART_DIVISOR
> 	li	t1, DEBUG_LL_UART_DIVISOR
> #else
> 	move	t1, a0
> #endif

I'd prefer you keep it as move t1, a0 without an ifdef and move the argument
passing out of debug_ll_ns16550_init.

Cheers
Ahmad

> 
> - - - 
> or even do a bit tricky:
> 
> --- a/arch/mips/include/asm/debug_ll_ns16550.h
> +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> @@ -65,7 +65,7 @@ static inline void PUTC_LL(char ch)
>  	li	t1, UART_LCR_DLAB		/* DLAB on */
>  	sb	t1, UART_LCR(t0)		/* Write it out */
>  
> -	li	t1, DEBUG_LL_UART_DIVISOR
> +	add	t1, zero, DEBUG_LL_UART_DIVISOR
>  	sb	t1, UART_DLL(t0)		/* write low order byte */
>  	srl	t1, t1, 8
>  	sb	t1, UART_DLM(t0)		/* write high order byte */
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
