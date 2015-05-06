Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YptVi-0000E1-MQ
 for barebox@lists.infradead.org; Wed, 06 May 2015 07:12:51 +0000
Date: Wed, 6 May 2015 09:12:28 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150506071228.GQ25193@pengutronix.de>
References: <5548DA0A.3050408@elfin.de> <20150505155450.GB6325@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150505155450.GB6325@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Usage of i2c_-Tools in Barebox
To: Marcel Behlau <marcel.behlau@elfin.de>
Cc: barebox@lists.infradead.org

Hello,

On Tue, May 05, 2015 at 05:54:50PM +0200, Sascha Hauer wrote:
> On Tue, May 05, 2015 at 04:56:10PM +0200, Marcel Behlau wrote:
> > i'm using a phyFLEX-i.MX6 SBC and want to communicate with an
> > external =B5C over I2C. I only want to read/set 1 register, so i tried
> > to use the builtin i2c_read and i2c_write-Commands. The =B5C is
> > connected to i2c-bus 1 of the device, so i tried to probe the hole
> > bus with "i2c_bus 1 3 30". The command only answered with
> > "i2c_probe: No such device". I tried also the busses 0-3, with the
> > same result. I searched in the board.c sourcecode of the phyflex,
> > but couldn't find i2c related stuff, so i think, i have to add the
> > initalisation for the i2c.
> > =

> > Do i have to add the i2c-init in the boards/phytec-pfla02/board.c
> > -file? Is there some documenation about this stuff?
> =

> The phyFLEX board is device tree based. You have to enable the i2c
> controller in the dts file (same as you would do in the kernel).
> Usually a:
> =

> &i2c0 {
> 	status =3D "okay";
> };
> =

> Should be enough. You probably also have to add the proper pinctrl node.
and enable the i2c driver. You might want to check the output of
devinfo.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
