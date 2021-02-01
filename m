Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6Ud5-0001Cm-HF
 for barebox@lists.infradead.org; Mon, 01 Feb 2021 08:32:16 +0000
Date: Mon, 1 Feb 2021 09:32:11 +0100
Message-ID: <20210201083211.GH19583@pengutronix.de>
References: <20210129174435.17699-1-michael.nawrocki@gtri.gatech.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210129174435.17699-1-michael.nawrocki@gtri.gatech.edu>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] drivers: smc911x fix inverted wait_on_timeout
To: Mike Nawrocki <michael.nawrocki@gtri.gatech.edu>
Cc: barebox@lists.infradead.org

On Fri, Jan 29, 2021 at 12:44:35PM -0500, Mike Nawrocki wrote:
> The smc911x driver probe routine polls the READY bit using
> wait_on_timeout, which returns 0 on success. The error check following
> the wait_on_timeout invocation in the probe routine interprets a
> returned 0 as failure.
> 
> This patch correctly interprets the return value of wait_on_timeout.
> 
> Signed-off-by: Mike Nawrocki <michael.nawrocki@gtri.gatech.edu>
> ---
>  drivers/net/smc911x.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index ea7cea5f1..1edc16ce4 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -541,7 +541,7 @@ static int smc911x_probe(struct device_d *dev)
>  	 * forbidden while this bit isn't set. Try for 100ms
>  	 */
>  	ret = wait_on_timeout(100 * MSECOND, smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY);
> -	if (!ret) {
> +	if (ret) {
>  		dev_err(dev, "Device not READY in 100ms aborting\n");
>  		return -ENODEV;
>  	}
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
