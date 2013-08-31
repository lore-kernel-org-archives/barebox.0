Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VFi0N-0002kX-Rd
 for barebox@lists.infradead.org; Sat, 31 Aug 2013 10:02:08 +0000
Date: Sat, 31 Aug 2013 12:01:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130831100146.GI30088@pengutronix.de>
References: <1377849680-11016-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377849680-11016-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] net/phy: support of mmd register read and write
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 30, 2013 at 10:01:20AM +0200, Jan Weitzel wrote:
> Add function for indirect access of the mmd registers, based on linux.
> phy_read_mmd_indirect
> phy_write_mmd_indirect
> 
> Also clean some private mmd functions
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/dmo-mx6-realq7/board.c |   14 ++------
>  arch/arm/boards/tqma6x/board.c         |   14 ++------
>  drivers/net/phy/phy.c                  |   63 ++++++++++++++++++++++++++++++++
>  include/linux/phy.h                    |    4 ++
>  4 files changed, 73 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/dmo-mx6-realq7/board.c
> index 69d93f8..628f5cb 100644
> --- a/arch/arm/boards/dmo-mx6-realq7/board.c
> +++ b/arch/arm/boards/dmo-mx6-realq7/board.c
> @@ -58,23 +58,15 @@ static iomux_v3_cfg_t realq7_pads_gpio[] = {
>  	MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24,
>  };
>  
> -static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
> -{
> -	phy_write(dev, 0x0d, device);
> -	phy_write(dev, 0x0e, reg);
> -	phy_write(dev, 0x0d, (1 << 14) | device);
> -	phy_write(dev, 0x0e, val);
> -}
> -
>  static int ksz9031rn_phy_fixup(struct phy_device *dev)
>  {
>  	/*
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	mmd_write_reg(dev, 2, 4, 0);
> -	mmd_write_reg(dev, 2, 5, 0);
> -	mmd_write_reg(dev, 2, 8, 0x003ff);
> +	phy_write_mmd_indirect(dev, 4, 2, 0);
> +	phy_write_mmd_indirect(dev, 5, 2, 0);
> +	phy_write_mmd_indirect(dev, 8, 2, 0x03ff);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
> index 9e81a1d..3e051a5 100644
> --- a/arch/arm/boards/tqma6x/board.c
> +++ b/arch/arm/boards/tqma6x/board.c
> @@ -58,23 +58,15 @@ static iomux_v3_cfg_t tqma6x_pads_gpio[] = {
>  	MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24,
>  };
>  
> -static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
> -{
> -	phy_write(dev, 0x0d, device);
> -	phy_write(dev, 0x0e, reg);
> -	phy_write(dev, 0x0d, (1 << 14) | device);
> -	phy_write(dev, 0x0e, val);
> -}
> -
>  static int ksz9031rn_phy_fixup(struct phy_device *dev)
>  {
>  	/*
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	mmd_write_reg(dev, 2, 4, 0);
> -	mmd_write_reg(dev, 2, 5, 0);
> -	mmd_write_reg(dev, 2, 8, 0x003ff);
> +	phy_write_mmd_indirect(dev, 4, 2, 0);
> +	phy_write_mmd_indirect(dev, 5, 2, 0);
> +	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
>  
>  	return 0;
>  }
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 112ff13..db00e38 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -632,6 +632,69 @@ int genphy_read_status(struct phy_device *phydev)
>  	return 0;
>  }
>  
> +static inline void mmd_phy_indirect(struct phy_device *phydev, int prtad,
> +					int devad)
> +{
> +	/* Write the desired MMD Devad */
> +	phy_write(phydev, MII_MMD_CTRL, devad);
> +
> +	/* Write the desired MMD register address */
> +	phy_write(phydev, MII_MMD_DATA, prtad);
> +
> +	/* Select the Function : DATA with no post increment */
> +	phy_write(phydev, MII_MMD_CTRL, (devad | MII_MMD_CTRL_NOINCR));
> +}
> +
> +/**
> + * phy_read_mmd_indirect - reads data from the MMD registers
> + * @phy_device: phy device
> + * @prtad: MMD Address
> + * @devad: MMD DEVAD
> + *
> + * Description: it reads data from the MMD registers (clause 22 to access to
> + * clause 45) of the specified phy address.
> + * To read these register we have:
> + * 1) Write reg 13 // DEVAD
> + * 2) Write reg 14 // MMD Address
> + * 3) Write reg 13 // MMD Data Command for MMD DEVAD
> + * 3) Read  reg 14 // Read MMD data
> + */
> +int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad)
> +{
> +	u32 ret;
> +
> +	mmd_phy_indirect(phydev, prtad, devad);
> +
> +	/* Read the content of the MMD's selected register */
> +	ret = phy_read(phydev, MII_MMD_DATA);
> +
> +	return ret;
> +}
> +
> +/**
> + * phy_write_mmd_indirect - writes data to the MMD registers
> + * @phy_device: phy device
> + * @prtad: MMD Address
> + * @devad: MMD DEVAD
> + * @data: data to write in the MMD register
> + *
> + * Description: Write data from the MMD registers of the specified
> + * phy address.
> + * To write these register we have:
> + * 1) Write reg 13 // DEVAD
> + * 2) Write reg 14 // MMD Address
> + * 3) Write reg 13 // MMD Data Command for MMD DEVAD
> + * 3) Write reg 14 // Write MMD data
> + */
> +void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
> +				   u16 data)
> +{
> +	mmd_phy_indirect(phydev, prtad, devad);
> +
> +	/* Write the data into MMD's selected register */
> +	phy_write(phydev, MII_MMD_DATA, data);
> +}
> +
>  static int genphy_config_init(struct phy_device *phydev)
>  {
>  	int val;
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index 8e60758..94f631b 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -288,5 +288,9 @@ int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
>  		int (*run)(struct phy_device *));
>  int phy_scan_fixups(struct phy_device *phydev);
>  
> +int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad);
> +void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
> +				   u16 data);
> +
>  extern struct bus_type mdio_bus_type;
>  #endif /* __PHYDEV_H__ */
> -- 
> 1.7.0.4
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
