Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OwGmd-0000tr-5V
	for barebox@lists.infradead.org; Thu, 16 Sep 2010 15:54:01 +0000
Date: Thu, 16 Sep 2010 17:53:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100916155357.GB1473@pengutronix.de>
References: <20100909135543.GF9112@game.jcrosoft.org>
	<1284040793-32145-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1284040793-32145-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/7] add sha1 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 09, 2010 at 03:59:49PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  lib/Kconfig  |    3 +
>  lib/Makefile |    1 +
>  lib/sha1.c   |  396 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 400 insertions(+), 0 deletions(-)
>  create mode 100644 lib/sha1.c
> 
> diff --git a/lib/Kconfig b/lib/Kconfig
> index e8776a7..650e86c 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -19,6 +19,9 @@ config MD5
>  	bool "MD5"
>  	default y
>  
> +config SHA1
> +	bool "SHA1"
> +
>  endif
>  
>  config GENERIC_FIND_NEXT_BIT
> diff --git a/lib/Makefile b/lib/Makefile
> index 6a1fb5d..6f79d03 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -35,3 +35,4 @@ obj-y			+= show_progress.o
>  obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
>  obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
>  obj-$(CONFIG_MD5)	+= md5.o
> +obj-$(CONFIG_SHA1)	+= sha1.o
> diff --git a/lib/sha1.c b/lib/sha1.c
> new file mode 100644
> index 0000000..00dcc78
> --- /dev/null
> +++ b/lib/sha1.c
> @@ -0,0 +1,396 @@
> +/*
> + *  Heiko Schocher, DENX Software Engineering, hs@denx.de.
> + *  based on:
> + *  FIPS-180-1 compliant SHA-1 implementation
> + *
> + *  Copyright (C) 2003-2006  Christophe Devine
> + *
> + *  This library is free software; you can redistribute it and/or
> + *  modify it under the terms of the GNU Lesser General Public
> + *  License, version 2.1 as published by the Free Software Foundation.
> + *
> + *  This library is distributed in the hope that it will be useful,
> + *  but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> + *  Lesser General Public License for more details.
> + *
> + *  You should have received a copy of the GNU Lesser General Public
> + *  License along with this library; if not, write to the Free Software
> + *  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
> + *  MA  02110-1301  USA
> + */
> +/*
> + *  The SHA-1 standard was published by NIST in 1993.
> + *
> + *  http://www.itl.nist.gov/fipspubs/fip180-1.htm
> + */
> +
> +#include <common.h>
> +#include <digest.h>
> +#include <init.h>
> +#include <linux/string.h>
> +
> +#define SHA1_SUM_POS	-0x20
> +#define SHA1_SUM_LEN	20
> +
> +typedef struct
> +{
> +    unsigned long total[2];	/*!< number of bytes processed	*/
> +    unsigned long state[5];	/*!< intermediate digest state	*/
> +    unsigned char buffer[64];	/*!< data block being processed */
> +}
> +sha1_context;
> +
> +/*
> + * 32-bit integer manipulation macros (big endian)
> + */
> +#ifndef GET_UINT32_BE
> +#define GET_UINT32_BE(n,b,i) {				\
> +	(n) = ( (unsigned long) (b)[(i)    ] << 24 )	\
> +	    | ( (unsigned long) (b)[(i) + 1] << 16 )	\
> +	    | ( (unsigned long) (b)[(i) + 2] <<  8 )	\
> +	    | ( (unsigned long) (b)[(i) + 3]       );	\
> +}
> +#endif
> +#ifndef PUT_UINT32_BE
> +#define PUT_UINT32_BE(n,b,i) {				\
> +	(b)[(i)    ] = (unsigned char) ( (n) >> 24 );	\
> +	(b)[(i) + 1] = (unsigned char) ( (n) >> 16 );	\
> +	(b)[(i) + 2] = (unsigned char) ( (n) >>  8 );	\
> +	(b)[(i) + 3] = (unsigned char) ( (n)       );	\
> +}
> +#endif

Isn't cpu_to_be32 a better weapon here?

The corresponding kernel code looks cleaner to me. Have you considered
using it?

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
