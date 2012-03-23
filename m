Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SB15N-0005O2-Ev
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 09:47:12 +0000
Date: Fri, 23 Mar 2012 10:46:49 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20120323094649.GB2550@pengutronix.de>
References: <20120310221035.GC14564@pengutronix.de>
 <20120313035729.GG444@game.jcrosoft.org>
 <20120313102309.GB2488@pengutronix.de>
 <20120313171623.GJ444@game.jcrosoft.org>
MIME-Version: 1.0
In-Reply-To: <20120313171623.GJ444@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3879127143298460334=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Shall 'bmp' uncompress automagically?
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


--===============3879127143298460334==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="s/l3CgOIzMHHjg/5"
Content-Disposition: inline


--s/l3CgOIzMHHjg/5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > > > Is something like this wanted? Or shall this be done entirely via s=
cripts?
> > > >=20
> > > > if [ $file is somehow detected as compressed ]
> > > > 	uncompress $file /bmp
> > > > 	bmp /bmp
> > > > 	rm /bmp
> > > > else
> > > > 	bmp $file
> > > > fi
> > > I prefer the second one
> >=20
> > Care to explain why?
> I the image could be embedeed in other format (uImage, android etc..)

A BMP in a uImage??? But even if, there is no difference if bmp command
calls 'uncompress' or a script?

> And I'm using such command to boot a kernel via DFU too

Which command? What does it have to do wtih BMP?

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--s/l3CgOIzMHHjg/5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk9sRokACgkQD27XaX1/VRsu/ACgmIqZaolFT8d/PscC/i4lNZi+
j84AnRWXYQmfXytSKYrG4xlkT4KKD8f5
=Lv2N
-----END PGP SIGNATURE-----

--s/l3CgOIzMHHjg/5--


--===============3879127143298460334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3879127143298460334==--
