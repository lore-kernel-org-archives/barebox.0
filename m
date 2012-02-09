Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvPxQ-0003YS-Te
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 09:06:29 +0000
Message-ID: <4F338C81.6010207@pengutronix.de>
Date: Thu, 09 Feb 2012 10:06:09 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <OFFA780848.709EDB56-ONC125799E.004D9434-C125799E.004E5941@o0802.rafi.inhouse>
 <4F32A501.4080102@pengutronix.de>
 <OF22330FAC.132482AF-ONC125799F.00307755-C125799F.0030998E@o0802.rafi.inhouse>
In-Reply-To: <OF22330FAC.132482AF-ONC125799F.00307755-C125799F.0030998E@o0802.rafi.inhouse>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7715568849755161291=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Antwort: Re: flash image through CAN
To: christian.buettner@rafi.de
Cc: Robert Schwebel <rsc@pengutronix.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============7715568849755161291==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigE6F6E478E61F9E2A76CA2884"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigE6F6E478E61F9E2A76CA2884
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/09/2012 09:50 AM, christian.buettner@rafi.de wrote:
> what is the effort to port the CAN stack to barebox?

Definitely more than implementing the "boot a minimal Linux (2-3 MB) and
do the update process there". And more error prone, for the minimal
update Linux basically we have all components (Kernel, CAN-Stack,
minimal Userspace).

regards, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigE6F6E478E61F9E2A76CA2884
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk8zjIQACgkQjTAFq1RaXHOusgCfcW3RsrgOEOc6GACHhSSylfh+
keAAnjob6znGLcSPrwdYzEsY3ZUZDah6
=MMS8
-----END PGP SIGNATURE-----

--------------enigE6F6E478E61F9E2A76CA2884--


--===============7715568849755161291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7715568849755161291==--
