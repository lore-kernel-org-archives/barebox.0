Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn4vQ-0003gj-Mz
 for barebox@lists.infradead.org; Wed, 09 Dec 2020 19:14:57 +0000
Date: Wed, 9 Dec 2020 20:14:51 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20201209191451.GG27410@pengutronix.de>
References: <20201209145547.22655-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
In-Reply-To: <20201209145547.22655-1-jmaselbas@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7391375736699545897=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] usb: dwc2: Add support for optional usb phy
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org


--===============7391375736699545897==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xjyYRNSh/RebjC6o"
Content-Disposition: inline


--xjyYRNSh/RebjC6o
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 09, 2020 at 03:55:44PM +0100, Jules Maselbas wrote:
>Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
>---
> drivers/usb/dwc2/core.h |  2 ++
> drivers/usb/dwc2/dwc2.c | 21 +++++++++++++++++++++
> drivers/usb/dwc2/dwc2.h |  1 +
> 3 files changed, 24 insertions(+)
>
>diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
>index 090ca15fe..b9845b552 100644
>--- a/drivers/usb/dwc2/core.h
>+++ b/drivers/usb/dwc2/core.h
>@@ -466,6 +466,8 @@ struct dwc2 {
> 	struct dwc2_hw_params hw_params;
> 	struct dwc2_core_params params;
>
>+	struct phy *phy; /* optional */
>+
> #ifdef CONFIG_USB_DWC2_HOST
> 	struct usb_host host;
> 	u8 in_data_toggle[MAX_DEVICE][MAX_ENDPOINT];
>diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
>index 282e6754b..ae144698c 100644
>--- a/drivers/usb/dwc2/dwc2.c
>+++ b/drivers/usb/dwc2/dwc2.c
>@@ -50,6 +50,17 @@ static int dwc2_probe(struct device_d *dev)
> 	dwc2->regs =3D IOMEM(iores->start);
> 	dwc2->dev =3D dev;
>
>+	dwc2->phy =3D phy_optional_get(dev, "usb2-phy");
>+	if (!dwc2->phy)
>+		dwc2->phy =3D phy_optional_get(dev, "usb-phy");
>+	if (dwc2->phy) {

dwc2->phy could be of type PTR_ERR. So checking for IS_ERR is necessary.

>+		ret =3D phy_power_on(dwc2->phy);
>+		if (ret =3D=3D 0)
>+			ret =3D phy_init(dwc2->phy);
>+		if (ret)
>+			goto error;
>+	}
>+
> 	ret =3D dwc2_core_snpsid(dwc2);
> 	if (ret)
> 		goto error;
>@@ -78,15 +89,25 @@ static int dwc2_probe(struct device_d *dev)
> 		ret =3D dwc2_set_mode(dwc2, dwc2->dr_mode);
>
> error:
>+	if (dwc2->phy)
>+		phy_power_off(dwc2->phy);
>+

Same here.

> 	return ret;
> }
>
> static void dwc2_remove(struct device_d *dev)
> {
> 	struct dwc2 *dwc2 =3D dev->priv;
>+	int ret;
>
> 	dwc2_host_uninit(dwc2);
> 	dwc2_gadget_uninit(dwc2);
>+
>+	if (dwc2->phy) {
>+		ret =3D phy_exit(dwc2->phy);
>+		if (ret =3D=3D 0)
>+			phy_power_off(dwc2->phy);
>+	}
> }
>
> static const struct of_device_id dwc2_platform_dt_ids[] =3D {
>diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
>index 30ad90665..196f4a07f 100644
>--- a/drivers/usb/dwc2/dwc2.h
>+++ b/drivers/usb/dwc2/dwc2.h
>@@ -2,6 +2,7 @@
> #include <usb/usb.h>
> #include <usb/usb_defs.h>
> #include <usb/gadget.h>
>+#include <linux/phy/phy.h>
>
> #include "regs.h"
> #include "core.h"
>--=20
>2.17.1
>
>
>
>_______________________________________________
>barebox mailing list
>barebox@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/barebox
>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--xjyYRNSh/RebjC6o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl/RIigACgkQC+njFXoe
LGSk5RAAxsuAMJhOmyRFaX7TeMfX9V4UTQ8w+EVbk4tzHOhS2XIrPsPm1iKWLjA1
BVlY9dT3d8b0t7V1MkvF3XKPHV0spkZ/w5lfMkDRZJHW8zHrrFBSr+ZHXZ6jjn+M
aveV3yRLS105l/gTyiSZ3P4xtLhBEn4AE9G7ljlh/h3TuONlwZQJE78AjtJ2pj7K
0rvYR5u86DOHJMZbH2lth1+KO4D48qigGjSBN46TJp1itKNTjfqyy+S9PajKHVBj
xG6WcapKPP+ybEXdLRXOzt3pY28x8v+nfuIe+3G/2ddf1sSB8bn4PuPZbCCo++aQ
SYUNySEr5KmQ4CmtvHYluuzk7R5EkvP+TXoADR1p/kVk2+znabLxx5wx3aReZMHN
UoQ0rmeTCQZU4WZetsrfCuwsPXh4rckZojZhcFLWq5HklM0qi98alrGTBo1Td354
jN6F7uLwxKPnNWwNn0LMhVYo6aFaEg1ne4iqLl3NgT8Sao+P2E3shiqAZxamMFBQ
oQombWjrN5W8otDqobsnrrrcS3c9Z5wuotDaS3BLoe3xrfkdX7HqfmqpdOgjzjS8
JnXfRzr78oXO5gzPpv7Yl+9K4WSrNFeJs9kwzBZC10/QpJ0+shahaaihUxq2WpcG
3+U/44MIvbaoFUa7auJgVDPOSRyD53gZ7BIPBnbO2aIEIHrVHpE=
=MD8r
-----END PGP SIGNATURE-----

--xjyYRNSh/RebjC6o--


--===============7391375736699545897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7391375736699545897==--
