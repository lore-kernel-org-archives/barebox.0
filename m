Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ye20Y-0001sV-3Z
 for barebox@lists.infradead.org; Fri, 03 Apr 2015 13:51:39 +0000
Date: Fri, 3 Apr 2015 15:51:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150403135114.GG4946@pengutronix.de>
References: <1427989011-26503-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1427989011-26503-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH 1/2] wdog: imx-wd: Introduce ops struct for imx21/imx1
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 02, 2015 at 05:36:50PM +0200, Markus Pargmann wrote:
> Replace the set_timeout function in the device platform data by an ops
> struct which stores a set_timeout and init function.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
>  	}
>  
> -	if (fn != imx1_watchdog_set_timeout)
> -		imx_watchdog_detect_reset_source(priv);
> +	if (priv->ops->init) {
> +		ret = priv->ops->init(priv);
> +		if (ret) {
> +			dev_err(dev, "Failed to init watchdog device %d\n", ret);
> +			goto error_unregister;
> +		}
> +	}
>  
>  	dev->priv = priv;
>  
>  	return 0;
>  
> +error_unregister:
> +	watchdog_deregister(&priv->wd);

I had to revert this one because compilation fails with:

imx-iomux-v1.c:(.text.imx_wd_probe+0xb0): undefined reference to `watchdog_deregister'

This happens when watchdog support is disabled. imxwd.c is compiled
anyway because it provides the reset function. Either you have to
provide static inline wrappers or reorder the code so that
watchdog_register is called last and thus you don't have to call
watchdog_deregister().

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
