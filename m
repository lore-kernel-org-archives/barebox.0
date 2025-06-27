Delivery-date: Fri, 27 Jun 2025 18:39:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVC6x-00BgTK-0U
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 18:39:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVC6w-0008L0-DU
	for lore@pengutronix.de; Fri, 27 Jun 2025 18:39:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=osTseTkwLat7BBJwIic7jD+cFGc2mc/Xf75hVdTyAfU=; b=mro057/6Bv2VgcTsZGgE+tasnL
	Ma4peVny7KjuvdgP2EqTASiggea9eK/a77090T73nFBY8NHAwkMGodlwl9rrVzc++IrgrblpwgfC7
	/ofpDhwKzpjIdMvPpHpU1URWC/nDaYPDnaeTG7Yx5GjwPP3e8umG/gK05PHbxPs3vtTEAkhCXAEcY
	gycDFM8/GxdekegLICKCdQcnFef4dbjrzqhtoO2BjCGqpRq5Q/650AQvRF62uVBP8RwUg/UGZB5Hi
	uWiNclaXgV9HrPPVXD9wjyGZPjOFBmcjPsKoX2XzkLZ7ZRAwSPY7Aonw9Acq91MnDNNQKo+hkaMlm
	++mg1ylA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVC6R-0000000FIzB-0K5r;
	Fri, 27 Jun 2025 16:39:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBGL-0000000F9Of-0aI7
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 15:45:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBGH-0003fx-W9; Fri, 27 Jun 2025 17:45:10 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBGH-005dl9-2d;
	Fri, 27 Jun 2025 17:45:09 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBGH-003cmw-2I;
	Fri, 27 Jun 2025 17:45:09 +0200
