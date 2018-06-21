Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVxFs-0005Og-19
 for barebox@lists.infradead.org; Thu, 21 Jun 2018 10:56:00 +0000
Date: Thu, 21 Jun 2018 12:55:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180621105543.yqaxsgpzz2blwphm@pengutronix.de>
References: <20180620005501.12891-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180620005501.12891-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: babbage: Make use of imx_setup_pad()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 19, 2018 at 05:55:01PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/freescale-mx51-babbage/lowlevel.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
> index 1c20b6a7a..216576ca2 100644
> --- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
> @@ -1,5 +1,6 @@
>  #include <debug_ll.h>
>  #include <mach/clock-imx51_53.h>
> +#include <mach/iomux-mx51.h>
>  #include <common.h>
>  #include <mach/esdctl.h>
>  #include <mach/generic.h>
> @@ -22,15 +23,7 @@ static inline void setup_uart(void)
>  	writel(MX5_CCM_CSCMR1_RESET_VALUE, ccmbase + MX5_CCM_CSCMR1);
>  	writel(MX5_CCM_CSCDR1_RESET_VALUE, ccmbase + MX5_CCM_CSCDR1);
>  
> -	/*
> -	 * The code below should be more or less a "moral equivalent"
> -	 * of:
> -	 *	 MX51_PAD_UART1_TXD__UART1_TXD 0x1c5
> -	 *
> -	 * in device tree
> -	 */
> -	writel(0x00000000, iomuxbase + 0x022c);
> -	writel(0x000001c5, iomuxbase + 0x061c);
> +	imx_setup_pad(iomuxbase, MX51_PAD_UART1_TXD__UART1_TXD);
>  
>  	imx51_uart_setup_ll();
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
