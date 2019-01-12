Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giPzZ-0005mY-Rg
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 20:34:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id t27so18739659wra.6
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2019 12:34:51 -0800 (PST)
MIME-Version: 1.0
References: <20190112082456.7441-1-andrew.smirnov@gmail.com>
 <20190112082456.7441-5-andrew.smirnov@gmail.com>
 <20190112111806.GG14273@ravnborg.org>
In-Reply-To: <20190112111806.GG14273@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 12 Jan 2019 12:34:38 -0800
Message-ID: <CAHQ1cqEVVVW4Z1sO922-C1RkkcitsodgLrUtuhxbVKEi3=20=g@mail.gmail.com>
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
Subject: Re: [PATCH 4/6] crypto: digest: Split memory vs. file code into
 separate functions
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Jan 12, 2019 at 3:18 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Andrey.
>
> > +static int digest_update_from_fd(struct digest *d, int fd,
> > +                              ulong start, ulong size)
> > +{
> > +     unsigned char *buf = xmalloc(PAGE_SIZE);
> > +     int ret = 0;
> > +
> > +     ret = lseek(fd, start, SEEK_SET);
> > +     if (ret == -1) {
> > +             perror("lseek");
> > +             goto out_free;
> > +     }
> lseek return (off_t)-1 - should ret be of type off_t to make this correct?
>

I tried to avoid changing original code too much in this patch, just
to keep the scope of this patch to just refactoring. But yeah, I think
there's definitely a problem that a larger value of "start" passed to
lseek() will result in a failure due to "loff_t" downcast to "int".
Another problem with this is that lseek() doesn't really return a
detailed error code, so what this function should really do is capture
it from "errno" and this way "ret" can be kept as "int".

There's a couple of more places in digest.c that don't really capture
"errno", so I think I'll create a separate follow up series to fix
that, instead of re-spinning this one.

Thanks,
Andrey Smirnov


> The code looks more readable with the two helper functions.
> So +1 from me.
>
>         Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
