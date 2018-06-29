Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYyAK-000581-K5
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 18:30:47 +0000
Received: by mail-it0-x242.google.com with SMTP id l16-v6so4155753ita.0
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 11:30:30 -0700 (PDT)
MIME-Version: 1.0
References: <20180628045436.16710-1-andrew.smirnov@gmail.com>
 <20180628045436.16710-11-andrew.smirnov@gmail.com>
 <20180629065702.ia6uues5eru62asv@pengutronix.de>
In-Reply-To: <20180629065702.ia6uues5eru62asv@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 11:30:18 -0700
Message-ID: <CAHQ1cqEwMVy3+rQdVSeuy9qAxb2k7Bkb6vZEoeFLN4G2M5VOvg@mail.gmail.com>
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
Subject: Re: [PATCH v4 10/10] ARM: i.MX: Add support for ZII RDU1 board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, Barebox List <barebox@lists.infradead.org>

On Thu, Jun 28, 2018 at 11:57 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Andrey,
>
> On Wed, Jun 27, 2018 at 09:54:36PM -0700, Andrey Smirnov wrote:
> > +#include <common.h>
> > +#include <init.h>
> > +#include <mach/bbu.h>
> > +#include <libfile.h>
> > +#include <mach/imx5.h>
> > +
> > +#define ZII_RDU1_DATAFLASH           "/dev/dataflash0"
> > +#define ZII_RDU1_DATAFLASH_BAREBOX   ZII_RDU1_DATAFLASH ".barebox"
> > +
> > +/**
> > + * zii_rdu1_bbu_spi_update - RDU1 specific BBU handler
> > + *
> > + * @handler: BBU handler pointer passed down by BBU framework
> > + * @data:    BBU data pointer passed down by BBU framework
> > + *
> > + * RDU1 design chose to use first page of the onboard dataflash to
> > + * store vendor board-specific paramters, which means it needs to be
> > + * left intact. However this is problematic because regular ARM
> > + * barebox images contain a 1K preamble and are expected to be placed
> > + * starting at offset zero.
>
> Actually I think that this case is not that unusual. We already keep a
> partition table in that area in case of MMC devices. This code will need
> adjustments anyway when with i.MX8 we finally have enough space in the
> beginning of the device to support GPTs. How about the patch I just sent
> out which simply generalizes and exports the existing KEEP_DOSPART flag?
>
> Sorry for not looking earlier at this issue.
>
> I have merged the patch together with the RDU1 support into next. Please
> let me know if ou are happy with that and if it works of course.
>

I'll give it a try and report back shortly.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
