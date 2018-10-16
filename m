Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCJMD-0008Vm-AC
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 07:01:35 +0000
Date: Tue, 16 Oct 2018 09:01:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181016070119.glfv67abjufqhppe@pengutronix.de>
References: <20181015165743.20795-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181015165743.20795-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] rave-sp: backlight: Specify parent device correctly
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 15, 2018 at 09:57:43AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/video/rave-sp-backlight.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/rave-sp-backlight.c b/drivers/video/rave-sp-backlight.c
> index 88ec86e73..3a20def66 100644
> --- a/drivers/video/rave-sp-backlight.c
> +++ b/drivers/video/rave-sp-backlight.c
> @@ -46,6 +46,7 @@ static int rave_sp_backlight_probe(struct device_d *dev)
>  
>  	bd = xzalloc(sizeof(*bd));
>  	bd->dev.priv = dev->parent->priv;
> +	bd->dev.parent = dev;
>  	bd->brightness_default = 50;
>  	bd->brightness_max = 100;
>  	bd->brightness_set = rave_sp_backlight_set;
> -- 
> 2.17.1
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
