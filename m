Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTmz1-00070J-IR
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 11:33:37 +0000
Received: by mail-it0-x243.google.com with SMTP id k17-v6so4877437ita.0
 for <barebox@lists.infradead.org>; Fri, 15 Jun 2018 04:33:24 -0700 (PDT)
MIME-Version: 1.0
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615041136.23492-8-andrew.smirnov@gmail.com>
 <20180615073718.jsmijzrybuvniqdn@pengutronix.de>
In-Reply-To: <20180615073718.jsmijzrybuvniqdn@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 15 Jun 2018 04:33:12 -0700
Message-ID: <CAHQ1cqG=BY89TjA7jg10GvnQHXx1h1R7LwEgCmDo2G7JauYP9Q@mail.gmail.com>
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
Subject: Re: [PATCH 04/27] console: Reconcile 3 different puts()
 implementations
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jun 15, 2018 at 12:37 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Thu, Jun 14, 2018 at 09:11:13PM -0700, Andrey Smirnov wrote:
> > PBL, CONSOLE_FULL and CONSOLE_SIMPLE contain almost identical puts()
> > implementations some of which also perform additional '\n' -> '\n\r'
> > compensation.
> >
> > Move all of that code into a central location and share as much of it
> > as possible.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  common/console.c        | 16 ----------
> >  common/console_simple.c | 17 -----------
> >  include/console.h       |  3 +-
> >  lib/console.c           | 67 +++++++++++++++++++++++++++++++++++++++--
> >  pbl/console.c           | 13 --------
> >  5 files changed, 67 insertions(+), 49 deletions(-)
> >
> > diff --git a/common/console.c b/common/console.c
> > index ab3d4d397..d64a7be25 100644
> > --- a/common/console.c
> > +++ b/common/console.c
> > @@ -253,22 +253,6 @@ static void console_set_stdoutpath(struct console_device *cdev)
> >       free(str);
> >  }
> >
> > -static int __console_puts(struct console_device *cdev, const char *s)
> > -{
> > -     int n = 0;
> > -
> > -     while (*s) {
> > -             if (*s == '\n') {
> > -                     cdev->putc(cdev, '\r');
> > -                     n++;
> > -             }
> > -             cdev->putc(cdev, *s);
> > -             n++;
> > -             s++;
> > -     }
> > -     return n;
> > -}
> > -
> >  static int fops_open(struct cdev *cdev, unsigned long flags)
> >  {
> >       struct console_device *priv = cdev->priv;
> > diff --git a/common/console_simple.c b/common/console_simple.c
> > index d560f8534..898f68a48 100644
> > --- a/common/console_simple.c
> > +++ b/common/console_simple.c
> > @@ -9,23 +9,6 @@ LIST_HEAD(console_list);
> >  EXPORT_SYMBOL(console_list);
> >  extern struct console_device *console;
> >
> > -int console_puts(unsigned int ch, const char *str)
> > -{
> > -     const char *s = str;
> > -     int i = 0;
> > -
> > -     while (*s) {
> > -             console_putc(ch, *s);
> > -             if (*s == '\n')
> > -                     console_putc(ch, '\r');
> > -             s++;
> > -             i++;
> > -     }
> > -
> > -     return i;
> > -}
> > -EXPORT_SYMBOL(console_puts);
> > -
> >  int tstc(void)
> >  {
> >       if (!console)
> > diff --git a/include/console.h b/include/console.h
> > index b3001ad16..81a5a5534 100644
> > --- a/include/console.h
> > +++ b/include/console.h
> > @@ -211,7 +211,8 @@ static inline void pbl_set_putc(putc_func_t putcf, void *ctx) {}
> >  bool console_allow_color(void);
> >
> >  void __cdev_putc(struct console_device *cdev, char c);
> > -void __console_putc(struct console_device *cdev, char c);
> > +int __console_putc(struct console_device *cdev, char c);
> > +int __console_puts(struct console_device *cdev, const char *str);
> >
> >  struct console_device *__console_get_default(void);
> >  void __console_set_putc(struct console_device *cdev,
> > diff --git a/lib/console.c b/lib/console.c
> > index 94c20dada..9f0fa9fc9 100644
> > --- a/lib/console.c
> > +++ b/lib/console.c
> > @@ -121,15 +121,78 @@ void __cdev_putc(struct console_device *cdev, char c)
> >   *
> >   * Internal high-level putc() implementation based on __cdev_putc()
> >   * that performs correct '\n' -> '\n\r' substitution.
> > + *
> > + * Function returns number of printed characters
> >   */
> > -void __console_putc(struct console_device *cdev, char c)
> > +int __console_putc(struct console_device *cdev, char c)
> >  {
> > +     int n = 0;
> > +
> >       __cdev_putc(cdev, c);
> > -     if (c == '\n')
> > +     n++;
> > +     if (c == '\n') {
> >               __cdev_putc(cdev, '\r');
> > +             n++;
> > +     }
> > +
> > +     return n;
> >  }
>
> The correct line ending is "\r\n", not the other way round. Please use
> that one.
>

Sure, will do in v2.

> >
> > +/**
> > + * console_putc - Default console_putc() implementation
> > + *
> > + * @cdev:    Console device to use
>
> There is no @cdev parameter to this function.
>

Yeah, will fix in v2.

> > + * @c:               Character to print
> > + *
> > + * This is default console_putc() implementation used as is by PBL and
> > + * CONSOLE_SIMPLE. Declared as __weak in order to allow other
> > + * implementation to override it.
> > + */
> >  __weak void console_putc(unsigned int ch, char c)
> >  {
> >       __console_putc(__console_get_default(), c);
> >  }
> > +
> > +/**
> > + * console_puts - Default console_puts() implementation
> > + *
> > + * @cdev:    Console device to use
>
> ditto.
>

Will fix in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
