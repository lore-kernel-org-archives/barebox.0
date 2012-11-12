Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXoRo-0003wI-RH
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 07:28:45 +0000
Date: Mon, 12 Nov 2012 08:28:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121112072839.GF10369@pengutronix.de>
References: <1352329179-19809-1-git-send-email-apr@cn-eng.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352329179-19809-1-git-send-email-apr@cn-eng.de>
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
Subject: Re: [PATCH] mdiobus: unbreak phy_device_connect(): honor masked out
 PHYs
To: Andreas Pretzsch <apr@cn-eng.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 07, 2012 at 11:59:39PM +0100, Andreas Pretzsch wrote:
> commit 89dfe2d2af87f1b803f611d986d4ef383b6ad964 "mdiobus: do not scan
> the bus at registration time" dropped the check for struct mii_bus
> element phy_mask while scanning through all addresses.
> Re-add this check.
> 
> Signed-off-by: Andreas Pretzsch <apr@cn-eng.de>

Applied, thanks

Sascha

> ---
> patch against branch "next" / commit 89dfe2d2af87f1b803f611d986d4ef383b6ad964
> Another one to fold into original patch. Sorry for missing it the first round.
> 
>  drivers/net/phy/phy.c |    4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 547e269..d8132b9 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -169,6 +169,10 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
>  				goto fail;
>  		} else {
>  			for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
> +				/* skip masked out PHY addresses */
> +				if (bus->phy_mask & (1 << i))
> +					continue;
> +
>  				dev = mdiobus_scan(bus, i);
>  				if (!dev || dev->attached_dev)
>  					continue;
> -- 
> 1.7.10.4
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
