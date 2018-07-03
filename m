Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faPZb-0005Ra-Ui
 for barebox@lists.infradead.org; Tue, 03 Jul 2018 17:58:45 +0000
Received: by mail-it0-x243.google.com with SMTP id j185-v6so4115037ite.1
 for <barebox@lists.infradead.org>; Tue, 03 Jul 2018 10:58:33 -0700 (PDT)
MIME-Version: 1.0
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
 <20180630034900.3324-5-andrew.smirnov@gmail.com>
 <20180702062502.7hxe7gkev5jhjm3n@pengutronix.de>
In-Reply-To: <20180702062502.7hxe7gkev5jhjm3n@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 3 Jul 2018 10:58:21 -0700
Message-ID: <CAHQ1cqG-A7K-pfh9rEcgfKXLaH_JxSBF3Cshtnj621dwE1jhFw@mail.gmail.com>
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
Subject: Re: [PATCH 04/11] ARM: i.MX8MQ: Add a macro to load BL31 ATF blob
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Jul 1, 2018 at 11:25 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Jun 29, 2018 at 08:48:53PM -0700, Andrey Smirnov wrote:
> > Add a macro containing all of the code needed to load and transfer
> > control to BL31 ATF blob on i.MX8M.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/mach-imx/include/mach/atf.h | 63 ++++++++++++++++++++++++++++
> >  1 file changed, 63 insertions(+)
> >  create mode 100644 arch/arm/mach-imx/include/mach/atf.h
> >
> > diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
> > new file mode 100644
> > index 000000000..0b5018459
> > --- /dev/null
> > +++ b/arch/arm/mach-imx/include/mach/atf.h
> > @@ -0,0 +1,63 @@
> > +#ifndef __IMX_ATF_H__
> > +#define __IMX_ATF_H__
> > +
> > +#include <asm/system.h>
> > +
> > +#define MX8MQ_ATF_BL31_SIZE_LIMIT    SZ_64K
> > +#define MX8MQ_ATF_BL31_BASE_ADDR     0x00910000
> > +#define MX8MQ_ATF_BL33_BASE_ADDR     0x40200000
> > +
> > +/**
> > + * imx8mq_atf_load_bl31 - Load ATF BL31 blob and transfer contol to it
> > + *
> > + * @name:    Name of the BL31 blob
> > + *
> > + * This macro:
> > +
> > + *     1. Copies built-in BL31 blob to an address i.MX8M's BL31
> > + *        expects to be placed
> > + *
> > + *     2. Sets up temporary stack pointer for EL2, which is execution
> > + *        level that BL31 will drop us off at after it completes its
> > + *        initialization routine
> > + *
> > + *     3. Transfers control to BL31
> > + *
> > + * NOTE: This has to be a macro in order delay the expansion of
> > + * get_builtin_firmware(), otherwise it'll incorrectly interpret
> > + * "name" literally
>
> You show a good reason why we should add the firmware name strings
> to the image along with a function that iterates over them. How
> to add the firmware name strings is already provided in the Kernels
> firmware/Makefile.
>

OK, makes sense. I'll work on adding that feature as a part of v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
