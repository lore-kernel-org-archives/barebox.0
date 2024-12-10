Delivery-date: Tue, 10 Dec 2024 09:26:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKvZC-006J0y-1S
	for lore@lore.pengutronix.de;
	Tue, 10 Dec 2024 09:26:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKvZB-0001cQ-VD
	for lore@pengutronix.de; Tue, 10 Dec 2024 09:26:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nabj6CdPfvy+Etd/qRSjv+0/nq8x86tEgJoJgbmziuU=; b=pFKhkdQZCrsWEv6CYdFgKl6OjE
	4wOHS7P0eb+gZ2gTj0M/QHZAObTaz2VHjg8QJB0B4oxxN86RojlWevMn61iXf77C3Jd8zCnWgtE49
	auPoC0hTCLIRQqf/lNjR69WY4/TtAtMSlg7feuYrpxgg7AHBBe1GxetCyzxhkIle/xE6bq3Jjk6tI
	nQqtoZyV8gunBsjcQf+RDmDTyddYi1G4+qwA+XPTtEXMaqyxzQf1E619U3eHGoJpPTRSJTUJ56bGy
	P3+sguoSObljMY42FJP1egw4pEjgI5vKLqkzHwOeKjnK6GJMvh4iQGJd5nvwqmrCFcVDv6B4rRddd
	OpCNdNaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvYh-0000000AhG8-2B69;
	Tue, 10 Dec 2024 08:25:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvYe-0000000AhEO-3R1C
	for barebox@lists.infradead.org;
	Tue, 10 Dec 2024 08:25:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tKvYb-0001QR-R3; Tue, 10 Dec 2024 09:25:25 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tKvYa-002epv-2p;
	Tue, 10 Dec 2024 09:25:25 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tKvYb-008R3f-1o;
	Tue, 10 Dec 2024 09:25:25 +0100
Date: Tue, 10 Dec 2024 09:25:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z1f69d0mTW7yd1DV@pengutronix.de>
References: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
 <20241125153523.1411849-8-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241125153523.1411849-8-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_002529_010108_FF51159B 
