Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSjwH-00065D-FV
 for barebox@lists.infradead.org; Fri, 11 May 2012 07:07:58 +0000
Date: Fri, 11 May 2012 09:06:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511070655.GW27341@pengutronix.de>
References: <1336658071-14428-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336658071-14428-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 1/1] ppc io.h: update following MMIO primitives fix
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, May 10, 2012 at 02:54:31PM +0100, Renaud Barbier wrote:
> Following the MMIO primitives fix, the definitions of __raw_* function
> is sourced from Linux and added.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>

Applied, thanks

Sascha

> ---
>  arch/ppc/include/asm/io.h |   28 ++++++++++++++++++++++++++++
>  1 files changed, 28 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/ppc/include/asm/io.h b/arch/ppc/include/asm/io.h
> index 13187ca..0052989 100644
> --- a/arch/ppc/include/asm/io.h
> +++ b/arch/ppc/include/asm/io.h
> @@ -105,6 +105,34 @@ extern void _outsl_ns(volatile u32 *port, const void *buf, int nl);
>  #define iobarrier_w()  eieio()
>  
>  /*
> + * Non ordered and non-swapping "raw" accessors
> + */
> +static inline unsigned char __raw_readb(const volatile void __iomem *addr)
> +{
> +	return *(volatile unsigned char __force *)(addr);
> +}
> +static inline unsigned short __raw_readw(const volatile void __iomem *addr)
> +{
> +	return *(volatile unsigned short __force *)(addr);
> +}
> +static inline unsigned int __raw_readl(const volatile void __iomem *addr)
> +{
> +	return *(volatile unsigned int __force *)(addr);
> +}
> +static inline void __raw_writeb(unsigned char v, volatile void __iomem *addr)
> +{
> +	*(volatile unsigned char __force *)(addr) = v;
> +}
> +static inline void __raw_writew(unsigned short v, volatile void __iomem *addr)
> +{
> +	*(volatile unsigned short __force *)(addr) = v;
> +}
> +static inline void __raw_writel(unsigned int v, volatile void __iomem *addr)
> +{
> +	*(volatile unsigned int __force *)(addr) = v;
> +}
> +
> +/*
>   * 8, 16 and 32 bit, big and little endian I/O operations, with barrier.
>   */
>  extern inline int in_8(volatile u8 *addr)
> -- 
> 1.7.1
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
