Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3zVl-0007GK-DT
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 08:45:18 +0000
Date: Wed, 13 Mar 2019 09:45:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190313084515.3uae3luepv4ixqii@pengutronix.de>
References: <20190312074525.6153-1-andrew.smirnov@gmail.com>
 <1552383817.2453.25.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1552383817.2453.25.camel@pengutronix.de>
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
Subject: Re: [PATCH 0/3] Earlycon command line option support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Tue, Mar 12, 2019 at 10:43:37AM +0100, Lucas Stach wrote:
> Hi Andrey,
> =

> Am Dienstag, den 12.03.2019, 00:45 -0700 schrieb Andrey Smirnov:
> > Everyone:
> > =

> > This small series is something I came up with to avoid having to look
> > up the syntax and manually specify earlycon kernel command line option
> > every time I needed it. The series is purely optional in case I am not
> > the only one who thinks this is useful.
> > =

> > Feedback is welcome!
> > =

> > Thanks,
> > Andrey Smirnov
> > =

> > Andrey Smirnov (3):
> > =A0 console: Add plumbing to expose earlycon/bootconsole parameter
> > =A0 serial: i.MX: Add code to export "earlycon" setting
> > =A0 serial: lpuart: Add code to export "earlycon" setting
> > =

> > =A0Documentation/user/variables.rst |=A0=A01 +
> > =A0common/console.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0|=
 25 +++++++++++++++++++++++++
> > =A0drivers/serial/serial_imx.c=A0=A0=A0=A0=A0=A0|=A0=A03 +++
> > =A0drivers/serial/serial_lpuart.c=A0=A0=A0|=A0=A01 +
> > =A0include/console.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0|=
=A0=A01 +
> > =A05 files changed, 31 insertions(+)
> =

> I don't think any of this is necessary. For DT based platforms earlycon
> will use the console specified via the "stdout-path" property, so it's
> entirely sufficient to add "earlycon" to the kernel command line and
> the kernel will do the right thing. No need for any more elaborate
> kernel commandline options.

I'm with Lucas here unless some good arguments come up why this is
needed.

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
