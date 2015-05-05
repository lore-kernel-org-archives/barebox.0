Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpfBh-0004wH-Db
 for barebox@lists.infradead.org; Tue, 05 May 2015 15:55:14 +0000
Date: Tue, 5 May 2015 17:54:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150505155450.GB6325@pengutronix.de>
References: <5548DA0A.3050408@elfin.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5548DA0A.3050408@elfin.de>
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
Subject: Re: Usage of i2c_-Tools in Barebox
To: Marcel Behlau <marcel.behlau@elfin.de>
Cc: barebox@lists.infradead.org

Hi Marcel,

On Tue, May 05, 2015 at 04:56:10PM +0200, Marcel Behlau wrote:
> Hi,
> =

> i'm using a phyFLEX-i.MX6 SBC and want to communicate with an
> external =B5C over I2C. I only want to read/set 1 register, so i tried
> to use the builtin i2c_read and i2c_write-Commands. The =B5C is
> connected to i2c-bus 1 of the device, so i tried to probe the hole
> bus with "i2c_bus 1 3 30". The command only answered with
> "i2c_probe: No such device". I tried also the busses 0-3, with the
> same result. I searched in the board.c sourcecode of the phyflex,
> but couldn't find i2c related stuff, so i think, i have to add the
> initalisation for the i2c.
> =

> Do i have to add the i2c-init in the boards/phytec-pfla02/board.c
> -file? Is there some documenation about this stuff?

The phyFLEX board is device tree based. You have to enable the i2c
controller in the dts file (same as you would do in the kernel).
Usually a:

&i2c0 {
	status =3D "okay";
};

Should be enough. You probably also have to add the proper pinctrl node.

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
