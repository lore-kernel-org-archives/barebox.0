Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLrvE-0002bg-Ch
 for barebox@lists.infradead.org; Fri, 25 Sep 2020 17:54:17 +0000
References: <1599827638-15320-1-git-send-email-u74147@gmail.com>
 <1599827638-15320-2-git-send-email-u74147@gmail.com>
 <c56b316a-1fba-3e2e-530f-da5d9c810d1a@pengutronix.de>
 <20200917135606.GA12263@beer>
 <7101cee8-bdf4-4869-daf2-e9f2aac72e4e@pengutronix.de>
 <20200925164259.GA21154@black>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1f4b3092-7941-17ec-11f9-ce76362561b1@pengutronix.de>
Date: Fri, 25 Sep 2020 19:54:12 +0200
MIME-Version: 1.0
In-Reply-To: <20200925164259.GA21154@black>
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

Hello Du,

On 9/25/20 6:42 PM, Du Huanpeng wrote:
> Hi, How about this, I send this for review, if it is ok,
> I will send a patch later.
> 
> I add a argument to the macro, and set a default parameter.
> 
> +.macro	debug_ll_ns16550_init divisor=DEBUG_LL_UART_DIVISOR

Sounds great! Much less error prone IMO.

> 
> 
> +	/* three forms for ``call'' the macro */
> pass a register name
> +	debug_ll_ns16550_init v0
> 
> pass a immediate number
> +	debug_ll_ns16550_init 888
> 
> use this macro as usual before
> +	debug_ll_ns16550_init
> 
> ----8<-----
> 
> diff --git a/arch/mips/boards/loongson-ls1b/lowlevel.S b/arch/mips/boards/loongson-ls1b/lowlevel.S
> index af6ad54e1..7120d80ef 100644
> --- a/arch/mips/boards/loongson-ls1b/lowlevel.S
> +++ b/arch/mips/boards/loongson-ls1b/lowlevel.S
> @@ -28,8 +28,14 @@ ENTRY_FUNCTION(BOARD_PBL_START)
>  
>  	pbl_loongson1_uart_enable
>  	pbl_loongson1_calc_prescale 115200
> -	move	a0, v0
> +
> +	/* three forms for ``call'' the macro */
> +	debug_ll_ns16550_init v0
> +	debug_ll_ns16550_init 888
> +	debug_ll_ns16550_init
> +
>  	debug_ll_ns16550_init
> +
>  	debug_ll_ns16550_outnl
>  	debug_ll_outc '.'
>  	debug_ll_ns16550_outnl
> diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
> index a33587a15..44f3d5976 100644
> --- a/arch/mips/include/asm/debug_ll_ns16550.h
> +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> @@ -58,17 +58,14 @@ static inline void PUTC_LL(char ch)
>   * Macros for use in assembly language code
>   */
>  
> -.macro	debug_ll_ns16550_init
> +.macro	debug_ll_ns16550_init divisor=DEBUG_LL_UART_DIVISOR
>  #ifdef CONFIG_DEBUG_LL
>  	la	t0, DEBUG_LL_UART_ADDR
>  
>  	li	t1, UART_LCR_DLAB		/* DLAB on */
>  	sb	t1, UART_LCR(t0)		/* Write it out */
>  
> -	li	t1, DEBUG_LL_UART_DIVISOR
> -#if DEBUG_LL_UART_DIVISOR == 0
> -	move	t1, a0
> -#endif
> +	add	t1, zero, \divisor
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
