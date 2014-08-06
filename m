Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XEvH4-0001gd-1K
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 07:04:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1XEvGf-0007r5-Bf
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 09:04:13 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <mol@pengutronix.de>) id 1XEvGf-0003sA-9t
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 09:04:13 +0200
Date: Wed, 6 Aug 2014 09:04:13 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20140806070413.GA28454@pengutronix.de>
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
 <20140731071425.GQ6146@pengutronix.de>
 <201407310933.02138.jbe@pengutronix.de>
 <20140731074416.GR6146@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140731074416.GR6146@pengutronix.de>
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
Subject: Re: envfs: provide an intentional way to ignore an existing external
 environment
To: barebox@lists.infradead.org

On Thu, Jul 31, 2014 at 09:44:16AM +0200, Uwe Kleine-K=F6nig wrote:
> On Thu, Jul 31, 2014 at 09:33:02AM +0200, Juergen Borleis wrote:
> > On Thursday 31 July 2014 09:14:25 Uwe Kleine-K=F6nig wrote:
> > > [...]
> > > Compared with storing the default environment in the external store t=
he
> > > only difference is that you don't need to modify it if you change the
> > > internal one, right?
> > =

> > This would also be an advantage of this new feature.
> The only one even?
> =

> > > I wonder what the targeted use case is.
> > =

> > To use an external stored environment *only* for development purposes o=
r tests =

> > and to keep the possibility to do so.
> Doesn't make a warm and cosy feeling. Isn't it easier and more robust to
> just not tell barebox about the external storage at all and for the
> testing/development procedure do an explicit
> =

> 	loadenv /dev/tralala

That doesn't help at all. There are several changes that I regularly use
that are required when init runs, so a manual loadenv is too late:
- global.autoboot_timeout=3D3 (the build-in value is 0 to boot faster by
  default).
- nfs automounts that contain '$user'

Also, this requires me to know _where_ the environment is. And that is not
easy to remember when I need to work with multiple devices a day and gets
worse, when it changes with the boot source (SD/eMMC). Mistakes are
guaranteed.

Michael

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
