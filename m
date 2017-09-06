Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpYzm-0003vJ-43
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 11:59:54 +0000
Date: Wed, 6 Sep 2017 13:59:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906115928.wihqcpmoelctajrk@pengutronix.de>
References: <20170827065200.11205-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170827065200.11205-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH] phy: don't crush if we have no parent
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sun, Aug 27, 2017 at 08:52:00AM +0200, Oleksij Rempel wrote:
> current code will crash if DT has no PHY entry. With this patch
> we will test if parent exist, before testing the parent device node.
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/net/phy/phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 7132516aa..25ae40233 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -323,7 +323,7 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
>  	if (!IS_ENABLED(CONFIG_OFDEVICE))
>  		return NULL;
>  
> -	if (!edev->parent->device_node)
> +	if (!edev->parent || !edev->parent->device_node)
>  		return NULL;
>  
>  	phy_node = of_parse_phandle(edev->parent->device_node, "phy-handle", 0);
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
