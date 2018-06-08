Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRBkH-0004iH-5t
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 07:23:39 +0000
Date: Fri, 8 Jun 2018 09:23:24 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20180608072324.mho6t4bzmoyiwxzu@pengutronix.de>
References: <20180607195552.15246-1-o.rempel@pengutronix.de>
 <20180608070804.j3tnrur5fsf2kuun@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20180608070804.j3tnrur5fsf2kuun@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1549101219643628359=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/3] MIPS: ath79: provide driver for Atheros ART
 partition
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>


--===============1549101219643628359==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e4mpt5c4lpmhramr"
Content-Disposition: inline


--e4mpt5c4lpmhramr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 08, 2018 at 09:08:04AM +0200, Sascha Hauer wrote:
> On Thu, Jun 07, 2018 at 09:55:50PM +0200, Oleksij Rempel wrote:
> > From: Oleksij Rempel <linux@rempel-privat.de>
> >=20
> > this partition contains calibration data for WiFi and
> > some board specific data, like MAC address.
> >=20
> > For now we care only about MAC.
> >=20
> > Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> > ---
>=20
> Have you missed Lucas' answer to this patch?

Sorry forgot reflect it here:
there are different Atheros EEPROM formats. Some of them cover with CRC
complete image. Some of them only part of this image.
The EEPROM used on ar9331 (at least on my board) is covered only partially =
with CRC -
compressed baseband information, see http://web.mit.edu/freebsd/head/sys/co=
ntrib/dev/ath/ath_hal/ar9300/ar9300_eeprom.c
ar9300_compression_checksum()
the CRC check in ar9300_check_eeprom() is not enabled.

> Sascha
>=20
> >  arch/mips/mach-ath79/Makefile |   1 +
> >  arch/mips/mach-ath79/art.c    | 112 ++++++++++++++++++++++++++++++++++
> >  2 files changed, 113 insertions(+)
> >  create mode 100644 arch/mips/mach-ath79/art.c
> >=20
> > diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makef=
ile
> > index 3772daeba..b827b363c 100644
> > --- a/arch/mips/mach-ath79/Makefile
> > +++ b/arch/mips/mach-ath79/Makefile
> > @@ -1,2 +1,3 @@
> >  obj-y +=3D reset.o
> >  obj-y +=3D bbu.o
> > +obj-y +=3D art.o
> > diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
> > new file mode 100644
> > index 000000000..984d08736
> > --- /dev/null
> > +++ b/arch/mips/mach-ath79/art.c
> > @@ -0,0 +1,112 @@
> > +// SPDX-License-Identifier: GPL-2.
> > +/*
> > + * Copyright (c) 2018 Oleksij Rempel <linux@rempel-privat.de>
> > + */
> > +
> > +#include <common.h>
> > +#include <fcntl.h>
> > +#include <init.h>
> > +#include <libfile.h>
> > +#include <net.h>
> > +#include <unistd.h>
> > +
> > +#define AR93000_EPPROM_OFFSET	0x1000
> > +
> > +struct ar9300_eeprom {
> > +	u8 eeprom_version;
> > +	u8 template_version;
> > +	u8 mac_addr[6];
> > +};
> > +
> > +static int art_set_mac(struct device_d *dev, struct ar9300_eeprom *eep=
rom)
> > +{
> > +	struct device_node *node =3D dev->device_node;
> > +	struct device_node *rnode;
> > +
> > +	if (!node)
> > +		return -ENOENT;
> > +
> > +	rnode =3D of_parse_phandle_from(node, NULL,
> > +				     "barebox,provide-mac-address", 0);
> > +	if (!rnode)
> > +		return -ENOENT;
> > +
> > +	of_eth_register_ethaddr(rnode, &eeprom->mac_addr[0]);
> > +
> > +	return 0;
> > +}
> > +
> > +static int art_read_mac(struct device_d *dev, const char *file)
> > +{
> > +	int fd, rbytes;
> > +	struct ar9300_eeprom eeprom;
> > +
> > +	fd =3D open_and_lseek(file, O_RDONLY, AR93000_EPPROM_OFFSET);
> > +	if (fd < 0) {
> > +		dev_err(dev, "Failed to open eeprom path %s %d\n",
> > +		       file, fd);
> > +		return fd;
> > +	}
> > +
> > +	rbytes =3D read_full(fd, &eeprom, sizeof(eeprom));
> > +	close(fd);
> > +	if (rbytes < sizeof(eeprom)) {
> > +		dev_err(dev, "Failed to read %s\n", file);
> > +		return rbytes < 0 ? rbytes : -EIO;
> > +	}
> > +
> > +	dev_dbg(dev, "ART version: %x.%x\n",
> > +		 eeprom.eeprom_version, eeprom.template_version);
> > +	dev_dbg(dev, "mac: %02x:%02x:%02x:%02x:%02x:%02x\n",
> > +	       eeprom.mac_addr[0],
> > +	       eeprom.mac_addr[1],
> > +	       eeprom.mac_addr[2],
> > +	       eeprom.mac_addr[3],
> > +	       eeprom.mac_addr[4],
> > +	       eeprom.mac_addr[5]);
> > +
> > +	if (!is_valid_ether_addr(&eeprom.mac_addr[0])) {
> > +		dev_err(dev, "bad MAC addr\n");
> > +		return -EILSEQ;
> > +	}
> > +
> > +	return art_set_mac(dev, &eeprom);
> > +}
> > +
> > +static int art_probe(struct device_d *dev)
> > +{
> > +	char *path;
> > +	int ret;
> > +
> > +	dev_dbg(dev, "found ART partition\n");
> > +
> > +	ret =3D of_find_path(dev->device_node, "device-path", &path, 0);
> > +	if (ret) {
> > +		dev_err(dev, "can't find path\n");
> > +		return ret;
> > +	}
> > +
> > +	return art_read_mac(dev, path);
> > +}
> > +
> > +static struct of_device_id art_dt_ids[] =3D {
> > +	{
> > +		.compatible =3D "qca,art",
> > +	}, {
> > +		/* sentinel */
> > +	}
> > +};
> > +
> > +static struct driver_d art_driver =3D {
> > +	.name		=3D "qca-art",
> > +	.probe		=3D art_probe,
> > +	.of_compatible	=3D art_dt_ids,
> > +};
> > +
> > +static int art_of_driver_init(void)
> > +{
> > +	platform_driver_register(&art_driver);
> > +
> > +	return 0;
> > +}
> > +late_initcall(art_of_driver_init);
> > --=20
> > 2.17.1
> >=20
> >=20
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >=20
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--e4mpt5c4lpmhramr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlsaLukACgkQdQOiSHVI
77TRhgf9EZYTcMwlRYEzJlmwJSYvXr3+PhuVrf9kkLDiBOeNkzYWGI2o1SnO+gRk
LnzP43me/cWrgdUOTd65MpLAq4c5cVgVTHrgVY6OmEGjK3pHNAeb7HdNr5qvsOTH
OBS6Px+bF9RuWNhEAhGmViOOJepMf+jrq+teKPLr6LBUfxl/jntHZBFRm0sV+UCe
/RlklgffMLNawsHlygMtlH8ei3mLhznAhn4TV37/XcJ+U63bwQAjtOWX3B1KZKCT
5T2WwBcuJhX3BR+Ll+dKEC/byw7O1fi1+pY9FBWSV/daio5QWHiXPnJJs4r9+DVG
rEft2AVcaa7vOKqttyCbyhT/tn92uA==
=5pFK
-----END PGP SIGNATURE-----

--e4mpt5c4lpmhramr--


--===============1549101219643628359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1549101219643628359==--
