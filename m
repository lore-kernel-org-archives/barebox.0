Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFfZ9-0002x2-6d
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 09:34:55 +0000
References: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
 <1437036236-19096-5-git-send-email-m.olbrich@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55A77AA1.4010707@pengutronix.de>
Date: Thu, 16 Jul 2015 11:34:25 +0200
MIME-Version: 1.0
In-Reply-To: <1437036236-19096-5-git-send-email-m.olbrich@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3584570184416918222=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/7] efi: add helper to get the GPT partition UUID for a
 device
To: Michael Olbrich <m.olbrich@pengutronix.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3584570184416918222==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="53hmRDFDLPFgaljjTdhkrvtP3hBnQPkfL"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--53hmRDFDLPFgaljjTdhkrvtP3hBnQPkfL
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/16/2015 10:43 AM, Michael Olbrich wrote:
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  common/efi-devicepath.c | 31 +++++++++++++++++++++++++++++++
>  include/efi.h           |  1 +
>  2 files changed, 32 insertions(+)
>=20
> diff --git a/common/efi-devicepath.c b/common/efi-devicepath.c
> index a53c6d2e8b9b..fdb86afc8eca 100644
> --- a/common/efi-devicepath.c
> +++ b/common/efi-devicepath.c
> @@ -1383,3 +1383,34 @@ u8 device_path_to_type(struct efi_device_path *d=
ev_path)
> =20
>  	return device_path_type(dev_path);
>  }
> +
> +char *device_path_to_partuuid(struct efi_device_path *dev_path)
> +{
> +	struct efi_device_path *dev_path_node;
> +	struct harddrive_device_path *hd;
> +	char *str =3D NULL;;
> +
> +	dev_path =3D unpack_device_path(dev_path);
> +
> +	for (dev_path_node =3D dev_path; !is_device_path_end(dev_path_node);
> +	     dev_path_node =3D next_device_path_node(dev_path_node)) {
> +
> +		if (device_path_type(dev_path_node) !=3D MEDIA_DEVICE_PATH)
> +			continue;
> +
> +		if (dev_path_node->sub_type !=3D MEDIA_HARDDRIVE_DP)
> +			continue;
> +
> +		hd =3D (struct harddrive_device_path *)dev_path_node;
> +
> +		if (hd->signature_type !=3D SIGNATURE_TYPE_GUID)
> +			continue;
> +
> +		str =3D malloc(sizeof("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx")+1);
> +		sprintf(str, "%pU)", (efi_guid_t *)&(hd->signature[0]));
> +		break;
asprintf()?

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--53hmRDFDLPFgaljjTdhkrvtP3hBnQPkfL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVp3qhAAoJEP5prqPJtc/HsXEH/jvuC5ZcmL0/fTVjxcpbBzwz
kG14LxkjcFtcUnBIc9U6rl4MjKGHjFfFUss9aGN/XxP7NopW/6XV4B7JKxMyo6DH
BKUA96ZYrutPfZKCXKglqFUVWj1HoArfmNxFD3uVO1Vi1q46UoF1bmbGFlFIttVe
NDckKxIcBDFvyDdBY3UbiQr+tQ5NCKsnImma62EcaeuFPAOUzlOFfNXn1DiDKzLe
6uh5gLN/1vpefsSFWm9u41PzFxlTkCM9yBLeiaG8DfdYDuSu/7Fiz4KxM2xQza3L
pyPyqcZ4SjRoTabLpkH2aN4HlOjwnfNNf0pqVMdaiU38IySTNSXPpJeBAFMdF3Y=
=3yFV
-----END PGP SIGNATURE-----

--53hmRDFDLPFgaljjTdhkrvtP3hBnQPkfL--


--===============3584570184416918222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3584570184416918222==--
