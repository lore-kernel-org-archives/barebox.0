Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XC0o6-0002uW-62
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 06:22:42 +0000
Date: Tue, 29 Jul 2014 08:22:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140729062219.GD23235@pengutronix.de>
References: <1406579067-3866-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406579067-3866-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH] mfd: mc34704: Add DT support
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 28, 2014 at 10:24:27PM +0200, Markus Pargmann wrote:
> Add a compatible to this driver so it can be added through devicetree.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/mfd/mc34704.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
> index 9afab07a2df5..3dc85f5474dd 100644
> --- a/drivers/mfd/mc34704.c
> +++ b/drivers/mfd/mc34704.c
> @@ -123,9 +123,15 @@ static int mc34704_probe(struct device_d *dev)
>  	return 0;
>  }
>  
> +static __maybe_unused struct of_device_id mc34704_dt_ids[] = {
> +	{ .compatible = "fsl,mc34704", },
> +	{ }
> +};
> +
>  static struct driver_d mc34704_driver = {
>  	.name  = DRIVERNAME,
>  	.probe = mc34704_probe,
> +	.of_compatible = DRV_OF_COMPAT(mc34704_dt_ids),
>  };
>  
>  static int mc34704_init(void)
> -- 
> 2.0.1
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
