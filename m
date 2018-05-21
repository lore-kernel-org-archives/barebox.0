Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKmT4-0002XC-9x
 for barebox@lists.infradead.org; Mon, 21 May 2018 15:11:23 +0000
Date: Mon, 21 May 2018 17:11:09 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180521151109.GC12008@ravnborg.org>
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-10-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180521115438.26493-10-pmamonov@gmail.com>
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
Subject: Re: [PATCH v2 09/12] mips: fix warnings from CPHYSADDR() macro
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 21, 2018 at 02:54:35PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  arch/mips/include/asm/addrspace.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/mips/include/asm/addrspace.h b/arch/mips/include/asm/addrspace.h
> index dc44d7f79..688620472 100644
> --- a/arch/mips/include/asm/addrspace.h
> +++ b/arch/mips/include/asm/addrspace.h
> @@ -48,7 +48,12 @@
>  /*
>   * Returns the physical address of a CKSEGx / XKPHYS address
>   */
> +#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
> +#define CPHYSADDR(a)		((_ACAST64_(a)) & 0x1fffffff)
> +#else
>  #define CPHYSADDR(a)		((_ACAST32_(a)) & 0x1fffffff)
> +#endif
> +
>  #define XPHYSADDR(a)            ((_ACAST64_(a)) &			\
>  				 _CONST64_(0x000000ffffffffff))

If the above cast to phys_addr_t then no ifdef is required?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
