Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjkrg-0000r9-RD
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 10:55:14 +0000
Date: Fri, 3 Mar 2017 11:54:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170303105452.gorcr2a3beokiipz@pengutronix.de>
References: <20170303090539.25738-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170303090539.25738-1-robin@protonic.nl>
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
Subject: Re: [PATCH] clk: imx: clk-imx6ul: Fixed conditional for enabling USB
 phy clocks
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org

On Fri, Mar 03, 2017 at 10:05:39AM +0100, Robin van der Gracht wrote:
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  drivers/clk/imx/clk-imx6ul.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
> index 72b5fa2..0ca0652 100644
> --- a/drivers/clk/imx/clk-imx6ul.c
> +++ b/drivers/clk/imx/clk-imx6ul.c
> @@ -392,7 +392,7 @@ static int imx6_ccm_probe(struct device_d *dev)
>  	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
>  		clk_enable(clks[clks_init_on[i]]);
>  
> -	if (IS_ENABLED(CONFIG_USB_MXS_PHY)) {
> +	if (IS_ENABLED(CONFIG_USB_IMX_PHY)) {
>  		clk_enable(clks[IMX6UL_CLK_USBPHY1_GATE]);
>  		clk_enable(clks[IMX6UL_CLK_USBPHY2_GATE]);
>  	}

Oops. Applied to master

Thanks
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
