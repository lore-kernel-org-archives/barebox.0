Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1elqBC-0006ji-E5
 for barebox@lists.infradead.org; Wed, 14 Feb 2018 06:04:32 +0000
Received: by mail-lf0-x243.google.com with SMTP id t79so27913815lfe.3
 for <barebox@lists.infradead.org>; Tue, 13 Feb 2018 22:04:17 -0800 (PST)
Date: Wed, 14 Feb 2018 09:19:06 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180214091906.c73556ec3657ac331603485b@gmail.com>
In-Reply-To: <20180213081943.cj2ty4e2u746ntja@pengutronix.de>
References: <20180208074856.3701-1-antonynpavlov@gmail.com>
 <20180209083636.oipcpwnnflbqcdzb@pengutronix.de>
 <20180209142224.ba82057f3efc4a88a82fc2d8@gmail.com>
 <20180213081943.cj2ty4e2u746ntja@pengutronix.de>
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
Subject: Re: [RFC] commands: i2c_write: enable raw write to address
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 13 Feb 2018 09:19:43 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Feb 09, 2018 at 02:22:24PM +0300, Antony Pavlov wrote:
> > On Fri, 9 Feb 2018 09:36:36 +0100
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > Hi Antony,
> > > =

> > > On Thu, Feb 08, 2018 at 10:48:56AM +0300, Antony Pavlov wrote:
> > > > Sometimes for communication with a simple I2C devices
> > > > (e.g. PCF8574 or TM1650) it's necessary to send only
> > > > one data byte into the I2C device.
> > > > Current i2c_write command makes this impossible because
> > > > you can't just pass 'device address' and 'register number'
> > > > (or 'device address' and 'one data byte') to the command.
> > > > You always have to pass all three parameters:
> > > > 'device address', 'register number' and 'data'.
> > > > =

> > > > This commit fixes the problem.
> > > > =

> > > > Sample usage:
> > > > =

> > > >   barebox@barebox sandbox:/ i2c_write -a 0x24 0x01
> > > > =

> > > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > > ---
> > > >  commands/i2c.c | 8 ++++++--
> > > >  1 file changed, 6 insertions(+), 2 deletions(-)
> > > =

> > > Looks good to me.
> > > =

> > > I applied this one despite the [RFC] tag. If for some reason you want=
 to
> > > resend this, feel free to do so, but otherwise consider this applied.
> > =

> > Thanks!
> > =

> > The patch is short, it's understandable and it fixes the problem.
> > I prefere to apply this patch as is.
> > =

> > I see some inconsistency in drivers/i2c/i2c.c.
> > We have i2c_master_send() and i2c_write_reg() functions.
> > These functions are intended to make similar work but they are
> > written in very different style. I suppose that we can rewrite
> > i2c_master_send() (e.g. drop FIXME) and make i2c_write_reg()
> > work on top of i2c_master_send(). Any comments?
> =

> Rewrite i2c_master_send()? Do you mean rewrite i2c_write_reg() instead?

You are right, of course I propose rewrite i2c_write_reg() (there is no
FIXME comment inside i2c_master_send()).

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
