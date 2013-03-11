Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF788-0006pT-Iv
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 18:07:26 +0000
Date: Mon, 11 Mar 2013 13:13:55 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130311181355.GL16050@kryptos>
References: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
 <1362993306-19262-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362993306-19262-3-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 2/9] ARM: Zynq: Add new architecture zynq
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 10:14:59AM +0100, Steffen Trumtrar wrote:
> Add basic support for the Xilinx Zynq-7000 EPP architecture.
> The Zynq-7000 is an embedded processing platform that combines a Cortex A9
> dualcore MPSoC with an Artix-7 FPGA.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/Kconfig                                   |   5 +
>  arch/arm/Makefile                                  |   2 +
>  arch/arm/mach-zynq/Kconfig                         |  31 +++++
>  arch/arm/mach-zynq/Makefile                        |   1 +
>  arch/arm/mach-zynq/clocksource.c                   |  58 +++++++++
>  arch/arm/mach-zynq/devices.c                       |  14 +++
>  arch/arm/mach-zynq/include/mach/barebox.lds.h      |   9 ++
>  arch/arm/mach-zynq/include/mach/debug_ll.h         |  34 ++++++
>  arch/arm/mach-zynq/include/mach/devices.h          |  13 ++
>  .../arm/mach-zynq/include/mach/zynq-flash-header.h |  40 +++++++
>  arch/arm/mach-zynq/include/mach/zynq7000-regs.h    | 132 +++++++++++++++++++++
>  arch/arm/mach-zynq/zynq.c                          |  41 +++++++
>  include/asm-generic/barebox.lds.h                  |   3 +-
>  13 files changed, 382 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-zynq/Kconfig
>  create mode 100644 arch/arm/mach-zynq/Makefile
>  create mode 100644 arch/arm/mach-zynq/clocksource.c
>  create mode 100644 arch/arm/mach-zynq/devices.c
>  create mode 100644 arch/arm/mach-zynq/include/mach/barebox.lds.h
>  create mode 100644 arch/arm/mach-zynq/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-zynq/include/mach/devices.h
>  create mode 100644 arch/arm/mach-zynq/include/mach/zynq-flash-header.h
>  create mode 100644 arch/arm/mach-zynq/include/mach/zynq7000-regs.h
>  create mode 100644 arch/arm/mach-zynq/zynq.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 28332ec..8431fa8 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -110,6 +110,10 @@ config ARCH_TEGRA
>  	select CPU_ARM926T
>  	select HAS_DEBUG_LL
>  
> +config ARCH_ZYNQ
> +	bool "Xilinx Zynq-based boards"
> +	select HAS_DEBUG_LL
> +
>  endchoice
>  
>  source arch/arm/cpu/Kconfig
> @@ -126,6 +130,7 @@ source arch/arm/mach-pxa/Kconfig
>  source arch/arm/mach-samsung/Kconfig
>  source arch/arm/mach-versatile/Kconfig
>  source arch/arm/mach-tegra/Kconfig
> +source arch/arm/mach-zynq/Kconfig
>  
>  config ARM_ASM_UNIFIED
>  	bool
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index fcb2969..ceb45dc 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -64,6 +64,7 @@ machine-$(CONFIG_ARCH_PXA)		:= pxa
>  machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
>  machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
>  machine-$(CONFIG_ARCH_TEGRA)		:= tegra
> +machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
>  
>  # Board directory name.  This list is sorted alphanumerically
>  # by CONFIG_* macro name.
> @@ -157,6 +158,7 @@ board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
>  board-$(CONFIG_MACH_TX53)			:= karo-tx53
>  board-$(CONFIG_MACH_GUF_VINCELL)		:= guf-vincell
>  board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		:= efika-mx-smartbook
> +board-$(CONFIG_MACH_ZEDBOARD)			:= avnet-zedboard
>  
>  machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
>  
> diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
> new file mode 100644
> index 0000000..8eb67d2
> --- /dev/null
> +++ b/arch/arm/mach-zynq/Kconfig
> @@ -0,0 +1,31 @@
> +if ARCH_ZYNQ
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x1ff00000 if MACH_ZEDBOARD
> +
> +config BOARDINFO
> +	default "ZedBoard" if MACH_ZEDBOARD
> +
> +choice
> +	prompt "Xilinx Zynq type board"
> +
> +config ARCH_ZYNQ7000
> +	bool "Zynq-7000"
> +	select CPU_V7
> +	select DRIVER_SERIAL_CADENCE
> +
> +endchoice
> +
> +if ARCH_ZYNQ7000
> +
> +choice
> +	prompt "Zynq-7000 Board Type"
> +
> +config MACH_ZEDBOARD
> +	bool "Avnet Zynq-7000 ZedBoard"
> +
> +endchoice
> +endif
> +
> +endif
> diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
> new file mode 100644
> index 0000000..5d632b8
> --- /dev/null
> +++ b/arch/arm/mach-zynq/Makefile
> @@ -0,0 +1 @@
> +obj-y += zynq.o devices.o clocksource.o
> diff --git a/arch/arm/mach-zynq/clocksource.c b/arch/arm/mach-zynq/clocksource.c
> new file mode 100644
> index 0000000..300a73e
> --- /dev/null
> +++ b/arch/arm/mach-zynq/clocksource.c
> @@ -0,0 +1,58 @@
> +/*
> + * (C) Copyright 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <clock.h>
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <mach/zynq7000-regs.h>
> +
> +#define PRIVATE_TIMER_COUNTER	0x04
> +#define PRIVATE_TIMER_CONTROL	0x08
> +
> +#define TIMER_CTRL_TIMER_EN	0x1
> +#define TIMER_CTRL_AUTO_RELOAD	0x2
> +#define TIMER_PRESCALER_SHIFT	0x8
> +#define TIMER_PRESCALER		0xFF

Did you decide against the use of the existing smp_twd driver?  Was
there a particular reason it wasn't suitable?

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
