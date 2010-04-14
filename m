Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O1xjm-0000lu-IB
	for barebox@lists.infradead.org; Wed, 14 Apr 2010 08:14:19 +0000
Date: Wed, 14 Apr 2010 10:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100414081417.GI7882@pengutronix.de>
References: <1271232307.10496.14.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1271232307.10496.14.camel@lws-weitzel>
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
Subject: Re: [PATCH] fix miiphy alloc
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Wed, Apr 14, 2010 at 10:05:07AM +0200, Jan Weitzel wrote:
> if fec was allocated using malloc. if fec->miiphy->dev->driver != 0
> miiphy_probe is not called

Thanks, both applied.

Sascha

> 
> Signed-off-by: Jan Weitzel <J.Weitzel@phytec.de>
> ---
> Index: barebox-2010.04.0/drivers/net/fec_imx.c
> ===================================================================
> --- barebox-2010.04.0.orig/drivers/net/fec_imx.c	2010-04-14 09:57:21.019441257 +0200
> +++ barebox-2010.04.0/drivers/net/fec_imx.c	2010-04-14 09:59:38.489396111 +0200
> @@ -542,10 +542,10 @@
>  #ifdef CONFIG_ARCH_IMX27
>  	PCCR0 |= PCCR0_FEC_EN;
>  #endif
> -        edev = (struct eth_device *)xzalloc(sizeof(struct eth_device));
> -        dev->type_data = edev;
> -	fec = (struct fec_priv *)malloc(sizeof(*fec));
> -        edev->priv = fec;
> +	edev = (struct eth_device *)xzalloc(sizeof(struct eth_device));
> +	dev->type_data = edev;
> +	fec = (struct fec_priv *)xzalloc(sizeof(*fec));
> +	edev->priv = fec;
>  	edev->open = fec_open,
>  	edev->init = fec_init,
>  	edev->send = fec_send,
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
