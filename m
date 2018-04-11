Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6BLe-00052Y-9c
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 08:43:23 +0000
Date: Wed, 11 Apr 2018 10:43:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180411084310.lox3beilymyxhvwb@pengutronix.de>
References: <20180410233805.4191-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180410233805.4191-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: Make use of ALIGN_DOWN macro in barebox-arm.h
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 10, 2018 at 04:38:05PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/include/asm/barebox-arm.h | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 4b270e7de..67e4d964d 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -114,8 +114,7 @@ static inline unsigned long arm_mem_ttb(unsigned long membase,
>  					unsigned long endmem)
>  {
>  	endmem = arm_mem_stack(membase, endmem);
> -	endmem &= ~(SZ_16K - 1);
> -	endmem -= SZ_16K;
> +	endmem = ALIGN_DOWN(endmem, SZ_16K) - SZ_16K;
>  
>  	return endmem;
>  }
> @@ -138,7 +137,7 @@ static inline unsigned long arm_mem_ramoops(unsigned long membase,
>  	endmem = arm_mem_ttb(membase, endmem);
>  #ifdef CONFIG_FS_PSTORE_RAMOOPS
>  	endmem -= CONFIG_FS_PSTORE_RAMOOPS_SIZE;
> -	endmem &= ~(SZ_4K - 1); /* Align to 4K */
> +	endmem = ALIGN_DOWN(endmem, SZ_4K);
>  #endif
>  
>  	return endmem;
> @@ -151,9 +150,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  	endmem = arm_mem_ramoops(membase, endmem);
>  
>  	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
> -		endmem -= size;
> -		endmem &= ~(SZ_1M - 1);
> -		return endmem;
> +		return ALIGN_DOWN(endmem - size, SZ_1M);
>  	} else {
>  		if (TEXT_BASE >= membase && TEXT_BASE < endmem)
>  			return TEXT_BASE;
> -- 
> 2.14.3
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
