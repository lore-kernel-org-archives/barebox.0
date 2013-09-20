Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMvdk-0001sU-Hh
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 08:00:37 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id EA185DC86C9
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 10:00:14 +0200 (CEST)
Date: Fri, 20 Sep 2013 10:01:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130920080127.GG1137@ns203013.ovh.net>
References: <20130920044518.GB1137@ns203013.ovh.net>
 <1379652377-20276-1-git-send-email-plagnioj@jcrosoft.com>
 <20130920072313.GF30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130920072313.GF30088@pengutronix.de>
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
Subject: Re: [PATCH 1/3] misc: add bootcount framework
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:23 Fri 20 Sep     , Sascha Hauer wrote:
> On Fri, Sep 20, 2013 at 06:46:15AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/misc/Kconfig     |  3 +++
> >  drivers/misc/Makefile    |  1 +
> >  drivers/misc/bootcount.c | 24 ++++++++++++++++++++++++
> >  include/bootcount.h      | 21 +++++++++++++++++++++
> >  4 files changed, 49 insertions(+)
> >  create mode 100644 drivers/misc/bootcount.c
> >  create mode 100644 include/bootcount.h
> > 
> > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > index 606490b..a972ba4 100644
> > --- a/drivers/misc/Kconfig
> > +++ b/drivers/misc/Kconfig
> > @@ -15,4 +15,7 @@ config JTAG
> >  	help
> >  	  Controls JTAG chains connected to I/O pins
> >  
> > +config BOOTCOUNT
> > +	bool
> > +
> >  endif # MISC_DEVICES
> > diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> > index b085577..fa668c1 100644
> > --- a/drivers/misc/Makefile
> > +++ b/drivers/misc/Makefile
> > @@ -3,3 +3,4 @@
> >  #
> >  
> >  obj-$(CONFIG_JTAG)		+= jtag.o
> > +obj-$(CONFIG_BOOTCOUNT)		+= bootcount.o
> > diff --git a/drivers/misc/bootcount.c b/drivers/misc/bootcount.c
> > new file mode 100644
> > index 0000000..0205d00
> > --- /dev/null
> > +++ b/drivers/misc/bootcount.c
> > @@ -0,0 +1,24 @@
> > +/*
> > + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > + *
> > + * GPLv2 Only
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <bootcount.h>
> > +
> > +static struct bootcount_driver *bd;
> > +
> > +void bootcount_register(struct bootcount_driver *drv)
> > +{
> > +	bd = drv;
> > +}
> > +
> > +static int bootcount_inc(void)
> > +{
> > +	if (bd)
> > +		bd->inc(bd);
> > +	return 0;
> > +}
> > +late_initcall(bootcount_inc);
> 
> This 'framework' in it's current state doesn't make much sense. It
> doesn't even have support for reading the actual count back which I
> would see as one of the minimum requirements for this.

I let the driver handle this

we can move this here if you want
> 
> Also it's not clear what exactly this boot counter counts. Is it the
> number of boots since the beginning of time? Or is it the boot counter
> since the last power cycle or since the RTC Backup battery was last
> changed?

the boot count is alway how many time the system start
the number will depend on you system if you use an env it;s will be since
ever. If you use a regsiter it will be since ever if register is a backup
powered register or since power on

the comportement will depend on the implementation and the hardware feature

for somfy it's since ever as we use a backup register which is powered by a
backup battery

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
