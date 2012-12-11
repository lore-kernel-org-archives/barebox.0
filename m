Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TiMFP-0006iy-Fq
 for barebox@lists.infradead.org; Tue, 11 Dec 2012 09:35:32 +0000
Date: Tue, 11 Dec 2012 10:35:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121211093528.GR10369@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
 <1355127255-24797-7-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355127255-24797-7-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 06/10] lib: add ubiutils-common
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 10, 2012 at 09:14:11AM +0100, Wolfram Sang wrote:
> Imported from mtd-utils and stripped down to needed functionality for
> ubiformat.
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  include/mtd/ubiutils-common.h |   26 +++++++++
>  lib/Kconfig                   |    3 +
>  lib/Makefile                  |    1 +
>  lib/ubiutils-common.c         |  122 +++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 152 insertions(+)
>  create mode 100644 include/mtd/ubiutils-common.h
>  create mode 100644 lib/ubiutils-common.c
> 
> diff --git a/include/mtd/ubiutils-common.h b/include/mtd/ubiutils-common.h
> new file mode 100644
> index 0000000..3a16617
> --- /dev/null
> +++ b/include/mtd/ubiutils-common.h
> @@ -0,0 +1,26 @@
> +/*
> + * Copyright (c) Artem Bityutskiy, 2007, 2008
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
> + * the GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + */
> +
> +#ifndef __UBI_UTILS_COMMON_H__
> +#define __UBI_UTILS_COMMON_H__
> +
> +long long ubiutils_get_bytes(const char *str);
> +void ubiutils_print_bytes(long long bytes, int bracket);
> +
> +#endif /* !__UBI_UTILS_COMMON_H__ */
> +
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 13ecab0..b2d72df 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -41,6 +41,9 @@ config QSORT
>  config XYMODEM
>  	bool
>  
> +config UBIUTILS
> +	bool
> +
>  source lib/gui/Kconfig
>  
>  endmenu
> diff --git a/lib/Makefile b/lib/Makefile
> index eb0af92..76ca1db 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -34,5 +34,6 @@ obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
>  obj-$(CONFIG_BCH)	+= bch.o
>  obj-$(CONFIG_BITREV)	+= bitrev.o
>  obj-$(CONFIG_QSORT)	+= qsort.o
> +obj-$(CONFIG_UBIUTILS)	+= ubiutils-common.o
>  obj-y			+= gui/
>  obj-$(CONFIG_XYMODEM)	+= xymodem.o
> diff --git a/lib/ubiutils-common.c b/lib/ubiutils-common.c
> new file mode 100644
> index 0000000..d01e723
> --- /dev/null
> +++ b/lib/ubiutils-common.c
> @@ -0,0 +1,122 @@
> +/*
> + * Copyright (C) 2007, 2008 Nokia Corporation
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
> + * the GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + */
> +
> +/*
> + * This file contains various common stuff used by UBI utilities.
> + *
> + * Authors: Artem Bityutskiy
> + *          Adrian Hunter
> + */
> +
> +#include <common.h>
> +#include <stdlib.h>
> +#include <string.h>
> +
> +/**
> + * get_multiplier - convert size specifier to an integer multiplier.
> + * @str: the size specifier string
> + *
> + * This function parses the @str size specifier, which may be one of
> + * 'KiB', 'MiB', or 'GiB' into an integer multiplier. Returns positive
> + * size multiplier in case of success and %-1 in case of failure.
> + */
> +static int get_multiplier(const char *str)
> +{
> +	if (!str)
> +		return 1;
> +
> +	/* Remove spaces before the specifier */
> +	while (*str == ' ' || *str == '\t')
> +		str += 1;
> +
> +	if (!strcmp(str, "KiB"))
> +		return 1024;
> +	if (!strcmp(str, "MiB"))
> +		return 1024 * 1024;
> +	if (!strcmp(str, "GiB"))
> +		return 1024 * 1024 * 1024;
> +
> +	return -1;
> +}
> +
> +/**
> + * ubiutils_get_bytes - convert a string containing amount of bytes into an
> + * integer
> + * @str: string to convert
> + *
> + * This function parses @str which may have one of 'KiB', 'MiB', or 'GiB'
> + * size specifiers. Returns positive amount of bytes in case of success and %-1
> + * in case of failure.
> + */
> +long long ubiutils_get_bytes(const char *str)
> +{
> +	char *endp;
> +	long long bytes = simple_strtoull(str, &endp, 0);
> +
> +	if (endp == str || bytes < 0) {
> +		fprintf(stderr, "incorrect amount of bytes: \"%s\"\n", str);
> +		return -1;
> +	}
> +
> +	if (*endp != '\0') {
> +		int mult = get_multiplier(endp);
> +
> +		if (mult == -1) {
> +			fprintf(stderr, "bad size specifier: \"%s\" - "
> +			        "should be 'KiB', 'MiB' or 'GiB'\n", endp);
> +			return -1;
> +		}
> +		bytes *= mult;
> +	}
> +
> +	return bytes;
> +}

In barebox we have the strtoull_suffix function. We normally accept 'G',
'M' and 'k' suffixes. Restricting the ubi functions to '*iB' suffixes
might be confusing for barebox users. Not accepting '*iB' suffixes might
be confusing to UBI tool users. How about extending strtoull_suffix to
accept '*iB' suffixes and use it here? It seems the all that's missing
is to adjust *endp to skip the additional 'iB'

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
