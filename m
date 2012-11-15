Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYuOX-0005aL-Es
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 08:01:54 +0000
Date: Thu, 15 Nov 2012 09:01:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115080150.GV10369@pengutronix.de>
References: <1352926999-14981-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352926999-14981-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] phy: if the link partner just ack us wait the end of
 the autoneg
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 14, 2012 at 10:03:19PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/phy/phy.c |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 43738c2..daa657f 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -578,6 +578,18 @@ int genphy_read_status(struct phy_device *phydev)
>  		if (lpa < 0)
>  			return lpa;
>  
> +		if (lpa & LPA_LPACK) {
> +			int ret;
> +
> +			ret = phy_aneg_done(phydev);
> +			if (ret)
> +				return ret;
> +
> +			lpa = phy_read(phydev, MII_LPA);
> +			if (lpa < 0)
> +				return lpa;
> +		}
> +

Still does not work:

barebox@Freescale i.MX53 LOCO:/ while [ ${done} != 0 ]; do dhcp;
done=$?; msleep 500; done
genphy_read_status MII_LPA 0x0001
dhcp failed: Network is down
dhcp: Network is down
dhcp failed: Network is down
dhcp: Network is down
dhcp failed: Network is down
dhcp: Network is down
dhcp failed: Network is down
dhcp: Network is down
dhcp failed: Network is down
dhcp: Network is down
dhcp failed: Network is down
dhcp: Network is down
dhcp failed: Network is down
dhcp: Network is down
dhcp failed: Network is down
dhcp: Network is down
dhcp failed: Network is down
dhcp: Network is down
dhcp failed: Network is down
dhcp: Network is down
genphy_read_status MII_LPA 0x45e1
100Mbps full duplex link detected
DHCP client bound to address 192.168.24.118


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
