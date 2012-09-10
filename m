Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TB6WF-0001hC-1N
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 16:07:27 +0000
Date: Mon, 10 Sep 2012 18:07:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120910160724.GA18243@pengutronix.de>
References: <1347276809-8029-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347276809-8029-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] smsc911x: Check platformdata pointer
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 10, 2012 at 01:33:29PM +0200, Jan Weitzel wrote:
> If pdata is NULL smc911x_probe will crash. Checking the zero initialized
> priv->shift results in default configuration if pdata is not set.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  drivers/net/smc911x.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index bc1e001..f697608 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -435,7 +435,7 @@ static int smc911x_probe(struct device_d *dev)
>  		priv->shift = pdata->shift;
>  
>  	if (is_32bit) {
> -		if (pdata->shift) {
> +		if (priv->shift) {
>  			priv->reg_read = __smc911x_reg_readl_shift;
>  			priv->reg_write = __smc911x_reg_writel_shift;
>  		} else {
> @@ -443,7 +443,7 @@ static int smc911x_probe(struct device_d *dev)
>  			priv->reg_write = __smc911x_reg_writel;
>  		}
>  	} else {
> -		if (pdata->shift) {
> +		if (priv->shift) {
>  			priv->reg_read = __smc911x_reg_readw_shift;
>  			priv->reg_write = __smc911x_reg_writew_shift;
>  		} else {
> -- 
> 1.7.0.4
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
