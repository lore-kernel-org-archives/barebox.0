Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cicfd-0007uq-G0
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 07:58:07 +0000
Date: Tue, 28 Feb 2017 08:57:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170228075742.p2p6in2mucfsjvkl@pengutronix.de>
References: <20170224142501.2679-1-bst@pengutronix.de>
 <20170224142501.2679-5-bst@pengutronix.de>
 <20170227100850.dv7kxvyxhutqfra6@pengutronix.de>
 <d6c7b9e3-547d-8231-ae40-15464c48a765@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d6c7b9e3-547d-8231-ae40-15464c48a765@pengutronix.de>
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
Subject: Re: [PATCH 4/4] video: add support for Solomon SSD1307 OLED
 controller family
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 27, 2017 at 04:45:43PM +0100, Bastian Stender wrote:
> On 02/27/2017 11:08 AM, Sascha Hauer wrote:
> > On Fri, Feb 24, 2017 at 03:25:01PM +0100, Bastian Stender wrote:
> > > It was ported from linux v4.10. Like the kernel driver only
> > > communication via I2C is supported.
> > > 
> > > It has only been tested with a SSD1306 and a 96x16 OLED display:
> > > 
> > > 	&i2c0 {
> > > 		status = "okay";
> > > 
> > > 		ssd1306: oled@3c {
> > > 			compatible = "solomon,ssd1306fb-i2c";
> > > 			reg = <0x3c>;
> > > 			reset-gpios = <&gpio1 1 0>;
> > > 			solomon,height = <16>;
> > > 			solomon,width = <96>;
> > > 			solomon,page-offset = <0>;
> > > 			solomon,com-invdir;
> > > 			solomon,com-seq;
> > > 		};
> > > 
> > > Signed-off-by: Bastian Stender <bst@pengutronix.de>
> > > ---
> > >  drivers/video/Kconfig     |   4 +
> > >  drivers/video/Makefile    |   1 +
> > >  drivers/video/ssd1307fb.c | 569 ++++++++++++++++++++++++++++++++++++++++++++++
> > >  3 files changed, 574 insertions(+)
> > >  create mode 100644 drivers/video/ssd1307fb.c
> > > 
> > > diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> > > index 8f31f5af74..50a876acb1 100644
> > > --- a/drivers/video/Kconfig
> > > +++ b/drivers/video/Kconfig
> > > @@ -12,6 +12,10 @@ config FRAMEBUFFER_CONSOLE
> > >  	select FONTS
> > >  	prompt "framebuffer console support"
> > > 
> > > +config DRIVER_VIDEO_FB_SSD1307
> > > +	bool "Solomon SSD1307 framebuffer support"
> > > +	depends on PWM && I2C && GPIOLIB
> > > +
> > >  config VIDEO_VPL
> > >  	depends on OFTREE
> > >  	bool
> > > diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> > > index 1bf2e1f3ca..e23c9c37b6 100644
> > > --- a/drivers/video/Makefile
> > > +++ b/drivers/video/Makefile
> > > @@ -21,3 +21,4 @@ obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
> > >  obj-$(CONFIG_DRIVER_VIDEO_BCM283X) += bcm2835.o
> > >  obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb.o
> > >  obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += imx-ipu-v3/
> > > +obj-$(CONFIG_DRIVER_VIDEO_FB_SSD1307) += ssd1307fb.o
> > > diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
> > > new file mode 100644
> > > index 0000000000..0dfdcc2232
> > > --- /dev/null
> > > +++ b/drivers/video/ssd1307fb.c
> > > @@ -0,0 +1,569 @@
> > > +/*
> > > + * Driver for the Solomon SSD1307 OLED controller family
> > > + *
> > > + * Supports:
> > > + *	- SSD1305 (untested)
> > > + *	- SSD1306
> > > + *	- SSD1307 (untested)
> > > + *	- SSD1309 (untested)
> > > + *
> > > + * Copyright 2012 Maxime Ripard <maxime.ripard@free-electrons.com>, Free Electrons
> > > + *
> > > + * Ported to barebox from linux v4.10
> > > + * Copyright (C) 2017 Pengutronix, Bastian Stender <kernel@pengutronix.de>
> > > + *
> > > + * Licensed under the GPLv2 or later.
> > > + */
> > > +
> > > +#include <common.h>
> > > +#include <init.h>
> > > +#include <fb.h>
> > > +#include <i2c/i2c.h>
> > > +#include <of_device.h>
> > > +#include <gpio.h>
> > > +#include <of_gpio.h>
> > > +#include <printk.h>
> > > +
> > > +#define SSD1307FB_DATA			0x40
> > > +#define SSD1307FB_COMMAND		0x80
> > > +
> > > +#define SSD1307FB_SET_ADDRESS_MODE	0x20
> > > +#define SSD1307FB_SET_ADDRESS_MODE_HORIZONTAL	(0x00)
> > > +#define SSD1307FB_SET_ADDRESS_MODE_VERTICAL	(0x01)
> > > +#define SSD1307FB_SET_ADDRESS_MODE_PAGE		(0x02)
> > > +#define SSD1307FB_SET_COL_RANGE		0x21
> > > +#define SSD1307FB_SET_PAGE_RANGE	0x22
> > > +#define SSD1307FB_CONTRAST		0x81
> > > +#define	SSD1307FB_CHARGE_PUMP		0x8d
> > > +#define SSD1307FB_SEG_REMAP_ON		0xa1
> > > +#define SSD1307FB_DISPLAY_OFF		0xae
> > > +#define SSD1307FB_SET_MULTIPLEX_RATIO	0xa8
> > > +#define SSD1307FB_DISPLAY_ON		0xaf
> > > +#define SSD1307FB_START_PAGE_ADDRESS	0xb0
> > > +#define SSD1307FB_SET_DISPLAY_OFFSET	0xd3
> > > +#define	SSD1307FB_SET_CLOCK_FREQ	0xd5
> > > +#define	SSD1307FB_SET_PRECHARGE_PERIOD	0xd9
> > > +#define	SSD1307FB_SET_COM_PINS_CONFIG	0xda
> > > +#define	SSD1307FB_SET_VCOMH		0xdb
> > 
> > please consistently use spaces after #define
> 
> Will do.
> 
> > 
> > > +
> > > +struct ssd1307fb_par;
> > 
> > Unnecessary.
> 
> Ok.
> 
> > 
> > > +
> > > +struct ssd1307fb_deviceinfo {
> > > +	u32 default_vcomh;
> > > +	u32 default_dclk_div;
> > > +	u32 default_dclk_frq;
> > > +	int need_chargepump;
> > > +};
> > > +
> > 
> > [...]
> > 
> > > +static int ssd1307fb_probe(struct device_d *dev)
> > > +{
> > > +	struct i2c_client *client = to_i2c_client(dev);
> > > +	struct fb_info *info;
> > > +	struct device_node *node = dev->device_node;
> > > +	const struct of_device_id *match =
> > > +		of_match_node(ssd1307fb_of_match, dev->device_node);
> > > +	u32 vmem_size;
> > > +	struct ssd1307fb_par *par;
> > > +	struct ssd1307fb_array *array;
> > > +	u8 *vmem;
> > > +	int ret;
> > > +	int i, j;
> > > +
> > > +	if (!node) {
> > > +		dev_err(&client->dev, "No device tree data found!\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	info = xzalloc(sizeof(struct fb_info));
> > > +	if (!info) {
> > > +		dev_err(&client->dev, "Couldn't allocate framebuffer.\n");
> > > +		return -ENOMEM;
> > > +	}
> > 
> > xzalloc always returns succesfully, no need to check.
> 
> Ok.
> 
> > 
> > > +
> > > +	par = info->priv;
> > > +	par->info = info;
> > > +	par->client = client;
> > > +
> > > +	par->device_info = (struct ssd1307fb_deviceinfo *)match->data;
> > > +
> > > +	par->reset = of_get_named_gpio(node,
> > > +					 "reset-gpios", 0);
> > > +	if (!gpio_is_valid(par->reset)) {
> > > +		dev_err(&client->dev,
> > > +			"Couldn't get named gpio 'reset-gpios' %d.\n",
> > > +			par->reset);
> > > +		ret = par->reset;
> > > +		goto fb_alloc_error;
> > > +	}
> > 
> > Is this gpio really mandatory?
> 
> 
> This is the corresponding snippet from the kernel in
> drivers/video/fbdev/ssd1307fb.c, line 564 ff. (v4.10):
> 
>     par->reset = of_get_named_gpio(client->dev.of_node,
>                                  "reset-gpios", 0);
>     if (!gpio_is_valid(par->reset)) {
>         ret = -EINVAL;
>         goto fb_alloc_error;
>     }
> 
> "reset-gpios" is one of the required properties, see
> 
>   Documentation/devicetree/bindings/display/ssd1307fb.txt
> 
> or in barebox:
> 
>   dts/Bindings/display/ssd1307fb.txt

Ok.

> 
> > 
> > > +
> > > +	if (of_property_read_u32(node, "solomon,width", &par->width))
> > > +		par->width = 96;
> > > +
> > > +	if (of_property_read_u32(node, "solomon,height", &par->height))
> > > +		par->height = 16;
> > 
> > These defaults only work for you. You should bail out with an error if
> > the devicetree does not contain values for these instead.
> 
> This part was ported 1:1 from linux. As solomon,width and solomon,height are
> required properties also, should I bail out nonetheless?

Yes, please. The resolution of the framebuffer must be explicitly given
in the device tree. If it's not then the user gets a better clue what's
wrong when the driver does not successfully probe.

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
