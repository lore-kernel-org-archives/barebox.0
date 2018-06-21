Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVxGI-0005Ur-LJ
 for barebox@lists.infradead.org; Thu, 21 Jun 2018 10:56:26 +0000
Date: Thu, 21 Jun 2018 12:56:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180621105610.vgjfnxuspbsforij@pengutronix.de>
References: <20180620012154.21183-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180620012154.21183-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: rdu2: Make use of imx_setup_pad()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 19, 2018 at 06:21:54PM -0700, Andrey Smirnov wrote:
> While at it, also remove pinux configuration for RX pin (completely
> unused) and fix strange setup_uart()'s indentation.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/zii-imx6q-rdu2/lowlevel.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
> index 6b9c719c6..a5ac6f64c 100644
> --- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
> +++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
> @@ -19,6 +19,7 @@
>  #include <mach/generic.h>
>  #include <mach/imx6.h>
>  #include <mach/xload.h>
> +#include <mach/iomux-mx6.h>
>  #include <asm/barebox-arm.h>
>  
>  struct reginit {
> @@ -255,12 +256,7 @@ static inline void setup_uart(void)
>  {
>  	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
>  
> -	writel(0x1b0b1, iomuxbase + 0x0650);
> -	writel(3, iomuxbase + 0x0280);
> -
> -	writel(0x1b0b1, iomuxbase + 0x0654);
> -	writel(3, iomuxbase + 0x0284);
> -	writel(1, iomuxbase + 0x0920);
> +	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT10__UART1_TXD);
>  
>  	imx6_uart_setup_ll();
>  
> @@ -278,7 +274,7 @@ static noinline void rdu2_sram_setup(void)
>  	imx6_ungate_all_peripherals();
>  
>  	if (IS_ENABLED(CONFIG_DEBUG_LL))
> -			setup_uart();
> +		setup_uart();
>  
>  	arm_setup_stack(0x00920000 - 8);
>  	relocate_to_current_adr();
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
