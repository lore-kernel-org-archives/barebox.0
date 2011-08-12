Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qrnhg-0004z9-FT
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 09:06:57 +0000
Date: Fri, 12 Aug 2011 11:06:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110812090653.GN31404@pengutronix.de>
References: <1313059025.19612@milas.spb.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1313059025.19612@milas.spb.ru>
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
Subject: Re: I2C support to PCM-038 board
To: Alexander Shiyan <shc@milas.spb.ru>
Cc: barebox@lists.infradead.org

On Thu, Aug 11, 2011 at 02:37:05PM +0400, Alexander Shiyan wrote:
> Hello.
> 
> Please review and apply this simple patch.
> Thanks!
> 
> diff -urN barebox-v2011.08.0.orig/arch/arm/boards/pcm038/pcm038.c barebox-v2011.08.0/arch/arm/boards/pcm038/pcm038.c
> --- barebox-v2011.08.0.orig/arch/arm/boards/pcm038/pcm038.c	2011-08-04 16:42:13.000000000 +0400
> +++ barebox-v2011.08.0/arch/arm/boards/pcm038/pcm038.c	2011-08-11 11:10:16.000000000 +0400
> @@ -40,6 +40,7 @@
>  #include <mach/imx-pll.h>
>  #include <mach/imxfb.h>
>  #include <asm/mmu.h>
> +#include <i2c/i2c.h>
>  #include <usb/isp1504.h>
>  #include <mach/spi.h>
>  #include <mach/iomux-mx27.h>
> @@ -261,6 +262,14 @@
>  		PD23_AF_USBH2_DATA2,
>  		PD24_AF_USBH2_DATA1,
>  		PD26_AF_USBH2_DATA5,
> +#ifdef CONFIG_I2C
> +		/* I2C1 */
> +		PD17_PF_I2C_DATA | GPIO_PUEN,
> +		PD18_PF_I2C_CLK,
> +		/* I2C2 */
> +		PC5_PF_I2C2_SDA,
> +		PC6_PF_I2C2_SCL,
> +#endif
>  	};
> 
>  	pcm038_mmu_init();
> @@ -298,6 +307,12 @@
>  	register_device(&sram_dev);
>  	imx27_add_fb(&pcm038_fb_data);
> 
> +#ifdef CONFIG_I2C
> +	PCCR0 |= PCCR0_I2C1_EN | PCCR0_I2C2_EN;
> +	imx27_add_i2c0(NULL);
> +	imx27_add_i2c1(NULL);
> +#endif

Please remove the #ifdef CONFIG_I2C

Sascha

> +
>  #ifdef CONFIG_USB
>  	pcm038_usbh_init();
>  	register_device(&usbh2_dev);
> diff -urN barebox-v2011.08.0.orig/arch/arm/mach-imx/include/mach/devices-imx27.h barebox-v2011.08.0/arch/arm/mach-imx/include/mach/devices-imx27.h
> --- barebox-v2011.08.0.orig/arch/arm/mach-imx/include/mach/devices-imx27.h	2011-08-04 16:42:13.000000000 +0400
> +++ barebox-v2011.08.0/arch/arm/mach-imx/include/mach/devices-imx27.h	2011-08-11 11:20:26.000000000 +0400
> @@ -11,6 +11,11 @@
>  	return imx_add_i2c((void *)IMX_I2C1_BASE, 0, pdata);
>  }
> 
> +static inline struct device_d *imx27_add_i2c1(struct i2c_platform_data *pdata)
> +{
> +	return imx_add_i2c((void *)IMX_I2C2_BASE, 1, pdata);
> +}
> +
>  static inline struct device_d *imx27_add_uart0(void)
>  {
>  	return imx_add_uart((void *)IMX_UART1_BASE, 0);

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
