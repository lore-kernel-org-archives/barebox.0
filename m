Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fswjU-0005at-2y
 for barebox@lists.infradead.org; Thu, 23 Aug 2018 21:01:33 +0000
Received: by mail-it0-x244.google.com with SMTP id h20-v6so9409996itf.2
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 14:01:21 -0700 (PDT)
MIME-Version: 1.0
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-3-andrew.smirnov@gmail.com>
 <20180821100728.imn64ysjyqfrf4zv@pengutronix.de>
 <CAHQ1cqH9dRLujgDyqii39guxgDrC=OPhFtqRV_+jwQ1RZTSN9w@mail.gmail.com>
 <20180823093345.xjojlxjeafrczzg4@pengutronix.de>
In-Reply-To: <20180823093345.xjojlxjeafrczzg4@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 14:01:09 -0700
Message-ID: <CAHQ1cqEKRdOscnbTZeDRy+VAMDnv6RsARx_Gm_HJnWb5vKJbZg@mail.gmail.com>
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
Subject: Re: [PATCH 02/22] filetype: Add code to detect i.MX image v1
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Aug 23, 2018 at 2:33 AM Roland Hieber <r.hieber@pengutronix.de> wrote:
>
> On Tue, Aug 21, 2018 at 01:23:28PM -0700, Andrey Smirnov wrote:
> > On Tue, Aug 21, 2018 at 3:07 AM Roland Hieber <r.hieber@pengutronix.de> wrote:
> > >
> > > Hello Andrey,
> > >
> > > On Mon, Aug 20, 2018 at 11:25:43PM -0700, Andrey Smirnov wrote:
> > > > Modify file_detect_type() and add code needed to be able to detect
> > > > i.MX boot images with v1 header.
> > > >
> > > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > > > ---
> > > >  common/filetype.c  | 7 +++++++
> > > >  include/filetype.h | 1 +
> > > >  2 files changed, 8 insertions(+)
> > > >
> > > > diff --git a/common/filetype.c b/common/filetype.c
> > > > index c5f2384a6..f68a83bec 100644
> > > > --- a/common/filetype.c
> > > > +++ b/common/filetype.c
> > > > @@ -29,6 +29,8 @@
> > > >  #include <image-sparse.h>
> > > >  #include <elf.h>
> > > >
> > > > +#include <../mach-imx/include/mach/imx-header.h>
> > >
> > > This fails at least on ARCH=sandbox:
> > >
> > >   common/filetype.c:32:10: fatal error: ../mach-imx/include/mach/imx-header.h: No such file or directory
> > >    #include <../mach-imx/include/mach/imx-header.h>
> > >             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > I guess it could be solved with an #ifdef ARCH_IMX.
> > >
> >
> > Good catch! I'll make sure to test against ARCH=sandbox when preparing
> > v2 of the set.
>
> An include path of the form <../mach-imx/> strikes me as a rather odd
> thing to have in code that should be machine-independent. Maybe it is
> better to isolate the respective symbols from imx-header.h into a
> generic header file that can live in the same path as e.g. <elf.h>. This
> way we could also be able to detect IMX images on ARCH=sandbox :)
>

I don't think that file is really machine independent. There's already
code to detect "filetype_mxs_bootstream", "filetype_socfpga_xload",
"filetype_kwbimage_v0", etc. which are as machine dependent as it
could be. It just those codepaths use magic numbers directly and don't
bother with any includes.

As for being able to detect IMX images on ARCH=sandbox, I was planning
on trying to resolve compilation issue (be it with adding a -I or
creating a shared header) without resorting to #ifdef ARCH_IMX a bunch
of code first and only doing that if I can find no other way of fixing
it.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
