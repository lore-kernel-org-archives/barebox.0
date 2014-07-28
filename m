Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBeRD-0006Oj-Ve
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 06:29:37 +0000
Date: Mon, 28 Jul 2014 08:29:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140728062913.GY23235@pengutronix.de>
References: <1406450152-23298-1-git-send-email-antonynpavlov@gmail.com>
 <20140728054917.GU23235@pengutronix.de>
 <20140728102243.4fa06426337415ec0cabc26c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140728102243.4fa06426337415ec0cabc26c@gmail.com>
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
Subject: Re: [PATCH] led: try to get LED's label from the 'label' property
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 28, 2014 at 10:22:43AM +0400, Antony Pavlov wrote:
> On Mon, 28 Jul 2014 07:49:17 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Sun, Jul 27, 2014 at 12:35:52PM +0400, Antony Pavlov wrote:
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  drivers/led/led-gpio.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
> > > index 7bb3b49..cddac08 100644
> > > --- a/drivers/led/led-gpio.c
> > > +++ b/drivers/led/led-gpio.c
> > > @@ -212,7 +212,9 @@ static int led_gpio_of_probe(struct device_d *dev)
> > >  			continue;
> > >  
> > >  		gled = xzalloc(sizeof(*gled));
> > > -		gled->led.name = xstrdup(child->name);
> > > +		gled->led.name = xstrdup(of_get_property(child, "label", NULL));
> > 
> > When the property doesn't exist you pass NULL to xstrdup. This will
> > crash.
> 
> My bad. I have seen barebox strdup() realization but missed xstrdup() realization.
> 
> Barebox' strdup() can handle NULL argument:
> 
> char * strdup(const char *s)
> {
>         char *new;
> 
>         if ((s == NULL) ||
>             ((new = malloc (strlen(s) + 1)) == NULL) ) {                         
>                 return NULL;                                                     
>         }
> 
>         strcpy (new, s);
>         return new;
> }
> 
> But xstrdup() can't do so:
> 
> char *xstrdup(const char *s)
> {
>         char *p = strdup(s);
> 
>         if (!p)
>                 panic("ERROR: out of memory\n");
>         return p;
> }               
> 
> Can I just change first xstrdup() to strdup() in my patch?

Why not add a NULL pointer check to xstrdup?

> 
> E.g.
> 
> -               gled->led.name = xstrdup(of_get_property(child, "label", NULL));
> +               gled->led.name = strdup(of_get_property(child, "label", NULL));
>                 if (!gled->led.name)
>                         gled->led.name = xstrdup(child->name);

I think this code will raise questions. When reading this code one could
easily ask why stdrup is used in the first place and xstrdup in the
second. A year ahead even we may not know the answer without thinking
about it ;)

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
