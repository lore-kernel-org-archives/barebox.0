Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USibz-0005EM-CQ
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 06:46:28 +0000
Date: Thu, 18 Apr 2013 08:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130418064625.GF1906@pengutronix.de>
References: <1366204680-3368-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366204680-3368-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] arm: write image checksums into the barebox header
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 17, 2013 at 03:18:00PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  Makefile                                           |   2 +-
>  arch/arm/include/asm/barebox-arm-head.h            |   2 +
>  arch/arm/mach-at91/include/mach/barebox-arm-head.h |   2 +
>  include/filetype.h                                 |   4 +-
>  scripts/.gitignore                                 |   1 +
>  scripts/Makefile                                   |   1 +
>  scripts/bareboxcrc.c                               | 170 +++++++++++++++++++++
>  7 files changed, 180 insertions(+), 2 deletions(-)
>  create mode 100644 scripts/bareboxcrc.c
> 
> diff --git a/Makefile b/Makefile
> index b15c8ce..5b48369 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -668,7 +668,7 @@ define rule_barebox-modpost
>  endef
>  
>  quiet_cmd_objcopy = OBJCOPY $@
> -      cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
> +      cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@ && scripts/bareboxcrc -a $(ARCH) $@

Note this is a duplicate. We have cmd_objcopy also in
scripts/Makefile.lib. One of both should probably be removed before
changing one of them.

Also I think this should not be done in the objcopy step. The caller
should make this explicitly instead. Not every objcopy step needs a crc
step.

Maybe we can even make this step architecture specific. It's a bit
strange to call a crc tool which silently does nothing on most
architectures.

