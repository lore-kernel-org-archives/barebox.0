Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYP4Q-00072L-4n
 for barebox@lists.infradead.org; Tue, 12 May 2020 07:11:19 +0000
Date: Tue, 12 May 2020 09:11:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200512071114.GX5877@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
 <20200511072140.29610-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511072140.29610-5-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 04/23] include: io.h: provide (in|out)_(le|be)(16|32)
 helpers for all archs
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 11, 2020 at 09:21:21AM +0200, Ahmad Fatoum wrote:
> These U-Boot style bitwise operations macros will be needed for
> COMPILE_TEST-compiled drivers on platforms except for ARM. Add fallback
> definitions there, based on the ARM ones.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/asm-generic/io.h | 138 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 138 insertions(+)
> 
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index 76e6d0dc1112..84bf0064d8b8 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -424,4 +424,142 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
>  #define IOMEM(addr)	((void __force __iomem *)(addr))
>  #endif
>  
> +/*
> + * Clear and set bits in one shot. These macros can be used to clear and
> + * set multiple bits in a register using a single call. These macros can
> + * also be used to set a multiple-bit bit pattern using a mask, by
> + * specifying the mask in the 'clear' parameter and the new bit pattern
> + * in the 'set' parameter.
> + */
> +
> +#ifndef out_arch
> +#define out_arch(type,endian,a,v)	__raw_write##type(cpu_to_##endian(v),a)
> +#endif

Better add these to a separate file in case we want to sync io.h with
Linux?

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
