Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4qRt-0006E1-0E
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 13:30:57 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri, 04 Dec 2015 14:30:34 +0100
Message-ID: <7121603.NNX0sY4RtQ@adelgunde>
In-Reply-To: <20151204070740.GQ11966@pengutronix.de>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
 <1449064131-12659-9-git-send-email-mpa@pengutronix.de>
 <20151204070740.GQ11966@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4443870182743906850=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 8/9] arm: Add RAMOOPS memory area
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============4443870182743906850==
Content-Type: multipart/signed; boundary="nextPart1706592.572yszK93v"; micalg="pgp-sha256"; protocol="application/pgp-signature"


--nextPart1706592.572yszK93v
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

Hi,

On Friday 04 December 2015 08:07:40 Sascha Hauer wrote:
> On Wed, Dec 02, 2015 at 02:48:50PM +0100, Markus Pargmann wrote:
> > RAMOOPS is a driver that uses a reserved static memory region to st=
ore
> > the data from the last panic or boot. This helps to debug crashes a=
t the
> > next boot while preserving the boot messages.
> >=20
> > To guarantee a memory area that is not altered by barebox or the ke=
rnel,
> > this area is located at the end of the RAM right after barebox and
> > before the STACK. This ensures that changing barebox sizes do not
> > interfere with RAMOOPS.
> >=20
> > Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> > ---
> >  arch/arm/cpu/start.c               |  6 ++++++
> >  arch/arm/include/asm/barebox-arm.h | 14 +++++++++++++-
> >  2 files changed, 19 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> > index 4ad64b61e86a..d03d1edfaf18 100644
> > --- a/arch/arm/cpu/start.c
> > +++ b/arch/arm/cpu/start.c
> > @@ -118,6 +118,12 @@ static inline unsigned long arm_mem_boarddata(=
unsigned long membase,
> >  =09return mem;
> >  }
> > =20
> > +unsigned long arm_mem_ramoops_get(void)
> > +{
> > +=09return arm_mem_ramoops(0, arm_stack_top);
> > +}
> > +EXPORT_SYMBOL_GPL(arm_mem_ramoops_get);
> > +
> >  static int barebox_memory_areas_init(void)
> >  {
> >  =09unsigned long start =3D arm_head_bottom;
> > diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/=
asm/barebox-arm.h
> > index da7717538b61..91f1747d2df4 100644
> > --- a/arch/arm/include/asm/barebox-arm.h
> > +++ b/arch/arm/include/asm/barebox-arm.h
> > @@ -122,11 +122,23 @@ static inline unsigned long arm_mem_early_mal=
loc_end(unsigned long membase,
> >  =09return arm_mem_ttb(membase, endmem);
> >  }
> > =20
> > +static inline unsigned long arm_mem_ramoops(unsigned long membase,=

> > +=09=09=09=09=09    unsigned long endmem)
> > +{
> > +=09endmem =3D arm_mem_ttb(membase, endmem);
> > +#ifdef CONFIG_FS_PSTORE_RAMOOPS
> > +=09endmem -=3D CONFIG_FS_PSTORE_RAMOOPS_SIZE;
> > +=09endmem &=3D ~(SZ_4K - 1); /* Align to 4K */
> > +#endif
>=20
> if (IS_ENABLED(CONFIG_FS_PSTORE_RAMOOPS)) please

This doesn't work here. If CONFIG_FS_PSTORE_RAMOOPS is not defined,
CONFIG_FS_PSTORE_RAMOOPS_SIZE is undefined as well and compiling fails.=


Is there any macro I should use for _SIZE here or any Kconfig setup tha=
t is
preferred for this situation?

Best Regards,

Markus

=2D-=20
Pengutronix e.K.                           |                           =
  |
Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |

--nextPart1706592.572yszK93v
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWYZV6AAoJEEpcgKtcEGQQ0BIP/1hjWb4s1TPUJyv436rNsHyB
XyPoESBNi0NA27c+h+jUDI6OMk5abJK7X1zLkIdWUSfEAc9S4cQlLGPqfsfqJqZQ
KBPwjwYnaa2+BrMDPJ5V76r10pHYTG4Z6qjWNKt5wRmp6sS73OjobejNLKXjdvdd
0FLag4/TR/i1Zj9wLYb3epl6Gwi4dgV0zl+S0vfG7ZX7V4/YEB7dDwjI/OLhfxtn
0xAl1uEEOynwvJl1YDhuusAxTj2RKMJ4AfDX49cMOYmpeDjqxOkWKs1AnJs0/pSQ
7EEvQZCfW1dVhTSBzQTtY8tFrH2TTqdYvxOLFH0/URIhuIZF9vxu9qQ0rGbliSp0
zwfOJx+UwBQsd7M3bWuzvi9n6NRWNQmAOzRQmWSpsiGgg/Tix0k6+y+ioxFcebNa
B//+dADO8g7OehZi11n113MUUbsN98tiUHzq3sacHctnkVQdp/otQBeWfsftStT2
LmRYjv6lslc7zJ7jvtbKUYOsEwP3q8sEc5HeDv5lbGWIq0YuLdA1bBS1AOBN5gbE
/GfvPU+XvSUZyJreUQoDORSZ931oEwC1tPVcLKvRluznXgxvIK5nQsKPTlYrW6DP
cegGsS47VH/LnLG6Y4PmOFfXYMhMY7enQIknj/vEgnFOMKBDC1KWjiSp2/vS64Tw
LoKk3a2Dq0dA4Rj1DoGe
=8oat
-----END PGP SIGNATURE-----

--nextPart1706592.572yszK93v--



--===============4443870182743906850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4443870182743906850==--
