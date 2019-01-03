Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gf0kM-0006qA-KL
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 11:01:08 +0000
Date: Thu, 3 Jan 2019 12:01:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103110104.7dvssb3qnqh5y2sj@pengutronix.de>
References: <1545228423-7461-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1545228423-7461-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH] nvmem: ocotp: Fix writing of second mac address fuses on
 imx6ul
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 19, 2018 at 03:07:03PM +0100, Stefan Riedmueller wrote:
> Commit 19a32c0f6bf0 ("nvmem: ocotp: Add support for second mac address
> fuses on imx6ul") added support for correctly reading the second MAC
> address from fuses of the i.MX 6UL/ULL but not for writing. So also fit
> writing of the second MAC address fuses to the correct method.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  drivers/nvmem/ocotp.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index e0cf35f0b73c..d904bd08f0c5 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -446,9 +446,18 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
>  {
>  	char buf[MAC_BYTES];
>  	struct ocotp_priv_ethaddr *ethaddr = priv;
> +	int ret;
>  
> -	ethaddr->data->format_mac(buf, ethaddr->value,
> -				  OCOTP_MAC_TO_HW);
> +	ret = regmap_bulk_read(ethaddr->map, ethaddr->offset, buf, MAC_BYTES);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (ethaddr->offset != IMX6UL_MAC_OFFSET_1)
> +		ethaddr->data->format_mac(buf, ethaddr->value,
> +					  OCOTP_MAC_TO_HW);
> +	else
> +		ethaddr->data->format_mac(buf + 2, ethaddr->value,
> +					  OCOTP_MAC_TO_HW);
>  
>  	return regmap_bulk_write(ethaddr->map, ethaddr->offset,
>  				 buf, MAC_BYTES);
> -- 
> 2.7.4
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
