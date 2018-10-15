Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCAGp-0007yH-SS
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 21:19:38 +0000
Date: Mon, 15 Oct 2018 23:19:09 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181015211909.GB17344@ravnborg.org>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
 <20181015022125.24020-21-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181015022125.24020-21-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 20/22] net: phy: Add basic driver for MV88E6XXX
 switches from Marvell
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

Some random nits while browsing the code.

On Sun, Oct 14, 2018 at 07:21:23PM -0700, Andrey Smirnov wrote:
> Port a very abridged version of MV88E6XXX DSA driver from Linux
> kernel. Currently only internal MDIO bus connected to switch PHYs is
> exposed.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> 
> net: phy: mv88e6xxx: Expose internal MDIO bus
> ---
>  drivers/net/phy/Kconfig             |   6 +
>  drivers/net/phy/Makefile            |   1 +
>  drivers/net/phy/mv88e6xxx/Makefile  |   5 +
>  drivers/net/phy/mv88e6xxx/chip.c    | 723 ++++++++++++++++++++++++++++
>  drivers/net/phy/mv88e6xxx/chip.h    |  61 +++
>  drivers/net/phy/mv88e6xxx/global2.c | 124 +++++
>  drivers/net/phy/mv88e6xxx/global2.h |  41 ++
>  drivers/net/phy/mv88e6xxx/port.c    |  20 +
>  drivers/net/phy/mv88e6xxx/port.h    |  89 ++++
>  9 files changed, 1070 insertions(+)
>  create mode 100644 drivers/net/phy/mv88e6xxx/Makefile
>  create mode 100644 drivers/net/phy/mv88e6xxx/chip.c
>  create mode 100644 drivers/net/phy/mv88e6xxx/chip.h
>  create mode 100644 drivers/net/phy/mv88e6xxx/global2.c
>  create mode 100644 drivers/net/phy/mv88e6xxx/global2.h
>  create mode 100644 drivers/net/phy/mv88e6xxx/port.c
>  create mode 100644 drivers/net/phy/mv88e6xxx/port.h
> 
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index 79fb917ee..3b1a6ea7e 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -48,6 +48,12 @@ config SMSC_PHY
>  	---help---
>  	  Currently supports the LAN83C185, LAN8187 and LAN8700 PHYs
>  
> +config NET_DSA_MV88E6XXX
> +	tristate "Marvell 88E6xxx Ethernet switch fabric support"
> +	help
> +	  This driver adds support for most of the Marvell 88E6xxx models of
> +	  Ethernet switch chips, except 88E6060.
> +
>  comment "MII bus device drivers"
>  
>  config MDIO_MVEBU
> diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
> index 4424054d9..e4d9ec65a 100644
> --- a/drivers/net/phy/Makefile
> +++ b/drivers/net/phy/Makefile
> @@ -7,6 +7,7 @@ obj-$(CONFIG_MARVELL_PHY)	+= marvell.o
>  obj-$(CONFIG_MICREL_PHY)	+= micrel.o
>  obj-$(CONFIG_NATIONAL_PHY)	+= national.o
>  obj-$(CONFIG_SMSC_PHY)		+= smsc.o
> +obj-$(CONFIG_NET_DSA_MV88E6XXX)	+= mv88e6xxx/
>  
>  obj-$(CONFIG_MDIO_MVEBU)	+= mdio-mvebu.o
>  obj-$(CONFIG_MDIO_BITBANG)	+= mdio-bitbang.o
> diff --git a/drivers/net/phy/mv88e6xxx/Makefile b/drivers/net/phy/mv88e6xxx/Makefile
> new file mode 100644
> index 000000000..8c8ba78cd
> --- /dev/null
> +++ b/drivers/net/phy/mv88e6xxx/Makefile
> @@ -0,0 +1,5 @@
> +obj-y += mv88e6xxx.o
> +
> +mv88e6xxx-objs := chip.o
> +mv88e6xxx-objs += global2.o
> +mv88e6xxx-objs += port.o
> \ No newline at end of file

Another way to write the above would be:
mv88e6xxx-y := chip.o
mv88e6xxx-y += global2.o
mv88e6xxx-y += port.o

And if you change this then you can alos add the missing newline

As the kernel uses -objs you will likely keep current syntax,
just wanted to point in the direction of the new way to express this.


> +static int mv88e6xxx_probe(struct device_d *dev)
> +{
> +	struct device_node *np = dev->device_node;
> +	struct device_node *mdio_node;
> +	struct mv88e6xxx_chip *chip;
> +	enum of_gpio_flags of_flags;
> +	int err;
> +	u32 reg;
> +
> +	err = of_property_read_u32(np, "reg", &reg);
> +	if (err) {
> +		dev_err(dev, "Couldn't determine switch MIDO address\n");
> +		return err;
> +	}
> +
> +	if (reg) {
> +		dev_err(dev, "Only single-chip address mode is supported\n");
> +		return -ENOTSUPP;
> +	}
> +
> +	chip = xzalloc(sizeof(struct mv88e6xxx_chip));
> +	chip->dev = dev;
> +	chip->info = of_device_get_match_data(dev);
> +
> +	chip->parent_miibus = of_mdio_find_bus(np->parent);
> +	if (!chip->parent_miibus)
> +		return -EPROBE_DEFER;
> +
> +	chip->reset = of_get_named_gpio_flags(np, "reset-gpios", 0, &of_flags);
> +	if (gpio_is_valid(chip->reset)) {
> +		unsigned long flags = GPIOF_OUT_INIT_INACTIVE;
> +		char *name;
> +
> +		if (of_flags & OF_GPIO_ACTIVE_LOW)
> +			flags |= GPIOF_ACTIVE_LOW;
> +
> +		name = basprintf("%s reset", dev_name(dev));
> +		err = gpio_request_one(chip->reset, flags, name);
> +		if (err < 0)
> +			return err;
> +		/*
> +		 * We assume that reset line was previously held low
> +		 * and give the switch time to initialize before
> +		 * trying to read its registers
> +		 */
> +		mv88e6xxx_hardware_reset_delay();
> +	}
> +
> +	err = mv88e6xxx_detect(chip);
> +	if (err)
> +		return err;
> +
> +	err = mv88e6xxx_switch_reset(chip);
> +	if (err)
> +		return err;
> +	/*
> +	 * In single-chip address mode addresses 0x10 - 0x1f are
> +	 * reserved to access various switch registers and do not
> +	 * correspond to any PHYs, so we mask them to pervent from
> +	 * being exposed as phy devices
> +	 */
> +	chip->parent_miibus->phy_mask |= GENMASK(0x1f, 0x10);
> +	/*
> +	 * Address 0x0f on internal bus is dedicated to SERDES
> +	 * registers and won't be very useful against standard PHY
> +	 * driver
> +	 */
> +	chip->miibus.phy_mask |= GENMASK(0x1f, 0x0f);
> +
> +	chip->miibus.read = mv88e6xxx_mdio_read;
> +	chip->miibus.write = mv88e6xxx_mdio_write;

The function pointers are hardcoded here.
But we have them in chip->info->ops - where we can
have chip specific variants.
I assume it would be more correct to copy them from the ops structure?


> +#endif /* _MV88E6XXX_CHIP_H */
> \ No newline at end of file
Hmm...


> +#endif /* _MV88E6XXX_GLOBAL2_H */
> \ No newline at end of file
Hmmm...

> +#endif /* _MV88E6XXX_PORT_H */
> \ No newline at end of file
Again


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
