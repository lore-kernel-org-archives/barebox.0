Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbbZL-0006tZ-LI
 for barebox@lists.infradead.org; Sun, 12 May 2013 19:04:28 +0000
Received: by mail-la0-f52.google.com with SMTP id fm20so5427265lab.39
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 12:04:05 -0700 (PDT)
Date: Sun, 12 May 2013 23:03:14 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130512230314.c74adac299c6ddb8b611e991@gmail.com>
In-Reply-To: <20130512134940.GI19265@game.jcrosoft.org>
References: <1368341836-19152-1-git-send-email-antonynpavlov@gmail.com>
 <20130512134940.GI19265@game.jcrosoft.org>
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
Subject: Re: [PATCH] gpio: fix typos
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, 12 May 2013 15:49:40 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> this is not typos it's coding style

You are right!

Alas! Sascha has already applied this patch to the master branch.

> Best Regards,
> J.
> On 10:57 Sun 12 May     , Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  include/asm-generic/gpio.h |    1 -
> >  include/gpio.h             |    2 +-
> >  2 files changed, 1 insertion(+), 2 deletions(-)
> > =

> > diff --git a/include/asm-generic/gpio.h b/include/asm-generic/gpio.h
> > index c2e7a5d..95fdd05 100644
> > --- a/include/asm-generic/gpio.h
> > +++ b/include/asm-generic/gpio.h
> > @@ -18,4 +18,3 @@ int gpio_direction_output(unsigned gpio, int value);
> >  int gpio_direction_input(unsigned gpio);
> >  =

> >  #endif /* __ASM_GENERIC_GPIO_H */
> > -
> > diff --git a/include/gpio.h b/include/gpio.h
> > index c2fb9f7..140d53c 100644
> > --- a/include/gpio.h
> > +++ b/include/gpio.h
> > @@ -6,7 +6,7 @@
> >  #ifndef CONFIG_GPIOLIB
> >  static inline int gpio_request(unsigned gpio, const char *label)
> >  {
> > -       return 0;
> > +	return 0;
> >  }
> >  =

> >  static inline void gpio_free(unsigned gpio)
> > -- =

> > 1.7.10.4
> > =

> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
