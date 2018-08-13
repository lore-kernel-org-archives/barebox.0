Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fp6Zf-0008To-7V
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 06:43:33 +0000
Date: Mon, 13 Aug 2018 08:43:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180813064319.rngrsvxedcuweyey@pengutronix.de>
References: <20180810185421.8912-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180810185421.8912-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] pinctrl: i.MX: Add code to parse "input-enable"
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 10, 2018 at 11:54:21AM -0700, Andrey Smirnov wrote:
> Add code to parse "input-enable" and intepret it as SION bit. This is
> needed for I2C configuration on i.MX8MQ EVK board.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

>  drivers/pinctrl/imx-iomux-v3.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
> index 38451875e..d176199c5 100644
> --- a/drivers/pinctrl/imx-iomux-v3.c
> +++ b/drivers/pinctrl/imx-iomux-v3.c
> @@ -117,6 +117,9 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
>  		if (of_get_property(np, "input-schmitt-enable", NULL))
>  			share_conf_val |= SHARE_CONF_PAD_CTL_HYS;
>  
> +		if (of_get_property(np, "input-enable", NULL))
> +			share_conf_val |= IMX_PAD_SION;
> +
>  		if (of_get_property(np, "bias-pull-up", NULL))
>  			share_conf_val |= SHARE_CONF_PAD_CTL_PUE;
>  	} else {
> -- 
> 2.17.1
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
