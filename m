Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmkol-0005gF-MH
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 19:37:41 +0000
Received: by mail-wr1-x442.google.com with SMTP id r10so7770378wrs.10
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2019 11:37:39 -0800 (PST)
MIME-Version: 1.0
References: <20190123011338.32517-1-andrew.smirnov@gmail.com>
 <20190123011338.32517-6-andrew.smirnov@gmail.com>
 <20190124075245.wtyczicf5ziztwsh@pengutronix.de>
In-Reply-To: <20190124075245.wtyczicf5ziztwsh@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 24 Jan 2019 11:37:26 -0800
Message-ID: <CAHQ1cqHKc442UGC8ydHXPd6vi6WUL3PKjkmgokDBWyK=vRS9nw@mail.gmail.com>
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
Subject: Re: [PATCH 5/7] fs: Calculate new position before validtiy check in
 lseek()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 23, 2019 at 11:52 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Jan 22, 2019 at 05:13:36PM -0800, Andrey Smirnov wrote:
> > Calculate new position before validtiy check in lseek() to simplify
> > code a bit as well as make following commit simpler. This should be
> > harmless thing to do, since we don't actually use calculated value
> > unless it passes the validity check.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  fs/fs.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/fs/fs.c b/fs/fs.c
> > index 6a62fb98b..9372b9981 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -421,21 +421,21 @@ loff_t lseek(int fildes, loff_t offset, int whence)
> >
> >       switch (whence) {
> >       case SEEK_SET:
> > +             pos = offset;
> >               if (f->size != FILE_SIZE_STREAM && offset > f->size)
> >                       goto out;
> >               if (IS_ERR_VALUE(offset))
> >                       goto out;
>
> This test looks quite unnecessary. Can we remove it? git blame points to
> me of course, but I can't make any sense of it.
>

It originally was "if (offset < 0)", which I think is
reasonable/necessary given how we probably don't want to allow
specifying negative "offset" with SEEK_SET, but allow it for SEEK_END
and SEEK_CUR. Then in attempt to fix /dev/mem accesses on 64-bit MIPS
original check was changed to IS_ERR_VALUE(offset), which made the
original problem less visible (by narrowing down offsets that are
forbidden) which broke lseek() on 32-bit platforms. Hope this
clarifies things a bit.

> > -             pos = offset;
> >               break;
> >       case SEEK_CUR:
> > -             if (f->size != FILE_SIZE_STREAM && offset + f->pos > f->size)
> > -                     goto out;
> >               pos = f->pos + offset;
> > +             if (f->size != FILE_SIZE_STREAM && pos > f->size)
> > +                     goto out;
> >               break;
> >       case SEEK_END:
> > +             pos = f->size + offset;
> >               if (offset > 0)
> >                       goto out;
> > -             pos = f->size + offset;
>
> When starting to shift the validity checks around, can't we just do them
> after the switch/case instead of in each branch?
>

I think we can move "if (f->size != FILE_SIZE_STREAM && pos >
f->size)" outside. Not sure about some "whence" specific checks. I'll
give it a try in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
