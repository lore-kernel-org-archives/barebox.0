Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGjiN-0007g2-0O
 for barebox@lists.infradead.org; Fri, 11 Sep 2020 14:07:47 +0000
References: <1599827638-15320-1-git-send-email-u74147@gmail.com>
 <1599827638-15320-2-git-send-email-u74147@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c56b316a-1fba-3e2e-530f-da5d9c810d1a@pengutronix.de>
Date: Fri, 11 Sep 2020 16:07:43 +0200
MIME-Version: 1.0
In-Reply-To: <1599827638-15320-2-git-send-email-u74147@gmail.com>
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
To: Du Huanpeng <u74147@gmail.com>, barebox@lists.infradead.org

On 9/11/20 2:33 PM, Du Huanpeng wrote:
> this make it possiable pass a0 as divisor to calculate uart baudrate
> in run time on boot.

This is not Ok. Your last commit has your board pass the divisor in a0 now, but other
boards, like the netgear-wg102, don't. Your change might break their UART because the
code there doesn't expect that a0 needs to have a valid value. If you want to do this,
you should migrate all users of this function all at once to supply a valid divisor
(probably `move a0, DEBUG_LL_UART_DIVISOR`).

It's same thing in C. You don't add a new parameter to a function without checking
that all callsites handle this correctly.

> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  arch/mips/include/asm/debug_ll_ns16550.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
> index df58c4c..a33587a 100644
> --- a/arch/mips/include/asm/debug_ll_ns16550.h
> +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> @@ -66,6 +66,9 @@ static inline void PUTC_LL(char ch)
>  	sb	t1, UART_LCR(t0)		/* Write it out */
>  
>  	li	t1, DEBUG_LL_UART_DIVISOR
> +#if DEBUG_LL_UART_DIVISOR == 0
> +	move	t1, a0
> +#endif
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
