Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuCid-0005tq-Sf
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 08:17:54 +0000
Date: Mon, 27 Aug 2018 10:17:39 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20180827081739.a7hqrpyetvgdphxc@pengutronix.de>
References: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
 <20180824170407.geeahhgkqntovpi5@pengutronix.de>
 <20180824195556.jihqkka6bj5tbqpq@pengutronix.de>
 <CAOMZO5AMUiaPyaGcfNz2NtApwgthYGSYSH0Xx94F83q1qESKxQ@mail.gmail.com>
 <20180827074741.rnmenb6mvjzv2qto@pengutronix.de>
 <20180827075224.zmouhtgevz4masrd@pengutronix.de>
 <20180827081322.bgtjhamviu5p7byd@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20180827081322.bgtjhamviu5p7byd@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2140224885659350562=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imx{5,6}: reset otg port after usb-serial boot
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>


--===============2140224885659350562==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ibij5ogukmxcw5fl"
Content-Disposition: inline


--ibij5ogukmxcw5fl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 27, 2018 at 10:13:22AM +0200, Michael Grzeschik wrote:
> On Mon, Aug 27, 2018 at 09:52:24AM +0200, Sascha Hauer wrote:
> > On Mon, Aug 27, 2018 at 09:47:41AM +0200, Michael Grzeschik wrote:
> > > On Fri, Aug 24, 2018 at 05:18:02PM -0300, Fabio Estevam wrote:
> > > > Hi Michael,
> > > >=20
> > > > On Fri, Aug 24, 2018 at 4:55 PM, Michael Grzeschik <mgr@pengutronix=
=2Ede> wrote:
> > > >=20
> > > > > I get that it is not safe to toggle bits if the clock is not
> > > > > there. We could check for the bootsource. Is it possible to
> > > > > ensure that we are started by imx-usb-loader?
> > > >=20
> > > > It is possible to determine if we have started via USB download mod=
e.
> > > >=20
> > > > Check the is_boot_from_usb() implementation in U-Boot for a referen=
ce.
> > >=20
> > > Right, So it seems to be safe to reach for the phys registers on mx6.
> > >=20
> > > On mx5 and similar we have a nop phy and the only way to
> > > communicate with it is through usbmisc, which is also in the
> > > register space that leads to a hang if one clock is missing.
> > >=20
> > > I will search for another solutions on those SoCs.
> >=20
> > It's not necessary to ask for the bootsource. You just have to enable
> > the clocks necessary to access the USB registers. Or the other way
> > round: When the clocks are not enabled already, you could assume we have
> > not booted from USB.
>=20
> Right, I think enabling the clocks is a little bit more safe
> as we otherwise would need to ensure that nobody slips in
> a DCD that already ungates all clocks.

Forget that! Even in that case it is no problem to
reset the OTG core! :D ... more coffee

mgr

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--ibij5ogukmxcw5fl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAluDs6MACgkQC+njFXoe
LGQIrhAAs5znJ9L9ct8tqv0U7YePxhZIYkKouSaPWtQAI75AmrqkKhGBCK7h4Bc2
VUm2XWDB3rzrz0VCTNLZCxSA2gIq1KPpznNc2rmsK3l7wNpcjAKyjCrWmV0Z2vEJ
Ye1+pJlTmTlHHKgC4GemDs2VNWvt7qkLrGMGINwyeHhFT7zgl3n/PRjiCbuUmyer
zuRoRXu7zu2/qgnk1wb6OaFppsglx+0unSyGs+fjTAhA7cJbPkBmZfMkaEJY7pWI
X/A8rfXWMvABc/VC0nyzMiCVbuSC4z9Blsuc3Z6IZEshGSpblqW6SbAwo+F5+Ud7
+sM9zKAFK1tgijr+g9HqtLM5EGjajh58oNvTr8GGvTlFC1DdKn0yNDzaLJFW2jie
EIL/kC/3RhWl6P6FQhSmWNlakKTVJYsMhEEKcL2KjdHzWgzscjFX4MuE+cqXNvg8
gU+UmSBxSjyk06n1JS0EyuXL+/pih0geL+4evFUoY8Sjod79lA/YDNqtLPcq8WR2
mo7jswkEIzrjpaV0zUXcn3Uio/XrV6nYFRQhzfcqUoFkn8cHZyB7CgbvmDCQaI+r
3TUYo0YtG9ONxgsqMUx+u3zhtZ7zPfxbUZBzh3fwIMcfWouzTw9KTQsr2c9VKo4b
yNbsq8xncVrMZGfnNHDiRb3+2HZGYYM/5h7TTlQlbSobGHLqLAY=
=mPCA
-----END PGP SIGNATURE-----

--ibij5ogukmxcw5fl--


--===============2140224885659350562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2140224885659350562==--
