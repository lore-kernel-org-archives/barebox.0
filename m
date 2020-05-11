Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY276-00084P-Rx
 for barebox@lists.infradead.org; Mon, 11 May 2020 06:40:34 +0000
Date: Mon, 11 May 2020 08:40:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200511064023.GP5877@pengutronix.de>
References: <20200422075452.25226-1-s.hauer@pengutronix.de>
 <20200422075452.25226-4-s.hauer@pengutronix.de>
 <aca473b4-a4ef-1c8e-958f-dcec8044049d@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aca473b4-a4ef-1c8e-958f-dcec8044049d@emlix.com>
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
Subject: Re: [PATCH 03/11] Introduce slices
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

On Fri, May 08, 2020 at 08:01:00PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 22.04.20 um 09:54 schrieb Sascha Hauer:
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 7fb47b8fb5..5ff6454427 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -269,6 +269,15 @@ config CMD_POLLER
> >  	  is_timeout() or one of the various delay functions. The poller comm=
and prints
> >  	  informations about registered pollers.
> >  =

> > +config CMD_SLICE
> > +	tristate
> > +	prompt "slice"
> > +	depends on SLICE
> > +	help
> > +	  slices are a way to protect resources from being accessed by poller=
s. The slice
> > +	  command can be used to print informations about slices and also to =
manipulate
> > +	  them on the command line for debugging purposes.
> > +
> >  # end Information commands
> >  endmenu
> >  =

> > diff --git a/common/Kconfig b/common/Kconfig
> > index 400c0553cf..bd2aebac75 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -913,6 +913,10 @@ config BAREBOXCRC32_TARGET
> >  config POLLER
> >  	bool "generic polling infrastructure"
> >  =

> > +config SLICE
> > +	depends on POLLER
> > +	default y
> > +
> >  config STATE
> >  	bool "generic state infrastructure"
> >  	select CRC32
> > diff --git a/common/Makefile b/common/Makefile
> > index 84463b4d48..16f14db41c 100644
> > --- a/common/Makefile
> > +++ b/common/Makefile
> > @@ -11,6 +11,7 @@ obj-y				+=3D bootsource.o
> >  obj-$(CONFIG_ELF)		+=3D elf.o
> >  obj-y				+=3D restart.o
> >  obj-y				+=3D poweroff.o
> > +obj-y				+=3D slice.o
> >  obj-$(CONFIG_MACHINE_ID)	+=3D machine_id.o
> >  obj-$(CONFIG_AUTO_COMPLETE)	+=3D complete.o
> >  obj-y				+=3D version.o
> =

> the Kconfig logic doesn't make sense to me. slice.o gets built regardless=
 of
> CONFIG_SLICE and it will still compile and link when CONFIG_POLLER is dis=
abled.
> On the other hand poller.o will fail to link when slice.o is omitted.
> =

> I suggest we drop CONFIG_SLICE.

I probably just added slice.o using obj-y initially to get started and
then didn't look at it again.. Yes, dropping it seems right.

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
