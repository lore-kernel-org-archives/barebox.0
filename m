Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxrCO-0000dJ-CF
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 09:03:10 +0000
References: <1043852685.129432.1506673503086@mail.vodafone.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <193a09a8-9154-fd7d-aff4-711b91a67127@rempel-privat.de>
Date: Fri, 29 Sep 2017 11:02:32 +0200
MIME-Version: 1.0
In-Reply-To: <1043852685.129432.1506673503086@mail.vodafone.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4415383670426989255=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: how to persistently save config values
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4415383670426989255==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="q6aHkNKNClE3EwjJloAvGWw79BjkT5VKp"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--q6aHkNKNClE3EwjJloAvGWw79BjkT5VKp
Content-Type: multipart/mixed; boundary="rARAVM7bia1ncsWrMWwmprmGPRD2N9bUt";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, barebox@lists.infradead.org
Message-ID: <193a09a8-9154-fd7d-aff4-711b91a67127@rempel-privat.de>
Subject: Re: how to persistently save config values
References: <1043852685.129432.1506673503086@mail.vodafone.de>
In-Reply-To: <1043852685.129432.1506673503086@mail.vodafone.de>

--rARAVM7bia1ncsWrMWwmprmGPRD2N9bUt
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Hi,
http://www.barebox.org/doc/latest/user/booting-linux.html#network-boot

Am 29.09.2017 um 10:25 schrieb Giorgio Dal Molin:
> Hi,
>=20
> I'm working on a new project with an embedded system based on
> a standard intel PC.
>=20
> I already have a barebox.efi running on the system; my problem is now
> how to permanently save some variables so that, on restart, they can be=

> automatically restored by my '/env/bin/init' script.
> The variables I mean are for example 'eth0.ipaddr' or 'eth0.serveraddr'=
=2E
> A solution I used in the past was a custom 'env_dump' command that gene=
rated
> a config text file like:
>=20
> eth0.ipaddr=3D10.0.0.15
> eth0.serveraddr=3D10.0.0.1
> ...
>=20
> Then I saved the file with 'saveenv' and restored it back with 'loadenv=
'.
>=20
> Is there a better way to solve this problem ? I don't like very much ha=
ving to
> write 'custom commands' myself.
>=20
> I had a look at the state framework but it seems kinda overkill for wha=
t I need.
>=20
> giorgio
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20


--=20
Regards,
Oleksij


--rARAVM7bia1ncsWrMWwmprmGPRD2N9bUt--

--q6aHkNKNClE3EwjJloAvGWw79BjkT5VKp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlnODCgACgkQHwImuRkmbWlmogD/U6dXeENVE2tGli2y54KcdpPA
eKQbPbNlyXfAkqtKPlQA/i09rXIO4FDcOHlVmv9srqUFF5MGr5KXwYKu1JoQMiOV
=nyjh
-----END PGP SIGNATURE-----

--q6aHkNKNClE3EwjJloAvGWw79BjkT5VKp--


--===============4415383670426989255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4415383670426989255==--
