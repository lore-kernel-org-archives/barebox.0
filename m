Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fdrVU-0001lf-Od
 for barebox@lists.infradead.org; Fri, 13 Jul 2018 06:24:46 +0000
Date: Fri, 13 Jul 2018 08:24:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180713062433.agxnfh2zomcfuo32@pengutronix.de>
References: <20180712092911.8475-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180712092911.8475-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] net/e1000: allow to overwrite flash size from device tree
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 12, 2018 at 11:29:11AM +0200, Uwe Kleine-K=F6nig wrote:
> When barebox probes the e1000 driver and the flash on the i210 device is
> unprogrammed, the driver assumes the flash has a size of only 4 kiB.
> This is annoying because to program the flash an image must be written
> that is bigger than 4 kiB. So you first have to flash the first sector
> to make barebox detect the right size on the next boot. Then reset the
> board to be able to write the remaining data.
> =

> To work around that limitation, try to read the actual size from the
> device tree. (Note however that barebox' pci code currently doesn't use
> the device tree and so currently this try always fails without further
> patching.)
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/net/e1000/eeprom.c | 57 ++++++++++++++++++++++++++++----------
>  1 file changed, 43 insertions(+), 14 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index 3f39db7164db..97cb09a718f9 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -3,6 +3,8 @@
>  #include <malloc.h>
>  #include <linux/math64.h>
>  #include <linux/sizes.h>
> +#include <of_device.h>
> +#include <linux/pci.h>
>  #include <linux/mtd/spi-nor.h>
>  =

>  #include "e1000.h"
> @@ -406,6 +408,46 @@ static void e1000_eeprom_uses_microwire(struct e1000=
_eeprom_info *eeprom,
>  }
>  =

>  =

> +size_t e1000_igb_get_flash_size(struct e1000_hw *hw)
> +{
> +	struct device_node *node =3D
> +		hw->pdev->dev.device_node;
> +	u32 flash_size;
> +	uint32_t fla;
> +	int ret =3D 0;
> +
> +	/*
> +	 * There are two potential places where the size of the flash can be
> +	 * specified. In the device tree, and in the flash itself.  Use the
> +	 * first that looks valid.
> +	 */
> +
> +	ret =3D of_property_read_u32(node, "flash-size", &flash_size);
> +	if (ret =3D=3D 0) {
> +		dev_info(hw->dev,
> +			 "Determined flash size from device tree (%u)\n",
> +			 flash_size);
> +		return flash_size;
> +	}
> +
> +	fla =3D e1000_read_reg(hw, E1000_FLA);
> +	fla &=3D E1000_FLA_FL_SIZE_MASK;
> +	fla >>=3D E1000_FLA_FL_SIZE_SHIFT;
> +
> +	if (fla) {
> +		flash_size =3D SZ_64K << fla;
> +		dev_info(hw->dev,
> +			 "Determined flash size from E1000_FLA.FL_SIZE (%u)\n",
> +			 flash_size);
> +		return flash_size;
> +	}
> +
> +	dev_info(hw->dev,
> +		 "Unprogrammed Flash detected and no flash-size found in device tree, =
limiting access to first 4 kiB\n");
> +
> +	return 4096;
> +}
> +
>  /***********************************************************************=
*******
>   * Sets up eeprom variables in the hw struct.  Must be called after mac_=
type
>   * is configured.  Additionally, if this is ICH8, the flash controller G=
bE
> @@ -480,20 +522,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
>  =

>  	case e1000_igb:
>  		if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
> -			uint32_t fla;
> -
> -			fla  =3D e1000_read_reg(hw, E1000_FLA);
> -			fla &=3D E1000_FLA_FL_SIZE_MASK;
> -			fla >>=3D E1000_FLA_FL_SIZE_SHIFT;
> -
> -			if (fla) {
> -				eeprom->word_size =3D (SZ_64K << fla) / 2;
> -			} else {
> -				eeprom->word_size =3D 2048;
> -				dev_info(hw->dev, "Unprogrammed Flash detected, "
> -					 "limiting access to first 4KB\n");
> -			}
> -
> +			eeprom->word_size =3D e1000_igb_get_flash_size(hw) / 2;
>  			eeprom->acquire =3D e1000_acquire_eeprom_flash;
>  			eeprom->release =3D e1000_release_eeprom_flash;
>  		}
> -- =

> 2.18.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
