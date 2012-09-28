Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THXWW-0005ni-7N
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 10:10:20 +0000
Date: Fri, 28 Sep 2012 12:10:09 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120928101009.GD16606@pengutronix.de>
References: <1348700206-30581-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <20120927095312.GU1322@pengutronix.de>
 <20120927103323.GA14329@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120927103323.GA14329@sig21.net>
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
Subject: Re: [PATCH] [RFC] i2c-imx: send a soft bus reset during probe
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de

Hi Johannes,

On Thu, Sep 27, 2012 at 12:33:23PM +0200, Johannes Stezenbach wrote:
> On Thu, Sep 27, 2012 at 11:53:12AM +0200, Sascha Hauer wrote:
> > On Thu, Sep 27, 2012 at 12:56:46AM +0200, Uwe Kleine-K=F6nig wrote:
> > > =

> > >         2-WIRE SOFTWARE RESET: After an interruption in protocol, pow=
er loss or
> > >         system reset, any 2-wire part can be reset by following these=
 steps:
> > >         (a) Create a start bit condition,
> > >         (b) Clock 9 cycles,
> > >         (c) Create another start bit followed by a stop bit condition=
 as
> > >             shown below. The device is ready for the next communicati=
on
> > >             after the above steps have been completed.
> > > =

> > >         SCL /=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=
=AF\_/=AF\_/=AF\
> > >         SDA =AF\_/=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=
=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF\___/=AF
> > >              S   1   2   3   4   5   6   7   8   9   Sr  P
> > > =

> > =

> > Sounds good. We often have this problem.
> > =

> > I wonder if it's worth to have this as a general callback in the i2c
> > layer.
> =

> I wonder how this relates to the SW reset and Bus Clear
> procedures from the I2C spec?
> http://www.nxp.com/documents/user_manual/UM10204.pdf
Software reset seems to start with sending address 0 (general call
address) and not being supported by all devices. Bus Clear is roughly
what I implemented. As I understand it the I2C-bus specification doesn't
put the S, Sr and P around the clock.

> I think the above is not a SW reset, essentially it
> sends 9 clocks to make the slave release SDA and then
> it sends a STOP to get the bus into an idle state.
... depends on the definition of SW reset. It's definitily not the same
thing as in the I2C-bus spec. So choosing a different name would be
good.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
