Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhDBw-00052t-8k
 for barebox@lists.infradead.org; Tue, 28 May 2013 06:15:29 +0000
Date: Tue, 28 May 2013 08:15:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130528061506.GR32299@pengutronix.de>
References: <1369392445-30230-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369392445-30230-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC, EXPERIMENTAL] MIPS: add initial cache support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Fri, May 24, 2013 at 02:47:25PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/include/asm/cache.h    |    8 +
>  arch/mips/include/asm/cacheops.h |   78 +++++++
>  arch/mips/include/asm/cpu-info.h |    1 +
>  arch/mips/include/asm/io.h       |   66 ++++++
>  arch/mips/include/asm/r4kcache.h |  443 ++++++++++++++++++++++++++++++++++++++
>  arch/mips/lib/Makefile           |    1 +
>  arch/mips/lib/c-r4k.c            |   97 +++++++++
>  arch/mips/lib/dma.c              |   27 +++
>  include/linux/const.h            |   24 +++
>  9 files changed, 745 insertions(+)
>  create mode 100644 arch/mips/include/asm/cache.h
>  create mode 100644 arch/mips/include/asm/cacheops.h
>  create mode 100644 arch/mips/include/asm/r4kcache.h
>  create mode 100644 arch/mips/lib/dma.c
>  create mode 100644 include/linux/const.h
> 
> diff --git a/arch/mips/lib/dma.c b/arch/mips/lib/dma.c
> new file mode 100644
> index 0000000..0ca53f1
> --- /dev/null
> +++ b/arch/mips/lib/dma.c
> @@ -0,0 +1,27 @@
> +#include <common.h>
> +#include <asm/io.h>
> +#include <asm/mipsregs.h>
> +#include <malloc.h>
> +
> +static inline void __iomem *ioremap_nocache(phys_t offset, unsigned long size)
> +{
> +	return (void __iomem *) (unsigned long)CKSEG1ADDR(offset);
> +}
> +
> +void *dma_alloc_coherent(size_t size)
> +{
> +	void *ret;
> +
> +	ret = xmemalign(4096, size);
> +
> +	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);

Is this needed? I mean you return the corresponding CKSEG1ADDR anyway
which should be coherent memory.

> +
> +	ret = ioremap_nocache((phys_t)ret, size);
> +
> +	return ret;
> +}
> +
> +void dma_free_coherent(void *mem, size_t size)
> +{
> +	free(mem);
> +}

I would expect to invalidate the cache here instead.

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
