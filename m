Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZABSN-0003X0-5N
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 06:25:15 +0000
Date: Wed, 1 Jul 2015 08:24:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150701062451.GB18611@pengutronix.de>
References: <CAA4bVAH3Qk2Fmv5X9fdkqto+b2D+qyXMXQenaffyau_Oc_ewkA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAH3Qk2Fmv5X9fdkqto+b2D+qyXMXQenaffyau_Oc_ewkA@mail.gmail.com>
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
Subject: Re: big-endian sandbox issue
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Jul 01, 2015 at 07:55:05AM +0300, Antony Pavlov wrote:
> Hi!
> 
> I have tried to build barebox on big-endian MIPS CPU running Debian 8.
> It fails because of unconditional <linux/byteorder/little_endian.h> inclusion.
> 
> At the first glance this can help:
> 
> --- a/arch/sandbox/include/asm/byteorder.h
> +++ b/arch/sandbox/include/asm/byteorder.h
> @@ -3,6 +3,12 @@
> 
>  #include <asm/types.h>
> 
> +#if __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
> +#include <linux/byteorder/big_endian.h>
> +#elif __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
>  #include <linux/byteorder/little_endian.h>
> +#else
> +#error "__BYTE_ORDER__ != __ORDER_BIG_ENDIAN__ and __BYTE_ORDER__ !=
> __ORDER_LITTLE_ENDIAN__"
> +#endif

This change seems ok.

> 
>  #endif /* _I386_BYTEORDER_H */
> 
> But some warning appears:
> 
> In file included from common/filetype.c:21:0:
> /barebox.git/arch/sandbox/include/asm/unaligned.h:11:21: warning:
> "__LITTLE_ENDIAN" is not defined [-Wundef]
>  #if __BYTE_ORDER == __LITTLE_ENDIAN

This should be #ifdef __LITTLE_ENDIAN

The authoritive answer to this is in include/common.h:

/*
 * sanity check. The Linux Kernel defines only one of __LITTLE_ENDIAN and
 * __BIG_ENDIAN. Endianess can then be tested with #ifdef __xx_ENDIAN. Userspace
 * always defined both __LITTLE_ENDIAN and __BIG_ENDIAN and byteorder can then
 * be tested with #if __BYTE_ORDER == __xx_ENDIAN.
 *
 * As we tend to use a lot of Kernel code in barebox we use the kernel way of
 * determing the byte order. Make sure here that architecture code properly
 * defines it.
 */
#include <asm/byteorder.h>
#if defined __LITTLE_ENDIAN && defined __BIG_ENDIAN
#error "both __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
#endif
#if !defined __LITTLE_ENDIAN && !defined __BIG_ENDIAN
#error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
#endif

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
