Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThLM6-0007Xt-6N
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 14:26:17 +0000
Date: Sat, 8 Dec 2012 15:26:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121208142609.GJ10369@pengutronix.de>
References: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/8] Cleanup Kconfig files
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Dec 08, 2012 at 10:51:19AM +0400, Alexander Shiyan wrote:
> This patch provides a global cleanup barebox Kconfig files. This includes
> replacing spaces to tabs, formatting in accordance format, removing
> extraneous lines and spaces. No functional changes.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/Kconfig              |    6 +++---
>  arch/arm/cpu/Kconfig          |    7 +++----
>  arch/arm/mach-at91/Kconfig    |    7 ++-----
>  arch/arm/mach-imx/Kconfig     |   29 ++++++++++++++++-------------
>  arch/arm/mach-mxs/Kconfig     |    6 +++---
>  arch/arm/mach-netx/Kconfig    |    1 -
>  arch/arm/mach-omap/Kconfig    |   17 ++++++++++-------
>  arch/arm/mach-samsung/Kconfig |   18 +++++++-----------
>  arch/blackfin/Kconfig         |    2 +-
>  arch/mips/Kconfig             |   26 +++++++++++++-------------
>  arch/nios2/Kconfig            |    5 ++---
>  arch/openrisc/Kconfig         |    2 +-
>  arch/ppc/mach-mpc5xxx/Kconfig |    1 +
>  arch/ppc/mach-mpc85xx/Kconfig |    3 ++-
>  arch/x86/Kconfig              |   15 +++++++--------
>  arch/x86/boot/Kconfig         |    2 +-
>  arch/x86/mach-i386/Kconfig    |    2 +-
>  commands/Kconfig              |   31 +++++++++++++++----------------
>  common/Kconfig                |   16 ++++++++--------
>  crypto/Kconfig                |    2 +-
>  drivers/Kconfig               |    2 +-
>  drivers/ata/Kconfig           |    2 +-
>  drivers/dma/Kconfig           |    2 +-
>  drivers/eeprom/Kconfig        |    6 +++---
>  drivers/gpio/Kconfig          |    2 +-
>  drivers/i2c/Kconfig           |    2 +-
>  drivers/input/Kconfig         |    4 ++--
>  drivers/mci/Kconfig           |    4 ++--
>  drivers/misc/Kconfig          |    2 +-
>  drivers/mtd/Kconfig           |    2 +-
>  drivers/mtd/devices/Kconfig   |    8 ++++----
>  drivers/mtd/nand/Kconfig      |    8 ++++----
>  drivers/mtd/ubi/Kconfig       |    2 +-
>  drivers/net/Kconfig           |    2 +-
>  drivers/net/phy/Kconfig       |    2 +-
>  drivers/nor/Kconfig           |    6 +++---
>  drivers/serial/Kconfig        |    4 ++--
>  drivers/spi/Kconfig           |    2 +-
>  drivers/usb/Kconfig           |    2 +-
>  drivers/usb/gadget/Kconfig    |    2 +-
>  drivers/video/Kconfig         |    2 +-
>  drivers/watchdog/Kconfig      |    2 +-
>  fs/Kconfig                    |    2 +-
>  lib/Kconfig                   |    6 +++---
>  lib/gui/Kconfig               |    2 +-
>  net/Kconfig                   |    2 +-
>  46 files changed, 138 insertions(+), 142 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 3afd885..01fe9de 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -19,7 +19,7 @@ config ARM_LINUX
>  config HAVE_MACH_ARM_HEAD
>  	bool
>  
> -menu "System Type                   "
> +menu "System Type"
>  
>  choice
>  	prompt "ARM system type"
> @@ -71,7 +71,7 @@ config ARCH_NOMADIK
>  	select CPU_ARM926T
>  	select CLOCKSOURCE_NOMADIK
>  	help
> -	 Support for the Nomadik platform by ST-Ericsson
> +	  Support for the Nomadik platform by ST-Ericsson
>  
>  config ARCH_OMAP
>  	bool "TI OMAP"
> @@ -153,7 +153,7 @@ config THUMB2_BAREBOX
>  
>  endmenu
>  
> -menu "Arm specific settings         "
> +menu "Arm specific settings"
>  
>  config CMD_ARM_CPUINFO
>  	bool "cpuinfo command"
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index d8a5fb1..86bc174 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -4,7 +4,7 @@ config CPU_32
>  	bool
>  	default y
>  
> -# Select CPU types depending on the architecture selected.  This selects
> +# Select CPU types depending on the architecture selected. This selects
>  # which CPUs we support in the kernel image, and the compiler instruction
>  # optimiser behaviour.
>  
> @@ -27,14 +27,13 @@ config CPU_ARM920T
>  	  Say Y if you want support for the ARM920T processor.
>  	  Otherwise, say N.
>  
> -
>  # ARM926T
>  config CPU_ARM926T
>  	bool
>  	select CPU_32v5
>  	help
> -	  This is a variant of the ARM920.  It has slightly different
> -	  instruction sequences for cache and TLB operations.  Curiously,
> +	  This is a variant of the ARM920. It has slightly different
> +	  instruction sequences for cache and TLB operations. Curiously,
>  	  there is no documentation on it at the ARM corporate website.
>  
>  	  Say Y if you want support for the ARM926T processor.
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 3de6061..2750dd5 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -116,13 +116,12 @@ config SUPPORT_CALAO_MOB_TNY_MD2
>  if ARCH_AT91RM9200
>  
>  choice
> -
>  	prompt "AT91RM9200 Board Type"
>  
>  config MACH_AT91RM9200EK
>  	bool "Atmel AT91RM9200-EK Evaluation Kit"
> -	help
>  	select HAVE_AT91_DATAFLASH_CARD
> +	help
>  	  Select this if you are using Atmel's AT91RM9200-EK Evaluation Kit.
>  	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3507>
>  
> @@ -135,7 +134,6 @@ endif
>  if ARCH_AT91SAM9260
>  
>  choice
> -
>  	prompt "AT91SAM9260 Board Type"
>  
>  config MACH_AT91SAM9260EK
> @@ -218,7 +216,6 @@ endif
>  if ARCH_AT91SAM9G20
>  
>  choice
> -
>  	prompt "AT91SAM9G20 Board Type"
>  
>  config MACH_AT91SAM9G20EK
> @@ -390,7 +387,7 @@ config CALAO_MOB_TNY_MD2
>  	depends on SUPPORT_CALAO_MOB_TNY_MD2
>  
>  config CALAO_MB_QIL_A9260
> -	bool "MB-QIL A9260  Motherboard Board support"
> +	bool "MB-QIL A9260 Motherboard Board support"
>  	depends on MACH_QIL_A9260
>  
>  endif
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 3f4b452..2d65570 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -197,7 +197,6 @@ endchoice
>  if ARCH_IMX1
>  
>  choice
> -
>  	prompt "i.MX1 Board Type"
>  
>  config MACH_SCB9328
> @@ -216,7 +215,6 @@ endif
>  if ARCH_IMX21
>  
>  choice
> -
>  	prompt "i.MX21 Board Type"
>  
>  config MACH_IMX21ADS
> @@ -236,7 +234,6 @@ endif
>  if ARCH_IMX25
>  
>  choice
> -
>  	prompt "i.MX25 Board Type"
>  
>  config MACH_EUKREA_CPUIMX25
> @@ -270,7 +267,6 @@ endif
>  if ARCH_IMX27
>  
>  choice
> -
>  	prompt "i.MX27 Board Type"
>  
>  config MACH_EUKREA_CPUIMX27
> @@ -329,7 +325,6 @@ endif
>  if ARCH_IMX31
>  
>  choice
> -
>  	prompt "i.MX31 Board Type"
>  
>  config MACH_PCM037
> @@ -350,7 +345,6 @@ endif
>  if ARCH_IMX35
>  
>  choice
> -
>  	prompt "i.MX35 Board Type"
>  
>  config MACH_EUKREA_CPUIMX35
> @@ -397,7 +391,6 @@ endif
>  if ARCH_IMX51
>  
>  choice
> -
>  	prompt "i.MX51 Board Type"
>  
>  config MACH_FREESCALE_MX51_PDK
> @@ -442,7 +435,6 @@ endif
>  if ARCH_IMX53
>  
>  choice
> -
>  	prompt "i.MX53 Board Type"
>  
>  config MACH_FREESCALE_MX53_LOCO
> @@ -471,6 +463,7 @@ config MACH_TX53
>  endchoice
>  
>  if MACH_TX53
> +
>  choice
>  	prompt "TX53 board revision"
>  config TX53_REV_1011
> @@ -478,6 +471,7 @@ config TX53_REV_1011
>  config TX53_REV_XX30
>  	bool "8030 / 1030"
>  endchoice
> +
>  endif
>  
>  endif
> @@ -485,7 +479,6 @@ endif
>  if ARCH_IMX6
>  
>  choice
> -
>  	prompt "i.MX6 Board Type"
>  
>  config MACH_MX6Q_ARM2
> @@ -500,9 +493,10 @@ endif
>  
>  # ----------------------------------------------------------
>  
> -menu "Board specific settings       "
> +menu "Board specific settings"
>  
>  if MACH_PCM037
> +
>  choice
>  	prompt "SDRAM Bank0"
>  config PCM037_SDRAM_BANK0_128MB
> @@ -520,9 +514,11 @@ config PCM037_SDRAM_BANK1_128MB
>  config PCM037_SDRAM_BANK1_256MB
>  	bool "256MB"
>  endchoice
> +
>  endif
>  
>  if MACH_EUKREA_CPUIMX27
> +
>  choice
>  	prompt "SDRAM Size"
>  config EUKREA_CPUIMX27_SDRAM_128MB
> @@ -530,6 +526,7 @@ config EUKREA_CPUIMX27_SDRAM_128MB
>  config EUKREA_CPUIMX27_SDRAM_256MB
>  	bool "256 MB"
>  endchoice
> +
>  choice
>  	prompt "NOR Flash Size"
>  config EUKREA_CPUIMX27_NOR_32MB
> @@ -537,6 +534,7 @@ config EUKREA_CPUIMX27_NOR_32MB
>  config EUKREA_CPUIMX27_NOR_64MB
>  	bool "> 32 MB"
>  endchoice
> +
>  choice
>  	prompt "Quad UART Port"
>  	depends on DRIVER_SERIAL_NS16550
> @@ -549,8 +547,11 @@ config EUKREA_CPUIMX27_QUART3
>  config EUKREA_CPUIMX27_QUART4
>  	bool "Q4"
>  endchoice
> +
>  endif
> +
>  if MACH_FREESCALE_MX25_3STACK
> +
>  choice
>  	prompt "SDRAM Type"
>  config FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
> @@ -558,16 +559,18 @@ config FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
>  config FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
>  	bool "128 MB (mDDR)"
>  endchoice
> +
>  endif
> +
>  endmenu
>  
> -menu "i.MX specific settings        "
> +menu "i.MX specific settings"
>  
>  config IMX_IIM
>  	tristate "IIM fusebox device"
>  	depends on !ARCH_IMX21 && !ARCH_IMX21
>  	help
> -	  Device driver for the IC Identification Module (IIM) fusebox. Use the 
> +	  Device driver for the IC Identification Module (IIM) fusebox. Use the
>  	  regular md/mw commands to program and read the fusebox.
>  
>  	  Fuses are grouped in "rows", 8 bits per row. When using md/mw commands,
> @@ -588,7 +591,7 @@ config IMX_IIM_FUSE_BLOW
>  
>  	  Before being actually able to blow the fuses, you need to explicitely
>  	  enable it:
> -	  	 imx_iim0.permanent_write_enable=1
> +	    imx_iim0.permanent_write_enable=1
>  
>  endmenu
>  
> diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
> index ff295f1..853d81a 100644
> --- a/arch/arm/mach-mxs/Kconfig
> +++ b/arch/arm/mach-mxs/Kconfig
> @@ -84,7 +84,7 @@ endchoice
>  
>  endif
>  
> -menu "i.MX specific settings        "
> +menu "i.MX specific settings"
>  
>  config MXS_OCOTP
>  	tristate "OCOTP device"
> @@ -105,7 +105,7 @@ config MXS_OCOTP_WRITABLE
>  
>  	  Before being actually able to blow the bits, you need to explicitely
>  	  enable writing:
> -		 ocotp0.permanent_write_enable=1
> +	    ocotp0.permanent_write_enable=1
>  
>  config MXS_CMD_BCB
>  	depends on NAND_MXS
> @@ -117,7 +117,7 @@ config MXS_CMD_BCB
>  
>  endmenu
>  
> -menu "Board specific settings       "
> +menu "Board specific settings"
>  
>  if MACH_TX28
>  
> diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
> index 8e83417..b9e3457 100644
> --- a/arch/arm/mach-netx/Kconfig
> +++ b/arch/arm/mach-netx/Kconfig
> @@ -40,7 +40,6 @@ config NETX_COOKIE
>  	default 16 if MACH_NXHX
>  
>  choice
> -
>  	prompt "Netx Board Type"
>  
>  config MACH_NXDB500
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 81f6127..e4103e2 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -12,7 +12,7 @@
>  #
>  # This program is distributed in the hope that it will be useful,
>  # but WITHOUT ANY WARRANTY; without even the implied warranty of
> -# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
>  # GNU General Public License for more details.
>  #
>  
> @@ -59,7 +59,7 @@ config OMAP3_CLOCK_CONFIG
>  config OMAP_GPMC
>  	prompt "Support for GPMC configuration"
>  	bool
> -	depends on  (ARCH_OMAP2 || ARCH_OMAP3 || ARCH_OMAP4)
> +	depends on (ARCH_OMAP2 || ARCH_OMAP3 || ARCH_OMAP4)
>  	default y
>  	help
>  	  Enable this if you use Texas Instrument's General purpose Memory
> @@ -115,14 +115,14 @@ config MACH_BEAGLE
>  	select HAVE_NOSHELL
>  	select HAVE_DEFAULT_ENVIRONMENT_NEW
>  	depends on ARCH_OMAP3
> -	  help
> +	help
>  	  Say Y here if you are using Beagle Board
>  
>  config MACH_OMAP3EVM
>  	bool "Texas Instrument's OMAP3 EVM"
>  	select HAVE_NOSHELL
>  	depends on ARCH_OMAP3
> -	  help
> +	help
>  	  Say Y here if you are using OMAP3EVM
>  
>  config MACH_PANDA
> @@ -155,7 +155,7 @@ config MACH_PCAAL1
>  	bool "Phytec phyCARD-A-L1"
>  	select HAVE_NOSHELL
>  	depends on ARCH_OMAP3
> -	  help
> +	help
>  	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1
>  
>  config MACH_PCAAXL2
> @@ -169,7 +169,8 @@ config MACH_PCAAXL2
>  endchoice
>  
>  if MACH_OMAP3EVM
> -	choice
> +
> +choice
>  	prompt "Select UART"
>  
>  	config OMAP3EVM_UART1
> @@ -183,7 +184,9 @@ if MACH_OMAP3EVM
>  		depends on MACH_OMAP3EVM
>  		help
>  		  Say Y here if you would like to use UART3 as console.
> -	endchoice
> +
> +endchoice
> +
>  endif
>  
>  config MACH_OMAP_ADVANCED_MUX
> diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
> index 3a4d910..80575cb 100644
> --- a/arch/arm/mach-samsung/Kconfig
> +++ b/arch/arm/mach-samsung/Kconfig
> @@ -13,12 +13,12 @@ config ARCH_TEXT_BASE
>  	default 0x23e00000 if MACH_TINY210
>  
>  config BOARDINFO
> -	default "Mini 2440"    if MACH_MINI2440
> -	default "Mini 6410"    if MACH_MINI6410
> -	default "Tiny 6410"    if MACH_TINY6410
> +	default "Mini 2440" if MACH_MINI2440
> +	default "Mini 6410" if MACH_MINI6410
> +	default "Tiny 6410" if MACH_TINY6410
>  	default "Digi A9M2440" if MACH_A9M2440
>  	default "Digi A9M2410" if MACH_A9M2410
> -	default "Tiny 210"     if MACH_TINY210
> +	default "Tiny 210" if MACH_TINY210
>  
>  config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
>  	hex
> @@ -35,7 +35,6 @@ config CPU_S3C2440
>  	bool
>  
>  choice
> -
>  	prompt "S3C24xx Board Type"
>  
>  config MACH_A9M2410
> @@ -71,7 +70,7 @@ config MACH_MINI2440
>  
>  endchoice
>  
> -menu "Board specific settings       "
> +menu "Board specific settings"
>  
>  choice
>  	prompt "A9M2440 baseboard"
> @@ -98,7 +97,6 @@ config CPU_S3C6410
>  	bool
>  
>  choice
> -
>  	prompt "S3C64xx Board Type"
>  
>  config MACH_MINI6410
> @@ -118,7 +116,7 @@ config MACH_TINY6410
>  
>  endchoice
>  
> -menu "Board specific settings       "
> +menu "Board specific settings"
>  
>  source arch/arm/boards/friendlyarm-tiny6410/Kconfig
>  
> @@ -135,7 +133,6 @@ config CPU_S5PV210
>  	bool
>  
>  choice
> -
>  	prompt "S5PCxx board type"
>  
>  config MACH_TINY210
> @@ -149,8 +146,7 @@ endchoice
>  
>  endif
>  
> -
> -menu "S3C Features              "
> +menu "S3C Features"
>  
>  config S3C_LOWLEVEL_INIT
>  	bool
> diff --git a/arch/blackfin/Kconfig b/arch/blackfin/Kconfig
> index 1c58ba8..5d8a2e2 100644
> --- a/arch/blackfin/Kconfig
> +++ b/arch/blackfin/Kconfig
> @@ -29,7 +29,7 @@ config MACH_IPE337
>  
>  endchoice
>  
> -choice 
> +choice
>  	prompt "Select your board options"
>  	depends on MACH_IPE337
>  	default MACH_IPE337_V2
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 7a1eeac..947edcf 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -62,10 +62,11 @@ source arch/mips/mach-xburst/Kconfig
>  endmenu
>  
>  #
> -# Endianess selection.  Sufficiently obscure so many users don't know what to
> -# answer,so we try hard to limit the available choices.  Also the use of a
> +# Endianess selection. Sufficiently obscure so many users don't know what to
> +# answer,so we try hard to limit the available choices. Also the use of a
>  # choice statement should be more obvious to the user.
>  #
> +
>  choice
>  	prompt "Endianess selection"
>  	help
> @@ -98,8 +99,8 @@ config CPU_MIPS32_R1
>  	select CPU_SUPPORTS_32BIT_KERNEL
>  	help
>  	  Choose this option to build a barebox for release 1 or later of the
> -	  MIPS32 architecture.  Most modern embedded systems with a 32-bit
> -	  MIPS processor are based on a MIPS32 processor.  If you know the
> +	  MIPS32 architecture. Most modern embedded systems with a 32-bit
> +	  MIPS processor are based on a MIPS32 processor. If you know the
>  	  specific type of processor in your system, choose those that one
>  	  otherwise CPU_MIPS32_R1 is a safe bet for any MIPS32 system.
>  	  Release 2 of the MIPS32 architecture is available since several
> @@ -113,8 +114,8 @@ config CPU_MIPS32_R2
>  	select CPU_SUPPORTS_32BIT_KERNEL
>  	help
>  	  Choose this option to build a barebox for release 2 or later of the
> -	  MIPS32 architecture.  Most modern embedded systems with a 32-bit
> -	  MIPS processor are based on a MIPS32 processor.  If you know the
> +	  MIPS32 architecture. Most modern embedded systems with a 32-bit
> +	  MIPS processor are based on a MIPS32 processor. If you know the
>  	  specific type of processor in your system, choose those that one
>  	  otherwise CPU_MIPS32_R1 is a safe bet for any MIPS32 system.
>  
> @@ -125,8 +126,8 @@ config CPU_MIPS64_R1
>  	select CPU_SUPPORTS_64BIT_KERNEL
>  	help
>  	  Choose this option to build a barebox for release 1 or later of the
> -	  MIPS64 architecture.  Many modern embedded systems with a 64-bit
> -	  MIPS processor are based on a MIPS64 processor.  If you know the
> +	  MIPS64 architecture. Many modern embedded systems with a 64-bit
> +	  MIPS processor are based on a MIPS64 processor. If you know the
>  	  specific type of processor in your system, choose those that one
>  	  otherwise CPU_MIPS64_R1 is a safe bet for any MIPS64 system.
>  	  Release 2 of the MIPS64 architecture is available since several
> @@ -141,14 +142,13 @@ config CPU_MIPS64_R2
>  	select CPU_SUPPORTS_64BIT_KERNEL
>  	help
>  	  Choose this option to build a barebox for release 2 or later of the
> -	  MIPS64 architecture.  Many modern embedded systems with a 64-bit
> -	  MIPS processor are based on a MIPS64 processor.  If you know the
> +	  MIPS64 architecture. Many modern embedded systems with a 64-bit
> +	  MIPS processor are based on a MIPS64 processor. If you know the
>  	  specific type of processor in your system, choose those that one
>  	  otherwise CPU_MIPS64_R1 is a safe bet for any MIPS64 system.
>  
>  endchoice
>  
> -
>  config SYS_HAS_CPU_MIPS32_R1
>  	bool
>  
> @@ -199,7 +199,7 @@ choice
>  	help
>  	  You should only select this option if you have a workload that
>  	  actually benefits from 64-bit processing or if your machine has
> -	  large memory.  You will only be presented a single option in this
> +	  large memory. You will only be presented a single option in this
>  	  menu if your system does not support both 32-bit and 64-bit modes.
>  
>  config 32BIT
> @@ -216,7 +216,7 @@ config 64BIT
>  
>  endchoice
>  
> -menu "MIPS specific settings        "
> +menu "MIPS specific settings"
>  
>  config CMD_MIPS_CPUINFO
>  	bool "cpuinfo command"
> diff --git a/arch/nios2/Kconfig b/arch/nios2/Kconfig
> index e1af0c0..c49f6e9 100644
> --- a/arch/nios2/Kconfig
> +++ b/arch/nios2/Kconfig
> @@ -16,13 +16,12 @@ choice
>  	prompt "Select your board"
>  
>  config GENERIC
> -	bool "Generic   "
> +	bool "Generic"
>  	select NIOS2
>  
> -
>  endchoice
>  
> -menu "Board configuration           "
> +menu "Board configuration"
>  
>  config EARLY_PRINTF
>  	default n
> diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
> index bcfd67f..47ee3fe 100644
> --- a/arch/openrisc/Kconfig
> +++ b/arch/openrisc/Kconfig
> @@ -16,7 +16,7 @@ choice
>  	prompt "Select your board"
>  
>  config GENERIC
> -	bool "Generic   "
> +	bool "Generic"
>  	select OPENRISC
>  
>  endchoice
> diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
> index db4f391..db001d7 100644
> --- a/arch/ppc/mach-mpc5xxx/Kconfig
> +++ b/arch/ppc/mach-mpc5xxx/Kconfig
> @@ -50,4 +50,5 @@ config MACH_PHYCORE_MPC5200B_TINY_REV
>  	  old board you should set this option to 1
>  
>  endmenu
> +
>  endif
> diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
> index b2af05e..8cde1bd 100644
> --- a/arch/ppc/mach-mpc85xx/Kconfig
> +++ b/arch/ppc/mach-mpc85xx/Kconfig
> @@ -17,9 +17,10 @@ choice
>  config P2020RDB
>  	bool "P2020RDB"
>  	help
> -	Say Y here if you are using the Freescale P2020RDB
> +	  Say Y here if you are using the Freescale P2020RDB
>  
>  endchoice
> +
>  endif
>  
>  if P2020RDB
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index 711bbfe..777604f 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -40,19 +40,18 @@ choice
>  	prompt "Bring up type"
>  
>  	config X86_BIOS_BRINGUP
> -		prompt "16 bit BIOS"
> -		bool
> +		bool "16 bit BIOS"
>  		help
> -		   Barebox will act as a BIOS based bootloader. This includes
> -		   some 16 bit real mode code and some restrictions everyone knows
> -		   from BIOS based systems.
> +		  Barebox will act as a BIOS based bootloader. This includes
> +		  some 16 bit real mode code and some restrictions everyone knows
> +		  from BIOS based systems.
>  
>  	config X86_NATIVE_BRINGUP
>  		bool "native"
>  		help
> -		   Barebox will act as a native bootloader. This includes all the
> -		   required initialization needed to bring up a piece of hardware.
> -		   Note: Not implemented yet
> +		  Barebox will act as a native bootloader. This includes all the
> +		  required initialization needed to bring up a piece of hardware.
> +		  Note: Not implemented yet
>  
>  endchoice
>  
> diff --git a/arch/x86/boot/Kconfig b/arch/x86/boot/Kconfig
> index cdb82e4..8dba00d 100644
> --- a/arch/x86/boot/Kconfig
> +++ b/arch/x86/boot/Kconfig
> @@ -1,6 +1,6 @@
>  if X86_BIOS_BRINGUP
>  
> -menu "BIOS boot source              "
> +menu "BIOS boot source"
>  
>  config X86_HDBOOT
>  	bool "HD boot"
> diff --git a/arch/x86/mach-i386/Kconfig b/arch/x86/mach-i386/Kconfig
> index 11f6aa6..cb12b9c 100644
> --- a/arch/x86/mach-i386/Kconfig
> +++ b/arch/x86/mach-i386/Kconfig
> @@ -1,5 +1,5 @@
>  
> -menu "Board specific settings       "
> +menu "Board specific settings"
>  
>  if X86_BOOTLOADER
>  
> diff --git a/commands/Kconfig b/commands/Kconfig
> index ac9b797..75ebfb8 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -12,9 +12,9 @@ config HAS_POWEROFF
>  
>  if COMMAND_SUPPORT
>  
> -menu "commands                      "
> +menu "commands"
>  
> -menu "scripting                     "
> +menu "scripting"
>  
>  config CMD_EDIT
>  	tristate
> @@ -107,7 +107,7 @@ endif
>  
>  config CMD_TIME
>  	bool "time"
> -	  help
> +	help
>  	  Just like the unix time command this command allows to measure the
>  	  execution time of a command. Note: barebox does not use interrupts,
>  	  so the system timer can overrun during the execution of the command
> @@ -130,7 +130,7 @@ config CMD_GLOBAL
>  
>  endmenu
>  
> -menu "file commands                 "
> +menu "file commands"
>  
>  config CMD_LS
>  	tristate
> @@ -237,7 +237,7 @@ config CMD_FILETYPE
>  
>  endmenu
>  
> -menu "console                       "
> +menu "console"
>  
>  config CMD_CLEAR
>  	tristate
> @@ -257,7 +257,7 @@ config CMD_ECHO_E
>  
>  endmenu
>  
> -menu "memory                        "
> +menu "memory"
>  
>  config CMD_LOADB
>  	select CRC16
> @@ -306,8 +306,8 @@ config CMD_CRC_CMP
>  	prompt "compare 2 files crc"
>  
>  config CMD_DIGEST
> -       tristate
> -       select DIGEST
> +	tristate
> +	select DIGEST
>  
>  config CMD_MD5SUM
>  	tristate
> @@ -335,7 +335,7 @@ config CMD_SHA224SUM
>  
>  endmenu
>  
> -menu "flash                         "
> +menu "flash"
>  
>  config CMD_FLASH
>  	tristate
> @@ -349,8 +349,7 @@ config CMD_UBI
>  
>  endmenu
>  
> -
> -menu "booting                       "
> +menu "booting"
>  
>  config CMD_BOOTM
>  	tristate
> @@ -424,8 +423,8 @@ config CMD_BOOTU
>  	depends on ARM
>  	prompt "bootu"
>  	help
> -	   compile in the 'bootu' command to start raw (uncompressed)
> -	   Linux images
> +	  compile in the 'bootu' command to start raw (uncompressed)
> +	  Linux images
>  
>  config FLEXIBLE_BOOTARGS
>  	bool
> @@ -479,7 +478,7 @@ config CMD_OFTREE_PROBE
>  
>  endmenu
>  
> -menu "testing                       "
> +menu "testing"
>  
>  config CMD_NANDTEST
>  	tristate
> @@ -500,7 +499,7 @@ config CMD_MTEST_ALTERNATIVE
>  
>  endmenu
>  
> -menu "video command                  "
> +menu "video command"
>  
>  if VIDEO
>  
> @@ -659,7 +658,7 @@ config CMD_CLK
>  menuconfig CMD_WD
>  	bool
>  	depends on WATCHDOG
> -	prompt "wd command                    "
> +	prompt "wd command"
>  	help
>  	  The 'wd' command which allows to start, stop and trigger the onboard
>  	  watchdog.
> diff --git a/common/Kconfig b/common/Kconfig
> index d60db80..4209404 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -61,7 +61,7 @@ config STDDEV
>  config BAREBOX_UPDATE
>  	bool
>  
> -menu "General Settings              "
> +menu "General Settings"
>  
>  config LOCALVERSION
>  	string "Local version - append to the version string"
> @@ -69,7 +69,7 @@ config LOCALVERSION
>  	  Append an extra string to the end of your version string.
>  	  The string you set here will be appended after the contents of
>  	  any files with a filename matching localversion* in your
> -	  object and source tree, in that order.  Your total string can
> +	  object and source tree, in that order. Your total string can
>  	  be a maximum of 64 characters.
>  
>  config LOCALVERSION_AUTO
> @@ -81,7 +81,7 @@ config LOCALVERSION_AUTO
>  	  top of tree revision.
>  
>  	  A string of the format -gxxxxxxxx will be added to the localversion
> -	  if a git-based tree is found.  The string generated by this will be
> +	  if a git-based tree is found. The string generated by this will be
>  	  appended after any matching localversion* files, and after the value
>  	  set in CONFIG_LOCALVERSION.
>  
> @@ -106,7 +106,7 @@ config MEMINFO
>  config ENVIRONMENT_VARIABLES
>  	bool "environment variables support"
>  
> -menu "memory layout                 "
> +menu "memory layout"
>  
>  config HAVE_PBL_IMAGE
>  	bool
> @@ -196,7 +196,7 @@ config MEMORY_LAYOUT_DEFAULT
>  	bool "use default memory layout"
>  	help
>  	  select this option to use bareboxs standard memory layout:
> -	  
> +
>  	  stack
>  	  -----
>  	  malloc heap
> @@ -409,8 +409,8 @@ config MENU
>  	prompt "Menu Framework"
>  	depends on PROCESS_ESCAPE_SEQUENCE
>  	help
> -	   a menu framework that allow us to create list menu to simplify
> -	   barebox and make it more user-frendly
> +	  a menu framework that allow us to create list menu to simplify
> +	  barebox and make it more user-frendly
>  
>  config PASSWORD
>  	bool
> @@ -635,7 +635,7 @@ config RESET_SOURCE
>  
>  endmenu
>  
> -menu "Debugging                     "
> +menu "Debugging"
>  
>  config DEBUG_INFO
>  	bool
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index a6fc1b8..4bd8dcf 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -8,7 +8,7 @@ config CRC7
>  	bool
>  
>  menuconfig DIGEST
> -	bool "Digest                        "
> +	bool "Digest"
>  
>  if DIGEST
>  
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index f6446e8..988ec9e 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -1,4 +1,4 @@
> -menu "Drivers                       "
> +menu "Drivers"
>  
>  source "drivers/serial/Kconfig"
>  source "drivers/net/Kconfig"
> diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
> index fe6f5e6..2e80c3e 100644
> --- a/drivers/ata/Kconfig
> +++ b/drivers/ata/Kconfig
> @@ -2,7 +2,7 @@ menuconfig DISK
>  	select BLOCK
>  	select PARTITION
>  	select PARTITION_DISK
> -	bool "Disk support                  "
> +	bool "Disk support"
>  	help
>  	  Add support for disk like drives like harddisks, CDROMs, SD cards and
>  	  CF cards.
> diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
> index ec6c894..a30fa37 100644
> --- a/drivers/dma/Kconfig
> +++ b/drivers/dma/Kconfig
> @@ -4,5 +4,5 @@ config MXS_APBH_DMA
>  	tristate "MXS APBH DMA ENGINE"
>  	depends on ARCH_IMX23 || ARCH_IMX28
>  	help
> -	Experimental!
> +	  Experimental!
>  endmenu
> diff --git a/drivers/eeprom/Kconfig b/drivers/eeprom/Kconfig
> index ce9cfe7..0e36c82 100644
> --- a/drivers/eeprom/Kconfig
> +++ b/drivers/eeprom/Kconfig
> @@ -14,11 +14,11 @@ config EEPROM_AT24
>  	help
>  	  Enable this driver to get read/write support to most I2C EEPROMs,
>  	  after you configure the driver to know about each EEPROM on
> -	  your target board.  Use these generic chip names, instead of
> +	  your target board. Use these generic chip names, instead of
>  	  vendor-specific ones like at24c64 or 24lc02:
>  
> -	     24c00, 24c01, 24c02, spd (readonly 24c02), 24c04, 24c08,
> -	     24c16, 24c32, 24c64, 24c128, 24c256, 24c512, 24c1024
> +	    24c00, 24c01, 24c02, spd (readonly 24c02), 24c04, 24c08,
> +	    24c16, 24c32, 24c64, 24c128, 24c256, 24c512, 24c1024
>  
>  	  Unless you like data loss puzzles, always be sure that any chip
>  	  you configure as a 24c32 (32 kbit) or larger is NOT really a
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index e8eeb6d..89be684 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -4,7 +4,7 @@ config GPIOLIB
>  
>  if GPIOLIB
>  
> -menu "GPIO                          "
> +menu "GPIO"
>  
>  config GPIO_BCM2835
>  	bool "GPIO support for BCM2835"
> diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
> index 038e2ee..0c6aec3 100644
> --- a/drivers/i2c/Kconfig
> +++ b/drivers/i2c/Kconfig
> @@ -1,5 +1,5 @@
>  menuconfig I2C
> -	bool "I2C drivers                   "
> +	bool "I2C drivers"
>  
>  if I2C
>  
> diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
> index 846483c..a6f1f47 100644
> --- a/drivers/input/Kconfig
> +++ b/drivers/input/Kconfig
> @@ -13,7 +13,7 @@ config KEYBOARD_GPIO
>  	  to GPIO pins of various CPUs (and some other chips).
>  
>  	  Say Y here if your device has buttons connected
> -	  directly to such GPIO pins.  Your board-specific
> +	  directly to such GPIO pins. Your board-specific
>  	  setup logic must also provide a platform device,
>  	  with configuration data saying which GPIOs are used.
>  
> @@ -26,7 +26,7 @@ config KEYBOARD_IMX_KEYPAD
>  	  to the IMX keypad matrix.
>  
>  	  Say Y here if your device has buttons connected
> -	  to the IMX keypad matrix.  Your board-specific
> +	  to the IMX keypad matrix. Your board-specific
>  	  setup logic must also provide a 'matrix_keymap_data' structure,
>  	  defining the used keys.
>  
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 5c0ca4d..6876117 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -1,5 +1,5 @@
>  menuconfig MCI
> -	bool "MCI drivers                   "
> +	bool "MCI drivers"
>  	select DISK
>  	help
>  	  Add support for MCI drivers, used to handle MMC and SD cards
> @@ -92,7 +92,7 @@ config MCI_SPI
>  	depends on SPI
>  	help
>  	  Some systems access MMC/SD/SDIO cards using a SPI controller
> -	  instead of using a "native" MMC/SD/SDIO controller.  This has a
> +	  instead of using a "native" MMC/SD/SDIO controller. This has a
>  	  disadvantage of being relatively high overhead, but a compensating
>  	  advantage of working on many systems without dedicated MMC/SD/SDIO
>  	  controllers.
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 699046b..606490b 100644
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -3,7 +3,7 @@
>  #
>  
>  menuconfig MISC_DEVICES
> -	bool "Misc devices                  "
> +	bool "Misc devices"
>  	help
>  	  Add support for misc strange devices
>  
> diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
> index 0a4ca31..9450f5d 100644
> --- a/drivers/mtd/Kconfig
> +++ b/drivers/mtd/Kconfig
> @@ -1,5 +1,5 @@
>  menuconfig MTD
> -        bool "Memory Technology Device (MTD) support"
> +	bool "Memory Technology Device (MTD) support"
>  
>  if MTD
>  
> diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
> index 679ea80..61278a2 100644
> --- a/drivers/mtd/devices/Kconfig
> +++ b/drivers/mtd/devices/Kconfig
> @@ -15,7 +15,7 @@ config MTD_DATAFLASH_WRITE_VERIFY
>  	help
>  	  This adds an extra check when data is written to the flash.
>  	  It may help if you are verifying chip setup (timings etc) on
> -	  your board.  There is a rare possibility that even though the
> +	  your board. There is a rare possibility that even though the
>  	  device thinks the write was successful, a bit could have been
>  	  flipped accidentally due to device wear or something else.
>  
> @@ -24,9 +24,9 @@ config MTD_M25P80
>  	depends on SPI
>  	help
>  	  This enables access to most modern SPI flash chips, used for
> -	  program and data storage.   Series supported include Atmel AT26DF,
> -	  Spansion S25SL, SST 25VF, ST M25P, and Winbond W25X.  Other chips
> -	  are supported as well.  See the driver source for the current list,
> +	  program and data storage. Series supported include Atmel AT26DF,
> +	  Spansion S25SL, SST 25VF, ST M25P, and Winbond W25X. Other chips
> +	  are supported as well. See the driver source for the current list,
>  	  or to add other chips.
>  
>  	  Note that the original DataFlash chips (AT45 series, not AT26DF),
> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> index d96ef9e..aa3ea34 100644
> --- a/drivers/mtd/nand/Kconfig
> +++ b/drivers/mtd/nand/Kconfig
> @@ -1,5 +1,5 @@
>  menuconfig NAND
> -	bool "NAND support              "
> +	bool "NAND support"
>  	select MTD_NAND_IDS
>  	help
>  	  This enables support for accessing all type of NAND flash
> @@ -63,8 +63,8 @@ config NAND_OMAP_GPMC
>  	tristate "NAND Flash Support for GPMC based OMAP platforms"
>  	depends on OMAP_GPMC
>  	help
> -	 Support for NAND flash using GPMC. GPMC is a common memory
> -	 interface found on Texas Instrument's OMAP platforms
> +	  Support for NAND flash using GPMC. GPMC is a common memory
> +	  interface found on Texas Instrument's OMAP platforms
>  
>  config NAND_ATMEL
>  	bool
> @@ -77,7 +77,7 @@ config NAND_ATMEL_PMECC
>  	depends on NAND_ATMEL
>  	select NAND_ECC_HW
>  	help
> -	 Support for PMECC present on the SoC sam9x5 and sam9n12
> +	  Support for PMECC present on the SoC sam9x5 and sam9n12
>  
>  config NAND_S3C24XX
>  	bool
> diff --git a/drivers/mtd/ubi/Kconfig b/drivers/mtd/ubi/Kconfig
> index 2cf474a..6df954c 100644
> --- a/drivers/mtd/ubi/Kconfig
> +++ b/drivers/mtd/ubi/Kconfig
> @@ -1,5 +1,5 @@
>  config UBI
> -	bool "UBI support               "
> +	bool "UBI support"
>  	select PARTITION_NEED_MTD
>  	select CRC32
>  	help
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index b3e5a83..43d5984 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -22,7 +22,7 @@ config ARCH_HAS_FEC_IMX
>  config PHYLIB
>  	bool
>  
> -menu "Network drivers               "
> +menu "Network drivers"
>  	depends on NET
>  
>  source "drivers/net/phy/Kconfig"
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index 616b539..9250305 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -2,7 +2,7 @@
>  # PHY Layer Configuration
>  #
>  
> -menu "phylib                       "
> +menu "phylib"
>  
>  if PHYLIB
>  
> diff --git a/drivers/nor/Kconfig b/drivers/nor/Kconfig
> index a3c0223..c8ce24f 100644
> --- a/drivers/nor/Kconfig
> +++ b/drivers/nor/Kconfig
> @@ -1,7 +1,7 @@
> -menu "flash drivers                 "
> +menu "flash drivers"
>  
>  menuconfig DRIVER_CFI
> -	bool "CFI            "
> +	bool "CFI"
>  	help
>  	  If you have NOR Flash devices connected to your system and wish
>  	  to use them say yes here.
> @@ -19,7 +19,7 @@ config DRIVER_CFI_AMD
>  	bool "support AMD flash chips"
>  
>  config DRIVER_CFI_BANK_WIDTH_1
> -	bool "Support  8-bit buswidth"
> +	bool "Support 8-bit buswidth"
>  	depends on DRIVER_CFI
>  	default y
>  	help
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 32b033f..a8be9cd 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -1,4 +1,4 @@
> -menu "serial drivers                "
> +menu "serial drivers"
>  
>  config DRIVER_SERIAL_ARM_DCC
>  	depends on ARM
> @@ -8,7 +8,7 @@ config SERIAL_AMBA_PL011
>  	bool "ARM AMBA PL011 serial port support"
>  	depends on ARM_AMBA
>  	help
> -	  This selects the ARM(R) AMBA(R) PrimeCell PL011 UART.  If you have
> +	  This selects the ARM(R) AMBA(R) PrimeCell PL011 UART. If you have
>  	  an Integrator/PP2, Integrator/CP or Versatile platform, say Y here.
>  
>  	  If unsure, say N.
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index b003290..10b8fea 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -1,4 +1,4 @@
> -menu "SPI drivers                   "
> +menu "SPI drivers"
>  
>  config SPI
>  	bool "Enable SPI driver support"
> diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
> index 254b196..acdb4c6 100644
> --- a/drivers/usb/Kconfig
> +++ b/drivers/usb/Kconfig
> @@ -1,5 +1,5 @@
>  menuconfig USB
> -	bool "USB support                   "
> +	bool "USB support"
>  
>  if USB
>  
> diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> index 465121c..6501d42 100644
> --- a/drivers/usb/gadget/Kconfig
> +++ b/drivers/usb/gadget/Kconfig
> @@ -1,6 +1,6 @@
>  menuconfig USB_GADGET
>  	depends on USB_HAVE_GADGET_DRIVER
> -	bool "USB gadget support            "
> +	bool "USB gadget support"
>  
>  config USB_HAVE_GADGET_DRIVER
>  	bool
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 4aa92c5..f09ffdf 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -1,5 +1,5 @@
>  menuconfig VIDEO
> -	bool "Video drivers                 "
> +	bool "Video drivers"
>  	help
>  	  Add support for framebuffer and splash screens
>  
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index ba33617..2e2900c 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -3,7 +3,7 @@ config WATCHDOG_IMX_RESET_SOURCE
>  	bool
>  
>  menuconfig WATCHDOG
> -	bool "Watchdog support              "
> +	bool "Watchdog support"
>  	help
>  	  Many platforms support a watchdog to keep track of a working machine.
>  	  This framework provides routines to handle these watchdogs.
> diff --git a/fs/Kconfig b/fs/Kconfig
> index 0ab69d7..c26c3c4 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -1,5 +1,5 @@
>  
> -menu "Filesystem support            "
> +menu "Filesystem support"
>  
>  config FS
>  	bool
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 13ecab0..5966386 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -1,4 +1,4 @@
> -menu "Library routines              "
> +menu "Library routines"
>  config PARAMETER
>  	bool
>  
> @@ -30,10 +30,10 @@ config OFTREE
>  	bool
>  
>  config BCH
> -       bool
> +	bool
>  
>  config BITREV
> -       bool
> +	bool
>  
>  config QSORT
>  	bool
> diff --git a/lib/gui/Kconfig b/lib/gui/Kconfig
> index 8fd12fb..da71bae 100644
> --- a/lib/gui/Kconfig
> +++ b/lib/gui/Kconfig
> @@ -1,4 +1,4 @@
> -menu "Library gui routines           "
> +menu "Library gui routines"
>  
>  config IMAGE_RENDERER
>  	bool
> diff --git a/net/Kconfig b/net/Kconfig
> index 00fffb3..acd92ff 100644
> --- a/net/Kconfig
> +++ b/net/Kconfig
> @@ -1,5 +1,5 @@
>  menuconfig NET
> -	bool "Networking Support            "
> +	bool "Networking Support"
>  
>  if NET
>  
> -- 
> 1.7.8.6
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
