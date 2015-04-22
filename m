Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ykq0p-0002nE-WB
 for barebox@lists.infradead.org; Wed, 22 Apr 2015 08:28:05 +0000
Message-ID: <55375B75.8050905@pengutronix.de>
Date: Wed, 22 Apr 2015 10:27:33 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1429519419-20325-1-git-send-email-mkl@pengutronix.de>
 <1429519419-20325-3-git-send-email-mkl@pengutronix.de>
 <20150420111302.GN6325@pengutronix.de> <553752A1.8070701@pengutronix.de>
 <20150422082313.GE6325@pengutronix.de>
In-Reply-To: <20150422082313.GE6325@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3822854683667787779=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] timeout: factor out wait-for-key-press loop
 into separate file
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3822854683667787779==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="c9Eu8Wac05tdjk5PQjUXRTEVNTmAkpRrh"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--c9Eu8Wac05tdjk5PQjUXRTEVNTmAkpRrh
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/22/2015 10:23 AM, Sascha Hauer wrote:
>> What about the return value?
>>
>> Return -EINTR + set out_key on interruption by user, return 0 otherwis=
e?
>=20
> Sounds good.

See v2.

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--c9Eu8Wac05tdjk5PQjUXRTEVNTmAkpRrh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVN1t1AAoJECte4hHFiupUTkMQAINl4psb3Y9xhwPmw1y5+NHp
CB/Vfp6+kery/P69oLb2VkcZufAKoTlxda600xmB0a2ChoKxDP9k5EpL4hJt4Z8c
kouQx4X/6+Mn0Kqi7bFxn0bauTrDVzmH63sLI0J/6mEnWExjROQ5DzLUqtBESzW5
UBvlm37qQPDOdYCKNTVALefCbggpcEXPs8fPrPEv7Gegv9fmcVUiEguBh8zMeA3q
hE2kMs3BebDoQerlf1PzI06uqOfmep21MVWXQlmWz4wAmQILMfyW8ONu4HkG2jWi
gQKNRI4S+NnLEVZcdXUDAVhWx96Kb3aKKyc9H/YbB90T3Jt7yXggBuZ4ErlVUzbp
kuqqUf4WSSEbY+C4SurThc0dYnOIrTjWlPU+atKan6yUNLogHco4080BCm6PR90n
MKUpzxXU6MZE6LJOHN4Sh+x/Y/Dh7qP/+PVJKL16V22Uez2kRUnt8yKsmQbCgSEt
RuCfXo5FBx1AtRzOcOxzQBqxK8vWswI/0z0S90ob2vgppFGymagxCweZ5G5dVt+Z
zMcKgmr3wOkPhJoIe4AeN4YiUngKT/glDxDJadMuogT9AJmEB0zA9KsW2eGMYcTr
/WhsStF70K0LB86Ni5xUnX4gqXNz+L8FYovLSNHwIcOq4qbvKYQXXcrGXX/zcOkr
JIo5kly4eoU4nY+qjmBl
=gSwS
-----END PGP SIGNATURE-----

--c9Eu8Wac05tdjk5PQjUXRTEVNTmAkpRrh--


--===============3822854683667787779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3822854683667787779==--
