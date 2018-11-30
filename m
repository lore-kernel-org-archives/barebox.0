Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSeth-0000Vh-Tj
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 09:15:43 +0000
Date: Fri, 30 Nov 2018 10:15:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181130091527.xb6ynlznit2aqygm@pengutronix.de>
References: <20181129113931.5045-1-s.trumtrar@pengutronix.de>
 <20181129113931.5045-4-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181129113931.5045-4-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 4/4] net: designware: return error value in mii_write
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Nov 29, 2018 at 12:39:31PM +0100, Steffen Trumtrar wrote:
> Do not drop the error value and use it as a return value instead.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/designware.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> index 104258e21c51..cb7c4a13719c 100644
> --- a/drivers/net/designware.c
> +++ b/drivers/net/designware.c
> @@ -99,8 +99,7 @@ static int dwc_ether_mii_write(struct mii_bus *dev, int addr, int reg, u16 val)
>  	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
>  
>  	/* Needed as a fix for ST-Phy */
> -	dwc_ether_mii_read(dev, addr, reg);
> -	return 0;
> +	return dwc_ether_mii_read(dev, addr, reg);

dwc_ether_mii_read() normally returns the register value on success,
returning this from dwc_ether_mii_write() looks wrong.

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
