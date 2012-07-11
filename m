Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SoqhA-00026i-Cv
 for barebox@lists.infradead.org; Wed, 11 Jul 2012 06:46:45 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1Soqh0-0007GN-Qc
 for barebox@lists.infradead.org; Wed, 11 Jul 2012 08:46:34 +0200
Received: from mol by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1Soqh0-000738-PN
 for barebox@lists.infradead.org; Wed, 11 Jul 2012 08:46:34 +0200
Date: Wed, 11 Jul 2012 08:46:34 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20120711064634.GI27035@pengutronix.de>
References: <4FFAE124.8040703@yahoo.fr> <20120710081833.GC27035@pengutronix.de>
 <20120710090647.GN4687@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120710090647.GN4687@pengutronix.de>
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
Subject: Re: Flashing automatically the default environment
To: barebox@lists.infradead.org

On Tue, Jul 10, 2012 at 11:06:47AM +0200, Uwe Kleine-K=F6nig wrote:
> On Tue, Jul 10, 2012 at 10:18:33AM +0200, Michael Olbrich wrote:
> > On Mon, Jul 09, 2012 at 03:48:20PM +0200, Patrick wrote:
> > > When booting a new board with barebox it detect that the nand
> > > partition dedicated to environment is invalid and barebox use the
> > > default config.
> > > I would like that in this case (the first boot) the default config
> > > is flashed in the nand (save) command.
> > > =

> > > Any idea how to do that ?
> > =

> > if [ ! -e /dev/saved ]; then
> > 	echo -o /dev/saved
> > 	saveenv
> > fi
> Is /dev/saved persistent over a reboot?

I meant /env/saved of course.

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
