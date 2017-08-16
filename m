Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhtWg-0002AJ-FB
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 08:18:11 +0000
Date: Wed, 16 Aug 2017 10:17:41 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170816081741.bcoctdw4dtai3tb4@pengutronix.de>
References: <20170815094737.27407-1-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170815094737.27407-1-jlu@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: mvebu: armada-xp: configure PLL and PHY register
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Hallo Jan,

On Tue, Aug 15, 2017 at 11:47:37AM +0200, Jan Luebbe wrote:
> The PLL setup is needed to use the USB ports in Linux.
> =

> This code is ported from mainline U-Boot arch/arm/mach-mvebu/cpu.c.

Actually this is a work around because Linux doesn't do the necessary
setup before making use of the hardware, right?

If so, wouldn't it be better to teach Linux about the needed setup?

> +static void setup_usb_phys(void)
> +{
> +	int dev;
> +
> +	/*
> +	 * USB PLL init
> +	 */
> +
> +	/* Setup PLL frequency */
> +	/* USB REF frequency =3D 25 MHz */
> +	clrsetbits_le32(MV_USB_PHY_PLL_REG(1), 0x3ff, 0x605);
> +
> +	/* Power up PLL and PHY channel */
> +	setbits_le32(MV_USB_PHY_PLL_REG(2), BIT(9));
> + =

> +	/* Assert VCOCAL_START */
> +	setbits_le32(MV_USB_PHY_PLL_REG(1), BIT(21));
> + =

> +	mdelay(1);
> + =

> +	/*
> +	 * USB PHY init (change from defaults) specific for 40nm (78X30 78X60)

I assume this comment also comes from U-Boot. Still I wonder if it makes
sense to use the more common names instead of "78X30 78X60". That would
be "Armada XP" but not "Armada 370", wouldn't it? (Armada 370 =3D 88F6710,
88F6707, and 88F6W11). If so, this code shouldn't be reached on Armada
370?

Some other places in barebox suggest, that MV78xx0 is neither XP nor 370
(e.g.

	dts/Bindings/net/marvell-orion-mdio.txt
	dts/Bindings/arm/marvell/mvebu-system-controller.txt
	drivers/bus/Kconfig
	drivers/spi/mvebu_spi.c
)

> +	 */
> +
> +	for (dev =3D 0; dev < 3; dev++) {
> +		setbits_le32(MV_USB_X3_PHY_CHANNEL(dev, 3), BIT(15));
> +
> +		/* Assert REG_RCAL_START in channel REG 1 */
> +		setbits_le32(MV_USB_X3_PHY_CHANNEL(dev, 1), BIT(12));
> +		udelay(40);
> +		clrbits_le32(MV_USB_X3_PHY_CHANNEL(dev, 1), BIT(12));
> +	}

Can this be made quicker using:

	for (dev =3D 0; dev < 3; dev++) {
		setbits_le32(MV_USB_X3_PHY_CHANNEL(dev, 3), BIT(15));

		/* Assert REG_RCAL_START in channel REG 1 */
		setbits_le32(MV_USB_X3_PHY_CHANNEL(dev, 1), BIT(12));
	}

	udelay(40;

	for (dev =3D 0; dev < 3; dev++)
		clrbits_le32(MV_USB_X3_PHY_CHANNEL(dev, 1), BIT(12));

?

> +}
> +
>  static int armada_370_xp_init_soc(void)
>  {
>  	u32 reg;
> @@ -109,6 +151,9 @@ static int armada_370_xp_init_soc(void)
>  		reg =3D readl(ARMADA_XP_PUP_ENABLE);
>  		reg |=3D GE0_PUP_EN | GE1_PUP_EN | LCD_PUP_EN | NAND_PUP_EN | SPI_PUP_=
EN;
>  		writel(reg, ARMADA_XP_PUP_ENABLE);
> +
> +		/* Configure USB PLL and PHYs on AXP */
> +		setup_usb_phys();
>  	}
>  =

>  	return 0;
> diff --git a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h b/arch=
/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
> index 1dad05317211..b972df151a74 100644
> --- a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
> +++ b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
> @@ -72,4 +72,6 @@
>  	 (((port) % 4) * ARMADA_370_XP_PCIE_PORT_OFFSET))
>  #define  PCIE_DEVICE_VENDOR_ID		0x000
>  =

> +#define ARMADA_370_XP_USB_BASE		(ARMADA_370_XP_INT_REGS_BASE + 0x50000)

Instead of hardcoding this address, this could be done depending on the
device at the same address specified in the device tree.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
