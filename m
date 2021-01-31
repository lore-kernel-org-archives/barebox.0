Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6IY4-0001pf-Db
 for barebox@lists.infradead.org; Sun, 31 Jan 2021 19:38:17 +0000
References: <20210129174435.17699-1-michael.nawrocki@gtri.gatech.edu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a3831f52-27d0-085d-755d-439ea0b415c8@pengutronix.de>
Date: Sun, 31 Jan 2021 20:38:11 +0100
MIME-Version: 1.0
In-Reply-To: <20210129174435.17699-1-michael.nawrocki@gtri.gatech.edu>
Content-Language: en-US
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
To: Mike Nawrocki <michael.nawrocki@gtri.gatech.edu>, barebox@lists.infradead.org

Hello Mike,

On 29.01.21 18:44, Mike Nawrocki wrote:
> The smc911x driver probe routine polls the READY bit using
> wait_on_timeout, which returns 0 on success. The error check following
> the wait_on_timeout invocation in the probe routine interprets a
> returned 0 as failure.
> 
> This patch correctly interprets the return value of wait_on_timeout.

Apparently two wrongs indeed make one right..

It used to be !smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY,
which was flagged by static analysis and I dropped the !, because
it's clearly wrong. Now I understand why it did work..

Thanks for fixing this properly.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> 
> Signed-off-by: Mike Nawrocki <michael.nawrocki@gtri.gatech.edu>
> ---
>  drivers/net/smc911x.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
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
