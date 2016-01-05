Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGOvQ-00026T-F8
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 10:33:13 +0000
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-4-git-send-email-mkl@pengutronix.de>
 <CAGm1_kunZqatbVbE3AgS-wQdx-gUqeShE2PrHYwxgLX74DRRLw@mail.gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <568B9BCD.9070509@pengutronix.de>
Date: Tue, 5 Jan 2016 11:32:45 +0100
MIME-Version: 1.0
In-Reply-To: <CAGm1_kunZqatbVbE3AgS-wQdx-gUqeShE2PrHYwxgLX74DRRLw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7925169712620211546=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] bootm: add initial FIT support
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>, kernel@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7925169712620211546==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="33otTVOX79iJJ2L6kSfIjGRlxeRuv0gF9"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--33otTVOX79iJJ2L6kSfIjGRlxeRuv0gF9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 01/05/2016 11:28 AM, Yegor Yefremov wrote:
> Hi Marc,
>=20
> thanks for reposting the patches.
>=20
> On Tue, Jan 5, 2016 at 9:11 AM, Marc Kleine-Budde <mkl@pengutronix.de> =
wrote:
>> From: Jan Luebbe <jlu@pengutronix.de>
>>
>> This implementation is inspired by U-Boot's FIT support. Instead of
>> using libfdt (which does not exist in barebox), configuration signatur=
es
>> are verified by using a simplified DT parser based on barebox's own
>> code.
>>
>> Currently, only signed configurations with hashed images are supported=
,
>> as the other variants are less useful for verified boot. Compatible FI=
T
>> images can be created using U-Boot's mkimage tool.
>=20
> What about unsigned images?

That's not our use case. We use plain zImages instead.

> I also get: unsupported algo crc32
> Is it intended to be supported?

Not for our usecase - feel free to add crc32 support.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--33otTVOX79iJJ2L6kSfIjGRlxeRuv0gF9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWi5vNAAoJEP5prqPJtc/HYYwIAKWSH1bscJe0/iyotTM4+ZhB
i+nPmwemSeE6dpwEslfCme6A/tJAxCyLqsHzd7KeDzCa3apsFH1T1LXq5DE+oCdH
revSGsiOGkNmp9O+5PLlKTWWFTY5I2mqQpP886LjEMa3YkCJwRSQKEZtFalaIKBy
3G2uZjgsY+7GQIN7XrzfUWdWqBUcaggTuKl4HKD5WxUx4Syzp8NTZDFEW3GOCJsW
ZhmCVXI5FGOPLjL5yhbPNawIn0vWKE4UD3boyWDeiz8neAxIEvl60AojsPJlea8o
bkGKAXeEeAqvnNhShNDWnFuJ74jYbgEnzvlhDIH/9xB6jnJ8updT4Z56nQ0fp+8=
=5wN6
-----END PGP SIGNATURE-----

--33otTVOX79iJJ2L6kSfIjGRlxeRuv0gF9--


--===============7925169712620211546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7925169712620211546==--
