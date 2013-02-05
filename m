Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2mwD-0001si-9H
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 18:08:11 +0000
Message-ID: <51114A81.6050506@pengutronix.de>
Date: Tue, 05 Feb 2013 19:08:01 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <20130205175927.GD19322@game.jcrosoft.org>
 <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3918921023295501011=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] at91: add boot mode detection support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3918921023295501011==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="----enig2OKSSAXFIXSCKDFPBGXSL"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
------enig2OKSSAXFIXSCKDFPBGXSL
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/05/2013 07:02 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>=

> ---
>  arch/arm/mach-at91/Kconfig                 |    8 ++++
>  arch/arm/mach-at91/Makefile                |    2 +
>  arch/arm/mach-at91/bootmode.c              |   57 ++++++++++++++++++++=
++

what about making this a common bootmode helper, which can be used on
other platforms too?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


------enig2OKSSAXFIXSCKDFPBGXSL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlERSoQACgkQjTAFq1RaXHNgyACfQwtgX2RpcZMCzdWChy9quCGY
pe8AnRzd8CvIYHAacmmPRHdhZidwJeMV
=zyCA
-----END PGP SIGNATURE-----

------enig2OKSSAXFIXSCKDFPBGXSL--


--===============3918921023295501011==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3918921023295501011==--
