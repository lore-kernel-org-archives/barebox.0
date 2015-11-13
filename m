Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx8t6-0003ei-7W
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 07:35:12 +0000
Date: Fri, 13 Nov 2015 08:34:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151113073450.GZ8526@pengutronix.de>
References: <1447271754-13692-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447271754-13692-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] video: imx: quieten down VPL output
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 11, 2015 at 08:55:54PM +0100, Lucas Stach wrote:
> Printing 3 lines of output per CRTC if no modes are found (which
> may be just fine if no display is attached) is just a bit too much,
> especially on SoCs like i.MX6Q that carry 4 CRTCs.
> Failing to find modes is not a fatal error, so the error does not
> need to be propagated into a probe failure.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/video/imx-ipu-v3/ipufb.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
> index a96883c..ea81270 100644
> --- a/drivers/video/imx-ipu-v3/ipufb.c
> +++ b/drivers/video/imx-ipu-v3/ipufb.c
> @@ -308,7 +308,7 @@ static int ipufb_probe(struct device_d *dev)
>  
>  	node = of_graph_get_port_by_id(dev->parent->device_node, 2 + pdata->di);
>  	if (node && of_graph_port_is_available(node)) {
> -		dev_info(fbi->dev, "register vpl for %s\n", dev->parent->device_node->full_name);
> +		dev_dbg(fbi->dev, "register vpl for %s\n", dev->parent->device_node->full_name);

I recently already applied this hunk.

>  
>  		fbi->vpl.node = dev->parent->device_node;
>  		ret = vpl_register(&fbi->vpl);
> @@ -330,8 +330,8 @@ static int ipufb_probe(struct device_d *dev)
>  
>  		ret = vpl_ioctl(&fbi->vpl, 2 + fbi->dino, VPL_GET_VIDEOMODES, &info->modes);
>  		if (ret) {
> -			dev_err(fbi->dev, "failed to get modes: %s\n", strerror(-ret));
> -			return ret;
> +			dev_dbg(fbi->dev, "failed to get modes: %s\n", strerror(-ret));
> +			return 0;
>  		}

I looked at this one aswell and wondered if it would be better to just
register the framebuffer without modes. Trying to enable this
framebuffer results in:

imx-ipuv3-crtc imx-ipuv3-crtc0: No valid mode found

Which might be a better hint what actually went wrong with the
framebuffer.

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
