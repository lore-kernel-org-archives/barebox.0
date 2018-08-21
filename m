Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x243.google.com ([2607:f8b0:4001:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsDBv-0003yw-3v
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 20:23:52 +0000
Received: by mail-io0-x243.google.com with SMTP id y10-v6so16463086ioa.10
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2018 13:23:40 -0700 (PDT)
MIME-Version: 1.0
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-3-andrew.smirnov@gmail.com>
 <20180821100728.imn64ysjyqfrf4zv@pengutronix.de>
In-Reply-To: <20180821100728.imn64ysjyqfrf4zv@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 21 Aug 2018 13:23:28 -0700
Message-ID: <CAHQ1cqH9dRLujgDyqii39guxgDrC=OPhFtqRV_+jwQ1RZTSN9w@mail.gmail.com>
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

On Tue, Aug 21, 2018 at 3:07 AM Roland Hieber <r.hieber@pengutronix.de> wrote:
>
> Hello Andrey,
>
> On Mon, Aug 20, 2018 at 11:25:43PM -0700, Andrey Smirnov wrote:
> > Modify file_detect_type() and add code needed to be able to detect
> > i.MX boot images with v1 header.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  common/filetype.c  | 7 +++++++
> >  include/filetype.h | 1 +
> >  2 files changed, 8 insertions(+)
> >
> > diff --git a/common/filetype.c b/common/filetype.c
> > index c5f2384a6..f68a83bec 100644
> > --- a/common/filetype.c
> > +++ b/common/filetype.c
> > @@ -29,6 +29,8 @@
> >  #include <image-sparse.h>
> >  #include <elf.h>
> >
> > +#include <../mach-imx/include/mach/imx-header.h>
>
> This fails at least on ARCH=sandbox:
>
>   common/filetype.c:32:10: fatal error: ../mach-imx/include/mach/imx-header.h: No such file or directory
>    #include <../mach-imx/include/mach/imx-header.h>
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> I guess it could be solved with an #ifdef ARCH_IMX.
>

Good catch! I'll make sure to test against ARCH=sandbox when preparing
v2 of the set.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
