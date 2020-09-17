Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIuOq-0006sJ-HD
 for barebox@lists.infradead.org; Thu, 17 Sep 2020 13:56:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id k15so1245179pfc.12
 for <barebox@lists.infradead.org>; Thu, 17 Sep 2020 06:56:34 -0700 (PDT)
Date: Thu, 17 Sep 2020 21:56:08 +0800
From: Du Huanpeng <u74147@gmail.com>
Message-ID: <20200917135606.GA12263@beer>
References: <1599827638-15320-1-git-send-email-u74147@gmail.com>
 <1599827638-15320-2-git-send-email-u74147@gmail.com>
 <c56b316a-1fba-3e2e-530f-da5d9c810d1a@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c56b316a-1fba-3e2e-530f-da5d9c810d1a@pengutronix.de>
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
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, this patch should not intoduce any regression to existing boards,
because: 

 1. pass divisor by DEBUG_LL_UART_DIVISOR

#define DEBUG_LL_UART_DIVISOR NUMBER

which the ``NUMBER'' is not ``0'' (zero). In this case, this patch
has no effect and this line of code will be removed by preprocessor,
before compile :)
        move    t1, a0

 2. Pass divisor by a0

#define DEBUG_LL_UART_DIVISOR 0

recalculate the divisor is needed when the pll/div setting is changed
outside of barebox. e.g. ejtag. and load barebox and run in ram.

Because 0 maybe an invalid value for a divisor, so I take this value for
a hint to pass a0 as divisor. this will not conflict with other boards
which pass divisor by defining DEBUG_LL_UART_DIVISOR with a valied value.

> you should migrate all users of this function all at once to supply a valid divisor
> (probably `move a0, DEBUG_LL_UART_DIVISOR`).

MIPS use ``li'' load immediate, and move to copy inter registers.
so, maybe change my patch to:

#if DEBUG_LL_UART_DIVISOR
	li	t1, DEBUG_LL_UART_DIVISOR
#else
	move	t1, a0
#endif

- - - 
or even do a bit tricky:

--- a/arch/mips/include/asm/debug_ll_ns16550.h
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -65,7 +65,7 @@ static inline void PUTC_LL(char ch)
 	li	t1, UART_LCR_DLAB		/* DLAB on */
 	sb	t1, UART_LCR(t0)		/* Write it out */
 
-	li	t1, DEBUG_LL_UART_DIVISOR
+	add	t1, zero, DEBUG_LL_UART_DIVISOR
 	sb	t1, UART_DLL(t0)		/* write low order byte */
 	srl	t1, t1, 8
 	sb	t1, UART_DLM(t0)		/* write high order byte */
-- 
2.7.4

this will allow to pass divisor by a number or a register.
add is a pseudo insertion can be compile to addi or add depends
on the DEBUG_LL_UART_DIVISOR is a number or a register.


On Fri, Sep 11, 2020 at 04:07:43PM +0200, Ahmad Fatoum wrote:
> On 9/11/20 2:33 PM, Du Huanpeng wrote:
> > this make it possiable pass a0 as divisor to calculate uart baudrate
> > in run time on boot.
> 
> This is not Ok. Your last commit has your board pass the divisor in a0 now, but other
> boards, like the netgear-wg102, don't. Your change might break their UART because the
> code there doesn't expect that a0 needs to have a valid value. If you want to do this,
> you should migrate all users of this function all at once to supply a valid divisor
> (probably `move a0, DEBUG_LL_UART_DIVISOR`).
> 
> It's same thing in C. You don't add a new parameter to a function without checking
> that all callsites handle this correctly.
> 
> > 
> > Signed-off-by: Du Huanpeng <u74147@gmail.com>
> > ---
> >  arch/mips/include/asm/debug_ll_ns16550.h | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
> > index df58c4c..a33587a 100644
> > --- a/arch/mips/include/asm/debug_ll_ns16550.h
> > +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> > @@ -66,6 +66,9 @@ static inline void PUTC_LL(char ch)
> >  	sb	t1, UART_LCR(t0)		/* Write it out */
> >  
> >  	li	t1, DEBUG_LL_UART_DIVISOR
> > +#if DEBUG_LL_UART_DIVISOR == 0
> > +	move	t1, a0
> > +#endif
> >  	sb	t1, UART_DLL(t0)		/* write low order byte */
> >  	srl	t1, t1, 8
> >  	sb	t1, UART_DLM(t0)		/* write high order byte */
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


  Regards,
  duhuanpeng


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
