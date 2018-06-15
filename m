Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x244.google.com ([2607:f8b0:4001:c06::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTngi-0000md-Ct
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 12:18:46 +0000
Received: by mail-io0-x244.google.com with SMTP id d185-v6so10536331ioe.0
 for <barebox@lists.infradead.org>; Fri, 15 Jun 2018 05:18:34 -0700 (PDT)
MIME-Version: 1.0
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615041136.23492-5-andrew.smirnov@gmail.com>
 <20180615045805.GB10093@ravnborg.org>
In-Reply-To: <20180615045805.GB10093@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 15 Jun 2018 05:18:21 -0700
Message-ID: <CAHQ1cqFU_C6h10WXq5dq7MZytWfP-6hUY+fG0UjSrjV38qiwGw@mail.gmail.com>
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
Subject: Re: [PATCH 02/27] console: Unify console_simple.c and pbl/console.c
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jun 14, 2018 at 9:58 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Andrey.
>
> > +
> > +/**
> > + * __console_get_default - Return default output console
> > + *
> > + * Internal function used to determine which console to use for early
> > + * output. It has the following two use-cases:
> > + *
> > + *   1. PBL, where it falls back onto console_ll and whatever it is
> > + *      set up to (either putc_ll or custome callback set with
> > + *      pbl_set_putc())
> > + *
> > + *   2. CONSOLE_SIMPLE, where it falls back onto console_ll (which in
> > + *      this case always boils down to a putc_ll() call) until first
> > + *      (and only) console is registered via console_register().
> > + */
> > +struct console_device *__console_get_default(void)
>
> If it is used as internal only then it should be static.
> (Have not read the the remaining patches)

This function is defined in lib/console.c and used in pbl/console.c
all as a part of this patch. It cannot be declared static.

> > +{
> > +     /*
> > +      * Doing on-demand initialization here as opposed to in the
> > +      * definition of console_ll above has that advantage that on
> > +      * some architecutres (e.g. AArch64) it allows us to avoid
> > +      * additional relocation and makes it possible to use console
> > +      * infrastructure before any relocation happens
> > +      */
> > +     if (unlikely(!console_ll.putc))
> > +             console_ll.putc = __console_ll_putc;
> > +
> > +     if (IS_ENABLED(__PBL__) || !console)
> > +             return &console_ll;
> > +
> > +     return console;
> > +}
> > +
> > +/**
> > + * __console_set_putc - Early console initalization helper
> > + *
> > + * @cdev:    Console device to initialize
> > + * @putcf:   putc() implementation to be used for this console
> > + * @ctx:     Context to pass to putc()
> > + *
> > + * Internal function used to initialize early/trivial console devices
> > + * capable of only outputting a single character
> > + */
> > +void __console_set_putc(struct console_device *cdev,
> > +                     putc_func_t putcf, void *ctx)
> Likewise, and so on for the reimaining __xxx functions.
>

Same as above.

>
> > +{
> > +     cdev->putc = (void *)putcf;
> > +     cdev->ctx = ctx;
> > +}
> > +
> > +/**
> > + * __cdev_putc - Internal .putc() callback dispatcher
> > + *
> > + * @cdev:    Console device to use
> > + * @c:               Character to print
> > + *
> > + * Internal .putc() callback dispatcher needed to correctly select
> > + * which context to pass.
> > + *
> > + * This is needed becuase when being used in PBL in conjunction with
> > + * pbl_set_putc(), .putc() callback is expecting to receive a void *
> > + * context that was registered earlier.
> > + *
> > + * In the "normal" world, however all of the .putc() callback are
> > + * written with expectation of receiving struct console_device * as a
> > + * first argument.
> > + *
> > + * Accomodation of both of those use-cases is the purpoese of this
> > + * function
> > + */
> > +void __cdev_putc(struct console_device *cdev, char c)
> > +{
> > +     void *ctx = cdev->ctx ? : cdev;
> Looks strange to me.
> What is ctx assigned in the "true" case?
> Maybe there is some subtle C rule that I have missed/forgot.
> Point is, if this is valid code it may also make other puzzeled.
>

Sascha already commented on this one.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
