Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmJmd-0000JH-EQ
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 07:14:00 +0000
Date: Wed, 4 Jul 2012 09:13:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120704071347.GK2698@pengutronix.de>
References: <1340895137-19689-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340895137-19689-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] scripts/mkublheader: add program to produce an UBL image
 header
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 28, 2012 at 04:52:17PM +0200, Jan Luebbe wrote:
> This image header is used for booting from SPI using the TI User
> Boot Loader (UBL).
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  .gitignore            |    1 +
>  arch/arm/Makefile     |    9 +++++
>  scripts/.gitignore    |    5 ++-
>  scripts/Makefile      |    1 +
>  scripts/mkublheader.c |   99 +++++++++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 113 insertions(+), 2 deletions(-)
>  create mode 100644 scripts/mkublheader.c
> 
> diff --git a/.gitignore b/.gitignore
> index df0ed2c..c75b9ce 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -34,6 +34,7 @@ barebox.bin
>  barebox.srec
>  barebox.netx
>  barebox.s5p
> +barebox.ubl
>  barebox.map
>  System.map
>  Module.symvers
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index bd684dc..53fbd0c 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -183,6 +183,15 @@ ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
>  KBUILD_IMAGE := MLO
>  endif
>  
> +barebox.ubl: barebox.bin
> +	@echo "  UBL    " $@
> +	$(Q)scripts/mkublheader barebox.bin > barebox.ubl
> +	$(Q)cat barebox.bin >> barebox.ubl
> +
> +ifeq ($(CONFIG_ARCH_DAVINCI),y)
> +KBUILD_IMAGE := barebox.ubl
> +endif
> +
>  all: $(KBUILD_IMAGE)
>  
>  archprepare: maketools
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 11fd2df..6e63f85 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -1,6 +1,7 @@
>  bareboxenv
>  bin2c
> -mkimage
> -kallsyms
>  gen_netx_image
> +kallsyms
> +mkimage
> +mkublheader
>  omap_signGP
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 784d205..7ca5e29 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -11,6 +11,7 @@ hostprogs-y                      += bareboxenv
>  hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
>  hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP
>  hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
> +hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
>  
>  always		:= $(hostprogs-y) $(hostprogs-m)
>  
> diff --git a/scripts/mkublheader.c b/scripts/mkublheader.c
> new file mode 100644
> index 0000000..b61630a
> --- /dev/null
> +++ b/scripts/mkublheader.c
> @@ -0,0 +1,99 @@
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
> +#define MAGICNUM 0xa1aced00
> +
> +struct ubl_header
> +{
> +  uint32_t magicNum; /* Expected magic number */
> +  uint32_t epAddr;   /* Entry point of the user application */
> +  uint32_t imgSize;  /* Number of bytes of the application image */
> +  uint32_t imgAddr;  /* SPI memory offset where application image is located */
> +  uint32_t ldAddr;   /* Address where image is copied to */
> +};
> +
> +void usage(char *prgname)
> +{
> +	printf( "Usage : %s [OPTION] FILE > HEADER\n"
> +		"\n"
> +		"options:\n"
> +		"  -a <address> image flash address\n"
> +		"  -e <address> entry point memory address\n"
> +		"  -l <address> load memory address\n",
> +		prgname);
> +}
> +
> +int main(int argc, char *argv[])
> +{
> +	struct stat sb;
> +	struct ubl_header uh;
> +	int opt;
> +	uint32_t imgAddr = 0x00040000 + sizeof(uh);
> +	uint32_t epAddr = 0xc1080000, ldAddr = 0xc1080000;
> +
> +	while((opt = getopt(argc, argv, "ael:")) != -1) {
> +		switch (opt) {
> +		case 'a':
> +			imgAddr = strtoul(optarg, NULL, 0);
> +			break;
> +		case 'e':
> +			epAddr = strtoul(optarg, NULL, 0);
> +			break;
> +		case 'l':
> +			ldAddr = strtoul(optarg, NULL, 0);
> +			break;
> +		}
> +	}
> +
> +	if (optind >= argc) {
> +		usage(argv[0]);
> +		exit(1);
> +	}
> +
> +	if (stat(argv[optind], &sb) == -1) {
> +		perror("stat");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	uh.magicNum = htole32(MAGICNUM);
> +	uh.epAddr = htole32(epAddr);
> +	uh.imgSize = htole32((uint32_t)sb.st_size);
> +	uh.imgAddr = htole32(imgAddr);
> +	uh.ldAddr = htole32(ldAddr);
> +
> +	fwrite(&uh, sizeof(uh), 1, stdout);
> +
> +	exit(EXIT_SUCCESS);
> +}
> -- 
> 1.7.10
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
