Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2eGc-0000Ud-30
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 08:52:38 +0000
Date: Tue, 5 Feb 2013 09:52:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130205085233.GN1906@pengutronix.de>
References: <004301ce030a$68506aa0$38f13fe0$@com>
 <1360004939.170907890@f389.i.mail.ru>
 <005301ce0338$1e5e1fe0$5b1a5fa0$@com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <005301ce0338$1e5e1fe0$5b1a5fa0$@com>
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
Subject: Re: i.MX53, add access to third I2C peripheral
To: George Pontis <GPontis@z9.com>
Cc: barebox@lists.infradead.org

Hi George,

On Mon, Feb 04, 2013 at 04:31:20PM -0800, George Pontis wrote:
> > -----Original Message-----
> > From: Alexander Shiyan [mailto:shc_work@mail.ru]
> > Sent: Monday, February 04, 2013 11:09 AM
> > To: George Pontis
> > Cc: barebox@lists.infradead.org
> > Subject: Re: i.MX53, add access to third I2C peripheral
> > 
> > > All versions of the i.MX53 have three I2C peripherals. This patch
> > provides
> > > access to it.
> > ...
> > > +static inline struct device_d *imx53_add_i2c2(struct
> > i2c_platform_data
> > > *pdata)
> > > +{
> > > +       return imx_add_i2c((void *)MX53_I2C2_BASE_ADDR, 2, pdata);
> > > +}
> > > +
> > MX53_I2C3_BASE_ADDR ?
> > 
> > ---
> 
> Thanks for the correction Alex. I also forgot to handle the clock for this new peripheral. With both in place, a device on the third bus is recognized at boot and listed by devinfo.

This version looks ok. Please resend with a proper signed-off-by tag.

Sascha

> 
> diff -Naur bb.a/arch/arm/mach-imx/include/mach/devices-imx53.h bb.b/arch/arm/mach-imx/include/mach/devic
> es-imx53.h
> --- bb.a/arch/arm/mach-imx/include/mach/devices-imx53.h 2013-02-04 06:24:51.000000000 -0800
> +++ bb.b/arch/arm/mach-imx/include/mach/devices-imx53.h 2013-02-03 22:24:26.930091420 -0800
> @@ -21,6 +21,11 @@
>         return imx_add_i2c((void *)MX53_I2C2_BASE_ADDR, 1, pdata);
>  }
> 
> +static inline struct device_d *imx53_add_i2c2(struct i2c_platform_data *pdata)
> +{
> +       return imx_add_i2c((void *)MX53_I2C3_BASE_ADDR, 2, pdata);
> +}
> +
>  static inline struct device_d *imx53_add_uart0(void)
>  {
>         return imx_add_uart_imx21((void *)MX53_UART1_BASE_ADDR, 0);
> diff -Naur bb.a/arch/arm/mach-imx/clk-imx5.c bb.b/arch/arm/mach-imx/clk-imx5.c
> --- bb.a/arch/arm/mach-imx/clk-imx5.c   2013-02-04 06:24:51.000000000 -0800
> +++ bb.b/arch/arm/mach-imx/clk-imx5.c   2013-02-04 16:14:04.729284183 -0800
> @@ -272,6 +272,7 @@
>         clkdev_add_physbase(clks[uart_root], MX53_UART3_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[per_root], MX53_I2C1_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[per_root], MX53_I2C2_BASE_ADDR, NULL);
> +       clkdev_add_physbase(clks[per_root], MX53_I2C3_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[per_root], MX53_GPT1_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[ipg], MX53_CSPI_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[ecspi_podf], MX53_ECSPI1_BASE_ADDR, NULL);
> 
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
