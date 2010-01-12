Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-v.mail.gandi.net ([217.70.178.76])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NUmW5-000595-2b
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 19:35:05 +0000
Date: Tue, 12 Jan 2010 20:30:19 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100112193019.GK14051@darwin>
References: <20100109232838.GB14051@darwin>
	<20100111094902.GR6923@pengutronix.de>
	<20100111103700.GH14051@darwin>
	<20100111112557.GU6923@pengutronix.de>
	<20100111213112.GJ14051@darwin>
	<20100112095233.GD6923@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100112095233.GD6923@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add support for EDB93xx boards [rev2]
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

El Tue, Jan 12, 2010 at 10:52:33AM +0100 Sascha Hauer ha dit:

> On Mon, Jan 11, 2010 at 10:31:12PM +0100, Matthias Kaehlcke wrote:
> > diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
> > index 139b08d..ed6e986 100644
> > --- a/arch/arm/mach-ep93xx/Kconfig
> > +++ b/arch/arm/mach-ep93xx/Kconfig
> > @@ -39,7 +39,6 @@ config MACH_EDB9301
> >  	bool "Cirrus Logic EDB9301"
> >  	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
> >  	select MACH_HAS_LOWLEVEL_INIT
> > -	select BOARD_LINKER_SCRIPT
> >  	help
> =

> Something went wrong here, this seems to be a fixup patch, at least
> these hunks.

sorry, i added applied these changes to the wrong patch of the set

> The rest of the patches is ok now. Can you please resend the whole
> series? It's easier to apply when it's clear that the original messages
> are the patches than to dig through the thread and look for patches in
> replies.

sure, and thanks for pointing me to the right way to send revisions of
a patch

-- =

Matthias Kaehlcke
Embedded Linux Developer
Barcelona

    Ma patrie est o=F9 je suis, o=F9 personne ne me d=E9range, o=F9 personne
    ne me demande que je suis, d'o=F9 je viens et ce que je fais
                              (B. Traven)
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
