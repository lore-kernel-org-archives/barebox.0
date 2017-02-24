Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chAMz-0005cV-P5
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 07:32:52 +0000
Date: Fri, 24 Feb 2017 08:32:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170224073227.vs2a5lhz7rc2b3g2@pengutronix.de>
References: <20170223172022.858-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170223172022.858-1-bst@pengutronix.de>
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
Subject: Re: [PATCH 1/2] fbconsole: check cursor position before moving
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 23, 2017 at 06:20:21PM +0100, Bastian Stender wrote:
> Moving the cursor to x=2, y=2 with "\e[3;3H" on a 12x2 framebuffer
> console lead to a barebox crash while drawing the cursor. The cursor can
> only be moved to a valid position between (0,0) and (priv->cols,
> priv->rows) now.
> 
> Signed-off-by: Bastian Stender <bst@pengutronix.de>
> ---
>  drivers/video/fbconsole.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index 64f7d7364e..3879741b2a 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -264,10 +264,13 @@ static void fbc_parse_csi(struct fbc_priv *priv)
>  		return;
>  	case 'H':
>  		video_invertchar(priv, priv->x, priv->y);
> +
>  		pos = simple_strtoul(priv->csi, &end, 10);
> -		priv->y = pos ? pos - 1 : 0;
> +		priv->y = (pos && pos <= priv->rows + 1) ? pos - 1 : 0;
> +
>  		pos = simple_strtoul(end + 1, NULL, 10);
> -		priv->x = pos ? pos - 1 : 0;
> +		priv->x = (pos && pos <= priv->cols + 1) ? pos - 1 : 0;
> +

When moving out of the screen shouldn't we place the cursor on the
bottom right corner of the screen? With this patch we move it to the top
left corner.

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
