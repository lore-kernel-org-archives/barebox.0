Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6c9t-0002nw-SK
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 06:53:50 +0000
Date: Wed, 29 Aug 2012 08:53:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120829065348.GN26594@pengutronix.de>
References: <20120829042727.GA18708@game.jcrosoft.org>
 <1346216778-14100-1-git-send-email-plagnioj@jcrosoft.com>
 <1346216778-14100-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346216778-14100-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 7/7] smm911x: check if the device is ready before using it
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2012 at 07:06:18AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> poll the READY bit in PMT_CTRL. Any other access to the device is
> forbidden while this bit isn't set. Try for 100ms
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/smc911x.c |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index cfcd83f..3695d32 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -422,6 +422,7 @@ static int smc911x_probe(struct device_d *dev)
>  	uint32_t val;
>  	int is_32bit;
>  	struct smc911x_plat *pdata = dev->platform_data;
> +	unsigned int to = 100;
>  
>  	priv = xzalloc(sizeof(*priv));
>  	is_32bit = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
> @@ -452,6 +453,17 @@ static int smc911x_probe(struct device_d *dev)
>  		}
>  	}
>  
> +	/*
> +	 * poll the READY bit in PMT_CTRL. Any other access to the device is
> +	 * forbidden while this bit isn't set. Try for 100ms
> +	 */
> +	while (!(smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY) && --to)
> +		udelay(1000);

please use a regular timeout loop

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
