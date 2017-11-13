Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eE9dL-0002OF-EP
 for barebox@lists.infradead.org; Mon, 13 Nov 2017 07:58:21 +0000
Date: Mon, 13 Nov 2017 08:57:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171113075757.gpwl7wrlcjgedics@pengutronix.de>
References: <20171111093944.10094-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171111093944.10094-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] i.MX: esdhc: wait until SDSTB is asserted, not other
 way arround
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Nov 11, 2017 at 10:39:44AM +0100, Oleksij Rempel wrote:
> this added 10msec on each sd/mmc clock switch request.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> index 141d715c90..55e8371dd8 100644
> --- a/drivers/mci/imx-esdhc.c
> +++ b/drivers/mci/imx-esdhc.c
> @@ -454,7 +454,7 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
>  			SYSCTL_CLOCK_MASK, clk);
>  
>  	wait_on_timeout(10 * MSECOND,
> -			!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB));
> +			esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB);
>  
>  	clk = SYSCTL_PEREN | SYSCTL_CKEN;
>  
> -- 
> 2.11.0
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
