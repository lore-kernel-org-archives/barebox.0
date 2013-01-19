Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TwYcC-0008SC-3F
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 13:37:45 +0000
Received: from mail412.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 09ADDFF884A
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2013 14:51:21 +0100 (CET)
Date: Sat, 19 Jan 2013 14:36:21 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130119133621.GB18803@game.jcrosoft.org>
References: <20130119073309.GG22953@game.jcrosoft.org>
 <1358580914-21443-1-git-send-email-plagnioj@jcrosoft.com>
 <1358580914-21443-5-git-send-email-plagnioj@jcrosoft.com>
 <20130119112910.GH1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130119112910.GH1906@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/7] introduce common bootstrap code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:29 Sat 19 Jan     , Sascha Hauer wrote:
> On Sat, Jan 19, 2013 at 08:35:12AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This will allow to have a generic code to create different bootstrap
> > 
> > As example
> > Barebox as TI Xloader
> > Barebox as AT91 Bootstrap
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  include/bootstrap.h    |   34 +++++++++++++++++
> >  lib/Kconfig            |    2 +
> >  lib/Makefile           |    1 +
> >  lib/bootstrap/Kconfig  |   13 +++++++
> >  lib/bootstrap/Makefile |    3 ++
> >  lib/bootstrap/common.c |   21 +++++++++++
> >  lib/bootstrap/devfs.c  |   98 ++++++++++++++++++++++++++++++++++++++++++++++++
> >  lib/bootstrap/disk.c   |   36 ++++++++++++++++++
> >  8 files changed, 208 insertions(+)
> >  create mode 100644 include/bootstrap.h
> >  create mode 100644 lib/bootstrap/Kconfig
> >  create mode 100644 lib/bootstrap/Makefile
> >  create mode 100644 lib/bootstrap/common.c
> >  create mode 100644 lib/bootstrap/devfs.c
> >  create mode 100644 lib/bootstrap/disk.c
> > 
> > diff --git a/include/bootstrap.h b/include/bootstrap.h
> > new file mode 100644
> > index 0000000..26e9dbc
> > --- /dev/null
> > +++ b/include/bootstrap.h
> > @@ -0,0 +1,34 @@
> > +/*
> > + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> > + *
> > + * Under GPLv2
> > + */
> > +
> > +#ifndef __BOOSTRAP_H__
> > +#define __BOOSTRAP_H__
> > +
> > +#define bootstrap_err(fmt, arg...) printf(fmt, ##arg)
> > +
> > +void bootstrap_boot(int (*func)(void), bool barebox);
> > +
> > +#ifdef CONFIG_BOOTSTRAP_DEVFS
> > +void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
> > +			   int default_size, int max_size);
> > +#else
> > +static inline void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
> > +			   int default_size, int max_size)
> > +{
> > +	return NULL;
> > +}
> > +#endif
> > +
> > +#ifdef CONFIG_BOOTSTRAP_DISK
> > +void* bootstrap_read_disk(char *devname);
> > +#else
> > +static inline void* bootstrap_read_disk(char *devname)
> > +{
> > +	return NULL;
> > +}
> > +#endif
> > +
> > +#endif /* __BOOSTRAP_H__ */
> > diff --git a/lib/Kconfig b/lib/Kconfig
> > index db8a6ad..4578353 100644
> > --- a/lib/Kconfig
> > +++ b/lib/Kconfig
> > @@ -52,4 +52,6 @@ config LIBMTD
> >  
> >  source lib/gui/Kconfig
> >  
> > +source lib/bootstrap/Kconfig
> > +
> >  endmenu
> > diff --git a/lib/Makefile b/lib/Makefile
> > index 85f4ec9..43f6ea3 100644
> > --- a/lib/Makefile
> > +++ b/lib/Makefile
> > @@ -1,3 +1,4 @@
> > +obj-$(CONFIG_BOOTSTRAP)	+= bootstrap/
> >  obj-y			+= ctype.o
> >  obj-y			+= rbtree.o
> >  obj-y			+= display_options.o
> > diff --git a/lib/bootstrap/Kconfig b/lib/bootstrap/Kconfig
> > new file mode 100644
> > index 0000000..558da00
> > --- /dev/null
> > +++ b/lib/bootstrap/Kconfig
> > @@ -0,0 +1,13 @@
> > +menuconfig BOOTSTRAP
> > +	bool "Library bootstrap routines           "
> > +	depends on SHELL_NONE
> > +
> > +if BOOTSTRAP
> > +
> > +config BOOTSTRAP_DEVFS
> > +	bool "devfs support"
> > +
> > +config BOOTSTRAP_DISK
> > +	bool "disk support"
> > +
> > +endif
> > diff --git a/lib/bootstrap/Makefile b/lib/bootstrap/Makefile
> > new file mode 100644
> > index 0000000..cbaa49f
> > --- /dev/null
> > +++ b/lib/bootstrap/Makefile
> > @@ -0,0 +1,3 @@
> > +obj-y				+= common.o
> > +obj-$(CONFIG_BOOTSTRAP_DEVFS)	+= devfs.o
> > +obj-$(CONFIG_BOOTSTRAP_DISK)	+= disk.o
> > diff --git a/lib/bootstrap/common.c b/lib/bootstrap/common.c
> > new file mode 100644
> > index 0000000..bca3eb7
> > --- /dev/null
> > +++ b/lib/bootstrap/common.c
> > @@ -0,0 +1,21 @@
> > +/*
> > + * Copyright (C) 2011 Sascha Hauer, Pengutronix
> > + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> > + *
> > + * Under GPLv2
> > + */
> > +
> > +#include <common.h>
> > +#include <bootstrap.h>
> > +#include <filetype.h>
> > +
> > +void bootstrap_boot(int (*func)(void), bool barebox)
> > +{
> > +	if (barebox && !is_barebox_arm_head((void*)func))
> > +		return;
> 
> This is ARM specific.
> 
> > +
> > +	ret = cdev_read(cdev, header, ARM_HEAD_SIZE, 0, 0);
> 
> Also ARM specific.
yes if not arm is_barebox_arm return 0 so shoud compile too

and the code will be drop

we can move the code to arch/arm but did not see the point too much

Best Regards,
J.
> 
> 
> > +	cdev_close(cdev);
> > +
> > +	if (ret != ARM_HEAD_SIZE) {
> > +		bootstrap_err("failed to read from partition\n");
> > +		return NULL;
> > +	}
> > +
> > +	return header;
> > +}
> > +
> > +static unsigned int get_image_size(void *head)
> > +{
> > +	unsigned int ret = 0;
> > +	unsigned int *psize = head + ARM_HEAD_SIZE_OFFSET;
> > +
> > +	if (is_barebox_arm_head(head))
> > +		ret = *psize;
> 
> ARM specific.
> 
> Given the amount of ARM specific code I doubt this currently should be
> in a non ARM specific place.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
