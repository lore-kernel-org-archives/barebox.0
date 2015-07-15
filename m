Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFFW1-0003Lj-2X
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 05:45:58 +0000
Date: Wed, 15 Jul 2015 07:45:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150715054532.GU18700@pengutronix.de>
References: <1436867794-15409-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436867794-15409-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC v2] WIP: fbconsole: not so dirty font selection via
 param_enum
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Tue, Jul 14, 2015 at 12:56:34PM +0300, Antony Pavlov wrote:
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
>  drivers/video/fbconsole.c | 60 +++++++++++++++++++++++++++++++++++++++--------
>  include/linux/font.h      | 11 ++++++---
>  lib/fonts/fonts.c         | 39 ++++++++++++++++--------------
>  3 files changed, 80 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index 36fd138..7df89ab 100644
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

I found out this is not entirely correct. Clearing the screen (\e[2J)
and putting the cursor top left (\e[;H) are two different things.

I integrated the changes from this patch, but changed cls() not to put
the cursor in home position.

Also I integrated some other changes:

- Fix fbc_set_active, no longer lose memory when called multiple times
- Add 7x14 font
- properly export get_pixel
- Add fb_enable/fb_disable function so that we do not have to call into
  the fb_info ops directly
- Make splash screen work again, was broken by "graphics_utils: Let
  fb_open allocate the screen"

Checkout the result on -next.

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
