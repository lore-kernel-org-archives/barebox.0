Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsm07-0003pE-1k
 for barebox@lists.infradead.org; Thu, 23 Aug 2018 09:34:00 +0000
Date: Thu, 23 Aug 2018 11:33:45 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180823093345.xjojlxjeafrczzg4@pengutronix.de>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-3-andrew.smirnov@gmail.com>
 <20180821100728.imn64ysjyqfrf4zv@pengutronix.de>
 <CAHQ1cqH9dRLujgDyqii39guxgDrC=OPhFtqRV_+jwQ1RZTSN9w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqH9dRLujgDyqii39guxgDrC=OPhFtqRV_+jwQ1RZTSN9w@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Aug 21, 2018 at 01:23:28PM -0700, Andrey Smirnov wrote:
> On Tue, Aug 21, 2018 at 3:07 AM Roland Hieber <r.hieber@pengutronix.de> wrote:
> >
> > Hello Andrey,
> >
> > On Mon, Aug 20, 2018 at 11:25:43PM -0700, Andrey Smirnov wrote:
> > > Modify file_detect_type() and add code needed to be able to detect
> > > i.MX boot images with v1 header.
> > >
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > > ---
> > >  common/filetype.c  | 7 +++++++
> > >  include/filetype.h | 1 +
> > >  2 files changed, 8 insertions(+)
> > >
> > > diff --git a/common/filetype.c b/common/filetype.c
> > > index c5f2384a6..f68a83bec 100644
> > > --- a/common/filetype.c
> > > +++ b/common/filetype.c
> > > @@ -29,6 +29,8 @@
> > >  #include <image-sparse.h>
> > >  #include <elf.h>
> > >
> > > +#include <../mach-imx/include/mach/imx-header.h>
> >
> > This fails at least on ARCH=sandbox:
> >
> >   common/filetype.c:32:10: fatal error: ../mach-imx/include/mach/imx-header.h: No such file or directory
> >    #include <../mach-imx/include/mach/imx-header.h>
> >             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > I guess it could be solved with an #ifdef ARCH_IMX.
> >
> 
> Good catch! I'll make sure to test against ARCH=sandbox when preparing
> v2 of the set.

An include path of the form <../mach-imx/> strikes me as a rather odd
thing to have in code that should be machine-independent. Maybe it is
better to isolate the respective symbols from imx-header.h into a
generic header file that can live in the same path as e.g. <elf.h>. This
way we could also be able to detect IMX images on ARCH=sandbox :)

 - Roland


-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
