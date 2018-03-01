Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erK7t-0007qs-15
 for barebox@lists.infradead.org; Thu, 01 Mar 2018 09:03:47 +0000
Date: Thu, 1 Mar 2018 10:03:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180301090332.g2nq3rzcxvtsmgx2@pengutronix.de>
References: <20180228172206.12823-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180228172206.12823-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 1/2] watchdog: ar9344-wdt: disable watchdog in probe
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 28, 2018 at 06:22:05PM +0100, Oleksij Rempel wrote:
> This should avoid of triggering reset if we boot barebox from
> barebox.
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/watchdog/ar9344_wdt.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_wdt.c
> index d570cb40f..b61786b1b 100644
> --- a/drivers/watchdog/ar9344_wdt.c
> +++ b/drivers/watchdog/ar9344_wdt.c
> @@ -101,6 +101,8 @@ static int ar9344_wdt_probe(struct device_d *dev)
>  	dev->priv = priv;
>  
>  	ar9344_watchdog_detect_reset_source(priv);
> +	/* disable watchdog on probe */
> +	iowrite32be(0, priv->base + AR9344_WD_REG_CTRL);

Do we really want this? I would assume that if the watchdog is enabled
here, then it is enabled on purpose and disabling it just bypasses this
purpose.

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
