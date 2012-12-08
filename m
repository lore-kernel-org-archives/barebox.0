Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThLyK-000897-HG
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 15:05:45 +0000
Date: Sat, 8 Dec 2012 16:05:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121208150542.GN24458@pengutronix.de>
References: <1352971904-12409-1-git-send-email-plagnioj@jcrosoft.com>
 <1352971904-12409-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352971904-12409-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] phy: add smsc phy driver support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 15, 2012 at 10:31:44AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as we to have specific phy init to fix chip issue link detection support

This patch was introduced to make the LAN8720 work with phylib. When
appplying this patch I believed that...

> +
> +static int lan87xx_config_init(struct phy_device *phydev)
> +{
> +	/*
> +	 * Make sure the EDPWRDOWN bit is NOT set. Setting this bit on
> +	 * LAN8710/LAN8720 PHY causes the PHY to misbehave, likely due
> +	 * to a bug on the chip.
> +	 *
> +	 * When the system is powered on with the network cable being
> +	 * disconnected all the way until after ifconfig ethX up is
> +	 * issued for the LAN port with this PHY, connecting the cable
> +	 * afterwards does not cause LINK change detection, while the
> +	 * expected behavior is the Link UP being detected.
> +	 */
> +	int rc = phy_read(phydev, MII_LAN83C185_CTRL_STATUS);
> +	if (rc < 0)
> +		return rc;
> +
> +	rc &= ~MII_LAN83C185_EDPWRDOWN;
> +
> +	rc = phy_write(phydev, MII_LAN83C185_CTRL_STATUS, rc);
> +	if (rc < 0)
> +		return rc;

... this change was responsible to let the phy driver correctly wait for
a link. As it just turned out, this change os totally irrelevant. The
change which makes this driver work is...

> +}, {
> +	.phy_id		= 0x0007c0f0, /* OUI=0x00800f, Model#=0x0f */
> +	.phy_id_mask	= 0xfffffff0,
> +	.drv.name	= "SMSC LAN8710/LAN8720",
> +
> +	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
> +				| SUPPORTED_Asym_Pause),

... this one. The phy now advertises SUPPORTED_Pause and
SUPPORTED_Asym_Pause which the generic phy driver does not do. This
causes the adv != oldadv check in genphy_config_advert to become true.
genphy_config_advert then returns '1' for advertise changed, which
causes genphy_config_aneg to call genphy_restart_aneg which calls
phy_aneg_done to wait for a link.

So this patch is bogus and by accident fixes a problem. The real problem
is that current phylib does not wait (reliably) for a link. This problem still
persists and is still very annoying. I just have a USB network adapter
here which needs a three second delay after discovering it to make it
work with barebox.

We need a phy_aneg_done() before trying to do network transfers and we
need that *unconditionally*.

Jean-Christophe, you can choose where you want to have this call, but it
will go in. We are carrying these phylib regressions for several months
now.

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
