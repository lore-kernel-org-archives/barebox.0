Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo68.mail-out.ovh.net ([178.32.228.68])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnhVL-0007Dp-Nt
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 08:08:29 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 420443F922
 for <barebox@lists.infradead.org>; Tue, 14 Mar 2017 09:08:05 +0100 (CET)
Date: Tue, 14 Mar 2017 09:14:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170314081426.GE25192@mail.ovh.net>
References: <20170309143117.GI4120@mail.ovh.net>
 <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
 <1489070050-16024-4-git-send-email-plagnioj@jcrosoft.com>
 <20170313075018.566tqqmhoymv5v66@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170313075018.566tqqmhoymv5v66@pengutronix.de>
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
Subject: Re: [PATCH 4/5] boot: if we are in secure boot mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:50 Mon 13 Mar     , Sascha Hauer wrote:
> On Thu, Mar 09, 2017 at 03:34:09PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > request confirmation before booting an unsigned image
> > 
> > with a default timeout
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  commands/go.c         |  7 +++++++
> >  common/Kconfig        |  8 ++++++++
> >  common/Makefile       |  1 +
> >  common/bootm.c        |  7 +++++++
> >  common/secure_boot.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
> >  include/bootm.h       |  1 +
> >  include/secure_boot.h | 25 +++++++++++++++++++++++++
> >  7 files changed, 92 insertions(+)
> >  create mode 100644 common/secure_boot.c
> >  create mode 100644 include/secure_boot.h
> > 
> > diff --git a/commands/go.c b/commands/go.c
> > index fb319b320..61c9ce43f 100644
> > --- a/commands/go.c
> > +++ b/commands/go.c
> > @@ -26,6 +26,7 @@
> >  #include <fcntl.h>
> >  #include <linux/ctype.h>
> >  #include <errno.h>
> > +#include <secure_boot.h>
> >  
> >  static int do_go(int argc, char *argv[])
> >  {
> > @@ -37,6 +38,12 @@ static int do_go(int argc, char *argv[])
> >  	if (argc < 2)
> >  		return COMMAND_ERROR_USAGE;
> >  
> > +	rcode = secure_boot_start_unsigned();
> > +	if (rcode)
> > +		return rcode ? 1 : 0;
> 
> When rcode is true, then if rcode is true, return 1, otherwise return 0?

I forget we could return a negative error on command too
> 
> > +
> > +	rcode = 1;
> > +
> >  	if (!isdigit(*argv[1])) {
> >  		fd = open(argv[1], O_RDONLY);
> >  		if (fd < 0) {
> > diff --git a/common/Kconfig b/common/Kconfig
> > index f7ff04664..9e7d027a2 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -21,6 +21,9 @@ config HAS_KALLSYMS
> >  config HAS_MODULES
> >  	bool
> >  
> > +config HAS_SECURE_BOOT
> > +	bool
> > +
> >  config HAS_CACHE
> >  	bool
> >  	help
> > @@ -184,6 +187,11 @@ config NVVAR
> >  	  while global variables can be changed during runtime without changing the
> >  	  default.
> >  
> > +config SECURE_BOOT_TIMEOUT
> > +	prompt "Secure Boot unsigned boot timeout"
> > +	int
> > +	default 3
> > +
> >  menu "memory layout"
> >  
> >  source "pbl/Kconfig"
> > diff --git a/common/Makefile b/common/Makefile
> > index 5f58c81d2..e57cc2c15 100644
> > --- a/common/Makefile
> > +++ b/common/Makefile
> > @@ -61,6 +61,7 @@ obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
> >  obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
> >  obj-$(CONFIG_CONSOLE_RATP)	+= ratp.o
> >  obj-$(CONFIG_BOOT)		+= boot.o
> > +obj-$(CONFIG_HAS_SECURE_BOOT)	+= secure_boot.o
> >  
> >  quiet_cmd_pwd_h = PWDH    $@
> >  ifdef CONFIG_PASSWORD
> > diff --git a/common/bootm.c b/common/bootm.c
> > index 81625d915..0ebf65681 100644
> > --- a/common/bootm.c
> > +++ b/common/bootm.c
> > @@ -23,6 +23,7 @@
> >  #include <environment.h>
> >  #include <linux/stat.h>
> >  #include <magicvar.h>
> > +#include <secure_boot.h>
> >  
> >  static LIST_HEAD(handler_list);
> >  
> > @@ -625,6 +626,12 @@ int bootm_boot(struct bootm_data *bootm_data)
> >  		printf("Passing control to %s handler\n", handler->name);
> >  	}
> >  
> > +	if (!handler->is_secure_supported && is_secure_mode()) {
> > +		ret = secure_boot_start_unsigned();
> > +		if (ret)
> > +			goto err_out;
> > +	}
> > +
> >  	ret = handler->bootm(data);
> >  	if (data->dryrun)
> >  		printf("Dryrun. Aborted\n");
> > diff --git a/common/secure_boot.c b/common/secure_boot.c
> > new file mode 100644
> > index 000000000..e625ef4e1
> > --- /dev/null
> > +++ b/common/secure_boot.c
> > @@ -0,0 +1,43 @@
> > +/*
> > + * Copyright (c) 2017 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > + *
> > + * Under GPLv2 Only
> > + */
> > +#include <common.h>
> > +#include <secure_boot.h>
> > +#include <console_countdown.h>
> > +#include <globalvar.h>
> > +#include <magicvar.h>
> > +#include <init.h>
> > +
> > +static unsigned int sb_confirm_timeout = CONFIG_SECURE_BOOT_TIMEOUT;
> 
> Use globalvar_add_simple_int instead of putting this into the config.
> 
> > +
> > +int secure_boot_start_unsigned(void)
> 
> This function name is very misleading. It sounds like it starts an
> unsigned image, but this function doesn't start anything. Second guess
> is that it returns a boolean whether it's allowed to start an unsigned
> image, but actually it returns the opposite.

secure_boot_can_start_unsigned could be better

it return 0 if ok
an error otherwise

as we can return an security violation or other error

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
