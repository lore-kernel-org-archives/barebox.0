Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XEyex-0003YS-Mx
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 10:41:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1XEyea-0005ia-MH
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 12:41:08 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <mol@pengutronix.de>) id 1XEyea-0005eK-Kg
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 12:41:08 +0200
Date: Wed, 6 Aug 2014 12:41:08 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20140806104108.GF28454@pengutronix.de>
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
 <20140731071425.GQ6146@pengutronix.de>
 <201407310933.02138.jbe@pengutronix.de>
 <20140731074416.GR6146@pengutronix.de>
 <20140806070413.GA28454@pengutronix.de>
 <20140806072856.GJ1933@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140806072856.GJ1933@pengutronix.de>
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

On Wed, Aug 06, 2014 at 09:28:56AM +0200, Uwe Kleine-K=F6nig wrote:
> On Wed, Aug 06, 2014 at 09:04:13AM +0200, Michael Olbrich wrote:
> > On Thu, Jul 31, 2014 at 09:44:16AM +0200, Uwe Kleine-K=F6nig wrote:
> > > On Thu, Jul 31, 2014 at 09:33:02AM +0200, Juergen Borleis wrote:
> > > > On Thursday 31 July 2014 09:14:25 Uwe Kleine-K=F6nig wrote:
> > > > > [...]
> > > > > Compared with storing the default environment in the external sto=
re the
> > > > > only difference is that you don't need to modify it if you change=
 the
> > > > > internal one, right?
> > > > =

> > > > This would also be an advantage of this new feature.
> > > The only one even?
> > > =

> > > > > I wonder what the targeted use case is.
> > > > =

> > > > To use an external stored environment *only* for development purpos=
es or tests =

> > > > and to keep the possibility to do so.
> > > Doesn't make a warm and cosy feeling. Isn't it easier and more robust=
 to
> > > just not tell barebox about the external storage at all and for the
> > > testing/development procedure do an explicit
> > > =

> > > 	loadenv /dev/tralala
> > =

> > That doesn't help at all. There are several changes that I regularly use
> > that are required when init runs, so a manual loadenv is too late:
> > - global.autoboot_timeout=3D3 (the build-in value is 0 to boot faster by
> >   default).
> Ok, that might be annoying, but I'd say this doesn't justify the
> J=FCrgen's changes.

Some hardware cannot be interrupted reliably with global.autoboot_timeout=
=3D0
That is more than annoying.

> > - nfs automounts that contain '$user'
> Don't get this one. The nice thing about automount is that they are done
> on request, so isn't it early enough to set global.user when loading the
> debug environment (probably resulting in another line to type)?

Because it's my custom automount that doesn't exist in the default usecase.

> Even though J=FCrgen predicted that developers won't like me for the
> suggestion, I still think it's wrong to change a production system for
> debug purposes.
> =

> IMHO a righter thing would be to implement an extension to microcom that
> catches the 0s prompt, interrupts it and types
> =

> 	loadenv /dev/tralala
> 	global.user=3Dmol

and setup my automount

> for you. If I didn't miss anything that would catch all problems without
> the need to change barebox.
> =

> > Also, this requires me to know _where_ the environment is. And that is =
not
> /dev/tralala could be the same for all configurations :-) =


So defining a not-really-default-environment device is a better solution
than these patches?

> > easy to remember when I need to work with multiple devices a day and ge=
ts
> > worse, when it changes with the boot source (SD/eMMC). Mistakes are
> > guaranteed.
> I'd say, either you want a) an environment that is used always, or b)
> you don't.
> =

> With a) you can do your modifications to increase boot time and set the
> username and save it for development. If you want to reset it to
> "production mode" just do: loadenv /dev/default_env; saveenv;
> =

> With b) either live with the decision and adapt your *development*
> workflow to it, or change to a).

and there is c):
I want to start with the default environment but change it later without
confusing the user. And right now that's not possible.
A clean setup means writing barebox and overwriting the environment with
something. Currently thats 'nothing' with confuses to user with an error
message. In the past I could use the default environment, but that no
longer exists as a single environment file.

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