Date: Fri, 27 Jun 2025 17:45:09 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250627154509.m2ovsgqdnpoc3auh@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-3-4b098e8ac7cd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250627-arm-optee-early-helper-v1-3-4b098e8ac7cd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_084513_182723_496DAD3F 
X-CRM114-Status: GOOD (  29.23  )
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
Subject: Re: [PATCH 03/14] ARM: add exception handling support for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 25-06-27, Sascha Hauer wrote:
> Exception handling in PBL can be very useful for debugging PBL code.
> This patch adds support for it.
> 
> This is currently only implemented for ARMv7 and ARMv8. Only on these
> architectures we can tell the CPU where the exception table is. On ARMv6
> and older we would have to copy the exception table either to 0x0 or
> 0xffff0000. Not all SoCs have writable memory at these locations, so we
> would have to utilize the MMU to map writable memory there. We are not
> there yet, so for now skip exception handling support on these older
> architectures.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Kconfig                   | 10 ++++++++++
>  arch/arm/cpu/Makefile              |  1 +
>  arch/arm/cpu/interrupts_32.c       | 14 +++++++++++++-
>  arch/arm/cpu/interrupts_64.c       | 10 +++++++++-
>  arch/arm/cpu/uncompress.c          |  2 ++
>  arch/arm/include/asm/barebox-arm.h |  8 ++++++++
>  arch/arm/lib/pbl.lds.S             |  4 ++++
>  7 files changed, 47 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 0800b15d784ca0ab975cf7ceb2f7b47ed10643b1..eaccee9f2f7a128a820e1c55fba816ec5ac4c02d 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -378,6 +378,16 @@ config ARM_EXCEPTIONS
>  	bool "enable arm exception handling support"
>  	default y
>  
> +config ARM_EXCEPTIONS_PBL
> +	select ARCH_HAS_DATA_ABORT_MASK_PBL
> +	depends on CPU_V7 || CPU_V8
> +	bool "enable arm exception handling support in PBL"
> +	help
> +	  Say yes here to enable exception handling in PBL. Note that the exception
> +	  table has to be initialized by calling arm_pbl_init_exceptions(). This is
> +	  done in barebox_pbl_start(). If you need exception handling earlier then
> +	  you have to call arm_pbl_init_exceptions() earlier from your board code.
> +
>  config ARM_UNWIND
>  	bool "enable stack unwinding support"
>  	depends on AEABI
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index 39e59c2a2f733d668d57a2f28bdd99f69a016229..9550592796702759f950a3bc4de385100ef2b2e8 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -3,6 +3,7 @@
>  obj-pbl-y += cpu.o
>  
>  obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_$(S64_32).o interrupts_$(S64_32).o
> +pbl-$(CONFIG_ARM_EXCEPTIONS_PBL) += exceptions_$(S64_32).o interrupts_$(S64_32).o
>  obj-$(CONFIG_MMU) += mmu-common.o
>  obj-pbl-$(CONFIG_MMU) += mmu_$(S64_32).o
>  obj-$(CONFIG_MMU) += dma_$(S64_32).o
> diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
> index 623efb3966f0c34632e678d9e1edf2b6affcb4c5..cd503b38eeea551f27bbab0663bbfabdda7ffeea 100644
> --- a/arch/arm/cpu/interrupts_32.c
> +++ b/arch/arm/cpu/interrupts_32.c
> @@ -12,6 +12,7 @@
>  #include <asm/ptrace.h>
>  #include <asm/barebox-arm.h>
>  #include <asm/unwind.h>
> +#include <asm/system_info.h>
>  #include <init.h>
>  
>  /* Avoid missing prototype warning, called from assembly */
> @@ -61,7 +62,7 @@ void show_regs (struct pt_regs *regs)
>  		fast_interrupts_enabled (regs) ? "on" : "off",
>  		processor_modes[processor_mode (regs)],
>  		thumb_mode (regs) ? " (T)" : "");
> -#ifdef CONFIG_ARM_UNWIND
> +#if defined CONFIG_ARM_UNWIND && IN_PROPER
>  	unwind_backtrace(regs);
>  #endif
>  }
> @@ -181,3 +182,14 @@ int data_abort_unmask(void)
>  
>  	return arm_data_abort_occurred != 0;
>  }
> +
> +#if IS_ENABLED(CONFIG_ARM_EXCEPTIONS_PBL)
> +void arm_pbl_init_exceptions(void)
> +{
> +	if (cpu_architecture() < CPU_ARCH_ARMv7)
> +		return;
> +
> +	set_vbar((unsigned long)__exceptions_start);
> +	arm_fixup_vectors();
> +}
> +#endif
> diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
> index 4d4ef2bab88ef46a7be1cd4add8f3e51423a283b..574ab6a7ec220d2239b6e27c05426e2d4c67d426 100644
> --- a/arch/arm/cpu/interrupts_64.c
> +++ b/arch/arm/cpu/interrupts_64.c
> @@ -88,7 +88,8 @@ static void __noreturn do_exception(struct pt_regs *pt_regs)
>  {
>  	show_regs(pt_regs);
>  
> -	unwind_backtrace(pt_regs);
> +	if (IN_PROPER)
> +		unwind_backtrace(pt_regs);
>  
>  	panic_no_stacktrace("panic: unhandled exception");
>  }
> @@ -226,3 +227,10 @@ static int aarch64_init_vectors(void)
>  	return 0;
>  }
>  core_initcall(aarch64_init_vectors);
> +
> +#if IS_ENABLED(CONFIG_ARM_EXCEPTIONS_PBL)
> +void arm_pbl_init_exceptions(void)
> +{
> +	aarch64_init_vectors();
> +}
> +#endif
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index 4657a4828e67e1b0acfa9dec3aef33bc4c525468..4529ef5e3821e5b31a3673de6285d2f37e0ecba2 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -63,6 +63,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>  
> +	arm_pbl_init_exceptions();
> +
>  	if (IS_ENABLED(CONFIG_MMU))
>  		mmu_early_enable(membase, memsize);
>  	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 7d35e88c812393d45e331f238baecfa91cbbe299..3ab442bd373e50a84b26145395e42879fc96757f 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -52,6 +52,14 @@ static inline void arm_fixup_vectors(void)
>  }
>  #endif
>  
> +#if IS_ENABLED(CONFIG_ARM_EXCEPTIONS_PBL)
> +void arm_pbl_init_exceptions(void);
> +#else
> +static inline void arm_pbl_init_exceptions(void)
> +{
> +}
> +#endif
> +
>  void *barebox_arm_boot_dtb(void);
>  
>  /*
> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index dad37c9e9bca98beb4f34360fa53a0421662f03c..9c51f5eb3a3d8256752a78e03fed851c84d92edb 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -52,6 +52,10 @@ SECTIONS
>  		__bare_init_start = .;
>  		*(.text_bare_init*)
>  		__bare_init_end = .;
> +		. = ALIGN(0x20);
> +		__exceptions_start = .;
> +		KEEP(*(.text_exceptions*))
> +		__exceptions_stop = .;

Nit: We only need this in case of CONFIG_CPU_64, right? Maybe I
overlooked it but the only user of this section is
arch/arm/cpu/exceptions_32.S. Not sure why arch/arm/lib64/barebox.lds.S
has this section too.

Regards,
  Marco

>  		*(.text*)
>  	}
>  
> 
> -- 
> 2.39.5
> 
> 
> 


