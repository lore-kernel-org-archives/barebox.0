Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YqGg0-0003Ty-B9
 for barebox@lists.infradead.org; Thu, 07 May 2015 07:57:01 +0000
Date: Thu, 7 May 2015 09:56:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150507075637.GO6325@pengutronix.de>
References: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
 <1430940733-4415-9-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430940733-4415-9-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 08/18] i.MX: serial: Distil common clock ungating code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 06, 2015 at 12:32:03PM -0700, Andrey Smirnov wrote:
> Move all of the common clock ungating code in early UART
> initialization into a dedicated subroutine that can be shared by all
> of the users.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  .../arm/boards/freescale-mx6sx-sabresdb/lowlevel.c |  9 +--------
>  arch/arm/boards/guf-santaro/lowlevel.c             |  7 ++-----
>  arch/arm/boards/karo-tx6x/lowlevel.c               | 10 +---------
>  arch/arm/boards/phytec-phycard-imx6/lowlevel.c     | 10 +---------
>  arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     | 10 +---------
>  arch/arm/boards/variscite-mx6/lowlevel.c           | 10 +---------
>  arch/arm/mach-imx/include/mach/debug_ll.h          | 22 ++++++++++++++++++++++
>  7 files changed, 29 insertions(+), 49 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
> index 5fdd9df..af26557 100644
> --- a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
> @@ -21,16 +21,9 @@
>  
>  static inline void setup_uart(void)
>  {
> -	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
>  	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
>  
> -	writel(0xffffffff, ccmbase + 0x68);
> -	writel(0xffffffff, ccmbase + 0x6c);
> -	writel(0xffffffff, ccmbase + 0x70);
> -	writel(0xffffffff, ccmbase + 0x74);
> -	writel(0xffffffff, ccmbase + 0x78);
> -	writel(0xffffffff, ccmbase + 0x7c);
> -	writel(0xffffffff, ccmbase + 0x80);
> +	imx6_ungate_all_peripherals();
>  
>  	writel(0x0, iomuxbase + 0x24);
>  	writel(0x1b0b1, iomuxbase + 0x036C);
> diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
> index 3ccabf4..d57502b 100644
> --- a/arch/arm/boards/guf-santaro/lowlevel.c
> +++ b/arch/arm/boards/guf-santaro/lowlevel.c
> @@ -13,6 +13,7 @@ static inline void setup_uart(void)
>  
>  	writel(0x1, iomuxbase + 0x2b0);
>  
> +	imx6_ungate_all_peripherals();
>  	imx6_uart_setup_ll();
>  
>  	putc_ll('>');
> @@ -29,12 +30,8 @@ ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
>  
>  	arm_setup_stack(0x00920000 - 8);
>  
> -	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> -		for (i = 0x68; i <= 0x80; i += 4)
> -			writel(0xffffffff, MX6_CCM_BASE_ADDR + i);

This leads to an unused variable warning. Fixed.

> diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
> index b9d1796..8eb59f6 100644
> --- a/arch/arm/mach-imx/include/mach/debug_ll.h
> +++ b/arch/arm/mach-imx/include/mach/debug_ll.h
> @@ -84,6 +84,21 @@ static inline void imx6_uart_setup_ll(void)
>  #endif
>  }
>  
> +#define __IMX_CCM_BASE(soc) soc##_CCM_BASE_ADDR
> +#define IMX_CCM_BASE(soc) __IMX_CCM_BASE(soc)

Unused, removed these.

> +
> +static inline void imx_ungate_all_peripherals(void __iomem *ccmbase)
> +{
> +	int i;
> +	for (i = 0x68; i <= 0x80; i += 4)
> +		writel(0xffffffff, ccmbase + i);
> +}
> +
> +static inline void imx6_ungate_all_peripherals(void)
> +{
> +	imx_ungate_all_peripherals(IOMEM(MX6_CCM_BASE_ADDR));
> +}
> +

I moved these out of the #ifdef CONFIG_DEBUG_LL since it's called from
the boards only when CONFIG_DEBUG_LL is enabled anyway. Even if not, it
may be desirable to be able to just ungate the clocks as a regular
usecase, not just when debugging is enabled. We might move these
functions out of debug_ll some day.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
