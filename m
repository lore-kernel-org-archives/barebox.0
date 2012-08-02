Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwqYz-0007gy-Ma
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 08:15:22 +0000
Date: Thu, 2 Aug 2012 10:15:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120802081509.GH30009@pengutronix.de>
References: <loom.20120719T173418-826@post.gmane.org>
 <20120719161139.GB30009@pengutronix.de>
 <loom.20120719T224910-551@post.gmane.org>
 <20120720080435.GP30009@pengutronix.de>
 <1343827988.3466.76.camel@mars> <20120801185644.52c45c4b@eb-e6520>
 <1343855078.3466.85.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343855078.3466.85.camel@mars>
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
Subject: Re: [RFC][PATCH] pcm043: usb support --not working--
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org, Jerry Kirk <jkirk865@gmail.com>

On Wed, Aug 01, 2012 at 11:04:38PM +0200, Christoph Fritz wrote:
> On Wed, 2012-08-01 at 18:56 +0200, Eric B=E9nard wrote: =

> > > The clock settings seems to be the same as for eukrea_cpuimx35. Eric:
> > > Does USB work for you on your board?
> > > =

> > thanks for the heads up : now it works.
> =

> great :-)
> =

> > > Sascha, I currently have no working config for kernel >=3D3.5 to chec=
k for
> > > clocks in debugfs.
> > > =

> > > Any thoughts on this?
> > > =

> > try to copy the config in that patch I just sent ;-)
> =

> I did - without success. I suppose the external phy needs to be
> configured properly.
> =

> When you type the command "usb", you are getting a list of connected
> devices. Can you execute command "usb" a second and third time with the
> same result?

By default 'usb' now only probes once. That is because the USB stack is
too silly to just keep already enumarated devices, but instead just
removes all devices and reenumarates them. Bad things happen if one of
your devices was a mounted USB mass storage device for example.
If you want to probe multiple times try the -f aka force aka I know what
I'm doing option.

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
