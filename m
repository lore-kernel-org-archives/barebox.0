Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFc6A-0000Hc-Ni
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 08:34:09 +0000
Date: Fri, 17 Nov 2017 09:33:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171117083340.6jtpf2dix5pukaks@pengutronix.de>
References: <221136220.35006899.1510666491764.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <221136220.35006899.1510666491764.JavaMail.zimbra@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Net: add mdio_i2c driver.
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Cl=E9ment,

On Tue, Nov 14, 2017 at 02:34:51PM +0100, Cl=E9ment Leger wrote:
> From 1238b5c70d29762074bc71ac25623b958af9010a Mon Sep 17 00:00:00 2001
> From: Clement Leger <clement.leger@kalray.eu>
> Date: Wed, 8 Nov 2017 09:13:10 +0100
> Subject: [PATCH] Net: add mdio_i2c driver (i2c to mdio bridge).
> =

> +++ b/dts/Bindings/net/mdio-i2c.txt
> @@ -0,0 +1,19 @@
> +MDIO on I2C Bus
> +This compatible allows to use phy devices connected to an i2c bus
> +and expecting to be use with mdio protocol.
> +
> +Currently defined compatibles:
> +- virtual,mdio-i2c
> +
> +Required properties:
> +- i2c-bus: A phandle on the I2C bus acting as a MDIO bridge where phys
> +           are connected to.
> +
> +Example:
> +
> +mdio0@i2c {
> +	compatible =3D "virtual,mdio-i2c";
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	i2c-bus =3D <&i2c_bus>;
> +};

The binding looks the wrong way round. Ethernet phys should be child
nodes of the bus providing the control port to them. So, the mdio-i2c
device should be a child node of the i2c bus on which it is attached.
Instead of providing a phandle from the mdio phy to the i2c bus you
then provide a "phy-handle" phandle from the network controller to the
mdio-i2c. The "phy-handle" phandle is evaluated from the barebox phy
code already, so once you register a mdio-bus the connection between the
ethernet device and the mdio bus should just work.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
