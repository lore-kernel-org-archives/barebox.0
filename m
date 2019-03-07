Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1t0p-0005W1-Jy
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 13:24:45 +0000
Date: Thu, 7 Mar 2019 14:24:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190307132435.6ublqhzg7oetk7qw@pengutronix.de>
References: <20190306094239.29413-1-s.hauer@pengutronix.de>
 <20190306094239.29413-6-s.hauer@pengutronix.de>
 <5ad113f6-f0a3-0243-5fd0-57453ed057c6@klevio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ad113f6-f0a3-0243-5fd0-57453ed057c6@klevio.com>
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
Subject: Re: [PATCH 5/5] ARM: rpi: Add mini UART debug_ll support
To: =?iso-8859-15?Q?Toma=B8_=A6olc?= <tomaz.solc@klevio.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Mar 07, 2019 at 10:52:33AM +0100, Toma=B8 =A6olc wrote:
> Hi
> =

> On 6. 03. 19 10:42, Sascha Hauer wrote:
> > diff --git a/common/Kconfig b/common/Kconfig
> > index 563cf15fb1..0c6acfcddb 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -1173,6 +1173,12 @@ config DEBUG_RPI2_UART
> >   	  Say Y here if you want low-level debugging support on
> >   	  RaspberryPi 2 and 3 boards.
> > +config DEBUG_RPI3_MINI_UART
> > +	bool "RaspberryPi 3 mini UART
> =

> The line above is missing the closing double quote.
> =

> I also recommend changing the labels on other two UART options to say "PL=
011
> UART" instead of "debug UART" so that the difference is more obvious.
> =

> Can you also please include in this series my patch that expands the help
> message for DEBUG_LL I sent earlier?

Yes, applied that one. Thanks for testing and fixing ;)

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
