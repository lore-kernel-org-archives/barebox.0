Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnIpi-0005LF-5v
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:24:39 +0000
Date: Wed, 8 Aug 2018 09:24:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808072426.5ztmtrsi4jovaowo@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 00/19] ARM: SoCFPGA: Arria10: Early FPGA config
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jul 31, 2018 at 12:44:23PM +0200, Steffen Trumtrar wrote:
> Hi!
> 
> This series allows configuring the FPGA of an Arria10 SoCFPGA early
> in the bootprocess from barebox. Early means: before the SDRAM is used.
> 
> The patches where developed for and tested on the Achilles board.
> 
> While at it, some cleanup patches are included, too.
> 
> 
> Steffen

Applied, thanks

Sascha

> 
> 
> 
> Enrico Jorns (1):
>   bootm: allow booting SoCFPGA prebootloader image
> 
> Steffen Trumtrar (18):
>   mci: dw_mmc: remove device_d pointer
>   mci: dw_mmc: convert to BIT() macro
>   mci: dw: move defines to headerfile
>   reset: socfpga: add missing driver name
>   ARM: socfpga: arria10: move debug_ll to common code
>   ARM: socfpga: arria10: add ocram base address
>   ARM: socfpga: add SMP_TWD_ADDR for Arria10
>   ARM: socfpga: arria10-init: split pinsetup
>   ARM: socfpga: arria10: set default TEXTBASE
>   ARM: socfpga: arria10: fix SDMMC phase shift
>   ARM: socfpga: achilles: update handoff files
>   ARM: dts: socfpga: Fix achilles dtc warnings
>   scripts: socfpga_mkimage: add size feature for PBL barebox
>   ARM: socfpga: arria10-reset-manager: don't reset bootsource
>   ARM: socfpga: Arria10: support programming FPGA in PBL
>   ARM: socfpga: achilles: convert to PBL barebox
>   ARM: arria10: update defconfig
>   ARM: socfpga: achilles: move environment to raw partition
> 
>  arch/arm/Kconfig                                   |   4 -
>  arch/arm/boards/reflex-achilles/Makefile           |   4 +-
>  arch/arm/boards/reflex-achilles/board.c            |  19 +
>  arch/arm/boards/reflex-achilles/lowlevel.c         |  87 +++-
>  .../boards/reflex-achilles/pinmux-config-arria10.c |   2 +-
>  .../boards/reflex-achilles/pll-config-arria10.c    |  16 +-
>  arch/arm/configs/socfpga-arria10_defconfig         |   7 +-
>  arch/arm/dts/socfpga_arria10_achilles.dts          |  20 +-
>  arch/arm/lib32/bootm.c                             |   7 +
>  arch/arm/mach-socfpga/Kconfig                      |   9 +-
>  arch/arm/mach-socfpga/Makefile                     |  12 +-
>  arch/arm/mach-socfpga/arria10-bootsource.c         |  16 +-
>  arch/arm/mach-socfpga/arria10-generic.c            |   2 +-
>  arch/arm/mach-socfpga/arria10-init.c               |  47 ++-
>  arch/arm/mach-socfpga/arria10-reset-manager.c      |  33 +-
>  arch/arm/mach-socfpga/arria10-sdram.c              |   2 +
>  arch/arm/mach-socfpga/arria10-xload-emmc.c         | 222 ++++++++++
>  arch/arm/mach-socfpga/arria10-xload.c              | 457 +++++++++++++++++++++
>  arch/arm/mach-socfpga/include/mach/arria10-fpga.h  |  86 ++++
>  arch/arm/mach-socfpga/include/mach/arria10-regs.h  |   2 +
>  .../include/mach/arria10-system-manager.h          |   6 +
>  arch/arm/mach-socfpga/include/mach/arria10-xload.h |  13 +
>  arch/arm/mach-socfpga/include/mach/debug_ll.h      |   2 -
>  arch/arm/mach-socfpga/include/mach/generic.h       |  41 ++
>  drivers/mci/dw_mmc.c                               | 152 +------
>  drivers/mci/dw_mmc.h                               | 140 +++++++
>  drivers/reset/reset-socfpga.c                      |   1 +
>  images/Makefile.socfpga                            |  17 +-
>  scripts/socfpga_mkimage.c                          |  25 +-
>  29 files changed, 1240 insertions(+), 211 deletions(-)
>  create mode 100644 arch/arm/boards/reflex-achilles/board.c
>  create mode 100644 arch/arm/mach-socfpga/arria10-xload-emmc.c
>  create mode 100644 arch/arm/mach-socfpga/arria10-xload.c
>  create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-fpga.h
>  create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-xload.h
>  create mode 100644 drivers/mci/dw_mmc.h
> 
> -- 
> 2.11.0
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
