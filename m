Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THBPh-0007K4-LW
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 10:33:50 +0000
Date: Thu, 27 Sep 2012 12:33:23 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120927103323.GA14329@sig21.net>
References: <1348700206-30581-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <20120927095312.GU1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120927095312.GU1322@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

Hi,

On Thu, Sep 27, 2012 at 11:53:12AM +0200, Sascha Hauer wrote:
> On Thu, Sep 27, 2012 at 12:56:46AM +0200, Uwe Kleine-K=F6nig wrote:
> > =

> >         2-WIRE SOFTWARE RESET: After an interruption in protocol, power=
 loss or
> >         system reset, any 2-wire part can be reset by following these s=
teps:
> >         (a) Create a start bit condition,
> >         (b) Clock 9 cycles,
> >         (c) Create another start bit followed by a stop bit condition as
> >             shown below. The device is ready for the next communication
> >             after the above steps have been completed.
> > =

> >         SCL /=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\=
_/=AF\_/=AF\
> >         SDA =AF\_/=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=
=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF\___/=AF
> >              S   1   2   3   4   5   6   7   8   9   Sr  P
> > =

> =

> Sounds good. We often have this problem.
> =

> I wonder if it's worth to have this as a general callback in the i2c
> layer.

I wonder how this relates to the SW reset and Bus Clear
procedures from the I2C spec?
http://www.nxp.com/documents/user_manual/UM10204.pdf

I think the above is not a SW reset, essentially it
sends 9 clocks to make the slave release SDA and then
it sends a STOP to get the bus into an idle state.

Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
