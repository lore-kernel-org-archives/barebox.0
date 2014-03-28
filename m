Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f47.google.com ([209.85.215.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTRYk-00045s-MQ
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 07:50:39 +0000
Received: by mail-la0-f47.google.com with SMTP id y1so3386447lam.20
 for <barebox@lists.infradead.org>; Fri, 28 Mar 2014 00:50:12 -0700 (PDT)
Date: Fri, 28 Mar 2014 12:00:00 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140328120000.7a6b0bbc99ec261bd6c88c67@gmail.com>
In-Reply-To: <1395822565-14283-1-git-send-email-antonynpavlov@gmail.com>
References: <1395822565-14283-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: mach-xburst: fix DEBUG_LL=n build error
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 26 Mar 2014 12:29:25 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

ping

> Here is my error log:
> =

>   CC      common/startup.o
> In file included from arch/mips/mach-xburst/include/mach/debug_ll.h:25,
>                  from include/debug_ll.h:31,
>                  from common/startup.c:36:
> arch/mips/include/asm/debug_ll_ns16550.h: In function 'PUTC_LL':
> arch/mips/include/asm/debug_ll_ns16550.h:62: error: 'DEBUG_LL_UART_ADDR' =
undeclared (first use in this function)
> arch/mips/include/asm/debug_ll_ns16550.h:62: error: (Each undeclared iden=
tifier is reported only once
> arch/mips/include/asm/debug_ll_ns16550.h:62: error: for each function it =
appears in.)
> make[1]: *** [common/startup.o] Error 1
> =

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/include/asm/debug_ll_ns16550.h | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include=
/asm/debug_ll_ns16550.h
> index f36010c..032f0a2 100644
> --- a/arch/mips/include/asm/debug_ll_ns16550.h
> +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> @@ -59,9 +59,11 @@
>  =

>  static __inline__ void PUTC_LL(char ch)
>  {
> +#ifdef CONFIG_DEBUG_LL
>  	while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_TH=
RE))
>  		;
>  	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_THR);
> +#endif /* CONFIG_DEBUG_LL */
>  }
>  #else /* __ASSEMBLY__ */
>  /*
> -- =

> 1.9.0
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
