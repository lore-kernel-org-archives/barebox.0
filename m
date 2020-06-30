Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqE0t-0002ws-C6
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 11:01:20 +0000
Date: Tue, 30 Jun 2020 13:01:18 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20200630110118.GK21325@pengutronix.de>
References: <20200630094934.18228-1-m.grzeschik@pengutronix.de>
 <20200630094934.18228-3-m.grzeschik@pengutronix.de>
 <3599483b-442b-36df-4e6f-edb2fcb041ae@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <3599483b-442b-36df-4e6f-edb2fcb041ae@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3386550985178675043=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] drivers: net: phy: at803x: add phy clk setup via dts
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============3386550985178675043==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3NJww9yp20AXRsxZ"
Content-Disposition: inline


--3NJww9yp20AXRsxZ
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2020 at 12:15:00PM +0200, Ahmad Fatoum wrote:
>Hello,
>
>On 6/30/20 11:49 AM, Michael Grzeschik wrote:
>> There are dt-bindings for the setup of the clk configuration in the phy.
>> This patch adds support for these bindings in the driver.
>>
>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>> ---
>>  drivers/net/phy/at803x.c | 181 +++++++++++++++++++++++++++++++++++++--
>>  1 file changed, 175 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
>> index b43cb0d23e..94349cbe0d 100644
>> --- a/drivers/net/phy/at803x.c
>> +++ b/drivers/net/phy/at803x.c
>> @@ -11,6 +11,9 @@
>>  #include <init.h>
>>  #include <linux/phy.h>
>>  #include <linux/string.h>
>> +#include <linux/bitfield.h>
>> +#include <uapi/linux/mdio.h>
>> +#include <dt-bindings/net/qca-ar803x.h>
>>
>>  #define AT803X_INTR_ENABLE			0x12
>>  #define AT803X_INTR_STATUS			0x13
>> @@ -27,6 +30,164 @@
>>  #define AT803X_DEBUG_SYSTEM_MODE_CTRL		0x05
>>  #define AT803X_DEBUG_RGMII_TX_CLK_DLY		(1 << 8)
>>
>> +/* AT803x supports either the XTAL input pad, an internal PLL or the
>> + * DSP as clock reference for the clock output pad. The XTAL reference
>> + * is only used for 25 MHz output, all other frequencies need the PLL.
>> + * The DSP as a clock reference is used in synchronous ethernet
>> + * applications.
>> + *
>> + * By default the PLL is only enabled if there is a link. Otherwise
>> + * the PHY will go into low power state and disabled the PLL. You can
>> + * set the PLL_ON bit (see debug register 0x1f) to keep the PLL always
>> + * enabled.
>> + */
>> +#define AT803X_MMD7_CLK25M			0x8016
>> +#define AT803X_CLK_OUT_MASK			GENMASK(4, 2)
>> +#define AT803X_CLK_OUT_25MHZ_XTAL		0
>> +#define AT803X_CLK_OUT_25MHZ_DSP		1
>> +#define AT803X_CLK_OUT_50MHZ_PLL		2
>> +#define AT803X_CLK_OUT_50MHZ_DSP		3
>> +#define AT803X_CLK_OUT_62_5MHZ_PLL		4
>> +#define AT803X_CLK_OUT_62_5MHZ_DSP		5
>> +#define AT803X_CLK_OUT_125MHZ_PLL		6
>> +#define AT803X_CLK_OUT_125MHZ_DSP		7
>> +
>> +/* The AR8035 has another mask which is compatible with the AR8031/AR80=
33 mask
>> + * but doesn't support choosing between XTAL/PLL and DSP.
>> + */
>> +#define AT8035_CLK_OUT_MASK			GENMASK(4, 3)
>> +
>> +#define AT803X_CLK_OUT_STRENGTH_MASK		GENMASK(8, 7)
>> +#define AT803X_CLK_OUT_STRENGTH_FULL		0
>> +#define AT803X_CLK_OUT_STRENGTH_HALF		1
>> +#define AT803X_CLK_OUT_STRENGTH_QUARTER		2
>> +
>> +#define ATH9331_PHY_ID 0x004dd041
>> +#define ATH8030_PHY_ID 0x004dd076
>> +#define ATH8031_PHY_ID 0x004dd074
>> +#define ATH8032_PHY_ID 0x004dd023
>> +#define ATH8035_PHY_ID 0x004dd072
>> +#define AT8030_PHY_ID_MASK			0xffffffef
>> +
>> +struct at803x_priv {
>> +	u16 clk_25m_reg;
>> +	u16 clk_25m_mask;
>> +};
>> +
>> +static bool at803x_match_phy_id(struct phy_device *phydev, u32 phy_id)
>> +{
>> +	struct phy_driver *drv =3D to_phy_driver(phydev->dev.driver);
>> +
>> +	return (phydev->phy_id & drv->phy_id_mask)
>> +		=3D=3D (phy_id & drv->phy_id_mask);
>> +}
>> +
>> +static int at803x_parse_dt(struct phy_device *phydev)
>> +{
>> +	const struct device_d *dev =3D &phydev->dev;
>> +	const struct device_node *node =3D dev->device_node;
>> +	struct at803x_priv *priv =3D phydev->priv;
>> +	unsigned int sel, mask;
>> +	u32 freq, strength;
>> +	int ret;
>> +
>> +	ret =3D of_property_read_u32(node, "qca,clk-out-frequency", &freq);
>> +	if (!ret) {
>> +		mask =3D AT803X_CLK_OUT_MASK;
>> +		switch (freq) {
>> +		case 25000000:
>> +			sel =3D AT803X_CLK_OUT_25MHZ_XTAL;
>> +			break;
>> +		case 50000000:
>> +			sel =3D AT803X_CLK_OUT_50MHZ_PLL;
>> +			break;
>> +		case 62500000:
>> +			sel =3D AT803X_CLK_OUT_62_5MHZ_PLL;
>> +			break;
>> +		case 125000000:
>> +			sel =3D AT803X_CLK_OUT_125MHZ_PLL;
>> +			break;
>> +		default:
>> +			dev_err(dev, "invalid qca,clk-out-frequency\n");
>> +			return -EINVAL;
>> +		}
>> +
>> +		priv->clk_25m_reg |=3D FIELD_PREP(mask, sel);
>> +		priv->clk_25m_mask |=3D mask;
>> +
>> +		/* Fixup for the AR8030/AR8035. This chip has another mask and
>> +		 * doesn't support the DSP reference. Eg. the lowest bit of the
>> +		 * mask. The upper two bits select the same frequencies. Mask
>> +		 * the lowest bit here.
>> +		 *
>> +		 * Warning:
>> +		 *   There was no datasheet for the AR8030 available so this is
>> +		 *   just a guess. But the AR8035 is listed as pin compatible
>> +		 *   to the AR8030 so there might be a good chance it works on
>> +		 *   the AR8030 too.
>> +		 */
>> +		if (at803x_match_phy_id(phydev, ATH8030_PHY_ID) ||
>> +		    at803x_match_phy_id(phydev, ATH8035_PHY_ID)) {
>> +			priv->clk_25m_reg &=3D AT8035_CLK_OUT_MASK;
>> +			priv->clk_25m_mask &=3D AT8035_CLK_OUT_MASK;
>> +		}
>> +	}
>> +
>> +	ret =3D of_property_read_u32(node, "qca,clk-out-strength", &strength);
>> +	if (!ret) {
>> +		priv->clk_25m_mask |=3D AT803X_CLK_OUT_STRENGTH_MASK;
>> +		switch (strength) {
>> +		case AR803X_STRENGTH_FULL:
>> +			priv->clk_25m_reg |=3D AT803X_CLK_OUT_STRENGTH_FULL;
>> +			break;
>> +		case AR803X_STRENGTH_HALF:
>> +			priv->clk_25m_reg |=3D AT803X_CLK_OUT_STRENGTH_HALF;
>> +			break;
>> +		case AR803X_STRENGTH_QUARTER:
>> +			priv->clk_25m_reg |=3D AT803X_CLK_OUT_STRENGTH_QUARTER;
>> +			break;
>> +		default:
>> +			dev_err(dev, "invalid qca,clk-out-strength\n");
>> +			return -EINVAL;
>> +		}
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int at803x_probe(struct phy_device *phydev)
>> +{
>> +	struct at803x_priv *priv;
>> +
>> +	priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
>> +	if (!priv)
>> +		return -ENOMEM;
>> +
>> +	phydev->priv =3D priv;
>> +
>> +	return at803x_parse_dt(phydev);
>> +}
>> +
>> +static int at803x_clk_out_config(struct phy_device *phydev)
>> +{
>> +	struct at803x_priv *priv =3D phydev->priv;
>> +	int val;
>> +
>> +	if (!priv->clk_25m_mask)
>> +		return 0;
>> +
>> +	val =3D phy_read_mmd_indirect(phydev, AT803X_MMD7_CLK25M, MDIO_MMD_AN);
>> +	if (val < 0)
>> +		return val;
>> +
>> +	val &=3D ~priv->clk_25m_mask;
>> +	val |=3D priv->clk_25m_reg;
>
>You could use |=3D FIELD_PREP for this.
>

This will trigger compile_time_assert. I will leave it as is.

>> +
>> +	phy_write_mmd_indirect(phydev, AT803X_MMD7_CLK25M, MDIO_MMD_AN, val);
>> +
>> +	return 0;
>> +}
>> +
>>  static int at803x_config_init(struct phy_device *phydev)
>>  {
>>  	int ret;
>> @@ -46,33 +207,41 @@ static int at803x_config_init(struct phy_device *ph=
ydev)
>>  			return ret;
>>  	}
>>
>> +	ret =3D at803x_clk_out_config(phydev);
>> +	if (ret < 0)
>> +		return ret;
>> +
>>  	return 0;
>
>You could just return at803x_clk_out_config(phydev); directly.

Right, will change thanks.

>
>>  }
>>
>>  static struct phy_driver at803x_driver[] =3D {
>>  {
>>  	/* ATHEROS 8035 */
>> -	.phy_id		=3D 0x004dd072,
>> -	.phy_id_mask	=3D 0xffffffef,
>> +	.phy_id		=3D ATH8035_PHY_ID,
>> +	.phy_id_mask	=3D AT8030_PHY_ID_MASK,
>>  	.drv.name	=3D "Atheros 8035 ethernet",
>> +	.probe		=3D at803x_probe,
>>  	.config_init	=3D at803x_config_init,
>>  	.features	=3D PHY_GBIT_FEATURES,
>>  	.config_aneg	=3D &genphy_config_aneg,
>>  	.read_status	=3D &genphy_read_status,
>>  }, {
>>  	/* ATHEROS 8030 */
>> -	.phy_id		=3D 0x004dd076,
>> -	.phy_id_mask	=3D 0xffffffef,
>> +	.phy_id		=3D ATH8030_PHY_ID,
>> +	.phy_id_mask	=3D AT8030_PHY_ID_MASK,
>>  	.drv.name	=3D "Atheros 8030 ethernet",
>>  	.config_init	=3D at803x_config_init,
>> +	.probe		=3D at803x_probe,
>>  	.features	=3D PHY_GBIT_FEATURES,
>>  	.config_aneg	=3D &genphy_config_aneg,
>>  	.read_status	=3D &genphy_read_status,
>>  }, {
>>  	/* ATHEROS 8031 */
>> -	.phy_id		=3D 0x004dd074,
>> -	.phy_id_mask	=3D 0xffffffef,
>> +	.phy_id		=3D ATH8031_PHY_ID,
>> +	.phy_id_mask	=3D AT8030_PHY_ID_MASK,
>> +	.drv.name	=3D "Atheros 8030 ethernet",
>>  	.drv.name	=3D "Atheros 8031 ethernet",
>
>.drv.name is now specified twice.

Ups, will fix it.

>With this fixed; Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks!

>
>> +	.probe		=3D at803x_probe,
>>  	.config_init	=3D at803x_config_init,
>>  	.features	=3D PHY_GBIT_FEATURES,
>>  	.config_aneg	=3D &genphy_config_aneg,
>>
>
>--=20
>Pengutronix e.K.                           |                             |
>Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--3NJww9yp20AXRsxZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl77G3sACgkQC+njFXoe
LGRxzQ//eGPCFDhkHaCVN06QZ8vtYwmKoBCNodQblNlaX2KGQtJ/DVtyejmcCOaK
3I5AFAOf669PmXxLMeSpxV0gLO9H6ydcCUsBLmXpExfkUmPA8cDpm/9BlHnYFz32
Yt5mVn/RgIeKneYYlzhyoPL8iCjJ0wb2JSgZAyZioT4kgeXBC8oMgQQIE2V0xK5W
xx6UW5By98llAeREIvzGF6lbZpX8uTNdcMr9ahs99CdZqve50+aSUQ2Ta0ezKPdH
Tlh2lMujLmvazk2hTSiaNxbMrHviYTfeMD2YPo2spYPy/5LUqAwbVeyUNaG44dSD
z9ESa1ASB1fhTH/95CgccEDUYVaNVbzuKzLngRuFy0PSm5vNJUmK56K8HMMc2aq5
dVNwpXhqKA9bEXo9YXbf3qY86LRKaVbYzOkC7c5++5hc754unDT1O0qVvJT4JShK
jJzEq8ugdyVajhA0BnIoMdeqWSc3EUxjkTL+E5npxohhUp9GuoiNX4WZWbLO/JEj
UkcH5vKO6mW/qz8Ct7q8O00DJsz8sHLlzqxCM8j+LxF4Oeuqw1mEvT9hw8w1S2Er
FXT/f5hw/p2PvyyvMgvxJ6eoUQF2aXZ+ZFe/bVNpWb81I8lTSkDlf5oH9VmzHhLd
QPG2SFPpR26ka2g/ZdjUuXEr+mb4ofFB/r4MJY/00ZF0WZ8XXuw=
=ISoY
-----END PGP SIGNATURE-----

--3NJww9yp20AXRsxZ--


--===============3386550985178675043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3386550985178675043==--
