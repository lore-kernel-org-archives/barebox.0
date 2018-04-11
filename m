Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Biy-0000WQ-Lw
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 09:07:35 +0000
Date: Wed, 11 Apr 2018 11:07:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180411090716.q4vhuxfrcbbko5bg@pengutronix.de>
References: <20180410235323.5440-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180410235323.5440-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/10] Vybrid MMDC support and misc ESDCTL fixes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 10, 2018 at 04:53:13PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This series is a bit of code I developed to support automatic
> configured DRAM size detection on Vybrid platform as well as some
> small fixes/cleanup I made while looking at esdctl.c.
> 
> All feedback is wellcome!

Not much to comment, looks all good. Applied, thanks

Sascha

> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (10):
>   ARM: i.MX: esdctl: Use IOMEM instead of (void *)
>   ARM: i.MX51: esdctl: Replace magic value with ESDMISC_DDR2_8_BANK
>   ARM: i.MX6: esdctl: Share memory size calculation code
>   ARM: i.MX6: esdctl: Factor out common code in imx6*_barebox_entry()
>   ARM: i.MX6: esdctl: Use symbolic constants for RAM base address
>   ARM: i.MX: esdctl: Make use of min_t()
>   ARM: i.MX: esdctl: Introduce memory_sdram_size()
>   ARM: i.MX: esdctl: Add support for Vybrid's memory controller
>   i.MX: vf610-twr: Make use of vf610_barebox_entry()
>   i.MX: zii-vf610-dev: Make use of vf610_barebox_entry()
> 
>  arch/arm/boards/freescale-vf610-twr/lowlevel.c |   5 +-
>  arch/arm/boards/zii-imx6q-rdu2/lowlevel.c      |   2 +-
>  arch/arm/boards/zii-vf610-dev/lowlevel.c       |   3 +-
>  arch/arm/dts/vf610-ddrmc.dtsi                  |  15 +++
>  arch/arm/dts/vf610-twr.dts                     |   1 +
>  arch/arm/dts/vf610-zii-dev.dtsi                |   4 +-
>  arch/arm/mach-imx/esdctl.c                     | 144 ++++++++++++++-----------
>  arch/arm/mach-imx/include/mach/esdctl.h        |   2 +
>  arch/arm/mach-imx/include/mach/imx6-regs.h     |   4 +-
>  arch/arm/mach-imx/include/mach/vf610-ddrmc.h   |  18 ++++
>  arch/arm/mach-imx/include/mach/vf610-regs.h    |   2 +
>  include/memory.h                               |   8 ++
>  12 files changed, 141 insertions(+), 67 deletions(-)
>  create mode 100644 arch/arm/dts/vf610-ddrmc.dtsi
>  create mode 100644 arch/arm/mach-imx/include/mach/vf610-ddrmc.h
> 
> -- 
> 2.14.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
