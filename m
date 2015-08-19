Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS3hg-00014a-F1
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 13:46:56 +0000
Date: Wed, 19 Aug 2015 15:46:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819134634.GT18700@pengutronix.de>
References: <1439885905-4214-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439885905-4214-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] video: vpl: depend on OFTREE
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 18, 2015 at 10:18:24AM +0200, Lucas Stach wrote:
> VPL uses the of_graph bindings, which are only available if OFTREE
> support is compiled in.
> 
> Also fix the drivers using VPL to depend on OFTREE.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/video/Kconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index bb8bbb539481..5ecac4209696 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -13,6 +13,7 @@ config FRAMEBUFFER_CONSOLE
>  	prompt "framebuffer console support"
>  
>  config VIDEO_VPL
> +	depends on OFTREE
>  	bool
>  
>  config DRIVER_VIDEO_ATMEL
> @@ -122,6 +123,7 @@ config DRIVER_VIDEO_MTL017
>  	select VIDEO_VPL
>  	depends on I2C
>  	depends on GPIOLIB
> +	depends on OFTREE

This doesn't apply neither on master nor on next. Where shall this patch
be applied?

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
