Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khEsa-0000aQ-TT
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:39:53 +0000
Date: Mon, 23 Nov 2020 17:39:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201123163951.GH24489@pengutronix.de>
References: <20201116194703.28238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116194703.28238-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] clk: imx6: demote warning about ldb_di_clk reparenting
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 16, 2020 at 08:47:03PM +0100, Ahmad Fatoum wrote:
> Linux logging this is justified, because it alerts to problems in the
> boot firmware. barebox warning about it serves no real purpose other
> than indicating that barebox was chainloaded. Make it a debug log
> to not clutter the log.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/imx/clk-imx6.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
> index cb030244581a..6935a8e85292 100644
> --- a/drivers/clk/imx/clk-imx6.c
> +++ b/drivers/clk/imx/clk-imx6.c
> @@ -482,9 +482,9 @@ static void init_ldb_clks(struct device_node *np, void __iomem *ccm_base)
>  	of_assigned_ldb_sels(np, &sel[0][3], &sel[1][3]);
>  
>  	for (i = 0; i < 2; i++) {
> -		/* Warn if a glitch might have been introduced already */
> +		/* log if a glitch might have been introduced already */
>  		if (sel[i][0] != LDB_DI_SEL_MMDC_CH1_AXI) {
> -			pr_warn("ccm: ldb_di%d_sel already changed from reset value: %d\n",
> +			pr_debug("ccm: ldb_di%d_sel already changed from reset value: %d\n",
>  				i, sel[i][0]);
>  		}
>  
> -- 
> 2.28.0
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
