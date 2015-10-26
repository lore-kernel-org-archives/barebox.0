Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zqc3X-0005RC-PA
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 07:19:00 +0000
Date: Mon, 26 Oct 2015 08:18:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151026071836.GQ14356@pengutronix.de>
References: <u74147@gmail.com>
 <1445683088-25675-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445683088-25675-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] lib:font:fbconsole: add custom font support for review
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 24, 2015 at 01:38:08PM +0300, Du Huanpeng wrote:
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  drivers/video/fbconsole.c   |  39 ++++-----
>  include/linux/font.h        |  11 ++-
>  lib/fonts/Kconfig           |   5 ++
>  lib/fonts/Makefile          |   4 +
>  lib/fonts/font_7x14.c       |   1 +
>  lib/fonts/font_8x16.c       |   1 +
>  lib/fonts/font_custom_16x.c | 206 ++++++++++++++++++++++++++++++++++++++++++++
>  lib/fonts/font_mini_4x6.c   |   1 +
>  lib/fonts/fonts.c           |  32 +++++++
>  9 files changed, 279 insertions(+), 21 deletions(-)
>  create mode 100644 lib/fonts/font_custom_16x.c
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index b10503e..dad45c3 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -22,8 +22,8 @@ struct fbc_priv {
>  	struct param_d *par_font;
>  	int par_font_val;
>  
> -	int font_width, font_height;
> -	const u8 *fontdata;
> +	struct font_desc font;
> +
>  	unsigned int cols, rows;
>  	unsigned int x, y; /* cursor position */
>  
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
> -	inbuf = &priv->fontdata[c * priv->font_height];
> +	i = find_font_index(&priv->font, c);
> +	inbuf = priv->font.data + i;
>  
>  	line_length = priv->fb->line_length;
>  
> @@ -113,13 +114,13 @@ static void drawchar(struct fbc_priv *priv, int x, int y, char c)
>  	rgb = &colors[bgcolor];
>  	bgcolor = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
>  
> -	for (i = 0; i < priv->font_height; i++) {
> +	for (i = 0; i < priv->font.height; i++) {
>  		uint8_t t = inbuf[i];
>  		int j;
>  
> -		adr = buf + line_length * (y * priv->font_height + i) + x * priv->font_width * bpp;
> +		adr = buf + line_length * (y * priv->font.height + i) + x * priv->font.width * bpp;
>  
> -		for (j = 0; j < priv->font_width; j++) {
> +		for (j = 0; j < priv->font.width; j++) {

This patch has several hunks without changes which makes it hard to look
at.

Somehow this looks like beginning unicode support. Wouldn't it be better
to pick the relevant parts we need from unicode and support them?

> +const struct font_index fontdata_custom_16x_index[] = {
> +	{ 0x0000, 0x0000 },
> +	{ 0x54C0, 0x00E0 },
> +	{ 0x54CE, 0x00A0 },
> +	{ 0x554A, 0x0020 },
> +	{ 0x57C3, 0x0060 },
> +	{ 0x5509, 0x00C0 },
> +	{ 0x6328, 0x0080 },
> +	{ 0x769A, 0x0100 },
> +	{ 0x963F, 0x0040 },
> +	{ 0xFFFF, 0x0120 },
> +};
> +
> +const struct font_desc font_custom_16x = {
> +	.name	= "CUSTOM-16x",
> +	.width	= 16,
> +	.height	= 16,
> +	.data	= fontdata_custom_16x,
> +	.index	= fontdata_custom_16x_index,
> +	.num_chars = 10,

	.num_chars = ARRAY_SIZE(fontdata_custom_16x_index),

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
