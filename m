Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAyCR-0005HE-9w
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 07:14:29 +0000
Date: Mon, 10 Sep 2012 09:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120910071420.GS18243@pengutronix.de>
References: <1347205442-14299-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347205442-14299-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3 v2] net: introduce phylib
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 09, 2012 at 05:44:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Adapt phylib from linux
> 
> switch all the driver to it
> 
> This will allow to have
>  - phy drivers
>  - to only connect the phy at then opening of the device
>  - if the phy is not ready fail on open
> 
> Same behaviour as in linux and will allow to share code and simplify porting.
> 

[...]

> +
> +void mii_unregister(struct mii_device *mdev)
> +{
> +	unregister_device(&mdev->dev);
> +}
> +
> +static int miidev_init(void)
> +{
> +	register_driver(&miidev_drv);
> +	return 0;
> +}
> +
> +device_initcall(miidev_init);
> +

Nit: Blank line at EOF

> @@ -0,0 +1,36 @@
> +/*
> + * Copyright (c) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <common.h>
> +#include <phydev.h>
> +#include <init.h>
> +
> +static struct phy_driver generic_phy = {
> +	.drv.name = "Generic PHY",
> +	.phy_id = PHY_ANY_UID,
> +	.phy_id_mask = PHY_ANY_UID,
> +	.features = 0,
> +};
> +
> +static int generic_phy_register(void)
> +{
> +	return phy_driver_register(&generic_phy);
> +}
> +device_initcall(generic_phy_register);

Maybe this should be an earlier initcall? The network devices are mostly
at device_initcalls. Does it work when the ethernet device gets probed
before the phy?

> +
> +struct bus_type phy_bustype;
> +static int genphy_config_init(struct phy_device *phydev);
> +
> +struct phy_device *phy_device_create(struct mii_device *bus, int addr, int phy_id)
> +{
> +	struct phy_device *dev;
> +
> +	/* We allocate the device, and initialize the
> +	 * default values */
> +	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
> +
> +	if (NULL == dev)
> +		return (struct phy_device*) PTR_ERR((void*)-ENOMEM);
> +
> +	dev->speed = 0;
> +	dev->duplex = -1;
> +	dev->pause = dev->asym_pause = 0;
> +	dev->link = 1;
> +	dev->autoneg = AUTONEG_ENABLE;
> +
> +	dev->addr = addr;
> +	dev->phy_id = phy_id;
> +
> +	dev->bus = bus;
> +	dev->dev.parent = bus->parent;
> +	dev->dev.bus = &phy_bustype;
> +
> +	strcpy(dev->dev.name, "phy");
> +	dev->dev.id = DEVICE_ID_DYNAMIC;
> +
> +	return dev;
> +}
> +/**
> + * get_phy_id - reads the specified addr for its ID.
> + * @bus: the target MII bus
> + * @addr: PHY address on the MII bus
> + * @phy_id: where to store the ID retrieved.
> + *
> + * Description: Reads the ID registers of the PHY at @addr on the
> + *   @bus, stores it in @phy_id and returns zero on success.
> + */
> +int get_phy_id(struct mii_device *bus, int addr, u32 *phy_id)
> +{
> +	int phy_reg;
> +
> +	/* Grab the bits from PHYIR1, and put them
> +	 * in the upper half */
> +	phy_reg = bus->read(bus, addr, MII_PHYSID1);
> +
> +	if (phy_reg < 0)
> +		return -EIO;
> +
> +	*phy_id = (phy_reg & 0xffff) << 16;
> +
> +	/* Grab the bits from PHYIR2, and put them in the lower half */
> +	phy_reg = bus->read(bus, addr, MII_PHYSID2);
> +
> +	if (phy_reg < 0)
> +		return -EIO;
> +
> +	*phy_id |= (phy_reg & 0xffff);
> +
> +	return 0;
> +}
> +
> +/**
> + * get_phy_device - reads the specified PHY device and returns its @phy_device struct
> + * @bus: the target MII bus
> + * @addr: PHY address on the MII bus
> + *
> + * Description: Reads the ID registers of the PHY at @addr on the
> + *   @bus, then allocates and returns the phy_device to represent it.
> + */
> +struct phy_device *get_phy_device(struct mii_device *bus, int addr)
> +{
> +	struct phy_device *dev = NULL;
> +	u32 phy_id = 0;
> +	int r;
> +
> +	r = get_phy_id(bus, addr, &phy_id);
> +	if (r)
> +		return ERR_PTR(r);
> +
> +	/* If the phy_id is mostly Fs, there is no device there */
> +	if ((phy_id & 0x1fffffff) == 0x1fffffff)
> +		return ERR_PTR(-EIO);
> +
> +	dev = phy_device_create(bus, addr, phy_id);
> +
> +	return dev;
> +}
> +
> +/* Automatically gets and returns the PHY device */
> +int phy_device_connect(struct mii_device *bus, int addr,
> +		void (*adjust_link) (struct mii_device *miidev))
> +{
> +	struct phy_driver* drv;
> +	struct phy_device* dev = NULL;
> +	unsigned int i;
> +	int ret = -EINVAL;
> +
> +	if (!bus->phydev) {
> +		if (addr >= 0) {
> +			dev = get_phy_device(bus, addr);
> +			if (IS_ERR(dev)) {
> +				ret = PTR_ERR(dev);
> +				goto fail;
> +			}
> +		} else {
> +			for (i = 0; i < PHY_MAX_ADDR && !bus->phydev; i++) {
> +				dev = get_phy_device(bus, i);
> +				if (IS_ERR(dev))
> +					continue;
> +
> +				ret = register_device(&dev->dev);
> +				if (ret)
> +					goto fail;
> +			}
> +
> +			if (i == 32) {
> +				ret = -EIO;
> +				goto fail;
> +			}
> +		}
> +	}
> +
> +	dev = bus->phydev;
> +	drv = to_phy_driver(dev->dev.driver);
> +
> +	drv->config_aneg(dev);
> +
> +	ret = drv->read_status(dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (dev->link)
> +		printf("%dMbps %s duplex link detected\n", dev->speed,
> +			dev->duplex ? "full" : "half");
> +
> +	if (adjust_link)
> +		adjust_link(bus);
> +
> +	return 0;
> +
> +fail:
> +	if (!IS_ERR(dev))
> +		kfree(dev);
> +	puts("Unable to find a PHY (unknown ID?)\n");
> +	return ret;
> +}
> +
> +/* Generic PHY support and helper functions */
> +
> +/**
> + * genphy_config_advert - sanitize and advertise auto-negotation parameters
> + * @phydev: target phy_device struct
> + *
> + * Description: Writes MII_ADVERTISE with the appropriate values,
> + *   after sanitizing the values to make sure we only advertise
> + *   what is supported.  Returns < 0 on error, 0 if the PHY's advertisement
> + *   hasn't changed, and > 0 if it has changed.
> + */
> +int genphy_config_advert(struct phy_device *phydev)
> +{
> +	u32 advertise;
> +	int oldadv, adv;
> +	int err, changed = 0;
> +
> +	/* Only allow advertising what
> +	 * this PHY supports */
> +	phydev->advertising &= phydev->supported;
> +	advertise = phydev->advertising;
> +
> +	/* Setup standard advertisement */
> +	oldadv = adv = phy_read(phydev, MII_ADVERTISE);
> +
> +	if (adv < 0)
> +		return adv;
> +
> +	adv &= ~(ADVERTISE_ALL | ADVERTISE_100BASE4 | ADVERTISE_PAUSE_CAP |
> +		 ADVERTISE_PAUSE_ASYM);
> +	adv |= ethtool_adv_to_mii_adv_t(advertise);
> +
> +	if (adv != oldadv) {
> +		err = phy_write(phydev, MII_ADVERTISE, adv);
> +
> +		if (err < 0)
> +			return err;
> +		changed = 1;
> +	}
> +
> +	/* Configure gigabit if it's supported */
> +	if (phydev->supported & (SUPPORTED_1000baseT_Half |
> +				SUPPORTED_1000baseT_Full)) {
> +		oldadv = adv = phy_read(phydev, MII_CTRL1000);
> +
> +		if (adv < 0)
> +			return adv;
> +
> +		adv &= ~(ADVERTISE_1000FULL | ADVERTISE_1000HALF);
> +		adv |= ethtool_adv_to_mii_ctrl1000_t(advertise);
> +
> +		if (adv != oldadv) {
> +			err = phy_write(phydev, MII_CTRL1000, adv);
> +
> +			if (err < 0)
> +				return err;
> +			changed = 1;
> +		}
> +	}
> +
> +	return changed;
> +}
> +
> +/**
> + * genphy_setup_forced - configures/forces speed/duplex from @phydev
> + * @phydev: target phy_device struct
> + *
> + * Description: Configures MII_BMCR to force speed/duplex
> + *   to the values in phydev. Assumes that the values are valid.
> + *   Please see phy_sanitize_settings().
> + */
> +int genphy_setup_forced(struct phy_device *phydev)
> +{
> +	int err;
> +	int ctl = 0;
> +
> +	phydev->pause = phydev->asym_pause = 0;
> +
> +	if (SPEED_1000 == phydev->speed)
> +		ctl |= BMCR_SPEED1000;
> +	else if (SPEED_100 == phydev->speed)
> +		ctl |= BMCR_SPEED100;
> +
> +	if (DUPLEX_FULL == phydev->duplex)
> +		ctl |= BMCR_FULLDPLX;
> +
> +	err = phy_write(phydev, MII_BMCR, ctl);
> +
> +	return err;
> +}
> +
> +static int phy_aneg_done(struct phy_device *phydev)
> +{
> +	uint64_t start = get_time_ns();
> +	int ctl;
> +
> +	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
> +		ctl = phy_read(phydev, MII_BMSR);
> +		if (ctl & BMSR_ANEGCOMPLETE) {
> +			phydev->link = 1;
> +			return 0;
> +		}
> +
> +		/* Restart auto-negotiation if remote fault */
> +		if (ctl & BMSR_RFAULT) {
> +			puts("PHY remote fault detected\n"
> +			     "PHY restarting auto-negotiation\n");
> +			phy_write(phydev, MII_BMCR,
> +					  BMCR_ANENABLE | BMCR_ANRESTART);
> +		}
> +	}
> +
> +	phydev->link = 0;
> +	return -ETIMEDOUT;
> +}
> +
> +/**
> + * genphy_restart_aneg - Enable and Restart Autonegotiation
> + * @phydev: target phy_device struct
> + */
> +int genphy_restart_aneg(struct phy_device *phydev)
> +{
> +	int ctl;
> +
> +	ctl = phy_read(phydev, MII_BMCR);
> +
> +	if (ctl < 0)
> +		return ctl;
> +
> +	ctl |= (BMCR_ANENABLE | BMCR_ANRESTART);
> +
> +	/* Don't isolate the PHY if we're negotiating */
> +	ctl &= ~(BMCR_ISOLATE);
> +
> +	ctl = phy_write(phydev, MII_BMCR, ctl);
> +
> +	if (ctl < 0)
> +		return ctl;
> +
> +	return phy_aneg_done(phydev);
> +}
> +
> +/**
> + * genphy_config_aneg - restart auto-negotiation or write BMCR
> + * @phydev: target phy_device struct
> + *
> + * Description: If auto-negotiation is enabled, we configure the
> + *   advertising, and then restart auto-negotiation.  If it is not
> + *   enabled, then we write the BMCR.
> + */
> +int genphy_config_aneg(struct phy_device *phydev)
> +{
> +	int result;
> +
> +	if (AUTONEG_ENABLE != phydev->autoneg)
> +		return genphy_setup_forced(phydev);
> +
> +	result = genphy_config_advert(phydev);
> +
> +	if (result < 0) /* error */
> +		return result;
> +
> +	if (result == 0) {
> +		/* Advertisement hasn't changed, but maybe aneg was never on to
> +		 * begin with?  Or maybe phy was isolated? */
> +		int ctl = phy_read(phydev, MII_BMCR);
> +
> +		if (ctl < 0)
> +			return ctl;
> +
> +		if (!(ctl & BMCR_ANENABLE) || (ctl & BMCR_ISOLATE))
> +			result = 1; /* do restart aneg */
> +	}
> +
> +	/* Only restart aneg if we are advertising something different
> +	 * than we were before.	 */
> +	if (result > 0)
> +		result = genphy_restart_aneg(phydev);
> +
> +	return result;
> +}
> +
> +/**
> + * genphy_update_link - update link status in @phydev
> + * @phydev: target phy_device struct
> + *
> + * Description: Update the value in phydev->link to reflect the
> + *   current link value.  In order to do this, we need to read
> + *   the status register twice, keeping the second value.
> + */
> +int genphy_update_link(struct phy_device *phydev)
> +{
> +	int status;
> +
> +	/* Do a fake read */
> +	status = phy_read(phydev, MII_BMSR);
> +
> +	if (status < 0)
> +		return status;
> +
> +	/* wait phy status update in the phy */
> +	udelay(1000);
> +
> +	/* Read link and autonegotiation status */
> +	status = phy_read(phydev, MII_BMSR);
> +
> +	if (status < 0)
> +		return status;
> +
> +	if ((status & BMSR_LSTATUS) == 0)
> +		phydev->link = 0;
> +	else
> +		phydev->link = 1;
> +
> +	return 0;
> +}
> +
> +/**
> + * genphy_read_status - check the link status and update current link state
> + * @phydev: target phy_device struct
> + *
> + * Description: Check the link, then figure out the current state
> + *   by comparing what we advertise with what the link partner
> + *   advertises.  Start by checking the gigabit possibilities,
> + *   then move on to 10/100.
> + */
> +int genphy_read_status(struct phy_device *phydev)
> +{
> +	int adv;
> +	int err;
> +	int lpa;
> +	int lpagb = 0;
> +
> +	/* Update the link, but return if there
> +	 * was an error */
> +	err = genphy_update_link(phydev);
> +	if (err)
> +		return err;
> +
> +	if (AUTONEG_ENABLE == phydev->autoneg) {
> +		if (phydev->supported & (SUPPORTED_1000baseT_Half
> +					| SUPPORTED_1000baseT_Full)) {
> +			lpagb = phy_read(phydev, MII_STAT1000);
> +
> +			if (lpagb < 0)
> +				return lpagb;
> +
> +			adv = phy_read(phydev, MII_CTRL1000);
> +
> +			if (adv < 0)
> +				return adv;
> +
> +			lpagb &= adv << 2;
> +		}
> +
> +		lpa = phy_read(phydev, MII_LPA);
> +
> +		if (lpa < 0)
> +			return lpa;
> +
> +		adv = phy_read(phydev, MII_ADVERTISE);
> +
> +		if (adv < 0)
> +			return adv;
> +
> +		lpa &= adv;
> +
> +		phydev->speed = SPEED_10;
> +		phydev->duplex = DUPLEX_HALF;
> +		phydev->pause = phydev->asym_pause = 0;
> +
> +		if (lpagb & (LPA_1000FULL | LPA_1000HALF)) {
> +			phydev->speed = SPEED_1000;
> +
> +			if (lpagb & LPA_1000FULL)
> +				phydev->duplex = DUPLEX_FULL;
> +		} else if (lpa & (LPA_100FULL | LPA_100HALF)) {
> +			phydev->speed = SPEED_100;
> +
> +			if (lpa & LPA_100FULL)
> +				phydev->duplex = DUPLEX_FULL;
> +		} else
> +			if (lpa & LPA_10FULL)
> +				phydev->duplex = DUPLEX_FULL;
> +
> +		if (phydev->duplex == DUPLEX_FULL) {
> +			phydev->pause = lpa & LPA_PAUSE_CAP ? 1 : 0;
> +			phydev->asym_pause = lpa & LPA_PAUSE_ASYM ? 1 : 0;
> +		}
> +	} else {
> +		int bmcr = phy_read(phydev, MII_BMCR);
> +		if (bmcr < 0)
> +			return bmcr;
> +
> +		if (bmcr & BMCR_FULLDPLX)
> +			phydev->duplex = DUPLEX_FULL;
> +		else
> +			phydev->duplex = DUPLEX_HALF;
> +
> +		if (bmcr & BMCR_SPEED1000)
> +			phydev->speed = SPEED_1000;
> +		else if (bmcr & BMCR_SPEED100)
> +			phydev->speed = SPEED_100;
> +		else
> +			phydev->speed = SPEED_10;
> +
> +		phydev->pause = phydev->asym_pause = 0;
> +	}
> +
> +	return 0;
> +}
> +
> +static int genphy_config_init(struct phy_device *phydev)
> +{
> +	int val;
> +	u32 features;
> +
> +	/* For now, I'll claim that the generic driver supports
> +	 * all possible port types */
> +	features = (SUPPORTED_TP | SUPPORTED_MII
> +			| SUPPORTED_AUI | SUPPORTED_FIBRE |
> +			SUPPORTED_BNC);
> +
> +	/* Do we support autonegotiation? */
> +	val = phy_read(phydev, MII_BMSR);
> +
> +	if (val < 0)
> +		return val;
> +
> +	if (val & BMSR_ANEGCAPABLE)
> +		features |= SUPPORTED_Autoneg;
> +
> +	if (val & BMSR_100FULL)
> +		features |= SUPPORTED_100baseT_Full;
> +	if (val & BMSR_100HALF)
> +		features |= SUPPORTED_100baseT_Half;
> +	if (val & BMSR_10FULL)
> +		features |= SUPPORTED_10baseT_Full;
> +	if (val & BMSR_10HALF)
> +		features |= SUPPORTED_10baseT_Half;
> +
> +	if (val & BMSR_ESTATEN) {
> +		val = phy_read(phydev, MII_ESTATUS);
> +
> +		if (val < 0)
> +			return val;
> +
> +		if (val & ESTATUS_1000_TFULL)
> +			features |= SUPPORTED_1000baseT_Full;
> +		if (val & ESTATUS_1000_THALF)
> +			features |= SUPPORTED_1000baseT_Half;
> +	}
> +
> +	phydev->supported = features;
> +	phydev->advertising = features;
> +
> +	return 0;
> +}
> +
> +static int phy_probe(struct device_d *_dev)
> +{
> +	struct phy_device *dev = to_phy_device(_dev);
> +	struct phy_driver *drv = to_phy_driver(_dev->driver);
> +	struct mii_device *bus = dev->bus;
> +	char str[16];
> +
> +	bus->phydev = dev;
> +
> +	if (bus->flags) {
> +		if (bus->flags & MIIDEV_FORCE_10) {
> +			dev->speed = SPEED_10;
> +			dev->duplex = DUPLEX_FULL;
> +			dev->autoneg = !AUTONEG_ENABLE;
> +		}
> +	}
> +
> +	/* Start out supporting everything. Eventually,
> +	 * a controller will attach, and may modify one
> +	 * or both of these values */
> +	dev->supported = drv->features;
> +	dev->advertising = drv->features;
> +
> +	drv->config_init(dev);

Call _dev->driver->probe instead? A phy driver would have to convert the
device argument to a phy_device using to_phy_device(), but this would be
the same as other subsystems do it currently.

> +
> +static void phy_remove(struct device_d *dev)
> +{
> +}
> +
> +struct bus_type phy_bustype = {
> +	.name = "phy",
> +	.match = phy_match,
> +	.probe = phy_probe,
> +	.remove = phy_remove,

Then you could just remove the .remove callback which has the effect
that a phy drivers .remove function would be called.

> +};
> +
> +int phy_driver_register(struct phy_driver *phydrv)
> +{
> +	if (!phydrv)
> +		return -1;

Drop this check. A stack dump contains more information than an error
code that nobody checks. EPERM would be the wrong error code anyway.

> +#define MII_BMSR		0x01	/* Basic mode status register  */
> +#define MII_PHYSID1		0x02	/* PHYS ID 1                   */
> +#define MII_PHYSID2		0x03	/* PHYS ID 2                   */
> +#define MII_ADVERTISE		0x04	/* Advertisement control reg   */
> +#define MII_LPA			0x05	/* Link partner ability reg    */
> +#define MII_EXPANSION		0x06	/* Expansion register          */
> +#define MII_CTRL1000		0x09	/* 1000BASE-T control          */
> +#define MII_STAT1000		0x0a	/* 1000BASE-T status           */
> +#define	MII_MMD_CTRL		0x0d	/* MMD Access Control Register */
> +#define	MII_MMD_DATA		0x0e	/* MMD Access Data Register */

Indention broken here.

Otherwise looks good and I'm willing to give it a try.

Please generate the patch with -M next time.

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
