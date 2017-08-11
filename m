Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dgATf-00069I-Jq
 for barebox@lists.infradead.org; Fri, 11 Aug 2017 13:59:53 +0000
Message-ID: <1502459967.21055.32.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 11 Aug 2017 15:59:27 +0200
In-Reply-To: <20170811135525.19034-1-linux@rempel-privat.de>
References: <20170811135525.19034-1-linux@rempel-privat.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2] MIPS: add virt_to_phys() and phys_to_virt()
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Am Freitag, den 11.08.2017, 15:55 +0200 schrieb Oleksij Rempel:
> From: Antony Pavlov <antonynpavlov@gmail.com>
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
> changes.
> v2:
>  - make use of use CPHYSADDR and CKSEG0ADDR
> 
>  arch/mips/include/asm/io.h | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
> index 4bee5913a..d4eb623c3 100644
> --- a/arch/mips/include/asm/io.h
> +++ b/arch/mips/include/asm/io.h
> @@ -12,11 +12,46 @@
>  
>  #include <linux/compiler.h>
>  #include <asm/types.h>
> +#include <asm/addrspace.h>
>  #include <asm/byteorder.h>
>  
>  void dma_flush_range(unsigned long, unsigned long);
>  void dma_inv_range(unsigned long, unsigned long);
>  
> +/*
> + *     virt_to_phys    -       map virtual addresses to physical
> + *     @address: address to remap
> + *
> + *     The returned physical address is the physical (CPU) mapping for
> + *     the memory address given. It is only valid to use this function on
> + *     addresses directly mapped or allocated via kmalloc.

The last sentence in this...

> + *     This function does not give bus mappings for DMA transfers. In
> + *     almost all conceivable cases a device driver should not be using
> + *     this function
> + */
> +static inline unsigned long virt_to_phys(const void *address)
> +{
> +	return (unsigned long)CPHYSADDR(address);
> +}
> +
> +/*
> + *     phys_to_virt    -       map physical address to virtual
> + *     @address: address to remap
> + *
> + *     The returned virtual address is a current CPU mapping for
> + *     the memory address given. It is only valid to use this function on
> + *     addresses that have a kernel mapping

... and this paragraph have no meaning Barebox at all.

> + *     This function does not handle bus mappings for DMA transfers. In
> + *     almost all conceivable cases a device driver should not be using
> + *     this function
> + */
> +static inline void *phys_to_virt(unsigned long address)
> +{
> +	return (void *)CKSEG0ADDR(address);
> +}
> +
>  #define	IO_SPACE_LIMIT	0
>  
>  /*****************************************************************************/



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