X-CRM114-Status: GOOD (  30.78  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/9] bthread: move asan fiber API into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 25, 2024 at 04:35:21PM +0100, Ahmad Fatoum wrote:
> Using the ASAN fibre API is essential, so the cooperative scheduling we
> implement on top isn't flagged by AddressSanitizer.
> 
> To prepare using that code elsewhere later, move it to a common header.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/Kconfig                       |  3 ++
>  arch/arm/include/asm/setjmp.h      |  2 +
>  arch/kvx/include/asm/setjmp.h      |  2 +
>  arch/mips/include/asm/setjmp.h     |  2 +
>  arch/openrisc/include/asm/setjmp.h |  2 +
>  arch/powerpc/include/asm/setjmp.h  |  2 +
>  arch/riscv/include/asm/setjmp.h    |  2 +
>  arch/sandbox/Kconfig               |  1 +
>  arch/sandbox/include/asm/setjmp.h  | 42 ++++++++++++++++++++
>  arch/x86/include/asm/setjmp.h      |  2 +
>  common/bthread.c                   | 64 ++++++++----------------------
>  include/asm-generic/setjmp.h       | 27 +++++++++++++
>  12 files changed, 104 insertions(+), 47 deletions(-)
>  create mode 100644 include/asm-generic/setjmp.h
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index ad47dbf78d6c..671e6a0e979d 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -18,3 +18,6 @@ config ARCH_HAS_CTRLC
>  #
>  config ARCH_DMA_DEFAULT_COHERENT
>  	bool
> +
> +config ARCH_HAS_ASAN_FIBER_API
> +	bool
> diff --git a/arch/arm/include/asm/setjmp.h b/arch/arm/include/asm/setjmp.h
> index 0cee5bfdda60..d28235e56c36 100644
> --- a/arch/arm/include/asm/setjmp.h
> +++ b/arch/arm/include/asm/setjmp.h
> @@ -28,4 +28,6 @@ void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
>  
>  int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top);
>  
> +#include <asm-generic/setjmp.h>
> +
>  #endif /* _SETJMP_H_ */
> diff --git a/arch/kvx/include/asm/setjmp.h b/arch/kvx/include/asm/setjmp.h
> index 3c23576e6e82..7a09b182f251 100644
> --- a/arch/kvx/include/asm/setjmp.h
> +++ b/arch/kvx/include/asm/setjmp.h
> @@ -12,4 +12,6 @@ int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *sta
>  int setjmp(jmp_buf jmp) __attribute__((returns_twice));
>  void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
>  
> +#include <asm-generic/setjmp.h>
> +
>  #endif /* _ASM_KVX_SETJMP_H_ */
> diff --git a/arch/mips/include/asm/setjmp.h b/arch/mips/include/asm/setjmp.h
> index 39e01e27dfc0..af25678573e7 100644
> --- a/arch/mips/include/asm/setjmp.h
> +++ b/arch/mips/include/asm/setjmp.h
> @@ -29,4 +29,6 @@ int setjmp(jmp_buf jmp) __attribute__((returns_twice));
>  void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
>  int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top);
>  
> +#include <asm-generic/setjmp.h>
> +
>  #endif /* _MIPS_BITS_SETJMP_H */
> diff --git a/arch/openrisc/include/asm/setjmp.h b/arch/openrisc/include/asm/setjmp.h
> index ee73306d189d..d652e8a3cbcc 100644
> --- a/arch/openrisc/include/asm/setjmp.h
> +++ b/arch/openrisc/include/asm/setjmp.h
> @@ -14,4 +14,6 @@ int setjmp(jmp_buf jmp) __attribute__((returns_twice));
>  void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
>  int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top);
>  
> +#include <asm-generic/setjmp.h>
> +
>  #endif /* _OR1K_BITS_SETJMP_H */
> diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
> index 91bfcdb7f442..1ece16bb7ea7 100644
> --- a/arch/powerpc/include/asm/setjmp.h
> +++ b/arch/powerpc/include/asm/setjmp.h
> @@ -18,4 +18,6 @@ void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
>  
>  int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top);
>  
> +#include <asm-generic/setjmp.h>
> +
>  #endif /* _SETJMP_H_ */
> diff --git a/arch/riscv/include/asm/setjmp.h b/arch/riscv/include/asm/setjmp.h
> index 468fc4b10aaf..6604ba402bd9 100644
> --- a/arch/riscv/include/asm/setjmp.h
> +++ b/arch/riscv/include/asm/setjmp.h
> @@ -24,4 +24,6 @@ void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
>  
>  int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top);
>  
> +#include <asm-generic/setjmp.h>
> +
>  #endif /* _SETJMP_H_ */
> diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
> index d4379c4d68db..932bfd15d212 100644
> --- a/arch/sandbox/Kconfig
> +++ b/arch/sandbox/Kconfig
> @@ -43,6 +43,7 @@ config 64BIT
>  	default CC_IS_64BIT
>  	select ARCH_DMA_ADDR_T_64BIT
>  	select PHYS_ADDR_T_64BIT
> +	select ARCH_HAS_ASAN_FIBER_API if ASAN
>  
>  config 32BIT
>  	def_bool !64BIT
> diff --git a/arch/sandbox/include/asm/setjmp.h b/arch/sandbox/include/asm/setjmp.h
> index dcc3b4e86712..65a6d5aafa87 100644
> --- a/arch/sandbox/include/asm/setjmp.h
> +++ b/arch/sandbox/include/asm/setjmp.h
> @@ -1,4 +1,9 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * This file is included both in arch/sandbox/os along with
> + * system headers and outside with barebox headers, so we avoid
> + * including any other headers here.
> + */
>  
>  #ifndef __SETJMP_H_
>  #define __SETJMP_H_
> @@ -14,4 +19,41 @@ void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
>  
>  int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top);
>  
> +#define start_switch_fiber start_switch_fiber
> +#define finish_switch_fiber finish_switch_fiber
> +
> +void __sanitizer_start_switch_fiber(void **fake_stack_save,
> +                                    const void *bottom, size_t size)
> +    __attribute__((visibility("default")));
> +
> +void __sanitizer_finish_switch_fiber(void *fake_stack_save,
> +                                     const void **bottom_old, size_t *size_old)
> +    __attribute__((visibility("default")));
> +
> +static inline void finish_switch_fiber(void *fake_stack_save,
> +                                       void **initial_bottom,
> +                                       unsigned *initial_stack_size)
> +{
> +#ifdef CONFIG_ARCH_HAS_ASAN_FIBER_API
> +    const void *bottom_old;
> +    size_t size_old;
> +
> +    __sanitizer_finish_switch_fiber(fake_stack_save,
> +                                    &bottom_old, &size_old);
> +
> +    if (initial_bottom && !*initial_bottom) {
> +        *initial_bottom = (void *)bottom_old;
> +        *initial_stack_size = size_old;
> +    }
> +#endif
> +}
> +
> +static inline void start_switch_fiber(void **fake_stack_save,
> +                                      const void *bottom, unsigned size)
> +{
> +#ifdef CONFIG_ARCH_HAS_ASAN_FIBER_API
> +    __sanitizer_start_switch_fiber(fake_stack_save, bottom, size);
> +#endif
> +}
> +
>  #endif
> diff --git a/arch/x86/include/asm/setjmp.h b/arch/x86/include/asm/setjmp.h
> index 5af5e624895c..e0f5771b06ba 100644
> --- a/arch/x86/include/asm/setjmp.h
> +++ b/arch/x86/include/asm/setjmp.h
> @@ -41,4 +41,6 @@ void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn)) __sjlj_attr;
>  
>  int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top) __sjlj_attr;
>  
> +#include <asm-generic/setjmp.h>
> +
>  #endif
> diff --git a/common/bthread.c b/common/bthread.c
> index d40c0b0f9e3a..943f4c22b346 100644
> --- a/common/bthread.c
> +++ b/common/bthread.c
> @@ -15,10 +15,6 @@
>  #include <asm/setjmp.h>
>  #include <linux/overflow.h>
>  
> -#if defined CONFIG_ASAN && !defined CONFIG_32BIT
> -#define HAVE_FIBER_SANITIZER
> -#endif
> -
>  static struct bthread {
>  	void (*threadfn)(void *);
>  	void *data;
> @@ -27,7 +23,7 @@ static struct bthread {
>  	void *stack;
>  	u32 stack_size;
>  	struct list_head list;
> -#ifdef HAVE_FIBER_SANITIZER
> +#ifdef CONFIG_ARCH_HAS_ASAN_FIBER_API
>  	void *fake_stack_save;
>  #endif

This breaks compilation of multi_v8_defconfig. Before this change usage
of fake_stack_save depended on #ifdef HAVE_FIBER_SANITIZER, ...

>  	u8 awake :1;
> @@ -45,12 +41,22 @@ struct bthread *current = &main_thread;
>  /*
>   * When using ASAN, it needs to be told when we switch stacks.
>   */
> -static void start_switch_fiber(struct bthread *, bool terminate_old);
> -static void finish_switch_fiber(struct bthread *);
> +static void bthread_finish_switch_fiber(struct bthread *bthread)
> +{
> +	finish_switch_fiber(bthread->fake_stack_save,
> +			    &main_thread.stack, &main_thread.stack_size);
> +}

... but now it's used unconditionally.

For now I'll just drop the ifdef around void *fake_stack_save. I don't
know if that's the correct solution, but maybe it doesn't matter as
fake_stack_save is removed in a later commit anyway.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


