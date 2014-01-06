Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W05Xf-0003Qp-P9
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 08:28:12 +0000
Date: Mon, 6 Jan 2014 09:22:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140106082246.GB3677@pengutronix.de>
References: <1388556040-4208-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1388556040-4208-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] mips asm/types.h: add #ifndef to fix compile error
To: u74147@gmail.com
Cc: barebox@lists.infradead.org

On Wed, Jan 01, 2014 at 02:00:40PM +0800, u74147@gmail.com wrote:
> From: Du Huanpeng <u74147@gmail.com>
> 
> without "#ifndef __ASSEMBLY__ #endif", an assembly file
> including this file will break compilation.
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/include/asm/types.h |    4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/mips/include/asm/types.h b/arch/mips/include/asm/types.h
> index f5373cc..b63687d 100644
> --- a/arch/mips/include/asm/types.h
> +++ b/arch/mips/include/asm/types.h
> @@ -13,6 +13,8 @@
>  
>  #include <asm-generic/int-ll64.h>
>  
> +#ifndef __ASSEMBLY__
> +
>  #if (defined(CONFIG_HIGHMEM) && defined(CONFIG_64BIT_PHYS_ADDR)) \
>      || defined(CONFIG_64BIT)
>  typedef u64 dma_addr_t;
> @@ -21,6 +23,8 @@ typedef u32 dma_addr_t;
>  #endif
>  typedef u64 dma64_addr_t;
>  
> +#endif /* __ASSEMBLY__ */
> +
>  /*
>   * We don't use int-l64.h for the kernel anymore but still use it for
>   * userspace to avoid code changes.
> -- 
> 1.7.9.5
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
