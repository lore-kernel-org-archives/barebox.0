Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QlBdL-0000gk-3j
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 03:15:08 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 0D6E3FFBCFB
	for <barebox@lists.infradead.org>;
	Mon, 25 Jul 2011 05:15:56 +0200 (CEST)
Date: Mon, 25 Jul 2011 04:57:51 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110725025751.GC10295@game.jcrosoft.org>
References: <1311535336-4534-1-git-send-email-antonynpavlov@gmail.com>
	<1311535336-4534-7-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311535336-4534-7-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 08/10] MIPS: add initial D-Link DIR-320 wireless router
	support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 23:22 Sun 24 Jul     , Antony Pavlov wrote:
> Can be started from CFE using tftp, e.g.:
> 
>   CFE> ifconfig eth0 -addr=192.168.0.99
>   CFE> boot -tftp -addr=a0800000 -raw 192.168.0.1:barebox.bin
how abaut put this in doxygen?
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/Makefile                        |    1 +
>  arch/mips/boards/dlink-dir-320/Kconfig    |    6 +++
>  arch/mips/boards/dlink-dir-320/Makefile   |    1 +
>  arch/mips/boards/dlink-dir-320/config.h   |   19 ++++++++++
>  arch/mips/boards/dlink-dir-320/serial.c   |   52 +++++++++++++++++++++++++++++
>  arch/mips/configs/dlink-dir-320_defconfig |   46 +++++++++++++++++++++++++
>  arch/mips/mach-bcm47xx/Kconfig            |    5 +++
>  7 files changed, 130 insertions(+), 0 deletions(-)
>  create mode 100644 arch/mips/boards/dlink-dir-320/Kconfig
>  create mode 100644 arch/mips/boards/dlink-dir-320/Makefile
>  create mode 100644 arch/mips/boards/dlink-dir-320/config.h
>  create mode 100644 arch/mips/boards/dlink-dir-320/serial.c
>  create mode 100644 arch/mips/configs/dlink-dir-320_defconfig
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index b3554d2..86b4b80 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -38,6 +38,7 @@ machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
>  board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
>  
>  machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
> +board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
>  
>  machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
>  
> diff --git a/arch/mips/boards/dlink-dir-320/Kconfig b/arch/mips/boards/dlink-dir-320/Kconfig
> new file mode 100644
> index 0000000..0393d04
> --- /dev/null
> +++ b/arch/mips/boards/dlink-dir-320/Kconfig
> @@ -0,0 +1,6 @@
> +if BOARD_DLINK_DIR320
> +
> +config BOARDINFO
> +	default "D-Link DIR-320"
> +
> +endif
> diff --git a/arch/mips/boards/dlink-dir-320/Makefile b/arch/mips/boards/dlink-dir-320/Makefile
> new file mode 100644
> index 0000000..ff1a655
> --- /dev/null
> +++ b/arch/mips/boards/dlink-dir-320/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
> diff --git a/arch/mips/boards/dlink-dir-320/config.h b/arch/mips/boards/dlink-dir-320/config.h
> new file mode 100644
> index 0000000..eb4ab08
> --- /dev/null
> +++ b/arch/mips/boards/dlink-dir-320/config.h
> @@ -0,0 +1,19 @@
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
> +/* nothing special yet */
> diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/dlink-dir-320/serial.c
> new file mode 100644
> index 0000000..0ed42de
> --- /dev/null
> +++ b/arch/mips/boards/dlink-dir-320/serial.c
> @@ -0,0 +1,52 @@
> +/*
> + * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> + */
> +
> +#include <common.h>
> +#include <types.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <ns16550.h>
> +#include <mach/hardware.h>
> +#include <asm/io.h>
> +#include <asm/common.h>
> +
> +NS16550_READ_WRITE_UART_FUNC(dir320, 0, 0)
> +
> +static struct NS16550_plat serial_plat = {
> +	.clock = 25804800,
> +	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
> +	.reg_read = dir320_uart_read,
> +	.reg_write = dir320_uart_write,
> +};
> +
> +/* we are expecting always one serial interface */
> +static struct device_d dir320_serial_device = {
> +	.name = "serial_ns16550",
> +	.map_base = DEBUG_LL_UART_ADDR,
> +	.size = 8,
> +	.platform_data = (void *)&serial_plat,
> +};
please rebase this against next branch

map_base and size are depricated

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
