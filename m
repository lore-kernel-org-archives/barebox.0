Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciGCE-0004rw-E8
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 07:58:16 +0000
Date: Mon, 27 Feb 2017 08:57:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170227075752.nb4rg64glmr67cmw@pengutronix.de>
References: <b1f158a9-5dff-0b2c-4517-a5daf009eeae@pengutronix.de>
 <20170224133627.26495-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170224133627.26495-1-bst@pengutronix.de>
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
Subject: Re: [PATCH v2] fbconsole: check cursor position before moving
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 24, 2017 at 02:36:27PM +0100, Bastian Stender wrote:
> Moving the cursor to x=2, y=2 with "\e[3;3H" on a 12x2 framebuffer
> console lead to a barebox crash while drawing the cursor. If the
> cursor position is out of bounds clip the cursor to the corresponding
> edge.
> 
> Signed-off-by: Bastian Stender <bst@pengutronix.de>
> ---
>  drivers/video/fbconsole.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index 64f7d7364e..843a026ff6 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -264,10 +264,13 @@ static void fbc_parse_csi(struct fbc_priv *priv)
>  		return;
>  	case 'H':
>  		video_invertchar(priv, priv->x, priv->y);
> +
>  		pos = simple_strtoul(priv->csi, &end, 10);
> -		priv->y = pos ? pos - 1 : 0;
> +		priv->y = !pos ? 0 : pos < priv->rows ? pos - 1 : priv->rows - 1;
> +
>  		pos = simple_strtoul(end + 1, NULL, 10);
> -		priv->x = pos ? pos - 1 : 0;
> +		priv->x = !pos ? 0 : pos < priv->cols ? pos - 1 : priv->cols - 1;

Not nice to read. Fortunately this situation is common enough so that we
have a function for it:

		priv->x = clamp(pos, 0, priv->cols - 1);

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
