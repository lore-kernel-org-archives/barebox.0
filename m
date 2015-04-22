Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YkpQM-0000dZ-RF
 for barebox@lists.infradead.org; Wed, 22 Apr 2015 07:50:23 +0000
Message-ID: <553752A1.8070701@pengutronix.de>
Date: Wed, 22 Apr 2015 09:49:53 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1429519419-20325-1-git-send-email-mkl@pengutronix.de>
 <1429519419-20325-3-git-send-email-mkl@pengutronix.de>
 <20150420111302.GN6325@pengutronix.de>
In-Reply-To: <20150420111302.GN6325@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3823856684895027308=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] timeout: factor out wait-for-key-press loop
 into separate file
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3823856684895027308==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="AMkrh2pNNKiDOispAH1GQR26DUpgTi3m8"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--AMkrh2pNNKiDOispAH1GQR26DUpgTi3m8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/20/2015 01:13 PM, Sascha Hauer wrote:
> On Mon, Apr 20, 2015 at 10:43:37AM +0200, Marc Kleine-Budde wrote:
>> This patch factors out the wait-for-key-press loop from the shell comm=
and
>> "timeout" into a sparate file, so that it can be used from C, too.
>>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  commands/Kconfig         |  1 +
>>  commands/timeout.c       | 62 ++++++++++-----------------------------=
------
>>  common/Kconfig           |  3 +++
>>  common/Makefile          |  1 +
>>  common/simple_timeout.c  | 66 +++++++++++++++++++++++++++++++++++++++=
+++++++++
>>  include/simple_timeout.h | 11 ++++++++
>>  6 files changed, 95 insertions(+), 49 deletions(-)
>>  create mode 100644 common/simple_timeout.c
>>  create mode 100644 include/simple_timeout.h
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 847ff76d1d8b..1c9083381fac 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -1487,6 +1487,7 @@ config CMD_READLINE
>>  config CMD_TIMEOUT
>>  	tristate
>>  	prompt "timeout"
>> +	select SIMPLE_TIMEOUT
>=20
> Since the linker throws away unused functions anyway I think we don't
> need an option for this.
>=20
>> +#include <clock.h>
>> +#include <command.h>
>> +#include <errno.h>
>> +#include <simple_timeout.h>
>> +#include <stdio.h>
>> +
>> +int is_simple_timeout(int timeout_s, unsigned flags, char *out_key)
>=20
> I don't like the name very much since we already have a is_timeout
> function which does something completely different. Also is_xxx_timeout=

> seems to imply that this function doesn't wait but only returns a
> status.
>=20
> How about console_countdown() or similar?

What about the return value?

Return -EINTR + set out_key on interruption by user, return 0 otherwise?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--AMkrh2pNNKiDOispAH1GQR26DUpgTi3m8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVN1KiAAoJECte4hHFiupUAwAP+wUVN+jihxlxRpwOkI48Uf83
kP5p/zTIA+ILDG3TTNUQP2jWo2uK34QeTeMROgUqqdwKDOZ2TWdIkqdjind6Navh
zUhcL49RAM8c89wDPSkcc7jUS+gw5lHM2kGCUyz+cuWxXiouA5E/4qZt1wVYVdwD
t86ZJaNUYo7moTa3xOTBtLs/77bsdCaEN0pAecVsQ9UebjFF2cx9cluL8fLnwmJ6
onaaj578I3pGCZHWmhF7bKN4+fAi1v2vcoog3VgfdOI3AahGSrAnDQ7GcHQz2QHs
+VG0g7aiCivfVTMjqguR/zrF1MrYsVnqBd/J0ztH7VT1NvoznWCoaz6HLFpDbjNj
0v9Mh4xpfQDNBDMiZQp5cshH51ogcnnqaL5idsPH8oggJBmE2kIV88pffu0yNLmP
gRM3enWU9ud8mcbO0Tk31w34Cr5n3oF83g6i4NyP3Y1Vx9liiHXKlVGfiJd9i1mL
Tttrs9OBuzPPqjwX5EN3K9vbQhXz0FPLUMh3tGCgSTzAno0oHkMFD2KpCKhMixm0
KtEVMKwm0DsfBvqkJfFNyPjkUPhgXPBQF19dU+8XM0/pUlPFiNk/J+1r46h9IvNl
LyRsPHtZAdAFnb+5gNiCd29DHbOYgxF5VL4TWpa87AC69v73zCOJPdykHNmMaB2N
tIcZ19zVWXgIr7q+Uytq
=8xWJ
-----END PGP SIGNATURE-----

--AMkrh2pNNKiDOispAH1GQR26DUpgTi3m8--


--===============3823856684895027308==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3823856684895027308==--
