Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAxJy-0001wc-Ji
 for barebox@lists.infradead.org; Wed, 17 May 2017 11:40:52 +0000
Date: Wed, 17 May 2017 13:40:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517114028.7fikwmqz6nvwxus7@pengutronix.de>
References: <20170517101656.31717-1-l.stach@pengutronix.de>
 <20170517101656.31717-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170517101656.31717-2-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 2/2] video: select OFTREE from DRIVER_VIDEO_IMX_IPUV3
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 17, 2017 at 12:16:56PM +0200, Lucas Stach wrote:
> DRIVER_VIDEO_IMX_IPUV3 selects VIDEO_VPL, which has a hard dependency
> on OFTREE, so it is required to select this one, too.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/video/imx-ipu-v3/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied (this one), thanks

Sascha

> 
> diff --git a/drivers/video/imx-ipu-v3/Kconfig b/drivers/video/imx-ipu-v3/Kconfig
> index d04123731434..55aeac941550 100644
> --- a/drivers/video/imx-ipu-v3/Kconfig
> +++ b/drivers/video/imx-ipu-v3/Kconfig
> @@ -2,6 +2,7 @@ config DRIVER_VIDEO_IMX_IPUV3
>  	bool "i.MX IPUv3 driver"
>  	depends on ARCH_IMX
>  	select VIDEO_VPL
> +	select OFTREE
>  	help
>  	  Support the IPUv3 found on Freescale i.MX51/53/6 SoCs
>  
> -- 
> 2.11.0
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
