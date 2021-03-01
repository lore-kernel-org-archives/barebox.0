Delivery-date: Mon, 01 Mar 2021 17:01:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkyk-0004zj-Fp
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 17:01:02 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkyj-0001ds-3m
	for lore@pengutronix.de; Mon, 01 Mar 2021 17:01:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w+5R260Jdn7rBUaO+DOX+wINRJie6KXyS55DwliFHAw=; b=BVwWoMSHQjjNFs/yy/x9/vpR0
	rn7fv1F1ED0Y66g+1LiUsJ+eJkIuci0EzDM6/lEDZJkR37jdDDu8CYH29Co+52kfWfPIN0UWLz+zY
	z+FKBrylP8GGLuBcUe2ztH2zD56LdMVFYSMxPnEW0V7ohpIBFGNOGNcWGLqJHhFElasc5iiLk8o0v
	ZHWd3uFLGrtdZ2a5k7JxLeUYsIAECqEAlPquv+mBEwhKrkfGYAn8qTn15eWUfkHTWUMgpvB7UCZ29
	9SiueBP3mI5KtD6skF5/FEyAiWcG/6qOylyOvMv+RxkOcKNvkpoMMxILJgxlWs5JoWvVGkkTZnmFA
	RPthsQFYg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkxf-0007H8-Hj; Mon, 01 Mar 2021 15:59:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkxc-0007G4-8E
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 15:59:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGkxb-0001HK-5s; Mon, 01 Mar 2021 16:59:51 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGkxa-0004uj-P5; Mon, 01 Mar 2021 16:59:50 +0100
Date: Mon, 1 Mar 2021 16:59:50 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <20210301155950.GH5549@pengutronix.de>
References: <20210228190858.1451988-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210228190858.1451988-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:59:41 up 11 days, 19:23, 72 users,  load average: 0.02, 0.24, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_105952_466959_02E3D518 
X-CRM114-Status: GOOD (  34.75  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: add simplefb driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Feb 28, 2021 at 08:08:58PM +0100, Ahmad Fatoum wrote:
> barebox has support to fix up a framebuffer it has set up as simplefb
> into the device tree of a kernel it boots. Add the counterpart to this,
> so barebox itself can reuse an already set up frame buffer.
> 
> This is done to support the framebuffer device on the tinyemu RISC-V
> machine.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/video/Kconfig                         |   8 +-
>  drivers/video/Makefile                        |   3 +-
>  drivers/video/simplefb-client.c               | 149 ++++++++++++++++++
>  .../video/{simplefb.c => simplefb-fixup.c}    |   0
>  include/linux/platform_data/simplefb.h        |  46 ++++++
>  5 files changed, 204 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/video/simplefb-client.c
>  rename drivers/video/{simplefb.c => simplefb-fixup.c} (100%)
>  create mode 100644 include/linux/platform_data/simplefb.h

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index b6d468c63c03..95d993dde854 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -101,8 +101,14 @@ source "drivers/video/imx-ipu-v3/Kconfig"
>  
>  source "drivers/video/bochs/Kconfig"
>  
> +config DRIVER_VIDEO_SIMPLEFB_CLIENT
> +	bool "Simple framebuffer client support"
> +	depends on OFTREE
> +	help
> +	  Add support for reusing a previously set up simple framebuffer.
> +
>  config DRIVER_VIDEO_SIMPLEFB
> -	bool "Simple framebuffer support"
> +	bool "Simple framebuffer fixup support"
>  	depends on OFTREE
>  	help
>  	  Add support for setting up the kernel's simple framebuffer driver
> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> index 28d0fe205b83..2c002f7e5342 100644
> --- a/drivers/video/Makefile
> +++ b/drivers/video/Makefile
> @@ -19,7 +19,8 @@ obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
>  obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
>  obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
>  obj-$(CONFIG_DRIVER_VIDEO_BCM283X) += bcm2835.o
> -obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb.o
> +obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT) += simplefb-client.o
> +obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb-fixup.o
>  obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += imx-ipu-v3/
>  obj-$(CONFIG_DRIVER_VIDEO_EFI_GOP) += efi_gop.o
>  obj-$(CONFIG_DRIVER_VIDEO_FB_SSD1307) += ssd1307fb.o
> diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
> new file mode 100644
> index 000000000000..2d0495f6162e
> --- /dev/null
> +++ b/drivers/video/simplefb-client.c
> @@ -0,0 +1,149 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Simplest possible simple frame-buffer driver, as a platform device
> + *
> + * Copyright (c) 2013, Stephen Warren
> + *
> + * Based on q40fb.c, which was:
> + * Copyright (C) 2001 Richard Zidlicky <rz@linux-m68k.org>
> + *
> + * Also based on offb.c, which was:
> + * Copyright (C) 1997 Geert Uytterhoeven
> + * Copyright (C) 1996 Paul Mackerras
> + */
> +
> +#include <common.h>
> +#include <fb.h>
> +#include <io.h>
> +#include <linux/platform_data/simplefb.h>
> +#include <driver.h>
> +#include <of.h>
> +
> +static struct fb_ops simplefb_ops;
> +
> +static struct simplefb_format simplefb_formats[] = SIMPLEFB_FORMATS;
> +
> +struct simplefb_params {
> +	u32 width;
> +	u32 height;
> +	u32 stride;
> +	struct simplefb_format *format;
> +};
> +
> +static int simplefb_parse_dt(struct device_d *dev,
> +			   struct simplefb_params *params)
> +{
> +	struct device_node *np = dev->device_node;
> +	int ret;
> +	const char *format;
> +	int i;
> +
> +	ret = of_property_read_u32(np, "width", &params->width);
> +	if (ret) {
> +		dev_err(dev, "Can't parse width property\n");
> +		return ret;
> +	}
> +
> +	ret = of_property_read_u32(np, "height", &params->height);
> +	if (ret) {
> +		dev_err(dev, "Can't parse height property\n");
> +		return ret;
> +	}
> +
> +	ret = of_property_read_u32(np, "stride", &params->stride);
> +	if (ret) {
> +		dev_err(dev, "Can't parse stride property\n");
> +		return ret;
> +	}
> +
> +	ret = of_property_read_string(np, "format", &format);
> +	if (ret) {
> +		dev_err(dev, "Can't parse format property\n");
> +		return ret;
> +	}
> +	params->format = NULL;
> +	for (i = 0; i < ARRAY_SIZE(simplefb_formats); i++) {
> +		if (strcmp(format, simplefb_formats[i].name))
> +			continue;
> +		params->format = &simplefb_formats[i];
> +		break;
> +	}
> +	if (!params->format) {
> +		dev_err(dev, "Invalid format value\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int simplefb_probe(struct device_d *dev)
> +{
> +	int ret;
> +	struct simplefb_params params;
> +	struct fb_info *info;
> +	struct resource *mem;
> +
> +	ret = -ENODEV;
> +	if (dev->device_node)
> +		ret = simplefb_parse_dt(dev, &params);
> +
> +	if (ret)
> +		return ret;
> +
> +	mem = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(mem)) {
> +		dev_err(dev, "No memory resource\n");
> +		return PTR_ERR(mem);
> +	}
> +
> +	info = xzalloc(sizeof(*info));
> +	dev->priv = info;
> +
> +	info->xres = params.width;
> +	info->yres = params.height;
> +	info->bits_per_pixel = params.format->bits_per_pixel;
> +	info->red = params.format->red;
> +	info->green = params.format->green;
> +	info->blue = params.format->blue;
> +	info->transp = params.format->transp;
> +	info->line_length = params.stride;
> +
> +	info->screen_base = (void *)mem->start;
> +	info->screen_size = resource_size(mem);
> +
> +
> +	info->fbops = &simplefb_ops;
> +
> +	dev_info(dev, "framebuffer at 0x%p, 0x%lx bytes\n",
> +		 info->screen_base, info->screen_size);
> +	dev_info(dev, "format=%s, mode=%dx%dx%d, linelength=%d\n",
> +		 params.format->name,
> +		 info->xres, info->yres,
> +		 info->bits_per_pixel, info->line_length);
> +
> +	ret = register_framebuffer(info);
> +	if (ret < 0) {
> +		dev_err(dev, "Unable to register simplefb: %d\n", ret);
> +		return ret;
> +	}
> +
> +	dev_info(dev, "simplefb registered!\n");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id simplefb_of_match[] = {
> +	{ .compatible = "simple-framebuffer", },
> +	{ },
> +};
> +
> +static struct driver_d simplefb_driver = {
> +	.name = "simple-framebuffer",
> +	.of_compatible = simplefb_of_match,
> +	.probe = simplefb_probe,
> +};
> +device_platform_driver(simplefb_driver);
> +
> +MODULE_AUTHOR("Stephen Warren <swarren@wwwdotorg.org>");
> +MODULE_DESCRIPTION("Simple framebuffer driver");
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/video/simplefb.c b/drivers/video/simplefb-fixup.c
> similarity index 100%
> rename from drivers/video/simplefb.c
> rename to drivers/video/simplefb-fixup.c
> diff --git a/include/linux/platform_data/simplefb.h b/include/linux/platform_data/simplefb.h
> new file mode 100644
> index 000000000000..a4f07eccd81d
> --- /dev/null
> +++ b/include/linux/platform_data/simplefb.h
> @@ -0,0 +1,46 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * simplefb.h - Simple Framebuffer Device
> + *
> + * Copyright (C) 2013 David Herrmann <dh.herrmann@gmail.com>
> + */
> +
> +#ifndef __PLATFORM_DATA_SIMPLEFB_H__
> +#define __PLATFORM_DATA_SIMPLEFB_H__
> +
> +#include <video/fourcc.h>
> +#include <fb.h>
> +#include <linux/types.h>
> +
> +/* format array, use it to initialize a "struct simplefb_format" array */
> +#define SIMPLEFB_FORMATS \
> +{ \
> +	{ "r5g6b5", 16, {11, 5}, {5, 6}, {0, 5}, {0, 0}, DRM_FORMAT_RGB565 }, \
> +	{ "x1r5g5b5", 16, {10, 5}, {5, 5}, {0, 5}, {0, 0}, DRM_FORMAT_XRGB1555 }, \
> +	{ "a1r5g5b5", 16, {10, 5}, {5, 5}, {0, 5}, {15, 1}, DRM_FORMAT_ARGB1555 }, \
> +	{ "r8g8b8", 24, {16, 8}, {8, 8}, {0, 8}, {0, 0}, DRM_FORMAT_RGB888 }, \
> +	{ "x8r8g8b8", 32, {16, 8}, {8, 8}, {0, 8}, {0, 0}, DRM_FORMAT_XRGB8888 }, \
> +	{ "a8r8g8b8", 32, {16, 8}, {8, 8}, {0, 8}, {24, 8}, DRM_FORMAT_ARGB8888 }, \
> +	{ "a8b8g8r8", 32, {0, 8}, {8, 8}, {16, 8}, {24, 8}, DRM_FORMAT_ABGR8888 }, \
> +	{ "x2r10g10b10", 32, {20, 10}, {10, 10}, {0, 10}, {0, 0}, DRM_FORMAT_XRGB2101010 }, \
> +	{ "a2r10g10b10", 32, {20, 10}, {10, 10}, {0, 10}, {30, 2}, DRM_FORMAT_ARGB2101010 }, \
> +}
> +
> +/*
> + * Data-Format for Simple-Framebuffers
> + * @name: unique 0-terminated name that can be used to identify the mode
> + * @red,green,blue: Offsets and sizes of the single RGB parts
> + * @transp: Offset and size of the alpha bits. length=0 means no alpha
> + * @fourcc: 32bit DRM four-CC code (see drm_fourcc.h)
> + */
> +struct simplefb_format {
> +	const char *name;
> +	u32 bits_per_pixel;
> +	struct fb_bitfield red;
> +	struct fb_bitfield green;
> +	struct fb_bitfield blue;
> +	struct fb_bitfield transp;
> +	u32 fourcc;
> +};
> +
> +#endif /* __PLATFORM_DATA_SIMPLEFB_H__ */
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

