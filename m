Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwHiK-0005lF-Mb
 for barebox@lists.infradead.org; Fri, 17 Jul 2020 04:11:13 +0000
Date: Fri, 17 Jul 2020 06:11:10 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200717041110.qih33m4en77omhwq@pengutronix.de>
References: <20200716064642.25729-1-o.rempel@pengutronix.de>
 <20200716064642.25729-2-o.rempel@pengutronix.de>
 <1159851c97f3fff37c5ec0e2cb005007d1903b85.camel@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <1159851c97f3fff37c5ec0e2cb005007d1903b85.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1848695154448594539=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 1/3] devinfo: do not dump the device node for the root
 node
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl


--===============1848695154448594539==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q6ky2ivbq4oknttr"
Content-Disposition: inline


--q6ky2ivbq4oknttr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 16, 2020 at 11:40:46AM +0200, Lucas Stach wrote:
> Am Donnerstag, den 16.07.2020, 08:46 +0200 schrieb Oleksij Rempel:
> > Calling the devinfo against a device which is linked to some devicetree
> > node weill result a devictree dump of this node. For example:
> >=20
> > barebox@Protonic PRTI6Q board:/ devinfo sound-spdif.of
> > Bus: platform
> > Device node: /sound-spdif
> > sound-spdif {
> >         compatible =3D "fsl,imx-audio-spdif";
> >         model =3D "imx-spdif";
> >         spdif-controller =3D <0x7a>;
> >         spdif-in;
> >         spdif-out;
> > };
> >=20
> > Calling same command on a device wich is linked to the root node of
> > devicetree, for example "machine.of", will trigger a dump fo complete
> > devicetree.
>=20
> Taking a step back from the immediate issue with the root node: is it
> even a good idea to dump the whole subtree of nodes in the devinfo?
> Most likely someone using devinfo is only interested in the of_node of
> the device and maybe some subnodes that don't have a device on their
> own.
>=20
> So wouldn't it make more sense to only dump the node of the device in
> question and subnodes without a compatible? This way we could remove
> the special case for the root node and still get some useful
> information in devinfo, like the board compatible property.

Hm... i have nothing against it. Then probably it is better to exclude
this patch for now.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--q6ky2ivbq4oknttr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl8RJNkACgkQ4omh9DUa
UbN/vg/6AynJ+aMXGBiMCFvE0mtjJ0Nn/rf/cwvbJUxnLVGpUQTGV3sgp/uUylrr
PPmXog205umsZYb5uX+qpXn+fwMqyp9J3mMrdc/KC8PsS+v+dqBBTFx2MQucr05g
KpqSChnALBewdA5KHIEV5q6W44WnVW/NSc1wA/xxkF9nKucJdfXBE1zTh/LER67i
RGR6O0z/BEy2ZmxHWMmbHVzdmMTGUYbM3Chpr2jZoXena8ORs15obr23DJwXWaJr
3XUeTB7OEJJjwPiyEvrdHRAN2L7bO0Fm93dBQ/7fd378aWcMu6YZFoo6Hbc4EKsO
EvtHuIDnKP63AYhqvrzODfd2G+cMwVrUT9KoChwEid8pWQF7TP2IY9Zdu1EhVs3R
dZcEEj4TGeCdtxHV8aqByaeAdpmXuNT9dGkOyrMc2AYRLwcuEdEfJkHkAsANsTgZ
eNq1Forjld0f/AQxkT785sjP2ena6vG5lvvZ+QrM3xJZ/ZNgxcPngNsYzPC/3gIS
++CptVVnb0So7sSj3w9VeQwuYkqq5nTLKKIwfhhNFmVzq7QuCczt2nfEnyF5lNcu
XrKpUj4T0Dk4styg0VOXzmyyyZr7TRLWGFtY8BwObTuDF6lsJcHGiUasklSzG01D
UXXckN0cpSxIrtGdVLpTBA1LQRg7mp5kA0tkC85o2x0o0nj+jqg=
=ORYq
-----END PGP SIGNATURE-----

--q6ky2ivbq4oknttr--


--===============1848695154448594539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1848695154448594539==--
