Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1du1nN-0007Wh-MV
 for barebox@lists.infradead.org; Mon, 18 Sep 2017 19:33:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mkl@pengutronix.de>) id 1du1mz-00059k-DA
 for barebox@lists.infradead.org; Mon, 18 Sep 2017 21:33:05 +0200
Received: from [IPv6:2001:470:7eea:1222:44f0:8db4:b06:1d93] (unknown
 [IPv6:2001:470:7eea:1222:44f0:8db4:b06:1d93])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (Client CN "mkl@blackshift.org",
 Issuer "StartCom Class 1 Client CA" (not verified))
 (Authenticated sender: mkl@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id BCD55255BA4
 for <barebox@lists.infradead.org>; Mon, 18 Sep 2017 19:33:04 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <7ca89d8a-f413-3728-1990-40802e5cb2b6@pengutronix.de>
Date: Mon, 18 Sep 2017 21:33:01 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1146029615303073613=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: bootm_open_initrd_uimage: result of uimage_verify() is ignored
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1146029615303073613==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="jjBE6SsxLBbkTFAKEAQOH9gnveNFvmLX6"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--jjBE6SsxLBbkTFAKEAQOH9gnveNFvmLX6
Content-Type: multipart/mixed; boundary="SFUdbG5nuHW5TlwcAuKHdCtG0LnbWgLro";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <7ca89d8a-f413-3728-1990-40802e5cb2b6@pengutronix.de>
Subject: bootm_open_initrd_uimage: result of uimage_verify() is ignored

--SFUdbG5nuHW5TlwcAuKHdCtG0LnbWgLro
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hello,

the bootm_open_initrd_uimage() function will check the CRC of the inird,
if bootm_get_verify_mode is set appropriately, but the error value is
not propagated.

> static int bootm_open_initrd_uimage(struct image_data *data)
> {
> 	int ret;
>=20
> 	if (strcmp(data->os_file, data->initrd_file)) {
> 		data->initrd =3D uimage_open(data->initrd_file);
> 		if (!data->initrd)
> 			return -EINVAL;
>=20
> 		if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
> 			ret =3D uimage_verify(data->initrd);
> 			if (ret) {
> 				printf("Checking data crc failed with %s\n",
> 					strerror(-ret));
> 			}
> 		}
> 		uimage_print_contents(data->initrd);
> 	} else {
> 		data->initrd =3D data->os;
> 	}
>=20
> 	return 0;
> }

Is this intentional?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--SFUdbG5nuHW5TlwcAuKHdCtG0LnbWgLro--

--jjBE6SsxLBbkTFAKEAQOH9gnveNFvmLX6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEE4bay/IylYqM/npjQHv7KIOw4HPYFAlnAH20ACgkQHv7KIOw4
HPa1cQgAmhzJOQv63Pz7MB//X1H2qKI9eIi3RtJUMw9n0gWLcq5K7vqYzuHq0X3K
FjRdnsWy/CBIg1ySqHEZ28Gem233xvob5DIbW+CrYSQFGoExM+TYNACR88n1QN0H
EQ+54Ixnv2Bbfek8MBPuAk5g2+lRvgWWSzPdnPnUHLvkKJQy6nska1nO1LJSEZry
+d0YyTWh21GrPI85taH7ExzUQ7bcgDQRYcKamB+XgCGDU+ykeUSvbITbQuWScZHg
qSQ3LS5rt3/CbcUggRkjz9turYEQA3DjqJXmOmwsm1W5B0hGslPYNib59hBOcGB6
KC0DFbooZ3CCgBTPmzpPRKZYHL9g9w==
=E+Ee
-----END PGP SIGNATURE-----

--jjBE6SsxLBbkTFAKEAQOH9gnveNFvmLX6--


--===============1146029615303073613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1146029615303073613==--
