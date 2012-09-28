Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THZtW-00011X-OZ
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 12:42:15 +0000
Date: Fri, 28 Sep 2012 14:42:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120928124212.GC1322@pengutronix.de>
References: <5065935A.8040302@free-electrons.com>
 <506596C4.6080903@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <506596C4.6080903@free-electrons.com>
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
Subject: Re: Writing to the OCOTP on mx28 boards
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

On Fri, Sep 28, 2012 at 02:23:32PM +0200, Maxime Ripard wrote:
> Le 28/09/2012 14:08, Maxime Ripard a =E9crit :
> > Hi everyone,
> > =

> > I'm trying to write down some data to the /dev/ocotp file, which is
> > basically a one time programming chip containing four bytes.
> > =

> > Using the command mw -b -d /dev/ocotp 0-3 0x01020304 writes down only
> > "4" to the first byte of the OCOTP, which is not quite what I was
> > expecting. What's the correct syntax for the mw command?
> =

> Ok, just found out, it should be
> mw -l -d /dev/ocotp 0-3 0x01020304

Not quite. 0-3 is wrong, though appearantly happens to work. It should
be:

mw -d /dev/ocotp 0 0x01020304

(-l can be skipped, as 32bit accesses are default). If you want to write
multiple words you can do a:

mw -d /dev/ocotp 0 0xdeadbeef 0x12345678 0x11223344

The 0-3 notation is only for 'md'

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
