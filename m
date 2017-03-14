Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnj4W-0004eD-Qy
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 09:48:54 +0000
Date: Tue, 14 Mar 2017 10:48:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170314094830.3wavmpy5epqrqz5d@pengutronix.de>
References: <20170309143117.GI4120@mail.ovh.net>
 <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
 <1489070050-16024-4-git-send-email-plagnioj@jcrosoft.com>
 <20170313075521.dafhf3q5qacszaqw@pengutronix.de>
 <20170314080735.GD25192@mail.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170314080735.GD25192@mail.ovh.net>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 14, 2017 at 09:07:35AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:55 Mon 13 Mar     , Sascha Hauer wrote:
> > On Thu, Mar 09, 2017 at 03:34:09PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > request confirmation before booting an unsigned image
> > > 
> > > with a default timeout
> > > 
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  commands/go.c         |  7 +++++++
> > >  common/Kconfig        |  8 ++++++++
> > >  common/Makefile       |  1 +
> > >  common/bootm.c        |  7 +++++++
> > >  common/secure_boot.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
> > >  include/bootm.h       |  1 +
> > >  include/secure_boot.h | 25 +++++++++++++++++++++++++
> > >  7 files changed, 92 insertions(+)
> > >  create mode 100644 common/secure_boot.c
> > >  create mode 100644 include/secure_boot.h
> > > 
> > > diff --git a/commands/go.c b/commands/go.c
> > > index fb319b320..61c9ce43f 100644
> > > --- a/commands/go.c
> > > +++ b/commands/go.c
> > > @@ -26,6 +26,7 @@
> > >  #include <fcntl.h>
> > >  #include <linux/ctype.h>
> > >  #include <errno.h>
> > > +#include <secure_boot.h>
> > >  
> > >  static int do_go(int argc, char *argv[])
> > >  {
> > > @@ -37,6 +38,12 @@ static int do_go(int argc, char *argv[])
> > >  	if (argc < 2)
> > >  		return COMMAND_ERROR_USAGE;
> > >  
> > > +	rcode = secure_boot_start_unsigned();
> > > +	if (rcode)
> > > +		return rcode ? 1 : 0;
> > > +
> > > +	rcode = 1;
> > > +
> > >  	if (!isdigit(*argv[1])) {
> > >  		fd = open(argv[1], O_RDONLY);
> > >  		if (fd < 0) {
> > > diff --git a/common/Kconfig b/common/Kconfig
> > > index f7ff04664..9e7d027a2 100644
> > > --- a/common/Kconfig
> > > +++ b/common/Kconfig
> > > @@ -21,6 +21,9 @@ config HAS_KALLSYMS
> > >  config HAS_MODULES
> > >  	bool
> > >  
> > > +config HAS_SECURE_BOOT
> > > +	bool
> > > +
> > >  config HAS_CACHE
> > >  	bool
> > >  	help
> > > @@ -184,6 +187,11 @@ config NVVAR
> > >  	  while global variables can be changed during runtime without changing the
> > >  	  default.
> > >  
> > > +config SECURE_BOOT_TIMEOUT
> > > +	prompt "Secure Boot unsigned boot timeout"
> > > +	int
> > > +	default 3
> > > +
> > >  menu "memory layout"
> > >  
> > >  source "pbl/Kconfig"
> > > diff --git a/common/Makefile b/common/Makefile
> > > index 5f58c81d2..e57cc2c15 100644
> > > --- a/common/Makefile
> > > +++ b/common/Makefile
> > > @@ -61,6 +61,7 @@ obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
> > >  obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
> > >  obj-$(CONFIG_CONSOLE_RATP)	+= ratp.o
> > >  obj-$(CONFIG_BOOT)		+= boot.o
> > > +obj-$(CONFIG_HAS_SECURE_BOOT)	+= secure_boot.o
> > >  
> > >  quiet_cmd_pwd_h = PWDH    $@
> > >  ifdef CONFIG_PASSWORD
> > > diff --git a/common/bootm.c b/common/bootm.c
> > > index 81625d915..0ebf65681 100644
> > > --- a/common/bootm.c
> > > +++ b/common/bootm.c
> > > @@ -23,6 +23,7 @@
> > >  #include <environment.h>
> > >  #include <linux/stat.h>
> > >  #include <magicvar.h>
> > > +#include <secure_boot.h>
> > >  
> > >  static LIST_HEAD(handler_list);
> > >  
> > > @@ -625,6 +626,12 @@ int bootm_boot(struct bootm_data *bootm_data)
> > >  		printf("Passing control to %s handler\n", handler->name);
> > >  	}
> > >  
> > > +	if (!handler->is_secure_supported && is_secure_mode()) {
> > > +		ret = secure_boot_start_unsigned();
> > > +		if (ret)
> > > +			goto err_out;
> > > +	}
> > 
> > We already have CONFIG_BOOTM_FORCE_SIGNED_IMAGES which admittedly is not
> > the most generic implementation, but in the end we shouldn't have two
> > different ways how secure boot is integrated in the bootm code.
> Did not seen it
> 
> I check it and this is only for BOOTM as we have go command too
> 
> that need to call image check too
> 
> and on efi this is not done at config time but runtime
> 
> and this is really FIT image oriented :(

You have the handler->is_secure_supported variable. This could be
implemented by the FIT image support aswell. Also we have the decision
if we want to boot unsigned images. Right now this is done in the
data->verify variable. We can force the decision in Kconfig using
CONFIG_BOOTM_FORCE_SIGNED_IMAGES or we can fill in data->verify before
booting.

> 
> Can we have one for EFI sperately first and then merge them as this will need
> a lot of testing and checking to ensure we break nothing

No. It's just too confusing to implement two different secure boot ways
in the same code and I give nothing to the promise that this will be
cleaned up later.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
