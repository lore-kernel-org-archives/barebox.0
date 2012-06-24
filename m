Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Silr5-0002O9-OR
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 12:23:52 +0000
Date: Sun, 24 Jun 2012 14:23:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120624122348.GA24458@pengutronix.de>
References: <1337151896-5888-1-git-send-email-s.hauer@pengutronix.de>
 <1337151896-5888-3-git-send-email-s.hauer@pengutronix.de>
 <201206041047.45047.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201206041047.45047.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] Add next generation default environment template
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 04, 2012 at 10:47:44AM +0200, Juergen Beisert wrote:
> Sascha Hauer wrote:
> > [...]
> > diff --git a/defaultenv-2/base/init/bootargs-base
> > b/defaultenv-2/base/init/bootargs-base new file mode 100644
> > index 0000000..8e588ad
> > --- /dev/null
> > +++ b/defaultenv-2/base/init/bootargs-base
> > @@ -0,0 +1,8 @@
> > +#!/bin/sh
> > +
> > +if [ "$1" =3D menu ]; then
> > +=A0=A0=A0=A0=A0=A0=A0init-menu-add-entry "$0" "Base bootargs"
> > +=A0=A0=A0=A0=A0=A0=A0exit
> > +fi
> > +
> > +global.linux.bootargs.base=3D"console=3DttyS0,115200"
> > [...]
> =

> Seems if you want to change the console setting here, you always have to =
save =

> the change and restart the system to take affect of the new value when =

> the 'boot' command is running. Old behaviour was an immediate change with=
out =

> saving and restarting. This was a nice behaviour when one just wants to t=
ry a =

> different parameter without destroying the old environment.

Late response on this one:

You don't have to restart. Instead, you can just overwrite it on the
command line and boot afterwards:

barebox: global.linux.bootargs.base=3Dconsole=3Dttymytempconsole0,115200
barebox: boot

Some more background:

The idea is that the bootentries in /env/boot/* can be executed and
setup the boot environment, afterwards you would only run 'bootm'
without additional arguments.

For example you could execute /env/boot/nand-ubi, then your setup would
be:

bootm.image =3D /dev/nand0.kernel.bb
bootm.oftree =3D
bootm.initrd =3D
linux.bootargs.base =3D console=3Dttymxc0,115200
linux.bootargs.ip =3D ip=3Ddhcp
linux.bootargs.root =3D root=3Dubi0:root ubi.mtd=3Dnand0.root rootfstype=3D=
ubifs
linux.mtdparts.nand0 =3D mxc_nand:512k(nand0.barebox)ro,128k(nand0.bareboxe=
nv),4M(nand0.kernel),-(nand0.root)
linux.mtdparts.nor0 =3D physmap-flash.0:512k(nor0.barebox)ro,128k(nor0.bare=
boxenv),4M(nor0.kernel),-(nor0.root)

If then you want to boot once with a devicetree without permanently
changing you environment, you could do a

barebox: global.bootm.oftree=3D/whatever/oftree
barebox: bootm


The possibilities are there, maybe the question is how we can simplify
(and document) them so that people are actually aware of what can be
done.

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
