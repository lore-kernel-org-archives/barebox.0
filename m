Delivery-date: Thu, 21 Apr 2022 09:38:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhROI-009udQ-Pr
	for lore@lore.pengutronix.de; Thu, 21 Apr 2022 09:38:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhROF-0000S7-HM
	for lore@pengutronix.de; Thu, 21 Apr 2022 09:38:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JwFO2/D811N0VMQidO6oFrYTKnwdQ5jfmwf9nUDFbew=; b=Vn2CIhkLpXjC7cArX0BIRPvuQN
	E1bX9197uxvas9Dyprlj3pF656yvhkHtmY50BRGRNdVEfYhHboZY0aPPsUrtMNsc58VJO6tMHR1JN
	Be2GT3bbZEZqNYSZiEZ+jClwodHcMb0pyFHmB6xhG1sb1qJ8TzoxPfQXwKVK6/ZqtOqOSRCTgW7cW
	fBqotXBP5D0SYqutjN8jEkaZL3Cvm5DQ7syFNKZIH1EyJWJxnwnPb5RKHuxos3TKyhhbp2cgwv5s8
	2K8Hd7gktLdb9ViRDHrfZmlqukNzOpo8bZ4yoPQE7XrFOqTzL1wd2pH6Bn5Q9sV2CW0z8EcrtrEze
	wVlzM1HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhRMN-00C3G1-Ve; Thu, 21 Apr 2022 07:36:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhRLy-00C2wI-P6
 for barebox@lists.infradead.org; Thu, 21 Apr 2022 07:35:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhRLv-0008Gv-EF; Thu, 21 Apr 2022 09:35:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhRLu-0007lP-Ry; Thu, 21 Apr 2022 09:35:46 +0200
