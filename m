Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1deo96-0006qa-Ax
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 19:57:02 +0000
Received: by mail-lf0-x244.google.com with SMTP id o85so1001894lff.1
 for <barebox@lists.infradead.org>; Mon, 07 Aug 2017 12:56:37 -0700 (PDT)
Date: Mon, 7 Aug 2017 22:56:21 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20170807195621.myx26ctlfm4jllie@zacate>
References: <20170807143927.1641-1-linux@rempel-privat.de>
 <20170807143927.1641-4-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170807143927.1641-4-linux@rempel-privat.de>
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
Subject: Re: [PATCH v2 04/13] MIPS: add virt_to_phys() and phys_to_virt()
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,

On Mon, Aug 07, 2017 at 04:39:18PM +0200, Oleksij Rempel wrote:
> From: Antony Pavlov <antonynpavlov@gmail.com>
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  arch/mips/include/asm/io.h | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
> index 4bee5913a..993b30e2a 100644
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
> + *
> + *     This function does not give bus mappings for DMA transfers. In
> + *     almost all conceivable cases a device driver should not be using
> + *     this function
> + */
> +static inline unsigned long virt_to_phys(const void *address)
> +{
> +	return (unsigned long)address & 0x1fffffff;

Guess we can use CPHYSADDR() macros here, which is available in barebox.

> +}
> +
> +/*
> + *     phys_to_virt    -       map physical address to virtual
> + *     @address: address to remap
> + *
> + *     The returned virtual address is a current CPU mapping for
> + *     the memory address given. It is only valid to use this function on
> + *     addresses that have a kernel mapping
> + *
> + *     This function does not handle bus mappings for DMA transfers. In
> + *     almost all conceivable cases a device driver should not be using
> + *     this function
> + */
> +static inline void *phys_to_virt(unsigned long address)
> +{
> +	return (void *)(KSEG0 | (address & 0x1fffffff));

Same here: there is a CKSEG0ADDR() macros available in barebox.

> +}
> +
>  #define	IO_SPACE_LIMIT	0
>  
>  /*****************************************************************************/
> -- 
> 2.11.0
> 

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
