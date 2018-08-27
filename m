Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuCeV-0003PB-Gb
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 08:13:39 +0000
Date: Mon, 27 Aug 2018 10:13:22 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20180827081322.bgtjhamviu5p7byd@pengutronix.de>
References: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
 <20180824170407.geeahhgkqntovpi5@pengutronix.de>
 <20180824195556.jihqkka6bj5tbqpq@pengutronix.de>
 <CAOMZO5AMUiaPyaGcfNz2NtApwgthYGSYSH0Xx94F83q1qESKxQ@mail.gmail.com>
 <20180827074741.rnmenb6mvjzv2qto@pengutronix.de>
 <20180827075224.zmouhtgevz4masrd@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20180827075224.zmouhtgevz4masrd@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9016642358870725142=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imx{5,6}: reset otg port after usb-serial boot
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>


--===============9016642358870725142==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="npfj2rl4n4aqvk3p"
Content-Disposition: inline


--npfj2rl4n4aqvk3p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 27, 2018 at 09:52:24AM +0200, Sascha Hauer wrote:
> On Mon, Aug 27, 2018 at 09:47:41AM +0200, Michael Grzeschik wrote:
> > On Fri, Aug 24, 2018 at 05:18:02PM -0300, Fabio Estevam wrote:
> > > Hi Michael,
> > >=20
> > > On Fri, Aug 24, 2018 at 4:55 PM, Michael Grzeschik <mgr@pengutronix.d=
e> wrote:
> > >=20
> > > > I get that it is not safe to toggle bits if the clock is not
> > > > there. We could check for the bootsource. Is it possible to
> > > > ensure that we are started by imx-usb-loader?
> > >=20
> > > It is possible to determine if we have started via USB download mode.
> > >=20
> > > Check the is_boot_from_usb() implementation in U-Boot for a reference.
> >=20
> > Right, So it seems to be safe to reach for the phys registers on mx6.
> >=20
> > On mx5 and similar we have a nop phy and the only way to
> > communicate with it is through usbmisc, which is also in the
> > register space that leads to a hang if one clock is missing.
> >=20
> > I will search for another solutions on those SoCs.
>=20
> It's not necessary to ask for the bootsource. You just have to enable
> the clocks necessary to access the USB registers. Or the other way
> round: When the clocks are not enabled already, you could assume we have
> not booted from USB.

Right, I think enabling the clocks is a little bit more safe
as we otherwise would need to ensure that nobody slips in
a DCD that already ungates all clocks.

mgr

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--npfj2rl4n4aqvk3p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAluDsp8ACgkQC+njFXoe
LGTOYw//VlOKmGkRYI6nJt5hhDRJOTbNKr115aZhUPcMUdn9kP3fP+4XmmamUHK0
MstVmV27uNNtVS9SkZK9bU2cl2lpVwhoJkrHdLwOFpICjBugKxKfGmpd89B0zi6u
De41eyUhjezWW7WD/s4/zBlsESgxNK5Vug8ciS7uARsd2qHmzR5u2IE/PtkeT8Hp
p40r4bLA6Eh4ZRn4r3ZqVH5vBZzjilCn5tpT1HNiqFD0+PV7Qevan0K8sTFHJ2go
W401S43rcv2mmzGEXPe2Fm7auTvV0spadfJVJHBGi5PTgLIUrfDX+tnKYtF0EOC0
TDOmZEW+DxeVxoesUN068FyYMk0eCrrW4c3uY5eUoKGgbJr7cLRTabhzF8XUSyyg
i6miIGa6Ax+eGTjCktrmjofWDdfMFxNST1F9HhaH9v/akPx8hOoaBQDAeabxs6Vn
uBSEPT73RJOcRjWqj6EmUM5vDZSr8/UmwP5N+z/sxGDDVEGPpHPAzbkV3NvJrgtR
gZIksd/AeVvk88zTr2cFPTfPtco8SQY1L56TJca2Zf+Cd9h7TNiZfC2GUnaXDsvb
O8DO2pjTcO6sZ+lfB83XFpoRcip0RVquq6yMPyaMO2lauOyyerykqZdhvL6XEpFl
ctp5eqppdcwfHYDkXgm79iFcklRIgzMEkFxYm6Flo5HqvtE4mxc=
=uTuq
-----END PGP SIGNATURE-----

--npfj2rl4n4aqvk3p--


--===============9016642358870725142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9016642358870725142==--
