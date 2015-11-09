Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zvfwd-0004Or-28
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 06:28:47 +0000
Date: Mon, 9 Nov 2015 07:28:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151109062824.GQ8526@pengutronix.de>
References: <1446952576-2228-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446952576-2228-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] fbconsole: move font variable into struct font_desc
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 07, 2015 at 07:16:16PM -0800, Du Huanpeng wrote:
> replace font related variables with a struct pointer,
> font_desc.
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  drivers/video/fbconsole.c | 36 +++++++++++++++++-------------------
>  1 file changed, 17 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index b10503e..60f3c48 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -22,8 +22,8 @@ struct fbc_priv {
>  	struct param_d *par_font;
>  	int par_font_val;
>  
> -	int font_width, font_height;
> -	const u8 *fontdata;
> +	const struct font_desc *font;
> +
>  	unsigned int cols, rows;
>  	unsigned int x, y; /* cursor position */
>  
> @@ -97,7 +97,7 @@ static void drawchar(struct fbc_priv *priv, int x, int y, char c)
>  
>  	buf = gui_screen_render_buffer(priv->sc);
>  
> -	inbuf = &priv->fontdata[c * priv->font_height];
> +	inbuf = &priv->font->data[c * priv->font->height];

I replaced this with:

	inbuf = priv->font->data + c * priv->font->height;

Otherwise we get:

drivers/video/fbconsole.c:100:27: warning: dereferencing 'void *' pointer

but otherwise: Applied, thanks

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
