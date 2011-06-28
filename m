Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QbScI-0001zD-8J
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 07:21:53 +0000
Date: Tue, 28 Jun 2011 09:21:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110628072147.GG6069@pengutronix.de>
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
	<1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/2] Add MIPS arch support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 27, 2011 at 09:13:54PM +0400, Antony Pavlov wrote:
> Only supported board is qemu malta:
>   * barebox works in uncached memory;
>   * no peripherals support, but serial port.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Looks mostly good, some comments inline.

> ---
>  arch/architecture.dox                       |    1 +
>  arch/mips/Kconfig                           |   55 ++
>  arch/mips/Makefile                          |   51 ++
>  arch/mips/boards/malta/Makefile             |    1 +
>  arch/mips/boards/malta/config.h             |   19 +
>  arch/mips/boards/malta/serial.c             |   64 ++
>  arch/mips/boot/Makefile                     |    4 +
>  arch/mips/boot/entry.c                      |   80 +++
>  arch/mips/boot/head.S                       |  233 +++++++
>  arch/mips/configs/malta_defconfig           |  219 ++++++
>  arch/mips/include/asm/barebox.h             |   24 +
>  arch/mips/include/asm/bitops.h              |   32 +
>  arch/mips/include/asm/byteorder.h           |   30 +
>  arch/mips/include/asm/common.h              |   29 +
>  arch/mips/include/asm/elf.h                 |   30 +
>  arch/mips/include/asm/io.h                  |   73 ++
>  arch/mips/include/asm/mipsregs.h            |  988 +++++++++++++++++++++++++++
>  arch/mips/include/asm/module.h              |   36 +
>  arch/mips/include/asm/posix_types.h         |   48 ++
>  arch/mips/include/asm/regdef.h              |  100 +++
>  arch/mips/include/asm/sections.h            |    1 +
>  arch/mips/include/asm/sgidefs.h             |   44 ++
>  arch/mips/include/asm/string.h              |   31 +
>  arch/mips/include/asm/swab.h                |   59 ++
>  arch/mips/include/asm/types.h               |   44 ++
>  arch/mips/include/mach/debug_ll.h           |   35 +
>  arch/mips/lib/.gitignore                    |    1 +
>  arch/mips/lib/Makefile                      |    5 +
>  arch/mips/lib/ashldi3.c                     |   27 +
>  arch/mips/lib/ashrdi3.c                     |   29 +
>  arch/mips/lib/barebox.lds.S                 |   76 ++
>  arch/mips/lib/libgcc.h                      |   25 +
>  arch/mips/lib/lshrdi3.c                     |   27 +
>  arch/mips/lib/memory.c                      |   34 +
>  arch/mips/mach-mips.dox                     |    9 +
>  arch/mips/mach-qemu/Kconfig                 |   12 +
>  arch/mips/mach-qemu/Makefile                |    4 +
>  arch/mips/mach-qemu/csrc-r4k.c              |   50 ++
>  arch/mips/mach-qemu/include/mach/hardware.h |   28 +
>  arch/mips/mach-qemu/reset.c                 |   34 +
>  40 files changed, 2692 insertions(+), 0 deletions(-)
>  create mode 100644 arch/mips/Kconfig
>  create mode 100644 arch/mips/Makefile
>  create mode 100644 arch/mips/boards/malta/Makefile
>  create mode 100644 arch/mips/boards/malta/config.h
>  create mode 100644 arch/mips/boards/malta/serial.c
>  create mode 100644 arch/mips/boot/Kconfig
>  create mode 100644 arch/mips/boot/Makefile
>  create mode 100644 arch/mips/boot/entry.c
>  create mode 100644 arch/mips/boot/head.S
>  create mode 100644 arch/mips/configs/malta_defconfig
>  create mode 100644 arch/mips/include/asm/barebox.h
>  create mode 100644 arch/mips/include/asm/bitops.h
>  create mode 100644 arch/mips/include/asm/byteorder.h
>  create mode 100644 arch/mips/include/asm/common.h
>  create mode 100644 arch/mips/include/asm/elf.h
>  create mode 100644 arch/mips/include/asm/io.h
>  create mode 100644 arch/mips/include/asm/mipsregs.h
>  create mode 100644 arch/mips/include/asm/module.h
>  create mode 100644 arch/mips/include/asm/posix_types.h
>  create mode 100644 arch/mips/include/asm/regdef.h
>  create mode 100644 arch/mips/include/asm/sections.h
>  create mode 100644 arch/mips/include/asm/sgidefs.h
>  create mode 100644 arch/mips/include/asm/string.h
>  create mode 100644 arch/mips/include/asm/swab.h
>  create mode 100644 arch/mips/include/asm/types.h
>  create mode 100644 arch/mips/include/mach/debug_ll.h
>  create mode 100644 arch/mips/lib/.gitignore
>  create mode 100644 arch/mips/lib/Makefile
>  create mode 100644 arch/mips/lib/ashldi3.c
>  create mode 100644 arch/mips/lib/ashrdi3.c
>  create mode 100644 arch/mips/lib/barebox.lds.S
>  create mode 100644 arch/mips/lib/libgcc.h
>  create mode 100644 arch/mips/lib/lshrdi3.c
>  create mode 100644 arch/mips/lib/memory.c
>  create mode 100644 arch/mips/mach-mips.dox
>  create mode 100644 arch/mips/mach-qemu/Kconfig
>  create mode 100644 arch/mips/mach-qemu/Makefile
>  create mode 100644 arch/mips/mach-qemu/csrc-r4k.c
>  create mode 100644 arch/mips/mach-qemu/include/mach/hardware.h
>  create mode 100644 arch/mips/mach-qemu/reset.c
> 
> diff --git a/arch/mips/boards/malta/serial.c b/arch/mips/boards/malta/serial.c
> new file mode 100644
> index 0000000..b3ade0c
> --- /dev/null
> +++ b/arch/mips/boards/malta/serial.c
> @@ -0,0 +1,64 @@
> +/*
> + * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
> + *
> + */
> +
> +#include <common.h>
> +#include <types.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <ns16550.h>
> +#include <mach/hardware.h>
> +#include <asm/io.h>
> +
> +#ifdef CONFIG_DRIVER_SERIAL_NS16550
> +/** to work with the 8250 UART driver implementation we need this function */
> +unsigned int malta_uart_read(unsigned long base, unsigned char reg_idx)
> +{
> +	return readb(base + reg_idx);
> +}
> +
> +/** to work with the 8250 UART driver implementation we need this function */
> +void malta_uart_write(unsigned int val, unsigned long base, unsigned char reg_idx)
> +{
> +	writeb(val, base + reg_idx);
> +}
> +
> +static struct NS16550_plat serial_plat = {
> +       .clock = 1843200, /* no matter */
> +       .f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
> +       .reg_read = malta_uart_read,
> +       .reg_write = malta_uart_write,
> +};
> +
> +/* we are expecting always one serial interface */
> +static struct device_d generic_malta_serial_device = {
> +       .name = "serial_ns16550",
> +       .map_base = DEBUG_LL_UART_ADDR,
> +       .size = 8,
> +       .platform_data = (void *)&serial_plat,
> +};
> +
> +static int malta_console_init(void)
> +{
> +       /* Register the serial port */
> +       return register_device(&generic_malta_serial_device);
> +}
> +console_initcall(malta_console_init);
> +
> +#endif

