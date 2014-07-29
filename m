Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XC05X-0006PS-3T
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 05:36:39 +0000
Received: by mail-la0-f53.google.com with SMTP id gl10so6276328lab.12
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 22:36:16 -0700 (PDT)
Date: Tue, 29 Jul 2014 09:49:01 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140729094901.bb2d9f7329520a6857f5cf39@gmail.com>
In-Reply-To: <53D364AD.1040002@gmail.com>
References: <1406333464-16863-1-git-send-email-antonynpavlov@gmail.com>
 <53D364AD.1040002@gmail.com>
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
Subject: Re: [RFC] led: try to get LED's label from the 'label' property
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, 26 Jul 2014 10:19:57 +0200
Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> wrote:

> On 07/26/2014 02:11 AM, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  drivers/led/led-gpio.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
> > index 7bb3b49..31ae627 100644
> > --- a/drivers/led/led-gpio.c
> > +++ b/drivers/led/led-gpio.c
> > @@ -212,7 +212,9 @@ static int led_gpio_of_probe(struct device_d *dev)
> >  			continue;
> >  =

> >  		gled =3D xzalloc(sizeof(*gled));
> > -		gled->led.name =3D xstrdup(child->name);
> > +		gled->led.name =3D of_get_property(child, "label", NULL);
> =

> IIRC, back the days this was introduced, there was no "label" property.

Do you mean "the days barebox.git/drivers/led/led-gpio.c was introduced"?

commit 91d781f51df5d4de23d09a6777bfc968a0a7ca68
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Sat Dec 18 14:36:02 2010 +0100

    LED: Add gpio LED support

But linux.git/drivers/leds/leds-gpio.c was introduce in =


commit a7d878af94b223013a48078e0c8c0a654c24a057
Author: Trent Piepho <tpiepho@freescale.com>
Date:   Sat Jan 10 17:26:01 2009 +0000

    leds: Add openfirmware platform device support

> Anyway, of_get_property gives you the reference to something that can
> change, i.e. if you remove/modify the corresponding node or property
> you'll end up with a gleg->led.name pointing to something old or gone.
> =

> Sebastian
> =

> > +		if (!gled->led.name)
> > +			gled->led.name =3D xstrdup(child->name);
> >  		gled->gpio =3D gpio;
> >  		gled->active_low =3D (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
> >  =

> > =

> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
