Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4p6p-0000hU-M1
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 08:51:32 +0000
Date: Mon, 11 Feb 2013 09:51:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211085129.GN1906@pengutronix.de>
References: <1360231566-9514-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360231566-9514-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] net fec_imx: add support for i.MX6 1000Mbps mode
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 07, 2013 at 11:06:06AM +0100, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  drivers/net/fec_imx.c | 14 ++++++++++----
>  drivers/net/fec_imx.h |  1 +
>  2 files changed, 11 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 2378a19..7320f07 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -361,12 +361,18 @@ static int fec_init(struct eth_device *dev)
>  static void fec_update_linkspeed(struct eth_device *edev)
>  {
>  	struct fec_priv *fec = (struct fec_priv *)edev->priv;
> +	int speed = edev->phydev->speed;
> +	u32 rcntl = readl(fec->regs + FEC_R_CNTRL) & ~FEC_R_CNTRL_RMII_10T;
> +	u32 ecntl = readl(fec->regs + FEC_ECNTRL) & ~FEC_ECNTRL_SPEED;
>  
> -	if (edev->phydev->speed == SPEED_10) {
> -		u32 rcntl = readl(fec->regs + FEC_R_CNTRL);
> +	if (speed == SPEED_10)
>  		rcntl |= FEC_R_CNTRL_RMII_10T;
> -		writel(rcntl, fec->regs + FEC_R_CNTRL);
> -	}
> +
> +	if (speed == SPEED_1000)
> +		ecntl |= FEC_ECNTRL_SPEED;
> +
> +	writel(rcntl, fec->regs + FEC_R_CNTRL);
> +	writel(ecntl, fec->regs + FEC_ECNTRL);
>  }
>  
>  /**
> diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
> index 1eb1eba..29aea85 100644
> --- a/drivers/net/fec_imx.h
> +++ b/drivers/net/fec_imx.h
> @@ -92,6 +92,7 @@
>  
>  #define FEC_ECNTRL_RESET                0x00000001	/**< reset the FEC */
>  #define FEC_ECNTRL_ETHER_EN             0x00000002	/**< enable the FEC */
> +#define FEC_ECNTRL_SPEED                0x00000020	/**< i.MX6: enable 1000Mbps mode */
>  
>  /**
>   * @brief Descriptor buffer alignment
> -- 
> 1.8.1
> 
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
