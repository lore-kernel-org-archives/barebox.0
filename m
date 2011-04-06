Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q7PM5-0004mN-CK
	for barebox@lists.infradead.org; Wed, 06 Apr 2011 09:48:54 +0000
Date: Wed, 6 Apr 2011 11:48:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110406094850.GN7285@pengutronix.de>
References: <1301867100-13020-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1301867100-13020-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] Nios2: Add Altera TSE MAC driver
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

Hi,

Several comments inline...

Sascha

On Sun, Apr 03, 2011 at 11:45:00PM +0200, franck.jullien@gmail.com wrote:
> +
> +static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)
> +{
> +/* If there is already a MAC address configured when barebox starts (??), use it */
> +#ifdef THERE_IS_A_DEFAULT_MAC_ADDR_IN_TSE
> +	struct altera_tse_priv *priv = edev->priv;
> +	struct alt_tse_mac *mac_dev = priv->mac_dev;
> +
> +	m[5] = (readl(&mac_dev->mac_addr_1) >> 8) && 0xFF;
> +	m[4] = (readl(&mac_dev->mac_addr_1))      && 0xFF;
> +	m[3] = (readl(mac_dev->mac_addr_0) >> 24) && 0xFF;
> +	m[2] = (readl(mac_dev->mac_addr_0) >> 16) && 0xFF;
> +	m[1] = (readl(mac_dev->mac_addr_0) >>  8) && 0xFF;
> +	m[0] = (readl(mac_dev->mac_addr_0))       && 0xFF;
> +
> +	return 0;
> +#else
> +	return -1;
> +#endif
> +}

This function should return the mac address from eeprom (if there is
one). Otherwise you can return the mac address programmed into the
controler, but should check this with is_valid_ether(). Hm,
is_valid_ether() should probably rather be called from the network
layer.


> +
> +static void tse_eth_halt(struct eth_device *edev)
> +{
> +
> +}

You should quiesce the DMA controller here. Otherwise there might be bad
surprises once Linux starts.

> +/* Phy init code */
> +static int init_phy(struct eth_device *edev)
> +{
> +	struct altera_tse_priv *priv = edev->priv;
> +	struct phy_info *curphy;
> +
> +	/* Get the cmd structure corresponding to the attached
> +	 * PHY */
> +	curphy = get_phy_info(edev);
> +
> +	if (curphy == NULL) {
> +		priv->phyinfo = NULL;
> +		return 0;
> +	} else
> +		debug("%s found\n", curphy->name);
> +
> +	priv->phyinfo = curphy;
> +
> +	phy_run_commands(priv, priv->phyinfo->config);
> +
> +	return 1;
> +}

Is this phy initialization necessary? The phy support in barebox should
initialize the phy correctly already.

Sascha

> +
> +	miidev->read = tse_phy_read;
> +	miidev->write = tse_phy_write;
> +#ifndef NIOS_SOPC_PHY_ADDR
> +	miidev->address = -1;
> +#else
> +	miidev->address = NIOS_SOPC_PHY_ADDR;
> +#endif

This should be passed with platform data instead of using ifdefs.


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
