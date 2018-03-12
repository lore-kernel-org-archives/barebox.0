Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1evKiY-0000aR-PM
 for barebox@lists.infradead.org; Mon, 12 Mar 2018 10:30:13 +0000
Date: Mon, 12 Mar 2018 11:29:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180312102955.a55fq5ymrqcg452g@pengutronix.de>
References: <1520259593-21311-1-git-send-email-andrey.gusakov@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1520259593-21311-1-git-send-email-andrey.gusakov@cogentembedded.com>
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
Subject: Re: [PATCH] video: tc358767: register aux i2c bus after validating
 link
To: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 05, 2018 at 05:19:53PM +0300, Andrey Gusakov wrote:
> Register AUX i2c adapter only if AUX link is functional. This
> should avoid possible hung during tc358767 probe when no display
> connected.
> 
> Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
> ---
>  drivers/video/tc358767.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
> index f9ca06c..5ad5cb4 100644
> --- a/drivers/video/tc358767.c
> +++ b/drivers/video/tc358767.c
> @@ -1404,6 +1404,10 @@ static int tc_probe(struct device_d *dev)
>  	if (ret)
>  		goto err;
>  
> +	ret = tc_get_display_props(tc);
> +	if (ret)
> +		goto err;
> +
>  	/* Register DP AUX channel */
>  	tc->adapter.master_xfer = tc_aux_i2c_xfer;
>  	tc->adapter.nr = -1; /* any free */
> @@ -1416,10 +1420,6 @@ static int tc_probe(struct device_d *dev)
>  		goto err;
>  	}
>  
> -	ret = tc_get_display_props(tc);
> -	if (ret)
> -		goto err;
> -
>  	/* add vlp */
>  	tc->vpl.node = dev->device_node;
>  	tc->vpl.ioctl = tc_ioctl;
> -- 
> 1.9.1
> 
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