>  
>  OBJCOPYFLAGS_barebox.bin = -O binary
>  
> diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
> index 9d9b854..0f23f69 100644
> --- a/arch/arm/include/asm/barebox-arm-head.h
> +++ b/arch/arm/include/asm/barebox-arm-head.h
> @@ -64,6 +64,8 @@ static inline void barebox_arm_head(void)
>  							 * barebox can skip relocation
>  							 */
>  		".word _barebox_image_size\n"		/* image size to copy */
> +		".word 0xffffffff\n"			/* space for image crc32 */
> +		".word 0xffffffff\n"			/* space for header crc32 */
>  	);
>  }
>  #endif
> diff --git a/arch/arm/mach-at91/include/mach/barebox-arm-head.h b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
> index d4bb96f..acecb41 100644
> --- a/arch/arm/mach-at91/include/mach/barebox-arm-head.h
> +++ b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
> @@ -27,6 +27,8 @@ static inline void barebox_arm_head(void)
>  							 * barebox can skip relocation
>  							 */
>  		".word _barebox_image_size\n"		/* image size to copy */
> +		".word 0xffffffff\n"			/* space for image crc32 */
> +		".word 0xffffffff\n"			/* space for header crc32 */
>  	);
>  }
>  
> diff --git a/include/filetype.h b/include/filetype.h
> index 78ca5d2..89e3a8d 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -35,9 +35,11 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize);
>  enum filetype file_name_detect_type(const char *filename);
>  enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
>  
> -#define ARM_HEAD_SIZE			0x30
> +#define ARM_HEAD_SIZE			0x38
>  #define ARM_HEAD_MAGICWORD_OFFSET	0x20
>  #define ARM_HEAD_SIZE_OFFSET		0x2C
> +#define ARM_HEAD_IMAGE_CRC_OFFSET	0x30
> +#define ARM_HEAD_HEADER_CRC_OFFSET	0x34
>  
>  #ifdef CONFIG_ARM
>  static inline int is_barebox_arm_head(const char *head)
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 1ca6603..971e19f 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -1,4 +1,5 @@
>  bareboxenv
> +bareboxcrc
>  bin2c
>  gen_netx_image
>  kallsyms
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 08b325c..5416db5 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -8,6 +8,7 @@ hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
>  hostprogs-y                      += bin2c
>  hostprogs-y                      += mkimage
>  hostprogs-y                      += bareboxenv
> +hostprogs-y                      += bareboxcrc
>  hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
>  hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
>  hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
> diff --git a/scripts/bareboxcrc.c b/scripts/bareboxcrc.c
> new file mode 100644
> index 0000000..410d040
> --- /dev/null
> +++ b/scripts/bareboxcrc.c
> @@ -0,0 +1,170 @@
> +/*
> + * bareboxcrc.c
> + *
> + * Copyright (C) 2013 Jan Luebbe <j.luebbe@pengutronix.de>
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
> +#include <stdbool.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <getopt.h>
> +#include <endian.h>
> +
> +#include "../include/filetype.h"

I assume you originally wanted to detect the filetype? This include is
unused.

> +#include "../crypto/crc32.c"
> +
> +void usage(char *prgname)
> +{
> +	printf( "Usage : %s [OPTION] FILE\n"
> +		"\n"
> +		"options:\n"
> +		"  -a <arch> image architecture\n"
> +		"  -c        verify checksum\n",
> +		prgname);
> +}
> +
> +bool checksum(FILE *image, bool check, off_t start, off_t length, off_t offset)
> +{
> +	uint8_t *data = malloc(length);
> +	uint32_t crc;
> +	size_t size;
> +	bool result;
> +
> +	if (!data) {
> +		printf("malloc: out of memory\n");
> +		exit(EXIT_FAILURE);
> +	}
> +	

Trailing whitespace

> +	if (fseeko(image, start, SEEK_SET) == -1) {
> +		perror("fseeko");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	size = fread(data, 1, length, image);
> +	if (size < length) {
> +		perror("fread");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	if (fseeko(image, offset, SEEK_SET) == -1) {
> +		perror("fseeko");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	if (check) {
> +		if (fread(&crc, 1, sizeof(uint32_t), image) != sizeof(uint32_t)) {
> +			perror("fread");
> +			exit(EXIT_FAILURE);
> +		}
> +		result = (crc == htobe32(crc32(0, (unsigned char *)data, length)));
> +	} else {
> +		crc = htobe32(crc32(0, (unsigned char *)data, length));
> +		if (fwrite(&crc, 1, sizeof(uint32_t), image) != sizeof(uint32_t)) {
> +			perror("fwrite");
> +			exit(EXIT_FAILURE);
> +		}
> +		result = true;
> +	}
> +
> +	free(data);
> +	return result;
> +}
> +
> +void checksum_arm(FILE *image, bool check, off_t end)
> +{
> +	if (check) {
> +		if (!checksum(image, check, 0, ARM_HEAD_HEADER_CRC_OFFSET, ARM_HEAD_HEADER_CRC_OFFSET))
> +			printf("header verification failed\n");
> +		else if (!checksum(image, check, ARM_HEAD_SIZE, end-ARM_HEAD_SIZE, ARM_HEAD_IMAGE_CRC_OFFSET))
> +			printf("image verification failed\n");
> +		else
> +			printf("image verified\n");

You offer a 'check' option, then you should also make it possible to use
the exit code of this tool to actually check if the check was ok.

> +	} else {
> +		checksum(image, check, ARM_HEAD_SIZE, end-ARM_HEAD_SIZE, ARM_HEAD_IMAGE_CRC_OFFSET);

Add whitespaces left and right to operators

> +		checksum(image, check, 0, ARM_HEAD_HEADER_CRC_OFFSET, ARM_HEAD_HEADER_CRC_OFFSET);
> +	}
> +}
> +
> +int main(int argc, char *argv[])
> +{
> +	FILE *image;
> +	bool check = false;
> +	int opt;
> +	off_t end;
> +	const char* arch = NULL;
> +	

Trailing whitespace

> +	while((opt = getopt(argc, argv, "a:c")) != -1) {
> +		switch (opt) {
> +		case 'a':
> +			arch = optarg;
> +			break;
> +		case 'c':
> +			check = true;
> +			break;
> +		}
> +	}
> +
> +	if (optind >= argc) {
> +		usage(argv[0]);
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	image = fopen(argv[optind], "r+");
> +	if (image == NULL) {
> +		perror("fopen");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	if (fseeko(image, 0, SEEK_END) == -1) {
> +		perror("fseeko");
> +		exit(EXIT_FAILURE);
> +	}
> +	end = ftello(image);
> +	if (end == -1) {
> +		perror("ftello");
> +		exit(EXIT_FAILURE);
> +	}
> +	if (end > 0x100000) {
> +		fprintf(stderr, "error: image should be smaller than 1 MiB\n");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	if (!arch) {
> +		printf("missing architecture (-a)\n");
> +		usage(argv[0]);
> +		exit(EXIT_FAILURE);
> +	} else if (strncasecmp(arch, "arm", 3) == 0) {
> +		checksum_arm(image, check, end);
> +	} 
> +
> +	if (fclose(image) != 0) {
> +		perror("fclose");
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	exit(EXIT_SUCCESS);
> +}
> -- 
> 1.8.2.rc2
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
