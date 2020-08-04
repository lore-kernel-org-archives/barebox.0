Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2qLX-0008CZ-1u
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 06:22:48 +0000
Date: Tue, 4 Aug 2020 08:22:45 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200804062245.gloltmu55kk2ueik@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
 <20200723103326.23226-10-o.rempel@pengutronix.de>
 <20200803204923.GK31536@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200803204923.GK31536@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0772318530567997005=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 09/11] ARM: protonic-imx6: port protonic specific
 board code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl


--===============0772318530567997005==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w63oxbvha6tyegak"
Content-Disposition: inline


--w63oxbvha6tyegak
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 03, 2020 at 10:49:23PM +0200, Sascha Hauer wrote:
> On Thu, Jul 23, 2020 at 12:33:24PM +0200, Oleksij Rempel wrote:
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  arch/arm/boards/protonic-imx6/Makefile |   1 +
> >  arch/arm/boards/protonic-imx6/board.c  | 598 +++++++++++++++++++++++++
> >  2 files changed, 599 insertions(+)
> >  create mode 100644 arch/arm/boards/protonic-imx6/board.c
> >=20
> > +static int prt_imx6_nvmem_link_fec(struct prt_imx6_priv *priv,
> > +				   struct device_node *root,
> > +				   struct device_node *nvmem_node)
> > +{
> > +	struct device_node *fec_node;
> > +	phandle nvmem_handle;
> > +	int ret;
> > +
> > +	fec_node =3D of_find_node_by_alias(root, "ethernet0");
> > +	if (!fec_node) {
> > +		dev_err(priv->dev, "Cant find the fec node\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	nvmem_handle =3D of_node_create_phandle(nvmem_node);
> > +
> > +	ret =3D of_property_write_u32(fec_node, "nvmem-cells", nvmem_handle);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret =3D of_property_write_string(fec_node, "nvmem-cell-names",
> > +				       "mac-address");
> > +	if (ret)
> > +		return ret;
> > +
> > +	return 0;
> > +}
>=20
> barebox will already write the "mac-address" property to the fec node.
> Isn't this enough?

My motivation for doing this is following:
- we can't make sure i2c is already probed at this point
- if we will decide to speed up the boot, it will be more effective to
  let linux read the eeprom
- usually, vendors tend to avoid updating the bootloader in the field.
  So, it is better to provide all needed information the devicetree to
  let the linux make the right choice.
- in long term, even in barebox we will need to work deferred probe. So,
  it is better to prepare the devicetree and let the system do all
  needed work.

> > +
> > +static struct device_node *
> > +prt_imx6_create_nvmem_cells(struct prt_imx6_priv *priv,
> > +			    struct device_node *nvmem_node,
> > +			    const char *node_name, size_t offset, size_t size)
> > +{
> > +	struct device_node *nvcell_node;
> > +	int na, ns, len =3D 0;
> > +	int ret;
> > +	u8 *tmp;
> > +
> > +	nvcell_node =3D of_create_node(nvmem_node, node_name);
> > +	if (!nvcell_node) {
> > +		dev_err(priv->dev, "Failed to create %s cell\n", node_name);
> > +		return ERR_PTR(-ENOMEM);
> > +	}
> > +
> > +	na =3D of_n_addr_cells(nvcell_node);
> > +	ns =3D of_n_size_cells(nvcell_node);
> > +	tmp =3D xzalloc((na + ns) * 4);
> > +
> > +	of_write_number(tmp + len, offset, na);
> > +	len +=3D na * 4;
> > +	of_write_number(tmp + len, size, ns);
> > +	len +=3D ns * 4;
> > +
> > +	ret =3D of_set_property(nvcell_node, "reg", tmp, len, 1);
> > +	kfree(tmp);
> > +	if (ret)
> > +		return ERR_PTR(ret);
> > +
> > +	return nvcell_node;
> > +}
> > +
> > +static int prt_imx6_rfid_fixup(struct device_node *root, void *data)
> > +{
> > +	struct prt_imx6_priv *priv =3D data;
> > +	const struct prt_machine_data *dcfg =3D priv->dcfg;
> > +	struct device_node *node, *i2c_node, *tmp_node;
> > +	char *eeprom_node_name, *alias;
> > +	int na, ns, len =3D 0;
> > +	int ret;
> > +	u8 *tmp;
> > +
> > +	if (!root) {
> > +		dev_err(priv->dev, "Unable to find the root node\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	alias =3D basprintf("i2c%d", dcfg->i2c_adapter);
> > +	if (!alias) {
> > +		ret =3D -ENOMEM;
> > +		goto exit_error;
> > +	}
> > +
> > +	i2c_node =3D of_find_node_by_alias(root, alias);
> > +	if (!i2c_node) {
> > +		dev_err(priv->dev, "Unsupported i2c adapter\n");
> > +		ret =3D -ENODEV;
> > +		goto free_alias;
> > +	}
> > +
> > +	eeprom_node_name =3D basprintf("/eeprom@%x", dcfg->i2c_addr);
> > +	if (!eeprom_node_name) {
> > +		ret =3D -ENOMEM;
> > +		goto free_alias;
> > +	}
> > +
> > +	node =3D of_create_node(i2c_node, eeprom_node_name);
> > +	if (!node) {
> > +		dev_err(priv->dev, "Filed to create node %s\n",
> > +			eeprom_node_name);
>=20
> s/filed/failed/, multiple times in this patch.

fixed

> > +		ret =3D -ENOMEM;
> > +		goto free_eeprom;
> > +	}
> > +
> > +	ret =3D of_property_write_string(node, "compatible", "atmel,24c256");
> > +	if (ret)
> > +		goto free_eeprom;
> > +
> > +	na =3D of_n_addr_cells(node);
> > +	ns =3D of_n_size_cells(node);
> > +	tmp =3D xzalloc((na + ns) * 4);
> > +
> > +	of_write_number(tmp + len, dcfg->i2c_addr, na);
> > +	len +=3D na * 4;
> > +	of_write_number(tmp + len, 0, ns);
> > +	len +=3D ns * 4;
> > +
> > +	ret =3D of_set_property(node, "reg", tmp, len, 1);
> > +	kfree(tmp);
> > +	if (ret)
> > +		goto free_eeprom;
> > +
> > +	ret =3D of_property_write_u32(node, "#size-cells", 1);
> > +	if (ret)
> > +		goto free_eeprom;
> > +
> > +	ret =3D of_property_write_u32(node, "#address-cells", 1);
> > +	if (ret)
> > +		goto free_eeprom;
> > +
> > +	tmp_node =3D prt_imx6_create_nvmem_cells(priv, node, "/mac-address@0",
> > +					       0x6000, 6);
> > +	if (IS_ERR(tmp_node)) {
> > +		ret =3D PTR_ERR(tmp_node);
> > +		goto free_eeprom;
> > +	}
> > +
> > +	ret =3D prt_imx6_nvmem_link_fec(priv, root, tmp_node);
> > +	if (ret)
> > +		goto free_eeprom;
> > +
> > +	tmp_node =3D prt_imx6_create_nvmem_cells(priv, node, "/serial@6",
> > +					       0x6006, 10);
> > +	if (IS_ERR(tmp_node)) {
> > +		ret =3D PTR_ERR(tmp_node);
> > +		goto free_eeprom;
> > +	}
> > +
> > +	ret =3D prt_imx6_nvmem_link_serial(priv, root, tmp_node);
> > +	if (ret)
> > +		goto free_eeprom;
> > +
> > +	return 0;
> > +free_eeprom:
> > +	kfree(eeprom_node_name);
> > +free_alias:
> > +	kfree(alias);
> > +exit_error:
> > +	dev_err(priv->dev, "Failed to apply fixup\n");
>=20
> It's always nice to print the error code along with such a message.

fixed

> > +static int prt_imx6_probe(struct device_d *dev)
> > +{
> > +	struct prt_imx6_priv *priv;
> > +	struct param_d *p;
> > +	int ret;
> > +
> > +	priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
> > +	if (!priv) {
> > +		ret =3D -ENOMEM;
> > +		goto exit_probe;
> > +	}
> > +
> > +	priv->dev =3D dev;
> > +
> > +	pr_info("Detected machine type: %s\n",
> > +		of_device_get_match_compatible(priv->dev));
> > +
> > +	ret =3D prt_imx6_get_id(priv);
> > +	if (ret)
> > +		goto free_priv;
> > +
> > +	pr_info("  HW type:     %d\n", priv->hw_id);
> > +	pr_info("  HW revision: %d\n", priv->hw_rev);
> > +
> > +	ret =3D prt_imx6_get_dcfg(priv);
> > +	if (ret)
> > +		goto free_priv;
> > +
> > +	if (priv->dcfg->init) {
> > +		ret =3D priv->dcfg->init(priv);
> > +		if (ret)
> > +			goto free_priv;
> > +	}
> > +
> > +	p =3D dev_add_param_uint32_ro(dev, "boardrev", &priv->hw_rev, "%u");
> > +	if (IS_ERR(p)) {
> > +		ret =3D PTR_ERR(p);
> > +		goto free_priv;
> > +	}
> > +
> > +	p =3D dev_add_param_uint32_ro(dev, "boardid", &priv->hw_id, "%u");
> > +	if (IS_ERR(p)) {
> > +		ret =3D PTR_ERR(p);
> > +		goto free_priv;
> > +	}
> > +
> > +	ret =3D prt_imx6_rfid_fixup(of_get_root_node(), priv);
> > +	if (ret)
> > +		goto free_priv;
> > +
> > +	ret =3D of_register_fixup(prt_imx6_rfid_fixup, priv);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to register fixup\n");
> > +		goto free_priv;
> > +	}
> > +
> > +	return 0;
> > +free_priv:
> > +	kfree(priv);
> > +exit_probe:
> > +	dev_err(dev, "Probe filed\n");

fixed

Regards,
Oleksij

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--w63oxbvha6tyegak
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl8o/rAACgkQ4omh9DUa
UbPY7g/7BC0df+H90Akh08WNf0gwynIoSZiLSlaxZJUfAT1CBY6Z6N0fHZFYxwM3
pmJwbTch2r/aRM4SxhQYfcq8UcQIelFYYkt2J+kh/F0voRH3E8JOoFHtzN3pbcJ/
v8wxqEfNVJ2pWiHfyA+by2/xPuURAzxuVJ2lB+qKtWzbE0AUr8uq2XlpxBmWE/JZ
ULVyM3lNev/c9ThfKBCL7z0/Y+xvarTN0Oqx51XkGleSSShKZNSb4l9hwHL8wHC6
jKULihnsdaeXl0MGFI7vqTAX7Yv9RkD9WgqNEQ4zVOOlRL6kbr3FF2yje+dZrDGw
FSQmtmbNWIfqqNEw/Eby7Y5fZ75BXbQiOYkAHNfCyP5JZLqwTog1DALUIl7fTWAT
ddnt1ugOqjGlvSsEKmFQKsdeU7n9Dd2H+RTYOdVnU8OXQUjxUL6nfRQB5Du37COx
2VxhVKtsAsRfPkjmtEOno4th2S3GNE0P+a3d6oEVnft89saa+mjC0tjtK9ROVwdj
lweHJE5hfrSPfkdeeyFaASRVe9f1p7Q0Gg/dbjIIS0VGsCCe1310VOGNWcxg8Hsx
4dxHp8rIdnIdwikeWoIVJHP5OgBBDe0iVWO8WrDaeD3yQiejfdRxkT1zac/mtOqb
tjBVTiYWSU81tYrtqehOZA29EkBJ85UHd5P1kjWKSg2+Rsw2Hjc=
=tPmz
-----END PGP SIGNATURE-----

--w63oxbvha6tyegak--


--===============0772318530567997005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0772318530567997005==--
