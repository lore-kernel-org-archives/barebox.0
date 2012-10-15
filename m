Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNea4-00006t-Sx
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 06:55:18 +0000
Date: Mon, 15 Oct 2012 08:55:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121015065511.GE27665@pengutronix.de>
References: <1350224598-16979-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350224598-16979-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] designware: fix 100mps phy support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 14, 2012 at 04:23:18PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/net/designware.c |   10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> index 63b199f..7eadd92 100644
> --- a/drivers/net/designware.c
> +++ b/drivers/net/designware.c
> @@ -244,6 +244,16 @@ static void dwc_update_linkspeed(struct eth_device *edev)
>  		conf &= ~MII_PORTSELECT;
>  	else
>  		conf |= MII_PORTSELECT;
> +
> +	if ((edev->phydev->interface != PHY_INTERFACE_MODE_MII) &&
> +		(edev->phydev->interface != PHY_INTERFACE_MODE_GMII)) {
> +
> +		if (edev->phydev->speed == 100)
> +			conf |= FES_100;
> +		else
> +			conf &= ~FES_100;
> +	}
> +
>  	writel(conf, &mac_p->conf);
>  }
>  
> -- 
> 1.7.10.4
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