The whole file is inside CONFIG_DRIVER_SERIAL_NS16550, so you can do
a obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o in the Makefile
instead.

> diff --git a/arch/mips/boot/Kconfig b/arch/mips/boot/Kconfig
> new file mode 100644
> index 0000000..e69de29
> diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
> new file mode 100644
> index 0000000..fd7a745
> --- /dev/null
> +++ b/arch/mips/boot/Makefile
> @@ -0,0 +1,4 @@
> +CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -g -O0 -march=mips64
> +
> +obj-y += head.o
> +obj-y += entry.o

> diff --git a/arch/mips/configs/malta_defconfig b/arch/mips/configs/malta_defconfig

Please generate your defconfig file with make savedefconfig

> diff --git a/arch/mips/include/asm/posix_types.h b/arch/mips/include/asm/posix_types.h
> new file mode 100644
> index 0000000..a7d0c25
> --- /dev/null
> +++ b/arch/mips/include/asm/posix_types.h
> @@ -0,0 +1,48 @@
> +/*
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
> + *
> + */
> +
> +/**
> + * @file
> + * @brief mips posix types
> + *
> + * Minimal set to make all the other header files copied from the Linxu kernel happy

s/Linxu/Linux/

> + */
> +
> +#ifndef _ASM_MIPS_POSIX_TYPES_H
> +#define _ASM_MIPS_POSIX_TYPES_H
> +
> +typedef unsigned long	__kernel_ino_t;
> +typedef unsigned short	__kernel_mode_t;
> +typedef unsigned short	__kernel_nlink_t;
> +typedef long		__kernel_off_t;
> +typedef int		__kernel_pid_t;
> +typedef unsigned int	__kernel_size_t;
> +typedef int		__kernel_ssize_t;
> +typedef int		__kernel_ptrdiff_t;
> +typedef long		__kernel_time_t;
> +typedef long		__kernel_suseconds_t;
> +typedef long		__kernel_clock_t;
> +typedef int		__kernel_daddr_t;
> +typedef char *		__kernel_caddr_t;
> +typedef unsigned short	__kernel_uid16_t;
> +typedef unsigned short	__kernel_gid16_t;
> +typedef unsigned int	__kernel_uid32_t;
> +typedef unsigned int	__kernel_gid32_t;
> +typedef long long	__kernel_loff_t;
> +
> +#endif /* _ASM_MIPS_POSIX_TYPES_H */
> diff --git a/arch/mips/mach-qemu/csrc-r4k.c b/arch/mips/mach-qemu/csrc-r4k.c
> new file mode 100644
> index 0000000..bb54700
> --- /dev/null
> diff --git a/arch/mips/mach-qemu/reset.c b/arch/mips/mach-qemu/reset.c
> new file mode 100644
> index 0000000..c5a2537
> --- /dev/null
> +++ b/arch/mips/mach-qemu/reset.c
> @@ -0,0 +1,34 @@
> +/*
> + * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
> + *
> + */
> +
> +/**
> + * @file
> + * @brief Resetting an CPU
> + */
> +
> +#include <common.h>
> +
> +void reset_cpu(ulong addr)
> +{
> +	/** How to reset the machine? */

I don't know either. We should add some printf here until we know.

> +	while(1)
> +		;
> +}
> +EXPORT_SYMBOL(reset_cpu);
> -- 
> 1.7.5.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
