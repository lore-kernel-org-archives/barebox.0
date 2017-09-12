Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dreYm-00041W-8i
 for barebox@lists.infradead.org; Tue, 12 Sep 2017 06:20:38 +0000
Date: Tue, 12 Sep 2017 08:19:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170912061953.dnrjsboyqa473gyl@pengutronix.de>
References: <20170827070230.13382-1-linux@rempel-privat.de>
 <20170827070230.13382-8-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170827070230.13382-8-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 07/10] add phy: ar8327 driver
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sun, Aug 27, 2017 at 09:02:27AM +0200, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/net/phy/Kconfig  |   5 +
>  drivers/net/phy/Makefile |   1 +
>  drivers/net/phy/ar8327.c | 276 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 282 insertions(+)
>  create mode 100644 drivers/net/phy/ar8327.c
> 
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index d30f65b8e..ea2e06265 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -8,6 +8,11 @@ if PHYLIB
>  
>  comment "MII PHY device drivers"
>  
> +config AR8327N_PHY
> +	bool "Driver for QCA AR8327N PHYs"
> +	---help---
> +	  Currently supports the AR8327N PHY.
> +
>  config AT803X_PHY
>  	bool "Driver for Atheros AT803X PHYs"
>  	---help---
> diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
> index 10732f807..13b8f6545 100644
> --- a/drivers/net/phy/Makefile
> +++ b/drivers/net/phy/Makefile
> @@ -1,4 +1,5 @@
>  obj-y += phy.o mdio_bus.o
> +obj-$(CONFIG_AR8327N_PHY)	+= ar8327.o
>  obj-$(CONFIG_AT803X_PHY)	+= at803x.o
>  obj-$(CONFIG_LXT_PHY)		+= lxt.o
>  obj-$(CONFIG_MARVELL_PHY)	+= marvell.o
> diff --git a/drivers/net/phy/ar8327.c b/drivers/net/phy/ar8327.c
> new file mode 100644
> index 000000000..647871283
> --- /dev/null
> +++ b/drivers/net/phy/ar8327.c
> @@ -0,0 +1,276 @@
> +/*
> + * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
> + *
> + * This program is free software; you can redistribute  it and/or modify it
> + * under  the terms of  the GNU General  Public License as published by the
> + * Free Software Foundation;  either version 2 of the  License, or (at your
> + * option) any later version.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <linux/phy.h>
> +#include <linux/string.h>
> +
> +#define ATHR_PHY_MAX	5
> +
> +/*****************/
> +/* PHY Registers */
> +/*****************/
> +#define ATHR_PHY_CONTROL			0x00
> +#define ATHR_PHY_STATUS				0x01
> +#define ATHR_PHY_ID1				0x02
> +#define ATHR_PHY_ID2				0x03
> +#define ATHR_AUTONEG_ADVERT			0x04
> +#define ATHR_LINK_PARTNER_ABILITY		0x05
> +#define ATHR_AUTONEG_EXPANSION			0x06
> +#define ATHR_NEXT_PAGE_TRANSMIT			0x07
> +#define ATHR_LINK_PARTNER_NEXT_PAGE		0x08
> +#define ATHR_1000BASET_CONTROL			0x09
> +#define ATHR_1000BASET_STATUS			0x0a
> +#define ATHR_PHY_SPEC_CONTROL			0x10
> +#define ATHR_PHY_SPEC_STATUS			0x11
> +#define ATHR_DEBUG_PORT_ADDRESS			0x1d
> +#define ATHR_DEBUG_PORT_DATA			0x1e
> +
> +/* Advertisement register. */
> +#define ATHR_ADVERTISE_ASYM_PAUSE		0x0800
> +#define ATHR_ADVERTISE_PAUSE			0x0400
> +#define ATHR_ADVERTISE_100FULL			0x0100
> +#define ATHR_ADVERTISE_100HALF			0x0080
> +#define ATHR_ADVERTISE_10FULL			0x0040
> +#define ATHR_ADVERTISE_10HALF			0x0020
> +
> +#define ATHR_ADVERTISE_ALL (ATHR_ADVERTISE_ASYM_PAUSE | ATHR_ADVERTISE_PAUSE | \
> +                            ATHR_ADVERTISE_10HALF | ATHR_ADVERTISE_10FULL | \
> +                            ATHR_ADVERTISE_100HALF | ATHR_ADVERTISE_100FULL)
> +
> +/* ATHR_PHY_CONTROL fields */
> +#define ATHR_CTRL_SOFTWARE_RESET		0x8000
> +#define ATHR_CTRL_AUTONEGOTIATION_ENABLE	0x1000
> +
> +/* 1000BASET_CONTROL */
> +#define ATHR_ADVERTISE_1000FULL			0x0200
> +
> +/* Phy Specific status fields */
> +#define ATHR_STATUS_LINK_PASS			0x0400
> +
> +static u32 ar8327n_reg_read(struct phy_device *phydev, u32 reg_addr)
> +{
> +	u32 reg_word_addr;
> +	u32 phy_addr, tmp_val, reg_val;
> +	u16 phy_val;
> +	u8 phy_reg;
> +
> +	/* change reg_addr to 16-bit word address, 32-bit aligned */
> +	reg_word_addr = (reg_addr & 0xfffffffc) >> 1;
> +
> +	/* configure register high address */
> +	phy_addr = 0x18;
> +	phy_reg = 0x0;
> +	phy_val = (u16) ((reg_word_addr >> 8) & 0x1ff);  /* bit16-8 of reg address */
> +	mdiobus_write(phydev->bus,  phy_addr, phy_reg, phy_val);
> +
> +	/* For some registers such as MIBs, since it is read/clear, we should */
> +	/* read the lower 16-bit register then the higher one */
> +
> +	/* read register in lower address */
> +	phy_addr = 0x10 | ((reg_word_addr >> 5) & 0x7); /* bit7-5 of reg address */
> +	phy_reg = (u8) (reg_word_addr & 0x1f);   /* bit4-0 of reg address */
> +	reg_val = (u32) mdiobus_read(phydev->bus, phy_addr, phy_reg);
> +
> +	/* read register in higher address */
> +	reg_word_addr++;
> +	phy_addr = 0x10 | ((reg_word_addr >> 5) & 0x7); /* bit7-5 of reg address */
> +	phy_reg = (u8) (reg_word_addr & 0x1f);   /* bit4-0 of reg address */
> +	reg_val = (u32) mdiobus_read(phydev->bus, phy_addr, phy_reg);
> +	reg_val |= (tmp_val << 16);
> +
> +	return reg_val;
> +}
> +
> +static void ar8327n_reg_write(struct phy_device *phydev, u32 reg_addr,
> +			      u32 reg_val)
> +{
> +	u32 reg_word_addr;
> +	u32 phy_addr;
> +	u16 phy_val;
> +	u8 phy_reg;
> +
> +	/* change reg_addr to 16-bit word address, 32-bit aligned */
> +	reg_word_addr = (reg_addr & 0xfffffffc) >> 1;
> +
> +	/* configure register high address */
> +	phy_addr = 0x18;
> +	phy_reg = 0x0;
> +	phy_val = (u16) ((reg_word_addr >> 8) & 0x1ff);  /* bit16-8 of reg address */
> +	mdiobus_write(phydev->bus,  phy_addr, phy_reg, phy_val);
> +
> +	/* For some registers such as ARL and VLAN, since they include BUSY bit */
> +	/* in lower address, we should write the higher 16-bit register then the */
> +	/* lower one */
> +
> +	/* read register in higher address */
> +	reg_word_addr++;
> +	phy_addr = 0x10 | ((reg_word_addr >> 5) & 0x7); /* bit7-5 of reg address */
> +	phy_reg = (u8) (reg_word_addr & 0x1f);   /* bit4-0 of reg address */
> +	phy_val = (u16) ((reg_val >> 16) & 0xffff);
> +	mdiobus_write(phydev->bus,  phy_addr, phy_reg, phy_val);
> +
> +	/* write register in lower address */
> +	reg_word_addr--;
> +	phy_addr = 0x10 | ((reg_word_addr >> 5) & 0x7); /* bit7-5 of reg address */
> +	phy_reg = (u8) (reg_word_addr & 0x1f);   /* bit4-0 of reg address */
> +	phy_val = (u16) (reg_val & 0xffff);
> +	mdiobus_write(phydev->bus,  phy_addr, phy_reg, phy_val);
> +}
> +
> +static int ar8327n_phy_is_link_alive(struct phy_device *phydev, int phy_addr)
> +{
> +	u16 val;
> +
> +	val = mdiobus_read(phydev->bus, phy_addr, ATHR_PHY_SPEC_STATUS);
> +
> +	return !!(val & ATHR_STATUS_LINK_PASS);
> +}
> +
> +static int ar8327n_phy_setup(struct phy_device *phydev)
> +{
> +	int phy_addr;
> +
> +	/* start auto negotiation on each phy */
> +	for (phy_addr = 0; phy_addr < ATHR_PHY_MAX; phy_addr++) {
> +		mdiobus_write(phydev->bus, phy_addr, ATHR_AUTONEG_ADVERT,
> +			      ATHR_ADVERTISE_ALL);
> +
> +		mdiobus_write(phydev->bus, phy_addr, ATHR_1000BASET_CONTROL,
> +			      ATHR_ADVERTISE_1000FULL);
> +
> +		/* Reset PHYs*/
> +		mdiobus_write(phydev->bus, phy_addr, ATHR_PHY_CONTROL,
> +			      ATHR_CTRL_AUTONEGOTIATION_ENABLE
> +			      | ATHR_CTRL_SOFTWARE_RESET);
> +	}
> +
> +	/*
> +	 * After the phy is reset, it takes a little while before
> +	 * it can respond properly.
> +	 */
> +	mdelay(1000);
> +
> +	for (phy_addr = 0; phy_addr < ATHR_PHY_MAX; phy_addr++) {
> +		int count;
> +
> +		for (count = 20; count > 0; count--) {
> +			u16 val;
> +			val = mdiobus_read(phydev->bus, phy_addr,
> +					   ATHR_PHY_CONTROL);
> +
> +			if (!(val & ATHR_CTRL_SOFTWARE_RESET))
> +				break;
> +
> +			mdelay(150);
> +		}
> +
> +		if (!count)
> +			printk("Port %d, Negotiation timeout\n", phy_addr);

Port %d of what device?? dev_* functions really make it easy to add
helpful context to such messages.

> +	}
> +
> +	return 0;
> +}
> +
> +static int ar8327n_get_link(struct phy_device *phydev)
> +{
> +	int phy_addr;
> +	int live_links = 0;
> +
> +	for (phy_addr = 0; phy_addr < ATHR_PHY_MAX; phy_addr++) {
> +		if (ar8327n_phy_is_link_alive(phydev, phy_addr))
> +			live_links++;
> +	}
> +
> +	return (live_links > 0);
> +}
> +
> +static int ar8327n_config_init(struct phy_device *phydev)
> +{
> +	int phy_addr = 0;
> +
> +	if (phydev->interface != PHY_INTERFACE_MODE_RGMII_TXID)
> +		return 0;
> +
> +	/* if using header for register configuration, we have to     */
> +	/* configure s17 register after frame transmission is enabled */
> +
> +	/* configure the RGMII */
> +	ar8327n_reg_write(phydev, 0x624, 0x7f7f7f7f);
> +	ar8327n_reg_write(phydev, 0x10, 0x40000000);
> +	ar8327n_reg_write(phydev, 0x4, 0x07600000);
> +	ar8327n_reg_write(phydev, 0xc, 0x01000000);
> +	ar8327n_reg_write(phydev, 0x7c, 0x0000007e);
> +
> +	/* AR8327/AR8328 v1.0 fixup */
> +	if ((ar8327n_reg_read(phydev, 0x0) & 0xffff) == 0x1201) {
> +		/* TODO v1.0 seems to be something special. Currently not tested */
> +		printk("!!! phy versio v1.0 is detected!! \n");

s/versio/version/. Also the usual printk/dev_* beefing. It would be nice
if you could give the user a hint that this path is untested.

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
