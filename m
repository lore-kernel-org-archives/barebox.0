Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCJQu-0001yk-PP
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 07:06:26 +0000
Date: Tue, 16 Oct 2018 09:06:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181016070612.z5liuyxomwumamua@pengutronix.de>
References: <20181016003835.11165-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181016003835.11165-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] miitool: Fix inconsistent spacing
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 15, 2018 at 05:38:35PM -0700, Andrey Smirnov wrote:
> Make sure that there's a space between device name and it's status
> string regardless if if device is using "id" field or not.
> 
> Before:
> 
> barebox@ZII RDU2 Board:/ miitool
> mdio0-phy00: mdio:no link
> mdio1-phy15: 2188000.ethernet@2188000:10 Mbit, half duplex, no link
> mdio1-phy16: 2188000.ethernet@2188000:10 Mbit, half duplex, no link
> mdio2-phy00: 2188000.ethernet@2188000:mdio:switch@0:no link
> mdio2-phy01: 2188000.ethernet@2188000:mdio:switch@0:no link
> mdio2-phy02: 2188000.ethernet@2188000:mdio:switch@0:negotiated 100baseTx-FD, link ok
> mdio2-phy03: 2188000.ethernet@2188000:mdio:switch@0:no link
> mdio2-phy04: 2188000.ethernet@2188000:mdio:switch@0:no link
> mdio3-phy01: eth1: negotiated 1000baseT-FD flow-control, link ok
> 
> After:
> 
> barebox@ZII RDU2 Board:/ miitool
> mdio0-phy00: mdio: no link
> mdio1-phy15: 2188000.ethernet@2188000: 10 Mbit, half duplex, no link
> mdio1-phy16: 2188000.ethernet@2188000: 10 Mbit, half duplex, no link
> mdio2-phy00: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio2-phy01: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio2-phy02: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio2-phy03: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio2-phy04: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio3-phy01: eth1: no link

Looks better. Applied, thanks

Sascha

> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  commands/miitool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/miitool.c b/commands/miitool.c
> index dea4f853c..acf61421b 100644
> --- a/commands/miitool.c
> +++ b/commands/miitool.c
> @@ -115,7 +115,7 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
>  	for (i = 0; i < 32; i++)
>  		mii_val[i] = mii->read(mii, phydev->addr, i);
>  
> -	printf((mii->parent->id) < 0 ? "%s: %s:" : "%s: %s%d: ",
> +	printf((mii->parent->id) < 0 ? "%s: %s: " : "%s: %s%d: ",
>  	       phydev->cdev.name, mii->parent->name, mii->parent->id);
>  
>  
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
