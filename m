Delivery-date: Thu, 30 Mar 2023 10:45:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phnuD-002Zur-BD
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 10:45:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phnuC-0000e2-QA
	for lore@pengutronix.de; Thu, 30 Mar 2023 10:45:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gTTND9DYpXDYATyxr9k0cgBRG0kausxgX8xQ30PN+0Y=; b=oNcMwHlbvLZAuPorRhY5FkJDhT
	nwAVkKoWkixGdFxQjiae5X85yImrTyKcSv/iJbFRfQDFoj1Z3RRp8fiDa5p02A4b1JbQ7fsGXBqO3
	dLcVjplftorlAZBQSZyoLifW38sXjSL7gkLLI/cAGvf4n95KR2FTY8jKwafnW0fctpLqzJ5b5mwAE
	7gjEJx2ImoyqxeBHDC4LUcofFuUIA+lIWy/9VYYotUQFCAsKIgoC/SBpvvjCxX/V20G6zrKlij5H3
	2WOkggjGSX7gBY1kB9mk/9LiP6BzOT3eMK04nUhHUHYu4wGzNBQyPS8Qu7zO6ugnyXj/nFNSWOeDO
	CLjGRvLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phnt2-0037s3-0Z;
	Thu, 30 Mar 2023 08:44:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phnsx-0037qa-34
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 08:43:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1phnsw-0000Si-Bc; Thu, 30 Mar 2023 10:43:54 +0200
Message-ID: <abd00c6b-2c9a-8d3a-bd64-0635adf43cc2@pengutronix.de>
Date: Thu, 30 Mar 2023 10:43:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>, barebox@lists.infradead.org
References: <20230329105638.1258096-1-p.zabel@pengutronix.de>
 <20230329105638.1258096-3-p.zabel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230329105638.1258096-3-p.zabel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_014356_320639_6A12ADDB 
