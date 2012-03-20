Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9yoX-0002Fq-Qi
 for barebox@lists.infradead.org; Tue, 20 Mar 2012 13:09:27 +0000
Date: Tue, 20 Mar 2012 14:09:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120320130920.GL3852@pengutronix.de>
References: <20120318151242.GP3852@pengutronix.de>
 <1332233666-5422-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332233666-5422-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] i.MX27: Define base address for SDHC1,2,3
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Mar 20, 2012 at 12:54:24PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied all three patches. Thanks

Sascha

> ---
>  arch/arm/mach-imx/include/mach/imx27-regs.h |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
> index 3a4325e..b7bebae 100644
> --- a/arch/arm/mach-imx/include/mach/imx27-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
> @@ -19,12 +19,15 @@
>  #define IMX_SPI1_BASE              (0x0e000 + IMX_IO_BASE)
>  #define IMX_SPI2_BASE              (0x0f000 + IMX_IO_BASE)
>  #define IMX_I2C1_BASE              (0x12000 + IMX_IO_BASE)
> +#define IMX_SDHC1_BASE             (0x13000 + IMX_IO_BASE)
> +#define IMX_SDHC2_BASE             (0x14000 + IMX_IO_BASE)
>  #define IMX_GPIO_BASE              (0x15000 + IMX_IO_BASE)
>  #define IMX_TIM4_BASE              (0x19000 + IMX_IO_BASE)
>  #define IMX_TIM5_BASE              (0x1a000 + IMX_IO_BASE)
>  #define IMX_UART5_BASE             (0x1b000 + IMX_IO_BASE)
>  #define IMX_UART6_BASE             (0x1c000 + IMX_IO_BASE)
>  #define IMX_I2C2_BASE              (0x1d000 + IMX_IO_BASE)
> +#define IMX_SDHC3_BASE             (0x1e000 + IMX_IO_BASE)
>  #define IMX_TIM6_BASE              (0x1f000 + IMX_IO_BASE)
>  #define IMX_AIPI2_BASE             (0x20000 + IMX_IO_BASE)
>  #define IMX_FB_BASE                (0x21000 + IMX_IO_BASE)
> -- 
> 1.7.3.4
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
