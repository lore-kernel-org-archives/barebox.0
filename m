Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TD9xy-0005FI-Fm
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:12:35 +0000
Date: Sun, 16 Sep 2012 10:12:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916081233.GA24458@pengutronix.de>
References: <20120914073755.GD20834@game.jcrosoft.org>
 <1347609426-21286-1-git-send-email-plagnioj@jcrosoft.com>
 <1347609426-21286-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347609426-21286-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/3] net: move the eth_dev status detection at driver level
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 14, 2012 at 09:57:06AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> as this is depend on the phy link status
> 
> If not phylib used force active
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/altera_tse.c  |    3 ++-
>  drivers/net/at91_ether.c  |    2 ++
>  drivers/net/cs8900.c      |    1 +
>  drivers/net/designware.c  |    2 ++
>  drivers/net/dm9k.c        |    2 +-
>  drivers/net/ep93xx.c      |    2 +-
>  drivers/net/fec_imx.c     |    2 ++
>  drivers/net/fec_mpc5200.c |    2 +-
>  drivers/net/gianfar.c     |    2 ++
>  drivers/net/ks8851_mll.c  |    2 +-
>  drivers/net/macb.c        |    2 ++
>  drivers/net/miidev.c      |   10 ++++++++++
>  drivers/net/netx_eth.c    |    2 +-
>  drivers/net/smc91111.c    |    2 +-
>  drivers/net/smc911x.c     |    2 +-
>  drivers/net/tap.c         |    1 +
>  drivers/net/usb/usbnet.c  |    3 ++-
>  include/miidev.h          |    1 +
>  net/eth.c                 |    4 +++-
>  19 files changed, 37 insertions(+), 10 deletions(-)

Had to squash the following into this patch to make it compile:


diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index c750f10..828af79 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -153,7 +153,7 @@ static void update_linkspeed(struct mii_device *mdev)
 	}
 	at91_emac_write(AT91_EMAC_CFG, mac_cfg);
 
-	edev->active = mdev->phydev->link;
+	mdev->edev->active = mdev->phydev->link;
 }
 
 static int at91_ether_open(struct eth_device *edev)
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 3f7fa05..249194d 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -250,9 +250,9 @@ static int cs8900_dev_init(struct eth_device *dev)
 	return 0;
 }
 
-static int cs8900_open(struct eth_device *dev)
+static int cs8900_open(struct eth_device *edev)
 {
-	struct cs8900_priv *priv = (struct cs8900_priv *)dev->priv;
+	struct cs8900_priv *priv = (struct cs8900_priv *)edev->priv;
 	cs8900_reset(priv);
 	cs8900_reginit(priv);
 	edev->active = 1;

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
