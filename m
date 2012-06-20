Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShMXh-00073s-3N
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 15:10:02 +0000
Message-ID: <4FE1E7C2.70400@pengutronix.de>
Date: Wed, 20 Jun 2012 17:09:54 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1340202731-30831-1-git-send-email-jbe@pengutronix.de>
 <1340202731-30831-3-git-send-email-jbe@pengutronix.de>
 <4FE1E562.7050706@pengutronix.de> <201206201705.45842.jbe@pengutronix.de>
In-Reply-To: <201206201705.45842.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5843811939181843712=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] Add two architectures which can detect the reset
 source
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============5843811939181843712==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig2F85919B9A8C1376D1BE1102"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig2F85919B9A8C1376D1BE1102
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 06/20/2012 05:05 PM, Juergen Beisert wrote:
> Marc Kleine-Budde wrote:
>> [...]
>>> +static int s3c_detect_reset_source(void)
>>> +{
>>> +	u32 reg =3D readl(S3C_GPIO_BASE + S3C2440_GSTATUS2);
>>> +
>>> +	if (reg & S3C2440_GSTATUS2_PWRST) {
>>> +		set_reset_source(RESET_POR);
>>> +		writel(S3C2440_GSTATUS2_PWRST,
>                                         ^^^^^
>>> +					S3C_GPIO_BASE + S3C2440_GSTATUS2);
>>> +		return 0;
>>> +	}
>>> +
>>> +	if (reg & S3C2440_GSTATUS2_SLEEPRST) {
>>> +		set_reset_source(RESET_WKE);
>>> +		writel(S3C2440_GSTATUS2_SLEEPRST,
>                                         ^^^^^^^^
>>> +					S3C_GPIO_BASE + S3C2440_GSTATUS2);
>>> +		return 0;
>>> +	}
>>> +
>>> +	if (reg & S3C2440_GSTATUS2_WDRST) {
>>> +		set_reset_source(RESET_WDG);
>>> +		writel(S3C2440_GSTATUS2_WDRST,
>                                         ^^^^^
>>> +					S3C_GPIO_BASE + S3C2440_GSTATUS2);
>>> +		return 0;
>>> +	}
>>
>> That "writel(S3C2440_GSTATUS2_WDRST...)" is the same in each line, isn=
't
>> it?
>=20
> Take a closer look. ;)

tnx - you're rifht

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig2F85919B9A8C1376D1BE1102
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk/h58UACgkQjTAFq1RaXHNpUQCfdJztxuQAGhOZq7n7byzhomTe
HdsAni6g6Seg+wxP7+bleA2qFyIGq4ma
=YUkm
-----END PGP SIGNATURE-----

--------------enig2F85919B9A8C1376D1BE1102--


--===============5843811939181843712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5843811939181843712==--
