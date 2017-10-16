Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e3zyS-0006gf-Rd
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 07:38:11 +0000
Date: Mon, 16 Oct 2017 09:37:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016073747.wl2ckzmjz3jkgowq@pengutronix.de>
References: <118967021.61066184.1507639099296.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <118967021.61066184.1507639099296.JavaMail.zimbra@kalray.eu>
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
Subject: Re: [PATCH] Marvell: implement marvell_of_reg_init
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Oct 10, 2017 at 02:38:19PM +0200, Cl=E9ment Leger wrote:
> From ed1cbcd05d5efeb4012d77a9a4ab9c1da0449bdc Mon Sep 17 00:00:00 2001
> From: Clement Leger <clement.leger@kalray.eu>
> Date: Tue, 10 Oct 2017 14:29:49 +0200
> Subject: [PATCH] Marvell: implement marvell_of_reg_init
> =

> Implement marvell_of_reg_init in order to use marvell,reg-init property
> from device-tree. The code is taken from Linux kernel and slighlty
> modify to fit barebox structures.
> ---
>  drivers/net/phy/marvell.c | 73 +++++++++++++++++++++++++++++++++++++++++=
+++---
>  1 file changed, 69 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
> index ea5a4a9..73d6453 100644
> --- a/drivers/net/phy/marvell.c
> +++ b/drivers/net/phy/marvell.c
> @@ -175,13 +175,78 @@ static inline bool phy_interface_is_rgmii(struct ph=
y_device *phydev)
>  };
>  =

>  /*
> - * This same function in the Linux kernel parses the marvell,reg-init dt
> - * property and does the necessary register writes. It's kept as an exer=
cise for
> - * a future user to implement this. :-)
> + * Set and/or override some configuration registers based on the
> + * marvell,reg-init property stored in the of_node for the phydev.
> + *
> + * marvell,reg-init =3D <reg-page reg mask value>,...;
> + *
> + * There may be one or more sets of <reg-page reg mask value>:
> + *
> + * reg-page: which register bank to use.
> + * reg: the register.
> + * mask: if non-zero, ANDed with existing register value.
> + * value: ORed with the masked value and written to the regiser.
> + *
>   */
>  static int marvell_of_reg_init(struct phy_device *phydev)
>  {
> -	return 0;
> +	const __be32 *paddr;
> +	int len, i, saved_page, current_page, page_changed, ret;
> +
> +	if (!phydev->dev.device_node)
> +		return 0;
> +
> +	paddr =3D of_get_property(phydev->dev.device_node,
> +				"marvell,reg-init", &len);
> +	if (!paddr || len < (4 * sizeof(*paddr)))
> +		return 0;
> +
> +	saved_page =3D phy_read(phydev, MII_MARVELL_PHY_PAGE);
> +	if (saved_page < 0)
> +		return saved_page;
> +	page_changed =3D 0;
> +	current_page =3D saved_page;
> +
> +	ret =3D 0;
> +	len /=3D sizeof(*paddr);
> +	for (i =3D 0; i < len - 3; i +=3D 4) {
> +		u16 reg_page =3D be32_to_cpup(paddr + i);
> +		u16 reg =3D be32_to_cpup(paddr + i + 1);
> +		u16 mask =3D be32_to_cpup(paddr + i + 2);
> +		u16 val_bits =3D be32_to_cpup(paddr + i + 3);
> +		int val;
> +
> +		if (reg_page !=3D current_page) {
> +			current_page =3D reg_page;
> +			page_changed =3D 1;
> +			ret =3D phy_write(phydev, MII_MARVELL_PHY_PAGE, reg_page);
> +			if (ret < 0)
> +				goto err;
> +		}
> +
> +		val =3D 0;
> +		if (mask) {
> +			val =3D phy_read(phydev, reg);
> +			if (val < 0) {
> +				ret =3D val;
> +				goto err;
> +			}
> +			val &=3D mask;
> +		}
> +		val |=3D val_bits;
> +
> +		ret =3D phy_write(phydev, reg, val);
> +		if (ret < 0)
> +			goto err;
> +
> +	}
> +err:
> +	if (page_changed) {
> +		i =3D phy_write(phydev, MII_MARVELL_PHY_PAGE, saved_page);
> +		if (ret =3D=3D 0)
> +			ret =3D i;
> +	}
> +	return ret;
>  }
>  =

>  static int m88e1121_config_aneg(struct phy_device *phydev)
> -- =

> 1.8.3.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