Date: Thu, 21 Apr 2022 09:35:46 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220421073546.GV4012@pengutronix.de>
References: <20220420095322.89880-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220420095322.89880-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:20:34 up 21 days, 19:50, 73 users,  load average: 0.11, 0.09, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_003551_022581_3FA336C2 
X-CRM114-Status: GOOD (  32.48  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for MYIR MYD-AM335X Development
 Board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 20, 2022 at 12:53:22PM +0300, Alexander Shiyan wrote:
> The MYD-AM335X Development Board designed by MYIR is a high-performance
> ARM Evaluation Module (EVM) using the MYC-AM335X CPU module as the core
> controller board. It is based on up to 1GHz Texas Instruments (TI)
> Sitara AM335x family of ARM Cortex-A8 Microprocessors (MPUs) that deliver
> high DMIPs at a low cost while also delivering optional 3D graphics
> acceleration and key peripherals.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/myirtech-x335x/Makefile       |   3 +
>  arch/arm/boards/myirtech-x335x/board.c        |  44 +++++++
>  .../defaultenv-myirtech-x335x/boot/nand       |   4 +
>  .../defaultenv-myirtech-x335x/nv/boot.default |   1 +
>  .../nv/linux.bootargs.console                 |   1 +
>  arch/arm/boards/myirtech-x335x/lowlevel.c     | 113 ++++++++++++++++++
>  arch/arm/configs/am335x_mlo_defconfig         |   1 +
>  .../arm/configs/myirtech_am335x_myd_defconfig | 109 +++++++++++++++++
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/am335x-myirtech-myd.dts          |  23 ++++
>  arch/arm/mach-omap/Kconfig                    |   6 +
>  .../arm/mach-omap/include/mach/am33xx-clock.h |   1 +
>  .../mach-omap/include/mach/am33xx-silicon.h   |   2 +
>  images/Makefile.am33xx                        |   8 ++
>  15 files changed, 318 insertions(+)
>  create mode 100644 arch/arm/boards/myirtech-x335x/Makefile
>  create mode 100644 arch/arm/boards/myirtech-x335x/board.c
>  create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
>  create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
>  create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/linux.bootargs.console
>  create mode 100644 arch/arm/boards/myirtech-x335x/lowlevel.c
>  create mode 100644 arch/arm/configs/myirtech_am335x_myd_defconfig
>  create mode 100644 arch/arm/dts/am335x-myirtech-myd.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 75e15cbda4..d303999614 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -77,6 +77,7 @@ obj-$(CONFIG_MACH_MB7707)			+= module-mb7707/
>  obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
>  obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
>  obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
> +obj-$(CONFIG_MACH_MYIRTECH_X335X)		+= myirtech-x335x/
>  obj-$(CONFIG_MACH_NESO)				+= guf-neso/
>  obj-$(CONFIG_MACH_NETGEAR_RN104)		+= netgear-rn104/
>  obj-$(CONFIG_MACH_NETGEAR_RN2120)		+= netgear-rn2120/
> diff --git a/arch/arm/boards/myirtech-x335x/Makefile b/arch/arm/boards/myirtech-x335x/Makefile
> new file mode 100644
> index 0000000000..05d9fc7bc3
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/Makefile
> @@ -0,0 +1,3 @@
> +lwl-y					+= lowlevel.o
> +obj-y					+= board.o
> +bbenv-$(CONFIG_DEFAULT_ENVIRONMENT)	+= defaultenv-myirtech-x335x
> diff --git a/arch/arm/boards/myirtech-x335x/board.c b/arch/arm/boards/myirtech-x335x/board.c
> new file mode 100644
> index 0000000000..b5af651254
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/board.c
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
> +
> +#include <bootsource.h>
> +#include <common.h>
> +#include <driver.h>
> +#include <envfs.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <mach/am33xx-generic.h>
> +
> +static struct omap_barebox_part myir_barebox_part = {
> +	.nand_offset = SZ_128K,
> +	.nand_size = SZ_512K,
> +};

Isn't this a bit too small? Putting a barebox into 128k seems very
ambicous.

> +
> +static __init int myir_devices_init(void)
> +{
> +	if (!of_machine_is_compatible("myir,myc-am335x"))
> +		return 0;
> +
> +	am33xx_register_ethaddr(0, 0);
> +	am33xx_register_ethaddr(1, 1);
> +
> +	switch (bootsource_get()) {
> +	case BOOTSOURCE_MMC:
> +		omap_set_bootmmc_devname("mmc0");
> +		break;
> +	case BOOTSOURCE_NAND:
> +		omap_set_barebox_part(&myir_barebox_part);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
> +		defaultenv_append_directory(defaultenv_myirtech_x335x);
> +
> +	if (IS_ENABLED(CONFIG_SHELL_NONE))
> +		return am33xx_of_register_bootdevice();
> +
> +	return 0;
> +}
> +coredevice_initcall(myir_devices_init);
> diff --git a/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
> new file mode 100644
> index 0000000000..aca093eebb
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +
> +global.bootm.image="/dev/nand0.system.ubi.kernel"
> +global.linux.bootargs.dyn.root="ubi.mtd=system ubi.block=0,root ro"
> diff --git a/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
> new file mode 100644
> index 0000000000..026a25cc7e
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
> @@ -0,0 +1 @@
> +nand
> diff --git a/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/linux.bootargs.console b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/linux.bootargs.console
> new file mode 100644
> index 0000000000..4310fdd693
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/linux.bootargs.console
> @@ -0,0 +1 @@
> +console=ttyS0,115200n8 earlyprintk

The console= part shouldn't be needed. barebox should add a console=
parameter matching the current barebox console automatically.

I wouldn't add the earlyprintk by default. It might break booting when
the kernel is not exactly configured for your board. Anyway, that's
personal taste.

> diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
> index 51d238db3e..83bb20e4b5 100644
> --- a/arch/arm/configs/am335x_mlo_defconfig
> +++ b/arch/arm/configs/am335x_mlo_defconfig
> @@ -5,6 +5,7 @@ CONFIG_OMAP_SERIALBOOT=y
>  CONFIG_OMAP_MULTI_BOARDS=y
>  CONFIG_MACH_AFI_GF=y
>  CONFIG_MACH_BEAGLEBONE=y
> +CONFIG_MACH_MYIRTECH_X335X=y
>  CONFIG_MACH_PHYTEC_SOM_AM335X=y
>  CONFIG_THUMB2_BAREBOX=y
>  # CONFIG_MEMINFO is not set
> diff --git a/arch/arm/configs/myirtech_am335x_myd_defconfig b/arch/arm/configs/myirtech_am335x_myd_defconfig

Do you need this config? I rather prefer to add the board to some
existing config, omap_defconfig in this case.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

