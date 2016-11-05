Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x22e.google.com ([2607:f8b0:4002:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2ueG-0007E4-RK
 for barebox@lists.infradead.org; Sat, 05 Nov 2016 06:40:17 +0000
Received: by mail-yw0-x22e.google.com with SMTP id i145so8969446ywg.2
 for <barebox@lists.infradead.org>; Fri, 04 Nov 2016 23:39:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161104071821.jqrhtfmgz3432527@pengutronix.de>
References: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
 <20161104071821.jqrhtfmgz3432527@pengutronix.de>
From: Jose Luis Zabalza <jlz.3008@gmail.com>
Date: Sat, 5 Nov 2016 07:39:53 +0100
Message-ID: <CAKZffXHVZ9tvhcgVz=fWciYQr98wrZjZbxiL4QQJEP8DzGuz7Q@mail.gmail.com>
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
Subject: Re: Configure RAM size on iMX53 board
To: barebox@lists.infradead.org

Thanks Sascha, but something I do wrong

I tried set fixed size to 512M, but neither works.

With these changes does not work or 512MB board  or 1GB board.

=========<cut lowlevel.c>===============

#include <common.h>
#include <mach/imx53-regs.h>
#include <mach/esdctl.h>
#include <mach/generic.h>
#include <asm/barebox-arm-head.h>
#include <asm/barebox-arm.h>

void __naked barebox_arm_reset_vector(void)
{
    imx5_cpu_lowlevel_init();
    arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
//    imx53_barebox_entry(NULL);
    barebox_arm_entry(MX53_CSD0_BASE_ADDR,SZ_512M,NULL);
}
=========================================

==========<cut board.c>==================
#include <common.h>
#include <environment.h>
#include <fcntl.h>
#include <platform_data/eth-fec.h>
#include <fs.h>
#include <init.h>
#include <nand.h>
#include <net.h>
#include <partition.h>
#include <linux/sizes.h>
#include <gpio.h>
#include <mci.h>

#include <generated/mach-types.h>

#include <mach/imx53-regs.h>
#include <mach/iomux-mx53.h>
#include <mach/devices-imx53.h>
#include <mach/generic.h>
#include <mach/imx-nand.h>
#include <mach/iim.h>
#include <mach/imx5.h>
#include <mach/esdctl.h>

#include <asm/armlinux.h>
#include <io.h>
#include <asm/mmu.h>

........ other device init functions ......

static int myboard_init(void)
{
        imx_esdctl_disable();

        arm_add_mem_device("ram0", MX53_CSD0_BASE_ADDR, SZ_512M);

        return 0;
}
core_initcall(myboard_init);
========================================

Thanks in advanced.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
