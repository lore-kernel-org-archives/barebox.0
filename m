Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEslP-000225-7h
 for barebox@lists.infradead.org; Tue, 14 Jul 2015 05:28:20 +0000
Date: Tue, 14 Jul 2015 07:27:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150714052756.GP18700@pengutronix.de>
References: <1436819289-9752-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436819289-9752-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] WIP: fbconsole: very dirty font selection via param_enum
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 13, 2015 at 11:28:09PM +0300, Antony Pavlov wrote:
> Alas I can't find any tab-complition for param_enum,
> so addition 'fonts' command is introduced.
> 
> Usage example:
> ==============
> 
>     barebox@barebox sandbox:/ fonts
>     VGA8x16
>     MINI4x6
>     barebox@barebox sandbox:/ fbconsole0.font=MINI4x6
>     barebox@barebox sandbox:/ fbconsole0.active=o
>     fb0: framebuffer console 160x80 activated
>     barebox@barebox sandbox:/ fbconsole0.font=VGA8x16
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/video/fbconsole.c | 55 +++++++++++++++++++++++++++++++++++++++++------
>  include/linux/font.h      |  8 +++++++
>  lib/fonts/fonts.c         | 44 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 100 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index 36fd138..43a73d9 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -20,6 +20,10 @@ struct fbc_priv {
>  	struct fb_info *fb;
>  
>  	struct screen *sc;
> +
> +	struct param_d *par_font;
> +	int par_font_val;
> +
>  /* FIXME */
>  #define VIDEO_FONT_CHARS 256
>  	struct image *chars[VIDEO_FONT_CHARS];
> @@ -47,6 +51,16 @@ static int fbc_tstc(struct console_device *cdev)
>  	return 0;
>  }
>  
> +static void cls(struct fbc_priv *priv)
> +{
> +	void *buf = gui_screen_render_buffer(priv->sc);
> +
> +	memset(buf, 0, priv->fb->line_length * priv->fb->yres);
> +
> +	priv->x = 0;
> +	priv->y = 0;
> +}
> +
>  static void drawchar(struct fbc_priv *priv, int x, int y, char c)
>  {
>  	void *buf;
> @@ -173,12 +187,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
>  	}
>  
>  	if (*end == 'J' && a == 2 && b == -1) {
> -		void *buf = gui_screen_render_buffer(priv->sc);
> -
> -		memset(buf, 0, priv->fb->line_length * priv->fb->yres);
> -
> -		priv->x = 0;
> -		priv->y = 0;
> +		cls(priv);
>  		video_invertchar(priv, priv->x, priv->y);
>  	}
>  
> @@ -270,7 +279,7 @@ static int fbc_set_active(struct console_device *cdev, unsigned flags)
>  	struct fb_info *fb = priv->fb;
>  	const struct font_desc *font;
>  
> -	font = find_font("MINI4x6");
> +	font = find_font(font_by_param_value(priv->par_font_val));

This find_font(font_by_param_value()) doesn't look very nice. I think
there should be a const struct font_desc *find_font_enum(int); or
similar which doesn't take the detour via the font name.

>  	if (!font) {
>  		return -ENOENT;
>  	}
> @@ -296,6 +305,33 @@ static int fbc_set_active(struct console_device *cdev, unsigned flags)
>  	return 0;
>  }
>  
> +static int set_font(struct param_d *p, void *vpriv)
> +{
> +	struct fbc_priv *priv = vpriv;
> +	struct console_device *cdev = &priv->cdev;
> +
> +	if (cdev->f_active & CONSOLE_STDOUT) {

(CONSOLE_STDOUT | CONSOLE_ERR)

> +		struct fb_info *fb = priv->fb;
> +		const struct font_desc *font;
> +
> +		cls(priv);
> +
> +		font = find_font(font_by_param_value(priv->par_font_val));
> +
> +		/* FIXME: code duplication */
> +		priv->font_width = font->width;
> +		priv->font_height = font->height;
> +		priv->fontdata = font->data;
> +
> +		priv->rows = fb->yres / priv->font_height - 1;
> +		priv->cols = fb->xres / priv->font_width - 1;
> +
> +		priv->state = LIT;

Is this correct? If we are in the middle of an escape sequence, why
should we leave it here?

> +	}
> +
> +	return 0;
> +}
> +
>  int register_fbconsole(struct fb_info *fb)
>  {
>  	struct fbc_priv *priv;
> @@ -325,6 +361,11 @@ int register_fbconsole(struct fb_info *fb)
>  		return ret;
>  	}
>  
> +	priv->par_font_val = 0;
> +	priv->par_font = add_param_font(&cdev->class_dev,
> +			set_font, NULL,
> +			&priv->par_font_val, priv);
> +
>  	pr_info("registered as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
>  
>  	return 0;
> diff --git a/include/linux/font.h b/include/linux/font.h
> index 24d6355..4171c5c 100644
> --- a/include/linux/font.h
> +++ b/include/linux/font.h
> @@ -11,6 +11,8 @@
>  #ifndef _VIDEO_FONT_H
>  #define _VIDEO_FONT_H
>  
> +#include <param.h>
> +
>  struct font_desc {
>  	const char *name;
>  	int width, height;
> @@ -26,4 +28,10 @@ extern const struct font_desc *find_font(const char *name);
>  /* Max. length for the name of a predefined font */
>  #define MAX_FONT_NAME	32
>  
> +extern struct param_d *add_param_font(struct device_d *dev,
> +		int (*set)(struct param_d *p, void *priv),
> +		int (*get)(struct param_d *p, void *priv),
> +		int *value, void *priv);
> +extern char *font_by_param_value(int value);
> +
>  #endif /* _VIDEO_FONT_H */
> diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
> index dbd1813..528ee3c 100644
> --- a/lib/fonts/fonts.c
> +++ b/lib/fonts/fonts.c
> @@ -61,6 +61,50 @@ const struct font_desc *find_font(const char *name)
>  
>  EXPORT_SYMBOL(find_font);
>  
> +static char *font_names;
> +
> +char *font_by_param_value(int value)
> +{
> +	return ((char **)font_names)[value];
> +}
> +
> +struct param_d *add_param_font(struct device_d *dev,
> +		int (*set)(struct param_d *p, void *priv),
> +		int (*get)(struct param_d *p, void *priv),
> +		int *value, void *priv)
> +{
> +	unsigned int i;
> +	int t = num_fonts;
> +

	if (!font_names) {
> +	font_names = xmalloc(sizeof(char *) * t);
> +
> +	for (i = 0; i < num_fonts; i++)
> +		((const char **)font_names)[i] = fonts[i]->name;
	}

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
