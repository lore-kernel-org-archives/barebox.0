Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKgEB-0000EC-1f
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 07:27:04 +0000
Date: Tue, 13 Jun 2017 09:26:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170613072641.cazsl2bnl22r3mcz@pengutronix.de>
References: <1497250835-34583-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1497250835-34583-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH] watchdog: i.MX: fix i.MX6 reset
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 12, 2017 at 09:00:35AM +0200, Christian Hemp wrote:
> According to the Errata ERR004346 (WDOG: WDOG SRS bit requires to be written
> twice), add another two writes to ensure there must be at least two
> writes happen in the same one 32kHz clock period.
> Without this two additional writes, the system will not reset always.
> 
> Tested with i.MX6Quad and i.MX6 UltraLite
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>

Applied, thanks

Sascha

> ---
>  drivers/watchdog/imxwd.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index b920c72..0617fc6 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -134,6 +134,10 @@ static void imx21_soc_reset(struct imx_wd *priv)
>  		val |= IMX21_WDOG_WCR_WDA; /* do not assert ext-reset */
>  
>  	writew(val, priv->base + IMX21_WDOG_WCR);
> +
> +	/* Two additional writes due to errata ERR004346 */
> +	writew(val, priv->base + IMX21_WDOG_WCR);
> +	writew(val, priv->base + IMX21_WDOG_WCR);
>  }
>  
>  static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
> -- 
> 1.9.1
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
