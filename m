Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgJvC-0004eR-BF
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 18:42:14 +0000
Date: Wed, 5 Dec 2012 19:42:10 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121205184210.GA9329@pengutronix.de>
References: <1354719233-28847-1-git-send-email-w.sang@pengutronix.de>
 <20121205183732.GK10369@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20121205183732.GK10369@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8179624039823446014=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: mxs: reset BCH earlier to avoid NAND startup
 problems
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============8179624039823446014==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="M9NhX3UHpAaciwkO"
Content-Disposition: inline


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 05, 2012 at 07:37:32PM +0100, Sascha Hauer wrote:
> On Wed, Dec 05, 2012 at 03:53:53PM +0100, Wolfram Sang wrote:
> > It could happen (1 out of 100 times) that NAND did not start up
> > correctly after warm rebooting, so barebox could not find its
> > environment or DMA timed out due to a stalled BCH. When resetting BCH
> > together with GPMI, the issue could not be observed anymore. We probably
> > need the consistent state already before sending commands to NAND.
>=20
> The subject suggests that the BCH engine is resetted earlier, but
> instead of moving the reset this patch adds another reset. Is this
> intended?

Yes, I wanted to keep resetting BCH before applying a new layout. Maybe
the subject should have been named "earlier, too,". I can drop the other
check and rerun my tests if this seems overcautios to you.

Thanks,

   Wolfram

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--M9NhX3UHpAaciwkO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlC/lYIACgkQD27XaX1/VRtsRACgkIDjPiv54ykQml+05HN6dEOm
EfQAn2j3HRPPa+SRXmSiDEPstwhLo7DW
=HS2c
-----END PGP SIGNATURE-----

--M9NhX3UHpAaciwkO--


--===============8179624039823446014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8179624039823446014==--
