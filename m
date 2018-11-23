Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gQBpJ-0006Yo-Nx
 for barebox@lists.infradead.org; Fri, 23 Nov 2018 13:48:59 +0000
References: <20181123133553.24761-1-m.tretter@pengutronix.de>
 <20181123133553.24761-3-m.tretter@pengutronix.de>
From: Rouven Czerwinski <rouven@czerwinskis.de>
In-reply-to: <20181123133553.24761-3-m.tretter@pengutronix.de>
Date: Fri, 23 Nov 2018 14:48:38 +0100
Message-ID: <87r2fb52h5.fsf@czerwinskis.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/3] ARM: aarch64: compile with general-regs-only
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org


Michael Tretter <m.tretter@pengutronix.de> writes:

> Without this flag, gcc generates code to save the Q/V registers to the
> stack for handling the va_list in pr_print(). Saving the registers is
> use useless, as the registers are never restored, but this hangs the
  ^ nit: this use looks lost.
> CPU.
>
> Follow the Linux arch/arm64/Makefile and the general-regs-only flag, to
> prevent usage of floating point and Advanced SIMD register.
>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 5db67b9db8..50958b787f 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -27,6 +27,10 @@ else
>  CFLAGS += -mstrict-align
>  endif
>  
> +# Prevent use of floating point and Advanced SIMD registers.
> +ifeq ($(CONFIG_CPU_V8),y)
> +CFLAGS += -mgeneral-regs-only
> +endif
>  
>  # This selects which instruction set is used.
>  # Note that GCC does not numerically define an architecture version

- Rouven

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
