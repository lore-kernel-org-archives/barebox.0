Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZWH7-0001yA-K3
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 09:37:18 +0000
Date: Mon, 2 Nov 2020 10:37:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201102093715.GV26805@pengutronix.de>
References: <20201101214115.16472-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201101214115.16472-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH v3] commands: import memtester 4.3.0 from Debian GNU/Linux
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Mon, Nov 02, 2020 at 12:41:15AM +0300, Peter Mamonov wrote:
> Memtester is an utility for testing the memory subsystem for faults.  For
> hardware developers, memtester can be told to test memory starting at a
> particular physical address.

Applied with some adjustments, thanks

> +#include <linux/limits.h>
> +
> +#define rand32() random32()
> +
> +#if defined(CONFIG_32BIT)
> +    #define rand_ul() rand32()
> +    #define UL_ONEBITS 0xffffffff
> +    #define UL_LEN 32
> +    #define CHECKERBOARD1 0x55555555
> +    #define CHECKERBOARD2 0xaaaaaaaa
> +    #define UL_BYTE(x) ((x | x << 8 | x << 16 | x << 24))
> +#elif defined(CONFIG_64BIT)
> +    #define rand64() (((ul) rand32()) << 32 | ((ul) rand32()))
> +    #define rand_ul() rand64()
> +    #define UL_ONEBITS 0xffffffffffffffffUL
> +    #define UL_LEN 64
> +    #define CHECKERBOARD1 0x5555555555555555
> +    #define CHECKERBOARD2 0xaaaaaaaaaaaaaaaa
> +    #define UL_BYTE(x) (((ul)x | (ul)x<<8 | (ul)x<<16 | (ul)x<<24 | (ul)x<<32 | (ul)x<<40 | (ul)x<<48 | (ul)x<<56))
> +#else
> +    #error long on this platform is not 32 or 64 bits
> +#endif

CONFIG_32BIT is not always set, only CONFIG_64BIT is. I had to change
this to

#ifdef CONFIG_64BIT
...
#else
...
#endif

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
