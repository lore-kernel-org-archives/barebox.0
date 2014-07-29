Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XC05h-0006Yt-TH
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 05:36:50 +0000
Received: by mail-la0-f51.google.com with SMTP id pn19so830223lab.24
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 22:36:26 -0700 (PDT)
Date: Tue, 29 Jul 2014 09:49:11 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140729094911.2c3a21c89f9711d638ecaa89@gmail.com>
In-Reply-To: <53D5EF03.4050804@gmail.com>
References: <1406450152-23298-1-git-send-email-antonynpavlov@gmail.com>
 <20140728054917.GU23235@pengutronix.de>
 <20140728102243.4fa06426337415ec0cabc26c@gmail.com>
 <53D5EF03.4050804@gmail.com>
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
Subject: Re: [PATCH] led: try to get LED's label from the 'label' property
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, 28 Jul 2014 08:34:43 +0200
Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> wrote:

> On 07/28/2014 08:22 AM, Antony Pavlov wrote:
> > On Mon, 28 Jul 2014 07:49:17 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> >> On Sun, Jul 27, 2014 at 12:35:52PM +0400, Antony Pavlov wrote:
> >>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >>> ---

> >>>  drivers/led/led-gpio.c | 4 +++-
> >>>  1 file changed, 3 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
> >>> index 7bb3b49..cddac08 100644
> >>> --- a/drivers/led/led-gpio.c
> >>> +++ b/drivers/led/led-gpio.c
> >>> @@ -212,7 +212,9 @@ static int led_gpio_of_probe(struct device_d *dev)
> >>>  			continue;
> >>>  =

> >>>  		gled =3D xzalloc(sizeof(*gled));
> >>> -		gled->led.name =3D xstrdup(child->name);
> >>> +		gled->led.name =3D xstrdup(of_get_property(child, "label", NULL));
> >>
> >> When the property doesn't exist you pass NULL to xstrdup. This will
> >> crash.
> > =

> > My bad. I have seen barebox strdup() realization but missed xstrdup() r=
ealization.
> > =

> > Barebox' strdup() can handle NULL argument:
> > =

> > char * strdup(const char *s)
> > {
> >         char *new;
> > =

> >         if ((s =3D=3D NULL) ||
> >             ((new =3D malloc (strlen(s) + 1)) =3D=3D NULL) ) {         =
                =

> >                 return NULL;                                           =
          =

> >         }
> > =

> >         strcpy (new, s);
> >         return new;
> > }
> > =

> > But xstrdup() can't do so:
> > =

> > char *xstrdup(const char *s)
> > {
> >         char *p =3D strdup(s);
> > =

> >         if (!p)
> >                 panic("ERROR: out of memory\n");
> >         return p;
> > }               =

> > =

> > Can I just change first xstrdup() to strdup() in my patch?
> > =

> > E.g.
> > =

> > -               gled->led.name =3D xstrdup(of_get_property(child, "labe=
l", NULL));
> > +               gled->led.name =3D strdup(of_get_property(child, "label=
", NULL));
> >                 if (!gled->led.name)
> >                         gled->led.name =3D xstrdup(child->name);
> > =

> >> You'll have to add a check or make xstrdup tolerate NULL
> >> pointers.
> >>
> =

> Correct code sequence would probably be:
> =

> const char *label;
> =

> if (of_property_read_string(child, "label", &label))
> 	gled->led.name =3D xstrdup(label);
> else
> 	gled->led.name =3D xstrdup(child->name);

Hmm. of_property_read_string() returns 0 on success...

> =

> or
> =

> const char *label =3D child->name;
> =

> of_property_read_string(child, "label", &label);
> gled->led.name =3D xstrdup(label);
> =

> Sebastian
> =

> >>> +		if (!gled->led.name)
> >>> +			gled->led.name =3D xstrdup(child->name);
> >>>  		gled->gpio =3D gpio;
> >>>  		gled->active_low =3D (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
> >>>  =

> >>> -- =

> >>> 2.0.1
> >>>
> >>>
> >>> _______________________________________________
> >>> barebox mailing list
> >>> barebox@lists.infradead.org
> >>> http://lists.infradead.org/mailman/listinfo/barebox
> >>>
> >>
> >> -- =

> >> Pengutronix e.K.                           |                          =
   |
> >> Industrial Linux Solutions                 | http://www.pengutronix.de=
/  |
> >> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =
   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
> > =

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
