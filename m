Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8UwZ-0002sF-Po
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 14:17:12 +0000
Date: Tue, 6 Jan 2015 15:16:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150106141648.GI17225@pengutronix.de>
References: <3444471.6ba7DjKbWe@laroq>
 <1420461321.6731.34.camel@lws-gamez.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1420461321.6731.34.camel@lws-gamez.phytec.de>
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
Subject: Re: [PATCH] net: cpsw: Fix crashes on beaglebone black
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: ledphilippe@gmail.com, barebox@lists.infradead.org

On Mon, Jan 05, 2015 at 01:35:21PM +0100, Teresa G=E1mez wrote:
> Hello Philippe,
> =

> > =

> > [<9fe32349>] (unwind_backtrace+0x1/0x58) from [<9fe258e9>] (panic+0x1d/=
0x34)
> > [<9fe258e9>] (panic+0x1d/0x34) from [<9fe327e1>] (do_exception+0xd/0x10)
> > [<9fe327e1>] (do_exception+0xd/0x10) from [<9fe32849>] =

> > (do_data_abort+0x21/0x2c)
> > [<9fe32849>] (do_data_abort+0x21/0x2c) from [<9fe32508>] =

> > (data_abort+0x48/0x60)
> > =

> > =

> =

> I suspect the issue comes from the dummy cpsw_emac1 node which adds a
> non existing phy in the beaglebone device tree. So the mdiobus_scan
> fails. This patch will workaround the issue but I'm unsure about right
> solution here.

You are right, this is not the ideal solution. Nevertheless I just sent
out a similar patch. It should be good enough for now.

In the longer run the phy shouldn't be probed for in the devices probe
function. There also should be a way to disable a slave in the device
tree, right now both slaves are defined in the dtsi file and a status =3D
"disabled" is ignored (Does this work in the kernel?).
Also the cpsw driver should accept a proper phy binding. The official
agreed-upon binding is phy-handle =3D <&ethphy>, not phy_id =3D <&miibus>,
<0>. The driver should at least optionally support this.

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
