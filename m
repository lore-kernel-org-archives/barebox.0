Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8oF6-00081w-TV
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 09:49:05 +0000
Date: Thu, 30 Jan 2014 10:48:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140130094843.GV16215@pengutronix.de>
References: <1391074829-25877-1-git-send-email-s.hauer@pengutronix.de>
 <1391075183.18253.38.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391075183.18253.38.camel@coredoba.hi.pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX: edmqmx6: Copy fdt to SDRAM
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 30, 2014 at 10:46:23AM +0100, Jan L=FCbbe wrote:
> On Thu, 2014-01-30 at 10:40 +0100, Sascha Hauer wrote:
> > @@ -136,26 +137,37 @@ static void sdram_init(void)
> >         writel(0x0000047f, 0x021e80a4);
> >         writel(0x0000c34f, 0x021e80a8);
> >         writel(0x00000001, 0x021e8080);
> > +       putc_ll('>');
> >  } =

> =

> Some leftover debugging. ;)

Psst, this was intentional ;)

Of course this should have been a separate patch, but giving a sign of
life early when debugging is enabled is a good thing generally.

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
