Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXglJ-0008K2-Qd
 for barebox@lists.infradead.org; Wed, 28 Oct 2020 08:24:54 +0000
Date: Wed, 28 Oct 2020 09:24:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201028082451.GV26805@pengutronix.de>
References: <20201027061754.29111-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027061754.29111-1-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: bootm: Add lower bound check of kernel in SDRAM
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Oct 27, 2020 at 09:17:54AM +0300, Alexander Shiyan wrote:
> In get_kernel_addresses(), we add the lower bound check of kernel position.
> Kernel address cannot be lower than SDRAM start.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/lib32/bootm.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
> index ad807fb1d..28a645a9d 100644
> --- a/arch/arm/lib32/bootm.c
> +++ b/arch/arm/lib32/bootm.c
> @@ -114,10 +114,11 @@ static int get_kernel_addresses(size_t image_size,
>  		kaddr = mem_start + image_decomp_size;
>  
>  		/*
> -		 * Make sure we do not place the image past the end of the
> +		 * Make sure we do not place the image outside of the
>  		 * available memory.
>  		 */
> -		if (kaddr + image_size + spacing >= mem_end)
> +		if (((kaddr + image_size + spacing) > mem_end) &&
> +		    ((mem_end - image_size - spacing) >= mem_start))
>  			kaddr = mem_end - image_size - spacing;
>  
>  		*load_address = PAGE_ALIGN_DOWN(kaddr);
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
