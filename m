Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFeex-0005lT-0Z
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:36:51 +0000
Date: Thu, 16 Jul 2015 10:36:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150716083627.GG5161@pengutronix.de>
References: <1437031912-24754-1-git-send-email-s.hauer@pengutronix.de>
 <1437031912-24754-13-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437031912-24754-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 12/12] video: implement framebuffer console
To: Barebox List <barebox@lists.infradead.org>

On Thu, Jul 16, 2015 at 09:31:52AM +0200, Sascha Hauer wrote:
> From: Antony Pavlov <antonynpavlov@gmail.com>
> 
> This patch realizes framebuffer console support for barebox. It
> supports colors and enough escape sequences to show the barebox
> console and editor properly.
> 
> fbconsole mini-HOWTO
> ====================
> 
> 1. compile sandbox barebox with
> 
>     CONFIG_VIDEO=y
>     CONFIG_FRAMEBUFFER_CONSOLE=y
>     CONFIG_DRIVER_VIDEO_SDL=y
> 
> 2. run barebox
> 
> 3. test fbconsole
> 
>     fbconsole0.active=oe
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> +int register_fbconsole(struct fb_info *fb)
> +{
> +	struct fbc_priv *priv;
> +	struct console_device *cdev;
> +	int ret;
> +
> +	priv = xzalloc(sizeof(*priv));
> +
> +	priv->fb = fb;
> +	priv->x = 0;
> +	priv->y = 0;
> +	priv->color = 0xff00ff00;

Oops, this is wrong. Should be priv->color = 7 now.

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
