Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSuZa-00033i-VZ
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 21:41:51 +0000
Message-ID: <54F62A7C.5050603@pengutronix.de>
Date: Tue, 03 Mar 2015 22:41:16 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
 <1425384899-18809-2-git-send-email-mkl@pengutronix.de>
 <20150303204354.GV11010@pengutronix.de>
In-Reply-To: <20150303204354.GV11010@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0744358070681886296=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 01/13] sandbox: add support to pass dtb to barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0744358070681886296==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="v76NOg3cot1gd3rqP1DSNwPUwaaX09OoU"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--v76NOg3cot1gd3rqP1DSNwPUwaaX09OoU
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/03/2015 09:43 PM, Sascha Hauer wrote:
> On Tue, Mar 03, 2015 at 01:14:47PM +0100, Marc Kleine-Budde wrote:
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  arch/sandbox/Kconfig                           |  1 +
>>  arch/sandbox/board/Makefile                    |  1 +
>>  arch/sandbox/board/dtb.c                       | 57 +++++++++++++++++=
+++++++++
>>  arch/sandbox/mach-sandbox/include/mach/linux.h |  2 +
>>  arch/sandbox/os/common.c                       | 47 +++++++++++++++++=
+++-
>>  5 files changed, 107 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/sandbox/board/dtb.c
>>
>> diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
>> index 707fca3dc391..c21e517adf9b 100644
>> --- a/arch/sandbox/Kconfig
>> +++ b/arch/sandbox/Kconfig
>> @@ -1,5 +1,6 @@
>>  config SANDBOX
>>  	bool
>> +	select CONFIG_OFTREE
>=20
> Must be OFTREE. Fixed.

Doh!

Tnx,
Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--v76NOg3cot1gd3rqP1DSNwPUwaaX09OoU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJU9iqAAAoJECte4hHFiupU+AEP/jQdVD5N09Mxj+crUrS5EoZb
uNAXjqUmL0q+m5A36kR0pxK43+/o8E5rN7b8sCn79k0MyWj1B0+JJ4OjGquKtLf1
lfYmpe0UvaCUMZbxL2lzL4/wh+r/BTi7M1hK13f+q5fwEQFwwtxz1tXS4PbATi/x
tUVQ2aSSW9yB3Efqk3oAlaOl1V9ZitHiiPyjd7HBuZZ3MPgs8gXL9utzV0nS1kl4
/0/kZQ9WdTn3WgUyE+ekupVrT9fQgg3pZJOuxJeVLvSVcoqDnXErFkxXsBwArSxu
bg5LG+gvRZi5yCLu+R++Zk4zFCzjdooUqfSCrDfWFaQO+Kiajo0q+a6goaAxCxZJ
YGiTveWjU6LlBhL72/ffJJGVopD+bv7D3nfWHfzgsmyTg/u7V3scACddsL3208eJ
OrN9cWKL+FYrOlXGRutXMoVWm9QqRhnzmWVGQn49o3qnWzXDB7+gImorlD4+WIw/
09a2fGjMvXth0n2O7iw+/F1p5fm9JXcklHmjJ0UIoFpTKTId29RJaT4vzyw9he8+
He3R7Hk7Tk/iKIjl1G+EWDME69eFbCFYjJbo0pX34yrQvg2KEV3qCCXKJoL6YJdG
gEeY7yu68lZaEwC7EoCOJbRVN7gcibdoovH3j5e/vZM+97JgXwEL/hC1VpHR577g
XmizNT0sBBpLzyGPi6TH
=6xAn
-----END PGP SIGNATURE-----

--v76NOg3cot1gd3rqP1DSNwPUwaaX09OoU--


--===============0744358070681886296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0744358070681886296==--
