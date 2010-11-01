Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCujE-0004CU-JR
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 13:47:18 +0000
Date: Mon, 1 Nov 2010 14:47:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101101134714.GX6017@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<1288092708-5187-4-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1288092708-5187-4-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 03/12] Bring in dynamic videomode selection at runtime
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 26, 2010 at 01:31:39PM +0200, Juergen Beisert wrote:
> This patch mostly rewrites all parts of /drivers/video/fb.c. As it changes
> the API to the drivers, it must be done in one step to keep the repository
> bisectable. But to do it in one step makes the patches itself unreadable.
> 
> So, I decided to do it in a few steps, only for the review. All patches marked
> with a "step n" should be merged, prior the final commit onto the repository.
> 
> This step brings in the required function for dynamic videomode selection at
> runtime but keep the old functions untouched (the new one are commented out).
> 
> This is patch 1 of 7 to keep the repository bisectable.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  drivers/video/Kconfig |   13 +++
>  drivers/video/fb.c    |  243 +++++++++++++++++++++++++++++++++++++++++++++++++
>  include/fb.h          |   40 ++++++++
>  3 files changed, 296 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -1,3 +1,4 @@
> +#include <init.h>
>  #include <common.h>
>  #include <fb.h>
>  #include <errno.h>
> @@ -5,6 +6,8 @@
>  #include <getopt.h>
>  #include <fcntl.h>
>  #include <fs.h>
> +#include <malloc.h>
> +#include <xfuncs.h>
>  
>  static int fb_ioctl(struct cdev* cdev, int req, void *data)
>  {
> @@ -57,6 +60,139 @@ static int fb_enable_set(struct device_d *dev, struct param_d *param,
>  	return 0;
>  }
>  
> +#if 0
> +#ifdef CONFIG_VIDEO_DELAY_INIT
> +static int fb_check_if_already_initialized(struct device_d *fb_dev)
> +{
> +	struct cdev *cdev = fb_dev->priv;
> +	struct fb_info *info = cdev->priv;
> +
> +	if (info->active_mode != NULL) {
> +		pr_err("Video mode '%s' is already set. Cannot change colour depth anymore.\n", info->active_mode->name);

We have dev_err, also this line is really long.

> +
> +	if (enable) {
> +		(host->fb_enable)(info);

Please do not add these unnecessary braces around function pointers.

> +		new = "1";
> +	} else {
> +		(host->fb_disable)(info);
> +		new = "0";
> +	}
> +
> +	info->enabled = !!enable;
> +
> +	return dev_param_set_generic(fb_dev, param, new);
> +}
> +
> +static void fb_list_modes(struct fb_host *host)
> +{
> +	unsigned u;
> +
> +	if (host->mode_cnt == 0)
> +		return;

This is not needed.

> +
> +	printf(" Supported video mode(s):\n");
> +	for (u = 0; u < host->mode_cnt; u++)
> +		printf("  '%s'\n", host->mode[u].name);
> +}
> +
> +static int fb_activate_mode(struct device_d *fb_dev, const struct fb_videomode *mode)
> +{
> +	struct cdev *cdev = fb_dev->priv;
> +	struct fb_info *info = cdev->priv;
> +	struct fb_host *host = fb_dev->platform_data;
> +	int rc;
> +
> +	rc = (host->fb_mode)(info, mode);
> +	if (rc != 0)
> +		return rc;
> +
> +	info->active_mode = mode;
> +	/*
> +	 * At this point of time we know the remaining information we need
> +	 * for the cdev and fb_info structure.
> +	 */
> +	cdev->size = fb_dev->size;
> +	info->xres = mode->xres;
> +	info->yres = mode->yres;
> +
> +	return 0;
> +}
> +
> +#ifdef CONFIG_VIDEO_DELAY_INIT
> +static int fb_mode_set(struct device_d *fb_dev, struct param_d *param, const char *name)
> +{
> +	struct fb_host *host = fb_dev->platform_data;
> +	unsigned u;
> +	int rc;
> +
> +	pr_debug("%s called\n", __func__);
> +
> +	rc = fb_check_if_already_initialized(fb_dev);
> +	if (rc != 0)
> +		return rc;
> +
> +	/* Search for the requested video mode by name */
> +	for (u = 0; u < host->mode_cnt; u++) {
> +		if (!strcmp(host->mode[u].name, name))
> +			break;
> +	}
> +	if (u >= host->mode_cnt) {
> +		fb_list_modes(host);	/* no mode with 'name' found */
> +		return -ENODEV;
> +	} else {
> +		rc = fb_activate_mode(fb_dev, &host->mode[u]);
> +	}
> +
> +	if (rc == 0)
> +		dev_param_set_generic(fb_dev, param, name);
> +
> +	return rc;
> +}
> +#endif
> +#endif
> +
>  static struct file_operations fb_ops = {
>  	.read	= mem_read,
>  	.write	= mem_write,
> @@ -65,6 +201,113 @@ static struct file_operations fb_ops = {
>  	.ioctl	= fb_ioctl,
>  };
>  
> +#if 0
> +static int add_fb_parameter(struct device_d *fb_dev)
> +{
> +#ifdef CONFIG_VIDEO_DELAY_INIT
> +	struct cdev *cdev = fb_dev->priv;
> +	struct fb_info *info = cdev->priv;
> +	char cd[10];
> +
> +	/** @todo provide base address parameter for the user */
> +
> +	dev_add_param(fb_dev, "cdepth", fb_cdepth_set, NULL, 0);
> +	if (info->bits_per_pixel == 0) {
> +		dev_set_param(fb_dev, "cdepth", "16");
> +		info->bits_per_pixel = 16;
> +	} else {
> +		sprintf(cd, "%u", info->bits_per_pixel);
> +		dev_set_param(fb_dev, "cdepth", cd);
> +	}
> +	dev_add_param(fb_dev, "mode", fb_mode_set, NULL, 0);
> +	/* default is 'none' for delayed video mode setup */
> +#endif
> +	dev_add_param(fb_dev, "enable", fb_enable_set, NULL, 0);
> +	/* default is 'off' for delayed video output */
> +	return 0;
> +}
> +
> +struct framebuffer_desc {
> +	struct cdev cdev;
> +	struct fb_info info;
> +};
> +
> +static int fb_probe(struct device_d *fb_dev)
> +{
> +	int id = get_free_deviceid("fb");
> +	struct cdev *cdev;
> +	struct fb_info *info;
> +	struct fb_host *host = fb_dev->platform_data;
> +
> +	cdev = xzalloc(sizeof(struct framebuffer_desc));
> +	info = (struct fb_info*)&cdev[1];

Why this? struct fb_info contains a struct cdev which is probably
removed in a later patch in this series. The current implementation
is clearly easier to read than this &cdev[1] construct.

> +
> +	fb_dev->priv = cdev;	/* pointer forward */
> +	cdev->dev = fb_dev;	/* pointer backward */
> +
> +	cdev->ops = &fb_ops;
> +	cdev->name = asprintf("fb%d", id);
> +
> +	cdev->size = fb_dev->size;	/* use the default if any */
> +	cdev->priv = info;
> +
> +	info->host = host;
> +	info->fb_dev = fb_dev;
> +
> +	/* setup defaults */
> +	if (host->bits_per_pixel != 0)
> +		info->bits_per_pixel = host->bits_per_pixel;
> +	else
> +		info->bits_per_pixel = 16;	/* means RGB565 */

No, this does not mean RGB565. It could also mean BGR or even something
else.

> +
> +	/* add params on demand */

There is no information in this comment.

> +	add_fb_parameter(fb_dev);
> +
> +	devfs_create(cdev);
> +#ifndef CONFIG_VIDEO_DELAY_INIT
> +	/* initialize video mode immediately (the first one) */
> +	fb_activate_mode(fb_dev, &host->mode[0]);
> +#endif
> +	return 0;
> +}
> +
> +static struct driver_d fb_driver = {
> +	.name	= "framebuffer",
> +	.probe	= fb_probe,
> +};
> +
> +static int framebuffer_init(void)
> +{
> +	return register_driver(&fb_driver);
> +}
> +
> +device_initcall(framebuffer_init);
> +
> +struct device_d *register_framebuffer(struct fb_host *host, void *base, unsigned size)
> +{
> +	struct device_d *fb_dev;
> +	int rc;
> +
> +	fb_dev = xzalloc(sizeof(struct device_d));
> +
> +	strcpy(fb_dev->name, fb_driver.name);
> +	fb_dev->platform_data = (void*)host;
> +
> +	/* setup the defaults for this framebuffer if given */
> +	fb_dev->size = size;
> +	fb_dev->map_base = (unsigned long)base;
> +
> +	rc = register_device(fb_dev);
> +	if (rc != 0) {
> +		pr_debug("Cannot register framebuffer device\n");
> +		free(fb_dev);
> +		return NULL;
> +	}
> +
> +	return fb_dev;
> +}
> +#endif
> +
>  int register_framebuffer(struct fb_info *info)
>  {
>  	int id = get_free_deviceid("fb");
> diff --git a/include/fb.h b/include/fb.h
> index 218b244..96edc24 100644
> --- a/include/fb.h
> +++ b/include/fb.h
> @@ -85,6 +85,46 @@ struct fb_ops {
>  	void (*fb_disable)(struct fb_info *info);
>  };
>  
> +#if 0
> +struct fb_host {
> +	const struct fb_videomode *mode;
> +	unsigned mode_cnt;
> +
> +	struct device_d *hw_dev;
> +
> +	/* callbacks into the video hardware driver */
> +	int (*fb_setcolreg)(struct fb_info*, unsigned, unsigned, unsigned, unsigned, unsigned);
> +	int (*fb_mode)(struct fb_info*, const struct fb_videomode*);
> +	void (*fb_enable)(struct fb_info*);
> +	void (*fb_disable)(struct fb_info*);
> +
> +	unsigned bits_per_pixel;
> +};
> +
> +struct fb_info {
> +	struct fb_host *host;
> +	struct device_d *fb_dev;
> +	const struct fb_videomode *active_mode;
> +
> +	u32 xres;			/* visible resolution		*/
> +	u32 yres;
> +	u32 bits_per_pixel;		/* guess what			*/
> +
> +	u32 grayscale;			/* != 0 Graylevels instead of colors */
> +
> +	struct fb_bitfield red;		/* bitfield in fb mem if true color, */
> +	struct fb_bitfield green;	/* else only length is significant */
> +	struct fb_bitfield blue;
> +	struct fb_bitfield transp;	/* transparency			*/

If you go the way of duplicating the code and removing the old code
afterwards I would assume that you add the code in the right way and
start to add doxygen from the beginning instead of fixing it later.

> +
> +#ifdef CONFIG_VIDEO_DELAY_ENABLING
> +	int enabled;
> +#endif
> +};

This is unused and removed in a later patch.

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
