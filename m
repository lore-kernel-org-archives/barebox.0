Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g8AON-0005U9-In
 for barebox@lists.infradead.org; Thu, 04 Oct 2018 20:38:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id y16so11326434wrw.3
 for <barebox@lists.infradead.org>; Thu, 04 Oct 2018 13:38:28 -0700 (PDT)
MIME-Version: 1.0
References: <20180927041129.29584-1-andrew.smirnov@gmail.com>
 <20180927041129.29584-3-andrew.smirnov@gmail.com>
 <20180927114255.GY4097@pengutronix.de>
In-Reply-To: <20180927114255.GY4097@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 4 Oct 2018 13:38:15 -0700
Message-ID: <CAHQ1cqHiati+mx6_bkks2sKK7z+Jutj51HdJj8czGeUDY3prBg@mail.gmail.com>
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
Subject: Re: [PATCH 2/3] bbu: command: Make sure specified update handler
 exists
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Sep 27, 2018 at 4:42 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Andrey,
>
> On Wed, Sep 26, 2018 at 09:11:28PM -0700, Andrey Smirnov wrote:
> > @@ -57,6 +62,30 @@ static int do_barebox_update(int argc, char *argv[])
> >               }
> >       }
> >
> > +     if (data.handler_name && data.devicefile) {
> > +             printf("Both TARGET and DEVICE are provided. "
> > +                    "Ignoring the latter\n");
> > +
> > +             data.devicefile = NULL;
> > +     }
> > +
> > +     if (data.handler_name &&
> > +         !bbu_find_handler_by_name(data.handler_name)) {
> > +             printf("handler '%s' does not exist\n",
> > +                    data.handler_name);
> > +             goto error;
> > +     } else if (data.devicefile &&
> > +                !bbu_find_handler_by_device(data.devicefile)) {
> > +             printf("handler for '%s' does not exist\n",
> > +                    data.devicefile);
> > +             goto error;
> > +     } if (!data.handler_name &&
> > +           !data.devicefile &&
> > +           !bbu_find_handler_by_name(NULL)) {
> > +             printf("default handler does not exist\n");
> > +             goto error;
> > +     }
>
> There should be a linebreak before the last if().
>
> Maybe it should be rewritten as:
>
>         if (data.handler_name)
>                 handler = bbu_find_handler_by_name();
>         else if (data.devicefile)
>                 handler = bbu_find_handler_by_device();
>         else
>                 handler = bbu_find_handler_by_name();
>
> barebox_update() currently repeats these steps, so I think it would be a
> next logical step to pass this handler to barebox_update() instead of
> searching it there again.
>

Yeah, makes sense. Will change in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
