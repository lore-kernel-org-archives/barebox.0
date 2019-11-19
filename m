Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX01P-00073y-3S
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 09:42:08 +0000
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
 <20190819133847.17015-7-s.hauer@pengutronix.de>
 <27e33ef9-bb89-dcd0-9829-6dd3036eeae9@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <98fca2ef-9c7b-0570-ef4d-11ff92b33fa4@rempel-privat.de>
Date: Tue, 19 Nov 2019 10:41:55 +0100
MIME-Version: 1.0
In-Reply-To: <27e33ef9-bb89-dcd0-9829-6dd3036eeae9@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2329080311293809803=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/8] ARM: Add generic device tree 2nd stage support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2329080311293809803==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="cCzus8UMWtAQaeFUuqHkE3OHnunUpQ8qm"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--cCzus8UMWtAQaeFUuqHkE3OHnunUpQ8qm
Content-Type: multipart/mixed; boundary="an74WCwCbjXvyMTIOeOisF2xCbH0h5hYl"

--an74WCwCbjXvyMTIOeOisF2xCbH0h5hYl
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 19.11.19 um 09:26 schrieb Ahmad Fatoum:
> Hello Sascha,
>=20
> On 8/19/19 3:38 PM, Sascha Hauer wrote:
>> +void dt_2nd_aarch64(void *fdt)
>> +{
>> +	unsigned long image_start =3D (unsigned long)_text + global_variable=
_offset();
>> +
>> +	arm_setup_stack(image_start);
>=20
> Shouldn't we rather place the stack somewhere beyond the end of the bar=
ebox image
> instead of assuming that we can access the memory before the start?=20
>=20
> I am asking because I am testing use of the generic ARM board as defaul=
t
> second stage image for the multi-image AT91s. The board specific entry =
point
> generates only the PBL, which runs in SRAM to do DRAM setup and chainlo=
ads
> the generic dt barebox from MMC to start of SDRAM and then calls it alo=
ng
> with the dtb.

Hm.. Is it possible that you can get an exception vector in the star of S=
DRAM?

> It works so far and I like that I now can have the same second stage ba=
rebox
> for all multi-image targets. (And one could even "falcon"-boot that way=
).
> What do you think?>
>> +ENTRY_FUNCTION(start_dt_2nd, r0, r1, r2)
>> +{
>> +	unsigned long image_start =3D (unsigned long)_text + global_variable=
_offset();
>> +
>> +	arm_setup_stack(image_start);
>=20
>=20
> Ditto.
>=20
> Cheers
> Ahmad
>=20


--=20
Regards,
Oleksij


--an74WCwCbjXvyMTIOeOisF2xCbH0h5hYl--

--cCzus8UMWtAQaeFUuqHkE3OHnunUpQ8qm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAl3TuOMACgkQdQOiSHVI
77S2HQf+MS3EldlPyfYPxanPO0yU6y5SllUM6izSKBeJXhXPIF20jKv6E4mwTsYV
qiTsPU9OSwrWz4cepKoJV+p1OCPFE79JiLZQbWCegf5gBfBQuGW/HgvFZVxlUUzz
nusR3i/GFjAX97EYF6gD1kp1BUFD6g+2xGp4SseVkFZzWGH0qJRfQQDBHobQMyHe
NXOjSC5kMQP7jg9HhG6Qi0d3Lq27eYLgF/zFuCRvu3EgjqADHADbeCeWzgOW4+3x
URYBdoRDnMDI3EQHG9XSIRfKNXvpq0N/IscpU2U5ze3fwIJwE6StAk5Ex7u/4WNc
gCx8qaTC0Cs4f+FkX5iTIm9xk/b1ew==
=iAb3
-----END PGP SIGNATURE-----

--cCzus8UMWtAQaeFUuqHkE3OHnunUpQ8qm--


--===============2329080311293809803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2329080311293809803==--
