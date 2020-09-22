Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKkyr-0002T6-9R
 for barebox@lists.infradead.org; Tue, 22 Sep 2020 16:17:26 +0000
Date: Tue, 22 Sep 2020 18:17:22 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20200922161722.GA30919@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
 <20200918084532.2794-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200918084532.2794-4-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6981201766211794309=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/9] Kallsyms: Also resolve global variables
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>


--===============6981201766211794309==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Fri, Sep 18, 2020 at 10:45:26AM +0200, Sascha Hauer wrote:
>Increase the area used for resolving symbols so that global variables
>can also be resolved to names.
>
>Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>---
> common/kallsyms.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/common/kallsyms.c b/common/kallsyms.c
>index e15dec5dfc..2c16ab2884 100644
>--- a/common/kallsyms.c
>+++ b/common/kallsyms.c
>@@ -15,8 +15,8 @@ extern const unsigned long kallsyms_markers[] __attribut=
e__((weak));
>
> static inline int is_kernel_text(unsigned long addr)
> {
>-	if ((addr >=3D (unsigned long)_stext && addr <=3D (unsigned long)_etext))
>-		return 1;
>+        if (addr >=3D (unsigned long)_stext && addr <=3D (unsigned long)_=
end)
>+                return 1;

tabs vs spaces.

> 	return 0;
> }
>
>--=20
>2.28.0

mgr

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl9qI48ACgkQC+njFXoe
LGQ57w//WkkF9Dyfb1ykxTqM30F1dlNeEhRyrlvHAFSra2ejc/qNJWU3dMuQdnU7
pS+feMOrS1CMWmjC9XwUtr+mlfU2OhDi97MxkY13nwoW5mge0nc3F7Yok/c3WDkq
5q+v3WaP2zLMr2DLxpdKOHi7S1A/XNdNk+cCOApBeHrE6mecHO1ayLQkHOXLw3iG
CTiiIJwgeTgBXTYwuFM4EJOgCAkYjgwq/XMIW74exCatI7ukRHwt+bAoJNd8xd7K
00LE4U6j3aETAFYcGItHGaHFmfbv3eVlCqybtwSNch/6bnMKIwbMQ6zXGU3P0JRv
euwl5VjzdNiqimxCT1MMb7My2H1PIgjfEFglNEBhOv21+MojwZOAaylu8P/YMJk4
SPoR/XvVR5SAkcfv4aaUOq1vBFum6ZDC0GNXPChIEgEvlkLM3xWEdVvoa/DdYM4u
k/Q3fbGArSdt5T64+E4QUZTFN60XfPTO9F7vr8yhke32qH/BKxTSoYKsepXCOOuo
M5oP0DlMhOMYPYG0jUxcTj4B1W4czjHlw2ZycqpFKGSE+4F653F/t058oZQYXib6
W9qD2INjyY08lzxp+6Vr4nYoVhdPdyBYfFY08sLuDJa/yL+5gOb88y3uKwVbCzEV
hFUnzl66WOAFS2K54EzPiURGYHZR5EKfA9hG8bpo+GWiIisIECI=
=lsDI
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--


--===============6981201766211794309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6981201766211794309==--
