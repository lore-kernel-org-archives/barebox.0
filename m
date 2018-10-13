Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBQpN-0007WA-7w
 for barebox@lists.infradead.org; Sat, 13 Oct 2018 20:48:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id a13-v6so16944201wrt.5
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2018 13:47:50 -0700 (PDT)
MIME-Version: 1.0
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
 <20181009173805.26181-9-andrew.smirnov@gmail.com>
 <20181011083113.kxcgiljgdkr7mhvb@pengutronix.de>
In-Reply-To: <20181011083113.kxcgiljgdkr7mhvb@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 13 Oct 2018 13:47:37 -0700
Message-ID: <CAHQ1cqF4OLoeSsw=YOZQni0LiWQycUHwG1Rw1tJo6Ze7iomK=Q@mail.gmail.com>
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
Subject: Re: [PATCH v2 08/17] linux: string: Port kbasename()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Oct 11, 2018 at 1:31 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Oct 09, 2018 at 10:37:56AM -0700, Andrey Smirnov wrote:
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  include/linux/string.h | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/include/linux/string.h b/include/linux/string.h
> > index 3418b4fbe..c9823dab8 100644
> > --- a/include/linux/string.h
> > +++ b/include/linux/string.h
> > @@ -111,6 +111,18 @@ extern char *strim(char *);
> >
> >  void *memchr_inv(const void *start, int c, size_t bytes);
> >
> > +/**
> > + * kbasename - return the last part of a pathname.
> > + *
> > + * @path: path to extract the filename from.
> > + */
> > +static inline const char *kbasename(const char *path)
> > +{
> > +     const char *tail = strrchr(path, '/');
> > +     return tail ? tail + 1 : path;
> > +}
>
> We already have basename() and posix_basename().

Sorry, forgot to check if something like that existed.

> How does this one differ or could this be an alias for one of them?
>

AFAICT, kbasename() implements the same algorithm as basename() we
already have, except it relies on strrchr() to do all of the work
instead of explicitly coding reverse string traversal. Aliasing would
be difficult since kbasename() operates on and returns "const char *"
and basename doesn't, but I'll change the patch to convert basename()
to use kbasename() internally in v3.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
