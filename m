Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jokpO-00074k-16
 for barebox@lists.infradead.org; Fri, 26 Jun 2020 09:39:43 +0000
Date: Fri, 26 Jun 2020 10:20:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200626082005.GF19105@pengutronix.de>
References: <20200624135836.22154-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200624135836.22154-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] treewide: make use of PTR_ERR_OR_ZERO
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 24, 2020 at 03:58:36PM +0200, Uwe Kleine-K=F6nig wrote:
> PTR_ERR_OR_ZERO is designed to replace boiler plate like:
> =

> 	if (IS_ERR(x))
> 		return PTR_ERR(x);
> 	return 0;
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/arm/boards/freescale-mx23-evk/mx23-evk.c |  4 +---
>  arch/arm/boards/karo-tx28/tx28-stk5.c         |  4 +---
>  common/globalvar.c                            |  5 +----
>  common/serdev.c                               |  5 +----
>  drivers/mfd/rave-sp.c                         |  5 +----
>  drivers/mtd/ubi/eba.c                         | 12 +++---------
>  drivers/net/designware_generic.c              |  5 +----
>  drivers/pci/pci-tegra.c                       |  5 +----
>  drivers/pwm/core.c                            |  5 +----
>  drivers/usb/otg/otgdev.c                      |  5 +----
>  drivers/watchdog/rave-sp-wdt.c                |  5 +----
>  11 files changed, 13 insertions(+), 47 deletions(-)
> =

> diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boa=
rds/freescale-mx23-evk/mx23-evk.c
> index 9dc5967bd93e..b12bb0dd79fb 100644
> --- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
> +++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
> @@ -79,9 +79,7 @@ static int register_persistent_environment(void)
>  	/* use the full partition as our persistent environment storage */
>  	cdev =3D devfs_add_partition("disk0.1", 0, cdev->size,
>  						DEVFS_PARTITION_FIXED, "env0");
> -	if (IS_ERR(cdev))
> -		return PTR_ERR(cdev);
> -	return 0;
> +	return PTR_ERR_OR_ZERO(cdev);
>  }
>  =

>  static int mx23_evk_devices_init(void)
> diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo=
-tx28/tx28-stk5.c
> index 838754d042ab..c9b947953bb2 100644
> --- a/arch/arm/boards/karo-tx28/tx28-stk5.c
> +++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
> @@ -333,9 +333,7 @@ static int register_persistent_environment(void)
>  	/* use the full partition as our persistent environment storage */
>  	cdev =3D devfs_add_partition("disk0.1", 0, cdev->size,
>  					DEVFS_PARTITION_FIXED, "env0");
> -	if (IS_ERR(cdev))
> -		return PTR_ERR(cdev);
> -	return 0;
> +	return PTR_ERR_OR_ZERO(cdev);
>  }
>  =

>  static void tx28_get_ethaddr(void)
> diff --git a/common/globalvar.c b/common/globalvar.c
> index c87f2c933904..98a028a68aa7 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -563,10 +563,7 @@ int globalvar_add_simple_bitmask(const char *name, u=
nsigned long *value,
>  	p =3D dev_add_param_bitmask(&global_device, name, NULL, NULL,
>  		value, names, max, NULL);
>  =

> -	if (IS_ERR(p))
> -		return PTR_ERR(p);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(p);
>  }
>  =

>  int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
> diff --git a/common/serdev.c b/common/serdev.c
> index c50b3bd26acb..4bf11b161892 100644
> --- a/common/serdev.c
> +++ b/common/serdev.c
> @@ -84,10 +84,7 @@ int serdev_device_open(struct serdev_device *serdev)
>  	p =3D dev_add_param_uint64(serdev->dev, "polling_interval",
>  				 serdev_device_set_polling_interval, NULL,
>  				 &serdev->polling_interval, "%llu", serdev);
> -	if (IS_ERR(p))
> -		return PTR_ERR(p);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(p);
>  }
>  =

>  unsigned int serdev_device_set_baudrate(struct serdev_device *serdev,
> diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
> index c6ad57d517dc..8fc46b66bb2c 100644
> --- a/drivers/mfd/rave-sp.c
> +++ b/drivers/mfd/rave-sp.c
> @@ -787,10 +787,7 @@ static int rave_sp_add_params(struct rave_sp *sp)
>  =

>  	p =3D dev_add_param_ip(dev, "netmask", NULL, rave_sp_req_ip_addr,
>  			     &sp->netmask, sp);
> -	if (IS_ERR(p))
> -		return PTR_ERR(p);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(p);
>  }
>  =

>  static int rave_sp_probe(struct device_d *dev)
> diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
> index cca6ec4ba915..071bbca236e9 100644
> --- a/drivers/mtd/ubi/eba.c
> +++ b/drivers/mtd/ubi/eba.c
> @@ -324,9 +324,7 @@ static int leb_read_lock(struct ubi_device *ubi, int =
vol_id, int lnum)
>  	struct ubi_ltree_entry *le;
>  =

