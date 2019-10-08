Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhpl-0003ZX-QD
 for barebox@lists.infradead.org; Tue, 08 Oct 2019 05:14:55 +0000
Received: by mail-io1-xd42.google.com with SMTP id a1so33858919ioc.6
 for <barebox@lists.infradead.org>; Mon, 07 Oct 2019 22:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191001005718.27165-1-andrew.smirnov@gmail.com>
 <20191001090331.81644cde6b0b9efd04a8a7a7@gmail.com>
In-Reply-To: <20191001090331.81644cde6b0b9efd04a8a7a7@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 7 Oct 2019 22:14:41 -0700
Message-ID: <CAHQ1cqEKP4KPRLy+XTbQzeDB9ucisP95LdS84ZpfkdBT4hZxTA@mail.gmail.com>
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
Subject: Re: [PATCH] version_string: Add toolchain and build host info
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Sep 30, 2019 at 11:03 PM Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> On Mon, 30 Sep 2019 17:57:18 -0700
> Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Hi!
>
> > Linux kernel reports the version of toolchain it was built with as a
> > part of its version string, which can be extremely useful when
> > debugging toolchain related issues. Make Barebox version string, mimic
> > that of Linux to get the same level of information in Barebox.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  common/version.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/common/version.c b/common/version.c
> > index 8b1fd4dbe7..5f57022dac 100644
> > --- a/common/version.c
> > +++ b/common/version.c
> > @@ -3,7 +3,8 @@
> >  #include <generated/utsrelease.h>
> >
> >  const char version_string[] =
> > -     "barebox " UTS_RELEASE " " UTS_VERSION "\n";
> > +     "barebox " UTS_RELEASE " (" BAREBOX_COMPILE_BY "@"
> > +     BAREBOX_COMPILE_HOST ") (" BAREBOX_COMPILER ") " UTS_VERSION "\n";
> >  EXPORT_SYMBOL(version_string);
>
>
> Can we keep COMPILE_BY and COMPILE_HOST in one line (as linux does)?

I don't understand. This line already follows formatting found in
Linux, e. g. https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/init/version.c?h=v5.4-rc2#n46

I have no preference how this is going to be formatted, really. Can
you just take this patch reformat it the way you want to see it and
submit it?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
