Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9QTu-0001rN-Gc
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 08:01:41 +0000
Date: Mon, 8 Oct 2018 10:01:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181008080122.ytqvwin5edjsi5t6@pengutronix.de>
References: <20181008063409.17566-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181008063409.17566-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 0/6] ZII RPU2 i.MX7D board support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 07, 2018 at 11:34:03PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This series is a number of small patches I developed while adding
> support for ZII's RPU2 board. Hopefully all of them are self-explanatory.
> 
> Feedback is welcome!
> 
> Changes since [v1]:
> 
>     - Renamed flash-header-mx7-default.imxcfg to flash-header-mx7-sabresd.imxcfg
> 
> Thanks,
> Andrey Smirnov
> 
> [v1] http://lists.infradead.org/pipermail/barebox/2018-September/034845.html
> 
> Andrey Smirnov (6):
>   ARM: i.MX: esdctl: Add memory size detection for i.MX7D
>   ARM: freescale-mx7-sabresd: Make use of imx7d_barebox_entry()
>   i.MX7D: DCD: Create shared DDR configuration header
>   ARM: i.MX7: bbu: Add MMC boot handler
>   ARM: i.MX7: bbu: Add I2C and SPI handler
>   i.MX: Add support for ZII's i.MX7D-based RPU2 board

Applied, thanks

Sascha

> 
>  arch/arm/boards/Makefile                      |   1 +
>  .../flash-header-mx7-sabresd.imxcfg           |  79 +--
>  .../boards/freescale-mx7-sabresd/lowlevel.c   |   7 +-
>  arch/arm/boards/zii-imx7d-rpu2/Makefile       |   2 +
>  arch/arm/boards/zii-imx7d-rpu2/board.c        |  49 ++
>  .../flash-header-zii-imx7d-rpu2.imxcfg        |   6 +
>  arch/arm/boards/zii-imx7d-rpu2/lowlevel.c     |  50 ++
>  arch/arm/dts/Makefile                         |   2 +
>  arch/arm/dts/imx7d-ddrc.dtsi                  |  15 +
>  arch/arm/dts/imx7d-zii-rpu2.dts               | 613 ++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                     |   4 +
>  arch/arm/mach-imx/esdctl.c                    |  61 ++
>  arch/arm/mach-imx/imx-bbu-internal.c          |  11 +
>  arch/arm/mach-imx/include/mach/bbu.h          |  20 +
>  arch/arm/mach-imx/include/mach/esdctl.h       |   1 +
>  .../flash-header/imx7d-ddr-sabresd.imxcfg     |  78 +++
>  arch/arm/mach-imx/include/mach/imx7-regs.h    |   2 +
>  images/Makefile.imx                           |   5 +
>  18 files changed, 923 insertions(+), 83 deletions(-)
>  create mode 100644 arch/arm/boards/zii-imx7d-rpu2/Makefile
>  create mode 100644 arch/arm/boards/zii-imx7d-rpu2/board.c
>  create mode 100644 arch/arm/boards/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
>  create mode 100644 arch/arm/boards/zii-imx7d-rpu2/lowlevel.c
>  create mode 100644 arch/arm/dts/imx7d-ddrc.dtsi
>  create mode 100644 arch/arm/dts/imx7d-zii-rpu2.dts
>  create mode 100644 arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg
> 
> -- 
> 2.17.1
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
