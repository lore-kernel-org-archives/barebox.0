Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TwYZs-0008Mv-OK
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 13:35:21 +0000
Received: from mail412.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 47FBFFF87EF
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2013 14:48:57 +0100 (CET)
Date: Sat, 19 Jan 2013 14:33:56 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130119133356.GA18803@game.jcrosoft.org>
References: <20130119112125.GH22953@game.jcrosoft.org>
 <1358594814-8297-1-git-send-email-plagnioj@jcrosoft.com>
 <1358594814-8297-7-git-send-email-plagnioj@jcrosoft.com>
 <20130119113307.GJ1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130119113307.GJ1906@pengutronix.de>
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
Subject: Re: [PATCH 7/7] at91: usb_a9263: add bootstrap version
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:33 Sat 19 Jan     , Sascha Hauer wrote:
> On Sat, Jan 19, 2013 at 12:26:54PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/usb-a926x/Makefile                 |    3 +++
> >  arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c    |   16 ++++++++++++
> >  .../configs/usb_a9263_128mib_bootstrap_defconfig   |   26 ++++++++++++++++++++
> >  arch/arm/configs/usb_a9263_bootstrap_defconfig     |   25 +++++++++++++++++++
> >  4 files changed, 70 insertions(+)
> >  create mode 100644 arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c
> >  create mode 100644 arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
> >  create mode 100644 arch/arm/configs/usb_a9263_bootstrap_defconfig
> > 
> > diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
> > index 9511a76..4c8cd64 100644
> > --- a/arch/arm/boards/usb-a926x/Makefile
> > +++ b/arch/arm/boards/usb-a926x/Makefile
> > @@ -1,5 +1,8 @@
> >  obj-y += init.o
> >  
> > +bootstrap-$(CONFIG_MACH_USB_A9263) = usb_a9263_bootstrap.o
> > +obj-$(CONFIG_BOOTSTRAP) += $(bootstrap-y)
> > +
> >  lowlevel_init-$(CONFIG_MACH_USB_A9263) = usb_a9263_lowlevel_init.o
> >  
> >  obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> > diff --git a/arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c b/arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c
> > new file mode 100644
> > index 0000000..368c677
> > --- /dev/null
> > +++ b/arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c
> > @@ -0,0 +1,16 @@
> > +/*
> > + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> > + *
> > + * Under GPLv2
> > + */
> > +
> > +#include <common.h>
> > +#include <bootstrap.h>
> > +#include <mach/bootstrap.h>
> > +
> > +#ifdef CONFIG_MTD_DATAFLASH
> > +void * bootstrap_board_read_dataflash(void)
> > +{
> > +	return bootstrap_read_devfs("dataflash0", false, 0xffc0, 204864, 204864);
> > +}
> > +#endif
> > diff --git a/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig b/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
> > new file mode 100644
> > index 0000000..e71a3c5
> > --- /dev/null
> > +++ b/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
> > @@ -0,0 +1,26 @@
> > +CONFIG_ARCH_AT91SAM9263=y
> > +CONFIG_MACH_USB_A9263=y
> > +CONFIG_AT91_HAVE_SRAM_128M=y
> > +CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
> > +CONFIG_AEABI=y
> > +# CONFIG_CMD_ARM_CPUINFO is not set
> > +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> > +CONFIG_ENVIRONMENT_VARIABLES=y
> > +CONFIG_PBL_IMAGE=y
> > +CONFIG_MMU=y
> > +CONFIG_MALLOC_DUMMY=y
> > +CONFIG_PROMPT="USB-9263:"
> > +CONFIG_SHELL_NONE=y
> > +# CONFIG_DEFAULT_ENVIRONMENT is not set
> > +# CONFIG_SPI is not set
> > +CONFIG_MTD=y
> > +# CONFIG_MTD_WRITE is not set
> > +# CONFIG_MTD_OOB_DEVICE is not set
> > +CONFIG_NAND=y
> > +# CONFIG_NAND_ECC_HW is not set
> > +# CONFIG_NAND_ECC_HW_SYNDROME is not set
> > +# CONFIG_NAND_ECC_HW_NONE is not set
> > +CONFIG_NAND_ATMEL=y
> > +# CONFIG_FS_RAMFS is not set
> > +CONFIG_BOOTSTRAP=y
> > +CONFIG_BOOTSTRAP_DEVFS=y
> > diff --git a/arch/arm/configs/usb_a9263_bootstrap_defconfig b/arch/arm/configs/usb_a9263_bootstrap_defconfig
> > new file mode 100644
> > index 0000000..c4b31ba
> > --- /dev/null
> > +++ b/arch/arm/configs/usb_a9263_bootstrap_defconfig
> > @@ -0,0 +1,25 @@
> > +CONFIG_ARCH_AT91SAM9263=y
> > +CONFIG_MACH_USB_A9263=y
> > +CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
> > +CONFIG_AEABI=y
> > +# CONFIG_CMD_ARM_CPUINFO is not set
> > +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> > +CONFIG_ENVIRONMENT_VARIABLES=y
> > +CONFIG_PBL_IMAGE=y
> > +CONFIG_MMU=y
> > +CONFIG_MALLOC_DUMMY=y
> > +CONFIG_PROMPT="USB-9263:"
> > +CONFIG_SHELL_NONE=y
> > +# CONFIG_DEFAULT_ENVIRONMENT is not set
> > +# CONFIG_SPI is not set
> > +CONFIG_MTD=y
> > +# CONFIG_MTD_WRITE is not set
> > +# CONFIG_MTD_OOB_DEVICE is not set
> > +CONFIG_NAND=y
> > +# CONFIG_NAND_ECC_HW is not set
> > +# CONFIG_NAND_ECC_HW_SYNDROME is not set
> > +# CONFIG_NAND_ECC_HW_NONE is not set
> > +CONFIG_NAND_ATMEL=y
> > +# CONFIG_FS_RAMFS is not set
> > +CONFIG_BOOTSTRAP=y
> > +CONFIG_BOOTSTRAP_DEVFS=y
> 
> These configs still fail with
> 
> arch/arm/mach-at91/built-in.o: In function `boot_seq':
> at91sam9263_devices.c:(.text.boot_seq+0x28): undefined reference to `bootstrap_boot'
> 
> When CONFIG_BOOTSTRAP is disabled in make menuconfig. Should it be
> selected?
yes BOOTSTRAP is mandatory

for this config

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
