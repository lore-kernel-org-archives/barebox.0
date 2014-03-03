Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-x230.google.com ([2607:f8b0:400d:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WKTra-0000cz-Kg
 for barebox@lists.infradead.org; Mon, 03 Mar 2014 14:29:03 +0000
Received: by mail-qc0-f176.google.com with SMTP id m20so3471992qcx.35
 for <barebox@lists.infradead.org>; Mon, 03 Mar 2014 06:28:40 -0800 (PST)
Date: Mon, 3 Mar 2014 09:28:20 -0500
From: Tom Rini <trini@ti.com>
Message-ID: <20140303142820.GS16805@bill-the-cat>
References: <1393563654-16490-1-git-send-email-swarren@wwwdotorg.org>
 <CAPnjgZ0rBFV=CbOJ1G8WgUi1fH2=apKA1Q3i8Pd5_Z_ag_2s0Q@mail.gmail.com>
 <5312B2F2.1070000@wwwdotorg.org>
MIME-Version: 1.0
In-Reply-To: <5312B2F2.1070000@wwwdotorg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6502868440525671855=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [U-Boot] [PATCH V2] hush: fix some quoted variable expansion
 issues
To: Stephen Warren <swarren@wwwdotorg.org>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>, Russell King <linux@arm.linux.org.uk>, barebox@lists.infradead.org


--===============6502868440525671855==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uquXjW9+X8a4Yk6h"
Content-Disposition: inline


--uquXjW9+X8a4Yk6h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 01, 2014 at 09:26:26PM -0700, Stephen Warren wrote:
> On 03/01/2014 05:10 PM, Simon Glass wrote:
> > Hi Stephen,
> >=20
> > On 27 February 2014 22:00, Stephen Warren <swarren@wwwdotorg.org
> > <mailto:swarren@wwwdotorg.org>> wrote:
> >=20
> >     The following shell command fails:
> >=20
> >     if test -z "$x"; then echo "zero"; else echo "non-zero"; fi
> >=20
> >     (assuming $x does not exist, it prints "non-zero" rather than "zero=
").
> >=20
> >     ... since "$x" expands to nothing, and the argument is completely
> >     dropped, causing too few to be passed to -z, causing cmd_test() to
> >     error out early.
> >=20
> >     This is because when variable expansions are processed by make_stri=
ng(),
> >     the expanded results are concatenated back into a new string. Howev=
er,
> >     no quoting is applied when doing so, so any empty variables simply =
don't
> >     generate any parameter when the combined string is parsed again.
> >=20
> >     Fix this by explicitly replacing quoting any argument that was
> >     originally
> >     quoted when re-generating a string from the already-parsed argument
> >     list.
> >=20
> >     This also fixes loss of whitespace in commands such as:
> >=20
> >     setenv space " "
> >     setenv var " 1${space}${space} 2 "
> >     echo ">>${var}<<"
> >=20
> >=20
> > Is there an upstream still for hush, or are we so far away that it
> > doesn't matter? If there is, was this bug fixed there?
>=20
> Well, the comments at the head of the file say it came from Busybox, but
> it's obviously diverged massively since it was imported:
>=20
> $ wc -l busybox/shell/hush.c u-boot/common/hush.c
> 9156 busybox/shell/hush.c
> 3682 u-boot/common/hush.c
> $ diff -u busybox/shell/hush.c u-boot/common/hush.c|wc -l
> 12264
>=20
> Also, the function this patch touches doesn't seem to exist under that
> name any more. From a quick look at the source, I couldn't tell what the
> equivalent is.
>=20
> Perhaps replaying patches to that file in Busybox since the fork might
> be more useful.
>=20
> A quick Google search for "hush" or "hush shell" doesn't seem to yield
> any other alternative upstreams.

For reference the patch is at http://patchwork.ozlabs.org/patch/325023/

Since U-Boot and Barebox are the only users of this particular hush
fork, and from G+ they also have this problem, maybe we can use this as
a starting point of a little more friendly coordination between the
projects?

--=20
Tom

--uquXjW9+X8a4Yk6h
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJTFJGEAAoJENk4IS6UOR1WR9kP+wa9F9FBwi0eIRcFZq2kW5yx
/WZmyxDM8QR9R5YwhU2SEehDdibFqbLoluARNw0btaE4N1gpihMl8dda8vQHdK/V
yLlqEF40O4NP5oFZvyzc7UTfkQMNsIRuu9g/xFwtPQJzJ8WVF+PtRv5cYiu3eE7Q
QjBZPs1gNJ6oqB5oyOnLCC3CFs55XhJBdP7YJCjS+yAe0vRpTccl0eLTT1Y68QM5
Ruz+QV2XkpsaPFdl92SCL9PQYKdw4BUpD9wXS4Pe2ij6MUbhtAHU2Ib77jr4HiQz
DEtOl8a/zP6JDm18yadgqqgijY62dLGG20doKoWywPzkaC12QZ6z6UcU2NBNqTz8
Mog9XreFRZ2487VkYTLpcPAi8aOJEpf1iOgsJxXjH5zrY3mPbArni8JPklzjs/Q+
89qIeKGU8v8hUQebELt4ZgGEy+Bk2lVWxV5tFzpKgqV7mf0Br6ZbGxwOyzyrQQAq
/WD6fmbqN3NPM1rSC4TPvvMTO2Fgo0V2Uf0HjoWDXZHSeGOUzdEJ3ViOBiQV0G2w
h1LiZWdoxeStymkdM5JO3XJ6EVeZpfM34feGndo+wIC2jLE6My61yPQR5pTn3v2P
4gz+p4Csy1nr7gDE72AubmW/mJbZxRMZTMwbRwptZV2UU7Dj0u+nf7qbEMiHksh6
ZE2cPoPcuYKlB2JE70OG
=TZUL
-----END PGP SIGNATURE-----

--uquXjW9+X8a4Yk6h--


--===============6502868440525671855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6502868440525671855==--
