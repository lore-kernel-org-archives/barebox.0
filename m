Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rhh3O-00013K-A1
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:31:59 +0000
Received: by qcsc1 with SMTP id c1so8211057qcs.36
 for <barebox@lists.infradead.org>; Mon, 02 Jan 2012 04:31:48 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1324419097-2786-1-git-send-email-franck.jullien@gmail.com>
References: <1324419097-2786-1-git-send-email-franck.jullien@gmail.com>
Date: Mon, 2 Jan 2012 13:31:47 +0100
Message-ID: <CAJfOKBxV-n-xdMU0MRt8vEawEwskRd3CPnikdtDNSVXvv2ghMQ@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3075682090365405368=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add OpenRISC arch
To: barebox@lists.infradead.org

--===============3075682090365405368==
Content-Type: multipart/alternative; boundary=002354470fd425d2ea04b58ac430

--002354470fd425d2ea04b58ac430
Content-Type: text/plain; charset=ISO-8859-1

2011/12/20 <franck.jullien@gmail.com>

> From: Franck Jullien <franck.jullien@gmail.com>
>
> OpenRISC is the original flagship project of the OpenCores community.
> This project aims to develop a series of general purpose open source
> RISC CPU architectures.
>
> A team from OpenCores provided the first implementation, the OpenRISC
> 1200, written in the Verilog hardware description language.
>
> Even though I should have created an mach-or1200 directory, it is not
> necessary for now. The OpenRISC 1200 CPU is the only one available and
> it will be for some time.
>
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  arch/openrisc/Kconfig                    |   29 ++
>  arch/openrisc/Makefile                   |   21 ++
>  arch/openrisc/configs/generic_defconfig  |   20 +
>  arch/openrisc/cpu/Makefile               |    5 +
>  arch/openrisc/cpu/barebox.lds.S          |   98 +++++
>  arch/openrisc/cpu/cache.c                |  154 ++++++++
>  arch/openrisc/cpu/cpu.c                  |   43 +++
>  arch/openrisc/cpu/exceptions.c           |   84 +++++
>  arch/openrisc/cpu/start.S                |  335 ++++++++++++++++++
>  arch/openrisc/include/asm/barebox.h      |    4 +
>  arch/openrisc/include/asm/bitops.h       |   28 ++
>  arch/openrisc/include/asm/bitops/ffs.h   |   26 ++
>  arch/openrisc/include/asm/bitops/fls.h   |   26 ++
>  arch/openrisc/include/asm/byteorder.h    |    1 +
>  arch/openrisc/include/asm/cache.h        |   47 +++
>  arch/openrisc/include/asm/common.h       |    4 +
>  arch/openrisc/include/asm/elf.h          |  107 ++++++
>  arch/openrisc/include/asm/io.h           |  123 +++++++
>  arch/openrisc/include/asm/openrisc_exc.h |   41 +++
>  arch/openrisc/include/asm/posix_types.h  |   71 ++++
>  arch/openrisc/include/asm/ptrace.h       |  131 +++++++
>  arch/openrisc/include/asm/sections.h     |    1 +
>  arch/openrisc/include/asm/spr-defs.h     |  567
> ++++++++++++++++++++++++++++++
>  arch/openrisc/include/asm/string.h       |    4 +
>  arch/openrisc/include/asm/swab.h         |    4 +
>  arch/openrisc/include/asm/system.h       |   39 ++
>  arch/openrisc/include/asm/types.h        |   79 ++++
>  arch/openrisc/lib/Makefile               |    6 +
>  arch/openrisc/lib/ashldi3.S              |   41 +++
>  arch/openrisc/lib/board.c                |   42 +++
>  arch/openrisc/lib/clock.c                |   50 +++
>  arch/openrisc/lib/cpuinfo.c              |  156 ++++++++
>  arch/openrisc/lib/lshrdi3.S              |   41 +++
>  arch/openrisc/lib/muldi3.S               |   58 +++
>  34 files changed, 2486 insertions(+), 0 deletions(-)
>  create mode 100644 arch/openrisc/Kconfig
>  create mode 100644 arch/openrisc/Makefile
>  create mode 100644 arch/openrisc/configs/generic_defconfig
>  create mode 100644 arch/openrisc/cpu/Makefile
>  create mode 100644 arch/openrisc/cpu/barebox.lds.S
>  create mode 100644 arch/openrisc/cpu/cache.c
>  create mode 100644 arch/openrisc/cpu/cpu.c
>  create mode 100644 arch/openrisc/cpu/exceptions.c
>  create mode 100644 arch/openrisc/cpu/start.S
>  create mode 100644 arch/openrisc/include/asm/barebox.h
>  create mode 100644 arch/openrisc/include/asm/bitops.h
>  create mode 100644 arch/openrisc/include/asm/bitops/ffs.h
>  create mode 100644 arch/openrisc/include/asm/bitops/fls.h
>  create mode 100644 arch/openrisc/include/asm/byteorder.h
>  create mode 100644 arch/openrisc/include/asm/cache.h
>  create mode 100644 arch/openrisc/include/asm/common.h
>  create mode 100644 arch/openrisc/include/asm/elf.h
>  create mode 100644 arch/openrisc/include/asm/io.h
>  create mode 100644 arch/openrisc/include/asm/openrisc_exc.h
>  create mode 100644 arch/openrisc/include/asm/posix_types.h
>  create mode 100644 arch/openrisc/include/asm/ptrace.h
>  create mode 100644 arch/openrisc/include/asm/sections.h
>  create mode 100644 arch/openrisc/include/asm/spr-defs.h
>  create mode 100644 arch/openrisc/include/asm/string.h
>  create mode 100644 arch/openrisc/include/asm/swab.h
>  create mode 100644 arch/openrisc/include/asm/system.h
>  create mode 100644 arch/openrisc/include/asm/types.h
>  create mode 100644 arch/openrisc/lib/Makefile
>  create mode 100644 arch/openrisc/lib/ashldi3.S
>  create mode 100644 arch/openrisc/lib/board.c
>  create mode 100644 arch/openrisc/lib/clock.c
>  create mode 100644 arch/openrisc/lib/cpuinfo.c
>  create mode 100644 arch/openrisc/lib/lshrdi3.S
>  create mode 100644 arch/openrisc/lib/muldi3.S
>
> diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
> new file mode 100644
> index 0000000..a3cb337
> --- /dev/null
> +++ b/arch/openrisc/Kconfig
> @@ -0,0 +1,29 @@
> +config OPENRISC
> +       bool
> +       select HAVE_CONFIGURABLE_MEMORY_LAYOUT
> +       default y
> +
> +# not used
> +config ARCH_TEXT_BASE
> +       hex
> +       default 0x00000000
> +
> +config BOARDINFO
> +       default "Openrisc simulator" if GENERIC
> +
> +choice
> +       prompt "Select your board"
> +
> +config GENERIC
> +       bool "Generic   "
> +       select OPENRISC
> +
> +endchoice
> +
> +source common/Kconfig
> +source commands/Kconfig
> +source net/Kconfig
> +source drivers/Kconfig
> +source fs/Kconfig
> +source lib/Kconfig
> +source crypto/Kconfig
> diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
> new file mode 100644
> index 0000000..fd8bbbf
> --- /dev/null
> +++ b/arch/openrisc/Makefile
> @@ -0,0 +1,21 @@
> +CPPFLAGS += -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div
> +
> +board-$(CONFIG_GENERIC) := generic
> +
> +KALLSYMS += --symbol-prefix=_
> +
> +archprepare: maketools
> +
> +PHONY += maketools
> +
> +ifneq ($(board-y),)
> +BOARD  := arch/openrisc/boards/$(board-y)/
> +else
> +BOARD  :=
> +endif
> +
> +common-y += $(BOARD)
> +common-y += arch/openrisc/lib/
> +common-y += arch/openrisc/cpu/
> +
> +lds-y += arch/openrisc/cpu/barebox.lds
> diff --git a/arch/openrisc/configs/generic_defconfig
> b/arch/openrisc/configs/generic_defconfig
> new file mode 100644
> index 0000000..68e0371
> --- /dev/null
> +++ b/arch/openrisc/configs/generic_defconfig
> @@ -0,0 +1,20 @@
> +CONFIG_LONGHELP=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_PARTITION=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_LOADENV=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_TIME=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_FLASH=y
> +# CONFIG_CMD_BOOTM is not set
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_DRIVER_SERIAL_NS16550=y
> diff --git a/arch/openrisc/cpu/Makefile b/arch/openrisc/cpu/Makefile
> new file mode 100644
> index 0000000..1cd7506
> --- /dev/null
> +++ b/arch/openrisc/cpu/Makefile
> @@ -0,0 +1,5 @@
> +obj-y                 += start.o
> +obj-y                 += cpu.o
> +obj-y                 += exceptions.o
> +obj-y                 += cache.o
> +extra-y               += barebox.lds
> diff --git a/arch/openrisc/cpu/barebox.lds.S
> b/arch/openrisc/cpu/barebox.lds.S
> new file mode 100644
> index 0000000..d3e02a6
> --- /dev/null
> +++ b/arch/openrisc/cpu/barebox.lds.S
> @@ -0,0 +1,98 @@
> +/*
> + * barebox - barebox.lds.S
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <config.h>
> +#include <asm-generic/barebox.lds.h>
> +
> +OUTPUT_FORMAT("elf32-or32", "elf32-or32", "elf32-or32")
> +__DYNAMIC  =  0;
> +
> +MEMORY
> +{
> +       vectors : ORIGIN = 0, LENGTH = 0x2000
> +       ram     : ORIGIN = TEXT_BASE,
> +                 LENGTH = BAREBOX_RESERVED_SIZE
> +}
> +
> +SECTIONS
> +{
> +       .vectors :
> +       {
> +               *(.vectors)
> +       } > vectors
> +
> +       . = ALIGN(4);
> +       __start = .;
> +       .text : AT (__start) {
> +               _stext = .;
> +               *(.text)
> +               _etext = .;
> +               *(.lit)
> +               *(.shdata)
> +               _endtext = .;
> +       }  > ram
> +
> +       . = ALIGN(4);
> +       .rodata : {
> +               *(.rodata);
> +               *(.rodata.*)
> +       } > ram
> +
> +       . = ALIGN(4);
> +       . = .;
> +       __barebox_cmd_start = .;
> +       .barebox_cmd : { BAREBOX_CMDS } > ram
> +       __barebox_cmd_end = .;
> +
> +       __barebox_magicvar_start = .;
> +       .barebox_magicvar : { BAREBOX_MAGICVARS } > ram
> +       __barebox_magicvar_end = .;
> +
> +       __barebox_initcalls_start = .;
> +       .barebox_initcalls : { INITCALLS } > ram
> +       __barebox_initcalls_end = .;
> +
> +       ___usymtab_start = .;
> +       __usymtab : { BAREBOX_SYMS } > ram
> +       ___usymtab_end = .;
> +
> +       __etext = .; /* End of text and rodata section */
> +
> +       . = ALIGN(4);
> +       .data : {
> +               sdata = .;
> +               _sdata = .;
> +               *(.data)
> +               edata = .;
> +               _edata = .;
> +       } > ram
> +
> +       . = ALIGN(4);
> +       .bss :
> +       {
> +               __bss_start = .;
> +               _bss_start = .;
> +               *(.shbss)
> +               *(.bss)
> +               *(COMMON)
> +               _bss_end = .;
> +               __bss_stop = .;
> +       } > ram
> +       __end = .;
> +}
> diff --git a/arch/openrisc/cpu/cache.c b/arch/openrisc/cpu/cache.c
> new file mode 100644
> index 0000000..81a0d13
> --- /dev/null
> +++ b/arch/openrisc/cpu/cache.c
> @@ -0,0 +1,154 @@
> +/*
> + * (C) Copyright 2011, Stefan Kristiansson <
> stefan.kristiansson@saunalahti.fi>
> + * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <asm/system.h>
> +
> +void flush_dcache_range(unsigned long addr, unsigned long stop)
> +{
> +       ulong block_size = (mfspr(SPR_DCCFGR) & SPR_DCCFGR_CBS) ? 32 : 16;
> +
> +       while (addr < stop) {
> +               mtspr(SPR_DCBFR, addr);
> +               addr += block_size;
> +       }
> +}
> +
> +void invalidate_dcache_range(unsigned long addr, unsigned long stop)
> +{
> +       ulong block_size = (mfspr(SPR_DCCFGR) & SPR_DCCFGR_CBS) ? 32 : 16;
> +
> +       while (addr < stop) {
> +               mtspr(SPR_DCBIR, addr);
> +               addr += block_size;
> +       }
> +}
> +
> +static void invalidate_icache_range(unsigned long addr, unsigned long
> stop)
> +{
> +       ulong block_size = (mfspr(SPR_ICCFGR) & SPR_ICCFGR_CBS) ? 32 : 16;
> +
> +       while (addr < stop) {
> +               mtspr(SPR_ICBIR, addr);
> +               addr += block_size;
> +       }
> +}
> +
> +void flush_cache(unsigned long addr, unsigned long size)
> +{
> +       flush_dcache_range(addr, addr + size);
> +       invalidate_icache_range(addr, addr + size);
> +}
> +
> +int icache_status(void)
> +{
> +       return mfspr(SPR_SR) & SPR_SR_ICE;
> +}
> +
> +int checkicache(void)
> +{
> +       unsigned long iccfgr;
> +       unsigned long cache_set_size;
> +       unsigned long cache_ways;
> +       unsigned long cache_block_size;
> +
> +       iccfgr = mfspr(SPR_ICCFGR);
> +       cache_ways = 1 << (iccfgr & SPR_ICCFGR_NCW);
> +       cache_set_size = 1 << ((iccfgr & SPR_ICCFGR_NCS) >> 3);
> +       cache_block_size = (iccfgr & SPR_ICCFGR_CBS) ? 32 : 16;
> +
> +       return cache_set_size * cache_ways * cache_block_size;
> +}
> +
> +int dcache_status(void)
> +{
> +       return mfspr(SPR_SR) & SPR_SR_DCE;
> +}
> +
> +int checkdcache(void)
> +{
> +       unsigned long dccfgr;
> +       unsigned long cache_set_size;
> +       unsigned long cache_ways;
> +       unsigned long cache_block_size;
> +
> +       dccfgr = mfspr(SPR_DCCFGR);
> +       cache_ways = 1 << (dccfgr & SPR_DCCFGR_NCW);
> +       cache_set_size = 1 << ((dccfgr & SPR_DCCFGR_NCS) >> 3);
> +       cache_block_size = (dccfgr & SPR_DCCFGR_CBS) ? 32 : 16;
> +
> +       return cache_set_size * cache_ways * cache_block_size;
> +}
> +
> +void dcache_enable(void)
> +{
> +       mtspr(SPR_SR, mfspr(SPR_SR) | SPR_SR_DCE);
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +}
> +
> +void dcache_disable(void)
> +{
> +       mtspr(SPR_SR, mfspr(SPR_SR) & ~SPR_SR_DCE);
> +}
> +
> +void icache_enable(void)
> +{
> +       mtspr(SPR_SR, mfspr(SPR_SR) | SPR_SR_ICE);
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +       asm volatile("l.nop");
> +}
> +
> +void icache_disable(void)
> +{
> +       mtspr(SPR_SR, mfspr(SPR_SR) & ~SPR_SR_ICE);
> +}
> +
> +int cache_init(void)
> +{
> +       if (mfspr(SPR_UPR) & SPR_UPR_ICP) {
> +               icache_disable();
> +               invalidate_icache_range(0, checkicache());
> +               icache_enable();
> +       }
> +
> +       if (mfspr(SPR_UPR) & SPR_UPR_DCP) {
> +               dcache_disable();
> +               invalidate_dcache_range(0, checkdcache());
> +               dcache_enable();
> +       }
> +
> +       return 0;
> +}
> +
> +core_initcall(cache_init);
> diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c
> new file mode 100644
> index 0000000..48f5d03
> --- /dev/null
> +++ b/arch/openrisc/cpu/cpu.c
> @@ -0,0 +1,43 @@
> +/*
> + * (C) Copyright 2011, Stefan Kristiansson <
> stefan.kristiansson@saunalahti.fi>
> + * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <asm/system.h>
> +#include <asm/openrisc_exc.h>
> +
> +int cleanup_before_linux(void)
> +{
> +       return 0;
> +}
> +
> +extern void __reset(void);
> +
> +void __noreturn reset_cpu(ulong ignored)
> +{
> +       __reset();
> +       /* not reached, __reset does not return */
> +
> +       /* Not reached */
> +       while (1);
> +}
> diff --git a/arch/openrisc/cpu/exceptions.c
> b/arch/openrisc/cpu/exceptions.c
> new file mode 100644
> index 0000000..a979258
> --- /dev/null
> +++ b/arch/openrisc/cpu/exceptions.c
> @@ -0,0 +1,84 @@
> +/*
> + * (C) Copyright 2011, Stefan Kristiansson <
> stefan.kristiansson@saunalahti.fi>
> + * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <asm/system.h>
> +
> +static const char * const excp_table[] = {
> +       "Unknown exception",
> +       "Reset",
> +       "Bus Error",
> +       "Data Page Fault",
> +       "Instruction Page Fault",
> +       "Tick Timer",
> +       "Alignment",
> +       "Illegal Instruction",
> +       "External Interrupt",
> +       "D-TLB Miss",
> +       "I-TLB Miss",
> +       "Range",
> +       "System Call",
> +       "Floating Point",
> +       "Trap",
> +};
> +
> +static void (*handlers[32])(void);
> +
> +void exception_install_handler(int exception, void (*handler)(void))
> +{
> +       if (exception < 0 || exception > 31)
> +               return;
> +
> +       handlers[exception] = handler;
> +}
> +
> +void exception_free_handler(int exception)
> +{
> +       if (exception < 0 || exception > 31)
> +               return;
> +
> +       handlers[exception] = 0;
> +}
> +
> +static void exception_hang(int vect)
> +{
> +       printf("Unhandled exception at 0x%x ", vect & 0xff00);
> +
> +       vect = ((vect >> 8) & 0xff);
> +       if (vect < ARRAY_SIZE(excp_table))
> +               printf("(%s)\n", excp_table[vect]);
> +       else
> +               printf("(%s)\n", excp_table[0]);
> +
> +       printf("EPCR: 0x%08lx\n", mfspr(SPR_EPCR_BASE));
> +       printf("EEAR: 0x%08lx\n", mfspr(SPR_EEAR_BASE));
> +       printf("ESR:  0x%08lx\n", mfspr(SPR_ESR_BASE));
> +       hang();
> +}
> +
> +void exception_handler(int vect)
> +{
> +       int exception = vect >> 8;
> +
> +       if (handlers[exception])
> +               handlers[exception]();
> +       else
> +               exception_hang(vect);
> +}
> diff --git a/arch/openrisc/cpu/start.S b/arch/openrisc/cpu/start.S
> new file mode 100644
> index 0000000..056f116
> --- /dev/null
> +++ b/arch/openrisc/cpu/start.S
> @@ -0,0 +1,335 @@
> +/*
> + * (C) Copyright 2011, Stefan Kristiansson <
> stefan.kristiansson@saunalahti.fi>
> + * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <config.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/spr-defs.h>
> +
> +#define EXCEPTION_STACK_SIZE (128+128)
> +
> +#define HANDLE_EXCEPTION                       \
> +       l.addi  r1, r1, -EXCEPTION_STACK_SIZE   ;\
> +       l.sw    0x1c(r1), r9                    ;\
> +       l.jal   _exception_handler              ;\
> +        l.nop                                  ;\
> +       l.lwz   r9, 0x1c(r1)                    ;\
> +       l.addi  r1, r1, EXCEPTION_STACK_SIZE    ;\
> +       l.rfe                                   ;\
> +        l.nop
> +
> +       .section .vectors, "ax"
> +       .global __reset
> +
> +       /* reset */
> +       .org    0x100
> +__reset:
> +       /* there is no guarantee r0 is hardwired to zero, clear it here */
> +       l.andi  r0, r0, 0
> +       /* reset stack and frame pointers */
> +       l.andi  r1, r0, 0
> +       l.andi  r2, r0, 0
> +
> +       /* set supervisor mode */
> +       l.ori   r3,r0,SPR_SR_SM
> +       l.mtspr r0,r3,SPR_SR
> +
> +       /* Relocate barebox */
> +       l.movhi r3,hi(__start)          /* source start address */
> +       l.ori   r3,r3,lo(__start)
> +       l.movhi r4,hi(_stext)           /* dest start address */
> +       l.ori   r4,r4,lo(_stext)
> +       l.movhi r5,hi(__end)            /* dest end address */
> +       l.ori   r5,r5,lo(__end)
> +
> +.L_reloc:
> +       l.lwz   r6,0(r3)
> +       l.sw    0(r4),r6
> +       l.addi  r3,r3,4
> +       l.sfltu r4,r5
> +       l.bf    .L_reloc
> +       l.addi  r4,r4,4                 /*delay slot */
> +
> +#ifdef CONFIG_SYS_RELOCATE_VECTORS
> +       /* Relocate vectors from 0xf0000000 to 0x00000000 */
> +       l.movhi r4, 0xf000 /* source */
> +       l.movhi r5, 0      /* destination */
> +       l.addi  r6, r5, CONFIG_SYS_VECTORS_LEN /* length */
> +.L_relocvectors:
> +       l.lwz   r7, 0(r4)
> +       l.sw    0(r5), r7
> +       l.addi  r5, r5, 4
> +       l.sfeq  r5,r6
> +       l.bnf   .L_relocvectors
> +        l.addi r4,r4, 4
> +#endif
> +
> +       l.j     _start
> +        l.nop
> +
> +       /* bus error */
> +       .org    0x200
> +       HANDLE_EXCEPTION
> +
> +       /* data page fault */
> +       .org    0x300
> +       HANDLE_EXCEPTION
> +
> +       /* instruction page fault */
> +       .org    0x400
> +       HANDLE_EXCEPTION
> +
> +       /* tick timer */
> +       .org    0x500
> +       HANDLE_EXCEPTION
> +
> +       /* alignment */
> +       .org    0x600
> +       HANDLE_EXCEPTION
> +
> +       /* illegal instruction */
> +       .org    0x700
> +       HANDLE_EXCEPTION
> +
> +       /* external interrupt */
> +       .org    0x800
> +       HANDLE_EXCEPTION
> +
> +       /* D-TLB miss */
> +       .org    0x900
> +       HANDLE_EXCEPTION
> +
> +       /* I-TLB miss */
> +       .org    0xa00
> +       HANDLE_EXCEPTION
> +
> +       /* range */
> +       .org    0xb00
> +       HANDLE_EXCEPTION
> +
> +       /* system call */
> +       .org    0xc00
> +       HANDLE_EXCEPTION
> +
> +       /* floating point */
> +       .org    0xd00
> +       HANDLE_EXCEPTION
> +
> +       /* trap */
> +       .org    0xe00
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0xf00
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1100
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1200
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1300
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1400
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1500
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1600
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1700
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1800
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1900
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1a00
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1b00
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1c00
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1d00
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1e00
> +       HANDLE_EXCEPTION
> +
> +       /* reserved */
> +       .org    0x1f00
> +       HANDLE_EXCEPTION
> +
> +       /* Startup routine */
> +       .text
> +       .global _start
> +_start:
> +       /* Init stack and frame pointers */
> +       l.movhi r1, hi(STACK_BASE)
> +       l.ori   r1, r1, lo(STACK_BASE)
> +       l.or    r2, r0, r1
> +
> +       /* clear BSS segments */
> +       l.movhi r4, hi(_bss_start)
> +       l.ori   r4, r4, lo(_bss_start)
> +       l.movhi r5, hi(_bss_end)
> +       l.ori   r5, r5, lo(_bss_end)
> +.L_clear_bss:
> +       l.sw    0(r4), r0
> +       l.sfltu r4,r5
> +       l.bf    .L_clear_bss
> +        l.addi r4,r4,4
> +
> +       /* Reset registers before jumping to board_init */
> +       l.andi  r3, r0, 0
> +       l.andi  r4, r0, 0
> +       l.andi  r5, r0, 0
> +       l.andi  r6, r0, 0
> +       l.andi  r7, r0, 0
> +       l.andi  r8, r0, 0
> +       l.andi  r9, r0, 0
> +       l.andi  r10, r0, 0
> +       l.andi  r11, r0, 0
> +       l.andi  r12, r0, 0
> +       l.andi  r13, r0, 0
> +       l.andi  r14, r0, 0
> +       l.andi  r15, r0, 0
> +       l.andi  r17, r0, 0
> +       l.andi  r18, r0, 0
> +       l.andi  r19, r0, 0
> +       l.andi  r20, r0, 0
> +       l.andi  r21, r0, 0
> +       l.andi  r22, r0, 0
> +       l.andi  r23, r0, 0
> +       l.andi  r24, r0, 0
> +       l.andi  r25, r0, 0
> +       l.andi  r26, r0, 0
> +       l.andi  r27, r0, 0
> +       l.andi  r28, r0, 0
> +       l.andi  r29, r0, 0
> +       l.andi  r30, r0, 0
> +       l.andi  r31, r0, 0
> +
> +       l.j     start_barebox
> +        l.nop
> +
> +       .size   _start, .-_start
> +
> +/*
> + * Store state onto stack and call the real exception handler
> + */
> +       .section .text
> +       .extern exception_handler
> +       .type   _exception_handler,@function
> +
> +_exception_handler:
> +       /* Store state (r9 already saved)*/
> +       l.sw    0x00(r1), r2
> +       l.sw    0x04(r1), r3
> +       l.sw    0x08(r1), r4
> +       l.sw    0x0c(r1), r5
> +       l.sw    0x10(r1), r6
> +       l.sw    0x14(r1), r7
> +       l.sw    0x18(r1), r8
> +       l.sw    0x20(r1), r10
> +       l.sw    0x24(r1), r11
> +       l.sw    0x28(r1), r12
> +       l.sw    0x2c(r1), r13
> +       l.sw    0x30(r1), r14
> +       l.sw    0x34(r1), r15
> +       l.sw    0x38(r1), r16
> +       l.sw    0x3c(r1), r17
> +       l.sw    0x40(r1), r18
> +       l.sw    0x44(r1), r19
> +       l.sw    0x48(r1), r20
> +       l.sw    0x4c(r1), r21
> +       l.sw    0x50(r1), r22
> +       l.sw    0x54(r1), r23
> +       l.sw    0x58(r1), r24
> +       l.sw    0x5c(r1), r25
> +       l.sw    0x60(r1), r26
> +       l.sw    0x64(r1), r27
> +       l.sw    0x68(r1), r28
> +       l.sw    0x6c(r1), r29
> +       l.sw    0x70(r1), r30
> +       l.sw    0x74(r1), r31
> +
> +       /* Save return address */
> +       l.or    r14, r0, r9
> +       /* Call exception handler with the link address as argument */
> +       l.jal   exception_handler
> +        l.or   r3, r0, r14
> +       /* Load return address */
> +       l.or    r9, r0, r14
> +
> +       /* Restore state */
> +       l.lwz   r2, 0x00(r1)
> +       l.lwz   r3, 0x04(r1)
> +       l.lwz   r4, 0x08(r1)
> +       l.lwz   r5, 0x0c(r1)
> +       l.lwz   r6, 0x10(r1)
> +       l.lwz   r7, 0x14(r1)
> +       l.lwz   r8, 0x18(r1)
> +       l.lwz   r10, 0x20(r1)
> +       l.lwz   r11, 0x24(r1)
> +       l.lwz   r12, 0x28(r1)
> +       l.lwz   r13, 0x2c(r1)
> +       l.lwz   r14, 0x30(r1)
> +       l.lwz   r15, 0x34(r1)
> +       l.lwz   r16, 0x38(r1)
> +       l.lwz   r17, 0x3c(r1)
> +       l.lwz   r18, 0x40(r1)
> +       l.lwz   r19, 0x44(r1)
> +       l.lwz   r20, 0x48(r1)
> +       l.lwz   r21, 0x4c(r1)
> +       l.lwz   r22, 0x50(r1)
> +       l.lwz   r23, 0x54(r1)
> +       l.lwz   r24, 0x58(r1)
> +       l.lwz   r25, 0x5c(r1)
> +       l.lwz   r26, 0x60(r1)
> +       l.lwz   r27, 0x64(r1)
> +       l.lwz   r28, 0x68(r1)
> +       l.lwz   r29, 0x6c(r1)
> +       l.lwz   r30, 0x70(r1)
> +       l.lwz   r31, 0x74(r1)
> +       l.jr    r9
> +        l.nop
> diff --git a/arch/openrisc/include/asm/barebox.h
> b/arch/openrisc/include/asm/barebox.h
> new file mode 100644
> index 0000000..9dd1df8
> --- /dev/null
> +++ b/arch/openrisc/include/asm/barebox.h
> @@ -0,0 +1,4 @@
> +#ifndef _ASM_BAREBOX_H_
> +#define _ASM_BAREBOX_H_
> +
> +#endif /* _ASM_BAREBOX_H_ */
> diff --git a/arch/openrisc/include/asm/bitops.h
> b/arch/openrisc/include/asm/bitops.h
> new file mode 100644
> index 0000000..c001a5d
> --- /dev/null
> +++ b/arch/openrisc/include/asm/bitops.h
> @@ -0,0 +1,28 @@
> +/*
> + * (C) Copyright 2011, Stefan Kristiansson <
> stefan.kristiansson@saunalahti.fi>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef __ASM_OPENRISC_BITOPS_H
> +#define __ASM_OPENRISC_BITOPS_H
> +
> +#define PLATFORM_FLS
> +#include <asm/bitops/fls.h>
> +#define PLATFORM_FFS
> +#include <asm/bitops/ffs.h>
> +
> +#endif /* __ASM_GENERIC_BITOPS_H */
> diff --git a/arch/openrisc/include/asm/bitops/ffs.h
> b/arch/openrisc/include/asm/bitops/ffs.h
> new file mode 100644
> index 0000000..1de5295
> --- /dev/null
> +++ b/arch/openrisc/include/asm/bitops/ffs.h
> @@ -0,0 +1,26 @@
> +/*
> + * OpenRISC Linux
> + *
> + * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#ifndef __ASM_OPENRISC_FFS_H
> +#define __ASM_OPENRISC_FFS_H
> +
> +static inline int ffs(int x)
> +{
> +       int ret;
> +
> +       __asm__ ("l.ff1 %0,%1"
> +                : "=r" (ret)
> +                : "r" (x));
> +
> +       return ret;
> +}
> +
> +#endif /* __ASM_OPENRISC_FFS_H */
> diff --git a/arch/openrisc/include/asm/bitops/fls.h
> b/arch/openrisc/include/asm/bitops/fls.h
> new file mode 100644
> index 0000000..8c77c13
> --- /dev/null
> +++ b/arch/openrisc/include/asm/bitops/fls.h
> @@ -0,0 +1,26 @@
> +/*
> + * OpenRISC Linux
> + *
> + * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#ifndef __ASM_OPENRISC_FLS_H
> +#define __ASM_OPENRISC_FLS_H
> +
> +static inline int fls(int x)
> +{
> +       int ret;
> +
> +       __asm__ ("l.fl1 %0,%1"
> +                : "=r" (ret)
> +                : "r" (x));
> +
> +       return ret;
> +}
> +
> +#endif /* __ASM_OPENRISC_FLS_H */
> diff --git a/arch/openrisc/include/asm/byteorder.h
> b/arch/openrisc/include/asm/byteorder.h
> new file mode 100644
> index 0000000..60d14f7
> --- /dev/null
> +++ b/arch/openrisc/include/asm/byteorder.h
> @@ -0,0 +1 @@
> +#include <linux/byteorder/big_endian.h>
> diff --git a/arch/openrisc/include/asm/cache.h
> b/arch/openrisc/include/asm/cache.h
> new file mode 100644
> index 0000000..05cf998
> --- /dev/null
> +++ b/arch/openrisc/include/asm/cache.h
> @@ -0,0 +1,47 @@
> +/*
> + * (C) Copyright 2011, Stefan Kristiansson <
> stefan.kristiansson@saunalahti.fi>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef __ASM_OPENRISC_CACHE_H_
> +#define __ASM_OPENRISC_CACHE_H_
> +
> +void flush_dcache_range(unsigned long addr, unsigned long stop);
> +void invalidate_dcache_range(unsigned long addr, unsigned long stop);
> +void flush_cache(unsigned long addr, unsigned long size);
> +int icache_status(void);
> +int checkicache(void);
> +int dcache_status(void);
> +int checkdcache(void);
> +void dcache_enable(void);
> +void dcache_disable(void);
> +void icache_enable(void);
> +void icache_disable(void);
> +
> +/*
> + * Valid L1 data cache line sizes for the OpenRISC architecture are
> + * 16 and 32 bytes.
> + * If the board configuration has not specified one we default to the
> + * largest of these values for alignment of DMA buffers.
> + */
> +#ifdef CONFIG_SYS_CACHELINE_SIZE
> +#define ARCH_DMA_MINALIGN       CONFIG_SYS_CACHELINE_SIZE
> +#else
> +#define ARCH_DMA_MINALIGN       32
> +#endif
> +
> +#endif /* __ASM_OPENRISC_CACHE_H_ */
> diff --git a/arch/openrisc/include/asm/common.h
> b/arch/openrisc/include/asm/common.h
> new file mode 100644
> index 0000000..027dca2
> --- /dev/null
> +++ b/arch/openrisc/include/asm/common.h
> @@ -0,0 +1,4 @@
> +#ifndef _ASM_COMMON_H
> +#define __ASM_COMMON_H
> +
> +#endif /* _ASM_COMMON_H */
> diff --git a/arch/openrisc/include/asm/elf.h
> b/arch/openrisc/include/asm/elf.h
> new file mode 100644
> index 0000000..6a134a5
> --- /dev/null
> +++ b/arch/openrisc/include/asm/elf.h
> @@ -0,0 +1,107 @@
> +/*
> + * OpenRISC Linux
> + *
> + * Linux architectural port borrowing liberally from similar works of
> + * others.  All original copyrights apply as per the original source
> + * declaration.
> + *
> + * OpenRISC implementation:
> + * Copyright (C) 2003 Matjaz Breskvar <phoenix@bsemi.com>
> + * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
> + * et al.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#ifndef __ASM_OPENRISC_ELF_H
> +#define __ASM_OPENRISC_ELF_H
> +
> +/*
> + * ELF register definitions..
> + */
> +#include <linux/types.h>
> +#include <asm/ptrace.h>
> +
> +/* The OR1K relocation types... not all relevant for module loader */
> +#define R_OR32_NONE    0
> +#define R_OR32_32      1
> +#define R_OR32_16      2
> +#define R_OR32_8       3
> +#define R_OR32_CONST   4
> +#define R_OR32_CONSTH  5
> +#define R_OR32_JUMPTARG        6
> +#define R_OR32_VTINHERIT 7
> +#define R_OR32_VTENTRY 8
> +
> +typedef unsigned long elf_greg_t;
> +
> +/*
> + * Note that NGREG is defined to ELF_NGREG in include/linux/elfcore.h,
> and is
> + * thus exposed to user-space.
> + */
> +#define ELF_NGREG (sizeof(struct user_regs_struct) / sizeof(elf_greg_t))
> +typedef elf_greg_t elf_gregset_t[ELF_NGREG];
> +
> +/* A placeholder; OR32 does not have fp support yes, so no fp regs for
> now.  */
> +typedef unsigned long elf_fpregset_t;
> +
> +/* This should be moved to include/linux/elf.h */
> +#define EM_OR32         0x8472
> +#define EM_OPENRISC     92     /* OpenRISC 32-bit embedded processor */
> +
> +/*
> + * These are used to set parameters in the core dumps.
> + */
> +#define ELF_ARCH       EM_OR32
> +#define ELF_CLASS      ELFCLASS32
> +#define ELF_DATA       ELFDATA2MSB
> +
> +#ifdef __KERNEL__
> +
> +/*
> + * This is used to ensure we don't load something for the wrong
> architecture.
> + */
> +
> +#define elf_check_arch(x) \
> +       (((x)->e_machine == EM_OR32) || ((x)->e_machine == EM_OPENRISC))
> +
> +/* This is the location that an ET_DYN program is loaded if exec'ed.
>  Typical
> +   use of this is to invoke "./ld.so someprog" to test out a new version
> of
> +   the loader.  We need to make sure that it is out of the way of the
> program
> +   that it will "exec", and that there is sufficient room for the brk.  */
> +
> +#define ELF_ET_DYN_BASE         (0x08000000)
> +
> +/*
> + * Enable dump using regset.
> + * This covers all of general/DSP/FPU regs.
> + */
> +#define CORE_DUMP_USE_REGSET
> +
> +#define ELF_EXEC_PAGESIZE      8192
> +
> +extern void dump_elf_thread(elf_greg_t *dest, struct pt_regs *pt);
> +#define ELF_CORE_COPY_REGS(dest, regs) dump_elf_thread(dest, regs);
> +
> +/* This yields a mask that user programs can use to figure out what
> +   instruction set this cpu supports.  This could be done in userspace,
> +   but it's not easy, and we've already done it here.  */
> +
> +#define ELF_HWCAP      (0)
> +
> +/* This yields a string that ld.so will use to load implementation
> +   specific libraries for optimization.  This is more specific in
> +   intent than poking at uname or /proc/cpuinfo.
> +
> +   For the moment, we have only optimizations for the Intel generations,
> +   but that could change... */
> +
> +#define ELF_PLATFORM   (NULL)
> +
> +#define SET_PERSONALITY(ex) set_personality(PER_LINUX)
> +
> +#endif /* __KERNEL__ */
> +#endif
> diff --git a/arch/openrisc/include/asm/io.h
> b/arch/openrisc/include/asm/io.h
> new file mode 100644
> index 0000000..19b260a
> --- /dev/null
> +++ b/arch/openrisc/include/asm/io.h
> @@ -0,0 +1,123 @@
> +/*
> + * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef __ASM_OPENRISC_IO_H
> +#define __ASM_OPENRISC_IO_H
> +
> +#include <asm/byteorder.h>
> +
> +/*
> + * Given a physical address and a length, return a virtual address
> + * that can be used to access the memory range with the caching
> + * properties specified by "flags".
> + */
> +#define MAP_NOCACHE    (0)
> +#define MAP_WRCOMBINE  (0)
> +#define MAP_WRBACK     (0)
> +#define MAP_WRTHROUGH  (0)
> +
> +static inline void *
> +map_physmem(phys_addr_t paddr, unsigned long len, unsigned long flags)
> +{
> +       return (void *)paddr;
> +}
> +
> +/*
> + * Take down a mapping set up by map_physmem().
> + */
> +static inline void unmap_physmem(void *vaddr, unsigned long flags)
> +{
> +
> +}
> +
> +/*
> + * Change virtual addresses to physical addresses
> + */
> +static inline phys_addr_t virt_to_phys(void *vaddr)
> +{
> +       return (phys_addr_t)(vaddr);
> +}
> +
> +
> +/*
> + * readX/writeX() are used to access memory mapped devices. On some
> + * architectures the memory mapped IO stuff needs to be accessed
> + * differently. On the openrisc architecture, we just read/write the
> + * memory location directly.
> + */
> +#define readb(addr) (*(volatile unsigned char *) (addr))
> +#define readw(addr) (*(volatile unsigned short *) (addr))
> +#define readl(addr) (*(volatile unsigned int *) (addr))
> +#define __raw_readb readb
> +#define __raw_readw readw
> +#define __raw_readl readl
> +
> +#define writeb(b, addr) ((*(volatile unsigned char *) (addr)) = (b))
> +#define writew(b, addr) ((*(volatile unsigned short *) (addr)) = (b))
> +#define writel(b, addr) ((*(volatile unsigned int *) (addr)) = (b))
> +#define __raw_writeb writeb
> +#define __raw_writew writew
> +#define __raw_writel writel
> +
> +#define memset_io(a, b, c)     memset((void *)(a), (b), (c))
> +#define memcpy_fromio(a, b, c) memcpy((a), (void *)(b), (c))
> +#define memcpy_toio(a, b, c)   memcpy((void *)(a), (b), (c))
> +
> +#define out_be32(a, v) __raw_writel((v), (void __iomem __force *)(a))
> +#define out_be16(a, v) __raw_writew((v), (a))
> +
> +#define in_be32(a) __raw_readl((const void __iomem __force *)(a))
> +#define in_be16(a) __raw_readw(a)
> +
> +#define writel_be(v, a) out_be32((__force unsigned *)a, v)
> +#define readl_be(a)     in_be32((__force unsigned *)a)
> +
> +/*
> + * Again, OpenRISC does not require mem IO specific function.
> + */
> +
> +
> +#define IO_BASE                        0x0
> +#define IO_SPACE_LIMIT         0xffffffff
> +
> +#define inb(port)              readb((port + IO_BASE))
> +#define outb(value, port)      writeb((value), (port + IO_BASE))
> +#define inb_p(port)            inb((port))
> +#define outb_p(value, port)    outb((value), (port))
> +
> +/*
> + * Convert a physical pointer to a virtual kernel pointer for /dev/mem
> + * access
> + */
> +#define xlate_dev_mem_ptr(p)   __va(p)
> +
> +/*
> + * Convert a virtual cached pointer to an uncached pointer
> + */
> +#define xlate_dev_kmem_ptr(p)  p
> +
> +#define ioread8(addr)          readb(addr)
> +#define ioread16(addr)         readw(addr)
> +#define ioread32(addr)         readl(addr)
> +
> +#define iowrite8(v, addr)      writeb((v), (addr))
> +#define iowrite16(v, addr)     writew((v), (addr))
> +#define iowrite32(v, addr)     writel((v), (addr))
> +
> +#endif
> diff --git a/arch/openrisc/include/asm/openrisc_exc.h
> b/arch/openrisc/include/asm/openrisc_exc.h
> new file mode 100644
> index 0000000..33f6453
> --- /dev/null
> +++ b/arch/openrisc/include/asm/openrisc_exc.h
> @@ -0,0 +1,41 @@
> +/*
> + * (C) Copyright 2011, Stefan Kristiansson <
> stefan.kristiansson@saunalahti.fi>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef _OPENRISC_EXC_H_
> +#define _OPENRISC_EXC_H_
> +
> +#define EXC_RESET              0x01
> +#define EXC_BUS_ERROR          0x02
> +#define EXC_DATA_PAGE_FAULT    0x03
> +#define EXC_INSTR_PAGE_FAULT   0x04
> +#define EXC_TIMER              0x05
> +#define EXC_ALIGNMENT          0x06
> +#define EXC_ILLEGAL_INSTR      0x07
> +#define EXC_EXT_IRQ            0x08
> +#define EXC_DTLB_MISS          0x09
> +#define EXC_ITLB_MISS          0x0a
> +#define EXC_RANGE              0x0b
> +#define EXC_SYSCALL            0x0c
> +#define EXC_FLOAT_POINT                0x0d
> +#define EXC_TRAP               0x0e
> +
> +void exception_install_handler(int exception, void (*handler)(void));
> +void exception_free_handler(int exception);
> +
> +#endif
> diff --git a/arch/openrisc/include/asm/posix_types.h
> b/arch/openrisc/include/asm/posix_types.h
> new file mode 100644
> index 0000000..7f4c942
> --- /dev/null
> +++ b/arch/openrisc/include/asm/posix_types.h
> @@ -0,0 +1,71 @@
> +/*
> + * Based on microblaze implementation:
> + *  Copyright (C) 2003       John Williams <jwilliams@itee.uq.edu.au>
> + *  Copyright (C) 2001,2002  NEC Corporation
> + *  Copyright (C) 2001,2002  Miles Bader <miles@gnu.org>
> + *
> + * This file is subject to the terms and conditions of the GNU General
> + * Public License.  See the file COPYING in the main directory of this
> + * archive for more details.
> + *
> + * Written by Miles Bader <miles@gnu.org>
> + * Microblaze port by John Williams
> + */
> +
> +#ifndef __ASM_OPENRISC_POSIX_TYPES_H
> +#define __ASM_OPENRISC_POSIX_TYPES_H
> +
> +typedef unsigned long  __kernel_ino_t;
> +typedef unsigned long long __kernel_ino64_t;
> +typedef unsigned int   __kernel_mode_t;
> +typedef unsigned int   __kernel_nlink_t;
> +typedef long           __kernel_off_t;
> +typedef long long      __kernel_loff_t;
> +typedef int            __kernel_pid_t;
> +typedef unsigned short __kernel_ipc_pid_t;
> +typedef unsigned int   __kernel_uid_t;
> +typedef unsigned int   __kernel_gid_t;
> +typedef unsigned int   __kernel_size_t;
> +typedef int            __kernel_ssize_t;
> +typedef int            __kernel_ptrdiff_t;
> +typedef long           __kernel_time_t;
> +typedef long           __kernel_suseconds_t;
> +typedef long           __kernel_clock_t;
> +typedef int            __kernel_daddr_t;
> +typedef char           *__kernel_caddr_t;
> +typedef unsigned short __kernel_uid16_t;
> +typedef unsigned short __kernel_gid16_t;
> +typedef unsigned int   __kernel_uid32_t;
> +typedef unsigned int   __kernel_gid32_t;
> +
> +typedef unsigned short __kernel_old_uid_t;
> +typedef unsigned short __kernel_old_gid_t;
> +
> +
> +typedef struct {
> +#if defined(__KERNEL__) || defined(__USE_ALL)
> +       int     val[2];
> +#else /* !defined(__KERNEL__) && !defined(__USE_ALL) */
> +       int     __val[2];
> +#endif /* !defined(__KERNEL__) && !defined(__USE_ALL) */
> +} __kernel_fsid_t;
> +
> +
> +#if defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ < 2)
> +
> +#undef __FD_SET
> +#define __FD_SET(fd, fd_set) \
> +       __set_bit(fd, (void *)&((__kernel_fd_set *)fd_set)->fds_bits)
> +#undef __FD_CLR
> +#define __FD_CLR(fd, fd_set) \
> +       __clear_bit(fd, (void *)&((__kernel_fd_set *)fd_set)->fds_bits)
> +#undef __FD_ISSET
> +#define __FD_ISSET(fd, fd_set) \
> +       __test_bit(fd, (void *)&((__kernel_fd_set *)fd_set)->fds_bits)
> +#undef __FD_ZERO
> +#define __FD_ZERO(fd_set) \
> +       memset(fd_set, 0, sizeof(*(fd_set *)fd_set))
> +
> +#endif /* defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ < 2) */
> +
> +#endif /* __ASM_OPENRISC_POSIX_TYPES_H */
> diff --git a/arch/openrisc/include/asm/ptrace.h
> b/arch/openrisc/include/asm/ptrace.h
> new file mode 100644
> index 0000000..ffdea52
> --- /dev/null
> +++ b/arch/openrisc/include/asm/ptrace.h
> @@ -0,0 +1,131 @@
> +/*
> + * OpenRISC Linux
> + *
> + * Linux architectural port borrowing liberally from similar works of
> + * others.  All original copyrights apply as per the original source
> + * declaration.
> + *
> + * OpenRISC implementation:
> + * Copyright (C) 2003 Matjaz Breskvar <phoenix@bsemi.com>
> + * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
> + * et al.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#ifndef __ASM_OPENRISC_PTRACE_H
> +#define __ASM_OPENRISC_PTRACE_H
> +
> +#include <asm/spr-defs.h>
> +
> +#ifndef __ASSEMBLY__
> +/*
> + * This is the layout of the regset returned by the GETREGSET ptrace call
> + */
> +struct user_regs_struct {
> +       /* GPR R0-R31... */
> +       unsigned long gpr[32];
> +       unsigned long pc;
> +       unsigned long sr;
> +       unsigned long pad1;
> +       unsigned long pad2;
> +};
> +#endif
> +
> +#ifdef __KERNEL__
> +
> +/*
> + * Make kernel PTrace/register structures opaque to userspace...
> userspace can
> + * access thread state via the regset mechanism.  This allows us a bit of
> + * flexibility in how we order the registers on the stack, permitting some
> + * optimizations like packing call-clobbered registers together so that
> + * they share a cacheline (not done yet, though... future optimization).
> + */
> +
> +#ifndef __ASSEMBLY__
> +/*
> + * This struct describes how the registers are laid out on the kernel
> stack
> + * during a syscall or other kernel entry.
> + *
> + * This structure should always be cacheline aligned on the stack.
> + * FIXME: I don't think that's the case right now.  The alignment is
> + * taken care of elsewhere... head.S, process.c, etc.
> + */
> +
> +struct pt_regs {
> +       union {
> +               struct {
> +                       /* Named registers */
> +                       long  sr;       /* Stored in place of r0 */
> +                       long  sp;       /* r1 */
> +               };
> +               struct {
> +                       /* Old style */
> +                       long offset[2];
> +                       long gprs[30];
> +               };
> +               struct {
> +                       /* New style */
> +                       long gpr[32];
> +               };
> +       };
> +       long  pc;
> +       long  orig_gpr11;       /* For restarting system calls */
> +       long  syscallno;        /* Syscall number (used by strace) */
> +       long dummy;             /* Cheap alignment fix */
> +};
> +#endif /* __ASSEMBLY__ */
> +
> +/* TODO: Rename this to REDZONE because that's what it is */
> +#define STACK_FRAME_OVERHEAD  128  /* size of minimum stack frame */
> +
> +#define instruction_pointer(regs)      ((regs)->pc)
> +#define user_mode(regs)                        (((regs)->sr & SPR_SR_SM)
> == 0)
> +#define user_stack_pointer(regs)       ((unsigned long)(regs)->sp)
> +#define profile_pc(regs)               instruction_pointer(regs)
> +
> +/*
> + * Offsets used by 'ptrace' system call interface.
> + */
> +#define PT_SR         0
> +#define PT_SP         4
> +#define PT_GPR2       8
> +#define PT_GPR3       12
> +#define PT_GPR4       16
> +#define PT_GPR5       20
> +#define PT_GPR6       24
> +#define PT_GPR7       28
> +#define PT_GPR8       32
> +#define PT_GPR9       36
> +#define PT_GPR10      40
> +#define PT_GPR11      44
> +#define PT_GPR12      48
> +#define PT_GPR13      52
> +#define PT_GPR14      56
> +#define PT_GPR15      60
> +#define PT_GPR16      64
> +#define PT_GPR17      68
> +#define PT_GPR18      72
> +#define PT_GPR19      76
> +#define PT_GPR20      80
> +#define PT_GPR21      84
> +#define PT_GPR22      88
> +#define PT_GPR23      92
> +#define PT_GPR24      96
> +#define PT_GPR25      100
> +#define PT_GPR26      104
> +#define PT_GPR27      108
> +#define PT_GPR28      112
> +#define PT_GPR29      116
> +#define PT_GPR30      120
> +#define PT_GPR31      124
> +#define PT_PC        128
> +#define PT_ORIG_GPR11 132
> +#define PT_SYSCALLNO  136
> +
> +#endif /* __KERNEL__ */
> +
> +#endif /* __ASM_OPENRISC_PTRACE_H */
> diff --git a/arch/openrisc/include/asm/sections.h
> b/arch/openrisc/include/asm/sections.h
> new file mode 100644
> index 0000000..2b8c516
> --- /dev/null
> +++ b/arch/openrisc/include/asm/sections.h
> @@ -0,0 +1 @@
> +#include <asm-generic/sections.h>
> diff --git a/arch/openrisc/include/asm/spr-defs.h
> b/arch/openrisc/include/asm/spr-defs.h
> new file mode 100644
> index 0000000..cb0cdfa
> --- /dev/null
> +++ b/arch/openrisc/include/asm/spr-defs.h
> @@ -0,0 +1,567 @@
> +/*
> + * SPR Definitions
> + *
> + * Copyright (C) 2000 Damjan Lampret
> + * Copyright (C) 2003 Matjaz Breskvar <phoenix@bsemi.com>
> + * Copyright (C) 2008, 2010 Embecosm Limited
> + * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
> + * et al.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This file is part of OpenRISC 1000 Architectural Simulator.
> + */
> +
> +#ifndef SPR_DEFS__H
> +#define SPR_DEFS__H
> +
> +/* Definition of special-purpose registers (SPRs) */
> +
> +#define MAX_GRPS (32)
> +#define MAX_SPRS_PER_GRP_BITS (11)
> +#define MAX_SPRS_PER_GRP (1 << MAX_SPRS_PER_GRP_BITS)
> +#define MAX_SPRS (0x10000)
> +
> +/* Base addresses for the groups */
> +#define SPRGROUP_SYS   (0 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_DMMU  (1 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_IMMU  (2 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_DC    (3 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_IC    (4 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_MAC   (5 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_D     (6 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_PC    (7 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_PM    (8 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_PIC   (9 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_TT    (10 << MAX_SPRS_PER_GRP_BITS)
> +#define SPRGROUP_FP    (11 << MAX_SPRS_PER_GRP_BITS)
> +
> +/* System control and status group */
> +#define SPR_VR         (SPRGROUP_SYS + 0)
> +#define SPR_UPR                (SPRGROUP_SYS + 1)
> +#define SPR_CPUCFGR    (SPRGROUP_SYS + 2)
> +#define SPR_DMMUCFGR   (SPRGROUP_SYS + 3)
> +#define SPR_IMMUCFGR   (SPRGROUP_SYS + 4)
> +#define SPR_DCCFGR     (SPRGROUP_SYS + 5)
> +#define SPR_ICCFGR     (SPRGROUP_SYS + 6)
> +#define SPR_DCFGR      (SPRGROUP_SYS + 7)
> +#define SPR_PCCFGR     (SPRGROUP_SYS + 8)
> +#define SPR_NPC                (SPRGROUP_SYS + 16)
> +#define SPR_SR         (SPRGROUP_SYS + 17)
> +#define SPR_PPC                (SPRGROUP_SYS + 18)
> +#define SPR_FPCSR      (SPRGROUP_SYS + 20)
> +#define SPR_EPCR_BASE  (SPRGROUP_SYS + 32)
> +#define SPR_EPCR_LAST  (SPRGROUP_SYS + 47)
> +#define SPR_EEAR_BASE  (SPRGROUP_SYS + 48)
> +#define SPR_EEAR_LAST  (SPRGROUP_SYS + 63)
> +#define SPR_ESR_BASE   (SPRGROUP_SYS + 64)
> +#define SPR_ESR_LAST   (SPRGROUP_SYS + 79)
> +#define SPR_GPR_BASE   (SPRGROUP_SYS + 1024)
> +
> +/* Data MMU group */
> +#define SPR_DMMUCR     (SPRGROUP_DMMU + 0)
> +#define SPR_DTLBEIR    (SPRGROUP_DMMU + 2)
> +#define SPR_DTLBMR_BASE(WAY)   (SPRGROUP_DMMU + 0x200 + (WAY) * 0x100)
> +#define SPR_DTLBMR_LAST(WAY)   (SPRGROUP_DMMU + 0x27f + (WAY) * 0x100)
> +#define SPR_DTLBTR_BASE(WAY)   (SPRGROUP_DMMU + 0x280 + (WAY) * 0x100)
> +#define SPR_DTLBTR_LAST(WAY)   (SPRGROUP_DMMU + 0x2ff + (WAY) * 0x100)
> +
> +/* Instruction MMU group */
> +#define SPR_IMMUCR     (SPRGROUP_IMMU + 0)
> +#define SPR_ITLBEIR    (SPRGROUP_IMMU + 2)
> +#define SPR_ITLBMR_BASE(WAY)   (SPRGROUP_IMMU + 0x200 + (WAY) * 0x100)
> +#define SPR_ITLBMR_LAST(WAY)   (SPRGROUP_IMMU + 0x27f + (WAY) * 0x100)
> +#define SPR_ITLBTR_BASE(WAY)   (SPRGROUP_IMMU + 0x280 + (WAY) * 0x100)
> +#define SPR_ITLBTR_LAST(WAY)   (SPRGROUP_IMMU + 0x2ff + (WAY) * 0x100)
> +
> +/* Data cache group */
> +#define SPR_DCCR       (SPRGROUP_DC + 0)
> +#define SPR_DCBPR      (SPRGROUP_DC + 1)
> +#define SPR_DCBFR      (SPRGROUP_DC + 2)
> +#define SPR_DCBIR      (SPRGROUP_DC + 3)
> +#define SPR_DCBWR      (SPRGROUP_DC + 4)
> +#define SPR_DCBLR      (SPRGROUP_DC + 5)
> +#define SPR_DCR_BASE(WAY)      (SPRGROUP_DC + 0x200 + (WAY) * 0x200)
> +#define SPR_DCR_LAST(WAY)      (SPRGROUP_DC + 0x3ff + (WAY) * 0x200)
> +
> +/* Instruction cache group */
> +#define SPR_ICCR       (SPRGROUP_IC + 0)
> +#define SPR_ICBPR      (SPRGROUP_IC + 1)
> +#define SPR_ICBIR      (SPRGROUP_IC + 2)
> +#define SPR_ICBLR      (SPRGROUP_IC + 3)
> +#define SPR_ICR_BASE(WAY)      (SPRGROUP_IC + 0x200 + (WAY) * 0x200)
> +#define SPR_ICR_LAST(WAY)      (SPRGROUP_IC + 0x3ff + (WAY) * 0x200)
> +
> +/* MAC group */
> +#define SPR_MACLO      (SPRGROUP_MAC + 1)
> +#define SPR_MACHI      (SPRGROUP_MAC + 2)
> +
> +/* Debug group */
> +#define SPR_DVR(N)     (SPRGROUP_D + (N))
> +#define SPR_DCR(N)     (SPRGROUP_D + 8 + (N))
> +#define SPR_DMR1       (SPRGROUP_D + 16)
> +#define SPR_DMR2       (SPRGROUP_D + 17)
> +#define SPR_DWCR0      (SPRGROUP_D + 18)
> +#define SPR_DWCR1      (SPRGROUP_D + 19)
> +#define SPR_DSR                (SPRGROUP_D + 20)
> +#define SPR_DRR                (SPRGROUP_D + 21)
> +
> +/* Performance counters group */
> +#define SPR_PCCR(N)    (SPRGROUP_PC + (N))
> +#define SPR_PCMR(N)    (SPRGROUP_PC + 8 + (N))
> +
> +/* Power management group */
> +#define SPR_PMR                (SPRGROUP_PM + 0)
> +
> +/* PIC group */
> +#define SPR_PICMR      (SPRGROUP_PIC + 0)
> +#define SPR_PICPR      (SPRGROUP_PIC + 1)
> +#define SPR_PICSR      (SPRGROUP_PIC + 2)
> +
> +/* Tick Timer group */
> +#define SPR_TTMR       (SPRGROUP_TT + 0)
> +#define SPR_TTCR       (SPRGROUP_TT + 1)
> +
> +/*
> + * Bit definitions for the Version Register
> + */
> +#define SPR_VR_VER     0xff000000 /* Processor version */
> +#define SPR_VR_CFG     0x00ff0000 /* Processor configuration */
> +#define SPR_VR_RES     0x0000ffc0 /* Reserved */
> +#define SPR_VR_REV     0x0000003f /* Processor revision */
> +
> +#define SPR_VR_VER_OFF 24
> +#define SPR_VR_CFG_OFF 16
> +#define SPR_VR_REV_OFF 0
> +
> +/*
> + * Bit definitions for the Unit Present Register
> + */
> +#define SPR_UPR_UP     0x00000001 /* UPR present */
> +#define SPR_UPR_DCP    0x00000002 /* Data cache present */
> +#define SPR_UPR_ICP    0x00000004 /* Instruction cache present */
> +#define SPR_UPR_DMP    0x00000008 /* Data MMU present */
> +#define SPR_UPR_IMP    0x00000010 /* Instruction MMU present */
> +#define SPR_UPR_MP     0x00000020 /* MAC present */
> +#define SPR_UPR_DUP    0x00000040 /* Debug unit present */
> +#define SPR_UPR_PCUP   0x00000080 /* Performance counters unit present */
> +#define SPR_UPR_PMP    0x00000100 /* Power management present */
> +#define SPR_UPR_PICP   0x00000200 /* PIC present */
> +#define SPR_UPR_TTP    0x00000400 /* Tick timer present */
> +#define SPR_UPR_RES    0x00fe0000 /* Reserved */
> +#define SPR_UPR_CUP    0xff000000 /* Context units present */
> +
> +/*
> + * Bit definitions for the CPU configuration register
> + */
> +#define SPR_CPUCFGR_NSGF       0x0000000f /* Number of shadow GPR files */
> +#define SPR_CPUCFGR_CGF                0x00000010 /* Custom GPR file */
> +#define SPR_CPUCFGR_OB32S      0x00000020 /* ORBIS32 supported */
> +#define SPR_CPUCFGR_OB64S      0x00000040 /* ORBIS64 supported */
> +#define SPR_CPUCFGR_OF32S      0x00000080 /* ORFPX32 supported */
> +#define SPR_CPUCFGR_OF64S      0x00000100 /* ORFPX64 supported */
> +#define SPR_CPUCFGR_OV64S      0x00000200 /* ORVDX64 supported */
> +#define SPR_CPUCFGR_RES                0xfffffc00 /* Reserved */
> +
> +/*
> + * Bit definitions for the Debug configuration register and other
> + * constants.
> + */
> +
> +#define SPR_DCFGR_NDP  0x00000007  /* Number of matchpoints mask */
> +#define SPR_DCFGR_NDP1 0x00000000  /* One matchpoint supported */
> +#define SPR_DCFGR_NDP2 0x00000001  /* Two matchpoints supported */
> +#define SPR_DCFGR_NDP3 0x00000002  /* Three matchpoints supported */
> +#define SPR_DCFGR_NDP4 0x00000003  /* Four matchpoints supported */
> +#define SPR_DCFGR_NDP5 0x00000004  /* Five matchpoints supported */
> +#define SPR_DCFGR_NDP6 0x00000005  /* Six matchpoints supported */
> +#define SPR_DCFGR_NDP7 0x00000006  /* Seven matchpoints supported */
> +#define SPR_DCFGR_NDP8 0x00000007  /* Eight matchpoints supported */
> +#define SPR_DCFGR_WPCI 0x00000008  /* Watchpoint counters implemented */
> +
> +#define MATCHPOINTS_TO_NDP(n)  (1 == n ? SPR_DCFGR_NDP1 : \
> +                               2 == n ? SPR_DCFGR_NDP2 : \
> +                               3 == n ? SPR_DCFGR_NDP3 : \
> +                               4 == n ? SPR_DCFGR_NDP4 : \
> +                               5 == n ? SPR_DCFGR_NDP5 : \
> +                               6 == n ? SPR_DCFGR_NDP6 : \
> +                               7 == n ? SPR_DCFGR_NDP7 : SPR_DCFGR_NDP8)
> +#define MAX_MATCHPOINTS        8
> +#define MAX_WATCHPOINTS        (MAX_MATCHPOINTS + 2)
> +
> +/*
> + * Bit definitions for the Supervision Register
> + */
> +#define SPR_SR_SM      0x00000001 /* Supervisor Mode */
> +#define SPR_SR_TEE     0x00000002 /* Tick timer Exception Enable */
> +#define SPR_SR_IEE     0x00000004 /* Interrupt Exception Enable */
> +#define SPR_SR_DCE     0x00000008 /* Data Cache Enable */
> +#define SPR_SR_ICE     0x00000010 /* Instruction Cache Enable */
> +#define SPR_SR_DME     0x00000020 /* Data MMU Enable */
> +#define SPR_SR_IME     0x00000040 /* Instruction MMU Enable */
> +#define SPR_SR_LEE     0x00000080 /* Little Endian Enable */
> +#define SPR_SR_CE      0x00000100 /* CID Enable */
> +#define SPR_SR_F       0x00000200 /* Condition Flag */
> +#define SPR_SR_CY      0x00000400 /* Carry flag */
> +#define SPR_SR_OV      0x00000800 /* Overflow flag */
> +#define SPR_SR_OVE     0x00001000 /* Overflow flag Exception */
> +#define SPR_SR_DSX     0x00002000 /* Delay Slot Exception */
> +#define SPR_SR_EPH     0x00004000 /* Exception Prefix High */
> +#define SPR_SR_FO      0x00008000 /* Fixed one */
> +#define SPR_SR_SUMRA   0x00010000 /* Supervisor SPR read access */
> +#define SPR_SR_RES     0x0ffe0000 /* Reserved */
> +#define SPR_SR_CID     0xf0000000 /* Context ID */
> +
> +/*
> + * Bit definitions for the Data MMU Control Register
> + */
> +#define SPR_DMMUCR_P2S         0x0000003e /* Level 2 Page Size */
> +#define SPR_DMMUCR_P1S         0x000007c0 /* Level 1 Page Size */
> +#define SPR_DMMUCR_VADDR_WIDTH 0x0000f800 /* Virtual ADDR Width */
> +#define SPR_DMMUCR_PADDR_WIDTH 0x000f0000 /* Physical ADDR Width */
> +
> +/*
> + * Bit definitions for the Instruction MMU Control Register
> + */
> +#define SPR_IMMUCR_P2S         0x0000003e /* Level 2 Page Size */
> +#define SPR_IMMUCR_P1S         0x000007c0 /* Level 1 Page Size */
> +#define SPR_IMMUCR_VADDR_WIDTH 0x0000f800 /* Virtual ADDR Width */
> +#define SPR_IMMUCR_PADDR_WIDTH 0x000f0000 /* Physical ADDR Width */
> +
> +/*
> + * Bit definitions for the Data TLB Match Register
> + */
> +#define SPR_DTLBMR_V   0x00000001 /* Valid */
> +#define SPR_DTLBMR_PL1 0x00000002 /* Page Level 1 (if 0 then PL2) */
> +#define SPR_DTLBMR_CID 0x0000003c /* Context ID */
> +#define SPR_DTLBMR_LRU 0x000000c0 /* Least Recently Used */
> +#define SPR_DTLBMR_VPN 0xfffff000 /* Virtual Page Number */
> +
> +/*
> + * Bit definitions for the Data TLB Translate Register
> + */
> +#define SPR_DTLBTR_CC  0x00000001 /* Cache Coherency */
> +#define SPR_DTLBTR_CI  0x00000002 /* Cache Inhibit */
> +#define SPR_DTLBTR_WBC 0x00000004 /* Write-Back Cache */
> +#define SPR_DTLBTR_WOM 0x00000008 /* Weakly-Ordered Memory */
> +#define SPR_DTLBTR_A   0x00000010 /* Accessed */
> +#define SPR_DTLBTR_D   0x00000020 /* Dirty */
> +#define SPR_DTLBTR_URE 0x00000040 /* User Read Enable */
> +#define SPR_DTLBTR_UWE 0x00000080 /* User Write Enable */
> +#define SPR_DTLBTR_SRE 0x00000100 /* Supervisor Read Enable */
> +#define SPR_DTLBTR_SWE 0x00000200 /* Supervisor Write Enable */
> +#define SPR_DTLBTR_PPN 0xfffff000 /* Physical Page Number */
> +
> +/*
> + * Bit definitions for the Instruction TLB Match Register
> + */
> +#define SPR_ITLBMR_V   0x00000001 /* Valid */
> +#define SPR_ITLBMR_PL1 0x00000002 /* Page Level 1 (if 0 then PL2) */
> +#define SPR_ITLBMR_CID 0x0000003c /* Context ID */
> +#define SPR_ITLBMR_LRU 0x000000c0 /* Least Recently Used */
> +#define SPR_ITLBMR_VPN 0xfffff000 /* Virtual Page Number */
> +
> +/*
> + * Bit definitions for the Instruction TLB Translate Register
> + */
> +#define SPR_ITLBTR_CC  0x00000001 /* Cache Coherency */
> +#define SPR_ITLBTR_CI  0x00000002 /* Cache Inhibit */
> +#define SPR_ITLBTR_WBC 0x00000004 /* Write-Back Cache */
> +#define SPR_ITLBTR_WOM 0x00000008 /* Weakly-Ordered Memory */
> +#define SPR_ITLBTR_A   0x00000010 /* Accessed */
> +#define SPR_ITLBTR_D   0x00000020 /* Dirty */
> +#define SPR_ITLBTR_SXE 0x00000040 /* User Read Enable */
> +#define SPR_ITLBTR_UXE 0x00000080 /* User Write Enable */
> +#define SPR_ITLBTR_PPN 0xfffff000 /* Physical Page Number */
> +
> +/*
> + * Bit definitions for Data Cache Control register
> + */
> +#define SPR_DCCR_EW    0x000000ff /* Enable ways */
> +
> +/*
> + * Bit definitions for Insn Cache Control register
> + */
> +#define SPR_ICCR_EW    0x000000ff /* Enable ways */
> +
> +/*
> + * Bit definitions for Data Cache Configuration Register
> + */
> +
> +#define SPR_DCCFGR_NCW         0x00000007
> +#define SPR_DCCFGR_NCS         0x00000078
> +#define SPR_DCCFGR_CBS         0x00000080
> +#define SPR_DCCFGR_CWS         0x00000100
> +#define SPR_DCCFGR_CCRI                0x00000200
> +#define SPR_DCCFGR_CBIRI       0x00000400
> +#define SPR_DCCFGR_CBPRI       0x00000800
> +#define SPR_DCCFGR_CBLRI       0x00001000
> +#define SPR_DCCFGR_CBFRI       0x00002000
> +#define SPR_DCCFGR_CBWBRI      0x00004000
> +
> +#define SPR_DCCFGR_NCW_OFF     0
> +#define SPR_DCCFGR_NCS_OFF     3
> +#define SPR_DCCFGR_CBS_OFF     7
> +
> +/*
> + * Bit definitions for Instruction Cache Configuration Register
> + */
> +#define SPR_ICCFGR_NCW         0x00000007
> +#define SPR_ICCFGR_NCS         0x00000078
> +#define SPR_ICCFGR_CBS         0x00000080
> +#define SPR_ICCFGR_CCRI                0x00000200
> +#define SPR_ICCFGR_CBIRI       0x00000400
> +#define SPR_ICCFGR_CBPRI       0x00000800
> +#define SPR_ICCFGR_CBLRI       0x00001000
> +
> +#define SPR_ICCFGR_NCW_OFF     0
> +#define SPR_ICCFGR_NCS_OFF     3
> +#define SPR_ICCFGR_CBS_OFF     7
> +
> +/*
> + * Bit definitions for Data MMU Configuration Register
> + */
> +#define SPR_DMMUCFGR_NTW       0x00000003
> +#define SPR_DMMUCFGR_NTS       0x0000001C
> +#define SPR_DMMUCFGR_NAE       0x000000E0
> +#define SPR_DMMUCFGR_CRI       0x00000100
> +#define SPR_DMMUCFGR_PRI       0x00000200
> +#define SPR_DMMUCFGR_TEIRI     0x00000400
> +#define SPR_DMMUCFGR_HTR       0x00000800
> +
> +#define SPR_DMMUCFGR_NTW_OFF   0
> +#define SPR_DMMUCFGR_NTS_OFF   2
> +
> +/*
> + * Bit definitions for Instruction MMU Configuration Register
> + */
> +#define SPR_IMMUCFGR_NTW       0x00000003
> +#define SPR_IMMUCFGR_NTS       0x0000001C
> +#define SPR_IMMUCFGR_NAE       0x000000E0
> +#define SPR_IMMUCFGR_CRI       0x00000100
> +#define SPR_IMMUCFGR_PRI       0x00000200
> +#define SPR_IMMUCFGR_TEIRI     0x00000400
> +#define SPR_IMMUCFGR_HTR       0x00000800
> +
> +#define SPR_IMMUCFGR_NTW_OFF   0
> +#define SPR_IMMUCFGR_NTS_OFF   2
> +
> +/*
> + * Bit definitions for Debug Control registers
> + */
> +#define SPR_DCR_DP     0x00000001 /* DVR/DCR present */
> +#define SPR_DCR_CC     0x0000000e /* Compare condition */
> +#define SPR_DCR_SC     0x00000010 /* Signed compare */
> +#define SPR_DCR_CT     0x000000e0 /* Compare to */
> +
> +/* Bit results with SPR_DCR_CC mask */
> +#define SPR_DCR_CC_MASKED      0x00000000
> +#define SPR_DCR_CC_EQUAL       0x00000002
> +#define SPR_DCR_CC_LESS                0x00000004
> +#define SPR_DCR_CC_LESSE       0x00000006
> +#define SPR_DCR_CC_GREAT       0x00000008
> +#define SPR_DCR_CC_GREATE      0x0000000a
> +#define SPR_DCR_CC_NEQUAL      0x0000000c
> +
> +/* Bit results with SPR_DCR_CT mask */
> +#define SPR_DCR_CT_DISABLED    0x00000000
> +#define SPR_DCR_CT_IFEA                0x00000020
> +#define SPR_DCR_CT_LEA         0x00000040
> +#define SPR_DCR_CT_SEA         0x00000060
> +#define SPR_DCR_CT_LD          0x00000080
> +#define SPR_DCR_CT_SD          0x000000a0
> +#define SPR_DCR_CT_LSEA                0x000000c0
> +#define SPR_DCR_CT_LSD         0x000000e0
> +
> +/*
> + * Bit definitions for Debug Mode 1 register
> + */
> +#define SPR_DMR1_CW            0x000fffff /* Chain register pair data */
> +#define SPR_DMR1_CW0_AND       0x00000001
> +#define SPR_DMR1_CW0_OR                0x00000002
> +#define SPR_DMR1_CW0           (SPR_DMR1_CW0_AND | SPR_DMR1_CW0_OR)
> +#define SPR_DMR1_CW1_AND       0x00000004
> +#define SPR_DMR1_CW1_OR                0x00000008
> +#define SPR_DMR1_CW1           (SPR_DMR1_CW1_AND | SPR_DMR1_CW1_OR)
> +#define SPR_DMR1_CW2_AND       0x00000010
> +#define SPR_DMR1_CW2_OR                0x00000020
> +#define SPR_DMR1_CW2           (SPR_DMR1_CW2_AND | SPR_DMR1_CW2_OR)
> +#define SPR_DMR1_CW3_AND       0x00000040
> +#define SPR_DMR1_CW3_OR                0x00000080
> +#define SPR_DMR1_CW3           (SPR_DMR1_CW3_AND | SPR_DMR1_CW3_OR)
> +#define SPR_DMR1_CW4_AND       0x00000100
> +#define SPR_DMR1_CW4_OR                0x00000200
> +#define SPR_DMR1_CW4           (SPR_DMR1_CW4_AND | SPR_DMR1_CW4_OR)
> +#define SPR_DMR1_CW5_AND       0x00000400
> +#define SPR_DMR1_CW5_OR                0x00000800
> +#define SPR_DMR1_CW5           (SPR_DMR1_CW5_AND | SPR_DMR1_CW5_OR)
> +#define SPR_DMR1_CW6_AND       0x00001000
> +#define SPR_DMR1_CW6_OR                0x00002000
> +#define SPR_DMR1_CW6           (SPR_DMR1_CW6_AND | SPR_DMR1_CW6_OR)
> +#define SPR_DMR1_CW7_AND       0x00004000
> +#define SPR_DMR1_CW7_OR                0x00008000
> +#define SPR_DMR1_CW7           (SPR_DMR1_CW7_AND | SPR_DMR1_CW7_OR)
> +#define SPR_DMR1_CW8_AND       0x00010000
> +#define SPR_DMR1_CW8_OR                0x00020000
> +#define SPR_DMR1_CW8           (SPR_DMR1_CW8_AND | SPR_DMR1_CW8_OR)
> +#define SPR_DMR1_CW9_AND       0x00040000
> +#define SPR_DMR1_CW9_OR                0x00080000
> +#define SPR_DMR1_CW9           (SPR_DMR1_CW9_AND | SPR_DMR1_CW9_OR)
> +#define SPR_DMR1_RES1          0x00300000 /* Reserved */
> +#define SPR_DMR1_ST            0x00400000 /* Single-step trace*/
> +#define SPR_DMR1_BT            0x00800000 /* Branch trace */
> +#define SPR_DMR1_RES2          0xff000000 /* Reserved */
> +
> +/*
> + * Bit definitions for Debug Mode 2 register. AWTC and WGB corrected by
> JPB
> + */
> +#define SPR_DMR2_WCE0          0x00000001 /* Watchpoint counter 0 enable
> */
> +#define SPR_DMR2_WCE1          0x00000002 /* Watchpoint counter 0 enable
> */
> +#define SPR_DMR2_AWTC          0x00000ffc /* Assign watchpoints to
> counters */
> +#define SPR_DMR2_AWTC_OFF      2 /* Bit offset to AWTC field */
> +#define SPR_DMR2_WGB           0x003ff000 /* Watch generating breakpoint
> */
> +#define SPR_DMR2_WGB_OFF       12 /* Bit offset to WGB field */
> +#define SPR_DMR2_WBS           0xffc00000 /* Watchpoint status */
> +#define SPR_DMR2_WBS_OFF       22 /* Bit offset to WBS field */
> +
> +/*
> + * Bit definitions for Debug watchpoint counter registers
> + */
> +#define SPR_DWCR_COUNT         0x0000ffff /* Count */
> +#define SPR_DWCR_MATCH         0xffff0000 /* Match */
> +#define SPR_DWCR_MATCH_OFF     16 /* Match bit offset */
> +
> +/*
> + * Bit definitions for Debug stop register
> + *
> + */
> +#define SPR_DSR_RSTE   0x00000001 /* Reset exception */
> +#define SPR_DSR_BUSEE  0x00000002 /* Bus error exception */
> +#define SPR_DSR_DPFE   0x00000004 /* Data Page Fault exception */
> +#define SPR_DSR_IPFE   0x00000008 /* Insn Page Fault exception */
> +#define SPR_DSR_TTE    0x00000010 /* Tick Timer exception */
> +#define SPR_DSR_AE     0x00000020 /* Alignment exception */
> +#define SPR_DSR_IIE    0x00000040 /* Illegal Instruction exception */
> +#define SPR_DSR_IE     0x00000080 /* Interrupt exception */
> +#define SPR_DSR_DME    0x00000100 /* DTLB miss exception */
> +#define SPR_DSR_IME    0x00000200 /* ITLB miss exception */
> +#define SPR_DSR_RE     0x00000400 /* Range exception */
> +#define SPR_DSR_SCE    0x00000800 /* System call exception */
> +#define SPR_DSR_FPE    0x00001000 /* Floating Point Exception */
> +#define SPR_DSR_TE     0x00002000 /* Trap exception */
> +
> +/*
> + * Bit definitions for Debug reason register
> + */
> +#define SPR_DRR_RSTE   0x00000001 /* Reset exception */
> +#define SPR_DRR_BUSEE  0x00000002 /* Bus error exception */
> +#define SPR_DRR_DPFE   0x00000004 /* Data Page Fault exception */
> +#define SPR_DRR_IPFE   0x00000008 /* Insn Page Fault exception */
> +#define SPR_DRR_TTE    0x00000010 /* Tick Timer exception */
> +#define SPR_DRR_AE     0x00000020 /* Alignment exception */
> +#define SPR_DRR_IIE    0x00000040 /* Illegal Instruction exception */
> +#define SPR_DRR_IE     0x00000080 /* Interrupt exception */
> +#define SPR_DRR_DME    0x00000100 /* DTLB miss exception */
> +#define SPR_DRR_IME    0x00000200 /* ITLB miss exception */
> +#define SPR_DRR_RE     0x00000400 /* Range exception */
> +#define SPR_DRR_SCE    0x00000800 /* System call exception */
> +#define SPR_DRR_FPE    0x00001000 /* Floating Point Exception */
> +#define SPR_DRR_TE     0x00002000 /* Trap exception */
> +
> +/*
> + * Bit definitions for Performance counters mode registers
> + */
> +#define SPR_PCMR_CP    0x00000001 /* Counter present */
> +#define SPR_PCMR_UMRA  0x00000002 /* User mode read access */
> +#define SPR_PCMR_CISM  0x00000004 /* Count in supervisor mode */
> +#define SPR_PCMR_CIUM  0x00000008 /* Count in user mode */
> +#define SPR_PCMR_LA    0x00000010 /* Load access event */
> +#define SPR_PCMR_SA    0x00000020 /* Store access event */
> +#define SPR_PCMR_IF    0x00000040 /* Instruction fetch event*/
> +#define SPR_PCMR_DCM   0x00000080 /* Data cache miss event */
> +#define SPR_PCMR_ICM   0x00000100 /* Insn cache miss event */
> +#define SPR_PCMR_IFS   0x00000200 /* Insn fetch stall event */
> +#define SPR_PCMR_LSUS  0x00000400 /* LSU stall event */
> +#define SPR_PCMR_BS    0x00000800 /* Branch stall event */
> +#define SPR_PCMR_DTLBM 0x00001000 /* DTLB miss event */
> +#define SPR_PCMR_ITLBM 0x00002000 /* ITLB miss event */
> +#define SPR_PCMR_DDS   0x00004000 /* Data dependency stall event */
> +#define SPR_PCMR_WPE   0x03ff8000 /* Watchpoint events */
> +
> +/*
> + * Bit definitions for the Power management register
> + */
> +#define SPR_PMR_SDF    0x0000000f /* Slow down factor */
> +#define SPR_PMR_DME    0x00000010 /* Doze mode enable */
> +#define SPR_PMR_SME    0x00000020 /* Sleep mode enable */
> +#define SPR_PMR_DCGE   0x00000040 /* Dynamic clock gating enable */
> +#define SPR_PMR_SUME   0x00000080 /* Suspend mode enable */
> +
> +/*
> + * Bit definitions for PICMR
> + */
> +#define SPR_PICMR_IUM  0xfffffffc /* Interrupt unmask */
> +
> +/*
> + * Bit definitions for PICPR
> + */
> +#define SPR_PICPR_IPRIO        0xfffffffc /* Interrupt priority */
> +
> +/*
> + * Bit definitions for PICSR
> + */
> +#define SPR_PICSR_IS   0xffffffff /* Interrupt status */
> +
> +/*
> + * Bit definitions for Tick Timer Control Register
> + */
> +#define SPR_TTCR_CNT   0xffffffff /* Count, time period */
> +#define SPR_TTMR_TP    0x0fffffff /* Time period */
> +#define SPR_TTMR_IP    0x10000000 /* Interrupt Pending */
> +#define SPR_TTMR_IE    0x20000000 /* Interrupt Enable */
> +#define SPR_TTMR_DI    0x00000000 /* Disabled */
> +#define SPR_TTMR_RT    0x40000000 /* Restart tick */
> +#define SPR_TTMR_SR    0x80000000 /* Single run */
> +#define SPR_TTMR_CR    0xc0000000 /* Continuous run */
> +#define SPR_TTMR_M     0xc0000000 /* Tick mode */
> +
> +/*
> + * Bit definitions for the FP Control Status Register
> + */
> +#define SPR_FPCSR_FPEE 0x00000001 /* Floating Point Exception Enable */
> +#define SPR_FPCSR_RM   0x00000006 /* Rounding Mode */
> +#define SPR_FPCSR_OVF  0x00000008 /* Overflow Flag */
> +#define SPR_FPCSR_UNF  0x00000010 /* Underflow Flag */
> +#define SPR_FPCSR_SNF  0x00000020 /* SNAN Flag */
> +#define SPR_FPCSR_QNF  0x00000040 /* QNAN Flag */
> +#define SPR_FPCSR_ZF   0x00000080 /* Zero Flag */
> +#define SPR_FPCSR_IXF  0x00000100 /* Inexact Flag */
> +#define SPR_FPCSR_IVF  0x00000200 /* Invalid Flag */
> +#define SPR_FPCSR_INF  0x00000400 /* Infinity Flag */
> +#define SPR_FPCSR_DZF  0x00000800 /* Divide By Zero Flag */
> +#define SPR_FPCSR_ALLF (SPR_FPCSR_OVF | SPR_FPCSR_UNF | SPR_FPCSR_SNF | \
> +                       SPR_FPCSR_QNF | SPR_FPCSR_ZF | SPR_FPCSR_IXF | \
> +                       SPR_FPCSR_IVF | SPR_FPCSR_INF | SPR_FPCSR_DZF)
> +
> +#define FPCSR_RM_RN    (0<<1)
> +#define FPCSR_RM_RZ    (1<<1)
> +#define FPCSR_RM_RIP   (2<<1)
> +#define FPCSR_RM_RIN   (3<<1)
> +
> +/*
> + * l.nop constants
> + */
> +#define NOP_NOP                        0x0000 /* Normal nop instruction */
> +#define NOP_EXIT               0x0001 /* End of simulation */
> +#define NOP_REPORT             0x0002 /* Simple report */
> +#define NOP_PUTC               0x0004 /* Simputc instruction */
> +#define NOP_CNT_RESET          0x0005 /* Reset statistics counters */
> +#define NOP_GET_TICKS          0x0006 /* Get # ticks running */
> +#define NOP_GET_PS             0x0007 /* Get picosecs/cycle */
> +#define NOP_REPORT_FIRST       0x0400 /* Report with number */
> +#define NOP_REPORT_LAST                0x03ff /* Report with number */
> +
> +#endif /* SPR_DEFS__H */
> diff --git a/arch/openrisc/include/asm/string.h
> b/arch/openrisc/include/asm/string.h
> new file mode 100644
> index 0000000..73e2655
> --- /dev/null
> +++ b/arch/openrisc/include/asm/string.h
> @@ -0,0 +1,4 @@
> +#ifndef __ASM_OPENRISC_STRING_H
> +#define __ASM_OPENRISC_STRING_H
> +
> +#endif
> diff --git a/arch/openrisc/include/asm/swab.h
> b/arch/openrisc/include/asm/swab.h
> new file mode 100644
> index 0000000..b07e1d5
> --- /dev/null
> +++ b/arch/openrisc/include/asm/swab.h
> @@ -0,0 +1,4 @@
> +#ifndef _ASM_SWAB_H
> +#define _ASM_SWAB_H
> +
> +#endif /* _ASM_SWAB_H */
> diff --git a/arch/openrisc/include/asm/system.h
> b/arch/openrisc/include/asm/system.h
> new file mode 100644
> index 0000000..d680363
> --- /dev/null
> +++ b/arch/openrisc/include/asm/system.h
> @@ -0,0 +1,39 @@
> +/*
> + * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef __ASM_OPENRISC_SYSTEM_H
> +#define __ASM_OPENRISC_SYSTEM_H
> +
> +#include <asm/spr-defs.h>
> +
> +static inline unsigned long mfspr(unsigned long add)
> +{
> +       unsigned long ret;
> +
> +       __asm__ __volatile__ ("l.mfspr %0,r0,%1" : "=r" (ret) : "K" (add));
> +
> +       return ret;
> +}
> +
> +static inline void mtspr(unsigned long add, unsigned long val)
> +{
> +       __asm__ __volatile__ ("l.mtspr r0,%1,%0" : : "K" (add), "r" (val));
> +}
> +
> +#endif /* __ASM_OPENRISC_SYSTEM_H */
> diff --git a/arch/openrisc/include/asm/types.h
> b/arch/openrisc/include/asm/types.h
> new file mode 100644
> index 0000000..55efa36
> --- /dev/null
> +++ b/arch/openrisc/include/asm/types.h
> @@ -0,0 +1,79 @@
> +/*
> + * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef _ASM_TYPES_H
> +#define _ASM_TYPES_H
> +
> +/*
> + * This file is never included by application software unless
> + * explicitly requested (e.g., via linux/types.h) in which case the
> + * application is Linux specific so (user-) name space pollution is
> + * not a major issue.  However, for interoperability, libraries still
> + * need to be careful to avoid a name clashes.
> + */
> +
> +typedef unsigned short umode_t;
> +
> +/*
> + * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
> + * header files exported to user space
> + */
> +
> +typedef __signed__ char __s8;
> +typedef unsigned char __u8;
> +
> +typedef __signed__ short __s16;
> +typedef unsigned short __u16;
> +
> +typedef __signed__ int __s32;
> +typedef unsigned int __u32;
> +
> +#if defined(__GNUC__)
> +__extension__ typedef __signed__ long long __s64;
> +__extension__ typedef unsigned long long __u64;
> +#endif
> +
> +/*
> + * These aren't exported outside the kernel to avoid name space clashes
> + */
> +#ifdef __KERNEL__
> +
> +typedef signed char s8;
> +typedef unsigned char u8;
> +
> +typedef signed short s16;
> +typedef unsigned short u16;
> +
> +typedef signed int s32;
> +typedef unsigned int u32;
> +
> +typedef signed long long s64;
> +typedef unsigned long long u64;
> +
> +#define BITS_PER_LONG 32
> +
> +/* Dma addresses are 32-bits wide.  */
> +
> +typedef u32 dma_addr_t;
> +
> +/*typedef unsigned long phys_addr_t;*/
> +typedef unsigned long phys_size_t;
> +#endif /* __KERNEL__ */
> +
> +#endif /* _ASM_TYPES_H */
> diff --git a/arch/openrisc/lib/Makefile b/arch/openrisc/lib/Makefile
> new file mode 100644
> index 0000000..aaf93cb
> --- /dev/null
> +++ b/arch/openrisc/lib/Makefile
> @@ -0,0 +1,6 @@
> +obj-y                 += clock.o
> +obj-y                 += board.o
> +obj-y                 += cpuinfo.o
> +obj-y                 += muldi3.o
> +obj-y                 += lshrdi3.o
> +obj-y                 += ashldi3.o
> diff --git a/arch/openrisc/lib/ashldi3.S b/arch/openrisc/lib/ashldi3.S
> new file mode 100644
> index 0000000..3e422fa
> --- /dev/null
> +++ b/arch/openrisc/lib/ashldi3.S
> @@ -0,0 +1,41 @@
> +/*
> + * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> + *
> + * Extracted from gcc generated assembly.
> + *
> + * Extended precision shifts.
> + *
> + * R3/R4 (MSW, LSW) has 64 bit value
> + * R5    has shift count
> + * result in R11/R12
> + *
> + */
> +
> +.globl __ashldi3
> +
> +__ashldi3:
> +       l.sfeqi r5,0x0
> +       l.bf out                /* if count = 0, go out
> */
> +
> +       l.addi r6,r0,0x20       /* r6 = 32
>  */
> +       l.sub r6,r6,r5          /* r6 = 32 - count
>  */
> +       l.sfgtsi r6,0x0         /* if count >= 32
> */
> +       l.bnf more_than_32      /* branch to more_than_32
> */
> +       l.nop 0x0
> +
> +less_than_32:
> +       l.srl r6,r4,r6          /* r6 gets the bits moved from LSW to MSW
> */
> +       l.sll r3,r3,r5          /* shift MSW
>  */
> +       l.sll r4,r4,r5          /* shift LSW
>  */
> +       l.or r3,r6,r3           /* MSW gets bits shifted from LSW
> */
> +
> +out:
> +       l.ori r11,r3,0x0
> +       l.jr r9
> +       l.ori r12,r4,0x0
> +
> +more_than_32:
> +       l.sub r3,r0,r6          /* r3 = -r6, the number of bits above 32
>  */
> +       l.sll r3,r4,r3          /* MSW = LSW << r3
>  */
> +       l.j out                 /* go out
> */
> +       l.addi r4,r0,0x0        /* LSW = 0
>  */
> diff --git a/arch/openrisc/lib/board.c b/arch/openrisc/lib/board.c
> new file mode 100644
> index 0000000..a2158cb
> --- /dev/null
> +++ b/arch/openrisc/lib/board.c
> @@ -0,0 +1,42 @@
> +/*
> + * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <malloc.h>
> +#include <init.h>
> +#include <memory.h>
> +#include <asm-generic/memory_layout.h>
> +
> +int openrisc_mem_malloc_init(void)
> +{
> +
> +       mem_malloc_init((void *)(OPENRISC_SOPC_TEXT_BASE - MALLOC_SIZE),
> +                       (void *)(OPENRISC_SOPC_TEXT_BASE - 1));
> +
> +       return 0;
> +}
> +
> +core_initcall(openrisc_mem_malloc_init);
> +
> +void arch_shutdown(void)
> +{
> +}
> diff --git a/arch/openrisc/lib/clock.c b/arch/openrisc/lib/clock.c
> new file mode 100644
> index 0000000..ab0a90d
> --- /dev/null
> +++ b/arch/openrisc/lib/clock.c
> @@ -0,0 +1,50 @@
> +/*
> + * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <init.h>
> +#include <asm/system.h>
> +#include <asm/openrisc_exc.h>
> +
> +static uint64_t openrisc_clocksource_read(void)
> +{
> +       return (uint64_t)(mfspr(SPR_TTCR));
> +}
> +
> +static struct clocksource cs = {
> +       .read   = openrisc_clocksource_read,
> +       .mask   = 0xffffffff,
> +       .shift  = 12,
> +};
> +
> +static int clocksource_init(void)
> +{
> +       mtspr(SPR_TTMR, SPR_TTMR_CR | 0xFFFFFF);
> +       cs.mult = clocksource_hz2mult(OPENRISC_TIMER_FREQ, cs.shift);
> +
> +       init_clock(&cs);
> +
> +       return 0;
> +}
> +
> +core_initcall(clocksource_init);
> diff --git a/arch/openrisc/lib/cpuinfo.c b/arch/openrisc/lib/cpuinfo.c
> new file mode 100644
> index 0000000..3ec44c1
> --- /dev/null
> +++ b/arch/openrisc/lib/cpuinfo.c
> @@ -0,0 +1,156 @@
> +/*
> + * (C) Copyright 2011, Stefan Kristiansson <
> stefan.kristiansson@saunalahti.fi>
> + * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <asm/system.h>
> +#include <asm/cache.h>
> +#include <asm/openrisc_exc.h>
> +
> +static volatile int illegal_instruction;
> +
> +static void illegal_instruction_handler(void)
> +{
> +       ulong *epcr = (ulong *)mfspr(SPR_EPCR_BASE);
> +
> +       /* skip over the illegal instruction */
> +       mtspr(SPR_EPCR_BASE, (ulong)(++epcr));
> +       illegal_instruction = 1;
> +}
> +
> +static int checkinstructions(void)
> +{
> +       ulong ra = 1, rb = 1, rc;
> +
> +       exception_install_handler(EXC_ILLEGAL_INSTR,
> +                               illegal_instruction_handler);
> +
> +       illegal_instruction = 0;
> +       asm volatile("l.mul %0,%1,%2" : "=r" (rc) : "r" (ra), "r" (rb));
> +       printf("           Hardware multiplier: %s\n",
> +               illegal_instruction ? "no" : "yes");
> +
> +       illegal_instruction = 0;
> +       asm volatile("l.div %0,%1,%2" : "=r" (rc) : "r" (ra), "r" (rb));
> +       printf("           Hardware divider: %s\n",
> +               illegal_instruction ? "no" : "yes");
> +
> +       exception_free_handler(EXC_ILLEGAL_INSTR);
> +
> +       return 0;
> +}
> +
> +int checkcpu(void)
> +{
> +       ulong upr = mfspr(SPR_UPR);
> +       ulong vr = mfspr(SPR_VR);
> +       ulong iccfgr = mfspr(SPR_ICCFGR);
> +       ulong dccfgr = mfspr(SPR_DCCFGR);
> +       ulong immucfgr = mfspr(SPR_IMMUCFGR);
> +       ulong dmmucfgr = mfspr(SPR_DMMUCFGR);
> +       ulong cpucfgr = mfspr(SPR_CPUCFGR);
> +       uint ver = (vr & SPR_VR_VER) >> 24;
> +       uint rev = vr & SPR_VR_REV;
> +       uint block_size;
> +       uint ways;
> +       uint sets;
> +
> +       printf("CPU:   OpenRISC-%x00 (rev %d) @ %d MHz\n",
> +               ver, rev, (CONFIG_SYS_CLK_FREQ / 1000000));
> +
> +       if (upr & SPR_UPR_DCP) {
> +               block_size = (dccfgr & SPR_DCCFGR_CBS) ? 32 : 16;
> +               ways = 1 << (dccfgr & SPR_DCCFGR_NCW);
> +               printf("       D-Cache: %d bytes, %d bytes/line, %d
> way(s)\n",
> +                      checkdcache(), block_size, ways);
> +       } else {
> +               printf("       D-Cache: no\n");
> +       }
> +
> +       if (upr & SPR_UPR_ICP) {
> +               block_size = (iccfgr & SPR_ICCFGR_CBS) ? 32 : 16;
> +               ways = 1 << (iccfgr & SPR_ICCFGR_NCW);
> +               printf("       I-Cache: %d bytes, %d bytes/line, %d
> way(s)\n",
> +                      checkicache(), block_size, ways);
> +       } else {
> +               printf("       I-Cache: no\n");
> +       }
> +
> +       if (upr & SPR_UPR_DMP) {
> +               sets = 1 << ((dmmucfgr & SPR_DMMUCFGR_NTS) >> 2);
> +               ways = (dmmucfgr & SPR_DMMUCFGR_NTW) + 1;
> +               printf("       DMMU: %d sets, %d way(s)\n",
> +                      sets, ways);
> +       } else {
> +               printf("       DMMU: no\n");
> +       }
> +
> +       if (upr & SPR_UPR_IMP) {
> +               sets = 1 << ((immucfgr & SPR_IMMUCFGR_NTS) >> 2);
> +               ways = (immucfgr & SPR_IMMUCFGR_NTW) + 1;
> +               printf("       IMMU: %d sets, %d way(s)\n",
> +                      sets, ways);
> +       } else {
> +               printf("       IMMU: no\n");
> +       }
> +
> +       printf("       MAC unit: %s\n",
> +               (upr & SPR_UPR_MP) ? "yes" : "no");
> +       printf("       Debug unit: %s\n",
> +               (upr & SPR_UPR_DUP) ? "yes" : "no");
> +       printf("       Performance counters: %s\n",
> +               (upr & SPR_UPR_PCUP) ? "yes" : "no");
> +       printf("       Power management: %s\n",
> +               (upr & SPR_UPR_PMP) ? "yes" : "no");
> +       printf("       Interrupt controller: %s\n",
> +               (upr & SPR_UPR_PICP) ? "yes" : "no");
> +       printf("       Timer: %s\n",
> +               (upr & SPR_UPR_TTP) ? "yes" : "no");
> +       printf("       Custom unit(s): %s\n",
> +               (upr & SPR_UPR_CUP) ? "yes" : "no");
> +
> +       printf("       Supported instructions:\n");
> +       printf("           ORBIS32: %s\n",
> +               (cpucfgr & SPR_CPUCFGR_OB32S) ? "yes" : "no");
> +       printf("           ORBIS64: %s\n",
> +               (cpucfgr & SPR_CPUCFGR_OB64S) ? "yes" : "no");
> +       printf("           ORFPX32: %s\n",
> +               (cpucfgr & SPR_CPUCFGR_OF32S) ? "yes" : "no");
> +       printf("           ORFPX64: %s\n",
> +               (cpucfgr & SPR_CPUCFGR_OF64S) ? "yes" : "no");
> +
> +       checkinstructions();
> +
> +       return 0;
> +}
> +
> +static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
> +{
> +       checkcpu();
> +       return 0;
> +}
> +
> +BAREBOX_CMD_START(cpuinfo)
> +       .cmd            = do_cpuinfo,
> +       .usage          = "Show info about CPU",
> +BAREBOX_CMD_END
> diff --git a/arch/openrisc/lib/lshrdi3.S b/arch/openrisc/lib/lshrdi3.S
> new file mode 100644
> index 0000000..de30445
> --- /dev/null
> +++ b/arch/openrisc/lib/lshrdi3.S
> @@ -0,0 +1,41 @@
> +/*
> + * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> + *
> + * Extracted from gcc generated assembly.
> + *
> + * Extended precision shifts.
> + *
> + * R3/R4 (MSW, LSW) has 64 bit value
> + * R5    has shift count
> + * result in R11/R12
> + *
> + */
> +
> +.globl __lshrdi3
> +
> +__lshrdi3:
> +       l.sfeqi r5,0x0
> +       l.bf out                /* if count = 0, go out
> */
> +
> +       l.addi r6,r0,0x20       /* r6 = 32
>  */
> +       l.sub r6,r6,r5          /* r6 = 32 - count
>  */
> +       l.sfgtsi r6,0x0         /* if count >= 32
> */
> +       l.bnf more_than_32      /* branch to more_than_32
> */
> +       l.nop 0x0
> +
> +less_than_32:
> +       l.sll r6,r3,r6          /* r6 gets the bits moved from MSW to LSW
> */
> +       l.srl r4,r4,r5          /* shift LSW
>  */
> +       l.srl r3,r3,r5          /* shift MSW
>  */
> +       l.or r4,r6,r4           /* LSW gets bits shifted from MSW
> */
> +
> + out:
> +       l.ori r11,r3,0x0
> +       l.jr r9
> +       l.ori r12,r4,0x0
> +
> +more_than_32:
> +       l.sub r4,r0,r6          /* r4 = -r6, the number of bits above 32
>  */
> +       l.srl r4,r3,r4          /* LSW = MSW >> r4
>  */
> +       l.j out                 /* go out
> */
> +       l.addi r3,r0,0x0        /* MSW = 0
>  */
> diff --git a/arch/openrisc/lib/muldi3.S b/arch/openrisc/lib/muldi3.S
> new file mode 100644
> index 0000000..902338a
> --- /dev/null
> +++ b/arch/openrisc/lib/muldi3.S
> @@ -0,0 +1,58 @@
> +/*
> + * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> + *
> + * Extracted from gcc generated assembly.
> + *
> + * Multiply two quads. Hereafter, the illustration of what is going on :
> + *
> + *                        |    r3    |    r4    |
> + *                        |    r5    |    r6    |
> + *                         --------------------
> + *                        |       r4 * r6       |
> + *             |       r3 * r6       |          | +
> + *             |       r5 * r4       |          | +
> + *  |       r3 * r5       |          |          | +
> + *   -------------------------------------------  =
> + *                        |    64 bits result   |
> + *
> + */
> +
> +.globl __muldi3
> +
> +__muldi3:
> +       /* starts with the full 64 bits mul (r4 * r6) */
> +       l.andi r7,r4,0xffff
> +       l.srli r8,r4,0x10
> +
> +       l.andi r11,r6,0xffff
> +       l.srli r12,r6,0x10
> +
> +       l.mul r13,r11,r7
> +       l.mul r11,r11,r8
> +       l.mul r7,r12,r7
> +
> +       l.srli r15,r13,0x10
> +       l.add r7,r7,r15
> +       l.add r7,r11,r7
> +       l.sfleu r11,r7
> +       l.bf no_carry
> +       l.mul r8,r12,r8
> +
> +       l.movhi r15,0x1
> +       l.add r8,r8,r15
> +
> +no_carry:
> +       /* Now compute r3 * r6  */
> +       l.mul r6,r6,r3
> +       /* and r4 * r5          */
> +       l.mul r4,r4,r5
> +       /* finaly previous results and put the result in r11:r12 */
> +       l.srli r3,r7,0x10
> +       l.slli r7,r7,0x10
> +       l.andi r13,r13,0xffff
> +       l.add r8,r8,r3
> +       l.add r11,r4,r6
> +       l.add r12,r7,r13
> +       l.add r11,r11,r8
> +       l.jr r9
> +       l.nop
> --
> 1.7.7
>
>
ping

