Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S2oIV-0005T4-6J
 for barebox@lists.infradead.org; Wed, 29 Feb 2012 18:30:43 +0000
Received: from mail604.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 9A0F4FF972C
 for <barebox@lists.infradead.org>; Wed, 29 Feb 2012 19:33:32 +0100 (CET)
Date: Wed, 29 Feb 2012 19:21:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120229182123.GM12248@game.jcrosoft.org>
References: <1330419401-11994-1-git-send-email-s.hauer@pengutronix.de>
 <1330419401-11994-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330419401-11994-4-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: Allow to compile in thumb-2 mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:56 Tue 28 Feb     , Sascha Hauer wrote:
> This shrinks the resulting binary size by ~25%. Exceptions
> are still handled in arm mode, so we have to explicitely
> put .arm directives into the exception code. Thumb-2 mode
> has been tested on i.MX51 Babbage board.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Kconfig                        |   12 ++++++++++++
>  arch/arm/Makefile                       |   11 +++++++++--
>  arch/arm/cpu/cpu.c                      |   27 +++++++++++++++++++++++++++
>  arch/arm/cpu/exceptions.S               |    1 +
>  arch/arm/cpu/start.c                    |   26 ++++++++++++++++++--------
>  arch/arm/include/asm/barebox-arm-head.h |   12 ++++++++++++
>  arch/arm/include/asm/unified.h          |    8 ++++----
>  arch/arm/lib/armlinux.c                 |   17 ++++++++++++++++-
>  commands/go.c                           |    6 +++++-
>  common/misc.c                           |    3 +++
>  include/common.h                        |    6 ++++++
>  11 files changed, 113 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 4c0ee58..adb020a 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -101,6 +101,18 @@ config AEABI
>  
>  	  To use this you need GCC version 4.0.0 or later.
>  
> +config THUMB2_BAREBOX
> +	select ARM_ASM_UNIFIED
> +	depends on CPU_V7
> +	bool "Compile barebox in thumb-2 mode (read help)"
> +	help
> +	  This enables compilation of barebox in thumb-2 mode which generates
> +	  ~25% smaller binaries. Arm Assembly code needs some fixups to be able
> +	  to work correctly in thumb-2 mode. the barebox core should have these
> +	  fixups since most assembly code is derived from the Kernel. However,
> +	  your board lowlevel init code may break in thumb-2 mode. You have been
> +	  warned.
> +
>  endmenu
>  
>  menu "Arm specific settings         "
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 9926280..56f21ab 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -39,8 +39,15 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
>  CFLAGS_ABI	+=-funwind-tables
>  endif
>  
> -CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float
> -AFLAGS   += -include asm/unified.h -msoft-float
> +ifeq ($(CONFIG_THUMB2_BAREBOX),y)
> +AFLAGS_AUTOIT	:=$(call as-option,-Wa$(comma)-mimplicit-it=always,-Wa$(comma)-mauto-it)
> +AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
> +CFLAGS_THUMB2	:=-mthumb $(AFLAGS_AUTOIT) $(AFLAGS_NOWARN)
> +AFLAGS_THUMB2	:=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
> +endif
> +
> +CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
> +AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
>  
>  # Machine directory name.  This list is sorted alphanumerically
>  # by CONFIG_* macro name.
> diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
> index cf31e8b..71ef8c0 100644
> --- a/arch/arm/cpu/cpu.c
> +++ b/arch/arm/cpu/cpu.c
> @@ -26,6 +26,7 @@
>   */
>  
>  #include <common.h>
> +#include <init.h>
>  #include <command.h>
>  #include <cache.h>
>  #include <asm/mmu.h>
> @@ -89,3 +90,29 @@ void arch_shutdown(void)
>  	);
>  #endif
>  }
> +
> +#ifdef CONFIG_THUMB2_BAREBOX
> +static void thumb2_execute(void *func, int argc, char *argv[])
> +{
> +	/*
> +	 * Switch back to arm mode before executing external
> +	 * programs.
> +	 */
> +	__asm__ __volatile__ (
> +		"mov r0, #0\n"
> +		"mov r1, %0\n"
> +		"mov r2, %1\n"
> +		"bx %2\n"
> +		:
> +		: "r" (argc - 1), "r" (&argv[1]), "r" (func)
> +		: "r0", "r1", "r2"
> +	);
> +}
> +
> +static int execute_init(void)
> +{
> +	do_execute = thumb2_execute;
> +	return 0;
> +}
> +postcore_initcall(execute_init);
> +#endif
> diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
> index 6f35d40..c08537a 100644
> --- a/arch/arm/cpu/exceptions.S
> +++ b/arch/arm/cpu/exceptions.S
> @@ -106,6 +106,7 @@ _STACK_START:
>   * exception handlers
>   */
>  	.section ".text","ax"
> +	.arm
>  
>  	.align  5
>  .globl undefined_instruction
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 89aff1d..5011fa2 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -33,26 +33,36 @@ void __naked __section(.text_entry) start(void)
>  	barebox_arm_head();
>  }
>  
> +#ifdef CONFIG_THUMB2_BAREBOX
> +#define STOP	\
> +	"1: bne 1b\n" \
> +	"nop\n"
> +#else
> +#define STOP	\
> +	"1: bne 1b\n"
> +#endif
here is my issue can not use bne
can only use ldr or b

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
