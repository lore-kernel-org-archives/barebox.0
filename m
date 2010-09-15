Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OvnNs-0007WS-Rw
	for barebox@lists.infradead.org; Wed, 15 Sep 2010 08:30:29 +0000
Message-ID: <4C90841E.8060204@pengutronix.de>
Date: Wed, 15 Sep 2010 10:30:22 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1284535596-26814-1-git-send-email-mkl@pengutronix.de>
	<1284535596-26814-2-git-send-email-mkl@pengutronix.de>
	<20100915074736.GC23518@game.jcrosoft.org>
In-Reply-To: <20100915074736.GC23518@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1199885115=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] poller: add poller support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1199885115==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigAFF11462191BADD7D744C782"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigAFF11462191BADD7D744C782
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 09/15/2010 09:47 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
>=20
> 	a bit more info in the commit will be nice

I should have put the information from the introduction mail to the
first patch. Here it comes:

This patch adds a generic polling infrastructure to barebox. It defines
a interface to add and remove functions that should be called during a
poll. These functions can be used to reset hardware watchdogs or poll
devices to simulate interrupts.

> 	but we could name it differently as it could be see as interrupt

Do you have a better name? I'm usually bad with good names, but I don't
want to have interrupts or something like this, because it's polling no
real interrupts. E.g. if you don't have the polling call in your
for-loop your code won't be interrupted. (..and it's usually not your
code that's missing the poller call).

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigAFF11462191BADD7D744C782
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAkyQhCIACgkQjTAFq1RaXHPg5ACfWyJ/xjuugI9S5IASY6np+Zfk
yVMAnji915jvF68nONMccAjQZq9FlR1O
=AFr8
-----END PGP SIGNATURE-----

--------------enigAFF11462191BADD7D744C782--


--===============1199885115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1199885115==--
