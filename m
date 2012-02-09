Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvQ3x-0004f7-Sw
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 09:13:10 +0000
Date: Thu, 9 Feb 2012 10:12:59 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20120209091259.GK22116@pengutronix.de>
References: <OFFA780848.709EDB56-ONC125799E.004D9434-C125799E.004E5941@o0802.rafi.inhouse>
 <4F32A501.4080102@pengutronix.de>
 <OF22330FAC.132482AF-ONC125799F.00307755-C125799F.0030998E@o0802.rafi.inhouse>
 <4F338C81.6010207@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <4F338C81.6010207@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0177434577239916621=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Antwort: Re: flash image through CAN
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, christian.buettner@rafi.de


--===============0177434577239916621==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GPJrCs/72TxItFYR"
Content-Disposition: inline


--GPJrCs/72TxItFYR
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 09, 2012 at 10:06:09AM +0100, Marc Kleine-Budde wrote:
> On 02/09/2012 09:50 AM, christian.buettner@rafi.de wrote:
> > what is the effort to port the CAN stack to barebox?
>
> Definitely more than implementing the "boot a minimal Linux (2-3 MB) and
> do the update process there". And more error prone, for the minimal
> update Linux basically we have all components (Kernel, CAN-Stack,
> minimal Userspace).

It is just a matter of how much flash you have on the system. If there
is enough space, I'd always go for a Linux based solution.

rsc
--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--GPJrCs/72TxItFYR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iD8DBQFPM44b+8z+IKgDhyARAn6eAJ9TlJ2ulGtINTfHWNyayZrdkYs5FQCfTUQ8
zG3lwX8rUc92TtMkLEvhTCw=
=clIB
-----END PGP SIGNATURE-----

--GPJrCs/72TxItFYR--


--===============0177434577239916621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0177434577239916621==--
