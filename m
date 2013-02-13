Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5YSP-0005BX-Gm
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 09:16:51 +0000
Received: from mail239.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 2680FFF99E7
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 10:32:10 +0100 (CET)
Date: Wed, 13 Feb 2013 10:15:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130213091538.GI19322@game.jcrosoft.org>
References: <20130211190648.GA19322@game.jcrosoft.org>
 <1360609711-22118-1-git-send-email-plagnioj@jcrosoft.com>
 <1360609711-22118-2-git-send-email-plagnioj@jcrosoft.com>
 <511AF0A9.9060902@calxeda.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <511AF0A9.9060902@calxeda.com>
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
Subject: Re: [PATCH 2/3] arm: add highbank support
To: Rob Herring <rob.herring@calxeda.com>
Cc: barebox@lists.infradead.org

On 19:47 Tue 12 Feb     , Rob Herring wrote:
> On 02/11/2013 01:08 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > currently only tested under qemu
> > 
> > qemu-system-arm -M highbank -nographic -m 4089 -kernel build/highbank/arch/arm/pbl/zbarebox -tftp "." -drive id=disk,if=ide,file=disk.img -device ide-drive,drive=disk,bus=ide.0
> > 
> > with:
> >  - timer (AMBA SP804)
> >  - uart (AMBA PL011)
> >  - gpio (AMBA PL061)
> >  - ahci
> >  - net (XGMAC)
> > 
> > Cc: Rob Herring <rob.herring@calxeda.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> Looks pretty good. A couple of comments below.
> 
> > ---
> >  arch/arm/Kconfig                               |   11 +++++
> >  arch/arm/Makefile                              |    2 +
> >  arch/arm/boards/highbank/Makefile              |    4 ++
> >  arch/arm/boards/highbank/config.h              |    5 ++
> >  arch/arm/boards/highbank/env/config            |   34 +++++++++++++
> >  arch/arm/boards/highbank/init.c                |   46 ++++++++++++++++++
> >  arch/arm/boards/highbank/lowlevel.c            |   17 +++++++
> >  arch/arm/configs/highbank_defconfig            |   61 ++++++++++++++++++++++++
> >  arch/arm/mach-highbank/Kconfig                 |   18 +++++++
> >  arch/arm/mach-highbank/Makefile                |    3 ++
> >  arch/arm/mach-highbank/core.c                  |   50 +++++++++++++++++++
> >  arch/arm/mach-highbank/devices.c               |   50 +++++++++++++++++++
> >  arch/arm/mach-highbank/include/mach/clkdev.h   |    7 +++
> >  arch/arm/mach-highbank/include/mach/debug_ll.h |   26 ++++++++++
> >  arch/arm/mach-highbank/include/mach/devices.h  |   16 +++++++
> >  arch/arm/mach-highbank/include/mach/gpio.h     |    1 +
> >  arch/arm/mach-highbank/reset.c                 |   22 +++++++++
> >  arch/arm/mach-highbank/sysregs.h               |   52 ++++++++++++++++++++
> >  18 files changed, 425 insertions(+)
> >  create mode 100644 arch/arm/boards/highbank/Makefile
> >  create mode 100644 arch/arm/boards/highbank/config.h
> >  create mode 100644 arch/arm/boards/highbank/env/config
> >  create mode 100644 arch/arm/boards/highbank/init.c
> >  create mode 100644 arch/arm/boards/highbank/lowlevel.c
> >  create mode 100644 arch/arm/configs/highbank_defconfig
> >  create mode 100644 arch/arm/mach-highbank/Kconfig
> >  create mode 100644 arch/arm/mach-highbank/Makefile
> >  create mode 100644 arch/arm/mach-highbank/core.c
> >  create mode 100644 arch/arm/mach-highbank/devices.c
> >  create mode 100644 arch/arm/mach-highbank/include/mach/clkdev.h
> >  create mode 100644 arch/arm/mach-highbank/include/mach/debug_ll.h
> >  create mode 100644 arch/arm/mach-highbank/include/mach/devices.h
> >  create mode 100644 arch/arm/mach-highbank/include/mach/gpio.h
> >  create mode 100644 arch/arm/mach-highbank/reset.c
> >  create mode 100644 arch/arm/mach-highbank/sysregs.h
> > 
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 5ae5bd0..c10b9da 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -49,6 +49,16 @@ config ARCH_EP93XX
> >  	select CPU_ARM920T
> >  	select GENERIC_GPIO
> >  
> > +config ARCH_HIGHBANK
> > +	bool "Calxeda Highbank"
> > +	select HAS_DEBUG_LL
> > +	select CPU_V7
> > +	select ARM_AMBA
> > +	select AMBA_SP804
> > +	select CLKDEV_LOOKUP
> > +	select COMMON_CLK
> > +	select GPIOLIB
> 
> GPIO is generally not accessible and needs to be checked whether enabled
> in the DT. Accessing it will cause an abort.
ok so I move the code to the board
> 
> > +
> >  config ARCH_IMX
> >  	bool "Freescale iMX-based"
> >  	select GENERIC_GPIO
> > @@ -126,6 +136,7 @@ source arch/arm/mach-at91/Kconfig
> >  source arch/arm/mach-bcm2835/Kconfig
> >  source arch/arm/mach-clps711x/Kconfig
> >  source arch/arm/mach-ep93xx/Kconfig
> > +source arch/arm/mach-highbank/Kconfig
> >  source arch/arm/mach-imx/Kconfig
> >  source arch/arm/mach-mxs/Kconfig
> >  source arch/arm/mach-netx/Kconfig
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index 73631ba..15bebf1 100644
> > diff --git a/arch/arm/mach-highbank/include/mach/clkdev.h b/arch/arm/mach-highbank/include/mach/clkdev.h
> > new file mode 100644
> > index 0000000..04b37a8
> > --- /dev/null
> > +++ b/arch/arm/mach-highbank/include/mach/clkdev.h
> > @@ -0,0 +1,7 @@
> > +#ifndef __ASM_MACH_CLKDEV_H
> > +#define __ASM_MACH_CLKDEV_H
> > +
> > +#define __clk_get(clk) ({ 1; })
> > +#define __clk_put(clk) do { } while (0)
> 
> Does any board really do anything with these?
will handle factorisation on the top
> 
> > +
> > +#endif
> > diff --git a/arch/arm/mach-highbank/include/mach/debug_ll.h b/arch/arm/mach-highbank/include/mach/debug_ll.h
> > new file mode 100644
> > index 0000000..4cdbb3c
> > --- /dev/null
> > +++ b/arch/arm/mach-highbank/include/mach/debug_ll.h
> > @@ -0,0 +1,26 @@
> > +/*
> > + * Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagniol@jcrosoft.com>
> > + *
> > + * GPLv2 only
> > + */
> > +
> > +#ifndef __MACH_DEBUG_LL_H__
> > +#define   __MACH_DEBUG_LL_H__
> > +
> > +#include <linux/amba/serial.h>
> > +#include <io.h>
> > +
> > +#define UART_BASE 0xfff36000
> > +
> > +static inline void PUTC_LL(char c)
> > +{
> > +	/* Wait until there is space in the FIFO */
> > +	while (readl(UART_BASE + UART01x_FR) & UART01x_FR_TXFF);
> > +
> > +	/* Send the character */
> > +	writel(c, UART_BASE + UART01x_DR);
> > +
> > +	/* Wait to make sure it hits the line, in case we die too soon. */
> > +	while (readl(UART_BASE + UART01x_FR) & UART01x_FR_TXFF);
> 
> This could be generalized to common pl011 code.
ditto
> 
> > +}
> > +#endif
> > diff --git a/arch/arm/mach-highbank/include/mach/devices.h b/arch/arm/mach-highbank/include/mach/devices.h
> > new file mode 100644
> > index 0000000..4c12198
> > --- /dev/null
> > +++ b/arch/arm/mach-highbank/include/mach/devices.h
> > @@ -0,0 +1,16 @@
> > +/*
> > + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> > + *
> > + * GPLv2 only
> > + */
> > +
> > +#ifndef __ASM_ARCH_DEVICES_H__
> > +#define __ASM_ARCH_DEVICES_H__
> > +
> > +void highbank_add_ddram(u32 size);
> > +
> > +void highbank_register_uart(void);
> > +void highbank_register_ahci(void);
> > +void highbank_register_xgmac(unsigned id);
> > +
> > +#endif /* __ASM_ARCH_DEVICES_H__ */
> > diff --git a/arch/arm/mach-highbank/include/mach/gpio.h b/arch/arm/mach-highbank/include/mach/gpio.h
> > new file mode 100644
> > index 0000000..306ab4c
> > --- /dev/null
> > +++ b/arch/arm/mach-highbank/include/mach/gpio.h
> > @@ -0,0 +1 @@
> > +#include <asm-generic/gpio.h>
> > diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
> > new file mode 100644
> > index 0000000..3306170
> > --- /dev/null
> > +++ b/arch/arm/mach-highbank/reset.c
> > @@ -0,0 +1,22 @@
> > +/*
> > + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> > + *
> > + * GPLv2 only
> > + */
> > +
> > +#include <common.h>
> > +#include <io.h>
> > +#include <linux/amba/sp805.h>
> > +
> > +#include <mach/devices.h>
> > +
> > +#include "sysregs.h"
> > +
> > +void __iomem *sregs_base = IOMEM(0xfff3c00);
> > +
> > +void __noreturn reset_cpu(ulong addr)
> > +{
> > +	hignbank_set_pwr_hard_reset();
> > +
> > +	while(1);
> 
> This needs a wfi to actually trigger the reset.
ok
> 
> > +}
> > diff --git a/arch/arm/mach-highbank/sysregs.h b/arch/arm/mach-highbank/sysregs.h
> > new file mode 100644
> > index 0000000..ad27c1e
> > --- /dev/null
> > +++ b/arch/arm/mach-highbank/sysregs.h
> > @@ -0,0 +1,52 @@
> > +/*
> > + * Copyright 2011 Calxeda, Inc.
> > + *
> > + * This program is free software; you can redistribute it and/or modify it
> > + * under the terms and conditions of the GNU General Public License,
> > + * version 2, as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope it will be useful, but WITHOUT
> > + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> > + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> > + * more details.
> > + *
> > + * You should have received a copy of the GNU General Public License along with
> > + * this program.  If not, see <http://www.gnu.org/licenses/>.
> > + */
> > +#ifndef _MACH_HIGHBANK__SYSREGS_H_
> > +#define _MACH_HIGHBANK__SYSREGS_H_
> > +
> > +#include <io.h>
> > +
> > +extern void __iomem *sregs_base;
> > +
> > +#define HB_SREG_A9_PWR_REQ		0xf00
> > +#define HB_SREG_A9_BOOT_STAT		0xf04
> > +#define HB_SREG_A9_BOOT_DATA		0xf08
> > +
> > +#define HB_PWR_SUSPEND			0
> > +#define HB_PWR_SOFT_RESET		1
> > +#define HB_PWR_HARD_RESET		2
> > +#define HB_PWR_SHUTDOWN			3
> > +
> > +static inline void hignbank_set_pwr_suspend(void)
> 
> Same typo as recently fixed in the kernel:
> s/hignbank/highbank/
will fix
> 
> > +{
> > +	writel(HB_PWR_SUSPEND, sregs_base + HB_SREG_A9_PWR_REQ);
> > +}
> > +
> > +static inline void hignbank_set_pwr_shutdown(void)
> > +{
> > +	writel(HB_PWR_SHUTDOWN, sregs_base + HB_SREG_A9_PWR_REQ);
> > +}
> > +
> > +static inline void hignbank_set_pwr_soft_reset(void)
> > +{
> > +	writel(HB_PWR_SOFT_RESET, sregs_base + HB_SREG_A9_PWR_REQ);
> > +}
> > +
> > +static inline void hignbank_set_pwr_hard_reset(void)
> > +{
> > +	writel(HB_PWR_HARD_RESET, sregs_base + HB_SREG_A9_PWR_REQ);
> > +}
> > +
> > +#endif
> > 
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
