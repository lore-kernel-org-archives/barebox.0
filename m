Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PHw1I-0007fE-3L
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 10:10:45 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 15 Nov 2010 11:04:52 +0100
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<1288092708-5187-4-git-send-email-jbe@pengutronix.de>
	<20101101134714.GX6017@pengutronix.de>
In-Reply-To: <20101101134714.GX6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201011151104.52552.jbe@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer wrote:
> [...]
> > +	fb_dev->priv = cdev;	/* pointer forward */
> > +	cdev->dev = fb_dev;	/* pointer backward */
> > +
> > +	cdev->ops = &fb_ops;
> > +	cdev->name = asprintf("fb%d", id);
> > +
> > +	cdev->size = fb_dev->size;	/* use the default if any */
> > +	cdev->priv = info;
> > +
> > +	info->host = host;
> > +	info->fb_dev = fb_dev;
> > +
> > +	/* setup defaults */
> > +	if (host->bits_per_pixel != 0)
> > +		info->bits_per_pixel = host->bits_per_pixel;
> > +	else
> > +		info->bits_per_pixel = 16;	/* means RGB565 */
>
> No, this does not mean RGB565. It could also mean BGR or even something
> else.

You are right. But currently it means exactly what I wrote. All drivers 
currently using RGB565 for 16 bpp. To make it as you stated, we need more 
information about the bits per colour and their layout. Currently the 
graphics drivers do it in their own way. No way to intervent from the 
platform file.

> > +
> > +	/* add params on demand */
>
> There is no information in this comment.

Yes and no ;-) But when "CONFIG_VIDEO_DELAY_INIT" is gone also this feature is 
gone.

> > +	add_fb_parameter(fb_dev);
> > +
> > +	devfs_create(cdev);
> > +#ifndef CONFIG_VIDEO_DELAY_INIT
> > +	/* initialize video mode immediately (the first one) */
> > +	fb_activate_mode(fb_dev, &host->mode[0]);
> > +#endif
> > +	return 0;
> > +}
> > +
> > +static struct driver_d fb_driver = {
> > +	.name	= "framebuffer",
> > +	.probe	= fb_probe,
> > +};
> > +
> > +static int framebuffer_init(void)
> > +{
> > +	return register_driver(&fb_driver);
> > +}
> > +
> > +device_initcall(framebuffer_init);
> > +
> > +struct device_d *register_framebuffer(struct fb_host *host, void *base,
> > unsigned size) +{
> > +	struct device_d *fb_dev;
> > +	int rc;
> > +
> > +	fb_dev = xzalloc(sizeof(struct device_d));
> > +
> > +	strcpy(fb_dev->name, fb_driver.name);
> > +	fb_dev->platform_data = (void*)host;
> > +
> > +	/* setup the defaults for this framebuffer if given */
> > +	fb_dev->size = size;
> > +	fb_dev->map_base = (unsigned long)base;
> > +
> > +	rc = register_device(fb_dev);
> > +	if (rc != 0) {
> > +		pr_debug("Cannot register framebuffer device\n");
> > +		free(fb_dev);
> > +		return NULL;
> > +	}
> > +
> > +	return fb_dev;
> > +}
> > +#endif
> > +
> >  int register_framebuffer(struct fb_info *info)
> >  {
> >  	int id = get_free_deviceid("fb");
> > diff --git a/include/fb.h b/include/fb.h
> > index 218b244..96edc24 100644
> > --- a/include/fb.h
> > +++ b/include/fb.h
> > @@ -85,6 +85,46 @@ struct fb_ops {
> >  	void (*fb_disable)(struct fb_info *info);
> >  };
> >
> > +#if 0
> > +struct fb_host {
> > +	const struct fb_videomode *mode;
> > +	unsigned mode_cnt;
> > +
> > +	struct device_d *hw_dev;
> > +
> > +	/* callbacks into the video hardware driver */
> > +	int (*fb_setcolreg)(struct fb_info*, unsigned, unsigned, unsigned,
> > unsigned, unsigned); +	int (*fb_mode)(struct fb_info*, const struct
> > fb_videomode*);
> > +	void (*fb_enable)(struct fb_info*);
> > +	void (*fb_disable)(struct fb_info*);
> > +
> > +	unsigned bits_per_pixel;
> > +};
> > +
> > +struct fb_info {
> > +	struct fb_host *host;
> > +	struct device_d *fb_dev;
> > +	const struct fb_videomode *active_mode;
> > +
> > +	u32 xres;			/* visible resolution		*/
> > +	u32 yres;
> > +	u32 bits_per_pixel;		/* guess what			*/
> > +
> > +	u32 grayscale;			/* != 0 Graylevels instead of colors */
> > +
> > +	struct fb_bitfield red;		/* bitfield in fb mem if true color, */
> > +	struct fb_bitfield green;	/* else only length is significant */
> > +	struct fb_bitfield blue;
> > +	struct fb_bitfield transp;	/* transparency			*/
>
> If you go the way of duplicating the code and removing the old code
> afterwards I would assume that you add the code in the right way and
> start to add doxygen from the beginning instead of fixing it later.

I tried. But it makes the patch unreadable due to the fact it touches more 
lines than required for the code itself. And I know you don't like patches 
with too many '+' and '-' lines in...

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
