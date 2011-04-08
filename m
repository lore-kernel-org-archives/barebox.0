Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8CDk-0000Xg-BL
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:59:33 +0000
Message-ID: <4D9F14BB.2090708@pengutronix.de>
Date: Fri, 08 Apr 2011 15:59:23 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
	<1302257948-18174-8-git-send-email-mkl@pengutronix.de>
	<20110408134156.GE13978@game.jcrosoft.org>
In-Reply-To: <20110408134156.GE13978@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1721582910=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/7] defaultenv: add config template
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1721582910==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig87B0EE5E9E48582DA4EC6052"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig87B0EE5E9E48582DA4EC6052
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/08/2011 03:41 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:19 Fri 08 Apr     , Marc Kleine-Budde wrote:
>> This patch add a config template to the defaultenv.
>>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  defaultenv/config |   67 ++++++++++++++++++++++++++++++++++++++++++++=
+++++++++
> this should go to doc?

maybe....on the upside here it's next to bin/boot and bin/update

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig87B0EE5E9E48582DA4EC6052
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2fFMEACgkQjTAFq1RaXHNkfgCfROvAoJuCNdobCU0zYwLek6qw
Z/sAni8Ul9uQAve+iNrs68c1ACoC/1NP
=zF6z
-----END PGP SIGNATURE-----

--------------enig87B0EE5E9E48582DA4EC6052--


--===============1721582910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1721582910==--
