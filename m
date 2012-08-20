Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3T9l-00009I-93
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:40:43 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id E411AFF8F47
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2012 16:47:37 +0200 (CEST)
Date: Mon, 20 Aug 2012 16:40:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120820144048.GW6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-3-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345472428-17417-3-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 02/13] scripts: add tool to create image for SPI boot
 on AM35xx
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> Booting from SPI on an AM35xx (and possibly other TI SOCs) requires
> a special format:
> 
> - 32 bit image size in big-endian
> - 32 bit load address in big-endian
> - binary image converted from little- to big-endian
> 
> The mk-am35xx-spi-image tool converts barebox.bin to
> this format.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/Makefile             |    8 +++
>  arch/arm/mach-omap/Kconfig    |    7 +++
>  scripts/.gitignore            |    5 +-
>  scripts/Makefile              |    2 +-
>  scripts/mk-am35xx-spi-image.c |  126 +++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 145 insertions(+), 3 deletions(-)
>  create mode 100644 scripts/mk-am35xx-spi-image.c
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 1225df7..c2eb598 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -186,6 +186,14 @@ endif
>  
>  all: $(KBUILD_IMAGE)
>  
> +barebox.spi: barebox.bin
> +	@echo "  SPI    " $@
> +	$(Q)scripts/mk-am35xx-spi-image barebox.bin > barebox.spi
you need to use cmd_ style and be in sync wtih the next branch

> +
> +ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
> +all: barebox.spi
> +endif
> +
>  archprepare: maketools
>  maketools:
>  	$(Q)$(MAKE) $(build)=arch/arm/tools include/generated/mach-types.h
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 386c484..aa9ab8c 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -91,6 +91,13 @@ config OMAP_BUILD_IFT
>  	prompt "build ift binary"
>  	bool
>  
> +config OMAP_BUILD_SPI
> +	prompt "build SPI binary"
> +	bool
> +	help
> +	  Say Y here if you want to build an barebox.spi image as used
> +	  on the AM35xx chips when booting form SPI NOR flash.
> +
>  config ARCH_TEXT_BASE
>  	hex
>  	default 0x80e80000 if MACH_OMAP343xSDP
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 11fd2df..8772205 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -1,6 +1,7 @@
>  bareboxenv
>  bin2c
> -mkimage
> -kallsyms
>  gen_netx_image
> +kallsyms
> +mk-am35xx-spi-image
> +mkimage
>  omap_signGP
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 784d205..9b6b628 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -9,7 +9,7 @@ hostprogs-y                      += bin2c
>  hostprogs-y                      += mkimage
>  hostprogs-y                      += bareboxenv
>  hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
> -hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP
> +hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
>  hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
>  
>  always		:= $(hostprogs-y) $(hostprogs-m)
> diff --git a/scripts/mk-am35xx-spi-image.c b/scripts/mk-am35xx-spi-image.c
> new file mode 100644
> index 0000000..133f2b7
> --- /dev/null
> +++ b/scripts/mk-am35xx-spi-image.c
> @@ -0,0 +1,126 @@
> +/*
> + * mkublheader.c - produce the header needed to load barebox on OMAP-L138
> + *
> + * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License along
> + * with this program; if not, write to the Free Software Foundation, Inc.,
> + * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> + */
> +
> +#define _BSD_SOURCE
> +
> +#include <stdio.h>
> +#include <sys/types.h>
> +#include <sys/stat.h>
> +#include <fcntl.h>
> +#include <unistd.h>
> +#include <stdint.h>
> +#include <limits.h>
> +#include <errno.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <getopt.h>
> +#include <endian.h>
> +
> +void usage(char *prgname)
> +{
> +	printf("usage: %s [OPTION] FILE > IMAGE\n"
> +	       "\n"
> +	       "options:\n"
> +	       "  -a <address> memory address for the loaded image in SRAM\n",
> +	       prgname);
> +}
> +
> +int main(int argc, char *argv[])
> +{
> +	FILE *input;
> +	int opt;
> +	off_t pos;
> +	size_t size;
> +	uint32_t addr = 0x40200000;
> +	uint32_t temp;
> +
> +	while((opt = getopt(argc, argv, "a:")) != -1) {
> +		switch (opt) {
> +		case 'a':
> +			addr = strtoul(optarg, NULL, 0);
> +			break;
> +		}
> +	}
> +
> +	if (optind >= argc) {
> +		usage(argv[0]);
> +		exit(1);
> +	}
> +
> +	input = fopen(argv[optind], "r");
> +	if (input == NULL) {
> +		perror("fopen");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	if (fseeko(input, 0, SEEK_END) == -1) {
> +		perror("fseeko");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	pos = ftello(input);
> +	if (pos == -1) {
> +		perror("ftello");
> +		exit(EXIT_FAILURE);
> +	}
> +	if (pos % 4) {
> +		printf("error: image size must be a multiple of 4 bytes\n");
> +		exit(EXIT_FAILURE);
> +	}
> +	if (pos > 0x100000) {
> +		printf("error: image should be smaller than 1 MiB\n");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	if (fseeko(input, 0, SEEK_SET) == -1) {
> +		perror("fseeko");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	/* image size */
> +	temp = htobe32((uint32_t)pos);
> +	fwrite(&temp, sizeof(uint32_t), 1, stdout);
> +
> +	/* memory address */
> +	temp = htobe32(addr);
> +	fwrite(&temp, sizeof(uint32_t), 1, stdout);
why this??

you just need to create a PRE_IMAGE

so no need ot this

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
