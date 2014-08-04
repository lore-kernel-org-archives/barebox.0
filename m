Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XEMIo-0002Y1-Rv
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 17:44:10 +0000
Date: Mon, 4 Aug 2014 19:43:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804174344.GD23235@pengutronix.de>
References: <1406899404-29094-1-git-send-email-poggi.raph@gmail.com>
 <1406899404-29094-2-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406899404-29094-2-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 1/5] mtd: atmel_nand: add support for device tree
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 01, 2014 at 03:23:20PM +0200, Rapha=EBl Poggi wrote:
> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
>  drivers/mtd/nand/atmel_nand.c |  108 +++++++++++++++++++++++++++++++++++=
+++++-
>  1 file changed, 107 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index 337e225..b7b0e3a 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -28,6 +28,10 @@
>  #include <init.h>
>  #include <gpio.h>
>  =

> +#include <of.h>
> +#include <of_gpio.h>
> +#include <of_mtd.h>
> +
>  #include <linux/mtd/mtd.h>
>  #include <linux/mtd/nand.h>
>  =

> @@ -1038,6 +1042,89 @@ static void atmel_nand_hwctl(struct mtd_info *mtd,=
 int mode)
>  #endif
>  }
>  =

> +static int atmel_nand_of_init(struct atmel_nand_host *host, struct devic=
e_node *np)
> +{
> +	u32 val;
> +	u32 offset[2];
> +	int ecc_mode;
> +	struct atmel_nand_data *board =3D host->board;
> +	enum of_gpio_flags flags =3D 0;

Please add a:

	if (!IS_ENABLED(CONFIG_OFDEVICE))
		return -ENOSYS;

to this function. It will allow the compiler to throw it away when
device tree support is disabled.

> +
> +	if (of_property_read_u32(np, "atmel,nand-addr-offset", &val) =3D=3D 0) {
> +	   if (val >=3D 32) {

Please fix the coding style. First indentation here is a tab, but the
second is 4 spaces. Indentation should be tabs generally.

> +		dev_err(host->dev, "invalid addr-offset %u\n", val);
> +		return -EINVAL;
> +	    }
> +	    board->ale =3D val;
> +	}
> +
> +	if (of_property_read_u32(np, "atmel,nand-cmd-offset", &val) =3D=3D 0) {
> +	    if (val >=3D 32) {
> +		dev_err(host->dev, "invalid cmd-offset %u\n", val);
> +		return -EINVAL;
> +	    }
> +	    board->cle =3D val;
> +	}
> +
> +	ecc_mode =3D of_get_nand_ecc_mode(np);
> +
> +	board->ecc_mode =3D ecc_mode < 0 ? NAND_ECC_SOFT : ecc_mode;
> +
> +	board->on_flash_bbt =3D of_get_nand_on_flash_bbt(np);
> +
> +	if (of_get_nand_bus_width(np) =3D=3D 16)
> +	    board->bus_width_16 =3D 1;
> +
> +	board->rdy_pin =3D of_get_gpio_flags(np, 0, &flags);
> +	board->enable_pin =3D of_get_gpio(np, 1);
> +	board->det_pin =3D of_get_gpio(np, 2);
> +
> +	board->has_pmecc =3D of_property_read_bool(np, "atmel,has-pmecc");
> +
> +	if (!(board->ecc_mode =3D=3D NAND_ECC_HW) || !board->has_pmecc)
> +	    return 0;	/* Not using PMECC */
> +
> +	/* use PMECC, get correction capability, sector size and lookup
> +	* table offset.
> +	* If correction bits and sector size are not specified, then
> +	*   find
> +	* them from NAND ONFI parameters.
> +	*/
> +	if (of_property_read_u32(np, "atmel,pmecc-cap", &val) =3D=3D 0) {
> +	    if ((val !=3D 2) && (val !=3D 4) && (val !=3D 8) && (val !=3D 12) &=
& (val !=3D 24)) {
> +		dev_err(host->dev, "Unsupported PMECC correction capability: %d"
> +				" should be 2, 4, 8, 12 or 24\n", val);
> +		return -EINVAL;
> +	    }
> +
> +	    board->pmecc_corr_cap =3D (u8)val;
> +	}
> +
> +	if (of_property_read_u32(np, "atmel,pmecc-sector-size", &val) =3D=3D 0)=
 {
> +	    if ((val !=3D 512) && (val !=3D 1024)) {
> +		dev_err(host->dev, "Unsupported PMECC sector size: %d"
> +				" should be 512 or 1024 bytes\n", val);
> +		return -EINVAL;
> +	    }
> +
> +	    board->pmecc_sector_size =3D (u16)val;
> +	}
> +
> +	if (of_property_read_u32_array(np, "atmel,pmecc-lookup-table-offset", o=
ffset, 2) !=3D 0) {
> +	    dev_err(host->dev, "Cannot get PMECC lookup table offset\n");
> +	    return -EINVAL;
> +	}
> +
> +	if (!offset[0] && !offset[1]) {
> +	    dev_err(host->dev, "Invalid PMECC lookup table offset\n");
> +	    return -EINVAL;
> +	}
> +
> +	board->pmecc_lookup_table_offset =3D (board->pmecc_sector_size =3D=3D 5=
12) ? offset[0] : offset[1];
> +
> +	return 0;
> +}
> +
>  static int atmel_hw_nand_init_params(struct device_d *dev,
>  					 struct atmel_nand_host *host)
>  {
> @@ -1093,7 +1180,7 @@ static int atmel_hw_nand_init_params(struct device_=
d *dev,
>   */
>  static int __init atmel_nand_probe(struct device_d *dev)
>  {
> -	struct atmel_nand_data *pdata =3D dev->platform_data;
> +	struct atmel_nand_data *pdata;
>  	struct atmel_nand_host *host;
>  	struct mtd_info *mtd;
>  	struct nand_chip *nand_chip;
> @@ -1104,6 +1191,10 @@ static int __init atmel_nand_probe(struct device_d=
 *dev)
>  	if (!host)
>  		return -ENOMEM;
>  =

> +	pdata =3D kzalloc(sizeof(struct atmel_nand_data), GFP_KERNEL);
> +	if (!pdata)
> +		return -ENOMEM;

You only use this memory...

> +
>  	host->io_base =3D dev_request_mem_region(dev, 0);
>  =

>  	mtd =3D &host->mtd;
> @@ -1111,6 +1202,15 @@ static int __init atmel_nand_probe(struct device_d=
 *dev)
>  	host->board =3D pdata;
>  	host->dev =3D dev;
>  =

> +	if (dev->device_node) {
> +	    res =3D atmel_nand_of_init(host, dev->device_node);
> +	    if (res)
> +		goto err_no_card;

...in this code path. Please add the memory allocation here then.

> +	}
> +	else {
> +	    pdata =3D dev->platform_data;
> +	}
> +

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
