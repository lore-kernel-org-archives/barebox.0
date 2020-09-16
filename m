Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kITVG-0007PS-0a
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 09:13:27 +0000
Date: Wed, 16 Sep 2020 11:13:21 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200916091321.posm5idlshqhj6py@pengutronix.de>
References: <20200915205417.15484-1-u.kleine-koenig@pengutronix.de>
 <20200915205417.15484-3-u.kleine-koenig@pengutronix.de>
 <20200916084329.3z6cl7u3s3hfmkrl@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200916084329.3z6cl7u3s3hfmkrl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1451802794683175911=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] LICENSES: add used licenses to make spdxcheck happy
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============1451802794683175911==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t2boszau3e7xqxvz"
Content-Disposition: inline


--t2boszau3e7xqxvz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Roland,

On Wed, Sep 16, 2020 at 10:43:29AM +0200, Roland Hieber wrote:
> On Tue, Sep 15, 2020 at 10:54:12PM +0200, Uwe Kleine-K=F6nig wrote:
> > These are copied verbatim from the Linux kernel (5.9-rc3). From the
> > Linux-syscall-note exception a few items had to be removed from the
> > SPDX-Licenses: list to make spdxcheck happy.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  LICENSES/deprecated/ISC                |  24 ++
> >  LICENSES/deprecated/X11                |  37 ++
> >  LICENSES/dual/Apache-2.0               | 187 +++++++++
> >  LICENSES/exceptions/Linux-syscall-note |  25 ++
> >  LICENSES/preferred/BSD-2-Clause        |  32 ++
> >  LICENSES/preferred/LGPL-2.1            | 504 +++++++++++++++++++++++++
> >  LICENSES/preferred/LGPL-2.1-or-later   | 468 -----------------------
> >  scripts/spdxcheck.py                   |   3 +-
> >  8 files changed, 811 insertions(+), 469 deletions(-)
> >  create mode 100644 LICENSES/deprecated/ISC
> >  create mode 100644 LICENSES/deprecated/X11
> >  create mode 100644 LICENSES/dual/Apache-2.0
> >  create mode 100644 LICENSES/exceptions/Linux-syscall-note
> >  create mode 100644 LICENSES/preferred/BSD-2-Clause
> >  create mode 100644 LICENSES/preferred/LGPL-2.1
> >  delete mode 100644 LICENSES/preferred/LGPL-2.1-or-later
> >=20
> > diff --git a/LICENSES/deprecated/ISC b/LICENSES/deprecated/ISC
> > new file mode 100644
> > index 000000000000..8953c3142079
> > --- /dev/null
> > +++ b/LICENSES/deprecated/ISC
> > @@ -0,0 +1,24 @@
> > +Valid-License-Identifier: ISC
> > +SPDX-URL: https://spdx.org/licenses/ISC.html
> > +Usage-Guide:
> > +  To use the ISC License put the following SPDX tag/value pair into a
> > +  comment according to the placement guidelines in the licensing rules
> > +  documentation:
> > +    SPDX-License-Identifier: ISC
> > +License-Text:
> > +
> > +ISC License
> > +
> > +Copyright (c) <year> <copyright holders>
> > +
> > +Permission to use, copy, modify, and/or distribute this software for a=
ny
> > +purpose with or without fee is hereby granted, provided that the above
> > +copyright notice and this permission notice appear in all copies.
> > +
> > +THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTI=
ES
> > +WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> > +MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FO=
R ANY
> > +SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> > +WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN =
ACTION
> > +OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
> > +CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
> > diff --git a/LICENSES/deprecated/X11 b/LICENSES/deprecated/X11
> > new file mode 100644
> > index 000000000000..fe4353fd0000
> > --- /dev/null
> > +++ b/LICENSES/deprecated/X11
> > @@ -0,0 +1,37 @@
> > +Valid-License-Identifier: X11
> > +SPDX-URL: https://spdx.org/licenses/X11.html
> > +Usage-Guide:
> > +  To use the X11 put the following SPDX tag/value pair into a comment
> > +  according to the placement guidelines in the licensing rules
> > +  documentation:
> > +    SPDX-License-Identifier: X11
> > +License-Text:
> > +
> > +
> > +X11 License
> > +
> > +Copyright (C) 1996 X Consortium
> > +
> > +Permission is hereby granted, free of charge, to any person obtaining a
> > +copy of this software and associated documentation files (the "Softwar=
e"),
> > +to deal in the Software without restriction, including without limitat=
ion
> > +the rights to use, copy, modify, merge, publish, distribute, sublicens=
e,
> > +and/or sell copies of the Software, and to permit persons to whom the
> > +Software is furnished to do so, subject to the following conditions:
> > +
> > +The above copyright notice and this permission notice shall be include=
d in
> > +all copies or substantial portions of the Software.
> > +
> > +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRES=
S OR
> > +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILIT=
Y,
> > +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHAL=
L THE
> > +X CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHET=
HER
> > +IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
> > +CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTW=
ARE.
> > +
> > +Except as contained in this notice, the name of the X Consortium shall=
 not
> > +be used in advertising or otherwise to promote the sale, use or other
> > +dealings in this Software without prior written authorization from the=
 X
> > +Consortium.
> > +
> > +X Window System is a trademark of X Consortium, Inc.
> > diff --git a/LICENSES/dual/Apache-2.0 b/LICENSES/dual/Apache-2.0
> > new file mode 100644
> > index 000000000000..6e89ddeab187
> > --- /dev/null
> > +++ b/LICENSES/dual/Apache-2.0
> > @@ -0,0 +1,187 @@
> > +Valid-License-Identifier: Apache-2.0
> > +SPDX-URL: https://spdx.org/licenses/Apache-2.0.html
> > +Usage-Guide:
> > +  Do NOT use. The Apache-2.0 is not GPL2 compatible. It may only be us=
ed
> > +  for dual-licensed files where the other license is GPL2 compatible.
> > +  If you end up using this it MUST be used together with a GPL2 compat=
ible
> > +  license using "OR".
> > +  To use the Apache License version 2.0 put the following SPDX tag/val=
ue
> > +  pair into a comment according to the placement guidelines in the
> > +  licensing rules documentation:
> > +    SPDX-License-Identifier: Apache-2.0
> > +License-Text:
> > +
> > +Apache License
> > +
> > +Version 2.0, January 2004
> > +
> > +http://www.apache.org/licenses/
> > +
> > +TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION
> > +
> > +1. Definitions.
> > +
> > +"License" shall mean the terms and conditions for use, reproduction, a=
nd
> > +distribution as defined by Sections 1 through 9 of this document.
> > +
> > +"Licensor" shall mean the copyright owner or entity authorized by the
> > +copyright owner that is granting the License.
> > +
> > +"Legal Entity" shall mean the union of the acting entity and all other
> > +entities that control, are controlled by, or are under common control =
with
> > +that entity. For the purposes of this definition, "control" means (i) =
the
> > +power, direct or indirect, to cause the direction or management of such
> > +entity, whether by contract or otherwise, or (ii) ownership of fifty
> > +percent (50%) or more of the outstanding shares, or (iii) beneficial
> > +ownership of such entity.
> > +
> > +"You" (or "Your") shall mean an individual or Legal Entity exercising
> > +permissions granted by this License.
> > +
> > +"Source" form shall mean the preferred form for making modifications,
> > +including but not limited to software source code, documentation sourc=
e,
> > +and configuration files.
> > +
> > +"Object" form shall mean any form resulting from mechanical transforma=
tion
> > +or translation of a Source form, including but not limited to compiled
> > +object code, generated documentation, and conversions to other media t=
ypes.
> > +
> > +"Work" shall mean the work of authorship, whether in Source or Object =
form,
> > +made available under the License, as indicated by a copyright notice t=
hat
> > +is included in or attached to the work (an example is provided in the
> > +Appendix below).
> > +
> > +"Derivative Works" shall mean any work, whether in Source or Object fo=
rm,
> > +that is based on (or derived from) the Work and for which the editorial
> > +revisions, annotations, elaborations, or other modifications represent=
, as
> > +a whole, an original work of authorship. For the purposes of this Lice=
nse,
> > +Derivative Works shall not include works that remain separable from, or
> > +merely link (or bind by name) to the interfaces of, the Work and Deriv=
ative
> > +Works thereof.
> > +
> > +"Contribution" shall mean any work of authorship, including the origin=
al
> > +version of the Work and any modifications or additions to that Work or
> > +Derivative Works thereof, that is intentionally submitted to Licensor =
for
> > +inclusion in the Work by the copyright owner or by an individual or Le=
gal
> > +Entity authorized to submit on behalf of the copyright owner. For the
> > +purposes of this definition, "submitted" means any form of electronic,
> > +verbal, or written communication sent to the Licensor or its
> > +representatives, including but not limited to communication on electro=
nic
> > +mailing lists, source code control systems, and issue tracking systems=
 that
> > +are managed by, or on behalf of, the Licensor for the purpose of discu=
ssing
> > +and improving the Work, but excluding communication that is conspicuou=
sly
> > +marked or otherwise designated in writing by the copyright owner as "N=
ot a
> > +Contribution."
> > +
> > +"Contributor" shall mean Licensor and any individual or Legal Entity on
> > +behalf of whom a Contribution has been received by Licensor and
> > +subsequently incorporated within the Work.
> > +
> > +2. Grant of Copyright License. Subject to the terms and conditions of =
this
> > +   License, each Contributor hereby grants to You a perpetual, worldwi=
de,
> > +   non-exclusive, no-charge, royalty-free, irrevocable copyright licen=
se to
> > +   reproduce, prepare Derivative Works of, publicly display, publicly
> > +   perform, sublicense, and distribute the Work and such Derivative Wo=
rks
> > +   in Source or Object form.
> > +
> > +3. Grant of Patent License. Subject to the terms and conditions of this
> > +   License, each Contributor hereby grants to You a perpetual, worldwi=
de,
> > +   non-exclusive, no-charge, royalty-free, irrevocable (except as stat=
ed in
> > +   this section) patent license to make, have made, use, offer to sell,
> > +   sell, import, and otherwise transfer the Work, where such license
> > +   applies only to those patent claims licensable by such Contributor =
that
> > +   are necessarily infringed by their Contribution(s) alone or by
> > +   combination of their Contribution(s) with the Work to which such
> > +   Contribution(s) was submitted. If You institute patent litigation
> > +   against any entity (including a cross-claim or counterclaim in a
> > +   lawsuit) alleging that the Work or a Contribution incorporated with=
in
> > +   the Work constitutes direct or contributory patent infringement, th=
en
> > +   any patent licenses granted to You under this License for that Work
> > +   shall terminate as of the date such litigation is filed.
> > +
> > +4. Redistribution. You may reproduce and distribute copies of the Work=
 or
> > +   Derivative Works thereof in any medium, with or without modificatio=
ns,
> > +   and in Source or Object form, provided that You meet the following
> > +   conditions:
> > +
> > +   a. You must give any other recipients of the Work or Derivative Wor=
ks a
> > +      copy of this License; and
> > +
> > +   b. You must cause any modified files to carry prominent notices sta=
ting
> > +      that You changed the files; and
> > +
> > +   c. You must retain, in the Source form of any Derivative Works that=
 You
> > +      distribute, all copyright, patent, trademark, and attribution no=
tices
> > +      from the Source form of the Work, excluding those notices that d=
o not
> > +      pertain to any part of the Derivative Works; and
> > +
> > +   d. If the Work includes a "NOTICE" text file as part of its
> > +      distribution, then any Derivative Works that You distribute must
> > +      include a readable copy of the attribution notices contained wit=
hin
> > +      such NOTICE file, excluding those notices that do not pertain to=
 any
> > +      part of the Derivative Works, in at least one of the following
> > +      places: within a NOTICE text file distributed as part of the
> > +      Derivative Works; within the Source form or documentation, if
> > +      provided along with the Derivative Works; or, within a display
> > +      generated by the Derivative Works, if and wherever such third-pa=
rty
> > +      notices normally appear. The contents of the NOTICE file are for
> > +      informational purposes only and do not modify the License. You m=
ay
> > +      add Your own attribution notices within Derivative Works that You
> > +      distribute, alongside or as an addendum to the NOTICE text from =
the
> > +      Work, provided that such additional attribution notices cannot be
> > +      construed as modifying the License.
> > +
> > +    You may add Your own copyright statement to Your modifications and=
 may
> > +    provide additional or different license terms and conditions for u=
se,
> > +    reproduction, or distribution of Your modifications, or for any su=
ch
> > +    Derivative Works as a whole, provided Your use, reproduction, and
> > +    distribution of the Work otherwise complies with the conditions st=
ated
> > +    in this License.
> > +
> > +5. Submission of Contributions. Unless You explicitly state otherwise,=
 any
> > +   Contribution intentionally submitted for inclusion in the Work by Y=
ou to
> > +   the Licensor shall be under the terms and conditions of this Licens=
e,
> > +   without any additional terms or conditions. Notwithstanding the abo=
ve,
> > +   nothing herein shall supersede or modify the terms of any separate
> > +   license agreement you may have executed with Licensor regarding such
> > +   Contributions.
> > +
> > +6. Trademarks. This License does not grant permission to use the trade
> > +   names, trademarks, service marks, or product names of the Licensor,
> > +   except as required for reasonable and customary use in describing t=
he
> > +   origin of the Work and reproducing the content of the NOTICE file.
> > +
> > +7. Disclaimer of Warranty. Unless required by applicable law or agreed=
 to
> > +   in writing, Licensor provides the Work (and each Contributor provid=
es
> > +   its Contributions) on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDI=
TIONS
> > +   OF ANY KIND, either express or implied, including, without limitati=
on,
> > +   any warranties or conditions of TITLE, NON-INFRINGEMENT,
> > +   MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE. You are solely
> > +   responsible for determining the appropriateness of using or
> > +   redistributing the Work and assume any risks associated with Your
> > +   exercise of permissions under this License.
> > +
> > +8. Limitation of Liability. In no event and under no legal theory, whe=
ther
> > +   in tort (including negligence), contract, or otherwise, unless requ=
ired
> > +   by applicable law (such as deliberate and grossly negligent acts) or
> > +   agreed to in writing, shall any Contributor be liable to You for
> > +   damages, including any direct, indirect, special, incidental, or
> > +   consequential damages of any character arising as a result of this
> > +   License or out of the use or inability to use the Work (including b=
ut
> > +   not limited to damages for loss of goodwill, work stoppage, computer
> > +   failure or malfunction, or any and all other commercial damages or
> > +   losses), even if such Contributor has been advised of the possibili=
ty of
> > +   such damages.
> > +
> > +9. Accepting Warranty or Additional Liability. While redistributing the
> > +   Work or Derivative Works thereof, You may choose to offer, and char=
ge a
> > +   fee for, acceptance of support, warranty, indemnity, or other liabi=
lity
> > +   obligations and/or rights consistent with this License. However, in
> > +   accepting such obligations, You may act only on Your own behalf and=
 on
> > +   Your sole responsibility, not on behalf of any other Contributor, a=
nd
> > +   only if You agree to indemnify, defend, and hold each Contributor
> > +   harmless for any liability incurred by, or claims asserted against,=
 such
> > +   Contributor by reason of your accepting any such warranty or additi=
onal
> > +   liability.
> > +
> > +END OF TERMS AND CONDITIONS
> > diff --git a/LICENSES/exceptions/Linux-syscall-note b/LICENSES/exceptio=
ns/Linux-syscall-note
> > new file mode 100644
> > index 000000000000..576d1b529b00
> > --- /dev/null
> > +++ b/LICENSES/exceptions/Linux-syscall-note
> > @@ -0,0 +1,25 @@
> > +SPDX-Exception-Identifier: Linux-syscall-note
> > +SPDX-URL: https://spdx.org/licenses/Linux-syscall-note.html
> > +SPDX-Licenses: GPL-2.0, GPL-2.0+, LGPL-2.1, LGPL-2.1+, GPL-2.0-only, G=
PL-2.0-or-later
> > +Usage-Guide:
> > +  This exception is used together with one of the above SPDX-Licenses
> > +  to mark user space API (uapi) header files so they can be included
> > +  into non GPL compliant user space application code.
> > +  To use this exception add it with the keyword WITH to one of the
> > +  identifiers in the SPDX-Licenses tag:
> > +    SPDX-License-Identifier: <SPDX-License> WITH Linux-syscall-note
> > +License-Text:
> > +
> > +   NOTE! This copyright does *not* cover user programs that use kernel
> > + services by normal system calls - this is merely considered normal use
> > + of the kernel, and does *not* fall under the heading of "derived work=
".
> > + Also note that the GPL below is copyrighted by the Free Software
> > + Foundation, but the instance of code that it refers to (the Linux
> > + kernel) is copyrighted by me and others who actually wrote it.
> > +
> > + Also note that the only valid version of the GPL as far as the kernel
> > + is concerned is _this_ particular version of the license (ie v2, not
> > + v2.2 or v3.x or whatever), unless explicitly otherwise stated.
> > +
> > +			Linus Torvalds
> > +
> > diff --git a/LICENSES/preferred/BSD-2-Clause b/LICENSES/preferred/BSD-2=
-Clause
> > new file mode 100644
> > index 000000000000..da366e2ce50b
> > --- /dev/null
> > +++ b/LICENSES/preferred/BSD-2-Clause
> > @@ -0,0 +1,32 @@
> > +Valid-License-Identifier: BSD-2-Clause
> > +SPDX-URL: https://spdx.org/licenses/BSD-2-Clause.html
> > +Usage-Guide:
> > +  To use the BSD 2-clause "Simplified" License put the following SPDX
> > +  tag/value pair into a comment according to the placement guidelines =
in
> > +  the licensing rules documentation:
> > +    SPDX-License-Identifier: BSD-2-Clause
> > +License-Text:
> > +
> > +Copyright (c) <year> <owner> . All rights reserved.
> > +
> > +Redistribution and use in source and binary forms, with or without
> > +modification, are permitted provided that the following conditions are=
 met:
> > +
> > +1. Redistributions of source code must retain the above copyright noti=
ce,
> > +   this list of conditions and the following disclaimer.
> > +
> > +2. Redistributions in binary form must reproduce the above copyright
> > +   notice, this list of conditions and the following disclaimer in the
> > +   documentation and/or other materials provided with the distribution.
> > +
> > +THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "A=
S IS"
> > +AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, =
THE
> > +IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PUR=
POSE
> > +ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS=
 BE
> > +LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
> > +CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
> > +SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINE=
SS
> > +INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
> > +CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
> > +ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF=
 THE
> > +POSSIBILITY OF SUCH DAMAGE.
> > diff --git a/LICENSES/preferred/LGPL-2.1 b/LICENSES/preferred/LGPL-2.1
> > new file mode 100644
> > index 000000000000..1ac18a436140
> > --- /dev/null
> > +++ b/LICENSES/preferred/LGPL-2.1
> > @@ -0,0 +1,504 @@
> > +Valid-License-Identifier: LGPL-2.1
> > +Valid-License-Identifier: LGPL-2.1+
> > +Valid-License-Identifier: LGPL-2.1-or-later
> > +SPDX-URL: https://spdx.org/licenses/LGPL-2.1.html
> > +Usage-Guide:
> > +  To use this license in source code, put one of the following SPDX
> > +  tag/value pairs into a comment according to the placement
> > +  guidelines in the licensing rules documentation.
> > +  For 'GNU Lesser General Public License (LGPL) version 2.1 only' use:
> > +    SPDX-License-Identifier: LGPL-2.1
> > +  For 'GNU Lesser General Public License (LGPL) version 2.1 or any lat=
er
> > +  version' use:
> > +    SPDX-License-Identifier: LGPL-2.1+
>=20
> Oh, is this still the preferred way in Linux? The + syntax was
> deprecated by SPDX [1] in favour of the -only and -or-later variants.
> (Also see above in the Linux-syscall-note.)
>=20
> Or is this the part to make spdxcheck happy?

I admit I didn't adapt the Usage-Guide. For my patches to mark files
using SPDX I used the -or-later and -only suffixes, but maybe not 100%
consistently. Just noticed that for rsatoc I should have changed
GPL-2.0+ to GPL-2.0-or-later.

I will rework that.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--t2boszau3e7xqxvz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl9h1y4ACgkQwfwUeK3K
7AnS7ggAidUepMtR9V2PnedMcXkHjnDZhyM7b8I2Fcy2SxXhFQSaMjmg4Cu4VcD9
abaVulSkjXOIE8ZvFUYPvOS+JV2g5RaS9qS0zJPP+CVjqD4zjhNrYJ9/6YpVhpP7
IA+IpMBT+44LcoZbaiw7Zyr2tmUDZdYnShQ+KDlxOvRcEjvIHpPJ1oki5LNEhfGh
nrMirsVn+dFCbKm8jCsPy9jOr4m+Db2eucZzyU/H6Xp1iwluHkMFAQBHL0luVTKl
VetSnPvpLm5MP6fcbn0ErKyeDJz4snb0dgHvWim5rEgIga1ej92wRhvjxe1txOyw
3Y66eoHuUCFqTY3w9j9XNE4iED23kA==
=OnLu
-----END PGP SIGNATURE-----

--t2boszau3e7xqxvz--


--===============1451802794683175911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1451802794683175911==--
