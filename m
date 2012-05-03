Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQ0Km-0001Du-0G
 for barebox@lists.infradead.org; Thu, 03 May 2012 18:00:57 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 3 May 2012 19:59:56 +0200
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <1336050844-7043-5-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1336050844-7043-5-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205031959.57093.jbe@pengutronix.de>
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
Subject: Re: [PATCH 4/4] S5PV210 iROM magic boot code
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Alexey Galakhov wrote:
> [...]
> diff --git a/arch/arm/mach-samsung/s5p-irom-boot.c b/arch/arm/mach-samsung/s5p-irom-boot.c
> new file mode 100644 
> index 0000000..8fa0de4
> --- /dev/null
> +++ b/arch/arm/mach-samsung/s5p-irom-boot.c
> @@ -0,0 +1,64 @@
> +/*
> + * Copyright (C) 2012 Alexey Galakhov
> + *
> + * Based on code from u-boot found somewhere on the web
> + * that seems to originate from Samsung
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
> + */
> +
> +#include <config.h>
> +#include <common.h>
> +#include <init.h>
> +#include <mach/s3c-generic.h>
> +
> +/*
> + * These magical address values are from u-boot
> + * Not sure what they really mean but they work
> + */
> +#if 1 /* S5PV210 and other CPUs */
> +# define MADDR_CH 0xD0037488
> +# define MADDR_CP 0xD0037F98
> +#else /* not sure when, some older CPUs */
> +# define MADDR_CH 0xD003A508
> +# define MADDR_CP 0xD003E008
> +#endif
> +
> +typedef uint32_t (*mmc2mem_func)
> +(uint32_t channel, uint32_t start_block, uint16_t block_count, uint32_t *dest, uint32_t init);
> + 
> +/*
> + * Call to the magical iROM code present on S5P CPUs
> + * Block seems to be 512 bytes
> + */
> +int __bare_init s5p_irom_mmc_load(void *dest, uint32_t start_block, uint16_t block_count)
> +{ 
> +	uint32_t ret;
> +	uint32_t chan;
> +	uint32_t ch = *(volatile uint32_t*)(MADDR_CH);
> +	mmc2mem_func cp_func = (mmc2mem_func)(*(uint32_t*)(MADDR_CP));
> +	switch (ch)
> +	{
> +	case 0xEB000000:
> +		chan = 0;
> +		break;
> +	case 0xEB200000:
> +		chan = 2;
> +		break;
> +	default:
> +		return 0;
> +	}
> +
> +	ret = cp_func(chan, start_block, block_count, (uint32_t*)dest, 0);
> +	if (ret == 0)
> +		return 0; /* error */
> +	return 1;
> +}

It seems to be a low hanging fruit to use the iROM to access some of the
peripherals. But there is no way to tell the compiler the calling convention
to the ROM functions. And the entry points seems guessed only. This results
into "it works for me with this compiler and these compiler flags and that
CPU's silicon revision"...

The S3C6410 CPU comes also with such an iROM. But calling it is only useful in
the first stage loader (and the S3C6410 iROM has a defined jump table to
call specific functions, there is no need to guess the real entry points).

Writing a Barebox driver for this MMC/SD unit instead should be the correct
way.

Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
