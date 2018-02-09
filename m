Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek6X1-0000BO-Bt
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 11:07:52 +0000
Received: by mail-lf0-x242.google.com with SMTP id u20so8479129lff.11
 for <barebox@lists.infradead.org>; Fri, 09 Feb 2018 03:07:40 -0800 (PST)
Date: Fri, 9 Feb 2018 14:22:24 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180209142224.ba82057f3efc4a88a82fc2d8@gmail.com>
In-Reply-To: <20180209083636.oipcpwnnflbqcdzb@pengutronix.de>
References: <20180208074856.3701-1-antonynpavlov@gmail.com>
 <20180209083636.oipcpwnnflbqcdzb@pengutronix.de>
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

On Fri, 9 Feb 2018 09:36:36 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Thu, Feb 08, 2018 at 10:48:56AM +0300, Antony Pavlov wrote:
> > Sometimes for communication with a simple I2C devices
> > (e.g. PCF8574 or TM1650) it's necessary to send only
> > one data byte into the I2C device.
> > Current i2c_write command makes this impossible because
> > you can't just pass 'device address' and 'register number'
> > (or 'device address' and 'one data byte') to the command.
> > You always have to pass all three parameters:
> > 'device address', 'register number' and 'data'.
> > =

> > This commit fixes the problem.
> > =

> > Sample usage:
> > =

> >   barebox@barebox sandbox:/ i2c_write -a 0x24 0x01
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  commands/i2c.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> =

> Looks good to me.
> =

> I applied this one despite the [RFC] tag. If for some reason you want to
> resend this, feel free to do so, but otherwise consider this applied.

Thanks!

The patch is short, it's understandable and it fixes the problem.
I prefere to apply this patch as is.

I see some inconsistency in drivers/i2c/i2c.c.
We have i2c_master_send() and i2c_write_reg() functions.
These functions are intended to make similar work but they are
written in very different style. I suppose that we can rewrite
i2c_master_send() (e.g. drop FIXME) and make i2c_write_reg()
work on top of i2c_master_send(). Any comments?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
