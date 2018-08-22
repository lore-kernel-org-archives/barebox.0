Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsNQ8-0003MR-IW
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:19:15 +0000
Date: Wed, 22 Aug 2018 09:19:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822071900.vjcaetctvyyuetbr@pengutronix.de>
References: <20180821062717.17744-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821062717.17744-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: cache-l2x0: Make use of IS_ALIGNED and ALIGN_DOWN
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2018 at 11:27:17PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/cache-l2x0.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/cache-l2x0.c b/arch/arm/cpu/cache-l2x0.c
> index 8e0fff66d..e975ecffc 100644
> --- a/arch/arm/cpu/cache-l2x0.c
> +++ b/arch/arm/cpu/cache-l2x0.c
> @@ -60,14 +60,14 @@ static inline void l2x0_inv_all(void)
>  
>  static void l2x0_inv_range(unsigned long start, unsigned long end)
>  {
> -	if (start & (CACHE_LINE_SIZE - 1)) {
> -		start &= ~(CACHE_LINE_SIZE - 1);
> +	if (!IS_ALIGNED(start, CACHE_LINE_SIZE)) {
> +		start = ALIGN_DOWN(start, CACHE_LINE_SIZE);
>  		l2x0_flush_line(start);
>  		start += CACHE_LINE_SIZE;
>  	}
>  
> -	if (end & (CACHE_LINE_SIZE - 1)) {
> -		end &= ~(CACHE_LINE_SIZE - 1);
> +	if (!IS_ALIGNED(end, CACHE_LINE_SIZE)) {
> +		end = ALIGN_DOWN(end, CACHE_LINE_SIZE);
>  		l2x0_flush_line(end);
>  	}
>  
> @@ -87,7 +87,7 @@ static void l2x0_clean_range(unsigned long start, unsigned long end)
>  {
>  	void __iomem *base = l2x0_base;
>  
> -	start &= ~(CACHE_LINE_SIZE - 1);
> +	start = ALIGN_DOWN(start, CACHE_LINE_SIZE);
>  	while (start < end) {
>  		unsigned long blk_end = start + min(end - start, 4096UL);
>  
> @@ -102,7 +102,7 @@ static void l2x0_clean_range(unsigned long start, unsigned long end)
>  
>  static void l2x0_flush_range(unsigned long start, unsigned long end)
>  {
> -	start &= ~(CACHE_LINE_SIZE - 1);
> +	start = ALIGN_DOWN(start, CACHE_LINE_SIZE);
>  	while (start < end) {
>  		unsigned long blk_end = start + min(end - start, 4096UL);
>  
> -- 
> 2.17.1
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
