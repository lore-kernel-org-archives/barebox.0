Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ecUnf-0005GX-Mk
 for barebox@lists.infradead.org; Fri, 19 Jan 2018 11:25:37 +0000
Received: by mail-lf0-x22d.google.com with SMTP id h92so1680743lfi.7
 for <barebox@lists.infradead.org>; Fri, 19 Jan 2018 03:25:24 -0800 (PST)
Date: Fri, 19 Jan 2018 14:39:40 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180119143940.d1d9548f464ff98ecff94372@gmail.com>
In-Reply-To: <20180119094008.6g6otppxgtqgo3rb@pengutronix.de>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
 <20180117095314.rwdrslwpnkcwa6ey@pengutronix.de>
 <20180119122901.d58ed91f24057139b2d4239c@gmail.com>
 <20180119094008.6g6otppxgtqgo3rb@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 0/7] sandbox: add gpio support with libftdi1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 19 Jan 2018 10:40:08 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Jan 19, 2018 at 12:29:01PM +0300, Antony Pavlov wrote:
> > On Wed, 17 Jan 2018 10:53:14 +0100
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > Hi Antony,
> > > =

> > > On Mon, Jan 15, 2018 at 12:22:45AM +0300, Antony Pavlov wrote:
> > > > This patch series makes it possible to use FT2232H ACBUS[7:0]
> > > > pins as gpio pins from sandbox barebox.
> > > > =

> > > > There are ready-to-use FT2232H-based boards:
> > > > =

> > > >   * FT2232H-56Q Mini-Module (http://www.ftdichip.com/Products/Modul=
es/DevelopmentModules.htm#FT2232H-56_Mini)
> > > >   * FT2232 breakout board (http://dangerousprototypes.com/docs/FT22=
32_breakout_board)
> > > > =

> > > > The main goal of adding gpio functionality to sandbox barebox
> > > > is using it for connecting real i2c and spi devices to sandbox bare=
box.
> > > =

> > > I applied the parseopt patches for now since they don't need any furt=
her
> > > discussions.
> > > =

> > =

> > There are three common parseopt-related patches:
> > =

> >   move parseopt to lib/
> >   include/parseopt.h: add guard macro
> >   parseopt: introduce parseopt_u16() and parseopt_str()
> > =

> > Please confirm that you have got all three patches.
> > =

> > > What puzzles me a bit is that the libftdi gpio controller is
> > > instantiated from the device tree but configured through the
> > > commandline. It probably has to be like this since we need the
> > > device tree for using the gpios.
> > =

> > Getting FTDI chip vendorID and deviceID from device tree is reasonable.
> > However hardcoding FTDI chip serialnumber into device tree is not so go=
od idea.
> > In addition dropping cmdline FTDI options parsing makes parseopt_u16() =
and parseopt_str() unused.
> > =

> > I propose add FTDI chip vendorID, deviceID and serial options to device=
 tree
> > and keep parsing the same options from cmdline so once can override FTD=
I chip
> > serial number from cmdline.
> =

> How would you handle multiple FTDI chips then if you want to make use
> of more than one at a time?

Good question. My current code gives no good means to add more than one FT2=
232 chip.
I suppose that after adding option-passing-via-dt feature it will be possib=
le =

to add more than one FT2232 chip and ... cmdline option passing will interf=
ere with
multi-FT2232 dt in a bad way. Now I think that dropping cmdline parsing is =
not so bad idea.

> =

> Sascha
> =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