--002354470fd425d2ea04b58ac430
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/12/20  <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:franck.jullien@gmail.com">franck.jullien@gmail.com</a>&gt;</spa=
n><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
From: Franck Jullien &lt;<a href=3D"mailto:franck.jullien@gmail.com">franck=
.jullien@gmail.com</a>&gt;<br>
<br>
OpenRISC is the original flagship project of the OpenCores community.<br>
This project aims to develop a series of general purpose open source<br>
RISC CPU architectures.<br>
<br>
A team from OpenCores provided the first implementation, the OpenRISC<br>
1200, written in the Verilog hardware description language.<br>
<br>
Even though I should have created an mach-or1200 directory, it is not<br>
necessary for now. The OpenRISC 1200 CPU is the only one available and<br>
it will be for some time.<br>
<br>
Signed-off-by: Franck Jullien &lt;<a href=3D"mailto:franck.jullien@gmail.co=
m">franck.jullien@gmail.com</a>&gt;<br>
---<br>
=A0arch/openrisc/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 29 ++=
<br>
=A0arch/openrisc/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 21 ++<b=
r>
=A0arch/openrisc/configs/generic_defconfig =A0| =A0 20 +<br>
=A0arch/openrisc/cpu/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A05 +<br>
=A0arch/openrisc/cpu/barebox.lds.S =A0 =A0 =A0 =A0 =A0| =A0 98 +++++<br>
=A0arch/openrisc/cpu/cache.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0154 ++++++=
++<br>
=A0arch/openrisc/cpu/cpu.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 43 +++<=
br>
=A0arch/openrisc/cpu/exceptions.c =A0 =A0 =A0 =A0 =A0 | =A0 84 +++++<br>
=A0arch/openrisc/cpu/start.S =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0335 ++++++=
++++++++++++<br>
=A0arch/openrisc/include/asm/barebox.h =A0 =A0 =A0| =A0 =A04 +<br>
=A0arch/openrisc/include/asm/bitops.h =A0 =A0 =A0 | =A0 28 ++<br>
=A0arch/openrisc/include/asm/bitops/ffs.h =A0 | =A0 26 ++<br>
=A0arch/openrisc/include/asm/bitops/fls.h =A0 | =A0 26 ++<br>
=A0arch/openrisc/include/asm/byteorder.h =A0 =A0| =A0 =A01 +<br>
=A0arch/openrisc/include/asm/cache.h =A0 =A0 =A0 =A0| =A0 47 +++<br>
=A0arch/openrisc/include/asm/common.h =A0 =A0 =A0 | =A0 =A04 +<br>
=A0arch/openrisc/include/asm/elf.h =A0 =A0 =A0 =A0 =A0| =A0107 ++++++<br>
=A0arch/openrisc/include/asm/io.h =A0 =A0 =A0 =A0 =A0 | =A0123 +++++++<br>
=A0arch/openrisc/include/asm/openrisc_exc.h | =A0 41 +++<br>
=A0arch/openrisc/include/asm/posix_types.h =A0| =A0 71 ++++<br>
=A0arch/openrisc/include/asm/ptrace.h =A0 =A0 =A0 | =A0131 +++++++<br>
=A0arch/openrisc/include/asm/sections.h =A0 =A0 | =A0 =A01 +<br>
=A0arch/openrisc/include/asm/spr-defs.h =A0 =A0 | =A0567 ++++++++++++++++++=
++++++++++++<br>
=A0arch/openrisc/include/asm/string.h =A0 =A0 =A0 | =A0 =A04 +<br>
=A0arch/openrisc/include/asm/swab.h =A0 =A0 =A0 =A0 | =A0 =A04 +<br>
=A0arch/openrisc/include/asm/system.h =A0 =A0 =A0 | =A0 39 ++<br>
=A0arch/openrisc/include/asm/types.h =A0 =A0 =A0 =A0| =A0 79 ++++<br>
=A0arch/openrisc/lib/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A06 +<br>
=A0arch/openrisc/lib/ashldi3.S =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 41 +++<br>
=A0arch/openrisc/lib/board.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 42 +++<br=
>
=A0arch/openrisc/lib/clock.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 50 +++<br=
>
=A0arch/openrisc/lib/cpuinfo.c =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0156 ++++++++=
<br>
=A0arch/openrisc/lib/lshrdi3.S =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 41 +++<br>
=A0arch/openrisc/lib/muldi3.S =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 58 +++<br>
=A034 files changed, 2486 insertions(+), 0 deletions(-)<br>
=A0create mode 100644 arch/openrisc/Kconfig<br>
=A0create mode 100644 arch/openrisc/Makefile<br>
=A0create mode 100644 arch/openrisc/configs/generic_defconfig<br>
=A0create mode 100644 arch/openrisc/cpu/Makefile<br>
=A0create mode 100644 arch/openrisc/cpu/barebox.lds.S<br>
=A0create mode 100644 arch/openrisc/cpu/cache.c<br>
=A0create mode 100644 arch/openrisc/cpu/cpu.c<br>
=A0create mode 100644 arch/openrisc/cpu/exceptions.c<br>
=A0create mode 100644 arch/openrisc/cpu/start.S<br>
=A0create mode 100644 arch/openrisc/include/asm/barebox.h<br>
=A0create mode 100644 arch/openrisc/include/asm/bitops.h<br>
=A0create mode 100644 arch/openrisc/include/asm/bitops/ffs.h<br>
=A0create mode 100644 arch/openrisc/include/asm/bitops/fls.h<br>
=A0create mode 100644 arch/openrisc/include/asm/byteorder.h<br>
=A0create mode 100644 arch/openrisc/include/asm/cache.h<br>
=A0create mode 100644 arch/openrisc/include/asm/common.h<br>
=A0create mode 100644 arch/openrisc/include/asm/elf.h<br>
=A0create mode 100644 arch/openrisc/include/asm/io.h<br>
=A0create mode 100644 arch/openrisc/include/asm/openrisc_exc.h<br>
=A0create mode 100644 arch/openrisc/include/asm/posix_types.h<br>
=A0create mode 100644 arch/openrisc/include/asm/ptrace.h<br>
=A0create mode 100644 arch/openrisc/include/asm/sections.h<br>
=A0create mode 100644 arch/openrisc/include/asm/spr-defs.h<br>
=A0create mode 100644 arch/openrisc/include/asm/string.h<br>
=A0create mode 100644 arch/openrisc/include/asm/swab.h<br>
=A0create mode 100644 arch/openrisc/include/asm/system.h<br>
=A0create mode 100644 arch/openrisc/include/asm/types.h<br>
=A0create mode 100644 arch/openrisc/lib/Makefile<br>
=A0create mode 100644 arch/openrisc/lib/ashldi3.S<br>
=A0create mode 100644 arch/openrisc/lib/board.c<br>
=A0create mode 100644 arch/openrisc/lib/clock.c<br>
=A0create mode 100644 arch/openrisc/lib/cpuinfo.c<br>
=A0create mode 100644 arch/openrisc/lib/lshrdi3.S<br>
=A0create mode 100644 arch/openrisc/lib/muldi3.S<br>
<br>
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig<br>
new file mode 100644<br>
index 0000000..a3cb337<br>
--- /dev/null<br>
+++ b/arch/openrisc/Kconfig<br>
@@ -0,0 +1,29 @@<br>
+config OPENRISC<br>
+ =A0 =A0 =A0 bool<br>
+ =A0 =A0 =A0 select HAVE_CONFIGURABLE_MEMORY_LAYOUT<br>
+ =A0 =A0 =A0 default y<br>
+<br>
+# not used<br>
+config ARCH_TEXT_BASE<br>
+ =A0 =A0 =A0 hex<br>
+ =A0 =A0 =A0 default 0x00000000<br>
+<br>
+config BOARDINFO<br>
+ =A0 =A0 =A0 default &quot;Openrisc simulator&quot; if GENERIC<br>
+<br>
+choice<br>
+ =A0 =A0 =A0 prompt &quot;Select your board&quot;<br>
+<br>
+config GENERIC<br>
+ =A0 =A0 =A0 bool &quot;Generic =A0 &quot;<br>
+ =A0 =A0 =A0 select OPENRISC<br>
+<br>
+endchoice<br>
+<br>
+source common/Kconfig<br>
+source commands/Kconfig<br>
+source net/Kconfig<br>
+source drivers/Kconfig<br>
+source fs/Kconfig<br>
+source lib/Kconfig<br>
+source crypto/Kconfig<br>
diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile<br>
new file mode 100644<br>
index 0000000..fd8bbbf<br>
--- /dev/null<br>
+++ b/arch/openrisc/Makefile<br>
@@ -0,0 +1,21 @@<br>
+CPPFLAGS +=3D -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div<br>
+<br>
+board-$(CONFIG_GENERIC) :=3D generic<br>
+<br>
+KALLSYMS +=3D --symbol-prefix=3D_<br>
+<br>
+archprepare: maketools<br>
+<br>
+PHONY +=3D maketools<br>
+<br>
+ifneq ($(board-y),)<br>
+BOARD =A0:=3D arch/openrisc/boards/$(board-y)/<br>
+else<br>
+BOARD =A0:=3D<br>
+endif<br>
+<br>
+common-y +=3D $(BOARD)<br>
+common-y +=3D arch/openrisc/lib/<br>
+common-y +=3D arch/openrisc/cpu/<br>
+<br>
+lds-y +=3D arch/openrisc/cpu/barebox.lds<br>
diff --git a/arch/openrisc/configs/generic_defconfig b/arch/openrisc/config=
s/generic_defconfig<br>
new file mode 100644<br>
index 0000000..68e0371<br>
--- /dev/null<br>
+++ b/arch/openrisc/configs/generic_defconfig<br>
@@ -0,0 +1,20 @@<br>
+CONFIG_LONGHELP=3Dy<br>
+CONFIG_HUSH_FANCY_PROMPT=3Dy<br>
+CONFIG_CMDLINE_EDITING=3Dy<br>
+CONFIG_AUTO_COMPLETE=3Dy<br>
+CONFIG_PARTITION=3Dy<br>
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=3Dy<br>
+CONFIG_CMD_EDIT=3Dy<br>
+CONFIG_CMD_SAVEENV=3Dy<br>
+CONFIG_CMD_LOADENV=3Dy<br>
+CONFIG_CMD_EXPORT=3Dy<br>
+CONFIG_CMD_PRINTENV=3Dy<br>
+CONFIG_CMD_TIME=3Dy<br>
+CONFIG_CMD_MEMINFO=3Dy<br>
+CONFIG_CMD_FLASH=3Dy<br>
+# CONFIG_CMD_BOOTM is not set<br>
+CONFIG_CMD_RESET=3Dy<br>
+CONFIG_CMD_GO=3Dy<br>
+CONFIG_CMD_TIMEOUT=3Dy<br>
+CONFIG_CMD_PARTITION=3Dy<br>
+CONFIG_DRIVER_SERIAL_NS16550=3Dy<br>
diff --git a/arch/openrisc/cpu/Makefile b/arch/openrisc/cpu/Makefile<br>
new file mode 100644<br>
index 0000000..1cd7506<br>
--- /dev/null<br>
+++ b/arch/openrisc/cpu/Makefile<br>
@@ -0,0 +1,5 @@<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D start.o<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D cpu.o<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D exceptions.o<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D cache.o<br>
+extra-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D barebox.lds<br>
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.ld=
s.S<br>
new file mode 100644<br>
index 0000000..d3e02a6<br>
--- /dev/null<br>
+++ b/arch/openrisc/cpu/barebox.lds.S<br>
@@ -0,0 +1,98 @@<br>
+/*<br>
+ * barebox - barebox.lds.S<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#include &lt;config.h&gt;<br>
+#include &lt;asm-generic/barebox.lds.h&gt;<br>
+<br>
+OUTPUT_FORMAT(&quot;elf32-or32&quot;, &quot;elf32-or32&quot;, &quot;elf32-=
or32&quot;)<br>
+__DYNAMIC =A0=3D =A00;<br>
+<br>
+MEMORY<br>
+{<br>
+ =A0 =A0 =A0 vectors : ORIGIN =3D 0, LENGTH =3D 0x2000<br>
+ =A0 =A0 =A0 ram =A0 =A0 : ORIGIN =3D TEXT_BASE,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 LENGTH =3D BAREBOX_RESERVED_SIZE<br>
+}<br>
+<br>
+SECTIONS<br>
+{<br>
+ =A0 =A0 =A0 .vectors :<br>
+ =A0 =A0 =A0 {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(.vectors)<br>
+ =A0 =A0 =A0 } &gt; vectors<br>
+<br>
+ =A0 =A0 =A0 . =3D ALIGN(4);<br>
+ =A0 =A0 =A0 __start =3D .;<br>
+ =A0 =A0 =A0 .text : AT (__start) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 _stext =3D .;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(.text)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 _etext =3D .;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(.lit)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(.shdata)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 _endtext =3D .;<br>
+ =A0 =A0 =A0 } =A0&gt; ram<br>
+<br>
+ =A0 =A0 =A0 . =3D ALIGN(4);<br>
+ =A0 =A0 =A0 .rodata : {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(.rodata);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(.rodata.*)<br>
+ =A0 =A0 =A0 } &gt; ram<br>
+<br>
+ =A0 =A0 =A0 . =3D ALIGN(4);<br>
+ =A0 =A0 =A0 . =3D .;<br>
+ =A0 =A0 =A0 __barebox_cmd_start =3D .;<br>
+ =A0 =A0 =A0 .barebox_cmd : { BAREBOX_CMDS } &gt; ram<br>
+ =A0 =A0 =A0 __barebox_cmd_end =3D .;<br>
+<br>
+ =A0 =A0 =A0 __barebox_magicvar_start =3D .;<br>
+ =A0 =A0 =A0 .barebox_magicvar : { BAREBOX_MAGICVARS } &gt; ram<br>
+ =A0 =A0 =A0 __barebox_magicvar_end =3D .;<br>
+<br>
+ =A0 =A0 =A0 __barebox_initcalls_start =3D .;<br>
+ =A0 =A0 =A0 .barebox_initcalls : { INITCALLS } &gt; ram<br>
+ =A0 =A0 =A0 __barebox_initcalls_end =3D .;<br>
+<br>
+ =A0 =A0 =A0 ___usymtab_start =3D .;<br>
+ =A0 =A0 =A0 __usymtab : { BAREBOX_SYMS } &gt; ram<br>
+ =A0 =A0 =A0 ___usymtab_end =3D .;<br>
+<br>
+ =A0 =A0 =A0 __etext =3D .; /* End of text and rodata section */<br>
+<br>
+ =A0 =A0 =A0 . =3D ALIGN(4);<br>
+ =A0 =A0 =A0 .data : {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 sdata =3D .;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 _sdata =3D .;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(.data)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 edata =3D .;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 _edata =3D .;<br>
+ =A0 =A0 =A0 } &gt; ram<br>
+<br>
+ =A0 =A0 =A0 . =3D ALIGN(4);<br>
+ =A0 =A0 =A0 .bss :<br>
+ =A0 =A0 =A0 {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 __bss_start =3D .;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 _bss_start =3D .;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(.shbss)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(.bss)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 *(COMMON)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 _bss_end =3D .;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 __bss_stop =3D .;<br>
+ =A0 =A0 =A0 } &gt; ram<br>
+ =A0 =A0 =A0 __end =3D .;<br>
+}<br>
diff --git a/arch/openrisc/cpu/cache.c b/arch/openrisc/cpu/cache.c<br>
new file mode 100644<br>
index 0000000..81a0d13<br>
--- /dev/null<br>
+++ b/arch/openrisc/cpu/cache.c<br>
@@ -0,0 +1,154 @@<br>
+/*<br>
+ * (C) Copyright 2011, Stefan Kristiansson &lt;<a href=3D"mailto:stefan.kr=
istiansson@saunalahti.fi">stefan.kristiansson@saunalahti.fi</a>&gt;<br>
+ * (C) Copyright 2011, Julius Baxter &lt;<a href=3D"mailto:julius@opencore=
s.org">julius@opencores.org</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;init.h&gt;<br>
+#include &lt;asm/system.h&gt;<br>
+<br>
+void flush_dcache_range(unsigned long addr, unsigned long stop)<br>
+{<br>
+ =A0 =A0 =A0 ulong block_size =3D (mfspr(SPR_DCCFGR) &amp; SPR_DCCFGR_CBS)=
 ? 32 : 16;<br>
+<br>
+ =A0 =A0 =A0 while (addr &lt; stop) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 mtspr(SPR_DCBFR, addr);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 addr +=3D block_size;<br>
+ =A0 =A0 =A0 }<br>
+}<br>
+<br>
+void invalidate_dcache_range(unsigned long addr, unsigned long stop)<br>
+{<br>
+ =A0 =A0 =A0 ulong block_size =3D (mfspr(SPR_DCCFGR) &amp; SPR_DCCFGR_CBS)=
 ? 32 : 16;<br>
+<br>
+ =A0 =A0 =A0 while (addr &lt; stop) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 mtspr(SPR_DCBIR, addr);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 addr +=3D block_size;<br>
+ =A0 =A0 =A0 }<br>
+}<br>
+<br>
+static void invalidate_icache_range(unsigned long addr, unsigned long stop=
)<br>
+{<br>
+ =A0 =A0 =A0 ulong block_size =3D (mfspr(SPR_ICCFGR) &amp; SPR_ICCFGR_CBS)=
 ? 32 : 16;<br>
+<br>
+ =A0 =A0 =A0 while (addr &lt; stop) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 mtspr(SPR_ICBIR, addr);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 addr +=3D block_size;<br>
+ =A0 =A0 =A0 }<br>
+}<br>
+<br>
+void flush_cache(unsigned long addr, unsigned long size)<br>
+{<br>
+ =A0 =A0 =A0 flush_dcache_range(addr, addr + size);<br>
+ =A0 =A0 =A0 invalidate_icache_range(addr, addr + size);<br>
+}<br>
+<br>
+int icache_status(void)<br>
+{<br>
+ =A0 =A0 =A0 return mfspr(SPR_SR) &amp; SPR_SR_ICE;<br>
+}<br>
+<br>
+int checkicache(void)<br>
+{<br>
+ =A0 =A0 =A0 unsigned long iccfgr;<br>
+ =A0 =A0 =A0 unsigned long cache_set_size;<br>
+ =A0 =A0 =A0 unsigned long cache_ways;<br>
+ =A0 =A0 =A0 unsigned long cache_block_size;<br>
+<br>
+ =A0 =A0 =A0 iccfgr =3D mfspr(SPR_ICCFGR);<br>
+ =A0 =A0 =A0 cache_ways =3D 1 &lt;&lt; (iccfgr &amp; SPR_ICCFGR_NCW);<br>
+ =A0 =A0 =A0 cache_set_size =3D 1 &lt;&lt; ((iccfgr &amp; SPR_ICCFGR_NCS) =
&gt;&gt; 3);<br>
+ =A0 =A0 =A0 cache_block_size =3D (iccfgr &amp; SPR_ICCFGR_CBS) ? 32 : 16;=
<br>
+<br>
+ =A0 =A0 =A0 return cache_set_size * cache_ways * cache_block_size;<br>
+}<br>
+<br>
+int dcache_status(void)<br>
+{<br>
+ =A0 =A0 =A0 return mfspr(SPR_SR) &amp; SPR_SR_DCE;<br>
+}<br>
+<br>
+int checkdcache(void)<br>
+{<br>
+ =A0 =A0 =A0 unsigned long dccfgr;<br>
+ =A0 =A0 =A0 unsigned long cache_set_size;<br>
+ =A0 =A0 =A0 unsigned long cache_ways;<br>
+ =A0 =A0 =A0 unsigned long cache_block_size;<br>
+<br>
+ =A0 =A0 =A0 dccfgr =3D mfspr(SPR_DCCFGR);<br>
+ =A0 =A0 =A0 cache_ways =3D 1 &lt;&lt; (dccfgr &amp; SPR_DCCFGR_NCW);<br>
+ =A0 =A0 =A0 cache_set_size =3D 1 &lt;&lt; ((dccfgr &amp; SPR_DCCFGR_NCS) =
&gt;&gt; 3);<br>
+ =A0 =A0 =A0 cache_block_size =3D (dccfgr &amp; SPR_DCCFGR_CBS) ? 32 : 16;=
<br>
+<br>
+ =A0 =A0 =A0 return cache_set_size * cache_ways * cache_block_size;<br>
+}<br>
+<br>
+void dcache_enable(void)<br>
+{<br>
+ =A0 =A0 =A0 mtspr(SPR_SR, mfspr(SPR_SR) | SPR_SR_DCE);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+}<br>
+<br>
+void dcache_disable(void)<br>
+{<br>
+ =A0 =A0 =A0 mtspr(SPR_SR, mfspr(SPR_SR) &amp; ~SPR_SR_DCE);<br>
+}<br>
+<br>
+void icache_enable(void)<br>
+{<br>
+ =A0 =A0 =A0 mtspr(SPR_SR, mfspr(SPR_SR) | SPR_SR_ICE);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.nop&quot;);<br>
+}<br>
+<br>
+void icache_disable(void)<br>
+{<br>
+ =A0 =A0 =A0 mtspr(SPR_SR, mfspr(SPR_SR) &amp; ~SPR_SR_ICE);<br>
+}<br>
+<br>
+int cache_init(void)<br>
+{<br>
+ =A0 =A0 =A0 if (mfspr(SPR_UPR) &amp; SPR_UPR_ICP) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 icache_disable();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 invalidate_icache_range(0, checkicache());<br=
>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 icache_enable();<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 if (mfspr(SPR_UPR) &amp; SPR_UPR_DCP) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 dcache_disable();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 invalidate_dcache_range(0, checkdcache());<br=
>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 dcache_enable();<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+core_initcall(cache_init);<br>
diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c<br>
new file mode 100644<br>
index 0000000..48f5d03<br>
--- /dev/null<br>
+++ b/arch/openrisc/cpu/cpu.c<br>
@@ -0,0 +1,43 @@<br>
+/*<br>
+ * (C) Copyright 2011, Stefan Kristiansson &lt;<a href=3D"mailto:stefan.kr=
istiansson@saunalahti.fi">stefan.kristiansson@saunalahti.fi</a>&gt;<br>
+ * (C) Copyright 2011, Julius Baxter &lt;<a href=3D"mailto:julius@opencore=
s.org">julius@opencores.org</a>&gt;<br>
+ *<br>
+ * See file CREDITS for list of people who contributed to this<br>
+ * project.<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;init.h&gt;<br>
+#include &lt;asm/system.h&gt;<br>
+#include &lt;asm/openrisc_exc.h&gt;<br>
+<br>
+int cleanup_before_linux(void)<br>
+{<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+extern void __reset(void);<br>
+<br>
+void __noreturn reset_cpu(ulong ignored)<br>
+{<br>
+ =A0 =A0 =A0 __reset();<br>
+ =A0 =A0 =A0 /* not reached, __reset does not return */<br>
+<br>
+ =A0 =A0 =A0 /* Not reached */<br>
+ =A0 =A0 =A0 while (1);<br>
+}<br>
diff --git a/arch/openrisc/cpu/exceptions.c b/arch/openrisc/cpu/exceptions.=
c<br>
new file mode 100644<br>
index 0000000..a979258<br>
--- /dev/null<br>
+++ b/arch/openrisc/cpu/exceptions.c<br>
@@ -0,0 +1,84 @@<br>
+/*<br>
+ * (C) Copyright 2011, Stefan Kristiansson &lt;<a href=3D"mailto:stefan.kr=
istiansson@saunalahti.fi">stefan.kristiansson@saunalahti.fi</a>&gt;<br>
+ * (C) Copyright 2011, Julius Baxter &lt;<a href=3D"mailto:julius@opencore=
s.org">julius@opencores.org</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;asm/system.h&gt;<br>
+<br>
+static const char * const excp_table[] =3D {<br>
+ =A0 =A0 =A0 &quot;Unknown exception&quot;,<br>
+ =A0 =A0 =A0 &quot;Reset&quot;,<br>
+ =A0 =A0 =A0 &quot;Bus Error&quot;,<br>
+ =A0 =A0 =A0 &quot;Data Page Fault&quot;,<br>
+ =A0 =A0 =A0 &quot;Instruction Page Fault&quot;,<br>
+ =A0 =A0 =A0 &quot;Tick Timer&quot;,<br>
+ =A0 =A0 =A0 &quot;Alignment&quot;,<br>
+ =A0 =A0 =A0 &quot;Illegal Instruction&quot;,<br>
+ =A0 =A0 =A0 &quot;External Interrupt&quot;,<br>
+ =A0 =A0 =A0 &quot;D-TLB Miss&quot;,<br>
+ =A0 =A0 =A0 &quot;I-TLB Miss&quot;,<br>
+ =A0 =A0 =A0 &quot;Range&quot;,<br>
+ =A0 =A0 =A0 &quot;System Call&quot;,<br>
+ =A0 =A0 =A0 &quot;Floating Point&quot;,<br>
+ =A0 =A0 =A0 &quot;Trap&quot;,<br>
+};<br>
+<br>
+static void (*handlers[32])(void);<br>
+<br>
+void exception_install_handler(int exception, void (*handler)(void))<br>
+{<br>
+ =A0 =A0 =A0 if (exception &lt; 0 || exception &gt; 31)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 return;<br>
+<br>
+ =A0 =A0 =A0 handlers[exception] =3D handler;<br>
+}<br>
+<br>
+void exception_free_handler(int exception)<br>
+{<br>
+ =A0 =A0 =A0 if (exception &lt; 0 || exception &gt; 31)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 return;<br>
+<br>
+ =A0 =A0 =A0 handlers[exception] =3D 0;<br>
+}<br>
+<br>
+static void exception_hang(int vect)<br>
+{<br>
+ =A0 =A0 =A0 printf(&quot;Unhandled exception at 0x%x &quot;, vect &amp; 0=
xff00);<br>
+<br>
+ =A0 =A0 =A0 vect =3D ((vect &gt;&gt; 8) &amp; 0xff);<br>
+ =A0 =A0 =A0 if (vect &lt; ARRAY_SIZE(excp_table))<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;(%s)\n&quot;, excp_table[vect]);=
<br>
+ =A0 =A0 =A0 else<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;(%s)\n&quot;, excp_table[0]);<br=
>
+<br>
+ =A0 =A0 =A0 printf(&quot;EPCR: 0x%08lx\n&quot;, mfspr(SPR_EPCR_BASE));<br=
>
+ =A0 =A0 =A0 printf(&quot;EEAR: 0x%08lx\n&quot;, mfspr(SPR_EEAR_BASE));<br=
>
+ =A0 =A0 =A0 printf(&quot;ESR: =A00x%08lx\n&quot;, mfspr(SPR_ESR_BASE));<b=
r>
+ =A0 =A0 =A0 hang();<br>
+}<br>
+<br>
+void exception_handler(int vect)<br>
+{<br>
+ =A0 =A0 =A0 int exception =3D vect &gt;&gt; 8;<br>
+<br>
+ =A0 =A0 =A0 if (handlers[exception])<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 handlers[exception]();<br>
+ =A0 =A0 =A0 else<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 exception_hang(vect);<br>
+}<br>
diff --git a/arch/openrisc/cpu/start.S b/arch/openrisc/cpu/start.S<br>
new file mode 100644<br>
index 0000000..056f116<br>
--- /dev/null<br>
+++ b/arch/openrisc/cpu/start.S<br>
@@ -0,0 +1,335 @@<br>
+/*<br>
+ * (C) Copyright 2011, Stefan Kristiansson &lt;<a href=3D"mailto:stefan.kr=
istiansson@saunalahti.fi">stefan.kristiansson@saunalahti.fi</a>&gt;<br>
+ * (C) Copyright 2011, Julius Baxter &lt;<a href=3D"mailto:julius@opencore=
s.org">julius@opencores.org</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#include &lt;config.h&gt;<br>
+#include &lt;asm-generic/memory_layout.h&gt;<br>
+#include &lt;asm/spr-defs.h&gt;<br>
+<br>
+#define EXCEPTION_STACK_SIZE (128+128)<br>
+<br>
+#define HANDLE_EXCEPTION =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 \<br>
+ =A0 =A0 =A0 l.addi =A0r1, r1, -EXCEPTION_STACK_SIZE =A0 ;\<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x1c(r1), r9 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0;\<br>
+ =A0 =A0 =A0 l.jal =A0 _exception_handler =A0 =A0 =A0 =A0 =A0 =A0 =A0;\<br=
>
+ =A0 =A0 =A0 =A0l.nop =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0;\<br>
+ =A0 =A0 =A0 l.lwz =A0 r9, 0x1c(r1) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0;\<br>
+ =A0 =A0 =A0 l.addi =A0r1, r1, EXCEPTION_STACK_SIZE =A0 =A0;\<br>
+ =A0 =A0 =A0 l.rfe =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 ;\<br>
+ =A0 =A0 =A0 =A0l.nop<br>
+<br>
+ =A0 =A0 =A0 .section .vectors, &quot;ax&quot;<br>
+ =A0 =A0 =A0 .global __reset<br>
+<br>
+ =A0 =A0 =A0 /* reset */<br>
+ =A0 =A0 =A0 .org =A0 =A00x100<br>
+__reset:<br>
+ =A0 =A0 =A0 /* there is no guarantee r0 is hardwired to zero, clear it he=
re */<br>
+ =A0 =A0 =A0 l.andi =A0r0, r0, 0<br>
+ =A0 =A0 =A0 /* reset stack and frame pointers */<br>
+ =A0 =A0 =A0 l.andi =A0r1, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r2, r0, 0<br>
+<br>
+ =A0 =A0 =A0 /* set supervisor mode */<br>
+ =A0 =A0 =A0 l.ori =A0 r3,r0,SPR_SR_SM<br>
+ =A0 =A0 =A0 l.mtspr r0,r3,SPR_SR<br>
+<br>
+ =A0 =A0 =A0 /* Relocate barebox */<br>
+ =A0 =A0 =A0 l.movhi r3,hi(__start) =A0 =A0 =A0 =A0 =A0/* source start add=
ress */<br>
+ =A0 =A0 =A0 l.ori =A0 r3,r3,lo(__start)<br>
+ =A0 =A0 =A0 l.movhi r4,hi(_stext) =A0 =A0 =A0 =A0 =A0 /* dest start addre=
ss */<br>
+ =A0 =A0 =A0 l.ori =A0 r4,r4,lo(_stext)<br>
+ =A0 =A0 =A0 l.movhi r5,hi(__end) =A0 =A0 =A0 =A0 =A0 =A0/* dest end addre=
ss */<br>
+ =A0 =A0 =A0 l.ori =A0 r5,r5,lo(__end)<br>
+<br>
+.L_reloc:<br>
+ =A0 =A0 =A0 l.lwz =A0 r6,0(r3)<br>
+ =A0 =A0 =A0 l.sw =A0 =A00(r4),r6<br>
+ =A0 =A0 =A0 l.addi =A0r3,r3,4<br>
+ =A0 =A0 =A0 l.sfltu r4,r5<br>
+ =A0 =A0 =A0 <a href=3D"http://l.bf" target=3D"_blank">l.bf</a> =A0 =A0.L_=
reloc<br>
+ =A0 =A0 =A0 l.addi =A0r4,r4,4 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /*delay slo=
t */<br>
+<br>
+#ifdef CONFIG_SYS_RELOCATE_VECTORS<br>
+ =A0 =A0 =A0 /* Relocate vectors from 0xf0000000 to 0x00000000 */<br>
+ =A0 =A0 =A0 l.movhi r4, 0xf000 /* source */<br>
+ =A0 =A0 =A0 l.movhi r5, 0 =A0 =A0 =A0/* destination */<br>
+ =A0 =A0 =A0 l.addi =A0r6, r5, CONFIG_SYS_VECTORS_LEN /* length */<br>
+.L_relocvectors:<br>
+ =A0 =A0 =A0 l.lwz =A0 r7, 0(r4)<br>
+ =A0 =A0 =A0 l.sw =A0 =A00(r5), r7<br>
+ =A0 =A0 =A0 l.addi =A0r5, r5, 4<br>
+ =A0 =A0 =A0 l.sfeq =A0r5,r6<br>
+ =A0 =A0 =A0 l.bnf =A0 .L_relocvectors<br>
+ =A0 =A0 =A0 =A0l.addi r4,r4, 4<br>
+#endif<br>
+<br>
+ =A0 =A0 =A0 l.j =A0 =A0 _start<br>
+ =A0 =A0 =A0 =A0l.nop<br>
+<br>
+ =A0 =A0 =A0 /* bus error */<br>
+ =A0 =A0 =A0 .org =A0 =A00x200<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* data page fault */<br>
+ =A0 =A0 =A0 .org =A0 =A00x300<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* instruction page fault */<br>
+ =A0 =A0 =A0 .org =A0 =A00x400<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* tick timer */<br>
+ =A0 =A0 =A0 .org =A0 =A00x500<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* alignment */<br>
+ =A0 =A0 =A0 .org =A0 =A00x600<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* illegal instruction */<br>
+ =A0 =A0 =A0 .org =A0 =A00x700<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* external interrupt */<br>
+ =A0 =A0 =A0 .org =A0 =A00x800<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* D-TLB miss */<br>
+ =A0 =A0 =A0 .org =A0 =A00x900<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* I-TLB miss */<br>
+ =A0 =A0 =A0 .org =A0 =A00xa00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* range */<br>
+ =A0 =A0 =A0 .org =A0 =A00xb00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* system call */<br>
+ =A0 =A0 =A0 .org =A0 =A00xc00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* floating point */<br>
+ =A0 =A0 =A0 .org =A0 =A00xd00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* trap */<br>
+ =A0 =A0 =A0 .org =A0 =A00xe00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00xf00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1100<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1200<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1300<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1400<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1500<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1600<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1700<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1800<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1900<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1a00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1b00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1c00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1d00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1e00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* reserved */<br>
+ =A0 =A0 =A0 .org =A0 =A00x1f00<br>
+ =A0 =A0 =A0 HANDLE_EXCEPTION<br>
+<br>
+ =A0 =A0 =A0 /* Startup routine */<br>
+ =A0 =A0 =A0 .text<br>
+ =A0 =A0 =A0 .global _start<br>
+_start:<br>
+ =A0 =A0 =A0 /* Init stack and frame pointers */<br>
+ =A0 =A0 =A0 l.movhi r1, hi(STACK_BASE)<br>
+ =A0 =A0 =A0 l.ori =A0 r1, r1, lo(STACK_BASE)<br>
+ =A0 =A0 =A0 l.or =A0 =A0r2, r0, r1<br>
+<br>
+ =A0 =A0 =A0 /* clear BSS segments */<br>
+ =A0 =A0 =A0 l.movhi r4, hi(_bss_start)<br>
+ =A0 =A0 =A0 l.ori =A0 r4, r4, lo(_bss_start)<br>
+ =A0 =A0 =A0 l.movhi r5, hi(_bss_end)<br>
+ =A0 =A0 =A0 l.ori =A0 r5, r5, lo(_bss_end)<br>
+.L_clear_bss:<br>
+ =A0 =A0 =A0 l.sw =A0 =A00(r4), r0<br>
+ =A0 =A0 =A0 l.sfltu r4,r5<br>
+ =A0 =A0 =A0 <a href=3D"http://l.bf" target=3D"_blank">l.bf</a> =A0 =A0.L_=
clear_bss<br>
+ =A0 =A0 =A0 =A0l.addi r4,r4,4<br>
+<br>
+ =A0 =A0 =A0 /* Reset registers before jumping to board_init */<br>
+ =A0 =A0 =A0 l.andi =A0r3, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r4, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r5, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r6, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r7, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r8, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r9, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r10, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r11, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r12, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r13, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r14, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r15, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r17, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r18, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r19, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r20, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r21, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r22, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r23, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r24, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r25, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r26, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r27, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r28, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r29, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r30, r0, 0<br>
+ =A0 =A0 =A0 l.andi =A0r31, r0, 0<br>
+<br>
+ =A0 =A0 =A0 l.j =A0 =A0 start_barebox<br>
+ =A0 =A0 =A0 =A0l.nop<br>
+<br>
+ =A0 =A0 =A0 .size =A0 _start, .-_start<br>
+<br>
+/*<br>
+ * Store state onto stack and call the real exception handler<br>
+ */<br>
+ =A0 =A0 =A0 .section .text<br>
+ =A0 =A0 =A0 .extern exception_handler<br>
+ =A0 =A0 =A0 .type =A0 _exception_handler,@function<br>
+<br>
+_exception_handler:<br>
+ =A0 =A0 =A0 /* Store state (r9 already saved)*/<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x00(r1), r2<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x04(r1), r3<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x08(r1), r4<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x0c(r1), r5<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x10(r1), r6<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x14(r1), r7<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x18(r1), r8<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x20(r1), r10<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x24(r1), r11<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x28(r1), r12<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x2c(r1), r13<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x30(r1), r14<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x34(r1), r15<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x38(r1), r16<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x3c(r1), r17<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x40(r1), r18<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x44(r1), r19<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x48(r1), r20<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x4c(r1), r21<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x50(r1), r22<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x54(r1), r23<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x58(r1), r24<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x5c(r1), r25<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x60(r1), r26<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x64(r1), r27<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x68(r1), r28<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x6c(r1), r29<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x70(r1), r30<br>
+ =A0 =A0 =A0 l.sw =A0 =A00x74(r1), r31<br>
+<br>
+ =A0 =A0 =A0 /* Save return address */<br>
+ =A0 =A0 =A0 l.or =A0 =A0r14, r0, r9<br>
+ =A0 =A0 =A0 /* Call exception handler with the link address as argument *=
/<br>
+ =A0 =A0 =A0 l.jal =A0 exception_handler<br>
+ =A0 =A0 =A0 =A0l.or =A0 r3, r0, r14<br>
+ =A0 =A0 =A0 /* Load return address */<br>
+ =A0 =A0 =A0 l.or =A0 =A0r9, r0, r14<br>
+<br>
+ =A0 =A0 =A0 /* Restore state */<br>
+ =A0 =A0 =A0 l.lwz =A0 r2, 0x00(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r3, 0x04(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r4, 0x08(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r5, 0x0c(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r6, 0x10(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r7, 0x14(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r8, 0x18(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r10, 0x20(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r11, 0x24(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r12, 0x28(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r13, 0x2c(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r14, 0x30(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r15, 0x34(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r16, 0x38(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r17, 0x3c(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r18, 0x40(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r19, 0x44(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r20, 0x48(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r21, 0x4c(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r22, 0x50(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r23, 0x54(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r24, 0x58(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r25, 0x5c(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r26, 0x60(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r27, 0x64(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r28, 0x68(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r29, 0x6c(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r30, 0x70(r1)<br>
+ =A0 =A0 =A0 l.lwz =A0 r31, 0x74(r1)<br>
+ =A0 =A0 =A0 l.jr =A0 =A0r9<br>
+ =A0 =A0 =A0 =A0l.nop<br>
diff --git a/arch/openrisc/include/asm/barebox.h b/arch/openrisc/include/as=
m/barebox.h<br>
new file mode 100644<br>
index 0000000..9dd1df8<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/barebox.h<br>
@@ -0,0 +1,4 @@<br>
+#ifndef _ASM_BAREBOX_H_<br>
+#define _ASM_BAREBOX_H_<br>
+<br>
+#endif /* _ASM_BAREBOX_H_ */<br>
diff --git a/arch/openrisc/include/asm/bitops.h b/arch/openrisc/include/asm=
/bitops.h<br>
new file mode 100644<br>
index 0000000..c001a5d<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/bitops.h<br>
@@ -0,0 +1,28 @@<br>
+/*<br>
+ * (C) Copyright 2011, Stefan Kristiansson &lt;<a href=3D"mailto:stefan.kr=
istiansson@saunalahti.fi">stefan.kristiansson@saunalahti.fi</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#ifndef __ASM_OPENRISC_BITOPS_H<br>
+#define __ASM_OPENRISC_BITOPS_H<br>
+<br>
+#define PLATFORM_FLS<br>
+#include &lt;asm/bitops/fls.h&gt;<br>
+#define PLATFORM_FFS<br>
+#include &lt;asm/bitops/ffs.h&gt;<br>
+<br>
+#endif /* __ASM_GENERIC_BITOPS_H */<br>
diff --git a/arch/openrisc/include/asm/bitops/ffs.h b/arch/openrisc/include=
/asm/bitops/ffs.h<br>
new file mode 100644<br>
index 0000000..1de5295<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/bitops/ffs.h<br>
@@ -0,0 +1,26 @@<br>
+/*<br>
+ * OpenRISC Linux<br>
+ *<br>
+ * Copyright (C) 2010-2011 Jonas Bonn &lt;<a href=3D"mailto:jonas@southpol=
e.se">jonas@southpole.se</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or modify<br=
>
+ * it under the terms of the GNU General Public License as published by<br=
>
+ * the Free Software Foundation; either version 2 of the License, or<br>
+ * (at your option) any later version.<br>
+ */<br>
+<br>
+#ifndef __ASM_OPENRISC_FFS_H<br>
+#define __ASM_OPENRISC_FFS_H<br>
+<br>
+static inline int ffs(int x)<br>
+{<br>
+ =A0 =A0 =A0 int ret;<br>
+<br>
+ =A0 =A0 =A0 __asm__ (&quot;l.ff1 %0,%1&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0: &quot;=3Dr&quot; (ret)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0: &quot;r&quot; (x));<br>
+<br>
+ =A0 =A0 =A0 return ret;<br>
+}<br>
+<br>
+#endif /* __ASM_OPENRISC_FFS_H */<br>
diff --git a/arch/openrisc/include/asm/bitops/fls.h b/arch/openrisc/include=
/asm/bitops/fls.h<br>
new file mode 100644<br>
index 0000000..8c77c13<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/bitops/fls.h<br>
@@ -0,0 +1,26 @@<br>
+/*<br>
+ * OpenRISC Linux<br>
+ *<br>
+ * Copyright (C) 2010-2011 Jonas Bonn &lt;<a href=3D"mailto:jonas@southpol=
e.se">jonas@southpole.se</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or modify<br=
>
+ * it under the terms of the GNU General Public License as published by<br=
>
+ * the Free Software Foundation; either version 2 of the License, or<br>
+ * (at your option) any later version.<br>
+ */<br>
+<br>
+#ifndef __ASM_OPENRISC_FLS_H<br>
+#define __ASM_OPENRISC_FLS_H<br>
+<br>
+static inline int fls(int x)<br>
+{<br>
+ =A0 =A0 =A0 int ret;<br>
+<br>
+ =A0 =A0 =A0 __asm__ (&quot;l.fl1 %0,%1&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0: &quot;=3Dr&quot; (ret)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0: &quot;r&quot; (x));<br>
+<br>
+ =A0 =A0 =A0 return ret;<br>
+}<br>
+<br>
+#endif /* __ASM_OPENRISC_FLS_H */<br>
diff --git a/arch/openrisc/include/asm/byteorder.h b/arch/openrisc/include/=
asm/byteorder.h<br>
new file mode 100644<br>
index 0000000..60d14f7<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/byteorder.h<br>
@@ -0,0 +1 @@<br>
+#include &lt;linux/byteorder/big_endian.h&gt;<br>
diff --git a/arch/openrisc/include/asm/cache.h b/arch/openrisc/include/asm/=
cache.h<br>
new file mode 100644<br>
index 0000000..05cf998<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/cache.h<br>
@@ -0,0 +1,47 @@<br>
+/*<br>
+ * (C) Copyright 2011, Stefan Kristiansson &lt;<a href=3D"mailto:stefan.kr=
istiansson@saunalahti.fi">stefan.kristiansson@saunalahti.fi</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#ifndef __ASM_OPENRISC_CACHE_H_<br>
+#define __ASM_OPENRISC_CACHE_H_<br>
+<br>
+void flush_dcache_range(unsigned long addr, unsigned long stop);<br>
+void invalidate_dcache_range(unsigned long addr, unsigned long stop);<br>
+void flush_cache(unsigned long addr, unsigned long size);<br>
+int icache_status(void);<br>
+int checkicache(void);<br>
+int dcache_status(void);<br>
+int checkdcache(void);<br>
+void dcache_enable(void);<br>
+void dcache_disable(void);<br>
+void icache_enable(void);<br>
+void icache_disable(void);<br>
+<br>
+/*<br>
+ * Valid L1 data cache line sizes for the OpenRISC architecture are<br>
+ * 16 and 32 bytes.<br>
+ * If the board configuration has not specified one we default to the<br>
+ * largest of these values for alignment of DMA buffers.<br>
+ */<br>
+#ifdef CONFIG_SYS_CACHELINE_SIZE<br>
+#define ARCH_DMA_MINALIGN =A0 =A0 =A0 CONFIG_SYS_CACHELINE_SIZE<br>
+#else<br>
+#define ARCH_DMA_MINALIGN =A0 =A0 =A0 32<br>
+#endif<br>
+<br>
+#endif /* __ASM_OPENRISC_CACHE_H_ */<br>
diff --git a/arch/openrisc/include/asm/common.h b/arch/openrisc/include/asm=
/common.h<br>
new file mode 100644<br>
index 0000000..027dca2<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/common.h<br>
@@ -0,0 +1,4 @@<br>
+#ifndef _ASM_COMMON_H<br>
+#define __ASM_COMMON_H<br>
+<br>
+#endif /* _ASM_COMMON_H */<br>
diff --git a/arch/openrisc/include/asm/elf.h b/arch/openrisc/include/asm/el=
f.h<br>
new file mode 100644<br>
index 0000000..6a134a5<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/elf.h<br>
@@ -0,0 +1,107 @@<br>
+/*<br>
+ * OpenRISC Linux<br>
+ *<br>
+ * Linux architectural port borrowing liberally from similar works of<br>
+ * others. =A0All original copyrights apply as per the original source<br>
+ * declaration.<br>
+ *<br>
+ * OpenRISC implementation:<br>
+ * Copyright (C) 2003 Matjaz Breskvar &lt;<a href=3D"mailto:phoenix@bsemi.=
com">phoenix@bsemi.com</a>&gt;<br>
+ * Copyright (C) 2010-2011 Jonas Bonn &lt;<a href=3D"mailto:jonas@southpol=
e.se">jonas@southpole.se</a>&gt;<br>
+ * et al.<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or modify<br=
>
+ * it under the terms of the GNU General Public License as published by<br=
>
+ * the Free Software Foundation; either version 2 of the License, or<br>
+ * (at your option) any later version.<br>
+ */<br>
+<br>
+#ifndef __ASM_OPENRISC_ELF_H<br>
+#define __ASM_OPENRISC_ELF_H<br>
+<br>
+/*<br>
+ * ELF register definitions..<br>
+ */<br>
+#include &lt;linux/types.h&gt;<br>
+#include &lt;asm/ptrace.h&gt;<br>
+<br>
+/* The OR1K relocation types... not all relevant for module loader */<br>
+#define R_OR32_NONE =A0 =A00<br>
+#define R_OR32_32 =A0 =A0 =A01<br>
+#define R_OR32_16 =A0 =A0 =A02<br>
+#define R_OR32_8 =A0 =A0 =A0 3<br>
+#define R_OR32_CONST =A0 4<br>
+#define R_OR32_CONSTH =A05<br>
+#define R_OR32_JUMPTARG =A0 =A0 =A0 =A06<br>
+#define R_OR32_VTINHERIT 7<br>
+#define R_OR32_VTENTRY 8<br>
+<br>
+typedef unsigned long elf_greg_t;<br>
+<br>
+/*<br>
+ * Note that NGREG is defined to ELF_NGREG in include/linux/elfcore.h, and=
 is<br>
+ * thus exposed to user-space.<br>
+ */<br>
+#define ELF_NGREG (sizeof(struct user_regs_struct) / sizeof(elf_greg_t))<b=
r>
+typedef elf_greg_t elf_gregset_t[ELF_NGREG];<br>
+<br>
+/* A placeholder; OR32 does not have fp support yes, so no fp regs for now=
. =A0*/<br>
+typedef unsigned long elf_fpregset_t;<br>
+<br>
+/* This should be moved to include/linux/elf.h */<br>
+#define EM_OR32 =A0 =A0 =A0 =A0 0x8472<br>
+#define EM_OPENRISC =A0 =A0 92 =A0 =A0 /* OpenRISC 32-bit embedded process=
or */<br>
+<br>
+/*<br>
+ * These are used to set parameters in the core dumps.<br>
+ */<br>
+#define ELF_ARCH =A0 =A0 =A0 EM_OR32<br>
+#define ELF_CLASS =A0 =A0 =A0ELFCLASS32<br>
+#define ELF_DATA =A0 =A0 =A0 ELFDATA2MSB<br>
+<br>
+#ifdef __KERNEL__<br>
+<br>
+/*<br>
+ * This is used to ensure we don&#39;t load something for the wrong archit=
ecture.<br>
+ */<br>
+<br>
+#define elf_check_arch(x) \<br>
+ =A0 =A0 =A0 (((x)-&gt;e_machine =3D=3D EM_OR32) || ((x)-&gt;e_machine =3D=
=3D EM_OPENRISC))<br>
+<br>
+/* This is the location that an ET_DYN program is loaded if exec&#39;ed. =
=A0Typical<br>
+ =A0 use of this is to invoke &quot;./ld.so someprog&quot; to test out a n=
ew version of<br>
+ =A0 the loader. =A0We need to make sure that it is out of the way of the =
program<br>
+ =A0 that it will &quot;exec&quot;, and that there is sufficient room for =
the brk. =A0*/<br>
+<br>
+#define ELF_ET_DYN_BASE =A0 =A0 =A0 =A0 (0x08000000)<br>
+<br>
+/*<br>
+ * Enable dump using regset.<br>
+ * This covers all of general/DSP/FPU regs.<br>
+ */<br>
+#define CORE_DUMP_USE_REGSET<br>
+<br>
+#define ELF_EXEC_PAGESIZE =A0 =A0 =A08192<br>
+<br>
+extern void dump_elf_thread(elf_greg_t *dest, struct pt_regs *pt);<br>
+#define ELF_CORE_COPY_REGS(dest, regs) dump_elf_thread(dest, regs);<br>
+<br>
+/* This yields a mask that user programs can use to figure out what<br>
+ =A0 instruction set this cpu supports. =A0This could be done in userspace=
,<br>
+ =A0 but it&#39;s not easy, and we&#39;ve already done it here. =A0*/<br>
+<br>
+#define ELF_HWCAP =A0 =A0 =A0(0)<br>
+<br>
+/* This yields a string that ld.so will use to load implementation<br>
+ =A0 specific libraries for optimization. =A0This is more specific in<br>
+ =A0 intent than poking at uname or /proc/cpuinfo.<br>
+<br>
+ =A0 For the moment, we have only optimizations for the Intel generations,=
<br>
+ =A0 but that could change... */<br>
+<br>
+#define ELF_PLATFORM =A0 (NULL)<br>
+<br>
+#define SET_PERSONALITY(ex) set_personality(PER_LINUX)<br>
+<br>
+#endif /* __KERNEL__ */<br>
+#endif<br>
diff --git a/arch/openrisc/include/asm/io.h b/arch/openrisc/include/asm/io.=
h<br>
new file mode 100644<br>
index 0000000..19b260a<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/io.h<br>
@@ -0,0 +1,123 @@<br>
+/*<br>
+ * (C) Copyright 2011, Julius Baxter &lt;<a href=3D"mailto:julius@opencore=
s.org">julius@opencores.org</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#ifndef __ASM_OPENRISC_IO_H<br>
+#define __ASM_OPENRISC_IO_H<br>
+<br>
+#include &lt;asm/byteorder.h&gt;<br>
+<br>
+/*<br>
+ * Given a physical address and a length, return a virtual address<br>
+ * that can be used to access the memory range with the caching<br>
+ * properties specified by &quot;flags&quot;.<br>
+ */<br>
+#define MAP_NOCACHE =A0 =A0(0)<br>
+#define MAP_WRCOMBINE =A0(0)<br>
+#define MAP_WRBACK =A0 =A0 (0)<br>
+#define MAP_WRTHROUGH =A0(0)<br>
+<br>
+static inline void *<br>
+map_physmem(phys_addr_t paddr, unsigned long len, unsigned long flags)<br>
+{<br>
+ =A0 =A0 =A0 return (void *)paddr;<br>
+}<br>
+<br>
+/*<br>
+ * Take down a mapping set up by map_physmem().<br>
+ */<br>
+static inline void unmap_physmem(void *vaddr, unsigned long flags)<br>
+{<br>
+<br>
+}<br>
+<br>
+/*<br>
+ * Change virtual addresses to physical addresses<br>
+ */<br>
+static inline phys_addr_t virt_to_phys(void *vaddr)<br>
+{<br>
+ =A0 =A0 =A0 return (phys_addr_t)(vaddr);<br>
+}<br>
+<br>
+<br>
+/*<br>
+ * readX/writeX() are used to access memory mapped devices. On some<br>
+ * architectures the memory mapped IO stuff needs to be accessed<br>
+ * differently. On the openrisc architecture, we just read/write the<br>
+ * memory location directly.<br>
+ */<br>
+#define readb(addr) (*(volatile unsigned char *) (addr))<br>
+#define readw(addr) (*(volatile unsigned short *) (addr))<br>
+#define readl(addr) (*(volatile unsigned int *) (addr))<br>
+#define __raw_readb readb<br>
+#define __raw_readw readw<br>
+#define __raw_readl readl<br>
+<br>
+#define writeb(b, addr) ((*(volatile unsigned char *) (addr)) =3D (b))<br>
+#define writew(b, addr) ((*(volatile unsigned short *) (addr)) =3D (b))<br=
>
+#define writel(b, addr) ((*(volatile unsigned int *) (addr)) =3D (b))<br>
+#define __raw_writeb writeb<br>
+#define __raw_writew writew<br>
+#define __raw_writel writel<br>
+<br>
+#define memset_io(a, b, c) =A0 =A0 memset((void *)(a), (b), (c))<br>
+#define memcpy_fromio(a, b, c) memcpy((a), (void *)(b), (c))<br>
+#define memcpy_toio(a, b, c) =A0 memcpy((void *)(a), (b), (c))<br>
+<br>
+#define out_be32(a, v) __raw_writel((v), (void __iomem __force *)(a))<br>
+#define out_be16(a, v) __raw_writew((v), (a))<br>
+<br>
+#define in_be32(a) __raw_readl((const void __iomem __force *)(a))<br>
+#define in_be16(a) __raw_readw(a)<br>
+<br>
+#define writel_be(v, a) out_be32((__force unsigned *)a, v)<br>
+#define readl_be(a) =A0 =A0 in_be32((__force unsigned *)a)<br>
+<br>
+/*<br>
+ * Again, OpenRISC does not require mem IO specific function.<br>
+ */<br>
+<br>
+<br>
+#define IO_BASE =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x0<br>
+#define IO_SPACE_LIMIT =A0 =A0 =A0 =A0 0xffffffff<br>
+<br>
+#define inb(port) =A0 =A0 =A0 =A0 =A0 =A0 =A0readb((port + IO_BASE))<br>
+#define outb(value, port) =A0 =A0 =A0writeb((value), (port + IO_BASE))<br>
+#define inb_p(port) =A0 =A0 =A0 =A0 =A0 =A0inb((port))<br>
+#define outb_p(value, port) =A0 =A0outb((value), (port))<br>
+<br>
+/*<br>
+ * Convert a physical pointer to a virtual kernel pointer for /dev/mem<br>
+ * access<br>
+ */<br>
+#define xlate_dev_mem_ptr(p) =A0 __va(p)<br>
+<br>
+/*<br>
+ * Convert a virtual cached pointer to an uncached pointer<br>
+ */<br>
+#define xlate_dev_kmem_ptr(p) =A0p<br>
+<br>
+#define ioread8(addr) =A0 =A0 =A0 =A0 =A0readb(addr)<br>
+#define ioread16(addr) =A0 =A0 =A0 =A0 readw(addr)<br>
+#define ioread32(addr) =A0 =A0 =A0 =A0 readl(addr)<br>
+<br>
+#define iowrite8(v, addr) =A0 =A0 =A0writeb((v), (addr))<br>
+#define iowrite16(v, addr) =A0 =A0 writew((v), (addr))<br>
+#define iowrite32(v, addr) =A0 =A0 writel((v), (addr))<br>
+<br>
+#endif<br>
diff --git a/arch/openrisc/include/asm/openrisc_exc.h b/arch/openrisc/inclu=
de/asm/openrisc_exc.h<br>
new file mode 100644<br>
index 0000000..33f6453<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/openrisc_exc.h<br>
@@ -0,0 +1,41 @@<br>
+/*<br>
+ * (C) Copyright 2011, Stefan Kristiansson &lt;<a href=3D"mailto:stefan.kr=
istiansson@saunalahti.fi">stefan.kristiansson@saunalahti.fi</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#ifndef _OPENRISC_EXC_H_<br>
+#define _OPENRISC_EXC_H_<br>
+<br>
+#define EXC_RESET =A0 =A0 =A0 =A0 =A0 =A0 =A00x01<br>
+#define EXC_BUS_ERROR =A0 =A0 =A0 =A0 =A00x02<br>
+#define EXC_DATA_PAGE_FAULT =A0 =A00x03<br>
+#define EXC_INSTR_PAGE_FAULT =A0 0x04<br>
+#define EXC_TIMER =A0 =A0 =A0 =A0 =A0 =A0 =A00x05<br>
+#define EXC_ALIGNMENT =A0 =A0 =A0 =A0 =A00x06<br>
+#define EXC_ILLEGAL_INSTR =A0 =A0 =A00x07<br>
+#define EXC_EXT_IRQ =A0 =A0 =A0 =A0 =A0 =A00x08<br>
+#define EXC_DTLB_MISS =A0 =A0 =A0 =A0 =A00x09<br>
+#define EXC_ITLB_MISS =A0 =A0 =A0 =A0 =A00x0a<br>
+#define EXC_RANGE =A0 =A0 =A0 =A0 =A0 =A0 =A00x0b<br>
+#define EXC_SYSCALL =A0 =A0 =A0 =A0 =A0 =A00x0c<br>
+#define EXC_FLOAT_POINT =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x0d<br>
+#define EXC_TRAP =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0e<br>
+<br>
+void exception_install_handler(int exception, void (*handler)(void));<br>
+void exception_free_handler(int exception);<br>
+<br>
+#endif<br>
diff --git a/arch/openrisc/include/asm/posix_types.h b/arch/openrisc/includ=
e/asm/posix_types.h<br>
new file mode 100644<br>
index 0000000..7f4c942<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/posix_types.h<br>
@@ -0,0 +1,71 @@<br>
+/*<br>
+ * Based on microblaze implementation:<br>
+ * =A0Copyright (C) 2003 =A0 =A0 =A0 John Williams &lt;<a href=3D"mailto:j=
williams@itee.uq.edu.au">jwilliams@itee.uq.edu.au</a>&gt;<br>
+ * =A0Copyright (C) 2001,2002 =A0NEC Corporation<br>
+ * =A0Copyright (C) 2001,2002 =A0Miles Bader &lt;<a href=3D"mailto:miles@g=
nu.org">miles@gnu.org</a>&gt;<br>
+ *<br>
+ * This file is subject to the terms and conditions of the GNU General<br>
+ * Public License. =A0See the file COPYING in the main directory of this<b=
r>
+ * archive for more details.<br>
+ *<br>
+ * Written by Miles Bader &lt;<a href=3D"mailto:miles@gnu.org">miles@gnu.o=
rg</a>&gt;<br>
+ * Microblaze port by John Williams<br>
+ */<br>
+<br>
+#ifndef __ASM_OPENRISC_POSIX_TYPES_H<br>
+#define __ASM_OPENRISC_POSIX_TYPES_H<br>
+<br>
+typedef unsigned long =A0__kernel_ino_t;<br>
+typedef unsigned long long __kernel_ino64_t;<br>
+typedef unsigned int =A0 __kernel_mode_t;<br>
+typedef unsigned int =A0 __kernel_nlink_t;<br>
+typedef long =A0 =A0 =A0 =A0 =A0 __kernel_off_t;<br>
+typedef long long =A0 =A0 =A0__kernel_loff_t;<br>
+typedef int =A0 =A0 =A0 =A0 =A0 =A0__kernel_pid_t;<br>
+typedef unsigned short __kernel_ipc_pid_t;<br>
+typedef unsigned int =A0 __kernel_uid_t;<br>
+typedef unsigned int =A0 __kernel_gid_t;<br>
+typedef unsigned int =A0 __kernel_size_t;<br>
+typedef int =A0 =A0 =A0 =A0 =A0 =A0__kernel_ssize_t;<br>
+typedef int =A0 =A0 =A0 =A0 =A0 =A0__kernel_ptrdiff_t;<br>
+typedef long =A0 =A0 =A0 =A0 =A0 __kernel_time_t;<br>
+typedef long =A0 =A0 =A0 =A0 =A0 __kernel_suseconds_t;<br>
+typedef long =A0 =A0 =A0 =A0 =A0 __kernel_clock_t;<br>
+typedef int =A0 =A0 =A0 =A0 =A0 =A0__kernel_daddr_t;<br>
+typedef char =A0 =A0 =A0 =A0 =A0 *__kernel_caddr_t;<br>
+typedef unsigned short __kernel_uid16_t;<br>
+typedef unsigned short __kernel_gid16_t;<br>
+typedef unsigned int =A0 __kernel_uid32_t;<br>
+typedef unsigned int =A0 __kernel_gid32_t;<br>
+<br>
+typedef unsigned short __kernel_old_uid_t;<br>
+typedef unsigned short __kernel_old_gid_t;<br>
+<br>
+<br>
+typedef struct {<br>
+#if defined(__KERNEL__) || defined(__USE_ALL)<br>
+ =A0 =A0 =A0 int =A0 =A0 val[2];<br>
+#else /* !defined(__KERNEL__) &amp;&amp; !defined(__USE_ALL) */<br>
+ =A0 =A0 =A0 int =A0 =A0 __val[2];<br>
+#endif /* !defined(__KERNEL__) &amp;&amp; !defined(__USE_ALL) */<br>
+} __kernel_fsid_t;<br>
+<br>
+<br>
+#if defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ &lt; 2)<br>
+<br>
+#undef __FD_SET<br>
+#define __FD_SET(fd, fd_set) \<br>
+ =A0 =A0 =A0 __set_bit(fd, (void *)&amp;((__kernel_fd_set *)fd_set)-&gt;fd=
s_bits)<br>
+#undef __FD_CLR<br>
+#define __FD_CLR(fd, fd_set) \<br>
+ =A0 =A0 =A0 __clear_bit(fd, (void *)&amp;((__kernel_fd_set *)fd_set)-&gt;=
fds_bits)<br>
+#undef __FD_ISSET<br>
+#define __FD_ISSET(fd, fd_set) \<br>
+ =A0 =A0 =A0 __test_bit(fd, (void *)&amp;((__kernel_fd_set *)fd_set)-&gt;f=
ds_bits)<br>
+#undef __FD_ZERO<br>
+#define __FD_ZERO(fd_set) \<br>
+ =A0 =A0 =A0 memset(fd_set, 0, sizeof(*(fd_set *)fd_set))<br>
+<br>
+#endif /* defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ &lt; 2)=
 */<br>
+<br>
+#endif /* __ASM_OPENRISC_POSIX_TYPES_H */<br>
diff --git a/arch/openrisc/include/asm/ptrace.h b/arch/openrisc/include/asm=
/ptrace.h<br>
new file mode 100644<br>
index 0000000..ffdea52<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/ptrace.h<br>
@@ -0,0 +1,131 @@<br>
+/*<br>
+ * OpenRISC Linux<br>
+ *<br>
+ * Linux architectural port borrowing liberally from similar works of<br>
+ * others. =A0All original copyrights apply as per the original source<br>
+ * declaration.<br>
+ *<br>
+ * OpenRISC implementation:<br>
+ * Copyright (C) 2003 Matjaz Breskvar &lt;<a href=3D"mailto:phoenix@bsemi.=
com">phoenix@bsemi.com</a>&gt;<br>
+ * Copyright (C) 2010-2011 Jonas Bonn &lt;<a href=3D"mailto:jonas@southpol=
e.se">jonas@southpole.se</a>&gt;<br>
+ * et al.<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or modify<br=
>
+ * it under the terms of the GNU General Public License as published by<br=
>
+ * the Free Software Foundation; either version 2 of the License, or<br>
+ * (at your option) any later version.<br>
+ */<br>
+<br>
+#ifndef __ASM_OPENRISC_PTRACE_H<br>
+#define __ASM_OPENRISC_PTRACE_H<br>
+<br>
+#include &lt;asm/spr-defs.h&gt;<br>
+<br>
+#ifndef __ASSEMBLY__<br>
+/*<br>
+ * This is the layout of the regset returned by the GETREGSET ptrace call<=
br>
+ */<br>
+struct user_regs_struct {<br>
+ =A0 =A0 =A0 /* GPR R0-R31... */<br>
+ =A0 =A0 =A0 unsigned long gpr[32];<br>
+ =A0 =A0 =A0 unsigned long pc;<br>
+ =A0 =A0 =A0 unsigned long sr;<br>
+ =A0 =A0 =A0 unsigned long pad1;<br>
+ =A0 =A0 =A0 unsigned long pad2;<br>
+};<br>
+#endif<br>
+<br>
+#ifdef __KERNEL__<br>
+<br>
+/*<br>
+ * Make kernel PTrace/register structures opaque to userspace... userspace=
 can<br>
+ * access thread state via the regset mechanism. =A0This allows us a bit o=
f<br>
+ * flexibility in how we order the registers on the stack, permitting some=
<br>
+ * optimizations like packing call-clobbered registers together so that<br=
>
+ * they share a cacheline (not done yet, though... future optimization).<b=
r>
+ */<br>
+<br>
+#ifndef __ASSEMBLY__<br>
+/*<br>
+ * This struct describes how the registers are laid out on the kernel stac=
k<br>
+ * during a syscall or other kernel entry.<br>
+ *<br>
+ * This structure should always be cacheline aligned on the stack.<br>
+ * FIXME: I don&#39;t think that&#39;s the case right now. =A0The alignmen=
t is<br>
+ * taken care of elsewhere... head.S, process.c, etc.<br>
+ */<br>
+<br>
+struct pt_regs {<br>
+ =A0 =A0 =A0 union {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 struct {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* Named registers */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long =A0sr; =A0 =A0 =A0 /* St=
ored in place of r0 */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long =A0sp; =A0 =A0 =A0 /* r1=
 */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 };<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 struct {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* Old style */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long offset[2];<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long gprs[30];<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 };<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 struct {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* New style */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long gpr[32];<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 };<br>
+ =A0 =A0 =A0 };<br>
+ =A0 =A0 =A0 long =A0pc;<br>
+ =A0 =A0 =A0 long =A0orig_gpr11; =A0 =A0 =A0 /* For restarting system call=
s */<br>
+ =A0 =A0 =A0 long =A0syscallno; =A0 =A0 =A0 =A0/* Syscall number (used by =
strace) */<br>
+ =A0 =A0 =A0 long dummy; =A0 =A0 =A0 =A0 =A0 =A0 /* Cheap alignment fix */=
<br>
+};<br>
+#endif /* __ASSEMBLY__ */<br>
+<br>
+/* TODO: Rename this to REDZONE because that&#39;s what it is */<br>
+#define STACK_FRAME_OVERHEAD =A0128 =A0/* size of minimum stack frame */<b=
r>
+<br>
+#define instruction_pointer(regs) =A0 =A0 =A0((regs)-&gt;pc)<br>
+#define user_mode(regs) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(((=
regs)-&gt;sr &amp; SPR_SR_SM) =3D=3D 0)<br>
+#define user_stack_pointer(regs) =A0 =A0 =A0 ((unsigned long)(regs)-&gt;sp=
)<br>
+#define profile_pc(regs) =A0 =A0 =A0 =A0 =A0 =A0 =A0 instruction_pointer(r=
egs)<br>
+<br>
+/*<br>
+ * Offsets used by &#39;ptrace&#39; system call interface.<br>
+ */<br>
+#define PT_SR =A0 =A0 =A0 =A0 0<br>
+#define PT_SP =A0 =A0 =A0 =A0 4<br>
+#define PT_GPR2 =A0 =A0 =A0 8<br>
+#define PT_GPR3 =A0 =A0 =A0 12<br>
+#define PT_GPR4 =A0 =A0 =A0 16<br>
+#define PT_GPR5 =A0 =A0 =A0 20<br>
+#define PT_GPR6 =A0 =A0 =A0 24<br>
+#define PT_GPR7 =A0 =A0 =A0 28<br>
+#define PT_GPR8 =A0 =A0 =A0 32<br>
+#define PT_GPR9 =A0 =A0 =A0 36<br>
+#define PT_GPR10 =A0 =A0 =A040<br>
+#define PT_GPR11 =A0 =A0 =A044<br>
+#define PT_GPR12 =A0 =A0 =A048<br>
+#define PT_GPR13 =A0 =A0 =A052<br>
+#define PT_GPR14 =A0 =A0 =A056<br>
+#define PT_GPR15 =A0 =A0 =A060<br>
+#define PT_GPR16 =A0 =A0 =A064<br>
+#define PT_GPR17 =A0 =A0 =A068<br>
+#define PT_GPR18 =A0 =A0 =A072<br>
+#define PT_GPR19 =A0 =A0 =A076<br>
+#define PT_GPR20 =A0 =A0 =A080<br>
+#define PT_GPR21 =A0 =A0 =A084<br>
+#define PT_GPR22 =A0 =A0 =A088<br>
+#define PT_GPR23 =A0 =A0 =A092<br>
+#define PT_GPR24 =A0 =A0 =A096<br>
+#define PT_GPR25 =A0 =A0 =A0100<br>
+#define PT_GPR26 =A0 =A0 =A0104<br>
+#define PT_GPR27 =A0 =A0 =A0108<br>
+#define PT_GPR28 =A0 =A0 =A0112<br>
+#define PT_GPR29 =A0 =A0 =A0116<br>
+#define PT_GPR30 =A0 =A0 =A0120<br>
+#define PT_GPR31 =A0 =A0 =A0124<br>
+#define PT_PC =A0 =A0 =A0 =A0128<br>
+#define PT_ORIG_GPR11 132<br>
+#define PT_SYSCALLNO =A0136<br>
+<br>
+#endif /* __KERNEL__ */<br>
+<br>
+#endif /* __ASM_OPENRISC_PTRACE_H */<br>
diff --git a/arch/openrisc/include/asm/sections.h b/arch/openrisc/include/a=
sm/sections.h<br>
new file mode 100644<br>
index 0000000..2b8c516<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/sections.h<br>
@@ -0,0 +1 @@<br>
+#include &lt;asm-generic/sections.h&gt;<br>
diff --git a/arch/openrisc/include/asm/spr-defs.h b/arch/openrisc/include/a=
sm/spr-defs.h<br>
new file mode 100644<br>
index 0000000..cb0cdfa<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/spr-defs.h<br>
@@ -0,0 +1,567 @@<br>
+/*<br>
+ * SPR Definitions<br>
+ *<br>
+ * Copyright (C) 2000 Damjan Lampret<br>
+ * Copyright (C) 2003 Matjaz Breskvar &lt;<a href=3D"mailto:phoenix@bsemi.=
com">phoenix@bsemi.com</a>&gt;<br>
+ * Copyright (C) 2008, 2010 Embecosm Limited<br>
+ * Copyright (C) 2010-2011 Jonas Bonn &lt;<a href=3D"mailto:jonas@southpol=
e.se">jonas@southpole.se</a>&gt;<br>
+ * et al.<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or modify<br=
>
+ * it under the terms of the GNU General Public License as published by<br=
>
+ * the Free Software Foundation; either version 2 of the License, or<br>
+ * (at your option) any later version.<br>
+ *<br>
+ * This file is part of OpenRISC 1000 Architectural Simulator.<br>
+ */<br>
+<br>
+#ifndef SPR_DEFS__H<br>
+#define SPR_DEFS__H<br>
+<br>
+/* Definition of special-purpose registers (SPRs) */<br>
+<br>
+#define MAX_GRPS (32)<br>
+#define MAX_SPRS_PER_GRP_BITS (11)<br>
+#define MAX_SPRS_PER_GRP (1 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define MAX_SPRS (0x10000)<br>
+<br>
+/* Base addresses for the groups */<br>
+#define SPRGROUP_SYS =A0 (0 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_DMMU =A0(1 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_IMMU =A0(2 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_DC =A0 =A0(3 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_IC =A0 =A0(4 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_MAC =A0 (5 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_D =A0 =A0 (6 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_PC =A0 =A0(7 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_PM =A0 =A0(8 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_PIC =A0 (9 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_TT =A0 =A0(10 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+#define SPRGROUP_FP =A0 =A0(11 &lt;&lt; MAX_SPRS_PER_GRP_BITS)<br>
+<br>
+/* System control and status group */<br>
+#define SPR_VR =A0 =A0 =A0 =A0 (SPRGROUP_SYS + 0)<br>
+#define SPR_UPR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(SPRGROUP_SYS + 1)<br>
+#define SPR_CPUCFGR =A0 =A0(SPRGROUP_SYS + 2)<br>
+#define SPR_DMMUCFGR =A0 (SPRGROUP_SYS + 3)<br>
+#define SPR_IMMUCFGR =A0 (SPRGROUP_SYS + 4)<br>
+#define SPR_DCCFGR =A0 =A0 (SPRGROUP_SYS + 5)<br>
+#define SPR_ICCFGR =A0 =A0 (SPRGROUP_SYS + 6)<br>
+#define SPR_DCFGR =A0 =A0 =A0(SPRGROUP_SYS + 7)<br>
+#define SPR_PCCFGR =A0 =A0 (SPRGROUP_SYS + 8)<br>
+#define SPR_NPC =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(SPRGROUP_SYS + 16)<br>
+#define SPR_SR =A0 =A0 =A0 =A0 (SPRGROUP_SYS + 17)<br>
+#define SPR_PPC =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(SPRGROUP_SYS + 18)<br>
+#define SPR_FPCSR =A0 =A0 =A0(SPRGROUP_SYS + 20)<br>
+#define SPR_EPCR_BASE =A0(SPRGROUP_SYS + 32)<br>
+#define SPR_EPCR_LAST =A0(SPRGROUP_SYS + 47)<br>
+#define SPR_EEAR_BASE =A0(SPRGROUP_SYS + 48)<br>
+#define SPR_EEAR_LAST =A0(SPRGROUP_SYS + 63)<br>
+#define SPR_ESR_BASE =A0 (SPRGROUP_SYS + 64)<br>
+#define SPR_ESR_LAST =A0 (SPRGROUP_SYS + 79)<br>
+#define SPR_GPR_BASE =A0 (SPRGROUP_SYS + 1024)<br>
+<br>
+/* Data MMU group */<br>
+#define SPR_DMMUCR =A0 =A0 (SPRGROUP_DMMU + 0)<br>
+#define SPR_DTLBEIR =A0 =A0(SPRGROUP_DMMU + 2)<br>
+#define SPR_DTLBMR_BASE(WAY) =A0 (SPRGROUP_DMMU + 0x200 + (WAY) * 0x100)<b=
r>
+#define SPR_DTLBMR_LAST(WAY) =A0 (SPRGROUP_DMMU + 0x27f + (WAY) * 0x100)<b=
r>
+#define SPR_DTLBTR_BASE(WAY) =A0 (SPRGROUP_DMMU + 0x280 + (WAY) * 0x100)<b=
r>
+#define SPR_DTLBTR_LAST(WAY) =A0 (SPRGROUP_DMMU + 0x2ff + (WAY) * 0x100)<b=
r>
+<br>
+/* Instruction MMU group */<br>
+#define SPR_IMMUCR =A0 =A0 (SPRGROUP_IMMU + 0)<br>
+#define SPR_ITLBEIR =A0 =A0(SPRGROUP_IMMU + 2)<br>
+#define SPR_ITLBMR_BASE(WAY) =A0 (SPRGROUP_IMMU + 0x200 + (WAY) * 0x100)<b=
r>
+#define SPR_ITLBMR_LAST(WAY) =A0 (SPRGROUP_IMMU + 0x27f + (WAY) * 0x100)<b=
r>
+#define SPR_ITLBTR_BASE(WAY) =A0 (SPRGROUP_IMMU + 0x280 + (WAY) * 0x100)<b=
r>
+#define SPR_ITLBTR_LAST(WAY) =A0 (SPRGROUP_IMMU + 0x2ff + (WAY) * 0x100)<b=
r>
+<br>
+/* Data cache group */<br>
+#define SPR_DCCR =A0 =A0 =A0 (SPRGROUP_DC + 0)<br>
+#define SPR_DCBPR =A0 =A0 =A0(SPRGROUP_DC + 1)<br>
+#define SPR_DCBFR =A0 =A0 =A0(SPRGROUP_DC + 2)<br>
+#define SPR_DCBIR =A0 =A0 =A0(SPRGROUP_DC + 3)<br>
+#define SPR_DCBWR =A0 =A0 =A0(SPRGROUP_DC + 4)<br>
+#define SPR_DCBLR =A0 =A0 =A0(SPRGROUP_DC + 5)<br>
+#define SPR_DCR_BASE(WAY) =A0 =A0 =A0(SPRGROUP_DC + 0x200 + (WAY) * 0x200)=
<br>
+#define SPR_DCR_LAST(WAY) =A0 =A0 =A0(SPRGROUP_DC + 0x3ff + (WAY) * 0x200)=
<br>
+<br>
+/* Instruction cache group */<br>
+#define SPR_ICCR =A0 =A0 =A0 (SPRGROUP_IC + 0)<br>
+#define SPR_ICBPR =A0 =A0 =A0(SPRGROUP_IC + 1)<br>
+#define SPR_ICBIR =A0 =A0 =A0(SPRGROUP_IC + 2)<br>
+#define SPR_ICBLR =A0 =A0 =A0(SPRGROUP_IC + 3)<br>
+#define SPR_ICR_BASE(WAY) =A0 =A0 =A0(SPRGROUP_IC + 0x200 + (WAY) * 0x200)=
<br>
+#define SPR_ICR_LAST(WAY) =A0 =A0 =A0(SPRGROUP_IC + 0x3ff + (WAY) * 0x200)=
<br>
+<br>
+/* MAC group */<br>
+#define SPR_MACLO =A0 =A0 =A0(SPRGROUP_MAC + 1)<br>
+#define SPR_MACHI =A0 =A0 =A0(SPRGROUP_MAC + 2)<br>
+<br>
+/* Debug group */<br>
+#define SPR_DVR(N) =A0 =A0 (SPRGROUP_D + (N))<br>
+#define SPR_DCR(N) =A0 =A0 (SPRGROUP_D + 8 + (N))<br>
+#define SPR_DMR1 =A0 =A0 =A0 (SPRGROUP_D + 16)<br>
+#define SPR_DMR2 =A0 =A0 =A0 (SPRGROUP_D + 17)<br>
+#define SPR_DWCR0 =A0 =A0 =A0(SPRGROUP_D + 18)<br>
+#define SPR_DWCR1 =A0 =A0 =A0(SPRGROUP_D + 19)<br>
+#define SPR_DSR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(SPRGROUP_D + 20)<br>
+#define SPR_DRR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(SPRGROUP_D + 21)<br>
+<br>
+/* Performance counters group */<br>
+#define SPR_PCCR(N) =A0 =A0(SPRGROUP_PC + (N))<br>
+#define SPR_PCMR(N) =A0 =A0(SPRGROUP_PC + 8 + (N))<br>
+<br>
+/* Power management group */<br>
+#define SPR_PMR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(SPRGROUP_PM + 0)<br>
+<br>
+/* PIC group */<br>
+#define SPR_PICMR =A0 =A0 =A0(SPRGROUP_PIC + 0)<br>
+#define SPR_PICPR =A0 =A0 =A0(SPRGROUP_PIC + 1)<br>
+#define SPR_PICSR =A0 =A0 =A0(SPRGROUP_PIC + 2)<br>
+<br>
+/* Tick Timer group */<br>
+#define SPR_TTMR =A0 =A0 =A0 (SPRGROUP_TT + 0)<br>
+#define SPR_TTCR =A0 =A0 =A0 (SPRGROUP_TT + 1)<br>
+<br>
+/*<br>
+ * Bit definitions for the Version Register<br>
+ */<br>
+#define SPR_VR_VER =A0 =A0 0xff000000 /* Processor version */<br>
+#define SPR_VR_CFG =A0 =A0 0x00ff0000 /* Processor configuration */<br>
+#define SPR_VR_RES =A0 =A0 0x0000ffc0 /* Reserved */<br>
+#define SPR_VR_REV =A0 =A0 0x0000003f /* Processor revision */<br>
+<br>
+#define SPR_VR_VER_OFF 24<br>
+#define SPR_VR_CFG_OFF 16<br>
+#define SPR_VR_REV_OFF 0<br>
+<br>
+/*<br>
+ * Bit definitions for the Unit Present Register<br>
+ */<br>
+#define SPR_UPR_UP =A0 =A0 0x00000001 /* UPR present */<br>
+#define SPR_UPR_DCP =A0 =A00x00000002 /* Data cache present */<br>
+#define SPR_UPR_ICP =A0 =A00x00000004 /* Instruction cache present */<br>
+#define SPR_UPR_DMP =A0 =A00x00000008 /* Data MMU present */<br>
+#define SPR_UPR_IMP =A0 =A00x00000010 /* Instruction MMU present */<br>
+#define SPR_UPR_MP =A0 =A0 0x00000020 /* MAC present */<br>
+#define SPR_UPR_DUP =A0 =A00x00000040 /* Debug unit present */<br>
+#define SPR_UPR_PCUP =A0 0x00000080 /* Performance counters unit present *=
/<br>
+#define SPR_UPR_PMP =A0 =A00x00000100 /* Power management present */<br>
+#define SPR_UPR_PICP =A0 0x00000200 /* PIC present */<br>
+#define SPR_UPR_TTP =A0 =A00x00000400 /* Tick timer present */<br>
+#define SPR_UPR_RES =A0 =A00x00fe0000 /* Reserved */<br>
+#define SPR_UPR_CUP =A0 =A00xff000000 /* Context units present */<br>
+<br>
+/*<br>
+ * Bit definitions for the CPU configuration register<br>
+ */<br>
+#define SPR_CPUCFGR_NSGF =A0 =A0 =A0 0x0000000f /* Number of shadow GPR fi=
les */<br>
+#define SPR_CPUCFGR_CGF =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000010 /* Custo=
m GPR file */<br>
+#define SPR_CPUCFGR_OB32S =A0 =A0 =A00x00000020 /* ORBIS32 supported */<br=
>
+#define SPR_CPUCFGR_OB64S =A0 =A0 =A00x00000040 /* ORBIS64 supported */<br=
>
+#define SPR_CPUCFGR_OF32S =A0 =A0 =A00x00000080 /* ORFPX32 supported */<br=
>
+#define SPR_CPUCFGR_OF64S =A0 =A0 =A00x00000100 /* ORFPX64 supported */<br=
>
+#define SPR_CPUCFGR_OV64S =A0 =A0 =A00x00000200 /* ORVDX64 supported */<br=
>
+#define SPR_CPUCFGR_RES =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00xfffffc00 /* Reser=
ved */<br>
+<br>
+/*<br>
+ * Bit definitions for the Debug configuration register and other<br>
+ * constants.<br>
+ */<br>
+<br>
+#define SPR_DCFGR_NDP =A00x00000007 =A0/* Number of matchpoints mask */<br=
>
+#define SPR_DCFGR_NDP1 0x00000000 =A0/* One matchpoint supported */<br>
+#define SPR_DCFGR_NDP2 0x00000001 =A0/* Two matchpoints supported */<br>
+#define SPR_DCFGR_NDP3 0x00000002 =A0/* Three matchpoints supported */<br>
+#define SPR_DCFGR_NDP4 0x00000003 =A0/* Four matchpoints supported */<br>
+#define SPR_DCFGR_NDP5 0x00000004 =A0/* Five matchpoints supported */<br>
+#define SPR_DCFGR_NDP6 0x00000005 =A0/* Six matchpoints supported */<br>
+#define SPR_DCFGR_NDP7 0x00000006 =A0/* Seven matchpoints supported */<br>
+#define SPR_DCFGR_NDP8 0x00000007 =A0/* Eight matchpoints supported */<br>
+#define SPR_DCFGR_WPCI 0x00000008 =A0/* Watchpoint counters implemented */=
<br>
+<br>
+#define MATCHPOINTS_TO_NDP(n) =A0(1 =3D=3D n ? SPR_DCFGR_NDP1 : \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 2 =3D=3D n ? =
SPR_DCFGR_NDP2 : \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 3 =3D=3D n ? =
SPR_DCFGR_NDP3 : \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 4 =3D=3D n ? =
SPR_DCFGR_NDP4 : \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 5 =3D=3D n ? =
SPR_DCFGR_NDP5 : \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 6 =3D=3D n ? =
SPR_DCFGR_NDP6 : \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 7 =3D=3D n ? =
SPR_DCFGR_NDP7 : SPR_DCFGR_NDP8)<br>
+#define MAX_MATCHPOINTS =A0 =A0 =A0 =A08<br>
+#define MAX_WATCHPOINTS =A0 =A0 =A0 =A0(MAX_MATCHPOINTS + 2)<br>
+<br>
+/*<br>
+ * Bit definitions for the Supervision Register<br>
+ */<br>
+#define SPR_SR_SM =A0 =A0 =A00x00000001 /* Supervisor Mode */<br>
+#define SPR_SR_TEE =A0 =A0 0x00000002 /* Tick timer Exception Enable */<br=
>
+#define SPR_SR_IEE =A0 =A0 0x00000004 /* Interrupt Exception Enable */<br>
+#define SPR_SR_DCE =A0 =A0 0x00000008 /* Data Cache Enable */<br>
+#define SPR_SR_ICE =A0 =A0 0x00000010 /* Instruction Cache Enable */<br>
+#define SPR_SR_DME =A0 =A0 0x00000020 /* Data MMU Enable */<br>
+#define SPR_SR_IME =A0 =A0 0x00000040 /* Instruction MMU Enable */<br>
+#define SPR_SR_LEE =A0 =A0 0x00000080 /* Little Endian Enable */<br>
+#define SPR_SR_CE =A0 =A0 =A00x00000100 /* CID Enable */<br>
+#define SPR_SR_F =A0 =A0 =A0 0x00000200 /* Condition Flag */<br>
+#define SPR_SR_CY =A0 =A0 =A00x00000400 /* Carry flag */<br>
+#define SPR_SR_OV =A0 =A0 =A00x00000800 /* Overflow flag */<br>
+#define SPR_SR_OVE =A0 =A0 0x00001000 /* Overflow flag Exception */<br>
+#define SPR_SR_DSX =A0 =A0 0x00002000 /* Delay Slot Exception */<br>
+#define SPR_SR_EPH =A0 =A0 0x00004000 /* Exception Prefix High */<br>
+#define SPR_SR_FO =A0 =A0 =A00x00008000 /* Fixed one */<br>
+#define SPR_SR_SUMRA =A0 0x00010000 /* Supervisor SPR read access */<br>
+#define SPR_SR_RES =A0 =A0 0x0ffe0000 /* Reserved */<br>
+#define SPR_SR_CID =A0 =A0 0xf0000000 /* Context ID */<br>
+<br>
+/*<br>
+ * Bit definitions for the Data MMU Control Register<br>
+ */<br>
+#define SPR_DMMUCR_P2S =A0 =A0 =A0 =A0 0x0000003e /* Level 2 Page Size */<=
br>
+#define SPR_DMMUCR_P1S =A0 =A0 =A0 =A0 0x000007c0 /* Level 1 Page Size */<=
br>
+#define SPR_DMMUCR_VADDR_WIDTH 0x0000f800 /* Virtual ADDR Width */<br>
+#define SPR_DMMUCR_PADDR_WIDTH 0x000f0000 /* Physical ADDR Width */<br>
+<br>
+/*<br>
+ * Bit definitions for the Instruction MMU Control Register<br>
+ */<br>
+#define SPR_IMMUCR_P2S =A0 =A0 =A0 =A0 0x0000003e /* Level 2 Page Size */<=
br>
+#define SPR_IMMUCR_P1S =A0 =A0 =A0 =A0 0x000007c0 /* Level 1 Page Size */<=
br>
+#define SPR_IMMUCR_VADDR_WIDTH 0x0000f800 /* Virtual ADDR Width */<br>
+#define SPR_IMMUCR_PADDR_WIDTH 0x000f0000 /* Physical ADDR Width */<br>
+<br>
+/*<br>
+ * Bit definitions for the Data TLB Match Register<br>
+ */<br>
+#define SPR_DTLBMR_V =A0 0x00000001 /* Valid */<br>
+#define SPR_DTLBMR_PL1 0x00000002 /* Page Level 1 (if 0 then PL2) */<br>
+#define SPR_DTLBMR_CID 0x0000003c /* Context ID */<br>
+#define SPR_DTLBMR_LRU 0x000000c0 /* Least Recently Used */<br>
+#define SPR_DTLBMR_VPN 0xfffff000 /* Virtual Page Number */<br>
+<br>
+/*<br>
+ * Bit definitions for the Data TLB Translate Register<br>
+ */<br>
+#define SPR_DTLBTR_CC =A00x00000001 /* Cache Coherency */<br>
+#define SPR_DTLBTR_CI =A00x00000002 /* Cache Inhibit */<br>
+#define SPR_DTLBTR_WBC 0x00000004 /* Write-Back Cache */<br>
+#define SPR_DTLBTR_WOM 0x00000008 /* Weakly-Ordered Memory */<br>
+#define SPR_DTLBTR_A =A0 0x00000010 /* Accessed */<br>
+#define SPR_DTLBTR_D =A0 0x00000020 /* Dirty */<br>
+#define SPR_DTLBTR_URE 0x00000040 /* User Read Enable */<br>
+#define SPR_DTLBTR_UWE 0x00000080 /* User Write Enable */<br>
+#define SPR_DTLBTR_SRE 0x00000100 /* Supervisor Read Enable */<br>
+#define SPR_DTLBTR_SWE 0x00000200 /* Supervisor Write Enable */<br>
+#define SPR_DTLBTR_PPN 0xfffff000 /* Physical Page Number */<br>
+<br>
+/*<br>
+ * Bit definitions for the Instruction TLB Match Register<br>
+ */<br>
+#define SPR_ITLBMR_V =A0 0x00000001 /* Valid */<br>
+#define SPR_ITLBMR_PL1 0x00000002 /* Page Level 1 (if 0 then PL2) */<br>
+#define SPR_ITLBMR_CID 0x0000003c /* Context ID */<br>
+#define SPR_ITLBMR_LRU 0x000000c0 /* Least Recently Used */<br>
+#define SPR_ITLBMR_VPN 0xfffff000 /* Virtual Page Number */<br>
+<br>
+/*<br>
+ * Bit definitions for the Instruction TLB Translate Register<br>
+ */<br>
+#define SPR_ITLBTR_CC =A00x00000001 /* Cache Coherency */<br>
+#define SPR_ITLBTR_CI =A00x00000002 /* Cache Inhibit */<br>
+#define SPR_ITLBTR_WBC 0x00000004 /* Write-Back Cache */<br>
+#define SPR_ITLBTR_WOM 0x00000008 /* Weakly-Ordered Memory */<br>
+#define SPR_ITLBTR_A =A0 0x00000010 /* Accessed */<br>
+#define SPR_ITLBTR_D =A0 0x00000020 /* Dirty */<br>
+#define SPR_ITLBTR_SXE 0x00000040 /* User Read Enable */<br>
+#define SPR_ITLBTR_UXE 0x00000080 /* User Write Enable */<br>
+#define SPR_ITLBTR_PPN 0xfffff000 /* Physical Page Number */<br>
+<br>
+/*<br>
+ * Bit definitions for Data Cache Control register<br>
+ */<br>
+#define SPR_DCCR_EW =A0 =A00x000000ff /* Enable ways */<br>
+<br>
+/*<br>
+ * Bit definitions for Insn Cache Control register<br>
+ */<br>
+#define SPR_ICCR_EW =A0 =A00x000000ff /* Enable ways */<br>
+<br>
+/*<br>
+ * Bit definitions for Data Cache Configuration Register<br>
+ */<br>
+<br>
+#define SPR_DCCFGR_NCW =A0 =A0 =A0 =A0 0x00000007<br>
+#define SPR_DCCFGR_NCS =A0 =A0 =A0 =A0 0x00000078<br>
+#define SPR_DCCFGR_CBS =A0 =A0 =A0 =A0 0x00000080<br>
+#define SPR_DCCFGR_CWS =A0 =A0 =A0 =A0 0x00000100<br>
+#define SPR_DCCFGR_CCRI =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000200<br>
+#define SPR_DCCFGR_CBIRI =A0 =A0 =A0 0x00000400<br>
+#define SPR_DCCFGR_CBPRI =A0 =A0 =A0 0x00000800<br>
+#define SPR_DCCFGR_CBLRI =A0 =A0 =A0 0x00001000<br>
+#define SPR_DCCFGR_CBFRI =A0 =A0 =A0 0x00002000<br>
+#define SPR_DCCFGR_CBWBRI =A0 =A0 =A00x00004000<br>
+<br>
+#define SPR_DCCFGR_NCW_OFF =A0 =A0 0<br>
+#define SPR_DCCFGR_NCS_OFF =A0 =A0 3<br>
+#define SPR_DCCFGR_CBS_OFF =A0 =A0 7<br>
+<br>
+/*<br>
+ * Bit definitions for Instruction Cache Configuration Register<br>
+ */<br>
+#define SPR_ICCFGR_NCW =A0 =A0 =A0 =A0 0x00000007<br>
+#define SPR_ICCFGR_NCS =A0 =A0 =A0 =A0 0x00000078<br>
+#define SPR_ICCFGR_CBS =A0 =A0 =A0 =A0 0x00000080<br>
+#define SPR_ICCFGR_CCRI =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000200<br>
+#define SPR_ICCFGR_CBIRI =A0 =A0 =A0 0x00000400<br>
+#define SPR_ICCFGR_CBPRI =A0 =A0 =A0 0x00000800<br>
+#define SPR_ICCFGR_CBLRI =A0 =A0 =A0 0x00001000<br>
+<br>
+#define SPR_ICCFGR_NCW_OFF =A0 =A0 0<br>
+#define SPR_ICCFGR_NCS_OFF =A0 =A0 3<br>
+#define SPR_ICCFGR_CBS_OFF =A0 =A0 7<br>
+<br>
+/*<br>
+ * Bit definitions for Data MMU Configuration Register<br>
+ */<br>
+#define SPR_DMMUCFGR_NTW =A0 =A0 =A0 0x00000003<br>
+#define SPR_DMMUCFGR_NTS =A0 =A0 =A0 0x0000001C<br>
+#define SPR_DMMUCFGR_NAE =A0 =A0 =A0 0x000000E0<br>
+#define SPR_DMMUCFGR_CRI =A0 =A0 =A0 0x00000100<br>
+#define SPR_DMMUCFGR_PRI =A0 =A0 =A0 0x00000200<br>
+#define SPR_DMMUCFGR_TEIRI =A0 =A0 0x00000400<br>
+#define SPR_DMMUCFGR_HTR =A0 =A0 =A0 0x00000800<br>
+<br>
+#define SPR_DMMUCFGR_NTW_OFF =A0 0<br>
+#define SPR_DMMUCFGR_NTS_OFF =A0 2<br>
+<br>
+/*<br>
+ * Bit definitions for Instruction MMU Configuration Register<br>
+ */<br>
+#define SPR_IMMUCFGR_NTW =A0 =A0 =A0 0x00000003<br>
+#define SPR_IMMUCFGR_NTS =A0 =A0 =A0 0x0000001C<br>
+#define SPR_IMMUCFGR_NAE =A0 =A0 =A0 0x000000E0<br>
+#define SPR_IMMUCFGR_CRI =A0 =A0 =A0 0x00000100<br>
+#define SPR_IMMUCFGR_PRI =A0 =A0 =A0 0x00000200<br>
+#define SPR_IMMUCFGR_TEIRI =A0 =A0 0x00000400<br>
+#define SPR_IMMUCFGR_HTR =A0 =A0 =A0 0x00000800<br>
+<br>
+#define SPR_IMMUCFGR_NTW_OFF =A0 0<br>
+#define SPR_IMMUCFGR_NTS_OFF =A0 2<br>
+<br>
+/*<br>
+ * Bit definitions for Debug Control registers<br>
+ */<br>
+#define SPR_DCR_DP =A0 =A0 0x00000001 /* DVR/DCR present */<br>
+#define SPR_DCR_CC =A0 =A0 0x0000000e /* Compare condition */<br>
+#define SPR_DCR_SC =A0 =A0 0x00000010 /* Signed compare */<br>
+#define SPR_DCR_CT =A0 =A0 0x000000e0 /* Compare to */<br>
+<br>
+/* Bit results with SPR_DCR_CC mask */<br>
+#define SPR_DCR_CC_MASKED =A0 =A0 =A00x00000000<br>
+#define SPR_DCR_CC_EQUAL =A0 =A0 =A0 0x00000002<br>
+#define SPR_DCR_CC_LESS =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000004<br>
+#define SPR_DCR_CC_LESSE =A0 =A0 =A0 0x00000006<br>
+#define SPR_DCR_CC_GREAT =A0 =A0 =A0 0x00000008<br>
+#define SPR_DCR_CC_GREATE =A0 =A0 =A00x0000000a<br>
+#define SPR_DCR_CC_NEQUAL =A0 =A0 =A00x0000000c<br>
+<br>
+/* Bit results with SPR_DCR_CT mask */<br>
+#define SPR_DCR_CT_DISABLED =A0 =A00x00000000<br>
+#define SPR_DCR_CT_IFEA =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000020<br>
+#define SPR_DCR_CT_LEA =A0 =A0 =A0 =A0 0x00000040<br>
+#define SPR_DCR_CT_SEA =A0 =A0 =A0 =A0 0x00000060<br>
+#define SPR_DCR_CT_LD =A0 =A0 =A0 =A0 =A00x00000080<br>
+#define SPR_DCR_CT_SD =A0 =A0 =A0 =A0 =A00x000000a0<br>
+#define SPR_DCR_CT_LSEA =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x000000c0<br>
+#define SPR_DCR_CT_LSD =A0 =A0 =A0 =A0 0x000000e0<br>
+<br>
+/*<br>
+ * Bit definitions for Debug Mode 1 register<br>
+ */<br>
+#define SPR_DMR1_CW =A0 =A0 =A0 =A0 =A0 =A00x000fffff /* Chain register pa=
ir data */<br>
+#define SPR_DMR1_CW0_AND =A0 =A0 =A0 0x00000001<br>
+#define SPR_DMR1_CW0_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000002<br>
+#define SPR_DMR1_CW0 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW0_AND | SPR_DMR1_CW0_=
OR)<br>
+#define SPR_DMR1_CW1_AND =A0 =A0 =A0 0x00000004<br>
+#define SPR_DMR1_CW1_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000008<br>
+#define SPR_DMR1_CW1 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW1_AND | SPR_DMR1_CW1_=
OR)<br>
+#define SPR_DMR1_CW2_AND =A0 =A0 =A0 0x00000010<br>
+#define SPR_DMR1_CW2_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000020<br>
+#define SPR_DMR1_CW2 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW2_AND | SPR_DMR1_CW2_=
OR)<br>
+#define SPR_DMR1_CW3_AND =A0 =A0 =A0 0x00000040<br>
+#define SPR_DMR1_CW3_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000080<br>
+#define SPR_DMR1_CW3 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW3_AND | SPR_DMR1_CW3_=
OR)<br>
+#define SPR_DMR1_CW4_AND =A0 =A0 =A0 0x00000100<br>
+#define SPR_DMR1_CW4_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000200<br>
+#define SPR_DMR1_CW4 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW4_AND | SPR_DMR1_CW4_=
OR)<br>
+#define SPR_DMR1_CW5_AND =A0 =A0 =A0 0x00000400<br>
+#define SPR_DMR1_CW5_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00000800<br>
+#define SPR_DMR1_CW5 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW5_AND | SPR_DMR1_CW5_=
OR)<br>
+#define SPR_DMR1_CW6_AND =A0 =A0 =A0 0x00001000<br>
+#define SPR_DMR1_CW6_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00002000<br>
+#define SPR_DMR1_CW6 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW6_AND | SPR_DMR1_CW6_=
OR)<br>
+#define SPR_DMR1_CW7_AND =A0 =A0 =A0 0x00004000<br>
+#define SPR_DMR1_CW7_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00008000<br>
+#define SPR_DMR1_CW7 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW7_AND | SPR_DMR1_CW7_=
OR)<br>
+#define SPR_DMR1_CW8_AND =A0 =A0 =A0 0x00010000<br>
+#define SPR_DMR1_CW8_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00020000<br>
+#define SPR_DMR1_CW8 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW8_AND | SPR_DMR1_CW8_=
OR)<br>
+#define SPR_DMR1_CW9_AND =A0 =A0 =A0 0x00040000<br>
+#define SPR_DMR1_CW9_OR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00080000<br>
+#define SPR_DMR1_CW9 =A0 =A0 =A0 =A0 =A0 (SPR_DMR1_CW9_AND | SPR_DMR1_CW9_=
OR)<br>
+#define SPR_DMR1_RES1 =A0 =A0 =A0 =A0 =A00x00300000 /* Reserved */<br>
+#define SPR_DMR1_ST =A0 =A0 =A0 =A0 =A0 =A00x00400000 /* Single-step trace=
*/<br>
+#define SPR_DMR1_BT =A0 =A0 =A0 =A0 =A0 =A00x00800000 /* Branch trace */<b=
r>
+#define SPR_DMR1_RES2 =A0 =A0 =A0 =A0 =A00xff000000 /* Reserved */<br>
+<br>
+/*<br>
+ * Bit definitions for Debug Mode 2 register. AWTC and WGB corrected by JP=
B<br>
+ */<br>
+#define SPR_DMR2_WCE0 =A0 =A0 =A0 =A0 =A00x00000001 /* Watchpoint counter =
0 enable */<br>
+#define SPR_DMR2_WCE1 =A0 =A0 =A0 =A0 =A00x00000002 /* Watchpoint counter =
0 enable */<br>
+#define SPR_DMR2_AWTC =A0 =A0 =A0 =A0 =A00x00000ffc /* Assign watchpoints =
to counters */<br>
+#define SPR_DMR2_AWTC_OFF =A0 =A0 =A02 /* Bit offset to AWTC field */<br>
+#define SPR_DMR2_WGB =A0 =A0 =A0 =A0 =A0 0x003ff000 /* Watch generating br=
eakpoint */<br>
+#define SPR_DMR2_WGB_OFF =A0 =A0 =A0 12 /* Bit offset to WGB field */<br>
+#define SPR_DMR2_WBS =A0 =A0 =A0 =A0 =A0 0xffc00000 /* Watchpoint status *=
/<br>
+#define SPR_DMR2_WBS_OFF =A0 =A0 =A0 22 /* Bit offset to WBS field */<br>
+<br>
+/*<br>
+ * Bit definitions for Debug watchpoint counter registers<br>
+ */<br>
+#define SPR_DWCR_COUNT =A0 =A0 =A0 =A0 0x0000ffff /* Count */<br>
+#define SPR_DWCR_MATCH =A0 =A0 =A0 =A0 0xffff0000 /* Match */<br>
+#define SPR_DWCR_MATCH_OFF =A0 =A0 16 /* Match bit offset */<br>
+<br>
+/*<br>
+ * Bit definitions for Debug stop register<br>
+ *<br>
+ */<br>
+#define SPR_DSR_RSTE =A0 0x00000001 /* Reset exception */<br>
+#define SPR_DSR_BUSEE =A00x00000002 /* Bus error exception */<br>
+#define SPR_DSR_DPFE =A0 0x00000004 /* Data Page Fault exception */<br>
+#define SPR_DSR_IPFE =A0 0x00000008 /* Insn Page Fault exception */<br>
+#define SPR_DSR_TTE =A0 =A00x00000010 /* Tick Timer exception */<br>
+#define SPR_DSR_AE =A0 =A0 0x00000020 /* Alignment exception */<br>
+#define SPR_DSR_IIE =A0 =A00x00000040 /* Illegal Instruction exception */<=
br>
+#define SPR_DSR_IE =A0 =A0 0x00000080 /* Interrupt exception */<br>
+#define SPR_DSR_DME =A0 =A00x00000100 /* DTLB miss exception */<br>
+#define SPR_DSR_IME =A0 =A00x00000200 /* ITLB miss exception */<br>
+#define SPR_DSR_RE =A0 =A0 0x00000400 /* Range exception */<br>
+#define SPR_DSR_SCE =A0 =A00x00000800 /* System call exception */<br>
+#define SPR_DSR_FPE =A0 =A00x00001000 /* Floating Point Exception */<br>
+#define SPR_DSR_TE =A0 =A0 0x00002000 /* Trap exception */<br>
+<br>
+/*<br>
+ * Bit definitions for Debug reason register<br>
+ */<br>
+#define SPR_DRR_RSTE =A0 0x00000001 /* Reset exception */<br>
+#define SPR_DRR_BUSEE =A00x00000002 /* Bus error exception */<br>
+#define SPR_DRR_DPFE =A0 0x00000004 /* Data Page Fault exception */<br>
+#define SPR_DRR_IPFE =A0 0x00000008 /* Insn Page Fault exception */<br>
+#define SPR_DRR_TTE =A0 =A00x00000010 /* Tick Timer exception */<br>
+#define SPR_DRR_AE =A0 =A0 0x00000020 /* Alignment exception */<br>
+#define SPR_DRR_IIE =A0 =A00x00000040 /* Illegal Instruction exception */<=
br>
+#define SPR_DRR_IE =A0 =A0 0x00000080 /* Interrupt exception */<br>
+#define SPR_DRR_DME =A0 =A00x00000100 /* DTLB miss exception */<br>
+#define SPR_DRR_IME =A0 =A00x00000200 /* ITLB miss exception */<br>
+#define SPR_DRR_RE =A0 =A0 0x00000400 /* Range exception */<br>
+#define SPR_DRR_SCE =A0 =A00x00000800 /* System call exception */<br>
+#define SPR_DRR_FPE =A0 =A00x00001000 /* Floating Point Exception */<br>
+#define SPR_DRR_TE =A0 =A0 0x00002000 /* Trap exception */<br>
+<br>
+/*<br>
+ * Bit definitions for Performance counters mode registers<br>
+ */<br>
+#define SPR_PCMR_CP =A0 =A00x00000001 /* Counter present */<br>
+#define SPR_PCMR_UMRA =A00x00000002 /* User mode read access */<br>
+#define SPR_PCMR_CISM =A00x00000004 /* Count in supervisor mode */<br>
+#define SPR_PCMR_CIUM =A00x00000008 /* Count in user mode */<br>
+#define SPR_PCMR_LA =A0 =A00x00000010 /* Load access event */<br>
+#define SPR_PCMR_SA =A0 =A00x00000020 /* Store access event */<br>
+#define SPR_PCMR_IF =A0 =A00x00000040 /* Instruction fetch event*/<br>
+#define SPR_PCMR_DCM =A0 0x00000080 /* Data cache miss event */<br>
+#define SPR_PCMR_ICM =A0 0x00000100 /* Insn cache miss event */<br>
+#define SPR_PCMR_IFS =A0 0x00000200 /* Insn fetch stall event */<br>
+#define SPR_PCMR_LSUS =A00x00000400 /* LSU stall event */<br>
+#define SPR_PCMR_BS =A0 =A00x00000800 /* Branch stall event */<br>
+#define SPR_PCMR_DTLBM 0x00001000 /* DTLB miss event */<br>
+#define SPR_PCMR_ITLBM 0x00002000 /* ITLB miss event */<br>
+#define SPR_PCMR_DDS =A0 0x00004000 /* Data dependency stall event */<br>
+#define SPR_PCMR_WPE =A0 0x03ff8000 /* Watchpoint events */<br>
+<br>
+/*<br>
+ * Bit definitions for the Power management register<br>
+ */<br>
+#define SPR_PMR_SDF =A0 =A00x0000000f /* Slow down factor */<br>
+#define SPR_PMR_DME =A0 =A00x00000010 /* Doze mode enable */<br>
+#define SPR_PMR_SME =A0 =A00x00000020 /* Sleep mode enable */<br>
+#define SPR_PMR_DCGE =A0 0x00000040 /* Dynamic clock gating enable */<br>
+#define SPR_PMR_SUME =A0 0x00000080 /* Suspend mode enable */<br>
+<br>
+/*<br>
+ * Bit definitions for PICMR<br>
+ */<br>
+#define SPR_PICMR_IUM =A00xfffffffc /* Interrupt unmask */<br>
+<br>
+/*<br>
+ * Bit definitions for PICPR<br>
+ */<br>
+#define SPR_PICPR_IPRIO =A0 =A0 =A0 =A00xfffffffc /* Interrupt priority */=
<br>
+<br>
+/*<br>
+ * Bit definitions for PICSR<br>
+ */<br>
+#define SPR_PICSR_IS =A0 0xffffffff /* Interrupt status */<br>
+<br>
+/*<br>
+ * Bit definitions for Tick Timer Control Register<br>
+ */<br>
+#define SPR_TTCR_CNT =A0 0xffffffff /* Count, time period */<br>
+#define SPR_TTMR_TP =A0 =A00x0fffffff /* Time period */<br>
+#define SPR_TTMR_IP =A0 =A00x10000000 /* Interrupt Pending */<br>
+#define SPR_TTMR_IE =A0 =A00x20000000 /* Interrupt Enable */<br>
+#define SPR_TTMR_DI =A0 =A00x00000000 /* Disabled */<br>
+#define SPR_TTMR_RT =A0 =A00x40000000 /* Restart tick */<br>
+#define SPR_TTMR_SR =A0 =A00x80000000 /* Single run */<br>
+#define SPR_TTMR_CR =A0 =A00xc0000000 /* Continuous run */<br>
+#define SPR_TTMR_M =A0 =A0 0xc0000000 /* Tick mode */<br>
+<br>
+/*<br>
+ * Bit definitions for the FP Control Status Register<br>
+ */<br>
+#define SPR_FPCSR_FPEE 0x00000001 /* Floating Point Exception Enable */<br=
>
+#define SPR_FPCSR_RM =A0 0x00000006 /* Rounding Mode */<br>
+#define SPR_FPCSR_OVF =A00x00000008 /* Overflow Flag */<br>
+#define SPR_FPCSR_UNF =A00x00000010 /* Underflow Flag */<br>
+#define SPR_FPCSR_SNF =A00x00000020 /* SNAN Flag */<br>
+#define SPR_FPCSR_QNF =A00x00000040 /* QNAN Flag */<br>
+#define SPR_FPCSR_ZF =A0 0x00000080 /* Zero Flag */<br>
+#define SPR_FPCSR_IXF =A00x00000100 /* Inexact Flag */<br>
+#define SPR_FPCSR_IVF =A00x00000200 /* Invalid Flag */<br>
+#define SPR_FPCSR_INF =A00x00000400 /* Infinity Flag */<br>
+#define SPR_FPCSR_DZF =A00x00000800 /* Divide By Zero Flag */<br>
+#define SPR_FPCSR_ALLF (SPR_FPCSR_OVF | SPR_FPCSR_UNF | SPR_FPCSR_SNF | \<=
br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 SPR_FPCSR_QNF | SPR_FPCSR_ZF =
| SPR_FPCSR_IXF | \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 SPR_FPCSR_IVF | SPR_FPCSR_INF=
 | SPR_FPCSR_DZF)<br>
+<br>
+#define FPCSR_RM_RN =A0 =A0(0&lt;&lt;1)<br>
+#define FPCSR_RM_RZ =A0 =A0(1&lt;&lt;1)<br>
+#define FPCSR_RM_RIP =A0 (2&lt;&lt;1)<br>
+#define FPCSR_RM_RIN =A0 (3&lt;&lt;1)<br>
+<br>
+/*<br>
+ * l.nop constants<br>
+ */<br>
+#define NOP_NOP =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x0000 /* N=
ormal nop instruction */<br>
+#define NOP_EXIT =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0001 /* End of simulation *=
/<br>
+#define NOP_REPORT =A0 =A0 =A0 =A0 =A0 =A0 0x0002 /* Simple report */<br>
+#define NOP_PUTC =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0004 /* Simputc instruction=
 */<br>
+#define NOP_CNT_RESET =A0 =A0 =A0 =A0 =A00x0005 /* Reset statistics counte=
rs */<br>
+#define NOP_GET_TICKS =A0 =A0 =A0 =A0 =A00x0006 /* Get # ticks running */<=
br>
+#define NOP_GET_PS =A0 =A0 =A0 =A0 =A0 =A0 0x0007 /* Get picosecs/cycle */=
<br>
+#define NOP_REPORT_FIRST =A0 =A0 =A0 0x0400 /* Report with number */<br>
+#define NOP_REPORT_LAST =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x03ff /* Report wi=
th number */<br>
+<br>
+#endif /* SPR_DEFS__H */<br>
diff --git a/arch/openrisc/include/asm/string.h b/arch/openrisc/include/asm=
/string.h<br>
new file mode 100644<br>
index 0000000..73e2655<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/string.h<br>
@@ -0,0 +1,4 @@<br>
+#ifndef __ASM_OPENRISC_STRING_H<br>
+#define __ASM_OPENRISC_STRING_H<br>
+<br>
+#endif<br>
diff --git a/arch/openrisc/include/asm/swab.h b/arch/openrisc/include/asm/s=
wab.h<br>
new file mode 100644<br>
index 0000000..b07e1d5<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/swab.h<br>
@@ -0,0 +1,4 @@<br>
+#ifndef _ASM_SWAB_H<br>
+#define _ASM_SWAB_H<br>
+<br>
+#endif /* _ASM_SWAB_H */<br>
diff --git a/arch/openrisc/include/asm/system.h b/arch/openrisc/include/asm=
/system.h<br>
new file mode 100644<br>
index 0000000..d680363<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/system.h<br>
@@ -0,0 +1,39 @@<br>
+/*<br>
+ * (C) Copyright 2011, Julius Baxter &lt;<a href=3D"mailto:julius@opencore=
s.org">julius@opencores.org</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#ifndef __ASM_OPENRISC_SYSTEM_H<br>
+#define __ASM_OPENRISC_SYSTEM_H<br>
+<br>
+#include &lt;asm/spr-defs.h&gt;<br>
+<br>
+static inline unsigned long mfspr(unsigned long add)<br>
+{<br>
+ =A0 =A0 =A0 unsigned long ret;<br>
+<br>
+ =A0 =A0 =A0 __asm__ __volatile__ (&quot;l.mfspr %0,r0,%1&quot; : &quot;=
=3Dr&quot; (ret) : &quot;K&quot; (add));<br>
+<br>
+ =A0 =A0 =A0 return ret;<br>
+}<br>
+<br>
+static inline void mtspr(unsigned long add, unsigned long val)<br>
+{<br>
+ =A0 =A0 =A0 __asm__ __volatile__ (&quot;l.mtspr r0,%1,%0&quot; : : &quot;=
K&quot; (add), &quot;r&quot; (val));<br>
+}<br>
+<br>
+#endif /* __ASM_OPENRISC_SYSTEM_H */<br>
diff --git a/arch/openrisc/include/asm/types.h b/arch/openrisc/include/asm/=
types.h<br>
new file mode 100644<br>
index 0000000..55efa36<br>
--- /dev/null<br>
+++ b/arch/openrisc/include/asm/types.h<br>
@@ -0,0 +1,79 @@<br>
+/*<br>
+ * (C) Copyright 2011, Julius Baxter &lt;<a href=3D"mailto:julius@opencore=
s.org">julius@opencores.org</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#ifndef _ASM_TYPES_H<br>
+#define _ASM_TYPES_H<br>
+<br>
+/*<br>
+ * This file is never included by application software unless<br>
+ * explicitly requested (e.g., via linux/types.h) in which case the<br>
+ * application is Linux specific so (user-) name space pollution is<br>
+ * not a major issue. =A0However, for interoperability, libraries still<br=
>
+ * need to be careful to avoid a name clashes.<br>
+ */<br>
+<br>
+typedef unsigned short umode_t;<br>
+<br>
+/*<br>
+ * __xx is ok: it doesn&#39;t pollute the POSIX namespace. Use these in th=
e<br>
+ * header files exported to user space<br>
+ */<br>
+<br>
+typedef __signed__ char __s8;<br>
+typedef unsigned char __u8;<br>
+<br>
+typedef __signed__ short __s16;<br>
+typedef unsigned short __u16;<br>
+<br>
+typedef __signed__ int __s32;<br>
+typedef unsigned int __u32;<br>
+<br>
+#if defined(__GNUC__)<br>
+__extension__ typedef __signed__ long long __s64;<br>
+__extension__ typedef unsigned long long __u64;<br>
+#endif<br>
+<br>
+/*<br>
+ * These aren&#39;t exported outside the kernel to avoid name space clashe=
s<br>
+ */<br>
+#ifdef __KERNEL__<br>
+<br>
+typedef signed char s8;<br>
+typedef unsigned char u8;<br>
+<br>
+typedef signed short s16;<br>
+typedef unsigned short u16;<br>
+<br>
+typedef signed int s32;<br>
+typedef unsigned int u32;<br>
+<br>
+typedef signed long long s64;<br>
+typedef unsigned long long u64;<br>
+<br>
+#define BITS_PER_LONG 32<br>
+<br>
+/* Dma addresses are 32-bits wide. =A0*/<br>
+<br>
+typedef u32 dma_addr_t;<br>
+<br>
+/*typedef unsigned long phys_addr_t;*/<br>
+typedef unsigned long phys_size_t;<br>
+#endif /* __KERNEL__ */<br>
+<br>
+#endif /* _ASM_TYPES_H */<br>
diff --git a/arch/openrisc/lib/Makefile b/arch/openrisc/lib/Makefile<br>
new file mode 100644<br>
index 0000000..aaf93cb<br>
--- /dev/null<br>
+++ b/arch/openrisc/lib/Makefile<br>
@@ -0,0 +1,6 @@<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D clock.o<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D board.o<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D cpuinfo.o<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D muldi3.o<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D lshrdi3.o<br>
+obj-y =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D ashldi3.o<br>
diff --git a/arch/openrisc/lib/ashldi3.S b/arch/openrisc/lib/ashldi3.S<br>
new file mode 100644<br>
index 0000000..3e422fa<br>
--- /dev/null<br>
+++ b/arch/openrisc/lib/ashldi3.S<br>
@@ -0,0 +1,41 @@<br>
+/*<br>
+ * (C) Copyright 2011 - Franck JULLIEN &lt;<a href=3D"mailto:elec4fun@gmai=
l.com">elec4fun@gmail.com</a>&gt;<br>
+ *<br>
+ * Extracted from gcc generated assembly.<br>
+ *<br>
+ * Extended precision shifts.<br>
+ *<br>
+ * R3/R4 (MSW, LSW) has 64 bit value<br>
+ * R5 =A0 =A0has shift count<br>
+ * result in R11/R12<br>
+ *<br>
+ */<br>
+<br>
+.globl __ashldi3<br>
+<br>
+__ashldi3:<br>
+ =A0 =A0 =A0 l.sfeqi r5,0x0<br>
+ =A0 =A0 =A0 <a href=3D"http://l.bf" target=3D"_blank">l.bf</a> out =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0/* if count =3D 0, go out =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 */<br>
+<br>
+ =A0 =A0 =A0 l.addi r6,r0,0x20 =A0 =A0 =A0 /* r6 =3D 32 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.sub r6,r6,r5 =A0 =A0 =A0 =A0 =A0/* r6 =3D 32 - count =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.sfgtsi r6,0x0 =A0 =A0 =A0 =A0 /* if count &gt;=3D 32 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 l.bnf more_than_32 =A0 =A0 =A0/* branch to more_than_32 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 l.nop 0x0<br>
+<br>
+less_than_32:<br>
+ =A0 =A0 =A0 l.srl r6,r4,r6 =A0 =A0 =A0 =A0 =A0/* r6 gets the bits moved f=
rom LSW to MSW */<br>
+ =A0 =A0 =A0 l.sll r3,r3,r5 =A0 =A0 =A0 =A0 =A0/* shift MSW =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.sll r4,r4,r5 =A0 =A0 =A0 =A0 =A0/* shift LSW =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.or r3,r6,r3 =A0 =A0 =A0 =A0 =A0 /* MSW gets bits shifted fr=
om LSW =A0 =A0 =A0 =A0 */<br>
+<br>
+out:<br>
+ =A0 =A0 =A0 l.ori r11,r3,0x0<br>
+ =A0 =A0 =A0 l.jr r9<br>
+ =A0 =A0 =A0 l.ori r12,r4,0x0<br>
+<br>
+more_than_32:<br>
+ =A0 =A0 =A0 l.sub r3,r0,r6 =A0 =A0 =A0 =A0 =A0/* r3 =3D -r6, the number o=
f bits above 32 =A0*/<br>
+ =A0 =A0 =A0 l.sll r3,r4,r3 =A0 =A0 =A0 =A0 =A0/* MSW =3D LSW &lt;&lt; r3 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.j out =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* go out =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 l.addi r4,r0,0x0 =A0 =A0 =A0 =A0/* LSW =3D 0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
diff --git a/arch/openrisc/lib/board.c b/arch/openrisc/lib/board.c<br>
new file mode 100644<br>
index 0000000..a2158cb<br>
--- /dev/null<br>
+++ b/arch/openrisc/lib/board.c<br>
@@ -0,0 +1,42 @@<br>
+/*<br>
+ * (C) Copyright 2011 - Franck JULLIEN &lt;<a href=3D"mailto:elec4fun@gmai=
l.com">elec4fun@gmail.com</a>&gt;<br>
+ *<br>
+ * See file CREDITS for list of people who contributed to this<br>
+ * project.<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;malloc.h&gt;<br>
+#include &lt;init.h&gt;<br>
+#include &lt;memory.h&gt;<br>
+#include &lt;asm-generic/memory_layout.h&gt;<br>
+<br>
+int openrisc_mem_malloc_init(void)<br>
+{<br>
+<br>
+ =A0 =A0 =A0 mem_malloc_init((void *)(OPENRISC_SOPC_TEXT_BASE - MALLOC_SIZ=
E),<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (void *)(OPENRISC_SOPC_TEXT_B=
ASE - 1));<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+core_initcall(openrisc_mem_malloc_init);<br>
+<br>
+void arch_shutdown(void)<br>
+{<br>
+}<br>
diff --git a/arch/openrisc/lib/clock.c b/arch/openrisc/lib/clock.c<br>
new file mode 100644<br>
index 0000000..ab0a90d<br>
--- /dev/null<br>
+++ b/arch/openrisc/lib/clock.c<br>
@@ -0,0 +1,50 @@<br>
+/*<br>
+ * (C) Copyright 2011 - Franck JULLIEN &lt;<a href=3D"mailto:elec4fun@gmai=
l.com">elec4fun@gmail.com</a>&gt;<br>
+ *<br>
+ * See file CREDITS for list of people who contributed to this<br>
+ * project.<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;clock.h&gt;<br>
+#include &lt;init.h&gt;<br>
+#include &lt;asm/system.h&gt;<br>
+#include &lt;asm/openrisc_exc.h&gt;<br>
+<br>
+static uint64_t openrisc_clocksource_read(void)<br>
+{<br>
+ =A0 =A0 =A0 return (uint64_t)(mfspr(SPR_TTCR));<br>
+}<br>
+<br>
+static struct clocksource cs =3D {<br>
+ =A0 =A0 =A0 .read =A0 =3D openrisc_clocksource_read,<br>
+ =A0 =A0 =A0 .mask =A0 =3D 0xffffffff,<br>
+ =A0 =A0 =A0 .shift =A0=3D 12,<br>
+};<br>
+<br>
+static int clocksource_init(void)<br>
+{<br>
+ =A0 =A0 =A0 mtspr(SPR_TTMR, SPR_TTMR_CR | 0xFFFFFF);<br>
+ =A0 =A0 =A0 cs.mult =3D clocksource_hz2mult(OPENRISC_TIMER_FREQ, cs.shift=
);<br>
+<br>
+ =A0 =A0 =A0 init_clock(&amp;cs);<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+core_initcall(clocksource_init);<br>
diff --git a/arch/openrisc/lib/cpuinfo.c b/arch/openrisc/lib/cpuinfo.c<br>
new file mode 100644<br>
index 0000000..3ec44c1<br>
--- /dev/null<br>
+++ b/arch/openrisc/lib/cpuinfo.c<br>
@@ -0,0 +1,156 @@<br>
+/*<br>
+ * (C) Copyright 2011, Stefan Kristiansson &lt;<a href=3D"mailto:stefan.kr=
istiansson@saunalahti.fi">stefan.kristiansson@saunalahti.fi</a>&gt;<br>
+ * (C) Copyright 2011, Julius Baxter &lt;<a href=3D"mailto:julius@opencore=
s.org">julius@opencores.org</a>&gt;<br>
+ *<br>
+ * See file CREDITS for list of people who contributed to this<br>
+ * project.<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;command.h&gt;<br>
+#include &lt;asm/system.h&gt;<br>
+#include &lt;asm/cache.h&gt;<br>
+#include &lt;asm/openrisc_exc.h&gt;<br>
+<br>
+static volatile int illegal_instruction;<br>
+<br>
+static void illegal_instruction_handler(void)<br>
+{<br>
+ =A0 =A0 =A0 ulong *epcr =3D (ulong *)mfspr(SPR_EPCR_BASE);<br>
+<br>
+ =A0 =A0 =A0 /* skip over the illegal instruction */<br>
+ =A0 =A0 =A0 mtspr(SPR_EPCR_BASE, (ulong)(++epcr));<br>
+ =A0 =A0 =A0 illegal_instruction =3D 1;<br>
+}<br>
+<br>
+static int checkinstructions(void)<br>
+{<br>
+ =A0 =A0 =A0 ulong ra =3D 1, rb =3D 1, rc;<br>
+<br>
+ =A0 =A0 =A0 exception_install_handler(EXC_ILLEGAL_INSTR,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 illegal_instr=
uction_handler);<br>
+<br>
+ =A0 =A0 =A0 illegal_instruction =3D 0;<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.mul %0,%1,%2&quot; : &quot;=3Dr&quot; (r=
c) : &quot;r&quot; (ra), &quot;r&quot; (rb));<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 =A0 =A0 Hardware multiplier: %s\n&q=
uot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 illegal_instruction ? &quot;no&quot; : &quot;=
yes&quot;);<br>
+<br>
+ =A0 =A0 =A0 illegal_instruction =3D 0;<br>
+ =A0 =A0 =A0 asm volatile(&quot;l.div %0,%1,%2&quot; : &quot;=3Dr&quot; (r=
c) : &quot;r&quot; (ra), &quot;r&quot; (rb));<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 =A0 =A0 Hardware divider: %s\n&quot=
;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 illegal_instruction ? &quot;no&quot; : &quot;=
yes&quot;);<br>
+<br>
+ =A0 =A0 =A0 exception_free_handler(EXC_ILLEGAL_INSTR);<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+int checkcpu(void)<br>
+{<br>
+ =A0 =A0 =A0 ulong upr =3D mfspr(SPR_UPR);<br>
+ =A0 =A0 =A0 ulong vr =3D mfspr(SPR_VR);<br>
+ =A0 =A0 =A0 ulong iccfgr =3D mfspr(SPR_ICCFGR);<br>
+ =A0 =A0 =A0 ulong dccfgr =3D mfspr(SPR_DCCFGR);<br>
+ =A0 =A0 =A0 ulong immucfgr =3D mfspr(SPR_IMMUCFGR);<br>
+ =A0 =A0 =A0 ulong dmmucfgr =3D mfspr(SPR_DMMUCFGR);<br>
+ =A0 =A0 =A0 ulong cpucfgr =3D mfspr(SPR_CPUCFGR);<br>
+ =A0 =A0 =A0 uint ver =3D (vr &amp; SPR_VR_VER) &gt;&gt; 24;<br>
+ =A0 =A0 =A0 uint rev =3D vr &amp; SPR_VR_REV;<br>
+ =A0 =A0 =A0 uint block_size;<br>
+ =A0 =A0 =A0 uint ways;<br>
+ =A0 =A0 =A0 uint sets;<br>
+<br>
+ =A0 =A0 =A0 printf(&quot;CPU: =A0 OpenRISC-%x00 (rev %d) @ %d MHz\n&quot;=
,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ver, rev, (CONFIG_SYS_CLK_FREQ / 1000000));<b=
r>
+<br>
+ =A0 =A0 =A0 if (upr &amp; SPR_UPR_DCP) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 block_size =3D (dccfgr &amp; SPR_DCCFGR_CBS) =
? 32 : 16;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ways =3D 1 &lt;&lt; (dccfgr &amp; SPR_DCCFGR_=
NCW);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 D-Cache: %d bytes, =
%d bytes/line, %d way(s)\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0checkdcache(), block_size, way=
s);<br>
+ =A0 =A0 =A0 } else {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 D-Cache: no\n&quot;=
);<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 if (upr &amp; SPR_UPR_ICP) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 block_size =3D (iccfgr &amp; SPR_ICCFGR_CBS) =
? 32 : 16;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ways =3D 1 &lt;&lt; (iccfgr &amp; SPR_ICCFGR_=
NCW);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 I-Cache: %d bytes, =
%d bytes/line, %d way(s)\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0checkicache(), block_size, way=
s);<br>
+ =A0 =A0 =A0 } else {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 I-Cache: no\n&quot;=
);<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 if (upr &amp; SPR_UPR_DMP) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 sets =3D 1 &lt;&lt; ((dmmucfgr &amp; SPR_DMMU=
CFGR_NTS) &gt;&gt; 2);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ways =3D (dmmucfgr &amp; SPR_DMMUCFGR_NTW) + =
1;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 DMMU: %d sets, %d w=
ay(s)\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sets, ways);<br>
+ =A0 =A0 =A0 } else {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 DMMU: no\n&quot;);<=
br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 if (upr &amp; SPR_UPR_IMP) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 sets =3D 1 &lt;&lt; ((immucfgr &amp; SPR_IMMU=
CFGR_NTS) &gt;&gt; 2);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ways =3D (immucfgr &amp; SPR_IMMUCFGR_NTW) + =
1;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 IMMU: %d sets, %d w=
ay(s)\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sets, ways);<br>
+ =A0 =A0 =A0 } else {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 IMMU: no\n&quot;);<=
br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 MAC unit: %s\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (upr &amp; SPR_UPR_MP) ? &quot;yes&quot; : &q=
uot;no&quot;);<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 Debug unit: %s\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (upr &amp; SPR_UPR_DUP) ? &quot;yes&quot; : &=
quot;no&quot;);<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 Performance counters: %s\n&quot;,<b=
r>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (upr &amp; SPR_UPR_PCUP) ? &quot;yes&quot; : =
&quot;no&quot;);<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 Power management: %s\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (upr &amp; SPR_UPR_PMP) ? &quot;yes&quot; : &=
quot;no&quot;);<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 Interrupt controller: %s\n&quot;,<b=
r>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (upr &amp; SPR_UPR_PICP) ? &quot;yes&quot; : =
&quot;no&quot;);<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 Timer: %s\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (upr &amp; SPR_UPR_TTP) ? &quot;yes&quot; : &=
quot;no&quot;);<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 Custom unit(s): %s\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (upr &amp; SPR_UPR_CUP) ? &quot;yes&quot; : &=
quot;no&quot;);<br>
+<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 Supported instructions:\n&quot;);<b=
r>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 =A0 =A0 ORBIS32: %s\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (cpucfgr &amp; SPR_CPUCFGR_OB32S) ? &quot;yes=
&quot; : &quot;no&quot;);<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 =A0 =A0 ORBIS64: %s\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (cpucfgr &amp; SPR_CPUCFGR_OB64S) ? &quot;yes=
&quot; : &quot;no&quot;);<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 =A0 =A0 ORFPX32: %s\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (cpucfgr &amp; SPR_CPUCFGR_OF32S) ? &quot;yes=
&quot; : &quot;no&quot;);<br>
+ =A0 =A0 =A0 printf(&quot; =A0 =A0 =A0 =A0 =A0 ORFPX64: %s\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (cpucfgr &amp; SPR_CPUCFGR_OF64S) ? &quot;yes=
&quot; : &quot;no&quot;);<br>
+<br>
+ =A0 =A0 =A0 checkinstructions();<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])<br>
+{<br>
+ =A0 =A0 =A0 checkcpu();<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+BAREBOX_CMD_START(cpuinfo)<br>
+ =A0 =A0 =A0 .cmd =A0 =A0 =A0 =A0 =A0 =A0=3D do_cpuinfo,<br>
+ =A0 =A0 =A0 .usage =A0 =A0 =A0 =A0 =A0=3D &quot;Show info about CPU&quot;=
,<br>
+BAREBOX_CMD_END<br>
diff --git a/arch/openrisc/lib/lshrdi3.S b/arch/openrisc/lib/lshrdi3.S<br>
new file mode 100644<br>
index 0000000..de30445<br>
--- /dev/null<br>
+++ b/arch/openrisc/lib/lshrdi3.S<br>
@@ -0,0 +1,41 @@<br>
+/*<br>
+ * (C) Copyright 2011 - Franck JULLIEN &lt;<a href=3D"mailto:elec4fun@gmai=
l.com">elec4fun@gmail.com</a>&gt;<br>
+ *<br>
+ * Extracted from gcc generated assembly.<br>
+ *<br>
+ * Extended precision shifts.<br>
+ *<br>
+ * R3/R4 (MSW, LSW) has 64 bit value<br>
+ * R5 =A0 =A0has shift count<br>
+ * result in R11/R12<br>
+ *<br>
+ */<br>
+<br>
+.globl __lshrdi3<br>
+<br>
+__lshrdi3:<br>
+ =A0 =A0 =A0 l.sfeqi r5,0x0<br>
+ =A0 =A0 =A0 <a href=3D"http://l.bf" target=3D"_blank">l.bf</a> out =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0/* if count =3D 0, go out =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 */<br>
+<br>
+ =A0 =A0 =A0 l.addi r6,r0,0x20 =A0 =A0 =A0 /* r6 =3D 32 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.sub r6,r6,r5 =A0 =A0 =A0 =A0 =A0/* r6 =3D 32 - count =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.sfgtsi r6,0x0 =A0 =A0 =A0 =A0 /* if count &gt;=3D 32 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 l.bnf more_than_32 =A0 =A0 =A0/* branch to more_than_32 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 l.nop 0x0<br>
+<br>
+less_than_32:<br>
+ =A0 =A0 =A0 l.sll r6,r3,r6 =A0 =A0 =A0 =A0 =A0/* r6 gets the bits moved f=
rom MSW to LSW */<br>
+ =A0 =A0 =A0 l.srl r4,r4,r5 =A0 =A0 =A0 =A0 =A0/* shift LSW =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.srl r3,r3,r5 =A0 =A0 =A0 =A0 =A0/* shift MSW =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.or r4,r6,r4 =A0 =A0 =A0 =A0 =A0 /* LSW gets bits shifted fr=
om MSW =A0 =A0 =A0 =A0 */<br>
+<br>
+ out:<br>
+ =A0 =A0 =A0 l.ori r11,r3,0x0<br>
+ =A0 =A0 =A0 l.jr r9<br>
+ =A0 =A0 =A0 l.ori r12,r4,0x0<br>
+<br>
+more_than_32:<br>
+ =A0 =A0 =A0 l.sub r4,r0,r6 =A0 =A0 =A0 =A0 =A0/* r4 =3D -r6, the number o=
f bits above 32 =A0*/<br>
+ =A0 =A0 =A0 l.srl r4,r3,r4 =A0 =A0 =A0 =A0 =A0/* LSW =3D MSW &gt;&gt; r4 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.j out =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* go out =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 l.addi r3,r0,0x0 =A0 =A0 =A0 =A0/* MSW =3D 0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/<br>
diff --git a/arch/openrisc/lib/muldi3.S b/arch/openrisc/lib/muldi3.S<br>
new file mode 100644<br>
index 0000000..902338a<br>
--- /dev/null<br>
+++ b/arch/openrisc/lib/muldi3.S<br>
@@ -0,0 +1,58 @@<br>
+/*<br>
+ * (C) Copyright 2011 - Franck JULLIEN &lt;<a href=3D"mailto:elec4fun@gmai=
l.com">elec4fun@gmail.com</a>&gt;<br>
+ *<br>
+ * Extracted from gcc generated assembly.<br>
+ *<br>
+ * Multiply two quads. Hereafter, the illustration of what is going on :<b=
r>
+ *<br>
+ * =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0r3 =A0 =A0| =A0=
 =A0r4 =A0 =A0|<br>
+ * =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0r5 =A0 =A0| =A0=
 =A0r6 =A0 =A0|<br>
+ * =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 --------------------<br=
>
+ * =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0 =A0 r4 * r6 =
=A0 =A0 =A0 |<br>
+ * =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A0 =A0 r3 * r6 =A0 =A0 =A0 | =A0 =A0 =A0=
 =A0 =A0| +<br>
+ * =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A0 =A0 r5 * r4 =A0 =A0 =A0 | =A0 =A0 =A0=
 =A0 =A0| +<br>
+ * =A0| =A0 =A0 =A0 r3 * r5 =A0 =A0 =A0 | =A0 =A0 =A0 =A0 =A0| =A0 =A0 =A0=
 =A0 =A0| +<br>
+ * =A0 ------------------------------------------- =A0=3D<br>
+ * =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A064 bits result =
=A0 |<br>
+ *<br>
+ */<br>
+<br>
+.globl __muldi3<br>
+<br>
+__muldi3:<br>
+ =A0 =A0 =A0 /* starts with the full 64 bits mul (r4 * r6) */<br>
+ =A0 =A0 =A0 l.andi r7,r4,0xffff<br>
+ =A0 =A0 =A0 l.srli r8,r4,0x10<br>
+<br>
+ =A0 =A0 =A0 l.andi r11,r6,0xffff<br>
+ =A0 =A0 =A0 l.srli r12,r6,0x10<br>
+<br>
+ =A0 =A0 =A0 l.mul r13,r11,r7<br>
+ =A0 =A0 =A0 l.mul r11,r11,r8<br>
+ =A0 =A0 =A0 l.mul r7,r12,r7<br>
+<br>
+ =A0 =A0 =A0 l.srli r15,r13,0x10<br>
+ =A0 =A0 =A0 l.add r7,r7,r15<br>
+ =A0 =A0 =A0 l.add r7,r11,r7<br>
+ =A0 =A0 =A0 l.sfleu r11,r7<br>
+ =A0 =A0 =A0 <a href=3D"http://l.bf" target=3D"_blank">l.bf</a> no_carry<b=
r>
+ =A0 =A0 =A0 l.mul r8,r12,r8<br>
+<br>
+ =A0 =A0 =A0 l.movhi r15,0x1<br>
+ =A0 =A0 =A0 l.add r8,r8,r15<br>
+<br>
+no_carry:<br>
+ =A0 =A0 =A0 /* Now compute r3 * r6 =A0*/<br>
+ =A0 =A0 =A0 l.mul r6,r6,r3<br>
+ =A0 =A0 =A0 /* and r4 * r5 =A0 =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 l.mul r4,r4,r5<br>
+ =A0 =A0 =A0 /* finaly previous results and put the result in r11:r12 */<b=
r>
+ =A0 =A0 =A0 l.srli r3,r7,0x10<br>
+ =A0 =A0 =A0 l.slli r7,r7,0x10<br>
+ =A0 =A0 =A0 l.andi r13,r13,0xffff<br>
+ =A0 =A0 =A0 l.add r8,r8,r3<br>
+ =A0 =A0 =A0 l.add r11,r4,r6<br>
+ =A0 =A0 =A0 l.add r12,r7,r13<br>
+ =A0 =A0 =A0 l.add r11,r11,r8<br>
+ =A0 =A0 =A0 l.jr r9<br>
+ =A0 =A0 =A0 l.nop<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.7<br>
<br>
</font></span></blockquote></div><br><div>ping</div>

--002354470fd425d2ea04b58ac430--


--===============3075682090365405368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3075682090365405368==--
