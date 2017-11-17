Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFd0i-0005xQ-SH
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 09:32:35 +0000
Date: Fri, 17 Nov 2017 10:32:11 +0100
From: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Message-ID: <20171117093211.z5h3vpthvn6b7o4w@pengutronix.de>
References: <20171108150517.130503-1-g.schenk@eckelmann.de>
 <20171110070008.p6gsmknadybwq6ug@pengutronix.de>
 <1510816812.1406.2.camel@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1510816812.1406.2.camel@eckelmann.de>
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
Subject: Re: [PATCH] Configure network device for nfsboot via nv var
To: "Schenk, Gavin" <G.Schenk@eckelmann.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Nov 16, 2017 at 07:20:14AM +0000, Schenk, Gavin wrote:
> Hi,
> =

> > On Wed, Nov 08, 2017 at 04:05:17PM +0100, Gavin Schenk wrote:
> > > When you have a static network environment but more than one
> > > network
> > > device on your machine it is necessary to provide the <device>
> > > parameter to the ip parameter at kernel cmd line.
> > > =

> > > The device name assigned by Linux cannot in general be predicted as
> > > it
> > > depends on driver bind order.
> > > =

> > > This patch introduces a new global variable
> > > "global.linux.nfsroot.device" which when set is feed to the ip=3D
> > > kernel
> > > parameter as device name.
> > =

> > Maybe we should rather add a linuxname property to the ethernet
> > device
> > instead. That way we could specify multiple names in case we have
> > multiple ethernet devices in barebox aswell.
> > =

> =

> maybe I am missing something important, but is this useful for anything
> besides nfsboot?
> =

> If linuxname is a property of the device, how do we decide between
> eth0.linuxname and eth1.linuxname when doing a "boot /mnt/nfs"?=A0
> In this case we need additionally a global variable like nfsboot-
> device=3Deth0 to switch between nfsboot devices and to make the decision
> when filling the ip parameter?

Look again at the code. The code you patched in your patch does not
add anything directly to the kernel commandline. Instead, it fills the
network device specific variable ethx.linux.bootargs with a kernel
commandline snippet needed to boot from this particular device. So
during boot barebox will add the snippet from the actual boot device
to the commandline.
With eth0.linuxname and eth1.linuxname you will get two
eth[01].linux.bootargs variables containing the corresponding linuxname.
Depending on the ethernet device being active during boot barebox will
pick the correct string.

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
