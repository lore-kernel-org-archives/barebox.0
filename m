Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwjiy-0000EE-HH
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 06:52:12 +0000
Date: Tue, 26 Sep 2017 08:51:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170926065146.2gaytujccimzcv2j@pengutronix.de>
References: <20170925100235.17848-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170925100235.17848-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] remove checks for xzalloc() returning NULL
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 25, 2017 at 12:02:35PM +0200, Uwe Kleine-K=F6nig wrote:
> xzalloc() either returns memory or panics, so checking for NULL is useles=
s.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  common/state/backend_bucket_circular.c | 2 --
>  common/state/backend_format_dtb.c      | 2 --
>  common/state/backend_format_raw.c      | 4 ----
>  drivers/clk/mxs/clk-div.c              | 2 --
>  drivers/clk/mxs/clk-pll.c              | 2 --
>  drivers/clk/mxs/clk-ref.c              | 2 --
>  drivers/gpio/gpio-clps711x.c           | 2 --
>  drivers/gpio/gpio-generic.c            | 2 --
>  drivers/gpio/gpio-vf610.c              | 2 --
>  drivers/mtd/nand/atmel_nand.c          | 2 --
>  drivers/net/gianfar.c                  | 3 ---
>  drivers/of/base.c                      | 2 --
>  drivers/pci/pci-imx6.c                 | 2 --
>  drivers/pinctrl/pinctrl-rockchip.c     | 2 --
>  drivers/usb/gadget/pxa27x_udc.c        | 2 --
>  drivers/usb/musb/musb_host.c           | 2 --
>  drivers/usb/musb/phy-am335x-control.c  | 4 ----
>  drivers/usb/musb/phy-am335x.c          | 2 --
>  drivers/video/backlight-pwm.c          | 2 --
>  drivers/video/tc358767.c               | 2 --
>  fs/omap4_usbbootfs.c                   | 2 --
>  fs/pstore/fs.c                         | 2 --
>  22 files changed, 49 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/common/state/backend_bucket_circular.c b/common/state/backen=
d_bucket_circular.c
> index f83bd679d788..232490325523 100644
> --- a/common/state/backend_bucket_circular.c
> +++ b/common/state/backend_bucket_circular.c
> @@ -310,8 +310,6 @@ static int state_backend_bucket_circular_write(struct=
 state_backend_storage_buck
>  	 * random changes
>  	 */
>  	write_buf =3D xzalloc(written_length);
> -	if (!write_buf)
> -		return -ENOMEM;
>  =

>  	memcpy(write_buf, buf, len);
>  	meta =3D (struct state_backend_storage_bucket_circular_meta *)
> diff --git a/common/state/backend_format_dtb.c b/common/state/backend_for=
mat_dtb.c
> index 4c9d2eefc780..48f30db1f5f9 100644
> --- a/common/state/backend_format_dtb.c
> +++ b/common/state/backend_format_dtb.c
> @@ -136,8 +136,6 @@ int backend_format_dtb_create(struct state_backend_fo=
rmat **format,
>  	struct state_backend_format_dtb *dtb;
>  =

>  	dtb =3D xzalloc(sizeof(*dtb));
> -	if (!dtb)
> -		return -ENOMEM;
>  =

>  	dtb->dev =3D dev;
>  	dtb->format.pack =3D state_backend_format_dtb_pack;
> diff --git a/common/state/backend_format_raw.c b/common/state/backend_for=
mat_raw.c
> index 2ba97e08a0ae..4369f76e376f 100644
> --- a/common/state/backend_format_raw.c
> +++ b/common/state/backend_format_raw.c
> @@ -222,8 +222,6 @@ static int backend_format_raw_pack(struct state_backe=
nd_format *format,
>  	size_full =3D size_data + sizeof(*header) + backend_raw->digest_length;
>  =

>  	buf =3D xzalloc(size_full);
> -	if (!buf)
> -		return -ENOMEM;
>  =

>  	header =3D buf;
>  	data =3D buf + sizeof(*header);
> @@ -308,8 +306,6 @@ int backend_format_raw_create(struct state_backend_fo=
rmat **format,
>  	int ret;
>  =

>  	raw =3D xzalloc(sizeof(*raw));
> -	if (!raw)
> -		return -ENOMEM;
>  =

>  	raw->dev =3D dev;
>  	ret =3D backend_format_raw_init_digest(raw, node, secret_name);
> diff --git a/drivers/clk/mxs/clk-div.c b/drivers/clk/mxs/clk-div.c
> index e8dae25da5ff..797e5a274fd0 100644
> --- a/drivers/clk/mxs/clk-div.c
> +++ b/drivers/clk/mxs/clk-div.c
> @@ -86,8 +86,6 @@ struct clk *mxs_clk_div(const char *name, const char *p=
arent_name,
>  	int ret;
>  =

>  	div =3D xzalloc(sizeof(*div));
> -	if (!div)
> -		return ERR_PTR(-ENOMEM);
>  =

>  	div->parent =3D parent_name;
>  	div->divider.clk.name =3D name;
> diff --git a/drivers/clk/mxs/clk-pll.c b/drivers/clk/mxs/clk-pll.c
> index 89fd6b5e3112..1b1c9b35434b 100644
> --- a/drivers/clk/mxs/clk-pll.c
> +++ b/drivers/clk/mxs/clk-pll.c
> @@ -96,8 +96,6 @@ struct clk *mxs_clk_pll(const char *name, const char *p=
arent_name,
>  	int ret;
>  =

>  	pll =3D xzalloc(sizeof(*pll));
> -	if (!pll)
> -		return ERR_PTR(-ENOMEM);
>  =

>  	pll->parent =3D parent_name;
>  	pll->clk.name =3D name;
> diff --git a/drivers/clk/mxs/clk-ref.c b/drivers/clk/mxs/clk-ref.c
> index 7ff5527797df..8d0be05615c9 100644
> --- a/drivers/clk/mxs/clk-ref.c
> +++ b/drivers/clk/mxs/clk-ref.c
> @@ -144,8 +144,6 @@ struct clk *mxs_clk_ref(const char *name, const char =
*parent_name,
>  	int ret;
>  =

>  	ref =3D xzalloc(sizeof(*ref));
> -	if (!ref)
> -		return ERR_PTR(-ENOMEM);
>  =

>  	ref->parent =3D parent_name;
>  	ref->clk.name =3D name;
> diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
> index 769e6ca4f719..c1ec6ab68554 100644
> --- a/drivers/gpio/gpio-clps711x.c
> +++ b/drivers/gpio/gpio-clps711x.c
> @@ -47,8 +47,6 @@ static int clps711x_gpio_probe(struct device_d *dev)
>  	}
>  =

>  	bgc =3D xzalloc(sizeof(struct bgpio_chip));
> -	if (!bgc)
> -		return -ENOMEM;
>  =

>  	err =3D bgpio_init(bgc, dev, 1, dat, NULL, NULL, dir, dir_inv, 0);
>  	if (err)
> diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
> index c6202fc6512a..608361185aba 100644
> --- a/drivers/gpio/gpio-generic.c
> +++ b/drivers/gpio/gpio-generic.c
> @@ -373,8 +373,6 @@ static int bgpio_dev_probe(struct device_d *dev)
>  	dev_get_drvdata(dev, (const void **)&flags);
>  =

>  	bgc =3D xzalloc(sizeof(struct bgpio_chip));
> -	if (!bgc)
> -		return -ENOMEM;
>  =

>  	err =3D bgpio_init(bgc, dev, sz, dat, set, clr, dirout, dirin, flags);
>  	if (err)
> diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
> index 7c8d1e4c9884..2aff62be5970 100644
> --- a/drivers/gpio/gpio-vf610.c
> +++ b/drivers/gpio/gpio-vf610.c
> @@ -106,8 +106,6 @@ static int vf610_gpio_probe(struct device_d *dev)
>  	const __be32 *gpio_ranges;
>  =

>  	port =3D xzalloc(sizeof(*port));
> -	if (!port)
> -		return -ENOMEM;
>  =

>  	gpio_ranges =3D of_get_property(dev->device_node, "gpio-ranges", &size);
>  	if (!gpio_ranges) {
> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index 299cc15c3d16..0b9071c9bce7 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -898,8 +898,6 @@ static int __init atmel_pmecc_nand_init_params(struct=
 device_d *dev,
>  		/* Set pmecc_rom_base as the begin of gf table */
>  		int size =3D sector_size =3D=3D 512 ? 0x2000 : 0x4000;
>  		pmecc_galois_table =3D xzalloc(2 * size * sizeof(uint16_t));
> -		if (!pmecc_galois_table)
> -			return -ENOMEM;
>  		host->pmecc_rom_base =3D pmecc_galois_table;
>  		ret =3D pmecc_build_galois_table((sector_size =3D=3D 512) ?
>  						PMECC_GF_DIMENSION_13 :
> diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
> index ac698332cf1b..9b2f781d9cb5 100644
> --- a/drivers/net/gianfar.c
> +++ b/drivers/net/gianfar.c
> @@ -483,9 +483,6 @@ static int gfar_probe(struct device_d *dev)
>  =

>  	priv =3D xzalloc(sizeof(struct gfar_private));
>  =

> -	if (NULL =3D=3D priv)
> -		return -ENODEV;
> -
>  	edev =3D &priv->edev;
>  =

>  	priv->mdiobus_tbi =3D gfar_info->mdiobus_tbi;
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index ea330d131012..b5555d5fe63d 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -194,8 +194,6 @@ void of_alias_scan(void)
>  =

>  		/* Allocate an alias_prop with enough space for the stem */
>  		ap =3D xzalloc(sizeof(*ap) + len + 1);
> -		if (!ap)
> -			continue;
>  		ap->alias =3D start;
>  		of_alias_add(ap, np, id, start, len);
>  	}
> diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
> index affc705d0aba..fc56a0d14ade 100644
> --- a/drivers/pci/pci-imx6.c
> +++ b/drivers/pci/pci-imx6.c
> @@ -580,8 +580,6 @@ static int __init imx6_pcie_probe(struct device_d *de=
v)
>  	int ret;
>  =

>  	imx6_pcie =3D xzalloc(sizeof(*imx6_pcie));
> -	if (!imx6_pcie)
> -		return -ENOMEM;
>  =

>  	pp =3D &imx6_pcie->pp;
>  	pp->dev =3D dev;
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl=
-rockchip.c
> index 1130f3d845ea..58f2c4af2686 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -412,8 +412,6 @@ static int rockchip_pinctrl_probe(struct device_d *de=
v)
>  	int ret;
>  =

>  	info =3D xzalloc(sizeof(struct rockchip_pinctrl));
> -	if (!info)
> -		return -ENOMEM;
>  =

>  	ctrl =3D rockchip_pinctrl_get_soc_data(info, dev);
>  	if (!ctrl) {
> diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_=
udc.c
> index 372c07b41866..4e6b858868c8 100644
> --- a/drivers/usb/gadget/pxa27x_udc.c
> +++ b/drivers/usb/gadget/pxa27x_udc.c
> @@ -218,8 +218,6 @@ static struct usb_request *pxa_ep_alloc_request(struc=
t usb_ep *_ep)
>  	struct pxa27x_request *req;
>  =

>  	req =3D xzalloc(sizeof *req);
> -	if (!req)
> -		return NULL;
>  =

>  	INIT_LIST_HEAD(&req->queue);
>  	req->in_use =3D 0;
> diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
> index 32a8f0652931..68d819af2cc8 100644
> --- a/drivers/usb/musb/musb_host.c
> +++ b/drivers/usb/musb/musb_host.c
> @@ -1717,8 +1717,6 @@ int musb_host_alloc(struct musb *musb)
>  {
>  	/* usbcore sets dev->driver_data to hcd, and sometimes uses that... */
>  	musb->hcd =3D xzalloc(sizeof(struct usb_hcd));
> -	if (!musb->hcd)
> -		return -EINVAL;
>  =

>  	musb->hcd->hcd_priv =3D musb;
>  =

> diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy=
-am335x-control.c
> index 5fd8802b3a75..55a2ed27b7d3 100644
> --- a/drivers/usb/musb/phy-am335x-control.c
> +++ b/drivers/usb/musb/phy-am335x-control.c
> @@ -140,10 +140,6 @@ static int am335x_control_usb_probe(struct device_d =
*dev)
>  		return ret;
>  =

>  	ctrl_usb =3D xzalloc(sizeof(*ctrl_usb));
> -	if (!ctrl_usb) {
> -		dev_err(dev, "unable to alloc memory for control usb\n");
> -		return -ENOMEM;
> -	}
>  =

>  	ctrl_usb->dev =3D dev;
>  =

> diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
> index 204e51054dce..ec8c0f538b62 100644
> --- a/drivers/usb/musb/phy-am335x.c
> +++ b/drivers/usb/musb/phy-am335x.c
> @@ -34,8 +34,6 @@ static int am335x_phy_probe(struct device_d *dev)
>  	int ret;
>  =

>  	am_usbphy =3D xzalloc(sizeof(*am_usbphy));
> -	if (!am_usbphy)
> -		return -ENOMEM;
>  =

>  	iores =3D dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores)) {
> diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
> index 2915dba17405..ec35bd1bc039 100644
> --- a/drivers/video/backlight-pwm.c
> +++ b/drivers/video/backlight-pwm.c
> @@ -147,8 +147,6 @@ static int pwm_backlight_parse_dt(struct device_d *de=
v,
>  		size_t size =3D sizeof(*pwm_backlight->levels) * length;
>  =

>  		pwm_backlight->levels =3D xzalloc(size);
> -		if (!pwm_backlight->levels)
> -			return -ENOMEM;
>  =

>  		ret =3D of_property_read_u32_array(node, "brightness-levels",
>  						 pwm_backlight->levels,
> diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
> index 2d366ae6627a..f9ca06c62bcb 100644
> --- a/drivers/video/tc358767.c
> +++ b/drivers/video/tc358767.c
> @@ -1352,8 +1352,6 @@ static int tc_probe(struct device_d *dev)
>  	int ret;
>  =

>  	tc =3D xzalloc(sizeof(struct tc_data));
> -	if (!tc)
> -		return -ENOMEM;
>  =

>  	tc->client =3D client;
>  	tc->dev =3D dev;
> diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
> index 6085bca841e9..b35f411cbbc1 100644
> --- a/fs/omap4_usbbootfs.c
> +++ b/fs/omap4_usbbootfs.c
> @@ -73,8 +73,6 @@ static struct file_priv *omap4_usbbootfs_do_open(
>  		return ERR_PTR(-ENOSYS);
>  =

>  	priv =3D xzalloc(sizeof(*priv));
> -	if (!priv)
> -		return ERR_PTR(-ENOMEM);
>  =

>  	data =3D OMAP4_USBBOOT_FS_MAGIC	; omap4_usbboot_write(&data, 4);
>  	data =3D OMAP4_USBBOOT_FS_CMD_OPEN; omap4_usbboot_write(&data, 4);
> diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
> index 0e05d48ea041..a879a680641c 100644
> --- a/fs/pstore/fs.c
> +++ b/fs/pstore/fs.c
> @@ -64,8 +64,6 @@ int pstore_mkfile(enum pstore_type_id type, char *psnam=
e, u64 id, int count,
>  	}
>  =

>  	private =3D xzalloc(sizeof(*private) + size);
> -	if (!private)
> -		return -ENOMEM;
>  	private->type =3D type;
>  	private->id =3D id;
>  	private->count =3D count;
> -- =

> 2.11.0
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
