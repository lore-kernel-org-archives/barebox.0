Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNecZ-0000DV-JL
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 06:57:52 +0000
Date: Mon, 15 Oct 2012 08:57:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121015065749.GG27665@pengutronix.de>
References: <1350224828-17523-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350224828-17523-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] amba: add periph id RO params to the device
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 14, 2012 at 04:27:08PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to knonw the pid probed
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/amba/bus.c |    7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index f0a40b6..d1ab53c 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -157,6 +157,13 @@ int amba_device_add(struct amba_device *dev)
>  	if (ret)
>  		goto err_release;
>  
> +	if (IS_ENABLED(CONFIG_PARAMETER)) {
> +		char str[16];
> +
> +		sprintf(str, "0x%08x", dev->periphid);
> +		dev_add_param_fixed(&dev->dev, "periphid", str);
> +	}
> +
>  		return ret;
>   err_release:
>  	release_region(res);
> -- 
> 1.7.10.4
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