>  	le =3D ltree_add_entry(ubi, vol_id, lnum);
> -	if (IS_ERR(le))
> -		return PTR_ERR(le);
> -	return 0;
> +	return PTR_ERR_OR_ZERO(le);
>  }
>  =

>  /**
> @@ -362,9 +360,7 @@ static int leb_write_lock(struct ubi_device *ubi, int=
 vol_id, int lnum)
>  	struct ubi_ltree_entry *le;
>  =

>  	le =3D ltree_add_entry(ubi, vol_id, lnum);
> -	if (IS_ERR(le))
> -		return PTR_ERR(le);
> -	return 0;
> +	return PTR_ERR_OR_ZERO(le);
>  }
>  =

>  /**
> @@ -383,9 +379,7 @@ static int leb_write_trylock(struct ubi_device *ubi, =
int vol_id, int lnum)
>  	struct ubi_ltree_entry *le;
>  =

>  	le =3D ltree_add_entry(ubi, vol_id, lnum);
> -	if (IS_ERR(le))
> -		return PTR_ERR(le);
> -	return 0;
> +	return PTR_ERR_OR_ZERO(le);
>  }
>  =

>  /**
> diff --git a/drivers/net/designware_generic.c b/drivers/net/designware_ge=
neric.c
> index 809c7b7b69e6..90fca1951d88 100644
> --- a/drivers/net/designware_generic.c
> +++ b/drivers/net/designware_generic.c
> @@ -21,10 +21,7 @@ static int dwc_ether_probe(struct device_d *dev)
>  	struct dw_eth_dev *dwc;
>  =

>  	dwc =3D dwc_drv_probe(dev);
> -	if (IS_ERR(dwc))
> -		return PTR_ERR(dwc);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(dwc);
>  }
>  =

>  static __maybe_unused struct of_device_id dwc_ether_compatible[] =3D {
> diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
> index 7f10b7af2ee1..b534285c97f7 100644
> --- a/drivers/pci/pci-tegra.c
> +++ b/drivers/pci/pci-tegra.c
> @@ -822,10 +822,7 @@ static int tegra_pcie_resets_get(struct tegra_pcie *=
pcie)
>  		return PTR_ERR(pcie->afi_rst);
>  =

>  	pcie->pcie_xrst =3D reset_control_get(pcie->dev, "pcie_x");
> -	if (IS_ERR(pcie->pcie_xrst))
> -		return PTR_ERR(pcie->pcie_xrst);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(pcie->pcie_xrst);
>  }
>  =

>  static int tegra_pcie_get_resources(struct tegra_pcie *pcie)
> diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
> index 878f4d72bbf5..aba6c2a7098e 100644
> --- a/drivers/pwm/core.c
> +++ b/drivers/pwm/core.c
> @@ -122,10 +122,7 @@ int pwmchip_add(struct pwm_chip *chip, struct device=
_d *dev)
>  =

>  	p =3D dev_add_param_bool(&pwm->dev, "inverted", apply_params,
>  			       NULL, &pwm->params.polarity, pwm);
> -	if (IS_ERR(p))
> -		return PTR_ERR(p);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(p);
>  }
>  EXPORT_SYMBOL_GPL(pwmchip_add);
>  =

> diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
> index 7017796e8cb1..52f43b75d2bd 100644
> --- a/drivers/usb/otg/otgdev.c
> +++ b/drivers/usb/otg/otgdev.c
> @@ -62,8 +62,5 @@ int usb_register_otg_device(struct device_d *parent,
>  	param_mode =3D dev_add_param_enum(&otg_device, "mode",
>  			otg_set_mode, NULL, &otg_mode,
>  			otg_mode_names, ARRAY_SIZE(otg_mode_names), ctx);
> -	if (IS_ERR(param_mode))
> -		return PTR_ERR(param_mode);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(param_mode);
>  }
> diff --git a/drivers/watchdog/rave-sp-wdt.c b/drivers/watchdog/rave-sp-wd=
t.c
> index dc673ee35fa4..cad63e22f921 100644
> --- a/drivers/watchdog/rave-sp-wdt.c
> +++ b/drivers/watchdog/rave-sp-wdt.c
> @@ -299,10 +299,7 @@ static int rave_sp_wdt_add_params(struct rave_sp_wdt=
 *sp_wd)
>  			      rave_sp_wdt_set_boot_source,
>  			      rave_sp_wdt_get_boot_source,
>  			      &sp_wd->boot_source, "%u", sp_wd);
> -	if (IS_ERR(p))
> -		return PTR_ERR(p);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(p);
>  }
>  =

>  static int rave_sp_wdt_probe(struct device_d *dev)
> -- =

> 2.27.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
