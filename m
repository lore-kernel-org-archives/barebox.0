Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhbW0-0003VY-Oi
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 10:22:53 +0000
Message-ID: <552B98CE.8080306@pengutronix.de>
Date: Mon, 13 Apr 2015 12:22:06 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1427904855-32548-10-git-send-email-mkl@pengutronix.de>
 <1427917169-27278-1-git-send-email-mkl@pengutronix.de>
 <20150413101906.GP9742@pengutronix.de>
In-Reply-To: <20150413101906.GP9742@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6025367887112400678=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] images: add HABv4 support for i.MX6
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6025367887112400678==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Dx80d75KLmbbTW1dqoi2MIEGvhie4HKGP"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Dx80d75KLmbbTW1dqoi2MIEGvhie4HKGP
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/13/2015 12:19 PM, Sascha Hauer wrote:
> Looks mostly fine. Some minor stuff inside, mostly typos.

Thnx, will fix.

>> diff --git a/images/Makefile.habv4 b/images/Makefile.habv4
>=20
> Maybe name this Makefile.imxhabv4 to make clear this file is about i.MX=
=2E

Okay, if someone wants to add mx28 support it probably will go here, too.=


Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--Dx80d75KLmbbTW1dqoi2MIEGvhie4HKGP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVK5jUAAoJECte4hHFiupUXdAP/1mQPxDNyttAW/G9pqyJcCqP
JYhW+BNFQh4yohQjILo0EIBKOfwv0tMZ1HaXQtcmaktxgXnf2W5XU0fUVr56YmXj
UndpK4cp/i6PiVCnroyxb66tCU5gsRi+yFR7HPkoeaokyLFO9hUnELVPdetOUuie
lAUDwhOrcJXfzRLf1d+2/tXNko3yHrLhoi+aTmZGo9YDoQN4JJlLUkxW1Vps7MIM
JvY0OA+QHhi9SOJMeDFAbBbUEdj9aqLEc6TLe2JoOqXSrSqDcVzxtkHhv7ZOgjGR
QJalariJ+3znqGdBkKlCePkBkebH2xsWkKxI9P2RrNBY4qOwkvcUGjIo2pOwj33v
mQrW5bH3PJXx5taNOI8BRmvr1Bg9B0jBzkDxmIlDbMyY8+//N9BtXxCOykNV8Ftd
etzZdroHTIH9IzgtWEjEn22JBADhUkMG84s8dLFmVmXw14zRMYYeP4Tdxj1G7NAA
PsQJ6YoQiwOqXMUuh/F+G5H5Vr0icqIfswBAuYT7qBlPAesQbW+RPMrWr41mMPmx
eCmvdmcXexIE2BdZPC/QWFgf1UQs1jolWun4WMFR24H+yyBkn7yz0qQ72mF0iAgV
WfHBbg7XuJA9cR6cf9G6Arnnre14YFQOsIpCUcuwg9PfWctyYt8y+vg5UE/+Pk84
vNNbgPbkuldLpJuIln9u
=j2Hn
-----END PGP SIGNATURE-----

--Dx80d75KLmbbTW1dqoi2MIEGvhie4HKGP--


--===============6025367887112400678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6025367887112400678==--
