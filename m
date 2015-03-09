Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YUyzy-0003ch-Dy
 for barebox@lists.infradead.org; Mon, 09 Mar 2015 14:49:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=bjornoya.do.blackshift.org)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mkl@pengutronix.de>) id 1YUyzb-0007X4-H4
 for barebox@lists.infradead.org; Mon, 09 Mar 2015 15:49:15 +0100
Received: from [IPv6:2001:6f8:105b:1122:a87d:7344:ab4e:ae52]
 (dyn-2001-06f8-105b-1122-a87d-7344-ab4e-ae52.pool.blackshift.org
 [IPv6:2001:6f8:105b:1122:a87d:7344:ab4e:ae52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 (Authenticated sender: frogger)
 by bjornoya.do.blackshift.org (Postfix) with ESMTPSA id 28B1E615DC
 for <barebox@lists.infradead.org>; Mon,  9 Mar 2015 15:49:15 +0100 (CET)
Message-ID: <54FDB2EA.30104@pengutronix.de>
Date: Mon, 09 Mar 2015 15:49:14 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1425912304-9998-1-git-send-email-mkl@pengutronix.de>
 <54FDB21A.3040402@pengutronix.de>
In-Reply-To: <54FDB21A.3040402@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2962289038988491051=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] paramter: The dev_add_param_*() return ERR_PTR(),
 change no-ops to return ERR_PTR(-ENOSYS) instead of NULL
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2962289038988491051==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="xcIW6G9Unhmi1NtxXuvwVgqmcBtRsFKgW"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--xcIW6G9Unhmi1NtxXuvwVgqmcBtRsFKgW
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/09/2015 03:45 PM, Marc Kleine-Budde wrote:
> On 03/09/2015 03:45 PM, Marc Kleine-Budde wrote:
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  include/param.h | 18 +++++++++---------
>>  1 file changed, 9 insertions(+), 9 deletions(-)
>>
>> diff --git a/include/param.h b/include/param.h
>> index 53bee541100e..bd2c0789968a 100644
>> --- a/include/param.h
>> +++ b/include/param.h
>> @@ -97,7 +97,7 @@ static inline struct param_d *dev_add_param(struct d=
evice_d *dev, char *name,
>>  		const char *(*get)(struct device_d *, struct param_d *p),
>>  		unsigned long flags)
>>  {
>> -	return 0;
>> +	return ERR_PTR(-ENOSYS);

The function returned a plain integer 0 instead of a NULL pointer, so
this patch is correct.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--xcIW6G9Unhmi1NtxXuvwVgqmcBtRsFKgW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJU/bLqAAoJECte4hHFiupUcvsP+wTrb0ZHU9x8OAfQ/iMI1Hk2
kIl1eGG/6A8h+vqxtKlU6EJb8aThc6EA0/KS6pcdbwdVOTUhF01+H7bZwp4YhH1a
U6/Jg8+w0fguK23lhfALRnru+6OsC/efkSKQKOxxECb13Fuo4qbzCbbo5IJZY2Ml
aNjLIY9ZLU8SC/tO0i5+zCJa2u/qteKgczTm47j9MO8RLau7egOxcL3dJHx39wiU
CHrMzpKDOYs7JyfbYsyM7bAbJybCLpkYtcW3SQmV14mokNreQCfj8dJebb/6JCG+
kJ5mumSs4Btth6YuuVWA/gRL67ycnsTPxJtY0Uk4A1nf5GvdVrN/k6diqaroLhv2
UNxm1TJ+J8T/5jfddtAUHhEUQ5Lro7UCurfj3MA4lfBQMoolZT3xy6UYLuWkqaMs
PCOXie9up6Rupz27efv+Mu1PlMB/k1crlMtCOXsqscNywcWpkm0K4v/hA1hMJnQP
D5nc25cMI+WKWKqEJ6CbFYj/L7ePL1jObsZ81WYLx96Gc4v2n57jhcOuyPegf9Gw
DzLXOJQMPfb9xvnlHF1UHnzxXdrGEsDmdZJNDEd16H5bZ9hrOto69rqO1po2yVQh
aXpEXaGPoLKgE7HLGY9Croab3oNo/ucUSsCXGquEpjxtC3q8t5Bhv3zLegCkNg9l
mZhtSO1WP5rl7jEEHgxM
=68fl
-----END PGP SIGNATURE-----

--xcIW6G9Unhmi1NtxXuvwVgqmcBtRsFKgW--


--===============2962289038988491051==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2962289038988491051==--
