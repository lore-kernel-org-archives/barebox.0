Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAxSH-0004Kh-Ao
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 06:26:46 +0000
Date: Mon, 10 Sep 2012 08:26:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120910062639.GO18243@pengutronix.de>
References: <1347027099-1058-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347027099-1058-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] smc911x: fix typo pn check if the device is ready
 before using it
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 07, 2012 at 04:11:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> the check need to be inverted
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/net/smc911x.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index 3ccb0ef..bc1e001 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -456,7 +456,7 @@ static int smc911x_probe(struct device_d *dev)
>  	 * poll the READY bit in PMT_CTRL. Any other access to the device is
>  	 * forbidden while this bit isn't set. Try for 100ms
>  	 */
> -	ret = wait_on_timeout(100 * MSECOND, smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY);
> +	ret = wait_on_timeout(100 * MSECOND, !smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY);
>  	if (!ret) {
>  		dev_err(dev, "Device not READY in 100ms aborting\n");
>  		return -ENODEV;
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
