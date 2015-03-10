Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVL7k-0000bv-NZ
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 14:27:09 +0000
Message-ID: <54FEFF1C.7030801@pengutronix.de>
Date: Tue, 10 Mar 2015 15:26:36 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
 <20150310142407.GI30554@ns203013.ovh.net>
In-Reply-To: <20150310142407.GI30554@ns203013.ovh.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1579804615315481997=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/3] sandbox cleanups
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1579804615315481997==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ucOqAbpStSBMOgw1UDMupAsq05gtpmKun"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ucOqAbpStSBMOgw1UDMupAsq05gtpmKun
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/10/2015 03:24 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:36 Thu 05 Mar     , Marc Kleine-Budde wrote:
>> Hey Sascha,
>>
>> three patches for next, please fixup into the for-next/sandbox-of banc=
h.
>=20
> I test the new sanbox on next
>=20
> when you pass -i the file is not present in the /dev now
>=20
> I'm working on secure boot and I use sandbox & qemu to test it
>=20
> can we fix it asap please TOO busy to dig into it

Can you apply there three patches and check if the problem is solved?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--ucOqAbpStSBMOgw1UDMupAsq05gtpmKun
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJU/v8fAAoJECte4hHFiupUIHQP/1ljbAu2Hg9YmuBsgl3WQ0X1
/f0621P+nC3yS+snYMMRpByhaqcbsaTBFnGWyP13xofFRl5IsfXLOpqB4jGAng6A
D7IzbWAyw65g2xY5hhkuLnC1Jzz+TJ00iPQhjyr1Gi8AtA72d09tunSIZVRQljhP
mkT6c4VEZZIR95n1kvgr9E5CQ7QmR+VqXvv1YbwVv/x2/5T6Ew8S/ycM8BcOHNNW
kOT67RRvQjDrXrVOIOjv10oX/dAHzBF/1Uk6IWK83Jrt1QAoIKmnCinjujoYu+bt
dhUaSqBHIwPdz8SLcNp9jy4SE0Gz1Yd5ilppBaydiRJtrVlpwEq72AXDwZKjX41h
WdssxKLYc1u4ltXcrWwT0pjN7mj5Bw5vZiKIGOTkUxHxSOUvSoQW2ZHqjL0txwbG
cIWhlqBIrerZuPCtGjfNLbQvNjktAN8xUMGXUzecSo+Jlryx4ocBRxvGFz8eNhIW
1m868/dNqnqg4srBkPMz7FoXqP/0Hzc//+yT194ffau/XB8IXPYhl5a4JAze9fUA
Dh/nc3E3aADtBb3a3ADD6uz9cEZQ3me5/Jr955CBS+34XFuiTwfVnjoaElw9AGX4
aiPudMJm4BJcAmxvVh4r4J9+i84voj0tRT2FZsveCQvi/s6j+A00HaFmyrDymNY1
0/RL2pav+/JUXbMh2P6C
=JAdF
-----END PGP SIGNATURE-----

--ucOqAbpStSBMOgw1UDMupAsq05gtpmKun--


--===============1579804615315481997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1579804615315481997==--
