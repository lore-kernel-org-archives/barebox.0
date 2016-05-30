Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7FSF-0007eW-Eu
 for barebox@lists.infradead.org; Mon, 30 May 2016 05:09:32 +0000
Date: Mon, 30 May 2016 07:09:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160530050909.GT31666@pengutronix.de>
References: <1464285779-18920-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464285779-18920-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] pinctrl: iomux-v3: Cleaning SION patch before applying
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, May 26, 2016 at 09:02:59PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/pinctrl/imx-iomux-v3.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
> index 66443b7..92fac18 100644
> --- a/drivers/pinctrl/imx-iomux-v3.c
> +++ b/drivers/pinctrl/imx-iomux-v3.c
> @@ -132,8 +132,10 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
>  		u32 input_val = be32_to_cpu(*list++);
>  		u32 conf_val = be32_to_cpu(*list++);
>  
> -		if (conf_val & IMX_PAD_SION)
> +		if (conf_val & IMX_PAD_SION) {
>  			mux_val |= IOMUXC_CONFIG_SION;
> +			conf_val &= ~IMX_PAD_SION;
> +		}
>  
>  		if (conf_val & IMX_DT_NO_PAD_CTL)
>  			conf_reg = 0;
> -- 
> 2.4.9
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
