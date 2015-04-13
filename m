Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhYgZ-0005Ii-Gb
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 07:21:36 +0000
Date: Mon, 13 Apr 2015 09:21:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150413072112.GB9742@pengutronix.de>
References: <1428788562-10004-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428788562-10004-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 1/2] net: smc1111: fix platform data initializations
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sat, Apr 11, 2015 at 11:42:41PM +0200, Robert Jarzmik wrote:
> The configuration and control setup introduced in commit "extend the
> driver for 91c94 and 91c96 support" suffers from a typo defect, which
> makes the commit broken.
> 
> The typo happens to be in barebox tree, while it's not in the tested
> patches I had, and there was a mismatch in my former submission, which
> is fixed by this patch.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  drivers/net/smc91111.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
> index 698c74a..bcb470c 100644
> --- a/drivers/net/smc91111.c
> +++ b/drivers/net/smc91111.c
> @@ -1437,6 +1437,8 @@ static int smc91c111_probe(struct device_d *dev)
>  			priv->a = access_via_16bit;
>  		pdata->config_setup = pdata->config_setup;
>  		pdata->control_setup = pdata->control_setup;
> +		priv->config_setup = pdata->config_setup;
> +		priv->control_setup = pdata->control_setup;

This should be:

 		if (pdata->bus_width == 16)
 			priv->a = access_via_16bit;
-		pdata->config_setup = pdata->config_setup;
-		pdata->control_setup = pdata->control_setup;
+		priv->config_setup = pdata->config_setup;
+		priv->control_setup = pdata->control_setup;
 	}

Fixed this while applying because this is master material and I want to
make a release today.

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
