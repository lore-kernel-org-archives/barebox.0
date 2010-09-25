Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OzeZq-0003cm-1K
	for barebox@lists.infradead.org; Sat, 25 Sep 2010 23:54:48 +0000
Message-ID: <4C9E8BBC.70103@pengutronix.de>
Date: Sun, 26 Sep 2010 01:54:36 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <201009251921.59904.jbe@pengutronix.de>
	<20100925200048.GH2111@game.jcrosoft.org>
In-Reply-To: <20100925200048.GH2111@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0930133201=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Fix default baudrate setting
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0930133201==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig980B4AE102DDBF92C5A46126"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig980B4AE102DDBF92C5A46126
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 09/25/2010 10:00 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 19:21 Sat 25 Sep     , Juergen Beisert wrote:
>> commit 604c99039f873952e252a5933309fc8e59b603db
>> Author: Juergen Beisert <jbe@pengutronix.de>
>> Date:   Sat Sep 25 19:18:25 2010 +0200
>>
>>     Fix default baudrate setting
>>    =20
>>     The menu entry to set the default baudrate (CONFIG_BAUDRATE) makes=
 no sense,
>>     as long as its content is not used. This patch makes barebox using=
 the setting
>>     again.
>>    =20
>>     Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
>>
>> diff --git a/common/console.c b/common/console.c
>> index 204a08c..71fa88f 100644
>> --- a/common/console.c
>> +++ b/common/console.c
>> @@ -140,9 +140,12 @@ int console_register(struct console_device *newcd=
ev)
>>  	dev->type_data =3D newcdev;
>>  	register_device(dev);
>> =20
>> +#define xstr(s) str(s)
>> +#define str(s) #s
> can we put those macros in a more generic place?

The kernel calls this stringify, see [1]

g'night,
Marc

[1] http://lxr.linux.no/linux+v2.6.35.5/include/linux/stringify.h
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig980B4AE102DDBF92C5A46126
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAkyei8AACgkQjTAFq1RaXHPZpgCfQqiBzsKAQKxUlrAJW4aZZ5Nr
xCMAnAh1MfFKV0Z9vmADd+t0OksOs4lj
=7yJv
-----END PGP SIGNATURE-----

--------------enig980B4AE102DDBF92C5A46126--


--===============0930133201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0930133201==--
