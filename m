Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSTV-00073G-R3
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 17:50:15 +0000
Received: by mail-io1-xd42.google.com with SMTP id z19so13423990ior.0
 for <barebox@lists.infradead.org>; Mon, 23 Sep 2019 10:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190914062424.7919-1-andrew.smirnov@gmail.com>
 <20190916073759.aoqpmyb7rtgw4ae4@pengutronix.de>
In-Reply-To: <20190916073759.aoqpmyb7rtgw4ae4@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 23 Sep 2019 10:50:00 -0700
Message-ID: <CAHQ1cqHMj9wPn-DNDJgwN1WH6Eo0L+qQWy=LT1HCp4u4qDfdbw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: dsa: mv88e6xxx: Wait for EEPROM done after HW reset
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

On Mon, Sep 16, 2019 at 12:38 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Sep 13, 2019 at 11:24:24PM -0700, Andrey Smirnov wrote:
> > Based on a unpublished patch from Andrew Lunn:
> >
> >     The the switch is hardware reset, it reads the contents of the
> >     EEPROM.
>
> Could you correct this sentence to make its meaning clear?
>

Sure, will do in v2.

> >     This can contain instructions for programming values into
> >     registers and to perform waits between such programming. Reading
> >     the EEPROM can take longer than the 100ms
> >     mv88e6xxx_hardware_reset() waits after deasserting the reset
> >     GPIO. So poll the EEPROM done bit to ensure it is complete.
> >
> >     Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> >
> > @@ -836,6 +865,11 @@ static int mv88e6xxx_probe(struct device_d *dev)
> >                */
> >               mv88e6xxx_hardware_reset_delay();
> >       }
> > +     /*
> > +      * Switch will not retrun valid data over MDIO until EEPROM is
> > +      * loaded
>
> s/retrun/return/
>

Will fix in v2.

> > +      */
> > +     mv88e6xxx_g1_wait_eeprom_done(chip);
> >
> >       err = mv88e6xxx_detect(chip);
> >       if (err)
> > +void mv88e6xxx_g1_wait_eeprom_done(struct mv88e6xxx_chip *chip)
> > +{
> > +     const uint64_t start   = get_time_ns();
> > +     const uint64_t timeout = 20 * SECOND;
> > +     u16 val;
> > +     int err;
> > +
> > +     /* Wait up to 1 second for the switch to finish reading the
> > +      * EEPROM.
> > +      */
> > +     while (!is_timeout(start, timeout)) {
> > +             err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_STS, &val);
> > +             if (err) {
> > +                     dev_err(chip->dev, "Error reading status");
> > +                     return;
> > +             }
> > +
> > +             if (val != 0xFFFF && /* switch will return 0xffff it it */
>
> This comment looks incomplete.
>

Yeah, I'll squash the fixup I sent for this into v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
