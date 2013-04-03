Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNIgD-0007OB-Az
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 08:04:26 +0000
Message-ID: <515BE286.4080305@pengutronix.de>
Date: Wed, 03 Apr 2013 10:04:22 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1364971945-24352-1-git-send-email-s.hauer@pengutronix.de>
 <1364971945-24352-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1364971945-24352-5-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5523156991565378860=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/5] bootsource: add support for bootsource instance
 information
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5523156991565378860==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="----enig2GSEJAHESSTMNLVBRENEE"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
------enig2GSEJAHESSTMNLVBRENEE
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable

On 04/03/2013 08:52 AM, Sascha Hauer wrote:
> From: Marc Kleine-Budde <mkl@pengutronix.de>
>=20
> Add a C interface to set and get the bootsource instance:
>=20
>     int bootsource_get_instance(void);
>     void bootsource_set_instance(int instance);
>=20
> Also export the shell variable "barebox_loc_instance".
                                  ^^^^^^^^^^^^^^^^^^^^

That's not correct anymore. I have an updated series.

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


------enig2GSEJAHESSTMNLVBRENEE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlFb4oYACgkQjTAFq1RaXHM3KQCfVjPpRzOp24wGCUtefr2h4Hz0
3E0An1Ulu9mlP5uTwWUgbSF7iuDxo3No
=qi73
-----END PGP SIGNATURE-----

------enig2GSEJAHESSTMNLVBRENEE--


--===============5523156991565378860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5523156991565378860==--
