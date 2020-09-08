Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFbyl-0005Zw-VG
 for barebox@lists.infradead.org; Tue, 08 Sep 2020 11:40:04 +0000
Received: by mail-lf1-x143.google.com with SMTP id q8so8994794lfb.6
 for <barebox@lists.infradead.org>; Tue, 08 Sep 2020 04:39:55 -0700 (PDT)
Date: Tue, 8 Sep 2020 14:39:53 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200908143953.93018587d571f1c3e13c9297@gmail.com>
In-Reply-To: <1599546305-10121-1-git-send-email-u74147@gmail.com>
References: <1599546305-10121-1-git-send-email-u74147@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: asm/debug_ll_ns16550.h: add nop in delay slot
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Tue,  8 Sep 2020 14:25:05 +0800
Du Huanpeng <u74147@gmail.com> wrote:

Hi!

Adding nop is not necessary.

Please see full text of debug_ll_outc_a0:

.macro  debug_ll_outc_a0
#ifdef CONFIG_DEBUG_LL
        .set    push
        .set    reorder  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

        la      t0, DEBUG_LL_UART_ADDR

201:    lbu     t1, UART_LSR(t0)        /* get line status */
        andi    t1, t1, UART_LSR_THRE   /* check for transmitter empty */
        beqz    t1, 201b                        /* try again */

        sb      a0, UART_THR(t0)        /* write the character */

        .set    pop
#endif /* CONFIG_DEBUG_LL */
.endm


There is '.set reorder' so assembler has insert nop after beqz automaticall=
y.

I have compiled barebox for qemu-malta with DEBUG_LL enabled.

barebox$ mips-linux-gnu-objdump -D arch/mips/boards/qemu-malta/lowlevel.pbl=
.o  | grep -A 10 "_nmon_outc_a0>:$"

00000314 <_nmon_outc_a0>:
 314:	3c08b800 	lui	t0,0xb800
 318:	350803f8 	ori	t0,t0,0x3f8
 31c:	91090005 	lbu	t1,5(t0)
 320:	31290020 	andi	t1,t1,0x20
 324:	1120fffd 	beqz	t1,31c <_nmon_outc_a0+0x8>
 328:	00000000 	nop                            <<<<<<<<<<<<<<<<<<<<<<<<<<<<=
<<<
 32c:	a1040000 	sb	a0,0(t0)
 330:	03e00008 	jr	ra
 334:	00000000 	nop


> In the debug_ll_outc_a0 macro, a0 is written to the uart data
> register many times in a delay slot when the uart is not ready
> to send data. insert a nop to avoid this.
> =

> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  arch/mips/include/asm/debug_ll_ns16550.h | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include=
/asm/debug_ll_ns16550.h
> index df58c4c..cf666d1 100644
> --- a/arch/mips/include/asm/debug_ll_ns16550.h
> +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> @@ -88,6 +88,7 @@ static inline void PUTC_LL(char ch)
>  201:	lbu	t1, UART_LSR(t0)	/* get line status */
>  	andi	t1, t1, UART_LSR_THRE	/* check for transmitter empty */
>  	beqz	t1, 201b			/* try again */
> +	nop
>  =

>  	sb	a0, UART_THR(t0)	/* write the character */
>  =

> -- =

> 2.7.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
