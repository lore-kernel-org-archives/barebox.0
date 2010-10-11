Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5JbH-0003X1-Kh
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:43:40 +0000
Date: Mon, 11 Oct 2010 16:41:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101011144129.GB7412@game.jcrosoft.org>
References: <20101010230505.17833.46593.stgit@zaytsev.su>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101010230505.17833.46593.stgit@zaytsev.su>
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
Subject: Re: [PATCH] Add basic support from ARM Versatile/PB
To: Alexey Zaytsev <alexey.zaytsev@gmail.com>
Cc: barebox@lists.infradead.org, Bahadir Balban <bbalban@b-labs.com>

On 23:15 Sun 10 Oct     , Alexey Zaytsev wrote:
> Signed-off-by: Alexey Zaytsev <alexey.zaytsev@gmail.com>
> ---
> 
> Hi.
> 
> It seems that barebox does not run on any ARM machines provided
> by QEMU. This patch adds basic Versatile/PB support. It is far from
> being complete and has not been tested on real hardware, but
> seems to work fine in QEMU.
> 
> Please notice, that you need to set CONFIG_VERSATILE_SMC91C111
> in order to have networking in QEMU, as it does not provide
> smc91x found on the real hardware.
> 
> For a queck test, run:
> 
> 	qemu-system-arm -kernel barebox.bin -M versatilepb -cpu arm926 -nographic -m 64 -net nic,model=smc91c111 -net user
this must be in a doc

please use defaultenv and enable more functionnability

as we can use it as ref board for emulation
> 
> 
>  arch/arm/Kconfig                                |    4 
>  arch/arm/Makefile                               |    2 
>  arch/arm/boards/versatile/Kconfig               |   21 +
>  arch/arm/boards/versatile/Makefile              |    2 
>  arch/arm/boards/versatile/config.h              |    5 
>  arch/arm/boards/versatile/env/bin/init          |    1 
>  arch/arm/boards/versatile/versatilepb.c         |   56 +++
>  arch/arm/configs/versatilepb_defconfig          |   12 +
>  arch/arm/include/asm/arm_timer.h                |   33 ++
>  arch/arm/mach-versatile/Kconfig                 |   16 +
>  arch/arm/mach-versatile/Makefile                |    2 
>  arch/arm/mach-versatile/core.c                  |  217 ++++++++++++
>  arch/arm/mach-versatile/include/mach/clkdev.h   |    7 
>  arch/arm/mach-versatile/include/mach/debug_ll.h |   37 ++
>  arch/arm/mach-versatile/include/mach/init.h     |    9 
>  arch/arm/mach-versatile/include/mach/platform.h |  417 +++++++++++++++++++++++
>  16 files changed, 841 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/versatile/Kconfig
>  create mode 100644 arch/arm/boards/versatile/Makefile
>  create mode 100644 arch/arm/boards/versatile/config.h
>  create mode 100644 arch/arm/boards/versatile/env/bin/init
>  create mode 100644 arch/arm/boards/versatile/versatilepb.c
>  create mode 100644 arch/arm/configs/versatilepb_defconfig
>  create mode 100644 arch/arm/include/asm/arm_timer.h
>  create mode 100644 arch/arm/mach-versatile/Kconfig
>  create mode 100644 arch/arm/mach-versatile/Makefile
>  create mode 100644 arch/arm/mach-versatile/core.c
>  create mode 100644 arch/arm/mach-versatile/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-versatile/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-versatile/include/mach/init.h
>  create mode 100644 arch/arm/mach-versatile/include/mach/platform.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index fa37036..d90246a 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -56,6 +56,9 @@ config ARCH_S3C24xx
>  	bool "Samsung S3C2410, S3C2412, S3C2413, S3C2440, S3C2442, S3C2443"
>  	select CPU_ARM920T
>  
> +config ARCH_VERSATILE
> +	bool "ARM Versatile boards (ARM926EJ-S)"
> +	select CPU_ARM926T
>  endchoice
>  
>  source arch/arm/cpu/Kconfig
> @@ -66,6 +69,7 @@ source arch/arm/mach-netx/Kconfig
>  source arch/arm/mach-nomadik/Kconfig
>  source arch/arm/mach-omap/Kconfig
>  source arch/arm/mach-s3c24xx/Kconfig
> +source arch/arm/mach-versatile/Kconfig
>  
>  config AEABI
>  	bool "Use the ARM EABI to compile barebox"
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 77b6cf4..6ad14e7 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -45,6 +45,7 @@ machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
>  machine-$(CONFIG_ARCH_NETX)		:= netx
>  machine-$(CONFIG_ARCH_OMAP)		:= omap
>  machine-$(CONFIG_ARCH_S3C24xx)		:= s3c24xx
> +machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
>  
>  # Board directory name.  This list is sorted alphanumerically
>  # by CONFIG_* macro name.
> @@ -80,6 +81,7 @@ board-$(CONFIG_MACH_PCM043)			:= pcm043
>  board-$(CONFIG_MACH_PM9263)			:= pm9263
>  board-$(CONFIG_MACH_SCB9328)			:= scb9328
>  board-$(CONFIG_MACH_NESO)			:= guf-neso
> +board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
>  
>  machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
>  
> diff --git a/arch/arm/boards/versatile/Kconfig b/arch/arm/boards/versatile/Kconfig
> new file mode 100644
> index 0000000..d5da87d
> --- /dev/null
> +++ b/arch/arm/boards/versatile/Kconfig
> @@ -0,0 +1,21 @@
> +
> +
> +if MACH_VERSATILEPB
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0
> +
> +config BOARDINFO
> +	default "ARM Versatile/PB (ARM926EJ-S)"
> +endif
> +
> +config VERSATILE_SMC91C111
> +	bool "Use smc91c111 instead of smc91x (for QEMU)"
> +	default 0
??
> +	help
> +	 Enable this option to run barebox inside qemu.
> +	 Real versatile boards are equipped with smc911x,
> +	 but qemu only provides smc91111, which is a bit different.
it will be beter to modify the ressources depending on the drivers enabled

and nake it exclusive
> +
> +
> diff --git a/arch/arm/boards/versatile/Makefile b/arch/arm/boards/versatile/Makefile
> new file mode 100644
> index 0000000..a17aed3
> --- /dev/null
> +++ b/arch/arm/boards/versatile/Makefile
> @@ -0,0 +1,2 @@
> +
> +obj-$(CONFIG_MACH_VERSATILEPB) += versatilepb.o
> diff --git a/arch/arm/boards/versatile/config.h b/arch/arm/boards/versatile/config.h
> new file mode 100644
> index 0000000..25bb18f
> --- /dev/null
> +++ b/arch/arm/boards/versatile/config.h
> @@ -0,0 +1,5 @@
> +
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/versatile/env/bin/init b/arch/arm/boards/versatile/env/bin/init
> new file mode 100644
> index 0000000..224a6b4
> --- /dev/null
 +	sdram_dev.size = size;
> +	register_device(&sdram_dev);
> +	armlinux_add_dram(&sdram_dev);
> +}
> +
> +/* 4 uarts, yay! */
> +static struct device_d uart0_serial_device = {
> +	.id = 1,
why not start at 0?

btw there is a lots of whitespace could you fix them

Best Regards,
J.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
