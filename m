Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O5CEe-0003LJ-8v
	for barebox@lists.infradead.org; Fri, 23 Apr 2010 06:19:33 +0000
Date: Fri, 23 Apr 2010 08:19:29 +0200
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20100423061929.GA26460@pengutronix.de>
References: <1271665698-23163-1-git-send-email-w.sang@pengutronix.de>
	<1271665698-23163-2-git-send-email-w.sang@pengutronix.de>
	<20100422111001.GH7882@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20100422111001.GH7882@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0443341423=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] give nice output when generating barebox.bin and
	barebox.S
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe Kleine-Koenig <ukl@pengutronix.de>


--===============0443341423==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline


--5vNYLRcllDrimb99
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 22, 2010 at 01:10:01PM +0200, Sascha Hauer wrote:
> On Mon, Apr 19, 2010 at 10:28:12AM +0200, Wolfram Sang wrote:
> > From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >=20
> > As a side effect don't build barebox.S when barebox.bin is updated.  I
> > didn't manage to keep the old behaviour and I consider it cleaner this
> > way.
>=20
> I don't understand this completely. We only need barebox.S updated when
> barebox is updated, not when barebox.bin is updated. Is this what you
> mean?
>=20

Uwe dropped off the cc...

> Sascha
>=20
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> > ---
> >=20
> > Passing it through, ask Uwe for details if needed.
> >=20
> >  Makefile |   17 ++++++++++++++---
> >  1 files changed, 14 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/Makefile b/Makefile
> > index c92c5dd..5b4f964 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -641,9 +641,16 @@ define rule_barebox-modpost
> >  	$(Q)echo 'cmd_$@ :=3D $(cmd_barebox-modpost)' > $(dot-target).cmd
> >  endef
> > =20
> > -barebox.bin: barebox
> > -	$(Q)$(OBJCOPY) -O binary barebox barebox.bin
> > +quiet_cmd_objcopy =3D OBJCOPY $@
> > +      cmd_objcopy =3D $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F))=
 $< $@
> > +
> > +OBJCOPYFLAGS_barebox.bin =3D -O binary
> > +
> > +barebox.bin: barebox FORCE
> > +	$(call if_changed,objcopy)
> > +
> >  ifdef CONFIG_X86
> > +barebox.S: barebox
> >  ifdef CONFIG_X86_HDBOOT
> >  	@echo "-------------------------------------------------" > barebox.S
> >  	@echo " * MBR content" >> barebox.S
> > @@ -665,7 +672,11 @@ endif
> >  	@echo " * Init Calls content" >> barebox.S
> >  	$(Q)$(OBJDUMP) -j .barebox_initcalls -d barebox >> barebox.S
> >  else
> > -	$(Q)$(OBJDUMP) -d barebox > barebox.S
> > +quiet_cmd_disasm =3D DISASM  $@
> > +      cmd_disasm =3D $(OBJDUMP) -d $< > $@
> > +
> > +barebox.S: barebox FORCE
> > +	$(call if_changed,disasm)
> >  endif
> > =20
> >  # barebox image
> > --=20
> > 1.7.0
> >=20
> >=20
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--5vNYLRcllDrimb99
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEARECAAYFAkvRO/EACgkQD27XaX1/VRuqcQCfXMg+tnj13dgjcVf7CQHNwCuP
R9AAnR9QMukKZd8MQ6QHV2HO5NQZlvti
=t8TV
-----END PGP SIGNATURE-----

--5vNYLRcllDrimb99--


--===============0443341423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0443341423==--
