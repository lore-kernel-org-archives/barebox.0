Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f5Qk3-0007b0-6P
 for barebox@lists.infradead.org; Mon, 09 Apr 2018 06:57:28 +0000
Date: Mon, 9 Apr 2018 08:57:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180409065715.q5lmifctn2wpnlau@pengutronix.de>
References: <20180406154929.8604-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180406154929.8604-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] video: IPUv3-LDB: demote dual-channel message to info
 level
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 06, 2018 at 05:49:29PM +0200, Lucas Stach wrote:
> Dual channel mode is a valid mode of operation, so there is no reason to
> print this at the warning level.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/video/imx-ipu-v3/imx-ldb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
> index 33dbade87007..9b4524274c4e 100644
> --- a/drivers/video/imx-ipu-v3/imx-ldb.c
> +++ b/drivers/video/imx-ipu-v3/imx-ldb.c
> @@ -347,7 +347,7 @@ static int imx_ldb_probe(struct device_d *dev)
>  			return -EINVAL;
>  
>  		if (dual && i > 0) {
> -			dev_warn(dev, "dual-channel mode, ignoring second output\n");
> +			dev_info(dev, "dual-channel mode, ignoring second output\n");
>  			continue;
>  		}
>  
> -- 
> 2.16.1
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
