Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj8Du-0005Cv-9L
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:16:59 +0000
Date: Mon, 25 Jun 2012 14:16:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120625121651.GC14321@pengutronix.de>
References: <1340621891-4826-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340621891-4826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: XBurst: fix compiler warnings in reset-jz4750.c
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 25, 2012 at 02:58:11PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Squashed into the original commit causing the warnings.

Thanks
 Sascha

> ---
>  arch/mips/mach-xburst/reset-jz4750.c |    6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/mips/mach-xburst/reset-jz4750.c b/arch/mips/mach-xburst/reset-jz4750.c
> index 4bda56c..765c033 100644
> --- a/arch/mips/mach-xburst/reset-jz4750.c
> +++ b/arch/mips/mach-xburst/reset-jz4750.c
> @@ -29,7 +29,7 @@
>  
>  #define JZ_EXTAL 24000000
>  
> -static void jz4750d_halt(void)
> +static void __noreturn jz4750d_halt(void)
>  {
>  	while (1) {
>  		__asm__(".set push;\n"
> @@ -65,10 +65,10 @@ void __noreturn poweroff()
>  	shutdown_barebox();
>  
>  	do {
> -		ctrl = readl(RTC_RCR);
> +		ctrl = readl((u32 *)RTC_RCR);
>  	} while (!(ctrl & RTC_RCR_WRDY));
>  
> -	writel(RTC_HCR_PD, RTC_HCR);
> +	writel(RTC_HCR_PD, (u32 *)RTC_HCR);
>  	jz4750d_halt();
>  }
>  EXPORT_SYMBOL(poweroff);
> -- 
> 1.7.10
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
