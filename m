Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNs89-000614-N2
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 06:31:54 +0000
Date: Thu, 1 Oct 2020 08:31:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201001063152.GK11648@pengutronix.de>
References: <20200929081909.30235-1-s.hauer@pengutronix.de>
 <20200929081909.30235-3-s.hauer@pengutronix.de>
 <23c30f5e-d9fb-8063-4da3-1cc46e664d82@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23c30f5e-d9fb-8063-4da3-1cc46e664d82@pengutronix.de>
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
Subject: Re: [PATCH 3/3] net: phy: Add and use driver register macro
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Sep 29, 2020 at 02:10:09PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 9/29/20 10:19 AM, Sascha Hauer wrote:
> > Add driver registration macros for phy drivers similar to the existing
> > platform device macros. This also changes the initcall level from
> > fs_initcall to device_initcall for the phy drivers. It is not clear
> > why the phy driver have been at fs_initcall in the first place, changing
> > it shouldn't be a problem.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/net/phy/ar8327.c         |  7 +------
> >  drivers/net/phy/at803x.c         |  7 +------
> >  drivers/net/phy/davicom.c        |  7 +------
> >  drivers/net/phy/dp83867.c        |  6 +-----
> >  drivers/net/phy/lxt.c            |  7 +------
> >  drivers/net/phy/marvell.c        |  7 +------
> >  drivers/net/phy/micrel.c         |  7 +------
> >  drivers/net/phy/mv88e6xxx/port.c |  8 ++------
> >  drivers/net/phy/national.c       |  6 +-----
> >  drivers/net/phy/phy.c            |  6 +-----
> >  drivers/net/phy/realtek.c        |  7 +------
> >  drivers/net/phy/smsc.c           |  6 +-----
> >  include/linux/phy.h              | 20 ++++++++++++++++++++
> >  13 files changed, 33 insertions(+), 68 deletions(-)
> > 
> > diff --git a/drivers/net/phy/ar8327.c b/drivers/net/phy/ar8327.c
> > index 5f3a2e2cf2..f13d574b30 100644
> > --- a/drivers/net/phy/ar8327.c
> > +++ b/drivers/net/phy/ar8327.c
> > @@ -268,9 +268,4 @@ static struct phy_driver ar8327n_driver[] = {
> >  	.aneg_done	= &ar8327n_aneg_done,
> >  }};
> >  
> > -static int atheros_phy_init(void)
> > -{
> > -	return phy_drivers_register(ar8327n_driver,
> > -				    ARRAY_SIZE(ar8327n_driver));
> > -}
> > -fs_initcall(atheros_phy_init);
> > +device_phy_drivers(ar8327n_driver);
> > diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> > index de053a36fb..016ed97020 100644
> > --- a/drivers/net/phy/at803x.c
> > +++ b/drivers/net/phy/at803x.c
> > @@ -243,9 +243,4 @@ static struct phy_driver at803x_driver[] = {
> >  	.read_status	= &genphy_read_status,
> >  } };
> >  
> > -static int atheros_phy_init(void)
> > -{
> > -	return phy_drivers_register(at803x_driver,
> > -				    ARRAY_SIZE(at803x_driver));
> > -}
> > -fs_initcall(atheros_phy_init);
> > +device_phy_drivers(at803x_driver);
> > diff --git a/drivers/net/phy/davicom.c b/drivers/net/phy/davicom.c
> > index febaffa52c..794e5f2c96 100644
> > --- a/drivers/net/phy/davicom.c
> > +++ b/drivers/net/phy/davicom.c
> > @@ -127,9 +127,4 @@ static struct phy_driver dm91xx_driver[] = {
> >  	.features	= PHY_BASIC_FEATURES,
> >  } };
> >  
> > -static int dm9161_init(void)
> > -{
> > -	return phy_drivers_register(dm91xx_driver,
> > -		ARRAY_SIZE(dm91xx_driver));
> > -}
> > -fs_initcall(dm9161_init);
> > +device_phy_drivers(dm91xx_driver);
> > diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
> > index 929a407b09..8131e8c9d6 100644
> > --- a/drivers/net/phy/dp83867.c
> > +++ b/drivers/net/phy/dp83867.c
> > @@ -311,8 +311,4 @@ static struct phy_driver dp83867_driver[] = {
> >  		},
> >  };
> >  
> > -static int dp83867_phy_init(void)
> > -{
> > -	return phy_drivers_register(dp83867_driver, ARRAY_SIZE(dp83867_driver));
> > -}
> > -fs_initcall(dp83867_phy_init);
> > +device_phy_drivers(dp83867_driver);
> > diff --git a/drivers/net/phy/lxt.c b/drivers/net/phy/lxt.c
> > index b661ae7316..9b023c8c40 100644
> > --- a/drivers/net/phy/lxt.c
> > +++ b/drivers/net/phy/lxt.c
> > @@ -19,9 +19,4 @@ static struct phy_driver lxt97x_driver[] = {
> >  	.features	= PHY_BASIC_FEATURES,
> >  } };
> >  
> > -static int lxt97x_phy_init(void)
> > -{
> > -	return phy_drivers_register(lxt97x_driver,
> > -				    ARRAY_SIZE(lxt97x_driver));
> > -}
> > -fs_initcall(lxt97x_phy_init);
> > +device_phy_drivers(lxt97x_driver);
> > diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
> > index af39ed68fd..3bf0fef34b 100644
> > --- a/drivers/net/phy/marvell.c
> > +++ b/drivers/net/phy/marvell.c
> > @@ -733,9 +733,4 @@ static struct phy_driver marvell_drivers[] = {
> >  	},
> >  };
> >  
> > -static int __init marvell_phy_init(void)
> > -{
> > -	return phy_drivers_register(marvell_drivers,
> > -				    ARRAY_SIZE(marvell_drivers));
> > -}
> > -fs_initcall(marvell_phy_init);
> > +device_phy_drivers(marvell_drivers);
> > diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> > index 4655430573..4e46370241 100644
> > --- a/drivers/net/phy/micrel.c
> > +++ b/drivers/net/phy/micrel.c
> > @@ -537,9 +537,4 @@ static struct phy_driver ksphy_driver[] = {
> >  	.read_status	= ksz8873mll_read_status,
> >  } };
> >  
> > -static int ksphy_init(void)
> > -{
> > -	return phy_drivers_register(ksphy_driver,
> > -		ARRAY_SIZE(ksphy_driver));
> > -}
> > -fs_initcall(ksphy_init);
> > +device_phy_drivers(ksphy_driver);
> > diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
> > index 52f95d622c..3f10719d9a 100644
> > --- a/drivers/net/phy/mv88e6xxx/port.c
> > +++ b/drivers/net/phy/mv88e6xxx/port.c
> > @@ -547,11 +547,7 @@ static struct phy_driver mv88e6xxx_port_driver = {
> >  	.read_status	= mv88e6xxx_port_read_status,
> >  };
> >  
> > -static int __init mv88e6xxx_port_driver_register(void)
> > -{
> > -	return phy_driver_register(&mv88e6xxx_port_driver);
> > -}
> > -fs_initcall(mv88e6xxx_port_driver_register);
> > +device_phy_driver(mv88e6xxx_port_driver);
> >  
> >  int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip)
> >  {
> > @@ -660,4 +656,4 @@ int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip)
> >  	}
> >  
> >  	return 0;
> > -}
> > \ No newline at end of file
> > +}
> > diff --git a/drivers/net/phy/national.c b/drivers/net/phy/national.c
> > index 83390b99ab..d74cd81933 100644
> > --- a/drivers/net/phy/national.c
> > +++ b/drivers/net/phy/national.c
> > @@ -84,8 +84,4 @@ static struct phy_driver dp83865_driver = {
> >  	.config_init    = ns_config_init,
> >  };
> >  
> > -static int ns_phy_init(void)
> > -{
> > -	return phy_driver_register(&dp83865_driver);
> > -}
> > -fs_initcall(ns_phy_init);
> > +device_phy_driver(dp83865_driver);
> > diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> > index 57c2f8044f..622acbe40d 100644
> > --- a/drivers/net/phy/phy.c
> > +++ b/drivers/net/phy/phy.c
> > @@ -981,8 +981,4 @@ static struct phy_driver genphy_driver = {
> >  		SUPPORTED_BNC,
> >  };
> >  
> > -static int generic_phy_register(void)
> > -{
> > -	return phy_driver_register(&genphy_driver);
> > -}
> > -device_initcall(generic_phy_register);
> > +device_phy_driver(genphy_driver);
> > diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
> > index 695a6c384d..9ba0495d41 100644
> > --- a/drivers/net/phy/realtek.c
> > +++ b/drivers/net/phy/realtek.c
> > @@ -196,9 +196,4 @@ static struct phy_driver realtek_drvs[] = {
> >  	},
> >  };
> >  
> > -static int __init realtek_phy_init(void)
> > -{
> > -	return phy_drivers_register(realtek_drvs,
> > -				    ARRAY_SIZE(realtek_drvs));
> > -}
> > -fs_initcall(realtek_phy_init);
> > +device_phy_drivers(realtek_drvs);
> > diff --git a/drivers/net/phy/smsc.c b/drivers/net/phy/smsc.c
> > index d6705e4fe2..1e1f3d5274 100644
> > --- a/drivers/net/phy/smsc.c
> > +++ b/drivers/net/phy/smsc.c
> > @@ -135,8 +135,4 @@ static struct phy_driver smsc_phy_driver[] = {
> >  	.config_init	= lan87xx_config_init,
> >  } };
> >  
> > -static int __init smsc_init(void)
> > -{
> > -	return phy_drivers_register(smsc_phy_driver, ARRAY_SIZE(smsc_phy_driver));
> > -}
> > -fs_initcall(smsc_init);
> > +device_phy_drivers(smsc_phy_driver);
> > diff --git a/include/linux/phy.h b/include/linux/phy.h
> > index cdcb7c24f2..2152c84447 100644
> > --- a/include/linux/phy.h
> > +++ b/include/linux/phy.h
> > @@ -284,6 +284,26 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr);
> >  int phy_init(void);
> >  int phy_init_hw(struct phy_device *phydev);
> >  
> > +#define phy_register_drivers_macro(level, drvs)				\
> > +        static int __init drv##_register(void)				\
> 
> No drv defined. This should either be s/drv/drvs/ or something __UNIQUE_ID

Nice thing this __UNIQUE_ID, we can use that for the
BAREBOX_MAGICVAR_NAMED macro. Here I decided for the former though.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
