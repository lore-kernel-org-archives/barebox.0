Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0lRV-0001jE-Tj
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:21:43 +0000
Date: Mon, 23 Nov 2015 08:21:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123072120.GR11966@pengutronix.de>
References: <1448195089-26403-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448195089-26403-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] font: fbconsole: add custom font supports
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 22, 2015 at 08:24:49PM +0800, Du Huanpeng wrote:
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  drivers/video/fbconsole.c   |  5 +++--
>  include/linux/font.h        |  8 ++++++++
>  lib/fonts/Kconfig           |  5 +++++
>  lib/fonts/Makefile          |  1 +
>  lib/fonts/font_custom_16x.c | 50 +++++++++++++++++++++++++++++++++++++++++++++
>  lib/fonts/fonts.c           | 23 +++++++++++++++++++++
>  6 files changed, 90 insertions(+), 2 deletions(-)
>  create mode 100644 lib/fonts/font_custom_16x.c

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index 3842f63..693c21f 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -84,7 +84,7 @@ static struct rgb colors[] = {
>  	{ 255, 255, 255 },
>  };
>  
> -static void drawchar(struct fbc_priv *priv, int x, int y, char c)
> +static void drawchar(struct fbc_priv *priv, int x, int y, int c)
>  {
>  	void *buf;
>  	int bpp = priv->fb->bits_per_pixel >> 3;
> @@ -97,7 +97,8 @@ static void drawchar(struct fbc_priv *priv, int x, int y, char c)
>  
>  	buf = gui_screen_render_buffer(priv->sc);
>  
> -	inbuf = priv->font->data + c * priv->font->height;
> +	i = find_font_index(priv->font, c);
> +	inbuf = priv->font->data + i;
>  
>  	line_length = priv->fb->line_length;
>  
> diff --git a/include/linux/font.h b/include/linux/font.h
> index f8b0e94..feeab97 100644
> --- a/include/linux/font.h
> +++ b/include/linux/font.h
> @@ -12,17 +12,25 @@
>  #define _VIDEO_FONT_H
>  
>  #include <param.h>
> +#include <wchar.h>
>  
> +struct font_index {
> +	wchar_t wc;	/* code of the char. */
> +	short index;	/* offset of the char in the bitmap. */
> +};
>  struct font_desc {
>  	const char *name;
>  	int width, height;
> +	struct font_index *index;
>  	const void *data;
> +	int num_chars;
>  	struct list_head list;
>  };
>  
>  /* Max. length for the name of a predefined font */
>  #define MAX_FONT_NAME	32
>  
> +extern int find_font_index(const struct font_desc *font, int ch);
>  extern const struct font_desc *find_font_enum(int n);
>  extern struct param_d *add_param_font(struct device_d *dev,
>  		int (*set)(struct param_d *p, void *priv),
> diff --git a/lib/fonts/Kconfig b/lib/fonts/Kconfig
> index 715d5e5..d23b283 100644
> --- a/lib/fonts/Kconfig
> +++ b/lib/fonts/Kconfig
> @@ -20,6 +20,11 @@ config FONT_7x14
>  config FONT_MINI_4x6
>  	bool "Mini 4x6 font"
>  
> +config FONT_CUSTOM_16X
> +	bool "Custom 16x16 font"
> +	help
> +	  This font is useful for Chinese and other non ascii chars.
> +
>  config FONT_AUTOSELECT
>  	def_bool y
>  	depends on !FONT_MINI_4x6
> diff --git a/lib/fonts/Makefile b/lib/fonts/Makefile
> index b7d4765..98245b3 100644
> --- a/lib/fonts/Makefile
> +++ b/lib/fonts/Makefile
> @@ -5,6 +5,7 @@ font-objs := fonts.o
>  font-objs-$(CONFIG_FONT_8x16)      += font_8x16.o
>  font-objs-$(CONFIG_FONT_7x14)      += font_7x14.o
>  font-objs-$(CONFIG_FONT_MINI_4x6)  += font_mini_4x6.o
> +font-objs-$(CONFIG_FONT_CUSTOM_16X)+= font_custom_16x.o
>  
>  font-objs += $(font-objs-y)
>  
> diff --git a/lib/fonts/font_custom_16x.c b/lib/fonts/font_custom_16x.c
> new file mode 100644
> index 0000000..2666e1f
> --- /dev/null
> +++ b/lib/fonts/font_custom_16x.c
> @@ -0,0 +1,50 @@
> +/*
> + * by Du Huanpeng <u74147@gmail.com>
> + */
> +
> +#include <init.h>
> +#include <module.h>
> +#include <linux/font.h>
> +#include <common.h>
> +
> +/* place real font data here or set fontdata_custom_16x points to
> + * the address of font data and also setup the index.
> + */
> +
> +static const unsigned char fontdata_custom_16x[] = {
> +	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
> +};
> +
> +static struct font_index fontdata_custom_16x_index[] = {
> +	{ 0x0000, 0x0000 },
> +};
> +
> +static struct font_desc font_custom_16x = {
> +	.name	= "CUSTOM-16x",
> +	.width	= 16,
> +	.height	= 16,
> +	.data	= fontdata_custom_16x,
> +	.index	= fontdata_custom_16x_index,
> +	.num_chars = ARRAY_SIZE(fontdata_custom_16x_index),
> +};
> +
> +static int font_custom_16x_register(void)
> +{
> +	return font_register(&font_custom_16x);
> +}
> +postcore_initcall(font_custom_16x_register);
> diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
> index d59d688..926f880 100644
> --- a/lib/fonts/fonts.c
> +++ b/lib/fonts/fonts.c
> @@ -31,6 +31,29 @@ int font_register(struct font_desc *font)
>  
>  	return 0;
>  }
> +int find_font_index(const struct font_desc *font, int ch)
> +{
> +	int index;
> +	if (font->index == NULL) {
> +		index  = font->width + 7;
> +		index /= 8;
> +		index *= font->height;
> +		index *= ch;
> +	} else {
> +		/*
> +		* FIXME: use binary search instead!
> +		*/
> +		index = font->num_chars - 1;
> +
> +		while (index && font->index[index].wc != ch)
> +			index--;
> +
> +		/* return 0 if not found. */
> +		index = font->index->index;
> +	}
> +
> +	return index;
> +}
>  
>  const struct font_desc *find_font_enum(int n)
>  {
> -- 
> 1.9.1
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
