Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVxzD-0006Vm-AT
 for barebox@lists.infradead.org; Thu, 21 Jun 2018 11:43:02 +0000
Date: Thu, 21 Jun 2018 13:42:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180621114235.cdwsyhsktio7zjun@pengutronix.de>
References: <20180619054609.31226-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180619054609.31226-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] video: Port RAVE SP backlight driver from Linux kernel
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 18, 2018 at 10:46:09PM -0700, Andrey Smirnov wrote:
> This is a minimal port of a kernel commit 6552d3141064 ("backlight:
> Add RAVE SP backlight driver"). All of the changes were kept to a
> minimum and limited to impedance matching between Barebox/Linux driver
> API.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

>  drivers/video/Kconfig             |  7 +++
>  drivers/video/Makefile            |  2 +
>  drivers/video/rave-sp-backlight.c | 72 +++++++++++++++++++++++++++++++
>  3 files changed, 81 insertions(+)
>  create mode 100644 drivers/video/rave-sp-backlight.c
> 
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 1dcae48f8..79de32cf8 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -124,6 +124,13 @@ config DRIVER_VIDEO_BACKLIGHT_PWM
>  	help
>  	  Enable this to get support for backlight devices driven by a PWM.
>  
> +config BACKLIGHT_RAVE_SP
> +	tristate "RAVE SP Backlight driver"
> +	depends on RAVE_SP_CORE
> +	depends on DRIVER_VIDEO_BACKLIGHT
> +	help
> +	  Support for backlight control on RAVE SP device.
> +
>  comment "Video encoder chips"
>  
>  config DRIVER_VIDEO_MTL017
> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> index 081e4463d..01fabe880 100644
> --- a/drivers/video/Makefile
> +++ b/drivers/video/Makefile
> @@ -23,3 +23,5 @@ obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb.o
>  obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += imx-ipu-v3/
>  obj-$(CONFIG_DRIVER_VIDEO_EFI_GOP) += efi_gop.o
>  obj-$(CONFIG_DRIVER_VIDEO_FB_SSD1307) += ssd1307fb.o
> +obj-$(CONFIG_BACKLIGHT_RAVE_SP)	+= rave-sp-backlight.o
> +
> diff --git a/drivers/video/rave-sp-backlight.c b/drivers/video/rave-sp-backlight.c
> new file mode 100644
> index 000000000..88ec86e73
> --- /dev/null
> +++ b/drivers/video/rave-sp-backlight.c
> @@ -0,0 +1,72 @@
> +/*
> + * LCD Backlight driver for RAVE SP
> + *
> + * Copyright (C) 2018 Zodiac Inflight Innovations
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <common.h>
> +#include <malloc.h>
> +#include <init.h>
> +#include <video/backlight.h>
> +#include <linux/mfd/rave-sp.h>
> +
> +#define	RAVE_SP_BACKLIGHT_LCD_EN	BIT(7)
> +
> +static int rave_sp_backlight_set(struct backlight_device *bd, int brightness)
> +{
> +	struct rave_sp *sp = bd->dev.priv;
> +	u8 cmd[] = {
> +		[0] = RAVE_SP_CMD_SET_BACKLIGHT,
> +		[1] = 0,
> +		[2] = brightness ? RAVE_SP_BACKLIGHT_LCD_EN | brightness : 0,
> +		[3] = 0,
> +		[4] = 0,
> +	};
> +
> +	return rave_sp_exec(sp, cmd, sizeof(cmd), NULL, 0);
> +}
> +
> +static int rave_sp_backlight_probe(struct device_d *dev)
> +{
> +	struct backlight_device *bd;
> +	int ret;
> +
> +	bd = xzalloc(sizeof(*bd));
> +	bd->dev.priv = dev->parent->priv;
> +	bd->brightness_default = 50;
> +	bd->brightness_max = 100;
> +	bd->brightness_set = rave_sp_backlight_set;
> +
> +	ret = backlight_register(bd);
> +	if (ret) {
> +		free(bd);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id rave_sp_backlight_of_match[] = {
> +	{ .compatible = "zii,rave-sp-backlight" },
> +	{}
> +};
> +
> +static struct driver_d rave_sp_backlight_driver = {
> +	.name  = "rave-sp-backlight",
> +	.probe = rave_sp_backlight_probe,
> +	.of_compatible = DRV_OF_COMPAT(rave_sp_backlight_of_match),
> +};
> +device_platform_driver(rave_sp_backlight_driver);
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
