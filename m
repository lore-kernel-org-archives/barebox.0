Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cibYK-0006rZ-La
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 06:46:34 +0000
Date: Tue, 28 Feb 2017 07:46:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170228064605.4a3aqhgiwdzhw6q2@pengutronix.de>
References: <20170227075752.nb4rg64glmr67cmw@pengutronix.de>
 <20170227133930.1230-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170227133930.1230-1-bst@pengutronix.de>
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
Subject: Re: [PATCH v3] fbconsole: check cursor position before moving
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 27, 2017 at 02:39:30PM +0100, Bastian Stender wrote:
> Moving the cursor to x=2, y=2 with "\e[3;3H" on a 12x2 framebuffer
> console lead to a barebox crash while drawing the cursor. If the
> cursor position is out of bounds clip the cursor to the corresponding
> edge.
> 
> Signed-off-by: Bastian Stender <bst@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/video/fbconsole.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index 64f7d7364e..33649c597d 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -264,10 +264,13 @@ static void fbc_parse_csi(struct fbc_priv *priv)
>  		return;
>  	case 'H':
>  		video_invertchar(priv, priv->x, priv->y);
> +
>  		pos = simple_strtoul(priv->csi, &end, 10);
> -		priv->y = pos ? pos - 1 : 0;
> +		priv->y = clamp(pos - 1, 0, (int) priv->rows);
> +
>  		pos = simple_strtoul(end + 1, NULL, 10);
> -		priv->x = pos ? pos - 1 : 0;
> +		priv->x = clamp(pos - 1, 0, (int) priv->cols);
> +
>  		video_invertchar(priv, priv->x, priv->y);
>  	case 'K':
>  		pos = simple_strtoul(priv->csi, &end, 10);
> -- 
> 2.11.0
> 
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