X-CRM114-Status: GOOD (  39.89  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/4] video: add MIPI DBI framebuffer helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 29.03.23 12:56, Philipp Zabel wrote:
> Port helper functions for the panel-mipi-dbi driver from the Linux
> kernel.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/video/mipi_dbi.c | 242 +++++++++++++++++++++++++++++++++++++++
>  include/video/mipi_dbi.h |  63 ++++++++++
>  2 files changed, 305 insertions(+)
> 
> diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
> index 50d2fc4b29b9..9aa16abb1c9b 100644
> --- a/drivers/video/mipi_dbi.c
> +++ b/drivers/video/mipi_dbi.c
> @@ -13,6 +13,7 @@
>  #include <gpiod.h>
>  #include <regulator.h>
>  #include <spi/spi.h>
> +#include <video/backlight.h>
>  #include <video/mipi_dbi.h>
>  
>  #include <video/vpl.h>
> @@ -196,6 +197,178 @@ int mipi_dbi_command_stackbuf(struct mipi_dbi *dbi, u8 cmd, const u8 *data,
>  }
>  EXPORT_SYMBOL(mipi_dbi_command_stackbuf);
>  
> +/**
> + * mipi_dbi_buf_copy - Copy a framebuffer, transforming it if necessary
> + * @dst: The destination buffer
> + * @info: The source framebuffer info
> + * @swap: When true, swap MSB/LSB of 16-bit values
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +static void mipi_dbi_buf_copy(void *dst, struct fb_info *info, bool swap)
> +{
> +	u16 *src = (u16 *)info->screen_base;
> +	u16 *dst16 = dst;
> +	size_t len = info->xres * info->yres;
> +	int i;
> +
> +	if (swap) {
> +		for (i = 0; i < len; i++) {
> +			*dst16++ = *src << 8 | *src >> 8;
> +			src++;
> +		}
> +	} else {
> +		memcpy(dst, src, len * 2);

Do we need this? Why can't we send out framebuffer directly if there is no
swapping to be done?

> +	}
> +}
> +
> +static void mipi_dbi_set_window_address(struct mipi_dbi_dev *dbidev,
> +					unsigned int xs, unsigned int xe,
> +					unsigned int ys, unsigned int ye)
> +{
> +	struct mipi_dbi *dbi = &dbidev->dbi;
> +
> +	xs += dbidev->mode.left_margin;
> +	xe += dbidev->mode.left_margin;
> +	ys += dbidev->mode.upper_margin;
> +	ye += dbidev->mode.upper_margin;
> +
> +	mipi_dbi_command(dbi, MIPI_DCS_SET_COLUMN_ADDRESS, (xs >> 8) & 0xff,
> +			 xs & 0xff, (xe >> 8) & 0xff, xe & 0xff);
> +	mipi_dbi_command(dbi, MIPI_DCS_SET_PAGE_ADDRESS, (ys >> 8) & 0xff,
> +			 ys & 0xff, (ye >> 8) & 0xff, ye & 0xff);
> +}
> +
> +static void mipi_dbi_fb_dirty(struct mipi_dbi_dev *dbidev, struct fb_info *info)
> +{
> +	struct mipi_dbi *dbi = &dbidev->dbi;
> +	u16 width = info->xres;
> +	u16 height = info->yres;
> +	size_t len = width * height * 2;
> +	int ret;
> +
> +	mipi_dbi_buf_copy(dbidev->tx_buf, info, dbi->swap_bytes);
> +
> +	mipi_dbi_set_window_address(dbidev, 0, width - 1, 0, height - 1);
> +
> +	ret = mipi_dbi_command_buf(dbi, MIPI_DCS_WRITE_MEMORY_START, dbidev->tx_buf, len);
> +	if (ret)
> +		pr_err_once("Failed to update display %d\n", ret);

FYI, there's %pe support for printing error codes as string if they
were compiled in.

> +}
> +
> +/**
> + * mipi_dbi_enable_flush - MIPI DBI enable helper
> + * @dbidev: MIPI DBI device structure
> + * @crtc_state: CRTC state
> + * @plane_state: Plane state
> + *
> + * Flushes the whole framebuffer and enables the backlight. Drivers can use this
> + * in their &drm_simple_display_pipe_funcs->enable callback.

fb_ops->fb_enable ?

> + *
> + * Note: Drivers which don't use mipi_dbi_pipe_update() because they have custom
> + * framebuffer flushing, can't use this function since they both use the same
> + * flushing code.
> + */
> +void mipi_dbi_enable_flush(struct mipi_dbi_dev *dbidev,
> +			   struct fb_info *info)
> +{
> +	mipi_dbi_fb_dirty(dbidev, info);
> +
> +	if (dbidev->backlight)
> +		backlight_set_brightness_default(dbidev->backlight);
> +}
> +EXPORT_SYMBOL(mipi_dbi_enable_flush);
> +
> +
> +static void mipi_dbi_blank(struct mipi_dbi_dev *dbidev)
> +{
> +	u16 height = dbidev->mode.xres;
> +	u16 width = dbidev->mode.yres;
> +	struct mipi_dbi *dbi = &dbidev->dbi;
> +	size_t len = width * height * 2;
> +
> +	memset(dbidev->tx_buf, 0, len);
> +
> +	mipi_dbi_set_window_address(dbidev, 0, width - 1, 0, height - 1);
> +	mipi_dbi_command_buf(dbi, MIPI_DCS_WRITE_MEMORY_START, dbidev->tx_buf, len);
> +}
> +
> +/**
> + * mipi_dbi_fb_disable - MIPI DBI framebuffer disable helper
> + * @info: Framebuffer info
> + *
> + * This function disables backlight if present, if not the display memory is
> + * blanked. The regulator is disabled if in use. Drivers can use this as their
> + * &fb_ops->fb_disable callback.
> + */
> +void mipi_dbi_fb_disable(struct fb_info *info)
> +{
> +	struct mipi_dbi_dev *dbidev = container_of(info, struct mipi_dbi_dev, info);
> +
> +	if (dbidev->backlight)
> +		backlight_set_brightness(dbidev->backlight, 0);
> +	else
> +		mipi_dbi_blank(dbidev);
> +
> +	if (dbidev->regulator)
> +		regulator_disable(dbidev->regulator);
> +	if (dbidev->io_regulator)
> +		regulator_disable(dbidev->io_regulator);

Calling regulator_disable on NULL pointer is a no-op.

> +}
> +EXPORT_SYMBOL(mipi_dbi_fb_disable);
> +
> +void mipi_dbi_fb_flush(struct fb_info *info)
> +{
> +	struct mipi_dbi_dev *dbidev = container_of(info, struct mipi_dbi_dev, info);
> +
> +	mipi_dbi_fb_dirty(dbidev, info);
> +}
> +EXPORT_SYMBOL(mipi_dbi_fb_flush);
> +
> +/**
> + * mipi_dbi_dev_init - MIPI DBI device initialization
> + * @dbidev: MIPI DBI device structure to initialize
> + * @ops: Framebuffer operations
> + * @mode: Display mode
> + *
> + * This function sets up a &fb_info with one fixed &fb_videomode.
> + * Additionally &mipi_dbi.tx_buf is allocated.
> + *
> + * Supported format: RGB565.
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev, struct fb_ops *ops,
> +		      struct fb_videomode *mode)
> +{
> +	struct fb_info *info = &dbidev->info;
> +
> +	info->mode = mode;
> +	info->fbops = ops;
> +	info->dev.parent = dbidev->dev;
> +
> +	info->xres = mode->xres;
> +	info->yres = mode->yres;
> +	info->bits_per_pixel = 16;
> +	info->line_length = info->xres * (info->bits_per_pixel >> 3);
> +
> +	info->screen_size = info->line_length * info->yres;
> +	info->screen_base = kzalloc(info->screen_size, GFP_KERNEL);

dma_alloc? In case some SPI driver gets DMA support.

> +
> +	info->red.length = 5;
> +	info->red.offset = 11;
> +	info->green.length = 6;
> +	info->green.offset = 5;
> +	info->blue.length = 5;
> +	info->blue.offset = 0;
> +
> +	dbidev->tx_buf = kzalloc(mode->xres * mode->yres * 2, GFP_KERNEL);

Use info->screen_size here as well?

> +
> +	return 0;
> +}
> +
>  /**
>   * mipi_dbi_hw_reset - Hardware reset of controller
>   * @dbi: MIPI DBI structure
> @@ -246,6 +419,75 @@ bool mipi_dbi_display_is_on(struct mipi_dbi *dbi)
>  }
>  EXPORT_SYMBOL(mipi_dbi_display_is_on);
>  
> +static int mipi_dbi_poweron_reset_conditional(struct mipi_dbi_dev *dbidev, bool cond)
> +{
> +	struct device *dev = dbidev->dev;
> +	struct mipi_dbi *dbi = &dbidev->dbi;
> +	int ret;
> +
> +	if (dbidev->regulator) {
> +		ret = regulator_enable(dbidev->regulator);

returns 0 when called on NULL pointer, so no need for if above.

> +		if (ret) {
> +			dev_err(dev, "Failed to enable regulator (%d)\n", ret);
> +			return ret;
> +		}
> +	}
> +
> +	if (dbidev->io_regulator) {
> +		ret = regulator_enable(dbidev->io_regulator);

Ditto

> +		if (ret) {
> +			dev_err(dev, "Failed to enable I/O regulator (%d)\n", ret);
> +			if (dbidev->regulator)
> +				regulator_disable(dbidev->regulator);
> +			return ret;
> +		}
> +	}
> +
> +	if (cond && mipi_dbi_display_is_on(dbi))
> +		return 1;
> +
> +	mipi_dbi_hw_reset(dbi);
> +	ret = mipi_dbi_command(dbi, MIPI_DCS_SOFT_RESET);
> +	if (ret) {
> +		dev_err(dev, "Failed to send reset command (%d)\n", ret);
> +		if (dbidev->regulator)
> +			regulator_disable(dbidev->regulator);
> +		if (dbidev->io_regulator)
> +			regulator_disable(dbidev->io_regulator);

As above.

> +		return ret;
> +	}
> +
> +	/*
> +	 * If we did a hw reset, we know the controller is in Sleep mode and
> +	 * per MIPI DSC spec should wait 5ms after soft reset. If we didn't,
> +	 * we assume worst case and wait 120ms.
> +	 */
> +	if (dbi->reset)
> +		mdelay(5);
> +	else
> +		mdelay(120);
> +
> +	return 0;
> +}
> +
> +/**
> + * mipi_dbi_poweron_conditional_reset - MIPI DBI poweron and conditional reset
> + * @dbidev: MIPI DBI device structure
> + *
> + * This function enables the regulator if used and if the display is off, it
> + * does a hardware and software reset. If mipi_dbi_display_is_on() determines
> + * that the display is on, no reset is performed.
> + *
> + * Returns:
> + * Zero if the controller was reset, 1 if the display was already on, or a
> + * negative error code.
> + */
> +int mipi_dbi_poweron_conditional_reset(struct mipi_dbi_dev *dbidev)
> +{
> +	return mipi_dbi_poweron_reset_conditional(dbidev, true);
> +}
> +EXPORT_SYMBOL(mipi_dbi_poweron_conditional_reset);
> +
>  #if IS_ENABLED(CONFIG_SPI)
>  
>  /**
> diff --git a/include/video/mipi_dbi.h b/include/video/mipi_dbi.h
> index 54526006935f..917f7ddd597f 100644
> --- a/include/video/mipi_dbi.h
> +++ b/include/video/mipi_dbi.h
> @@ -11,6 +11,7 @@
>  #include <linux/types.h>
>  #include <spi/spi.h>
>  #include <driver.h>
> +#include <fb.h>
>  
>  struct regulator;
>  struct fb_videomode;
> @@ -55,6 +56,61 @@ struct mipi_dbi {
>  	struct list_head list;
>  };
>  
> +/**
> + * struct mipi_dbi_dev - MIPI DBI device
> + */
> +struct mipi_dbi_dev {
> +	/**
> +	 * @dev: Device
> +	 */
> +	struct device *dev;
> +
> +	/**
> +	 * @info: Framebuffer info
> +	 */
> +	struct fb_info info;
> +
> +	/**
> +	 * @mode: Fixed display mode
> +	 */
> +	struct fb_videomode mode;
> +
> +	/**
> +	 * @tx_buf: Buffer used for transfer (copy clip rect area)
> +	 */
> +	u8 *tx_buf;
> +
> +	/**
> +	 * @backlight_node: backlight device node (optional)
> +	 */
> +	struct device_node *backlight_node;
> +
> +	/**
> +	 * @backlight: backlight device (optional)
> +	 */
> +	struct backlight_device *backlight;
> +
> +	/**
> +	 * @regulator: power regulator (Vdd) (optional)
> +	 */
> +	struct regulator *regulator;
> +
> +	/**
> +	 * @io_regulator: I/O power regulator (Vddi) (optional)
> +	 */
> +	struct regulator *io_regulator;
> +
> +	/**
> +	 * @dbi: MIPI DBI interface
> +	 */
> +	struct mipi_dbi dbi;
> +
> +	/**
> +	 * @driver_private: Driver private data.
> +	 */
> +	void *driver_private;
> +};
> +
>  static inline const char *mipi_dbi_name(struct mipi_dbi *dbi)
>  {
>  	return dev_name(&dbi->spi->dev);
> @@ -62,8 +118,15 @@ static inline const char *mipi_dbi_name(struct mipi_dbi *dbi)
>  
>  int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
>  		      int dc);
> +int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev,
> +		      struct fb_ops *ops, struct fb_videomode *mode);
> +void mipi_dbi_fb_flush(struct fb_info *info);
> +void mipi_dbi_enable_flush(struct mipi_dbi_dev *dbidev,
> +			   struct fb_info *info);
> +void mipi_dbi_fb_disable(struct fb_info *info);
>  void mipi_dbi_hw_reset(struct mipi_dbi *dbi);
>  bool mipi_dbi_display_is_on(struct mipi_dbi *dbi);
> +int mipi_dbi_poweron_conditional_reset(struct mipi_dbi_dev *dbidev);
>  
>  u32 mipi_dbi_spi_cmd_max_speed(struct spi_device *spi, size_t len);
>  int mipi_dbi_spi_transfer(struct spi_device *spi, u32 speed_hz,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



