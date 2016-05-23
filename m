Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4kM7-0000Fj-5c
 for barebox@lists.infradead.org; Mon, 23 May 2016 07:33:02 +0000
Date: Mon, 23 May 2016 09:32:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160523073228.GM11148@pengutronix.de>
References: <1463706669-39738-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463706669-39738-1-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/3] Add basic support for arm64
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

Hi Raphael,

On Fri, May 20, 2016 at 03:11:06AM +0200, Raphael Poggi wrote:
> Hello,
> =

> This patch series introduces a basic support for arm64.
> =

> [PATCH 1/3] arch: add minimal aarch64 support :
>         Introduce new architecture by creating a new root directory,
>         I choose this approach for now, because it is simpler for now, ma=
ybe later we will merge this in arch/arm.

I just applied this series to a temporary branch, did a cp -r
arch/arm64/* arch/arm and committed everything, see the result below.
This of course breaks arm32 support, but it nicely reveals all places
that need fixup for arm64. How about we proceed like this: We continue
to work on the patch below. We continuously find proper solutions for the
different places that need fixup. For every item that is fixed properly
we apply the resulting patch mainline and rebase the big
work-in-progress patch ontop of it. This way the patch should
continuously get smaller until we finally have working arm32 and arm64
support in a single architecture.
One of the first things we'll need is ARM32/ARM64 Kconfig options which we
can use for the different lib/ functions to depend on (maybe create a
lib32/ and a lib64/ directory?) This should already make the
work-in-progress patch much smaller. What do you think?

Sascha

----------------------------8<------------------------------

From 79e852820d19e3620bfe63b87161317e616546d5 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 May 2016 08:47:36 +0200
Subject: [PATCH] wip

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                           | 276 ++------------
 arch/arm/Makefile                          | 190 +---------
 arch/arm/boards/Makefile                   |   1 +
 arch/arm/boards/virt/Kconfig               |   8 +
 arch/arm/boards/virt/Makefile              |   1 +
 arch/arm/boards/virt/env/bin/_update       |  36 ++
 arch/arm/boards/virt/env/bin/boot          |  38 ++
 arch/arm/boards/virt/env/bin/init          |  20 +
 arch/arm/boards/virt/env/bin/update_kernel |   8 +
 arch/arm/boards/virt/env/bin/update_root   |   8 +
 arch/arm/boards/virt/env/config            |  38 ++
 arch/arm/boards/virt/env/init/mtdparts-nor |  11 +
 arch/arm/boards/virt/init.c                |  67 ++++
 arch/arm/configs/virt_defconfig            |  53 +++
 arch/arm/cpu/Kconfig                       | 102 +----
 arch/arm/cpu/Makefile                      |  29 +-
 arch/arm/cpu/cache-armv8.S                 | 168 +++++++++
 arch/arm/cpu/cache.c                       |  69 +---
 arch/arm/cpu/cpu.c                         |  44 +--
 arch/arm/cpu/cpuinfo.c                     |  86 ++---
 arch/arm/cpu/entry.c                       |   5 +-
 arch/arm/cpu/exceptions.S                  | 313 ++++++----------
 arch/arm/cpu/interrupts.c                  |  91 ++---
 arch/arm/cpu/lowlevel.S                    |  89 ++---
 arch/arm/cpu/mmu.c                         | 578 ++++++++-----------------=
----
 arch/arm/cpu/mmu.h                         | 155 ++++++++
 arch/arm/cpu/start.c                       |  12 +-
 arch/arm/cpu/uncompress.c                  |   2 +-
 arch/arm/include/asm/barebox-arm.h         |   2 +-
 arch/arm/include/asm/bitops.h              | 192 ++--------
 arch/arm/include/asm/boarddata.h           |   5 +
 arch/arm/include/asm/cache-l2x0.h          |   8 -
 arch/arm/include/asm/cache.h               |   4 +-
 arch/arm/include/asm/errata.h              |   9 -
 arch/arm/include/asm/gic.h                 | 128 +++++++
 arch/arm/include/asm/mmu.h                 |   6 +-
 arch/arm/include/asm/pgtable.h             |   5 +-
 arch/arm/include/asm/ptrace.h              | 111 +-----
 arch/arm/include/asm/system.h              | 173 +++++----
 arch/arm/include/asm/system_info.h         |  73 ++--
 arch/arm/lib/Makefile                      |  13 -
 arch/arm/lib/armlinux.c                    |   6 -
 arch/arm/lib/barebox.lds.S                 |   5 +-
 arch/arm/lib/bootm.c                       | 109 +++---
 arch/arm/lib/copy_template.S               | 438 +++++++++-------------
 arch/arm/lib/memcpy.S                      |  84 +++--
 arch/arm/lib/memset.S                      | 305 +++++++++------
 arch/arm/lib/runtime-offset.S              |  18 +-
 arch/arm/mach-virt/Kconfig                 |  15 +
 arch/arm/mach-virt/Makefile                |   3 +
 arch/arm/mach-virt/devices.c               |  30 ++
 arch/arm/mach-virt/include/mach/debug_ll.h |  24 ++
 arch/arm/mach-virt/include/mach/devices.h  |  13 +
 arch/arm/mach-virt/lowlevel.c              |  19 +
 arch/arm/mach-virt/reset.c                 |  24 ++
 55 files changed, 2008 insertions(+), 2312 deletions(-)
 create mode 100644 arch/arm/boards/virt/Kconfig
 create mode 100644 arch/arm/boards/virt/Makefile
 create mode 100644 arch/arm/boards/virt/env/bin/_update
 create mode 100644 arch/arm/boards/virt/env/bin/boot
 create mode 100644 arch/arm/boards/virt/env/bin/init
 create mode 100644 arch/arm/boards/virt/env/bin/update_kernel
 create mode 100644 arch/arm/boards/virt/env/bin/update_root
 create mode 100644 arch/arm/boards/virt/env/config
 create mode 100644 arch/arm/boards/virt/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/virt/init.c
 create mode 100644 arch/arm/configs/virt_defconfig
 create mode 100644 arch/arm/cpu/cache-armv8.S
 create mode 100644 arch/arm/include/asm/boarddata.h
 create mode 100644 arch/arm/include/asm/gic.h
 create mode 100644 arch/arm/mach-virt/Kconfig
 create mode 100644 arch/arm/mach-virt/Makefile
 create mode 100644 arch/arm/mach-virt/devices.c
 create mode 100644 arch/arm/mach-virt/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-virt/include/mach/devices.h
 create mode 100644 arch/arm/mach-virt/lowlevel.c
 create mode 100644 arch/arm/mach-virt/reset.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1fc887b..34085f6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -22,15 +22,6 @@ config ARM_USE_COMPRESSED_DTB
 	select UNCOMPRESS
 	select LZO_DECOMPRESS
 =

-config ARCH_BCM283X
-	bool
-	select GPIOLIB
-	select CLKDEV_LOOKUP
-	select COMMON_CLK
-	select CLOCKSOURCE_BCM283X
-	select ARM_AMBA
-	select HAS_DEBUG_LL
-
 menu "System Type"
 =

 config BUILTIN_DTB
@@ -50,236 +41,18 @@ config BUILTIN_DTB_NAME
 choice
 	prompt "ARM system type"
 =

-config ARCH_AT91
-	bool "Atmel AT91"
-	select GPIOLIB
-	select CLKDEV_LOOKUP
-	select HAS_DEBUG_LL
-	select HAVE_MACH_ARM_HEAD
-	select HAVE_CLK
-	select PINCTRL_AT91
-
-config ARCH_BCM2835
-	bool "Broadcom BCM2835 boards"
-	select ARCH_BCM283X
-	select CPU_ARM1176
-
-config ARCH_BCM2836
-	bool "Broadcom BCM2836 boards"
-	select ARCH_BCM283X
-	select CPU_V7
-
-config ARCH_CLPS711X
-	bool "Cirrus Logic EP711x/EP721x/EP731x"
-	select CLKDEV_LOOKUP
-	select CLOCKSOURCE_CLPS711X
-	select COMMON_CLK
-	select CPU_32v4T
-	select GPIOLIB
-	select MFD_SYSCON
-
-config ARCH_DAVINCI
-	bool "TI Davinci"
-	select CPU_ARM926T
-	select HAS_DEBUG_LL
-	select GPIOLIB
-
-config ARCH_DIGIC
-	bool "Canon DIGIC-based cameras"
-	select CPU_ARM946E
-	select HAS_DEBUG_LL
-	select CLOCKSOURCE_DIGIC
-	select GPIOLIB
-	help
-	  Support for Canon's digital cameras that use the DIGIC4 chip.
-
-config ARCH_EP93XX
-	bool "Cirrus Logic EP93xx"
-	select CPU_ARM920T
-	select GENERIC_GPIO
-
-config ARCH_HIGHBANK
-	bool "Calxeda Highbank"
+config ARCH_VIRT
+	bool "ARM QEMU virt boards"
 	select HAS_DEBUG_LL
-	select HAS_POWEROFF
-	select ARCH_HAS_L2X0
-	select CPU_V7
+	select CPU_V8
+	select SYS_SUPPORTS_64BIT_KERNEL
 	select ARM_AMBA
-	select AMBA_SP804
-	select CLKDEV_LOOKUP
-	select COMMON_CLK
-	select GPIOLIB
-
-config ARCH_IMX
-	bool "Freescale iMX-based"
-	select GPIOLIB
-	select COMMON_CLK
-	select CLKDEV_LOOKUP
-	select WATCHDOG_IMX_RESET_SOURCE
-	select HAS_DEBUG_LL
-
-config ARCH_MVEBU
-	bool "Marvell EBU platforms"
-	select COMMON_CLK
-	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
-	select GPIOLIB
-	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
-	select HW_HAS_PCI
-	select MVEBU_MBUS
-	select OFTREE
-	select OF_ADDRESS_PCI
-	select PINCTRL
-
-config ARCH_MXS
-	bool "Freescale i.MX23/28 (mxs) based"
-	select GPIOLIB
-	select GENERIC_GPIO
-	select COMMON_CLK
-	select CLKDEV_LOOKUP
-	select HAS_DEBUG_LL
-
-config ARCH_NETX
-	bool "Hilscher NetX based"
-	select CPU_ARM926T
-
-config ARCH_NOMADIK
-	bool "STMicroelectronics Nomadik"
-	select CPU_ARM926T
-	select CLOCKSOURCE_NOMADIK
-	select HAVE_CLK
-	help
-	  Support for the Nomadik platform by ST-Ericsson
-
-config ARCH_OMAP
-	bool "TI OMAP"
-	select HAS_DEBUG_LL
-	select GPIOLIB
-
-config ARCH_PXA
-	bool "Intel/Marvell PXA based"
-	select GENERIC_GPIO
-	select HAS_POWEROFF
-
-config ARCH_ROCKCHIP
-	bool "Rockchip RX3xxx"
-	select CPU_V7
-	select ARM_SMP_TWD
-	select COMMON_CLK
-	select CLKDEV_LOOKUP
-	select COMMON_CLK_OF_PROVIDER
-	select GPIOLIB
-	select PINCTRL
-	select PINCTRL_ROCKCHIP
-	select OFTREE
-	select HAVE_PBL_MULTI_IMAGES
-	select HAS_DEBUG_LL
-	select ARCH_HAS_L2X0
-
-config ARCH_SOCFPGA
-	bool "Altera SOCFPGA cyclone5"
-	select HAS_DEBUG_LL
-	select ARM_SMP_TWD
-	select CPU_V7
-	select COMMON_CLK
-	select CLKDEV_LOOKUP
-	select GPIOLIB
-	select HAVE_PBL_MULTI_IMAGES
-	select OFDEVICE if !ARCH_SOCFPGA_XLOAD
-	select OFTREE if !ARCH_SOCFPGA_XLOAD
-
-config ARCH_S3C24xx
-	bool "Samsung S3C2410, S3C2440"
-	select ARCH_SAMSUNG
-	select CPU_ARM920T
-	select GENERIC_GPIO
-
-config ARCH_S5PCxx
-	bool "Samsung S5PC110, S5PV210"
-	select ARCH_SAMSUNG
-	select CPU_V7
-	select GENERIC_GPIO
-
-config ARCH_S3C64xx
-	bool "Samsung S3C64xx"
-	select ARCH_SAMSUNG
-	select CPU_V6
-	select GENERIC_GPIO
-
-config ARCH_VERSATILE
-	bool "ARM Versatile boards (ARM926EJ-S)"
-	select GPIOLIB
-	select HAVE_CLK
-	select HAS_DEBUG_LL
-
-config ARCH_VEXPRESS
-	bool "ARM Vexpres boards"
-	select HAS_DEBUG_LL
-	select CPU_V7
-	select ARM_AMBA
-	select AMBA_SP804
-	select CLKDEV_LOOKUP
-	select COMMON_CLK
-
-config ARCH_TEGRA
-	bool "NVIDIA Tegra"
-	select CPU_V7
-	select HAS_DEBUG_LL
-	select HW_HAS_PCI
-	select COMMON_CLK
-	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
-	select GPIOLIB
-	select GPIO_TEGRA
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select HAVE_PBL_MULTI_IMAGES
-	select OFDEVICE
-	select OFTREE
-	select RELOCATABLE
-	select RESET_CONTROLLER
-	select PINCTRL
-
-config ARCH_UEMD
-	bool "RC Module UEMD Platform"
-	select CPU_ARM1176
-	select COMMON_CLK
-	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
-	select OFDEVICE
-	select OFTREE
-	select CLOCKSOURCE_UEMD
-	select HAS_DEBUG_LL
-
-config ARCH_ZYNQ
-	bool "Xilinx Zynq-based boards"
-	select HAS_DEBUG_LL
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 =

 endchoice
 =

 source arch/arm/cpu/Kconfig
-source arch/arm/mach-at91/Kconfig
-source arch/arm/mach-bcm283x/Kconfig
-source arch/arm/mach-clps711x/Kconfig
-source arch/arm/mach-davinci/Kconfig
-source arch/arm/mach-digic/Kconfig
-source arch/arm/mach-ep93xx/Kconfig
-source arch/arm/mach-highbank/Kconfig
-source arch/arm/mach-imx/Kconfig
-source arch/arm/mach-mxs/Kconfig
-source arch/arm/mach-mvebu/Kconfig
-source arch/arm/mach-netx/Kconfig
-source arch/arm/mach-nomadik/Kconfig
-source arch/arm/mach-omap/Kconfig
-source arch/arm/mach-pxa/Kconfig
-source arch/arm/mach-rockchip/Kconfig
-source arch/arm/mach-samsung/Kconfig
-source arch/arm/mach-socfpga/Kconfig
-source arch/arm/mach-versatile/Kconfig
-source arch/arm/mach-vexpress/Kconfig
-source arch/arm/mach-tegra/Kconfig
-source arch/arm/mach-uemd/Kconfig
-source arch/arm/mach-zynq/Kconfig
+source arch/arm/mach-virt/Kconfig
 =

 config ARM_ASM_UNIFIED
 	bool
@@ -292,20 +65,6 @@ config AEABI
 =

 	  To use this you need GCC version 4.0.0 or later.
 =

-config THUMB2_BAREBOX
-	select ARM_ASM_UNIFIED
-	select AEABI
-	depends on !ARCH_TEGRA && !ARCH_AT91
-	depends on CPU_V7 && !CPU_32v4T && !CPU_32v5 && !CPU_32v6
-	bool "Compile barebox in thumb-2 mode (read help)"
-	help
-	  This enables compilation of barebox in thumb-2 mode which generates
-	  ~25% smaller binaries. ARM assembly code needs some fixups to be able
-	  to work correctly in thumb-2 mode. the barebox core should have these
-	  fixups since most assembly code is derived from the Kernel. However,
-	  your board lowlevel init code may break in thumb-2 mode. You have been
-	  warned.
-
 config ARM_BOARD_APPEND_ATAG
 	bool "Let board specific code to add ATAGs to be passed to the kernel"
 	depends on ARM_LINUX
@@ -315,6 +74,29 @@ config ARM_BOARD_APPEND_ATAG
 =

 endmenu
 =

+choice
+	prompt "Barebox code model"
+	help
+	  You should only select this option if you have a workload that
+	  actually benefits from 64-bit processing or if your machine has
+	  large memory. You will only be presented a single option in this
+	  menu if your system does not support both 32-bit and 64-bit modes.
+
+config 32BIT
+	bool "32-bit barebox"
+	depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
+	help
+	  Select this option if you want to build a 32-bit barebox.
+
+config 64BIT
+	bool "64-bit barebox"
+	depends on CPU_SUPPORTS_64BIT_KERNEL && SYS_SUPPORTS_64BIT_KERNEL
+	select ARCH_DMA_ADDR_T_64BIT
+	help
+	  Select this option if you want to build a 64-bit barebox.
+
+endchoice
+
 menu "ARM specific settings"
 =

 config ARM_OPTIMZED_STRING_FUNCTIONS
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5ccdb83..ad250c4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -1,7 +1,6 @@
 =

 CPPFLAGS	+=3D -D__ARM__ -fno-strict-aliasing
-# Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthum=
b:
-CPPFLAGS	+=3D$(call cc-option,-marm,)
+CPPFLAGS	+=3D$(call cc-option,-maarch64,)
 =

 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
 CPPFLAGS	+=3D -mbig-endian
@@ -13,91 +12,27 @@ AS		+=3D -EL
 LD		+=3D -EL
 endif
 =

-# Unaligned access is not supported when MMU is disabled, so given how
-# at least some of the code would be executed with MMU off, lets be
-# conservative and instruct the compiler not to generate any unaligned
-# accesses
-CFLAGS +=3D -mno-unaligned-access
-
-
 # This selects which instruction set is used.
 # Note that GCC does not numerically define an architecture version
 # macro, but instead defines a whole series of macros which makes
 # testing for a specific architecture or later rather impossible.
-arch-$(CONFIG_CPU_32v7)		:=3D-D__LINUX_ARM_ARCH__=3D7 $(call cc-option,-ma=
rch=3Darmv7-a,-march=3Darmv5t -Wa$(comma)-march=3Darmv7-a)
-arch-$(CONFIG_CPU_32v6)            :=3D-D__LINUX_ARM_ARCH__=3D6 $(call cc-=
option,-march=3Darmv6,-march=3Darmv5t -Wa$(comma)-march=3Darmv6)
-arch-$(CONFIG_CPU_32v5)		:=3D-D__LINUX_ARM_ARCH__=3D5 $(call cc-option,-ma=
rch=3Darmv5te,-march=3Darmv4t)
-arch-$(CONFIG_CPU_32v4T)	:=3D-D__LINUX_ARM_ARCH__=3D4 -march=3Darmv4t
-
-# This selects how we optimise for the processor.
-tune-$(CONFIG_CPU_ARM920T)	:=3D-mtune=3Darm9tdmi
-tune-$(CONFIG_CPU_ARM926T)	:=3D-mtune=3Darm9tdmi
-tune-$(CONFIG_CPU_XSCALE)	:=3D$(call cc-option,-mtune=3Dxscale,-mtune=3Dst=
rongarm110) -Wa,-mcpu=3Dxscale
+arch-$(CONFIG_CPU_64v8)		:=3D -D__LINUX_ARM_ARCH__=3D8 $(call cc-option,-m=
arch=3Darmv8-a)
 =

-ifeq ($(CONFIG_AEABI),y)
-CFLAGS_ABI	:=3D-mabi=3Daapcs-linux -mno-thumb-interwork
-else
-CFLAGS_ABI	:=3D$(call cc-option,-mapcs-32,-mabi=3Dapcs-gnu) $(call cc-opti=
on,-mno-thumb-interwork,)
-endif
+CFLAGS_ABI	:=3D-mabi=3Dlp64
 =

 ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=3D-funwind-tables
 endif
 =

-ifeq ($(CONFIG_THUMB2_BAREBOX),y)
-AFLAGS_AUTOIT	:=3D$(call as-option,-Wa$(comma)-mimplicit-it=3Dalways,-Wa$(=
comma)-mauto-it)
-AFLAGS_NOWARN	:=3D$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(co=
mma)-W)
-CFLAGS_THUMB2	:=3D-mthumb $(AFLAGS_AUTOIT) $(AFLAGS_NOWARN)
-AFLAGS_THUMB2	:=3D$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
-endif
+CPPFLAGS +=3D $(CFLAGS_ABI) $(arch-y) $(tune-y)
 =

-CPPFLAGS +=3D $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUM=
B2)
-AFLAGS   +=3D -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
+AFLAGS   +=3D -include asm/unified.h
 =

 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
-machine-$(CONFIG_ARCH_AT91)		:=3D at91
-machine-$(CONFIG_ARCH_BCM283X)		:=3D bcm283x
-machine-$(CONFIG_ARCH_CLPS711X)		:=3D clps711x
-machine-$(CONFIG_ARCH_DAVINCI)		:=3D davinci
-machine-$(CONFIG_ARCH_DIGIC)		:=3D digic
-machine-$(CONFIG_ARCH_EP93XX)		:=3D ep93xx
-machine-$(CONFIG_ARCH_HIGHBANK)		:=3D highbank
-machine-$(CONFIG_ARCH_IMX)		:=3D imx
-machine-$(CONFIG_ARCH_MXS)		:=3D mxs
-machine-$(CONFIG_ARCH_MVEBU)		:=3D mvebu
-machine-$(CONFIG_ARCH_NOMADIK)		:=3D nomadik
-machine-$(CONFIG_ARCH_NETX)		:=3D netx
-machine-$(CONFIG_ARCH_OMAP)		:=3D omap
-machine-$(CONFIG_ARCH_PXA)		:=3D pxa
-machine-$(CONFIG_ARCH_ROCKCHIP)		:=3D rockchip
-machine-$(CONFIG_ARCH_SAMSUNG)		:=3D samsung
-machine-$(CONFIG_ARCH_SOCFPGA)		:=3D socfpga
-machine-$(CONFIG_ARCH_VERSATILE)	:=3D versatile
-machine-$(CONFIG_ARCH_VEXPRESS)		:=3D vexpress
-machine-$(CONFIG_ARCH_TEGRA)		:=3D tegra
-machine-$(CONFIG_ARCH_UEMD)		:=3D uemd
-machine-$(CONFIG_ARCH_ZYNQ)		:=3D zynq
+machine-$(CONFIG_ARCH_VIRT)		:=3D virt
 =

 =

-# Board directory name.  This list is sorted alphanumerically
-# by CONFIG_* macro name.
-#
-# DO NOT ADD NEW ENTRIES TO THIS LIST!
-# Add to arch/arm/boards/Makefile instead.
-#
-# These are here only because they have a board specific config.h.
-# TODO: Get rid of board specific config.h and move these to
-# arch/arm/boards/Makefile aswell.
-board-$(CONFIG_MACH_A9M2410)			+=3D a9m2410
-board-$(CONFIG_MACH_A9M2440)			+=3D a9m2440
-board-$(CONFIG_MACH_AT91RM9200EK)		+=3D at91rm9200ek
-board-$(CONFIG_MACH_MINI2440)			+=3D friendlyarm-mini2440
-board-$(CONFIG_MACH_MINI6410)			+=3D friendlyarm-mini6410
-board-$(CONFIG_MACH_PCM027)			+=3D phytec-phycore-pxa270
-board-$(CONFIG_MACH_TINY210)			+=3D friendlyarm-tiny210
-board-$(CONFIG_MACH_TINY6410)			+=3D friendlyarm-tiny6410
-
 machdirs :=3D $(patsubst %,arch/arm/mach-%/,$(machine-y))
 =

 ifeq ($(KBUILD_SRC),)
@@ -141,106 +76,7 @@ endif
 barebox.s5p: $(KBUILD_BINARY)
 	$(Q)scripts/s5p_cksum $< barebox.s5p
 =

-ifeq ($(CONFIG_ARCH_S5PCxx),y)
-KBUILD_IMAGE :=3D barebox.s5p
-endif
-
-quiet_cmd_mlo ?=3D IFT     $@
-	cmd_mlo ?=3D scripts/omap_signGP -o MLO -l $(TEXT_BASE) -c $<
-
-MLO: $(KBUILD_BINARY)
-	$(call if_changed,mlo)
-
-ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
-KBUILD_IMAGE :=3D MLO
-endif
-
-quiet_cmd_davinci_ubl_image =3D UBL-IMG $@
-      cmd_davinci_ubl_image =3D set -e; \
-	 scripts/mkublheader $< > $@; \
-	 cat $< >> $@
-
-barebox.ubl: $(KBUILD_BINARY) FORCE
-	$(call if_changed,davinci_ubl_image)
-
-ifeq ($(CONFIG_ARCH_DAVINCI),y)
-KBUILD_IMAGE :=3D barebox.ubl
-endif
-
-quiet_cmd_am35xx_spi_image =3D SPI-IMG $@
-      cmd_am35xx_spi_image =3D scripts/mk-omap-image -s -a $(TEXT_BASE) $<=
 > $@
-
-barebox.spi: $(KBUILD_BINARY) FORCE
-	$(call if_changed,am35xx_spi_image)
-
-MLO.spi: MLO FORCE
-	$(call if_changed,am35xx_spi_image)
-
-ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
-KBUILD_IMAGE :=3D MLO.spi
-endif
-
-quiet_cmd_zynq_image =3D ZYNQ-IMG $@
-      cmd_zynq_image =3D scripts/zynq_mkimage $< $@
-
-barebox.zynq: $(KBUILD_BINARY) FORCE
-	$(call if_changed,zynq_image)
-
-ifeq ($(machine-y),zynq)
-KBUILD_IMAGE :=3D barebox.zynq
-endif
-
-quiet_cmd_canon_a1100_image =3D DD      $@
-      cmd_canon_a1100_image =3D scripts/canon-a1100-image $< $@ || \
-	echo "WARNING: Couldn't create Canon A1100 image due to previous errors."
-barebox.canon-a1100.bin: $(KBUILD_BINARY) FORCE
-	$(call if_changed,canon_a1100_image)
-
-ifeq ($(CONFIG_MACH_CANON_A1100),y)
-KBUILD_IMAGE :=3D barebox.canon-a1100.bin
-endif
-
-KWBIMAGE_OPTS =3D \
-	-c -i $(srctree)/$(BOARD)/kwbimage.cfg -d $(TEXT_BASE) -e $(TEXT_BASE)
-
-quiet_cmd_kwbimage =3D KWB     $@
-      cmd_kwbimage =3D scripts/kwbimage -p $< $(KWBIMAGE_OPTS) -o $@ || \
-	echo "WARNING: Couldn't create KWB image due to previous errors."
-
-quiet_cmd_kwbimage_uart =3D KWBUART $@
-      cmd_kwbimage_uart =3D scripts/kwbimage -m uart -p $< $(KWBIMAGE_OPTS=
) -o $@ || \
-	echo "WARNING Couldn't create KWB image due to previous errors."
-
-barebox.kwb: $(KBUILD_BINARY) FORCE
-	$(call if_changed,kwbimage)
-
-barebox.kwbuart: $(KBUILD_BINARY) FORCE
-	$(call if_changed,kwbimage_uart)
-
-ifeq ($(CONFIG_ARCH_MVEBU),y)
-KBUILD_IMAGE  :=3D barebox.kwb barebox.kwbuart
-endif
-
-barebox.imximg: $(KBUILD_BINARY) FORCE
-	$(call if_changed,imx_image,$(CFG_$(@F)),)
-
 boarddir =3D $(srctree)/arch/arm/boards
-imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) +=3D $(boarddir)/freescale-mx53-s=
md/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_CCMX51) +=3D $(boarddir)/ccxmx51/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_TX51) +=3D $(boarddir)/karo-tx51/flash-header-karo-tx=
51.imxcfg
-imxcfg-$(CONFIG_MACH_GUF_VINCELL) +=3D $(boarddir)/guf-vincell/flash-heade=
r.imxcfg
-imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX51SD) +=3D $(boarddir)/eukrea_cpuimx51/f=
lash-header.imxcfg
-imxcfg-$(CONFIG_MACH_FREESCALE_MX25_3STACK) +=3D $(boarddir)/freescale-mx2=
5-3ds/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_FREESCALE_MX35_3STACK) +=3D $(boarddir)/freescale-mx3=
5-3ds/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_TQMA53) +=3D $(boarddir)/tqma53/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) +=3D $(boarddir)/eukrea_cpuimx25/fla=
sh-header.imxcfg
-imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) +=3D $(boarddir)/eukrea_cpuimx35/fla=
sh-header.imxcfg
-imxcfg-$(CONFIG_TX53_REV_1011) +=3D $(boarddir)/karo-tx53/flash-header-tx5=
3-rev1011.imxcfg
-imxcfg-$(CONFIG_TX53_REV_XX30) +=3D $(boarddir)/karo-tx53/flash-header-tx5=
3-revxx30.imxcfg
-ifneq ($(imxcfg-y),)
-CFG_barebox.imximg :=3D $(imxcfg-y)
-KBUILD_IMAGE  :=3D barebox.imximg
-endif
 =

 pbl :=3D arch/arm/pbl
 $(pbl)/zbarebox.S $(pbl)/zbarebox.bin $(pbl)/zbarebox: barebox.bin FORCE
@@ -249,19 +85,8 @@ $(pbl)/zbarebox.S $(pbl)/zbarebox.bin $(pbl)/zbarebox: =
barebox.bin FORCE
 archclean:
 	$(MAKE) $(clean)=3D$(pbl)
 =

-dts :=3D arch/arm/dts
-
-%.dtb: scripts
-	$(Q)$(MAKE) $(build)=3D$(dts) $(dts)/$@
-
 KBUILD_IMAGE ?=3D $(KBUILD_BINARY)
 =

-archprepare: maketools
-maketools:
-	$(Q)$(MAKE) $(build)=3Darch/arm/tools include/generated/mach-types.h
-
-PHONY +=3D maketools
-
 ifneq ($(board-y),)
 BOARD :=3D arch/arm/boards/$(board-y)/
 else
@@ -276,9 +101,6 @@ endif
 =

 common-y +=3D $(BOARD) arch/arm/boards/ $(MACH)
 common-y +=3D arch/arm/lib/ arch/arm/cpu/
-common-y +=3D arch/arm/crypto/
-
-common-$(CONFIG_OFTREE) +=3D arch/arm/dts/
 =

 lds-y	:=3D arch/arm/lib/barebox.lds
 =

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 9241b66..f9cb059 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -135,3 +135,4 @@ obj-$(CONFIG_MACH_VIRT2REAL)			+=3D virt2real/
 obj-$(CONFIG_MACH_ZEDBOARD)			+=3D avnet-zedboard/
 obj-$(CONFIG_MACH_ZYLONITE)			+=3D zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+=3D variscite-mx6/
+obj-$(CONFIG_MACH_VIRT)				+=3D virt/
diff --git a/arch/arm/boards/virt/Kconfig b/arch/arm/boards/virt/Kconfig
new file mode 100644
index 0000000..b239127
--- /dev/null
+++ b/arch/arm/boards/virt/Kconfig
@@ -0,0 +1,8 @@
+
+if MACH_VIRT
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x40000000
+
+endif
diff --git a/arch/arm/boards/virt/Makefile b/arch/arm/boards/virt/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/virt/Makefile
@@ -0,0 +1 @@
+obj-y +=3D init.o
diff --git a/arch/arm/boards/virt/env/bin/_update b/arch/arm/boards/virt/en=
v/bin/_update
new file mode 100644
index 0000000..014bce3
--- /dev/null
+++ b/arch/arm/boards/virt/env/bin/_update
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+if [ -z "$part" -o -z "$image" ]; then
+	echo "define \$part and \$image"
+	exit 1
+fi
+
+if [ ! -e "$part" ]; then
+	echo "Partition $part does not exist"
+	exit 1
+fi
+
+if [ $# =3D 1 ]; then
+	image=3D$1
+fi
+
+if [ x$ip =3D xdhcp ]; then
+	dhcp
+fi
+
+ping $eth0.serverip
+if [ $? -ne 0 ] ; then
+	echo "update aborted"
+	exit 1
+fi
+
+unprotect $part
+
+echo
+echo "erasing partition $part"
+erase $part
+
+echo
+echo "flashing $image to $part"
+echo
+tftp $image $part
diff --git a/arch/arm/boards/virt/env/bin/boot b/arch/arm/boards/virt/env/b=
in/boot
new file mode 100644
index 0000000..3859dc1
--- /dev/null
+++ b/arch/arm/boards/virt/env/bin/boot
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 =3D xflash ]; then
+	root=3Dflash
+	kernel=3Dflash
+fi
+
+if [ x$1 =3D xnet ]; then
+	root=3Dnet
+	kernel=3Dnet
+fi
+
+if [ x$ip =3D xdhcp ]; then
+	bootargs=3D"$bootargs ip=3Ddhcp"
+else
+	bootargs=3D"$bootargs ip=3D$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth=
0.netmask:::"
+fi
+
+if [ x$root =3D xflash ]; then
+	bootargs=3D"$bootargs root=3D$rootpart rootfstype=3Djffs2"
+else
+	bootargs=3D"$bootargs root=3D/dev/nfs nfsroot=3D$eth0.serverip:$nfsroot,v=
3,tcp"
+fi
+
+bootargs=3D"$bootargs mtdparts=3Dphysmap-flash.0:$mtdparts"
+
+if [ $kernel =3D net ]; then
+	if [ x$ip =3D xdhcp ]; then
+		dhcp
+	fi
+	tftp $uimage uImage || exit 1
+	bootm uImage
+else
+	bootm /dev/nor0.kernel
+fi
+
diff --git a/arch/arm/boards/virt/env/bin/init b/arch/arm/boards/virt/env/b=
in/init
new file mode 100644
index 0000000..48e2139
--- /dev/null
+++ b/arch/arm/boards/virt/env/bin/init
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+PATH=3D/env/bin
+export PATH
+
+. /env/config
+addpart /dev/nor0 $mtdparts
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? !=3D 0 ]; then
+	echo
+	echo "type update_kernel [<imagename>] to update kernel into flash"
+	echo "type udate_root [<imagename>] to update rootfs into flash"
+	echo
+	exit
+fi
+
+boot
\ No newline at end of file
diff --git a/arch/arm/boards/virt/env/bin/update_kernel b/arch/arm/boards/v=
irt/env/bin/update_kernel
new file mode 100644
index 0000000..1ad95fc
--- /dev/null
+++ b/arch/arm/boards/virt/env/bin/update_kernel
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+. /env/config
+
+image=3D$uimage
+part=3D/dev/nor0.kernel
+
+. /env/bin/_update $1
diff --git a/arch/arm/boards/virt/env/bin/update_root b/arch/arm/boards/vir=
t/env/bin/update_root
new file mode 100644
index 0000000..b757a5b
--- /dev/null
+++ b/arch/arm/boards/virt/env/bin/update_root
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+. /env/config
+
+image=3D$jffs2
+part=3D/dev/nor0.root
+
+. /env/bin/_update $1
diff --git a/arch/arm/boards/virt/env/config b/arch/arm/boards/virt/env/con=
fig
new file mode 100644
index 0000000..6c0abda
--- /dev/null
+++ b/arch/arm/boards/virt/env/config
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=3Ddhcp
+global.dhcp.vendor_id=3Dbarebox-${global.hostname}
+
+# or set your networking parameters here
+#eth0.ipaddr=3Da.b.c.d
+#eth0.netmask=3Da.b.c.d
+#eth0.gateway=3Da.b.c.d
+#eth0.serverip=3Da.b.c.d
+
+# can be either 'nfs', 'tftp' or 'nor'
+kernel_loc=3Dtftp
+# can be either 'net', 'nor' or 'initrd'
+rootfs_loc=3Dinitrd
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=3Dubifs
+rootfsimage=3Droot.$rootfs_type
+
+kernelimage=3DzImage
+#kernelimage=3DuImage
+#kernelimage=3DImage
+#kernelimage=3DImage.lzo
+
+nfsroot=3D"$eth0.serverip:/opt/work/busybox/arm9/rootfs_arm"
+
+nor_parts=3D"256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nor=3D3
+
+autoboot_timeout=3D3
+
+bootargs=3D"console=3DttyAMA0,115200n8 CONSOLE=3D/dev/ttyAMA0"
+
+# set a fancy prompt (if support is compiled in)
+PS1=3D"\e[1;31m[barebox@\h]:\w\e[0m\n# "
diff --git a/arch/arm/boards/virt/env/init/mtdparts-nor b/arch/arm/boards/v=
irt/env/init/mtdparts-nor
new file mode 100644
index 0000000..3307596
--- /dev/null
+++ b/arch/arm/boards/virt/env/init/mtdparts-nor
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" =3D menu ]; then
+        init-menu-add-entry "$0" "NOR partitions"
+        exit
+fi
+
+mtdparts=3D"2048k@0(nor0.barebox)ro,256k(nor0.barebox-env),256k(nor0.bareb=
ox-logo),256k(nor0.barebox-logo2),5120k(nor0.kernel),-(nor0.root)"
+kernelname=3D"application-flash"
+
+mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/virt/init.c b/arch/arm/boards/virt/init.c
new file mode 100644
index 0000000..9626067
--- /dev/null
+++ b/arch/arm/boards/virt/init.c
@@ -0,0 +1,67 @@
+/*
+ * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <asm/system_info.h>
+#include <mach/devices.h>
+#include <environment.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <globalvar.h>
+#include <asm/mmu.h>
+
+static int virt_mem_init(void)
+{
+	virt_add_ddram(SZ_512M);
+
+	add_cfi_flash_device(0, 0x00000000, SZ_4M, 0);
+
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "sel=
f0");
+	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env=
0");
+
+	return 0;
+}
+mem_initcall(virt_mem_init);
+
+static int virt_console_init(void)
+{
+	virt_register_uart(0);
+
+	return 0;
+}
+console_initcall(virt_console_init);
+
+static int virt_core_init(void)
+{
+	char *hostname =3D "virt";
+
+	if (cpu_is_cortex_a53())
+		hostname =3D "virt-a53";
+	else if (cpu_is_cortex_a57())
+		hostname =3D "virt-a57";
+
+	barebox_set_model("ARM QEMU virt");
+	barebox_set_hostname(hostname);
+
+	return 0;
+}
+postcore_initcall(virt_core_init);
+
+static int virt_mmu_enable(void)
+{
+	/* Mapping all periph range */
+	arch_remap_range(0x09000000, 0x01000000, PMD_SECT_DEF_CACHED);
+
+	/* Mapping all flash range */
+	arch_remap_range(0x00000000, 0x08000000, PMD_SECT_DEF_CACHED);
+
+	mmu_enable();
+
+	return 0;
+}
+postmmu_initcall(virt_mmu_enable);
diff --git a/arch/arm/configs/virt_defconfig b/arch/arm/configs/virt_defcon=
fig
new file mode 100644
index 0000000..ae928a2
--- /dev/null
+++ b/arch/arm/configs/virt_defconfig
@@ -0,0 +1,53 @@
+CONFIG_AEABI=3Dy
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=3D0x05000000
+CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=3D0x01000000
+CONFIG_MEMORY_LAYOUT_FIXED=3Dy
+CONFIG_STACK_BASE=3D0x60000000
+CONFIG_MALLOC_BASE=3D0x50000000
+CONFIG_PROMPT=3D"virt: "
+CONFIG_HUSH_FANCY_PROMPT=3Dy
+CONFIG_CMDLINE_EDITING=3Dy
+CONFIG_AUTO_COMPLETE=3Dy
+CONFIG_MENU=3Dy
+CONFIG_PASSWORD=3Dy
+CONFIG_PARTITION=3Dy
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
+CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"arch/arm/boards/virt/env"
+CONFIG_DEBUG_INFO=3Dy
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=3Dy
+# CONFIG_CMD_BOOTM is not set
+# CONFIG_CMD_BOOTU is not set
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
+# CONFIG_CMD_CAT is not set
+# CONFIG_CMD_CD is not set
+# CONFIG_CMD_CP is not set
+# CONFIG_CMD_LS is not set
+# CONFIG_CMD_MKDIR is not set
+# CONFIG_CMD_PWD is not set
+# CONFIG_CMD_RM is not set
+# CONFIG_CMD_RMDIR is not set
+# CONFIG_CMD_FALSE is not set
+# CONFIG_CMD_TEST is not set
+# CONFIG_CMD_TRUE is not set
+# CONFIG_CMD_CLEAR is not set
+# CONFIG_CMD_ECHO is not set
+CONFIG_CMD_CRC=3Dy
+CONFIG_CMD_CRC_CMP=3Dy
+# CONFIG_CMD_MD is not set
+# CONFIG_CMD_MEMCMP is not set
+# CONFIG_CMD_MEMCPY is not set
+# CONFIG_CMD_MEMSET is not set
+# CONFIG_CMD_MW is not set
+CONFIG_SERIAL_AMBA_PL011=3Dy
+# CONFIG_SPI is not set
+CONFIG_MTD=3Dy
+CONFIG_DRIVER_CFI=3Dy
+CONFIG_DRIVER_CFI_BANK_WIDTH_8=3Dy
+CONFIG_CFI_BUFFER_WRITE=3Dy
+CONFIG_NAND=3Dy
+# CONFIG_FS_RAMFS is not set
+CONFIG_DIGEST_SHA1_GENERIC=3Dy
+CONFIG_DIGEST_SHA256_GENERIC=3Dy
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 4f5d9b6..86d64a4 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -1,6 +1,6 @@
 comment "Processor Type"
 =

-config CPU_32
+config CPU_64
 	bool
 	default y
 =

@@ -8,90 +8,13 @@ config CPU_32
 # which CPUs we support in the kernel image, and the compiler instruction
 # optimiser behaviour.
 =

-# ARM1176
-config CPU_ARM1176
+# ARMv8
+config CPU_V8
 	bool
-	select CPU_V6
+	select CPU_64v8
+	select CPU_SUPPORTS_64BIT_KERNEL
 =

-# ARM920T
-config CPU_ARM920T
-	bool
-	select CPU_32v4T
-	help
-	  The ARM920T is licensed to be produced by numerous vendors,
-	  and is used in the Maverick EP9312 and the Samsung S3C2410.
-
-	  More information on the Maverick EP9312 at
-	  <http://www.cirrus.com/en/products/ep9312.html>.
-
-	  Say Y if you want support for the ARM920T processor.
-	  Otherwise, say N.
-
-# ARM926T
-config CPU_ARM926T
-	bool
-	select CPU_32v5
-	help
-	  This is a variant of the ARM920. It has slightly different
-	  instruction sequences for cache and TLB operations. Curiously,
-	  there is no documentation on it at the ARM corporate website.
-
-	  Say Y if you want support for the ARM926T processor.
-	  Otherwise, say N.
-
-# ARM946E-S
-config CPU_ARM946E
-	bool
-	select CPU_32v4T
-	help
-	  ARM946E-S is a member of the ARM9E-S family of high-
-	  performance, 32-bit system-on-chip processor solutions.
-	  The TCM and ARMv5TE 32-bit instruction set is supported.
-
-	  Say Y if you want support for the ARM946E-S processor.
-	  Otherwise, say N.
-
-# Feroceon
-config CPU_FEROCEON
-	bool
-	select CPU_32v5
-	help
-	  This is a Marvell implementation of an ARMv5TE compatible
-	  ARM core, used in the Marvell Kirkwood SoC family.
-
-# ARMv6
-config CPU_V6
-	bool
-	select CPU_32v6
-
-# ARMv7
-config CPU_V7
-	bool
-	select CPU_32v7
-
-config CPU_XSC3
-        bool
-        select CPU_32v4T
-        help
-          Select code specific to PXA3xx variants
-
-# Xscale PXA25x, PXA27x
-config CPU_XSCALE
-	bool
-	select CPU_32v4T
-
-# Figure out what processor architecture version we should be using.
-# This defines the compiler instruction set which depends on the machine t=
ype.
-config CPU_32v4T
-	bool
-
-config CPU_32v5
-	bool
-
-config CPU_32v6
-	bool
-
-config CPU_32v7
+config CPU_64v8
 	bool
 =

 comment "processor features"
@@ -117,10 +40,15 @@ config BOOT_ENDIANNESS_SWITCH
 =

 	  Currently implemented only by "bootz" command.
 =

-config ARCH_HAS_L2X0
+config SYS_SUPPORTS_32BIT_KERNEL
+	bool
+
+config SYS_SUPPORTS_64BIT_KERNEL
+	bool
+
+config CPU_SUPPORTS_32BIT_KERNEL
 	bool
 =

-config CACHE_L2X0
-	bool "Enable L2x0 PrimeCell"
-	depends on MMU && ARCH_HAS_L2X0
+config CPU_SUPPORTS_64BIT_KERNEL
+	bool
 =

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 854df60e..fe6e7af 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,38 +1,25 @@
 obj-y +=3D cpu.o
 obj-$(CONFIG_ARM_EXCEPTIONS) +=3D exceptions.o
 obj-$(CONFIG_ARM_EXCEPTIONS) +=3D interrupts.o
-obj-y +=3D start.o setupc.o entry.o
+obj-y +=3D start.o entry.o
 =

 #
 # Any variants can be called as start-armxyz.S
 #
 obj-$(CONFIG_CMD_ARM_CPUINFO) +=3D cpuinfo.o
 obj-$(CONFIG_CMD_ARM_MMUINFO) +=3D mmuinfo.o
-obj-$(CONFIG_OFDEVICE) +=3D dtb.o
-obj-$(CONFIG_MMU) +=3D mmu.o cache.o mmu-early.o
-pbl-$(CONFIG_MMU) +=3D mmu-early.o
+obj-$(CONFIG_MMU) +=3D mmu.o cache.o
 =

-ifeq ($(CONFIG_MMU),)
-obj-y +=3D no-mmu.o
-endif
-
-obj-$(CONFIG_CPU_32v4T) +=3D cache-armv4.o
-pbl-$(CONFIG_CPU_32v4T) +=3D cache-armv4.o
-obj-$(CONFIG_CPU_32v5) +=3D cache-armv5.o
-pbl-$(CONFIG_CPU_32v5) +=3D cache-armv5.o
-obj-$(CONFIG_CPU_32v6) +=3D cache-armv6.o
-pbl-$(CONFIG_CPU_32v6) +=3D cache-armv6.o
-AFLAGS_cache-armv7.o       :=3D-Wa,-march=3Darmv7-a
-obj-$(CONFIG_CPU_32v7) +=3D cache-armv7.o
-AFLAGS_pbl-cache-armv7.o       :=3D-Wa,-march=3Darmv7-a
-pbl-$(CONFIG_CPU_32v7) +=3D cache-armv7.o
-obj-$(CONFIG_CACHE_L2X0) +=3D cache-l2x0.o
+AFLAGS_cache-armv8.o       :=3D-Wa,-march=3Darmv8-a
+obj-$(CONFIG_CPU_64v8) +=3D cache-armv8.o
+AFLAGS_pbl-cache-armv8.o       :=3D-Wa,-march=3Darmv8-a
+pbl-$(CONFIG_CPU_64v8) +=3D cache-armv8.o
 =

 pbl-y +=3D setupc.o entry.o
 pbl-$(CONFIG_PBL_SINGLE_IMAGE) +=3D start-pbl.o
 pbl-$(CONFIG_PBL_MULTI_IMAGES) +=3D uncompress.o
 =

-obj-y +=3D common.o cache.o
-pbl-y +=3D common.o cache.o
+obj-y +=3D cache.o
+pbl-y +=3D cache.o
 =

 lwl-y +=3D lowlevel.o
diff --git a/arch/arm/cpu/cache-armv8.S b/arch/arm/cpu/cache-armv8.S
new file mode 100644
index 0000000..82b2f81
--- /dev/null
+++ b/arch/arm/cpu/cache-armv8.S
@@ -0,0 +1,168 @@
+/*
+ * (C) Copyright 2013
+ * David Feng <fenghua@phytium.com.cn>
+ *
+ * This file is based on sample code from ARMv8 ARM.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <config.h>
+#include <linux/linkage.h>
+#include <init.h>
+
+/*
+ * void v8_flush_dcache_level(level)
+ *
+ * clean and invalidate one level cache.
+ *
+ * x0: cache level
+ * x1: 0 flush & invalidate, 1 invalidate only
+ * x2~x9: clobbered
+ */
+.section .text.v8_flush_dcache_level
+ENTRY(v8_flush_dcache_level)
+	lsl	x12, x0, #1
+	msr	csselr_el1, x12		/* select cache level */
+	isb				/* sync change of cssidr_el1 */
+	mrs	x6, ccsidr_el1		/* read the new cssidr_el1 */
+	and	x2, x6, #7		/* x2 <- log2(cache line size)-4 */
+	add	x2, x2, #4		/* x2 <- log2(cache line size) */
+	mov	x3, #0x3ff
+	and	x3, x3, x6, lsr #3	/* x3 <- max number of #ways */
+	clz	w5, w3			/* bit position of #ways */
+	mov	x4, #0x7fff
+	and	x4, x4, x6, lsr #13	/* x4 <- max number of #sets */
+	/* x12 <- cache level << 1 */
+	/* x2 <- line length offset */
+	/* x3 <- number of cache ways - 1 */
+	/* x4 <- number of cache sets - 1 */
+	/* x5 <- bit position of #ways */
+
+loop_set:
+	mov	x6, x3			/* x6 <- working copy of #ways */
+loop_way:
+	lsl	x7, x6, x5
+	orr	x9, x12, x7		/* map way and level to cisw value */
+	lsl	x7, x4, x2
+	orr	x9, x9, x7		/* map set number to cisw value */
+	tbz	w1, #0, 1f
+	dc	isw, x9
+	b	2f
+1:	dc	cisw, x9		/* clean & invalidate by set/way */
+2:	subs	x6, x6, #1		/* decrement the way */
+	b.ge	loop_way
+	subs	x4, x4, #1		/* decrement the set */
+	b.ge	loop_set
+
+	ret
+ENDPROC(v8_flush_dcache_level)
+
+/*
+ * void v8_flush_dcache_all(int invalidate_only)
+ *
+ * x0: 0 flush & invalidate, 1 invalidate only
+ *
+ * clean and invalidate all data cache by SET/WAY.
+ */
+.section .text.v8_dcache_all
+ENTRY(v8_dcache_all)
+	mov	x1, x0
+	dsb	sy
+	mrs	x10, clidr_el1		/* read clidr_el1 */
+	lsr	x11, x10, #24
+	and	x11, x11, #0x7		/* x11 <- loc */
+	cbz	x11, finished		/* if loc is 0, exit */
+	mov	x15, x30
+	mov	x0, #0			/* start flush at cache level 0 */
+	/* x0  <- cache level */
+	/* x10 <- clidr_el1 */
+	/* x11 <- loc */
+	/* x15 <- return address */
+
+loop_level:
+	lsl	x12, x0, #1
+	add	x12, x12, x0		/* x0 <- tripled cache level */
+	lsr	x12, x10, x12
+	and	x12, x12, #7		/* x12 <- cache type */
+	cmp	x12, #2
+	b.lt	skip			/* skip if no cache or icache */
+	bl	v8_flush_dcache_level	/* x1 =3D 0 flush, 1 invalidate */
+skip:
+	add	x0, x0, #1		/* increment cache level */
+	cmp	x11, x0
+	b.gt	loop_level
+
+	mov	x0, #0
+	msr	csselr_el1, x0		/* restore csselr_el1 */
+	dsb	sy
+	isb
+	mov	x30, x15
+
+finished:
+	ret
+ENDPROC(v8_dcache_all)
+
+.section .text.v8_flush_dcache_all
+ENTRY(v8_flush_dcache_all)
+	mov	x16, x30
+	mov	x0, #0
+	bl	v8_dcache_all
+	mov	x30, x16
+	ret
+ENDPROC(v8_flush_dcache_all)
+
+.section .text.v8_invalidate_dcache_all
+ENTRY(v8_invalidate_dcache_all)
+	mov	x16, x30
+	mov	x0, #0x1
+	bl	v8_dcache_all
+	mov	x30, x16
+	ret
+ENDPROC(v8_invalidate_dcache_all)
+
+/*
+ * void v8_flush_dcache_range(start, end)
+ *
+ * clean & invalidate data cache in the range
+ *
+ * x0: start address
+ * x1: end address
+ */
+.section .text.v8_flush_dcache_range
+ENTRY(v8_flush_dcache_range)
+	mrs	x3, ctr_el0
+	lsr	x3, x3, #16
+	and	x3, x3, #0xf
+	mov	x2, #4
+	lsl	x2, x2, x3		/* cache line size */
+
+	/* x2 <- minimal cache line size in cache system */
+	sub	x3, x2, #1
+	bic	x0, x0, x3
+1:	dc	civac, x0	/* clean & invalidate data or unified cache */
+	add	x0, x0, x2
+	cmp	x0, x1
+	b.lo	1b
+	dsb	sy
+	ret
+ENDPROC(v8_flush_dcache_range)
+
+/*
+ * void v8_invalidate_icache_all(void)
+ *
+ * invalidate all tlb entries.
+ */
+.section .text.v8_invalidate_icache_all
+ENTRY(v8_invalidate_icache_all)
+	ic	ialluis
+	isb	sy
+	ret
+ENDPROC(v8_invalidate_icache_all)
+
+.section .text.v8_flush_l3_cache
+ENTRY(v8_flush_l3_cache)
+	mov	x0, #0			/* return status as success */
+	ret
+ENDPROC(v8_flush_l3_cache)
+	.weak	v8_flush_l3_cache
diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 27ead1c..8465cf9 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -32,10 +32,7 @@ struct cache_fns *cache_fns;
 		.mmu_cache_flush =3D arch##_mmu_cache_flush,			\
 	};
 =

-DEFINE_CPU_FNS(v4)
-DEFINE_CPU_FNS(v5)
-DEFINE_CPU_FNS(v6)
-DEFINE_CPU_FNS(v7)
+DEFINE_CPU_FNS(v8)
 =

 void __dma_clean_range(unsigned long start, unsigned long end)
 {
@@ -78,29 +75,9 @@ void __mmu_cache_flush(void)
 int arm_set_cache_functions(void)
 {
 	switch (cpu_architecture()) {
-#ifdef CONFIG_CPU_32v4T
-	case CPU_ARCH_ARMv4T:
-		cache_fns =3D &cache_fns_armv4;
+	case CPU_ARCH_ARMv8:
+		cache_fns =3D &cache_fns_armv8;
 		break;
-#endif
-#ifdef CONFIG_CPU_32v5
-	case CPU_ARCH_ARMv5:
-	case CPU_ARCH_ARMv5T:
-	case CPU_ARCH_ARMv5TE:
-	case CPU_ARCH_ARMv5TEJ:
-		cache_fns =3D &cache_fns_armv5;
-		break;
-#endif
-#ifdef CONFIG_CPU_32v6
-	case CPU_ARCH_ARMv6:
-		cache_fns =3D &cache_fns_armv6;
-		break;
-#endif
-#ifdef CONFIG_CPU_32v7
-	case CPU_ARCH_ARMv7:
-		cache_fns =3D &cache_fns_armv7;
-		break;
-#endif
 	default:
 		while(1);
 	}
@@ -115,49 +92,19 @@ int arm_set_cache_functions(void)
 void arm_early_mmu_cache_flush(void)
 {
 	switch (arm_early_get_cpu_architecture()) {
-#ifdef CONFIG_CPU_32v4T
-	case CPU_ARCH_ARMv4T:
-		v4_mmu_cache_flush();
-		return;
-#endif
-#ifdef CONFIG_CPU_32v5
-	case CPU_ARCH_ARMv5:
-	case CPU_ARCH_ARMv5T:
-	case CPU_ARCH_ARMv5TE:
-	case CPU_ARCH_ARMv5TEJ:
-		v5_mmu_cache_flush();
+	case CPU_ARCH_ARMv8:
+//		v7_mmu_cache_flush();
 		return;
-#endif
-#ifdef CONFIG_CPU_32v6
-	case CPU_ARCH_ARMv6:
-		v6_mmu_cache_flush();
-		return;
-#endif
-#ifdef CONFIG_CPU_32v7
-	case CPU_ARCH_ARMv7:
-		v7_mmu_cache_flush();
-		return;
-#endif
 	}
 }
 =

-void v7_mmu_cache_invalidate(void);
+//void v7_mmu_cache_invalidate(void);
 =

 void arm_early_mmu_cache_invalidate(void)
 {
 	switch (arm_early_get_cpu_architecture()) {
-	case CPU_ARCH_ARMv4T:
-	case CPU_ARCH_ARMv5:
-	case CPU_ARCH_ARMv5T:
-	case CPU_ARCH_ARMv5TE:
-	case CPU_ARCH_ARMv5TEJ:
-	case CPU_ARCH_ARMv6:
-		asm volatile("mcr p15, 0, %0, c7, c6, 0\n" : : "r"(0));
-		return;
-#ifdef CONFIG_CPU_32v7
-	case CPU_ARCH_ARMv7:
-		v7_mmu_cache_invalidate();
+	case CPU_ARCH_ARMv8:
+//		v7_mmu_cache_invalidate();
 		return;
-#endif
 	}
 }
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index eb12166..19cd944 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -40,11 +40,8 @@
  */
 void icache_enable(void)
 {
-	u32 r;
-
-	r =3D get_cr();
-	r |=3D CR_I;
-	set_cr(r);
+	v8_invalidate_icache_all();
+	set_sctlr(get_sctlr() | CR_I);
 }
 =

 /**
@@ -52,11 +49,7 @@ void icache_enable(void)
  */
 void icache_disable(void)
 {
-	u32 r;
-
-	r =3D get_cr();
-	r &=3D ~CR_I;
-	set_cr(r);
+	set_sctlr(get_sctlr() & ~CR_I);
 }
 =

 /**
@@ -65,26 +58,7 @@ void icache_disable(void)
  */
 int icache_status(void)
 {
-	return (get_cr () & CR_I) !=3D 0;
-}
-
-/*
- * SoC like the ux500 have the l2x0 always enable
- * with or without MMU enable
- */
-struct outer_cache_fns outer_cache;
-
-/*
- * Clean and invalide caches, disable MMU
- */
-void mmu_disable(void)
-{
-	__mmu_cache_flush();
-	if (outer_cache.disable) {
-		outer_cache.flush_all();
-		outer_cache.disable();
-	}
-	__mmu_cache_off();
+	return (get_sctlr() & CR_I) !=3D 0;
 }
 =

 /**
@@ -96,18 +70,8 @@ void mmu_disable(void)
  */
 static void arch_shutdown(void)
 {
-	uint32_t r;
-
 	mmu_disable();
 	flush_icache();
-	/*
-	 * barebox normally does not use interrupts, but some functionalities
-	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
-	 * disabled before exiting.
-	 */
-	__asm__ __volatile__("mrs %0, cpsr" : "=3Dr"(r));
-	r |=3D PSR_I_BIT;
-	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
 }
 archshutdown_exitcall(arch_shutdown);
 =

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 8b22e9b..2306101 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -21,21 +21,10 @@
 #include <complete.h>
 =

 #define CPU_ARCH_UNKNOWN	0
-#define CPU_ARCH_ARMv3		1
-#define CPU_ARCH_ARMv4		2
-#define CPU_ARCH_ARMv4T		3
-#define CPU_ARCH_ARMv5		4
-#define CPU_ARCH_ARMv5T		5
-#define CPU_ARCH_ARMv5TE	6
-#define CPU_ARCH_ARMv5TEJ	7
-#define CPU_ARCH_ARMv6		8
-#define CPU_ARCH_ARMv7		9
-
-#define ARM_CPU_PART_CORTEX_A5      0xC050
-#define ARM_CPU_PART_CORTEX_A7      0xC070
-#define ARM_CPU_PART_CORTEX_A8      0xC080
-#define ARM_CPU_PART_CORTEX_A9      0xC090
-#define ARM_CPU_PART_CORTEX_A15     0xC0F0
+#define CPU_ARCH_ARMv8		10
+
+#define ARM_CPU_PART_CORTEX_A53	    0xD034
+#define ARM_CPU_PART_CORTEX_A57	    0xD070
 =

 static void decode_cache(unsigned long size)
 {
@@ -61,22 +50,22 @@ static int do_cpuinfo(int argc, char *argv[])
 	int cpu_arch;
 =

 	__asm__ __volatile__(
-		"mrc    p15, 0, %0, c0, c0, 0   @ read control reg\n"
+		"mrs	%0, midr_el1\n"
 		: "=3Dr" (mainid)
 		:
 		: "memory");
 =

-	__asm__ __volatile__(
-		"mrc    p15, 0, %0, c0, c0, 1   @ read control reg\n"
-		: "=3Dr" (cache)
-		:
-		: "memory");
-
-	__asm__ __volatile__(
-		"mrc    p15, 0, %0, c1, c0, 0   @ read control reg\n"
-			: "=3Dr" (cr)
-			:
-			: "memory");
+//	__asm__ __volatile__(
+//		"mrc    p15, 0, %0, c0, c0, 1   @ read control reg\n"
+//		: "=3Dr" (cache)
+//		:
+//		: "memory");
+//
+//	__asm__ __volatile__(
+//		"mrc    p15, 0, %0, c1, c0, 0   @ read control reg\n"
+//			: "=3Dr" (cr)
+//			:
+//			: "memory");
 =

 	switch (mainid >> 24) {
 	case 0x41:
@@ -111,8 +100,8 @@ static int do_cpuinfo(int argc, char *argv[])
 =

 		/* Revised CPUID format. Read the Memory Model Feature
 		 * Register 0 and check for VMSAv7 or PMSAv7 */
-		asm("mrc	p15, 0, %0, c0, c1, 4"
-		    : "=3Dr" (mmfr0));
+//		asm("mrc	p15, 0, %0, c0, c1, 4"
+//		    : "=3Dr" (mmfr0));
 		if ((mmfr0 & 0x0000000f) >=3D 0x00000003 ||
 		    (mmfr0 & 0x000000f0) >=3D 0x00000030)
 			cpu_arch =3D CPU_ARCH_ARMv7;
@@ -152,6 +141,9 @@ static int do_cpuinfo(int argc, char *argv[])
 	case CPU_ARCH_ARMv7:
 		architecture =3D "v7";
 		break;
+	case CPU_ARCH_ARMv8:
+		architecture =3D "v8";
+		break;
 	case CPU_ARCH_UNKNOWN:
 	default:
 		architecture =3D "Unknown";
@@ -181,29 +173,31 @@ static int do_cpuinfo(int argc, char *argv[])
 		case ARM_CPU_PART_CORTEX_A15:
 			part =3D "Cortex-A15";
 			break;
+		case ARM_CPU_PART_CORTEX_A53:
+			part =3D "Cortex-A53";
 		default:
 			part =3D "unknown";
 		}
 		printf("core: %s r%up%u\n", part, major, minor);
 	}
 =

-	if (cache & (1 << 24)) {
-		/* separate I/D cache */
-		printf("I-cache: ");
-		decode_cache(cache & 0xfff);
-		printf("D-cache: ");
-		decode_cache((cache >> 12) & 0xfff);
-	} else {
-		/* unified I/D cache */
-		printf("cache: ");
-		decode_cache(cache & 0xfff);
-	}
-
-	printf("Control register: ");
-	for (i =3D 0; i < ARRAY_SIZE(crbits); i++)
-		if (cr & (1 << i))
-			printf("%s ", crbits[i]);
-	printf("\n");
+//	if (cache & (1 << 24)) {
+//		/* separate I/D cache */
+//		printf("I-cache: ");
+//		decode_cache(cache & 0xfff);
+//		printf("D-cache: ");
+//		decode_cache((cache >> 12) & 0xfff);
+//	} else {
+//		/* unified I/D cache */
+//		printf("cache: ");
+//		decode_cache(cache & 0xfff);
+//	}
+
+//	printf("Control register: ");
+//	for (i =3D 0; i < ARRAY_SIZE(crbits); i++)
+//		if (cr & (1 << i))
+//			printf("%s ", crbits[i]);
+//	printf("\n");
 =

 	return 0;
 }
diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
index 0cdcfec..a029f09 100644
--- a/arch/arm/cpu/entry.c
+++ b/arch/arm/cpu/entry.c
@@ -1,7 +1,6 @@
 #include <types.h>
 =

 #include <asm/cache.h>
-#include <asm/barebox-arm.h>
 =

 #include "entry.h"
 =

@@ -24,10 +23,10 @@
  * be fine.
  */
 =

-void __naked __noreturn barebox_arm_entry(unsigned long membase,
+void __noreturn barebox_arm_entry(unsigned long membase,
 					  unsigned long memsize, void *boarddata)
 {
-	arm_setup_stack(arm_mem_stack(membase, membase + memsize) + STACK_SIZE - =
16);
+	arm_setup_stack(membase + memsize - 16);
 	arm_early_mmu_cache_invalidate();
 =

 	if (IS_ENABLED(CONFIG_PBL_MULTI_IMAGES))
diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index eda0d6a..5812025 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -1,220 +1,119 @@
-#include <config.h>
-#include <linux/linkage.h>
-#include <asm-generic/memory_layout.h>
-
 /*
- *************************************************************************
- *
- * Interrupt handling
+ * (C) Copyright 2013
+ * David Feng <fenghua@phytium.com.cn>
  *
- *************************************************************************
+ * SPDX-License-Identifier:	GPL-2.0+
  */
 =

-@
-@ IRQ stack frame.
-@
-#define S_FRAME_SIZE	72
-
-#define S_OLD_R0	68
-#define S_PSR		64
-#define S_PC		60
-#define S_LR		56
-#define S_SP		52
-
-#define S_IP		48
-#define S_FP		44
-#define S_R10		40
-#define S_R9		36
-#define S_R8		32
-#define S_R7		28
-#define S_R6		24
-#define S_R5		20
-#define S_R4		16
-#define S_R3		12
-#define S_R2		8
-#define S_R1		4
-#define S_R0		0
-
-#define MODE_SVC	0x13
+#include <config.h>
+#include <asm/ptrace.h>
+#include <linux/linkage.h>
 =

 /*
- * use bad_save_user_regs for abort/prefetch/undef/swi ...
- * use irq_save_user_regs / irq_restore_user_regs for IRQ/FIQ handling
+ * Enter Exception.
+ * This will save the processor state that is ELR/X0~X30
+ * to the stack frame.
  */
-
-	.macro	bad_save_user_regs
-	sub	sp, sp, #S_FRAME_SIZE
-	stmia	sp, {r0 - r12}			@ Calling r0-r12
-	ldr	r2, =3Dabort_stack
-	ldmia	r2, {r2 - r3}			@ get pc, cpsr
-	add	r0, sp, #S_FRAME_SIZE		@ restore sp_SVC
-
-	add	r5, sp, #S_SP
-	mov	r1, lr
-	stmia	r5, {r0 - r3}			@ save sp_SVC, lr_SVC, pc, cpsr
-	mov	r0, sp
-	.endm
-
-	.macro	irq_save_user_regs
-	sub	sp, sp, #S_FRAME_SIZE
-	stmia	sp, {r0 - r12}			@ Calling r0-r12
-	add     r8, sp, #S_PC
-	stmdb   r8, {sp, lr}^                   @ Calling SP, LR
-	str     lr, [r8, #0]                    @ Save calling PC
-	mrs     r6, spsr
-	str     r6, [r8, #4]                    @ Save CPSR
-	str     r0, [r8, #8]                    @ Save OLD_R0
-	mov	r0, sp
-	.endm
-
-	.macro	irq_restore_user_regs
-	ldmia	sp, {r0 - lr}^			@ Calling r0 - lr
-	mov	r0, r0
-	ldr	lr, [sp, #S_PC]			@ Get PC
-	add	sp, sp, #S_FRAME_SIZE
-	subs	pc, lr, #4			@ return & move spsr_svc into cpsr
-	.endm
-
-	.macro get_bad_stack
-	ldr	r13, =3Dabort_stack
-	str	lr, [r13]			@ save caller lr / spsr
-	mrs	lr, spsr
-	str     lr, [r13, #4]
-
-	mov	r13, #MODE_SVC			@ prepare SVC-Mode
-	@ msr	spsr_c, r13
-	msr	spsr, r13
-	mov	lr, pc
-	movs	pc, lr
-	.endm
-
-	.macro try_data_abort
-	ldr	r13, =3Darm_ignore_data_abort	@ check try mode
-	ldr	r13, [r13]
-	cmp	r13, #0
-	beq	do_abort_\@
-	ldr	r13, =3Darm_data_abort_occurred
-	str	r13, [r13]
-	mrs	r13, spsr			@ read saved CPSR
-	tst	r13, #1<<5			@ check Thumb mode
-	subeq	lr, #4				@ next ARM instr
-	subne	lr, #6				@ next Thumb instr
-	movs	pc, lr
-do_abort_\@:
-	.endm
-
-	.macro get_irq_stack			@ setup IRQ stack
-	ldr	sp, IRQ_STACK_START
-	.endm
-
-	.macro get_fiq_stack			@ setup FIQ stack
-	ldr	sp, FIQ_STACK_START
-	.endm
+.macro	exception_entry
+	stp	x29, x30, [sp, #-16]!
+	stp	x27, x28, [sp, #-16]!
+	stp	x25, x26, [sp, #-16]!
+	stp	x23, x24, [sp, #-16]!
+	stp	x21, x22, [sp, #-16]!
+	stp	x19, x20, [sp, #-16]!
+	stp	x17, x18, [sp, #-16]!
+	stp	x15, x16, [sp, #-16]!
+	stp	x13, x14, [sp, #-16]!
+	stp	x11, x12, [sp, #-16]!
+	stp	x9, x10, [sp, #-16]!
+	stp	x7, x8, [sp, #-16]!
+	stp	x5, x6, [sp, #-16]!
+	stp	x3, x4, [sp, #-16]!
+	stp	x1, x2, [sp, #-16]!
+
+	/* Could be running at EL3/EL2/EL1 */
+	mrs	x11, CurrentEL
+	cmp	x11, #0xC		/* Check EL3 state */
+	b.eq	1f
+	cmp	x11, #0x8		/* Check EL2 state */
+	b.eq	2f
+	cmp	x11, #0x4		/* Check EL1 state */
+	b.eq	3f
+3:	mrs	x1, esr_el3
+	mrs	x2, elr_el3
+	b	0f
+2:	mrs	x1, esr_el2
+	mrs	x2, elr_el2
+	b	0f
+1:	mrs	x1, esr_el1
+	mrs	x2, elr_el1
+0:
+	stp	x2, x0, [sp, #-16]!
+	mov	x0, sp
+.endm
 =

 /*
- * exception handlers
+ * Exception vectors.
  */
-	.section ".text","ax"
-	.arm
-
-	.align  5
-undefined_instruction:
-	get_bad_stack
-	bad_save_user_regs
-	bl 	do_undefined_instruction
-
-	.align	5
-software_interrupt:
-	get_bad_stack
-	bad_save_user_regs
-	bl 	do_software_interrupt
-
-	.align	5
-prefetch_abort:
-	get_bad_stack
-	bad_save_user_regs
-	bl 	do_prefetch_abort
-
-	.align	5
-data_abort:
-	try_data_abort
-	get_bad_stack
-	bad_save_user_regs
-	bl 	do_data_abort
-
-	.align	5
-irq:
-	get_bad_stack
-	bad_save_user_regs
-	bl 	do_irq
-
-	.align	5
-fiq:
-	get_bad_stack
-	bad_save_user_regs
-	bl 	do_fiq
-
-#if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
-/*
- * With relocatable binary support the runtime exception vectors do not ma=
tch
- * the addresses in the binary. We have to fix them up during runtime
- */
-ENTRY(arm_fixup_vectors)
-	ldr	r0, =3Dundefined_instruction
-	ldr	r1, =3D_undefined_instruction
-	str	r0, [r1]
-	ldr	r0, =3Dsoftware_interrupt
-	ldr	r1, =3D_software_interrupt
-	str	r0, [r1]
-	ldr	r0, =3Dprefetch_abort
-	ldr	r1, =3D_prefetch_abort
-	str	r0, [r1]
-	ldr	r0, =3Ddata_abort
-	ldr	r1, =3D_data_abort
-	str	r0, [r1]
-	ldr	r0, =3Dirq
-	ldr	r1, =3D_irq
-	str	r0, [r1]
-	ldr	r0, =3Dfiq
-	ldr	r1, =3D_fiq
-	str	r0, [r1]
-	bx	lr
-ENDPROC(arm_fixup_vectors)
-#endif
-
-.section .text_exceptions
-.globl extable
-extable:
-1:	b 1b				/* barebox_arm_reset_vector */
-#ifdef CONFIG_ARM_EXCEPTIONS
-	ldr pc, _undefined_instruction	/* undefined instruction */
-	ldr pc, _software_interrupt	/* software interrupt (SWI) */
-	ldr pc, _prefetch_abort		/* prefetch abort */
-	ldr pc, _data_abort		/* data abort */
-1:	b 1b				/* (reserved) */
-	ldr pc, _irq			/* irq (interrupt) */
-	ldr pc, _fiq			/* fiq (fast interrupt) */
-.globl _undefined_instruction
-_undefined_instruction: .word undefined_instruction
-.globl _software_interrupt
-_software_interrupt: .word software_interrupt
-.globl _prefetch_abort
-_prefetch_abort: .word prefetch_abort
-.globl _data_abort
-_data_abort: .word data_abort
-.globl _irq
-_irq: .word irq
-.globl _fiq
-_fiq: .word fiq
-#else
-1:	b 1b				/* undefined instruction */
-1:	b 1b				/* software interrupt (SWI) */
-1:	b 1b				/* prefetch abort */
-1:	b 1b				/* data abort */
-1:	b 1b				/* (reserved) */
-1:	b 1b				/* irq (interrupt) */
-1:	b 1b				/* fiq (fast interrupt) */
-#endif
+	.align	11
+	.globl	vectors
+vectors:
+	.align	7
+	b	_do_bad_sync	/* Current EL Synchronous Thread */
+
+	.align	7
+	b	_do_bad_irq	/* Current EL IRQ Thread */
+
+	.align	7
+	b	_do_bad_fiq	/* Current EL FIQ Thread */
+
+	.align	7
+	b	_do_bad_error	/* Current EL Error Thread */
+
+	.align	7
+	b	_do_sync	/* Current EL Synchronous Handler */
+
+	.align	7
+	b	_do_irq		/* Current EL IRQ Handler */
+
+	.align	7
+	b	_do_fiq		/* Current EL FIQ Handler */
+
+	.align	7
+	b	_do_error	/* Current EL Error Handler */
+
+
+_do_bad_sync:
+	exception_entry
+	bl	do_bad_sync
+
+_do_bad_irq:
+	exception_entry
+	bl	do_bad_irq
+
+_do_bad_fiq:
+	exception_entry
+	bl	do_bad_fiq
+
+_do_bad_error:
+	exception_entry
+	bl	do_bad_error
+
+_do_sync:
+	exception_entry
+	bl	do_sync
+
+_do_irq:
+	exception_entry
+	bl	do_irq
+
+_do_fiq:
+	exception_entry
+	bl	do_fiq
+
+_do_error:
+	exception_entry
+	bl	do_error
 =

 .section .data
 .align 4
diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index fb4bb78..d42a5b1 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -27,54 +27,8 @@
 #include <asm/ptrace.h>
 #include <asm/unwind.h>
 =

-/**
- * Display current register set content
- * @param[in] regs Guess what
- */
-void show_regs (struct pt_regs *regs)
-{
-	unsigned long flags;
-	const char *processor_modes[] =3D {
-	"USER_26",	"FIQ_26",	"IRQ_26",	"SVC_26",
-	"UK4_26",	"UK5_26",	"UK6_26",	"UK7_26",
-	"UK8_26",	"UK9_26",	"UK10_26",	"UK11_26",
-	"UK12_26",	"UK13_26",	"UK14_26",	"UK15_26",
-	"USER_32",	"FIQ_32",	"IRQ_32",	"SVC_32",
-	"UK4_32",	"UK5_32",	"UK6_32",	"ABT_32",
-	"UK8_32",	"UK9_32",	"UK10_32",	"UND_32",
-	"UK12_32",	"UK13_32",	"UK14_32",	"SYS_32",
-	};
-
-	flags =3D condition_codes (regs);
-
-	printf ("pc : [<%08lx>]    lr : [<%08lx>]\n"
-		"sp : %08lx  ip : %08lx  fp : %08lx\n",
-		instruction_pointer (regs),
-		regs->ARM_lr, regs->ARM_sp, regs->ARM_ip, regs->ARM_fp);
-	printf ("r10: %08lx  r9 : %08lx  r8 : %08lx\n",
-		regs->ARM_r10, regs->ARM_r9, regs->ARM_r8);
-	printf ("r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\n",
-		regs->ARM_r7, regs->ARM_r6, regs->ARM_r5, regs->ARM_r4);
-	printf ("r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\n",
-		regs->ARM_r3, regs->ARM_r2, regs->ARM_r1, regs->ARM_r0);
-	printf ("Flags: %c%c%c%c",
-		flags & PSR_N_BIT ? 'N' : 'n',
-		flags & PSR_Z_BIT ? 'Z' : 'z',
-		flags & PSR_C_BIT ? 'C' : 'c', flags & PSR_V_BIT ? 'V' : 'v');
-	printf ("  IRQs %s  FIQs %s  Mode %s%s\n",
-		interrupts_enabled (regs) ? "on" : "off",
-		fast_interrupts_enabled (regs) ? "on" : "off",
-		processor_modes[processor_mode (regs)],
-		thumb_mode (regs) ? " (T)" : "");
-#ifdef CONFIG_ARM_UNWIND
-	unwind_backtrace(regs);
-#endif
-}
-
 static void __noreturn do_exception(struct pt_regs *pt_regs)
 {
-	show_regs(pt_regs);
-
 	panic("");
 }
 =

@@ -121,14 +75,6 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
  */
 void do_data_abort (struct pt_regs *pt_regs)
 {
-	u32 far;
-
-	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=3Dr" (far) : : "cc");
-
-	printf("unable to handle %s at address 0x%08x\n",
-			far < PAGE_SIZE ? "NULL pointer dereference" :
-			"paging request", far);
-
 	do_exception(pt_regs);
 }
 =

@@ -156,6 +102,43 @@ void do_irq (struct pt_regs *pt_regs)
 	do_exception(pt_regs);
 }
 =

+void do_bad_sync(struct pt_regs *pt_regs)
+{
+	printf("bad sync\n");
+	do_exception(pt_regs);
+}
+
+void do_bad_irq(struct pt_regs *pt_regs)
+{
+	printf("bad irq\n");
+	do_exception(pt_regs);
+}
+
+void do_bad_fiq(struct pt_regs *pt_regs)
+{
+	printf("bad fiq\n");
+	do_exception(pt_regs);
+}
+
+void do_bad_error(struct pt_regs *pt_regs)
+{
+	printf("bad error\n");
+	do_exception(pt_regs);
+}
+
+void do_sync(struct pt_regs *pt_regs)
+{
+	printf("sync exception\n");
+	do_exception(pt_regs);
+}
+
+
+void do_error(struct pt_regs *pt_regs)
+{
+	printf("error exception\n");
+	do_exception(pt_regs);
+}
+
 extern volatile int arm_ignore_data_abort;
 extern volatile int arm_data_abort_occurred;
 =

diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index e5baa12..0691b2b 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -1,60 +1,43 @@
 #include <linux/linkage.h>
 #include <init.h>
 #include <asm/system.h>
+#include <asm/gic.h>
+#include <asm-generic/memory_layout.h>
 =

 .section ".text_bare_init_","ax"
+
 ENTRY(arm_cpu_lowlevel_init)
-	/* save lr, since it may be banked away with a processor mode change */
-	mov	r2, lr
-	/* set the cpu to SVC32 mode, mask irq and fiq */
-	mrs	r12, cpsr
-	bic	r12, r12, #0x1f
-	orr	r12, r12, #0xd3
-	msr	cpsr, r12
-
-#if __LINUX_ARM_ARCH__ >=3D 6
-	/*
-	 * ICIALLU: Invalidate all instruction caches to PoU,
-	 * includes flushing of branch predictors.
-	 * Even if the i-cache is off it might contain stale entries
-	 * that are better discarded before enabling the cache.
-	 * Architectually this is even possible after a cold reset.
-	 */
-	mcr	p15, 0, r12, c7, c5, 0
-	/* DSB, ensure completion of the invalidation */
-	mcr	p15, 0, r12, c7, c10, 4
-	/*
-	 * ISB, ensure instruction fetch path is in sync.
-	 * Note that the ARM Architecture Reference Manual, ARMv7-A and ARMv7-R
-	 * edition (ARM DDI 0406C.c) doesn't define this instruction in the
-	 * ARMv6 part (D12.7.10). It only has: "Support of additional
-	 * operations is IMPLEMENTATION DEFINED".
-	 * But an earlier version of the ARMARM (ARM DDI 0100I) does define it
-	 * as "Flush prefetch buffer (PrefetchFlush)".
-	 */
-	mcr	p15, 0, r12, c7, c5, 4
-#endif
-
-	/* disable MMU stuff and data/unified caches */
-	mrc	p15, 0, r12, c1, c0, 0		/* SCTLR */
-	bic	r12, r12, #(CR_M | CR_C | CR_B)
-	bic	r12, r12, #(CR_S | CR_R | CR_V)
-
-	/* enable instruction cache */
-	orr	r12, r12, #CR_I
-
-#if __LINUX_ARM_ARCH__ >=3D 6
-	orr	r12, r12, #CR_U
-	bic	r12, r12, #CR_A
-#else
-	orr	r12, r12, #CR_A
-#endif
-
-#ifdef __ARMEB__
-	orr	r12, r12, #CR_B
-#endif
-
-	mcr	p15, 0, r12, c1, c0, 0		/* SCTLR */
-
-	mov	pc, r2
+	adr	x0, vectors
+	mrs	x1, CurrentEL
+	cmp	x1, #0xC		/* Check EL3 state */
+	b.eq	1f
+	cmp	x1, #0x8		/* Check EL2 state */
+	b.eq	2f
+	cmp	x1, #0x4		/* Check EL1 state */
+	b.eq	3f
+
+1:
+	msr	vbar_el3, x0
+	mov	x0, #1			/* Non-Secure EL0/1 */
+	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
+	msr	scr_el3, x0
+	msr	cptr_el3, xzr
+	b	done
+
+2:
+	msr	vbar_el2, x0
+	mov	x0, #0x33ff		/* Enable FP/SIMD */
+	msr	cptr_el2, x0
+	b	done
+
+
+3:
+	msr	vbar_el1, x0
+	mov	x0, #(3 << 20)		/* Enable FP/SIMD */
+	msr	cpacr_el1, x0
+	b	done
+
+done:
+	ret
+
 ENDPROC(arm_cpu_lowlevel_init)
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index a31bce4..b171f80 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -32,54 +32,8 @@
 =

 #include "mmu.h"
 =

-static unsigned long *ttb;
-
-static void create_sections(unsigned long virt, unsigned long phys, int si=
ze_m,
-		unsigned int flags)
-{
-	int i;
-
-	phys >>=3D 20;
-	virt >>=3D 20;
-
-	for (i =3D size_m; i > 0; i--, virt++, phys++)
-		ttb[virt] =3D (phys << 20) | flags;
-
-	__mmu_cache_flush();
-}
-
-/*
- * Do it the simple way for now and invalidate the entire
- * tlb
- */
-static inline void tlb_invalidate(void)
-{
-	asm volatile (
-		"mov	r0, #0\n"
-		"mcr	p15, 0, r0, c7, c10, 4;	@ drain write buffer\n"
-		"mcr	p15, 0, r0, c8, c6, 0;  @ invalidate D TLBs\n"
-		"mcr	p15, 0, r0, c8, c5, 0;  @ invalidate I TLBs\n"
-		:
-		:
-		: "r0"
-	);
-}
-
-#define PTE_FLAGS_CACHED_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEAB=
LE)
-#define PTE_FLAGS_WC_V7 PTE_EXT_TEX(1)
-#define PTE_FLAGS_UNCACHED_V7 (0)
-#define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_C=
ACHEABLE)
-#define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
-
-/*
- * PTE flags to set cached and uncached areas.
- * This will be determined at runtime.
- */
-static uint32_t pte_flags_cached;
-static uint32_t pte_flags_wc;
-static uint32_t pte_flags_uncached;
-
-#define PTE_MASK ((1 << 12) - 1)
+static uint64_t *ttb;
+static int free_idx;
 =

 static void arm_mmu_not_initialized_error(void)
 {
@@ -92,329 +46,175 @@ static void arm_mmu_not_initialized_error(void)
 	panic("MMU not initialized\n");
 }
 =

+
 /*
- * Create a second level translation table for the given virtual address.
- * We initially create a flat uncached mapping on it.
- * Not yet exported, but may be later if someone finds use for it.
+ * Do it the simple way for now and invalidate the entire
+ * tlb
  */
-static u32 *arm_create_pte(unsigned long virt)
+static inline void tlb_invalidate(void)
 {
-	u32 *table;
-	int i;
+	unsigned int el =3D current_el();
 =

-	table =3D memalign(0x400, 0x400);
+	dsb();
 =

-	if (!ttb)
-		arm_mmu_not_initialized_error();
-
-	ttb[virt >> 20] =3D (unsigned long)table | PMD_TYPE_TABLE;
-
-	for (i =3D 0; i < 256; i++) {
-		table[i] =3D virt | PTE_TYPE_SMALL | pte_flags_uncached;
-		virt +=3D PAGE_SIZE;
-	}
+	if (el =3D=3D 1)
+		__asm__ __volatile__("tlbi alle1\n\t" : : : "memory");
+	else if (el =3D=3D 2)
+		__asm__ __volatile__("tlbi alle2\n\t" : : : "memory");
+	else if (el =3D=3D 3)
+		__asm__ __volatile__("tlbi alle3\n\t" : : : "memory");
 =

-	return table;
+	dsb();
+	isb();
 }
 =

-static u32 *find_pte(unsigned long adr)
+static int level2shift(int level)
 {
-	u32 *table;
-
-	if (!ttb)
-		arm_mmu_not_initialized_error();
-
-	if ((ttb[adr >> 20] & PMD_TYPE_MASK) !=3D PMD_TYPE_TABLE) {
-		struct memory_bank *bank;
-		int i =3D 0;
+	/* Page is 12 bits wide, every level translates 9 bits */
+	return (12 + 9 * (3 - level));
+}
 =

-		/*
-		 * This should only be called for page mapped memory inside our
-		 * memory banks. It's a bug to call it with section mapped memory
-		 * locations.
-		 */
-		pr_crit("%s: TTB for address 0x%08lx is not of type table\n",
-				__func__, adr);
-		pr_crit("Memory banks:\n");
-		for_each_memory_bank(bank)
-			pr_crit("#%d 0x%08lx - 0x%08lx\n", i, bank->start,
-					bank->start + bank->size - 1);
-		BUG();
-	}
+static uint64_t level2mask(int level)
+{
+	uint64_t mask =3D -EINVAL;
 =

-	/* find the coarse page table base address */
-	table =3D (u32 *)(ttb[adr >> 20] & ~0x3ff);
+	if (level =3D=3D 1)
+		mask =3D L1_ADDR_MASK;
+	else if (level =3D=3D 2)
+		mask =3D L2_ADDR_MASK;
+	else if (level =3D=3D 3)
+		mask =3D L3_ADDR_MASK;
 =

-	/* find second level descriptor */
-	return &table[(adr >> PAGE_SHIFT) & 0xff];
+	return mask;
 }
 =

-static void dma_flush_range(unsigned long start, unsigned long end)
+static int pte_type(uint64_t *pte)
 {
-	__dma_flush_range(start, end);
-	if (outer_cache.flush_range)
-		outer_cache.flush_range(start, end);
+	return *pte & PMD_TYPE_MASK;
 }
 =

-static void dma_inv_range(unsigned long start, unsigned long end)
+static void set_table(uint64_t *pt, uint64_t *table_addr)
 {
-	if (outer_cache.inv_range)
-		outer_cache.inv_range(start, end);
-	__dma_inv_range(start, end);
+	uint64_t val;
+
+	val =3D PMD_TYPE_TABLE | (uint64_t)table_addr;
+	*pt =3D val;
 }
 =

-static int __remap_range(void *_start, size_t size, u32 pte_flags)
+static uint64_t *create_table(void)
 {
-	unsigned long start =3D (unsigned long)_start;
-	u32 *p;
-	int numentries, i;
-
-	numentries =3D size >> PAGE_SHIFT;
-	p =3D find_pte(start);
-
-	for (i =3D 0; i < numentries; i++) {
-		p[i] &=3D ~PTE_MASK;
-		p[i] |=3D pte_flags | PTE_TYPE_SMALL;
-	}
+	uint64_t *new_table =3D ttb + free_idx * GRANULE_SIZE;
 =

-	dma_flush_range((unsigned long)p,
-			(unsigned long)p + numentries * sizeof(u32));
+	/* Mark all entries as invalid */
+	memset(new_table, 0, GRANULE_SIZE);
 =

-	tlb_invalidate();
+	free_idx++;
 =

-	return 0;
+	return new_table;
 }
 =

-int arch_remap_range(void *start, size_t size, unsigned flags)
+static uint64_t *get_level_table(uint64_t *pte)
 {
-	u32 pte_flags;
-
-	switch (flags) {
-	case MAP_CACHED:
-		pte_flags =3D pte_flags_cached;
-		break;
-	case MAP_UNCACHED:
-		pte_flags =3D pte_flags_uncached;
-		break;
-	default:
-		return -EINVAL;
+	uint64_t *table =3D (uint64_t *)(*pte & XLAT_ADDR_MASK);
+
+	if (pte_type(pte) !=3D PMD_TYPE_TABLE) {
+		table =3D create_table();
+		set_table(pte, table);
 	}
 =

-	return __remap_range(start, size, pte_flags);
+	return table;
 }
 =

-void *map_io_sections(unsigned long phys, void *_start, size_t size)
+static uint64_t *find_pte(uint64_t addr)
 {
-	unsigned long start =3D (unsigned long)_start, sec;
+	uint64_t *pte;
+	uint64_t block_shift;
+	uint64_t idx;
+	int i;
 =

-	phys >>=3D 20;
-	for (sec =3D start; sec < start + size; sec +=3D (1 << 20))
-		ttb[sec >> 20] =3D (phys++ << 20) | PMD_SECT_DEF_UNCACHED;
+	pte =3D ttb;
 =

-	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
-	tlb_invalidate();
-	return _start;
+	for (i =3D 1; i < 4; i++) {
+		block_shift =3D level2shift(i);
+		idx =3D (addr & level2mask(i)) >> block_shift;
+		pte +=3D idx;
+
+		if ((pte_type(pte) !=3D PMD_TYPE_TABLE) || (block_shift <=3D GRANULE_SIZ=
E_SHIFT))
+			break;
+		else
+			pte =3D (uint64_t *)(*pte & XLAT_ADDR_MASK);
+	}
+
+	return pte;
 }
 =

-/*
- * remap the memory bank described by mem cachable and
- * bufferable
- */
-static int arm_mmu_remap_sdram(struct memory_bank *bank)
+static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64=
_t attr)
 {
-	unsigned long phys =3D (unsigned long)bank->start;
-	unsigned long ttb_start =3D phys >> 20;
-	unsigned long ttb_end =3D (phys >> 20) + (bank->size >> 20);
-	unsigned long num_ptes =3D bank->size >> 12;
-	int i, pte;
-	u32 *ptes;
+	uint64_t block_size;
+	uint64_t block_shift;
+	uint64_t *pte;
+	uint64_t idx;
+	uint64_t addr;
+	uint64_t *table;
+	int level;
 =

-	pr_debug("remapping SDRAM from 0x%08lx (size 0x%08lx)\n",
-			phys, bank->size);
+	if (!ttb)
+		arm_mmu_not_initialized_error();
 =

-	/*
-	 * We replace each 1MiB section in this range with second level page
-	 * tables, therefore we must have 1Mib aligment here.
-	 */
-	if ((phys & (SZ_1M - 1)) || (bank->size & (SZ_1M - 1)))
-		return -EINVAL;
+	addr =3D virt;
 =

-	ptes =3D xmemalign(PAGE_SIZE, num_ptes * sizeof(u32));
+	attr &=3D ~(PMD_TYPE_SECT);
 =

-	pr_debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
-			ptes, ttb_start, ttb_end);
+	while (size) {
+		table =3D ttb;
+		for (level =3D 1; level < 4; level++) {
+			block_shift =3D level2shift(level);
+			idx =3D (addr & level2mask(level)) >> block_shift;
+			block_size =3D (1 << block_shift);
 =

-	for (i =3D 0; i < num_ptes; i++) {
-		ptes[i] =3D (phys + i * PAGE_SIZE) | PTE_TYPE_SMALL |
-			pte_flags_cached;
-	}
+			pte =3D table + idx;
 =

-	pte =3D 0;
+			if (level =3D=3D 3)
+				attr |=3D PMD_TYPE_PAGE;
+			else
+				attr |=3D PMD_TYPE_SECT;
 =

-	for (i =3D ttb_start; i < ttb_end; i++) {
-		ttb[i] =3D (unsigned long)(&ptes[pte]) | PMD_TYPE_TABLE |
-			(0 << 4);
-		pte +=3D 256;
-	}
+			if (size >=3D block_size && IS_ALIGNED(addr, block_size)) {
+				*pte =3D phys | attr;
+				addr +=3D block_size;
+				phys +=3D block_size;
+				size -=3D block_size;
+				break;
 =

-	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
-	dma_flush_range((unsigned long)ptes,
-			(unsigned long)ptes + num_ptes * sizeof(u32));
+			}
 =

-	tlb_invalidate();
+			table =3D get_level_table(pte);
+		}
 =

-	return 0;
+	}
 }
-/*
- * We have 8 exception vectors and the table consists of absolute
- * jumps, so we need 8 * 4 bytes for the instructions and another
- * 8 * 4 bytes for the addresses.
- */
-#define ARM_VECTORS_SIZE	(sizeof(u32) * 8 * 2)
-
-#define ARM_HIGH_VECTORS	0xffff0000
-#define ARM_LOW_VECTORS		0x0
 =

-/**
- * create_vector_table - create a vector table at given address
- * @adr - The address where the vector table should be created
- *
- * After executing this function the vector table is found at the
- * virtual address @adr.
- */
-static void create_vector_table(unsigned long adr)
+static void create_sections(uint64_t virt, uint64_t phys, uint64_t size_m,=
 uint64_t flags)
 {
-	struct resource *vectors_sdram;
-	void *vectors;
-	u32 *exc;
-	int idx;
-
-	vectors_sdram =3D request_sdram_region("vector table", adr, SZ_4K);
-	if (vectors_sdram) {
-		/*
-		 * The vector table address is inside the SDRAM physical
-		 * address space. Use the existing identity mapping for
-		 * the vector table.
-		 */
-		pr_debug("Creating vector table, virt =3D phys =3D 0x%08lx\n", adr);
-		vectors =3D (void *)vectors_sdram->start;
-	} else {
-		/*
-		 * The vector table address is outside of SDRAM. Create
-		 * a secondary page table for the section and map
-		 * allocated memory to the vector address.
-		 */
-		vectors =3D xmemalign(PAGE_SIZE, PAGE_SIZE);
-		pr_debug("Creating vector table, virt =3D 0x%p, phys =3D 0x%08lx\n",
-			 vectors, adr);
-		exc =3D arm_create_pte(adr);
-		idx =3D (adr & (SZ_1M - 1)) >> PAGE_SHIFT;
-		exc[idx] =3D (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
-	}
 =

-	arm_fixup_vectors();
-
-	memset(vectors, 0, PAGE_SIZE);
-	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_star=
t);
+	map_region(virt, phys, size_m, flags);
 }
 =

-/**
- * set_vector_table - let CPU use the vector table at given address
- * @adr - The address of the vector table
- *
- * Depending on the CPU the possibilities differ. ARMv7 and later allow
- * to map the vector table to arbitrary addresses. Other CPUs only allow
- * vectors at 0xffff0000 or at 0x0.
- */
-static int set_vector_table(unsigned long adr)
+void *map_io_sections(uint64_t phys, void *_start, size_t size)
 {
-	u32 cr;
-
-	if (cpu_architecture() >=3D CPU_ARCH_ARMv7) {
-		pr_debug("Vectors are at 0x%08lx\n", adr);
-		set_vbar(adr);
-		return 0;
-	}
 =

-	if (adr =3D=3D ARM_HIGH_VECTORS) {
-		cr =3D get_cr();
-		cr |=3D CR_V;
-		set_cr(cr);
-		cr =3D get_cr();
-		if (cr & CR_V) {
-			pr_debug("Vectors are at 0x%08lx\n", adr);
-			return 0;
-		} else {
-			return -EINVAL;
-		}
-	}
-
-	if (adr =3D=3D ARM_LOW_VECTORS) {
-		cr =3D get_cr();
-		cr &=3D ~CR_V;
-		set_cr(cr);
-		cr =3D get_cr();
-		if (cr & CR_V) {
-			return -EINVAL;
-		} else {
-			pr_debug("Vectors are at 0x%08lx\n", adr);
-			return 0;
-		}
-	}
+	map_region((uint64_t)_start, phys, (uint64_t)size, PMD_SECT_DEF_UNCACHED);
 =

-	return -EINVAL;
+	tlb_invalidate();
+	return _start;
 }
 =

-static void create_zero_page(void)
-{
-	struct resource *zero_sdram;
-	u32 *zero;
-
-	zero_sdram =3D request_sdram_region("zero page", 0x0, SZ_4K);
-	if (zero_sdram) {
-		/*
-		 * Here we would need to set the second level page table
-		 * entry to faulting. This is not yet implemented.
-		 */
-		pr_debug("zero page is in SDRAM area, currently not supported\n");
-	} else {
-		zero =3D arm_create_pte(0x0);
-		zero[0] =3D 0;
-		pr_debug("Created zero page\n");
-	}
-}
 =

-/*
- * Map vectors and zero page
- */
-static void vectors_init(void)
+int arch_remap_range(void *_start, size_t size, unsigned flags)
 {
-	/*
-	 * First try to use the vectors where they actually are, works
-	 * on ARMv7 and later.
-	 */
-	if (!set_vector_table((unsigned long)__exceptions_start)) {
-		arm_fixup_vectors();
-		create_zero_page();
-		return;
-	}
-
-	/*
-	 * Next try high vectors at 0xffff0000.
-	 */
-	if (!set_vector_table(ARM_HIGH_VECTORS)) {
-		create_zero_page();
-		create_vector_table(ARM_HIGH_VECTORS);
-		return;
-	}
+	map_region((uint64_t)_start, (uint64_t)_start, (uint64_t)size, flags);
 =

-	/*
-	 * As a last resort use low vectors at 0x0. With this we can't
-	 * set the zero page to faulting and can't catch NULL pointer
-	 * exceptions.
-	 */
-	set_vector_table(ARM_LOW_VECTORS);
-	create_vector_table(ARM_LOW_VECTORS);
+	return 0;
 }
 =

 /*
@@ -423,7 +223,6 @@ static void vectors_init(void)
 static int mmu_init(void)
 {
 	struct memory_bank *bank;
-	int i;
 =

 	if (list_empty(&memory_banks))
 		/*
@@ -434,56 +233,31 @@ static int mmu_init(void)
 		 */
 		panic("MMU: No memory bank found! Cannot continue\n");
 =

-	arm_set_cache_functions();
-
-	if (cpu_architecture() >=3D CPU_ARCH_ARMv7) {
-		pte_flags_cached =3D PTE_FLAGS_CACHED_V7;
-		pte_flags_wc =3D PTE_FLAGS_WC_V7;
-		pte_flags_uncached =3D PTE_FLAGS_UNCACHED_V7;
-	} else {
-		pte_flags_cached =3D PTE_FLAGS_CACHED_V4;
-		pte_flags_wc =3D PTE_FLAGS_UNCACHED_V4;
-		pte_flags_uncached =3D PTE_FLAGS_UNCACHED_V4;
-	}
-
-	if (get_cr() & CR_M) {
-		/*
-		 * Early MMU code has already enabled the MMU. We assume a
-		 * flat 1:1 section mapping in this case.
-		 */
-		asm volatile ("mrc  p15,0,%0,c2,c0,0" : "=3Dr"(ttb));
-
-		/* Clear unpredictable bits [13:0] */
-		ttb =3D (unsigned long *)((unsigned long)ttb & ~0x3fff);
-
+	if (get_sctlr() & CR_M) {
+		ttb =3D (uint64_t *)get_ttbr(1);
 		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
 			/*
-			 * This can mean that:
-			 * - the early MMU code has put the ttb into a place
-			 *   which we don't have inside our available memory
-			 * - Somebody else has occupied the ttb region which means
-			 *   the ttb will get corrupted.
-			 */
+			* This can mean that:
+			* - the early MMU code has put the ttb into a place
+			*   which we don't have inside our available memory
+			* - Somebody else has occupied the ttb region which means
+			*   the ttb will get corrupted.
+			*/
 			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
-					ttb);
+				ttb);
 	} else {
-		ttb =3D memalign(0x10000, 0x4000);
-	}
+		ttb =3D memalign(0x1000, SZ_16K);
+		free_idx =3D 1;
 =

-	pr_debug("ttb: 0x%p\n", ttb);
+		memset(ttb, 0, GRANULE_SIZE);
 =

-	/* Set the ttb register */
-	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
+		set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, MEMORY_ATTR);
+	}
 =

-	/* Set the Domain Access Control Register */
-	i =3D 0x3;
-	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
+	pr_debug("ttb: 0x%p\n", ttb);
 =

 	/* create a flat mapping using 1MiB sections */
-	create_sections(0, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
-			PMD_TYPE_SECT);
-
-	vectors_init();
+	create_sections(0, 0, GRANULE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ =
| PMD_TYPE_SECT);
 =

 	/*
 	 * First remap sdram cached using sections.
@@ -491,92 +265,70 @@ static int mmu_init(void)
 	 * below
 	 */
 	for_each_memory_bank(bank)
-		create_sections(bank->start, bank->start, bank->size >> 20,
-				PMD_SECT_DEF_CACHED);
-
-	__mmu_cache_on();
-
-	/*
-	 * Now that we have the MMU and caches on remap sdram again using
-	 * page tables
-	 */
-	for_each_memory_bank(bank)
-		arm_mmu_remap_sdram(bank);
+		create_sections(bank->start, bank->start, bank->size, PMD_SECT_DEF_CACHE=
D);
 =

 	return 0;
 }
 mmu_initcall(mmu_init);
 =

-void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+void mmu_enable(void)
 {
-	void *ret;
-
-	size =3D PAGE_ALIGN(size);
-	ret =3D xmemalign(PAGE_SIZE, size);
-	if (dma_handle)
-		*dma_handle =3D (dma_addr_t)ret;
-
-	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
+	if (!ttb)
+		arm_mmu_not_initialized_error();
 =

-	__remap_range(ret, size, pte_flags_uncached);
+	if (!(get_sctlr() & CR_M)) {
 =

-	return ret;
+		isb();
+		set_sctlr(get_sctlr() | CR_M | CR_C | CR_I);
+	}
 }
 =

-void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+void mmu_disable(void)
 {
-	void *ret;
+	unsigned int sctlr;
+
+	if (!ttb)
+		arm_mmu_not_initialized_error();
 =

-	size =3D PAGE_ALIGN(size);
-	ret =3D xmemalign(PAGE_SIZE, size);
-	if (dma_handle)
-		*dma_handle =3D (dma_addr_t)ret;
+	sctlr =3D get_sctlr();
+	sctlr &=3D ~(CR_M | CR_C | CR_I);
 =

-	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
+	tlb_invalidate();
 =

-	__remap_range(ret, size, pte_flags_wc);
+	dsb();
+	isb();
 =

-	return ret;
-}
+	set_sctlr(sctlr);
 =

-unsigned long virt_to_phys(volatile void *virt)
-{
-	return (unsigned long)virt;
+	dsb();
+	isb();
 }
 =

-void *phys_to_virt(unsigned long phys)
+void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb)
 {
-	return (void *)phys;
-}
+	ttb =3D (uint64_t *)_ttb;
 =

-void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
-{
-	size =3D PAGE_ALIGN(size);
-	__remap_range(mem, size, pte_flags_cached);
+	memset(ttb, 0, GRANULE_SIZE);
+	free_idx =3D 1;
+
+	set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, MEMORY_ATTR);
 =

-	free(mem);
+	create_sections(0, 0, 4096, PMD_SECT_AP_WRITE |
+			PMD_SECT_AP_READ | PMD_TYPE_SECT);
+
+	create_sections(membase, membase, memsize, PMD_SECT_AP_WRITE |
+		PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
+
+	isb();
+	set_sctlr(get_sctlr() | CR_M);
 }
 =

-void dma_sync_single_for_cpu(unsigned long address, size_t size,
-			     enum dma_data_direction dir)
+unsigned long virt_to_phys(volatile void *virt)
 {
-	if (dir !=3D DMA_TO_DEVICE) {
-		if (outer_cache.inv_range)
-			outer_cache.inv_range(address, address + size);
-		__dma_inv_range(address, address + size);
-	}
+	return (unsigned long)virt;
 }
 =

-void dma_sync_single_for_device(unsigned long address, size_t size,
-				enum dma_data_direction dir)
+void *phys_to_virt(unsigned long phys)
 {
-	if (dir =3D=3D DMA_FROM_DEVICE) {
-		__dma_inv_range(address, address + size);
-		if (outer_cache.inv_range)
-			outer_cache.inv_range(address, address + size);
-	} else {
-		__dma_clean_range(address, address + size);
-		if (outer_cache.clean_range)
-			outer_cache.clean_range(address, address + size);
-	}
+	return (void *)phys;
 }
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 79ebc80..a20adec 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -1,6 +1,159 @@
 #ifndef __ARM_MMU_H
 #define __ARM_MMU_H
 =

+#define UL(x)		_AC(x, UL)
+
+#define UNUSED_DESC                0x6EbAAD0BBADbA6E0
+
+#define VA_START                   0x0
+#define BITS_PER_VA                33
+
+/* Granule size of 4KB is being used */
+#define GRANULE_SIZE_SHIFT         12
+#define GRANULE_SIZE               (1 << GRANULE_SIZE_SHIFT)
+#define XLAT_ADDR_MASK             ((1UL << BITS_PER_VA) - GRANULE_SIZE)
+#define GRANULE_SIZE_MASK          ((1 << GRANULE_SIZE_SHIFT) - 1)
+
+#define BITS_RESOLVED_PER_LVL   (GRANULE_SIZE_SHIFT - 3)
+#define L1_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LV=
L * 2)
+#define L2_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LV=
L * 1)
+#define L3_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LV=
L * 0)
+
+
+#define L1_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L1_ADDR_=
SHIFT)
+#define L2_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L2_ADDR_=
SHIFT)
+#define L3_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L3_ADDR_=
SHIFT)
+
+/* These macros give the size of the region addressed by each entry of a x=
lat
+   table at any given level */
+#define L3_XLAT_SIZE               (1UL << L3_ADDR_SHIFT)
+#define L2_XLAT_SIZE               (1UL << L2_ADDR_SHIFT)
+#define L1_XLAT_SIZE               (1UL << L1_ADDR_SHIFT)
+
+#define GRANULE_MASK	GRANULE_SIZE
+
+/*
+ * Memory types
+ */
+#define MT_DEVICE_NGNRNE	0
+#define MT_DEVICE_NGNRE		1
+#define MT_DEVICE_GRE		2
+#define MT_NORMAL_NC		3
+#define MT_NORMAL		4
+
+#define MEMORY_ATTRIBUTES	((0x00 << (MT_DEVICE_NGNRNE*8)) |	\
+		(0x04 << (MT_DEVICE_NGNRE*8)) |		\
+		(0x0c << (MT_DEVICE_GRE*8)) |		\
+		(0x44 << (MT_NORMAL_NC*8)) |		\
+		(UL(0xff) << (MT_NORMAL*8)))
+
+/*
+ * Hardware page table definitions.
+ *
+ * Level 2 descriptor (PMD).
+ */
+#define PMD_TYPE_MASK		(3 << 0)
+#define PMD_TYPE_FAULT		(0 << 0)
+#define PMD_TYPE_TABLE		(3 << 0)
+#define PMD_TYPE_PAGE		(3 << 0)
+#define PMD_TYPE_SECT		(1 << 0)
+
+/*
+ * Section
+ */
+#define PMD_SECT_NON_SHARE	(0 << 8)
+#define PMD_SECT_OUTER_SHARE	(2 << 8)
+#define PMD_SECT_INNER_SHARE	(3 << 8)
+#define PMD_SECT_AF		(1 << 10)
+#define PMD_SECT_NG		(1 << 11)
+#define PMD_SECT_PXN		(UL(1) << 53)
+#define PMD_SECT_UXN		(UL(1) << 54)
+
+/*
+ * AttrIndx[2:0]
+ */
+#define PMD_ATTRINDX(t)		((t) << 2)
+#define PMD_ATTRINDX_MASK	(7 << 2)
+
+/*
+ * TCR flags.
+ */
+#define TCR_T0SZ(x)		((64 - (x)) << 0)
+#define TCR_IRGN_NC		(0 << 8)
+#define TCR_IRGN_WBWA		(1 << 8)
+#define TCR_IRGN_WT		(2 << 8)
+#define TCR_IRGN_WBNWA		(3 << 8)
+#define TCR_IRGN_MASK		(3 << 8)
+#define TCR_ORGN_NC		(0 << 10)
+#define TCR_ORGN_WBWA		(1 << 10)
+#define TCR_ORGN_WT		(2 << 10)
+#define TCR_ORGN_WBNWA		(3 << 10)
+#define TCR_ORGN_MASK		(3 << 10)
+#define TCR_SHARED_NON		(0 << 12)
+#define TCR_SHARED_OUTER	(2 << 12)
+#define TCR_SHARED_INNER	(3 << 12)
+#define TCR_TG0_4K		(0 << 14)
+#define TCR_TG0_64K		(1 << 14)
+#define TCR_TG0_16K		(2 << 14)
+#define TCR_EL1_IPS_BITS	(UL(3) << 32)	/* 42 bits physical address */
+#define TCR_EL2_IPS_BITS	(3 << 16)	/* 42 bits physical address */
+#define TCR_EL3_IPS_BITS	(3 << 16)	/* 42 bits physical address */
+
+#define TCR_EL1_RSVD		(1 << 31)
+#define TCR_EL2_RSVD		(1 << 31 | 1 << 23)
+#define TCR_EL3_RSVD		(1 << 31 | 1 << 23)
+
+#define TCR_FLAGS		(TCR_TG0_4K | \
+		TCR_SHARED_OUTER | \
+		TCR_SHARED_INNER | \
+		TCR_IRGN_WBWA | \
+		TCR_ORGN_WBWA | \
+		TCR_T0SZ(BITS_PER_VA))
+
+#define MEMORY_ATTR     (PMD_SECT_AF | PMD_SECT_INNER_SHARE |    \
+		PMD_ATTRINDX(MT_NORMAL) |       \
+		PMD_TYPE_SECT)
+
+#ifndef __ASSEMBLY__
+
+static inline void set_ttbr_tcr_mair(int el, uint64_t table, uint64_t tcr,=
 uint64_t attr)
+{
+	asm volatile("dsb sy");
+	if (el =3D=3D 1) {
+		asm volatile("msr ttbr0_el1, %0" : : "r" (table) : "memory");
+		asm volatile("msr tcr_el1, %0" : : "r" (tcr) : "memory");
+		asm volatile("msr mair_el1, %0" : : "r" (attr) : "memory");
+	} else if (el =3D=3D 2) {
+		asm volatile("msr ttbr0_el2, %0" : : "r" (table) : "memory");
+		asm volatile("msr tcr_el2, %0" : : "r" (tcr) : "memory");
+		asm volatile("msr mair_el2, %0" : : "r" (attr) : "memory");
+	} else if (el =3D=3D 3) {
+		asm volatile("msr ttbr0_el3, %0" : : "r" (table) : "memory");
+		asm volatile("msr tcr_el3, %0" : : "r" (tcr) : "memory");
+		asm volatile("msr mair_el3, %0" : : "r" (attr) : "memory");
+	} else {
+		hang();
+	}
+	asm volatile("isb");
+}
+
+static inline uint64_t get_ttbr(int el)
+{
+	uint64_t val;
+	if (el =3D=3D 1) {
+		asm volatile("mrs %0, ttbr0_el1" : "=3Dr" (val));
+	} else if (el =3D=3D 2) {
+		asm volatile("mrs %0, ttbr0_el2" : "=3Dr" (val));
+	} else if (el =3D=3D 3) {
+		asm volatile("mrs %0, ttbr0_el3" : "=3Dr" (val));
+	} else {
+		hang();
+	}
+
+	return val;
+}
+#endif
+
 #ifdef CONFIG_MMU
 void __mmu_cache_on(void);
 void __mmu_cache_off(void);
@@ -11,4 +164,6 @@ static inline void __mmu_cache_off(void) {}
 static inline void __mmu_cache_flush(void) {}
 #endif
 =

+void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb);
+
 #endif /* __ARM_MMU_H */
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index e037d91..1d017bc 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -31,7 +31,7 @@
 #include <malloc.h>
 =

 #include <debug_ll.h>
-#include "mmu-early.h"
+#include "mmu.h"
 =

 unsigned long arm_stack_top;
 static unsigned long arm_head_bottom;
@@ -151,7 +151,7 @@ __noreturn void barebox_non_pbl_start(unsigned long mem=
base,
 		relocate_to_adr(barebox_base);
 	}
 =

-	setup_c();
+//	setup_c();
 =

 	barrier();
 =

@@ -170,7 +170,7 @@ __noreturn void barebox_non_pbl_start(unsigned long mem=
base,
 		} else {
 			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
 			arm_early_mmu_cache_invalidate();
-			mmu_early_enable(membase, memsize, ttb);
+			mmu_early_enable((uint64_t)membase, (uint64_t)memsize, (uint64_t)ttb);
 		}
 	}
 =

@@ -193,7 +193,7 @@ __noreturn void barebox_non_pbl_start(unsigned long mem=
base,
 		if (totalsize) {
 			unsigned long mem =3D arm_mem_boarddata(membase, endmem,
 							      totalsize);
-			pr_debug("found %s in boarddata, copying to 0x%08lx\n",
+			pr_debug("found %s in boarddata, copying to 0x%lu\n",
 				 name, mem);
 			barebox_boarddata =3D memcpy((void *)mem, boarddata,
 						   totalsize);
@@ -229,7 +229,7 @@ __noreturn void barebox_non_pbl_start(unsigned long mem=
base,
 =

 #ifndef CONFIG_PBL_IMAGE
 =

-void __naked __section(.text_entry) start(void)
+void __section(.text_entry) start(void)
 {
 	barebox_arm_head();
 }
@@ -239,7 +239,7 @@ void __naked __section(.text_entry) start(void)
  * First function in the uncompressed image. We get here from
  * the pbl. The stack already has been set up by the pbl.
  */
-void __naked __section(.text_entry) start(unsigned long membase,
+void __section(.text_entry) start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	barebox_non_pbl_start(membase, memsize, boarddata);
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b8e2e9f..5bcce6b 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -60,7 +60,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long mem=
base,
 		 * to the current address. Otherwise it may be a readonly location.
 		 * Copy and relocate to the start of the memory in this case.
 		 */
-		if (pc > membase && pc - membase < memsize)
+		if (pc > membase && pc < membase + memsize)
 			relocate_to_current_adr();
 		else
 			relocate_to_adr(membase);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/bare=
box-arm.h
index 8e7b45c..6713326 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -97,7 +97,7 @@ void *barebox_arm_boot_dtb(void);
 static inline unsigned long arm_mem_stack(unsigned long membase,
 					  unsigned long endmem)
 {
-	return endmem - SZ_64K - STACK_SIZE;
+	return endmem - STACK_SIZE;
 }
 =

 static inline unsigned long arm_mem_ttb(unsigned long membase,
diff --git a/arch/arm/include/asm/bitops.h b/arch/arm/include/asm/bitops.h
index 138ebe2..ac85a0a 100644
--- a/arch/arm/include/asm/bitops.h
+++ b/arch/arm/include/asm/bitops.h
@@ -1,184 +1,48 @@
 /*
- * Copyright 1995, Russell King.
- * Various bits and pieces copyrights include:
- *  Linus Torvalds (test_bit).
+ * Copyright (C) 2012 ARM Ltd.
  *
- * bit 0 is the LSB of addr; bit 32 is the LSB of (addr+1).
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
  *
- * Please note that the code in this file should never be included
- * from user space.  Many of these are not implemented in assembler
- * since they would be too costly.  Also, they require priviledged
- * instructions (which are not available from user mode) to ensure
- * that they are atomic.
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
+#ifndef __ASM_BITOPS_H
+#define __ASM_BITOPS_H
 =

-#ifndef __ASM_ARM_BITOPS_H
-#define __ASM_ARM_BITOPS_H
+#include <linux/compiler.h>
 =

 #ifndef _LINUX_BITOPS_H
 #error only <linux/bitops.h> can be included directly
 #endif
 =

 /*
- * Functions equivalent of ops.h
- */
-static inline void __set_bit(int nr, volatile void *addr)
-{
-	((unsigned char *) addr)[nr >> 3] |=3D (1U << (nr & 7));
-}
-
-static inline void __clear_bit(int nr, volatile void *addr)
-{
-	((unsigned char *) addr)[nr >> 3] &=3D ~(1U << (nr & 7));
-}
-
-static inline void __change_bit(int nr, volatile void *addr)
-{
-	((unsigned char *) addr)[nr >> 3] ^=3D (1U << (nr & 7));
-}
-
-static inline int __test_and_set_bit(int nr, volatile void *addr)
-{
-	unsigned int mask =3D 1 << (nr & 7);
-	unsigned int oldval;
-
-	oldval =3D ((unsigned char *) addr)[nr >> 3];
-	((unsigned char *) addr)[nr >> 3] =3D oldval | mask;
-	return oldval & mask;
-}
-
-static inline int __test_and_clear_bit(int nr, volatile void *addr)
-{
-	unsigned int mask =3D 1 << (nr & 7);
-	unsigned int oldval;
-
-	oldval =3D ((unsigned char *) addr)[nr >> 3];
-	((unsigned char *) addr)[nr >> 3] =3D oldval & ~mask;
-	return oldval & mask;
-}
-
-static inline int __test_and_change_bit(int nr, volatile void *addr)
-{
-	unsigned int mask =3D 1 << (nr & 7);
-	unsigned int oldval;
-
-	oldval =3D ((unsigned char *) addr)[nr >> 3];
-	((unsigned char *) addr)[nr >> 3] =3D oldval ^ mask;
-	return oldval & mask;
-}
-
-/*
- * This routine doesn't need to be atomic.
- */
-static inline int test_bit(int nr, const void * addr)
-{
-    return ((unsigned char *) addr)[nr >> 3] & (1U << (nr & 7));
-}
-
-#define set_bit(x, y)			__set_bit(x, y)
-#define clear_bit(x, y)			__clear_bit(x, y)
-#define change_bit(x, y)		__change_bit(x, y)
-#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
-#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
-#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
-
-#ifndef __ARMEB__
-/*
- * These are the little endian definitions.
+ * Little endian assembly atomic bitops.
  */
-extern int _find_first_zero_bit_le(const void *p, unsigned size);
-extern int _find_next_zero_bit_le(const void *p, int size, int offset);
-extern int _find_first_bit_le(const unsigned long *p, unsigned size);
-extern int _find_next_bit_le(const unsigned long *p, int size, int offset);
-#define find_first_zero_bit(p, sz)	_find_first_zero_bit_le(p, sz)
-#define find_next_zero_bit(p, sz, off)	_find_next_zero_bit_le(p, sz, off)
-#define find_first_bit(p, sz)		_find_first_bit_le(p, sz)
-#define find_next_bit(p, sz, off)	_find_next_bit_le(p, sz, off)
+extern void set_bit(int nr, volatile unsigned long *p);
+extern void clear_bit(int nr, volatile unsigned long *p);
+extern void change_bit(int nr, volatile unsigned long *p);
+extern int test_and_set_bit(int nr, volatile unsigned long *p);
+extern int test_and_clear_bit(int nr, volatile unsigned long *p);
+extern int test_and_change_bit(int nr, volatile unsigned long *p);
 =

-#define WORD_BITOFF_TO_LE(x)		((x))
-
-#else		/* ! __ARMEB__ */
-
-/*
- * These are the big endian definitions.
- */
-extern int _find_first_zero_bit_be(const void *p, unsigned size);
-extern int _find_next_zero_bit_be(const void *p, int size, int offset);
-extern int _find_first_bit_be(const unsigned long *p, unsigned size);
-extern int _find_next_bit_be(const unsigned long *p, int size, int offset);
-#define find_first_zero_bit(p, sz)	_find_first_zero_bit_be(p, sz)
-#define find_next_zero_bit(p, sz, off)	_find_next_zero_bit_be(p, sz, off)
-#define find_first_bit(p, sz)		_find_first_bit_be(p, sz)
-#define find_next_bit(p, sz, off)	_find_next_bit_be(p, sz, off)
-
-#define WORD_BITOFF_TO_LE(x)		((x) ^ 0x18)
-
-#endif		/* __ARMEB__ */
-
-#if defined(__LINUX_ARM_ARCH__) && (__LINUX_ARM_ARCH__ >=3D 5)
-static inline int constant_fls(int x)
-{
-	int r =3D 32;
-
-	if (!x)
-		return 0;
-	if (!(x & 0xffff0000u)) {
-		x <<=3D 16;
-		r -=3D 16;
-	}
-	if (!(x & 0xff000000u)) {
-		x <<=3D 8;
-		r -=3D 8;
-	}
-	if (!(x & 0xf0000000u)) {
-		x <<=3D 4;
-		r -=3D 4;
-	}
-	if (!(x & 0xc0000000u)) {
-		x <<=3D 2;
-		r -=3D 2;
-	}
-	if (!(x & 0x80000000u)) {
-		x <<=3D 1;
-		r -=3D 1;
-	}
-	return r;
-}
-
-/*
- * On ARMv5 and above those functions can be implemented around
- * the clz instruction for much better code efficiency.
- */
-#define fls(x) \
-	(__builtin_constant_p(x) ? constant_fls(x) : \
-	({ int __r; asm("clz\t%0, %1" : "=3Dr"(__r) : "r"(x) : "cc"); 32-__r; }))
-#define ffs(x) ({ unsigned long __t =3D (x); fls(__t &-__t); })
-#define __ffs(x) (ffs(x) - 1)
-#define ffz(x) __ffs(~(x))
-#else		/* ! __ARM__USE_GENERIC_FF */
-/*
- * ffz =3D Find First Zero in word. Undefined if no zero exists,
- * so code should check against ~0UL first..
- */
-static inline unsigned long ffz(unsigned long word)
-{
-	int k;
-
-	word =3D ~word;
-	k =3D 31;
-	if (word & 0x0000ffff) { k -=3D 16; word <<=3D 16; }
-	if (word & 0x00ff0000) { k -=3D 8;  word <<=3D 8;  }
-	if (word & 0x0f000000) { k -=3D 4;  word <<=3D 4;  }
-	if (word & 0x30000000) { k -=3D 2;  word <<=3D 2;  }
-	if (word & 0x40000000) { k -=3D 1; }
-	return k;
-}
 #include <asm-generic/bitops/__ffs.h>
 #include <asm-generic/bitops/ffs.h>
+#include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/fls.h>
-#endif		/* __ARM__USE_GENERIC_FF */
+
+#include <asm-generic/bitops/ffz.h>
 #include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
 =

 #include <asm-generic/bitops/hweight.h>
 =

-#endif /* _ARM_BITOPS_H */
+#include <asm-generic/bitops/ops.h>
+
+#endif /* __ASM_BITOPS_H */
diff --git a/arch/arm/include/asm/boarddata.h b/arch/arm/include/asm/boardd=
ata.h
new file mode 100644
index 0000000..8c3c5f0
--- /dev/null
+++ b/arch/arm/include/asm/boarddata.h
@@ -0,0 +1,5 @@
+#ifndef __ASM_BOARDDATA_H
+#define __ASM_BOARDDATA_H
+
+
+#endif /* __ASM_BOARDDATA_H */
diff --git a/arch/arm/include/asm/cache-l2x0.h b/arch/arm/include/asm/cache=
-l2x0.h
index 9bb245b..963dd99 100644
--- a/arch/arm/include/asm/cache-l2x0.h
+++ b/arch/arm/include/asm/cache-l2x0.h
@@ -56,14 +56,6 @@
 #define L2X0_LINE_TAG			0xF30
 #define L2X0_DEBUG_CTRL			0xF40
 #define L2X0_PREFETCH_CTRL		0xF60
-#define   L2X0_DOUBLE_LINEFILL_EN			(1 << 30)
-#define   L2X0_INSTRUCTION_PREFETCH_EN			(1 << 29)
-#define   L2X0_DATA_PREFETCH_EN				(1 << 28)
-#define   L2X0_DOUBLE_LINEFILL_ON_WRAP_READ_DIS		(1 << 27)
-#define   L2X0_PREFETCH_DROP_EN				(1 << 24)
-#define   L2X0_INCR_DOUBLE_LINEFILL_EN			(1 << 23)
-#define   L2X0_ESCLUSIVE_SEQUENCE_EN			(1 << 21)
-
 #define L2X0_POWER_CTRL			0xF80
 #define   L2X0_DYNAMIC_CLK_GATING_EN	(1 << 1)
 #define   L2X0_STNDBY_MODE_EN		(1 << 0)
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 2f6eab0..5a524f3 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -1,9 +1,11 @@
 #ifndef __ASM_CACHE_H
 #define __ASM_CACHE_H
 =

+extern void v8_invalidate_icache_all(void);
+
 static inline void flush_icache(void)
 {
-	asm volatile("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
+	v8_invalidate_icache_all();
 }
 =

 int arm_set_cache_functions(void);
diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
index 98137b5..9525823 100644
--- a/arch/arm/include/asm/errata.h
+++ b/arch/arm/include/asm/errata.h
@@ -77,12 +77,3 @@ static inline void enable_arm_errata_794072_war(void)
 		"mcr	p15, 0, r0, c15, c0, 1\n"
 	);
 }
-
-static inline void enable_arm_errata_845369_war(void)
-{
-	__asm__ __volatile__ (
-		"mrc	p15, 0, r0, c15, c0, 1\n"
-		"orr	r0, r0, #1 << 22\n"
-		"mcr	p15, 0, r0, c15, c0, 1\n"
-	);
-}
diff --git a/arch/arm/include/asm/gic.h b/arch/arm/include/asm/gic.h
new file mode 100644
index 0000000..c7c17e3
--- /dev/null
+++ b/arch/arm/include/asm/gic.h
@@ -0,0 +1,128 @@
+#ifndef __GIC_H__
+#define __GIC_H__
+
+/* Generic Interrupt Controller Definitions */
+//#ifdef CONFIG_GICV3
+//#define GICD_BASE                       (0x2f000000)
+//#define GICR_BASE                       (0x2f100000)
+//#else
+
+//#if defined(CONFIG_TARGET_VEXPRESS64_BASE_FVP) || \
+        defined(CONFIG_TARGET_VEXPRESS64_BASE_FVP_DRAM)
+//#define GICD_BASE                       (0x2f000000)
+//#define GICC_BASE                       (0x2c000000)
+//#elif CONFIG_TARGET_VEXPRESS64_JUNO
+#define GIC_DIST_BASE                       (0x2C010000)
+#define GIC_CPU_BASE                       (0x2C02f000)
+//#else
+//#error "Unknown board variant"
+//#endif
+//#endif /* !CONFIG_GICV3 */
+
+/* Register offsets for the ARM generic interrupt controller (GIC) */
+
+#define GIC_DIST_OFFSET		0x1000
+#define GIC_CPU_OFFSET_A9	0x0100
+#define GIC_CPU_OFFSET_A15	0x2000
+
+/* Distributor Registers */
+#define GICD_CTLR		0x0000
+#define GICD_TYPER		0x0004
+#define GICD_IIDR		0x0008
+#define GICD_STATUSR		0x0010
+#define GICD_SETSPI_NSR		0x0040
+#define GICD_CLRSPI_NSR		0x0048
+#define GICD_SETSPI_SR		0x0050
+#define GICD_CLRSPI_SR		0x0058
+#define GICD_SEIR		0x0068
+#define GICD_IGROUPRn		0x0080
+#define GICD_ISENABLERn		0x0100
+#define GICD_ICENABLERn		0x0180
+#define GICD_ISPENDRn		0x0200
+#define GICD_ICPENDRn		0x0280
+#define GICD_ISACTIVERn		0x0300
+#define GICD_ICACTIVERn		0x0380
+#define GICD_IPRIORITYRn	0x0400
+#define GICD_ITARGETSRn		0x0800
+#define GICD_ICFGR		0x0c00
+#define GICD_IGROUPMODRn	0x0d00
+#define GICD_NSACRn		0x0e00
+#define GICD_SGIR		0x0f00
+#define GICD_CPENDSGIRn		0x0f10
+#define GICD_SPENDSGIRn		0x0f20
+#define GICD_IROUTERn		0x6000
+
+/* Cpu Interface Memory Mapped Registers */
+#define GICC_CTLR		0x0000
+#define GICC_PMR		0x0004
+#define GICC_BPR		0x0008
+#define GICC_IAR		0x000C
+#define GICC_EOIR		0x0010
+#define GICC_RPR		0x0014
+#define GICC_HPPIR		0x0018
+#define GICC_ABPR		0x001c
+#define GICC_AIAR		0x0020
+#define GICC_AEOIR		0x0024
+#define GICC_AHPPIR		0x0028
+#define GICC_APRn		0x00d0
+#define GICC_NSAPRn		0x00e0
+#define GICC_IIDR		0x00fc
+#define GICC_DIR		0x1000
+
+/* ReDistributor Registers for Control and Physical LPIs */
+#define GICR_CTLR		0x0000
+#define GICR_IIDR		0x0004
+#define GICR_TYPER		0x0008
+#define GICR_STATUSR		0x0010
+#define GICR_WAKER		0x0014
+#define GICR_SETLPIR		0x0040
+#define GICR_CLRLPIR		0x0048
+#define GICR_SEIR		0x0068
+#define GICR_PROPBASER		0x0070
+#define GICR_PENDBASER		0x0078
+#define GICR_INVLPIR		0x00a0
+#define GICR_INVALLR		0x00b0
+#define GICR_SYNCR		0x00c0
+#define GICR_MOVLPIR		0x0100
+#define GICR_MOVALLR		0x0110
+
+/* ReDistributor Registers for SGIs and PPIs */
+#define GICR_IGROUPRn		0x0080
+#define GICR_ISENABLERn		0x0100
+#define GICR_ICENABLERn		0x0180
+#define GICR_ISPENDRn		0x0200
+#define GICR_ICPENDRn		0x0280
+#define GICR_ISACTIVERn		0x0300
+#define GICR_ICACTIVERn		0x0380
+#define GICR_IPRIORITYRn	0x0400
+#define GICR_ICFGR0		0x0c00
+#define GICR_ICFGR1		0x0c04
+#define GICR_IGROUPMODRn	0x0d00
+#define GICR_NSACRn		0x0e00
+
+/* Cpu Interface System Registers */
+#define ICC_IAR0_EL1		S3_0_C12_C8_0
+#define ICC_IAR1_EL1		S3_0_C12_C12_0
+#define ICC_EOIR0_EL1		S3_0_C12_C8_1
+#define ICC_EOIR1_EL1		S3_0_C12_C12_1
+#define ICC_HPPIR0_EL1		S3_0_C12_C8_2
+#define ICC_HPPIR1_EL1		S3_0_C12_C12_2
+#define ICC_BPR0_EL1		S3_0_C12_C8_3
+#define ICC_BPR1_EL1		S3_0_C12_C12_3
+#define ICC_DIR_EL1		S3_0_C12_C11_1
+#define ICC_PMR_EL1		S3_0_C4_C6_0
+#define ICC_RPR_EL1		S3_0_C12_C11_3
+#define ICC_CTLR_EL1		S3_0_C12_C12_4
+#define ICC_CTLR_EL3		S3_6_C12_C12_4
+#define ICC_SRE_EL1		S3_0_C12_C12_5
+#define ICC_SRE_EL2		S3_4_C12_C9_5
+#define ICC_SRE_EL3		S3_6_C12_C12_5
+#define ICC_IGRPEN0_EL1		S3_0_C12_C12_6
+#define ICC_IGRPEN1_EL1		S3_0_C12_C12_7
+#define ICC_IGRPEN1_EL3		S3_6_C12_C12_7
+#define ICC_SEIEN_EL1		S3_0_C12_C13_0
+#define ICC_SGI0R_EL1		S3_0_C12_C11_7
+#define ICC_SGI1R_EL1		S3_0_C12_C11_5
+#define ICC_ASGI1R_EL1		S3_0_C12_C11_6
+
+#endif /* __GIC_H__ */
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 8de6544..8a1d80a 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -13,9 +13,7 @@
 =

 struct arm_memory;
 =

-static inline void mmu_enable(void)
-{
-}
+void mmu_enable(void);
 void mmu_disable(void);
 static inline void arm_create_section(unsigned long virt, unsigned long ph=
ys, int size_m,
 		unsigned int flags)
@@ -30,7 +28,7 @@ static inline void setup_dma_coherent(unsigned long offse=
t)
 #define ARCH_HAS_REMAP
 #define MAP_ARCH_DEFAULT MAP_CACHED
 int arch_remap_range(void *_start, size_t size, unsigned flags);
-void *map_io_sections(unsigned long physaddr, void *start, size_t size);
+void *map_io_sections(uint64_t phys, void *_start, size_t size);
 #else
 #define MAP_ARCH_DEFAULT MAP_UNCACHED
 static inline void *map_io_sections(unsigned long phys, void *start, size_=
t size)
diff --git a/arch/arm/include/asm/pgtable.h b/arch/arm/include/asm/pgtable.h
index fd1521d..e4a3c53 100644
--- a/arch/arm/include/asm/pgtable.h
+++ b/arch/arm/include/asm/pgtable.h
@@ -18,8 +18,9 @@
  */
 #define PMD_TYPE_MASK		(3 << 0)
 #define PMD_TYPE_FAULT		(0 << 0)
-#define PMD_TYPE_TABLE		(1 << 0)
-#define PMD_TYPE_SECT		(2 << 0)
+#define PMD_TYPE_TABLE		(3 << 0)
+#define PMD_TYPE_PAGE		(3 << 0)
+#define PMD_TYPE_SECT		(1 << 0)
 #define PMD_BIT4		(1 << 4)
 #define PMD_DOMAIN(x)		((x) << 5)
 #define PMD_PROTECTION		(1 << 9)	/* v5 */
diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
index 022d365..450b63a 100644
--- a/arch/arm/include/asm/ptrace.h
+++ b/arch/arm/include/asm/ptrace.h
@@ -20,124 +20,15 @@
 /* options set using PTRACE_SETOPTIONS */
 #define PTRACE_O_TRACESYSGOOD	0x00000001
 =

-/*
- * PSR bits
- */
-#define USR26_MODE	0x00000000
-#define FIQ26_MODE	0x00000001
-#define IRQ26_MODE	0x00000002
-#define SVC26_MODE	0x00000003
-#define USR_MODE	0x00000010
-#define FIQ_MODE	0x00000011
-#define IRQ_MODE	0x00000012
-#define SVC_MODE	0x00000013
-#define ABT_MODE	0x00000017
-#define UND_MODE	0x0000001b
-#define SYSTEM_MODE	0x0000001f
-#define MODE32_BIT	0x00000010
-#define MODE_MASK	0x0000001f
-#define PSR_T_BIT	0x00000020
-#define PSR_F_BIT	0x00000040
-#define PSR_I_BIT	0x00000080
-#define PSR_A_BIT	0x00000100
-#define PSR_E_BIT	0x00000200
-#define PSR_J_BIT	0x01000000
-#define PSR_Q_BIT	0x08000000
-#define PSR_V_BIT	0x10000000
-#define PSR_C_BIT	0x20000000
-#define PSR_Z_BIT	0x40000000
-#define PSR_N_BIT	0x80000000
-#define PCMASK		0
-
 #ifndef __ASSEMBLY__
 =

 /* this struct defines the way the registers are stored on the
    stack during a system call. */
 =

 struct pt_regs {
-	long uregs[18];
+	long uregs[31];
 };
 =

-#define ARM_cpsr	uregs[16]
-#define ARM_pc		uregs[15]
-#define ARM_lr		uregs[14]
-#define ARM_sp		uregs[13]
-#define ARM_ip		uregs[12]
-#define ARM_fp		uregs[11]
-#define ARM_r10		uregs[10]
-#define ARM_r9		uregs[9]
-#define ARM_r8		uregs[8]
-#define ARM_r7		uregs[7]
-#define ARM_r6		uregs[6]
-#define ARM_r5		uregs[5]
-#define ARM_r4		uregs[4]
-#define ARM_r3		uregs[3]
-#define ARM_r2		uregs[2]
-#define ARM_r1		uregs[1]
-#define ARM_r0		uregs[0]
-#define ARM_ORIG_r0	uregs[17]
-
-#ifdef __KERNEL__
-
-#define user_mode(regs)	\
-	(((regs)->ARM_cpsr & 0xf) =3D=3D 0)
-
-#ifdef CONFIG_ARM_THUMB
-#define thumb_mode(regs) \
-	(((regs)->ARM_cpsr & PSR_T_BIT))
-#else
-#define thumb_mode(regs) (0)
-#endif
-
-#define processor_mode(regs) \
-	((regs)->ARM_cpsr & MODE_MASK)
-
-#define interrupts_enabled(regs) \
-	(!((regs)->ARM_cpsr & PSR_I_BIT))
-
-#define fast_interrupts_enabled(regs) \
-	(!((regs)->ARM_cpsr & PSR_F_BIT))
-
-#define condition_codes(regs) \
-	((regs)->ARM_cpsr & (PSR_V_BIT | PSR_C_BIT | PSR_Z_BIT | PSR_N_BIT))
-
-/* Are the current registers suitable for user mode?
- * (used to maintain security in signal handlers)
- */
-static inline int valid_user_regs(struct pt_regs *regs)
-{
-	if ((regs->ARM_cpsr & 0xf) =3D=3D 0 &&
-	    (regs->ARM_cpsr & (PSR_F_BIT | PSR_I_BIT)) =3D=3D 0)
-		return 1;
-
-	/*
-	 * Force CPSR to something logical...
-	 */
-	regs->ARM_cpsr &=3D (PSR_V_BIT | PSR_C_BIT | PSR_Z_BIT | PSR_N_BIT |
-				0x10);
-
-	return 0;
-}
-
-#endif	/* __KERNEL__ */
-
 #endif	/* __ASSEMBLY__ */
 =

-#ifndef __ASSEMBLY__
-#define pc_pointer(v) \
-	((v) & ~PCMASK)
-
-#define instruction_pointer(regs) \
-	(pc_pointer((regs)->ARM_pc))
-
-#ifdef __KERNEL__
-extern void show_regs(struct pt_regs *);
-
-#define predicate(x)	(x & 0xf0000000)
-#define PREDICATE_ALWAYS	0xe0000000
-
-#endif
-
-#endif /* __ASSEMBLY__ */
-
 #endif
diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index b118a42..04a79c4 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -1,96 +1,125 @@
 #ifndef __ASM_ARM_SYSTEM_H
 #define __ASM_ARM_SYSTEM_H
 =

-#if __LINUX_ARM_ARCH__ >=3D 7
 #define isb() __asm__ __volatile__ ("isb" : : : "memory")
-#define dsb() __asm__ __volatile__ ("dsb" : : : "memory")
+#define dsb() __asm__ __volatile__ ("dsb sy" : : : "memory")
 #define dmb() __asm__ __volatile__ ("dmb" : : : "memory")
-#elif defined(CONFIG_CPU_XSC3) || __LINUX_ARM_ARCH__ =3D=3D 6
-#define isb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c5, 4" \
-                                    : : "r" (0) : "memory")
-#define dsb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 4" \
-                                    : : "r" (0) : "memory")
-#define dmb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 5" \
-                                    : : "r" (0) : "memory")
-#elif defined(CONFIG_CPU_FA526)
-#define isb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c5, 4" \
-                                    : : "r" (0) : "memory")
-#define dsb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 4" \
-                                    : : "r" (0) : "memory")
-#define dmb() __asm__ __volatile__ ("" : : : "memory")
-#else
-#define isb() __asm__ __volatile__ ("" : : : "memory")
-#define dsb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 4" \
-                                    : : "r" (0) : "memory")
-#define dmb() __asm__ __volatile__ ("" : : : "memory")
-#endif
 =

 /*
- * CR1 bits (CP#15 CR1)
+ * SCTLR_EL1/SCTLR_EL2/SCTLR_EL3 bits definitions
  */
-#define CR_M    (1 << 0)	/* MMU enable				*/
-#define CR_A    (1 << 1)	/* Alignment abort enable		*/
-#define CR_C    (1 << 2)	/* Dcache enable			*/
-#define CR_W    (1 << 3)	/* Write buffer enable			*/
-#define CR_P    (1 << 4)	/* 32-bit exception handler		*/
-#define CR_D    (1 << 5)	/* 32-bit data address range		*/
-#define CR_L    (1 << 6)	/* Implementation defined		*/
-#define CR_B    (1 << 7)	/* Big endian				*/
-#define CR_S    (1 << 8)	/* System MMU protection		*/
-#define CR_R    (1 << 9)	/* ROM MMU protection			*/
-#define CR_F    (1 << 10)	/* Implementation defined		*/
-#define CR_Z    (1 << 11)	/* Implementation defined		*/
-#define CR_I    (1 << 12)	/* Icache enable			*/
-#define CR_V    (1 << 13)	/* Vectors relocated to 0xffff0000	*/
-#define CR_RR   (1 << 14)	/* Round Robin cache replacement	*/
-#define CR_L4   (1 << 15)	/* LDR pc can set T bit			*/
-#define CR_DT   (1 << 16)
-#define CR_IT   (1 << 18)
-#define CR_ST   (1 << 19)
-#define CR_FI   (1 << 21)	/* Fast interrupt (lower latency mode)	*/
-#define CR_U    (1 << 22)	/* Unaligned access operation		*/
-#define CR_XP   (1 << 23)	/* Extended page tables			*/
-#define CR_VE   (1 << 24)	/* Vectored interrupts			*/
-#define CR_EE   (1 << 25)	/* Exception (Big) Endian		*/
-#define CR_TRE  (1 << 28)	/* TEX remap enable			*/
-#define CR_AFE  (1 << 29)	/* Access flag enable			*/
-#define CR_TE   (1 << 30)	/* Thumb exception enable		*/
+#define CR_M		(1 << 0)	/* MMU enable			*/
+#define CR_A		(1 << 1)	/* Alignment abort enable	*/
+#define CR_C		(1 << 2)	/* Dcache enable		*/
+#define CR_SA		(1 << 3)	/* Stack Alignment Check Enable	*/
+#define CR_I		(1 << 12)	/* Icache enable		*/
+#define CR_WXN		(1 << 19)	/* Write Permision Imply XN	*/
+#define CR_EE		(1 << 25)	/* Exception (Big) Endian	*/
+
+#ifndef CONFIG_SYS_FULL_VA
+#define PGTABLE_SIZE	(0x10000)
+#else
+#define PGTABLE_SIZE	CONFIG_SYS_PGTABLE_SIZE
+#endif
+
+/* 2MB granularity */
+#define MMU_SECTION_SHIFT	21
+#define MMU_SECTION_SIZE	(1 << MMU_SECTION_SHIFT)
 =

 #ifndef __ASSEMBLY__
-static inline unsigned int get_cr(void)
+
+enum dcache_option {
+	DCACHE_OFF =3D 0x3,
+};
+
+#define wfi()				\
+	({asm volatile(			\
+	"wfi" : : : "memory");		\
+	})
+
+static inline unsigned int current_el(void)
 {
-	unsigned int val;
-	asm volatile ("mrc p15, 0, %0, c1, c0, 0  @ get CR" : "=3Dr" (val) : : "c=
c");
-	return val;
+	unsigned int el;
+	asm volatile("mrs %0, CurrentEL" : "=3Dr" (el) : : "cc");
+	return el >> 2;
 }
 =

-static inline void set_cr(unsigned int val)
+static inline unsigned int get_sctlr(void)
 {
-	asm volatile("mcr p15, 0, %0, c1, c0, 0 @ set CR"
-	  : : "r" (val) : "cc");
-	isb();
+	unsigned int el, val;
+
+	el =3D current_el();
+	if (el =3D=3D 1)
+		asm volatile("mrs %0, sctlr_el1" : "=3Dr" (val) : : "cc");
+	else if (el =3D=3D 2)
+		asm volatile("mrs %0, sctlr_el2" : "=3Dr" (val) : : "cc");
+	else
+		asm volatile("mrs %0, sctlr_el3" : "=3Dr" (val) : : "cc");
+
+	return val;
 }
 =

-#ifdef CONFIG_CPU_32v7
-static inline unsigned int get_vbar(void)
+static inline void set_sctlr(unsigned int val)
 {
-	unsigned int vbar;
-	asm volatile("mrc p15, 0, %0, c12, c0, 0 @ get VBAR"
-		     : "=3Dr" (vbar) : : "cc");
-	return vbar;
+	unsigned int el;
+
+	el =3D current_el();
+	if (el =3D=3D 1)
+		asm volatile("msr sctlr_el1, %0" : : "r" (val) : "cc");
+	else if (el =3D=3D 2)
+		asm volatile("msr sctlr_el2, %0" : : "r" (val) : "cc");
+	else
+		asm volatile("msr sctlr_el3, %0" : : "r" (val) : "cc");
+
+	asm volatile("isb");
 }
 =

-static inline void set_vbar(unsigned int vbar)
+static inline unsigned long read_mpidr(void)
 {
-	asm volatile("mcr p15, 0, %0, c12, c0, 0 @ set VBAR"
-		     : : "r" (vbar) : "cc");
-	isb();
+	unsigned long val;
+
+	asm volatile("mrs %0, mpidr_el1" : "=3Dr" (val));
+
+	return val;
 }
-#else
-static inline unsigned int get_vbar(void) { return 0; }
-static inline void set_vbar(unsigned int vbar) {}
-#endif
 =

-#endif
+#define BSP_COREID	0
+
+void __asm_flush_dcache_all(void);
+void __asm_invalidate_dcache_all(void);
+void __asm_flush_dcache_range(u64 start, u64 end);
+void __asm_invalidate_tlb_all(void);
+void __asm_invalidate_icache_all(void);
+int __asm_flush_l3_cache(void);
+
+void armv8_switch_to_el2(void);
+void armv8_switch_to_el1(void);
+void gic_init(void);
+void gic_send_sgi(unsigned long sgino);
+void wait_for_wakeup(void);
+void protect_secure_region(void);
+void smp_kick_all_cpus(void);
+
+void flush_l3_cache(void);
+
+/*
+ *Issue a hypervisor call in accordance with ARM "SMC Calling convention",
+ * DEN0028A
+ *
+ * @args: input and output arguments
+ *
+ */
+void hvc_call(struct pt_regs *args);
+
+/*
+ *Issue a secure monitor call in accordance with ARM "SMC Calling conventi=
on",
+ * DEN0028A
+ *
+ * @args: input and output arguments
+ *
+ */
+void smc_call(struct pt_regs *args);
+
+#endif	/* __ASSEMBLY__ */
 =

 #endif /* __ASM_ARM_SYSTEM_H */
diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/syst=
em_info.h
index 0761848..f595aae 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -13,6 +13,7 @@
 #define CPU_ARCH_ARMv5TEJ	7
 #define CPU_ARCH_ARMv6		8
 #define CPU_ARCH_ARMv7		9
+#define CPU_ARCH_ARMv8		10
 =

 #define CPU_IS_ARM720		0x41007200
 #define CPU_IS_ARM720_MASK	0xff00fff0
@@ -41,6 +42,12 @@
 #define CPU_IS_CORTEX_A15	0x410fc0f0
 #define CPU_IS_CORTEX_A15_MASK	0xff0ffff0
 =

+#define CPU_IS_CORTEX_A53	0x410fd034
+#define CPU_IS_CORTEX_A53_MASK	0xff0ffff0
+
+#define CPU_IS_CORTEX_A57	0x411fd070
+#define CPU_IS_CORTEX_A57_MASK	0xff0ffff0
+
 #define CPU_IS_PXA250		0x69052100
 #define CPU_IS_PXA250_MASK	0xfffff7f0
 =

@@ -112,6 +119,20 @@
 #define cpu_is_cortex_a15() (0)
 #endif
 =

+
+#ifdef CONFIG_CPU_64v8
+#ifdef ARM_ARCH
+#define ARM_MULTIARCH
+#else
+#define ARM_ARCH CPU_ARCH_ARMv8
+#endif
+#define cpu_is_cortex_a53() cpu_is_arm(CORTEX_A53)
+#define cpu_is_cortex_a57() cpu_is_arm(CORTEX_A57)
+#else
+#define cpu_is_cortex_a53() (0)
+#define cpu_is_cortex_a57() (0)
+#endif
+
 #ifndef __ASSEMBLY__
 =

 #ifdef ARM_MULTIARCH
@@ -124,31 +145,33 @@ static inline int arm_early_get_cpu_architecture(void)
 {
 	int cpu_arch;
 =

-	if ((read_cpuid_id() & 0x0008f000) =3D=3D 0) {
-		cpu_arch =3D CPU_ARCH_UNKNOWN;
-	} else if ((read_cpuid_id() & 0x0008f000) =3D=3D 0x00007000) {
-		cpu_arch =3D (read_cpuid_id() & (1 << 23)) ? CPU_ARCH_ARMv4T : CPU_ARCH_=
ARMv3;
-	} else if ((read_cpuid_id() & 0x00080000) =3D=3D 0x00000000) {
-		cpu_arch =3D (read_cpuid_id() >> 16) & 7;
-		if (cpu_arch)
-			cpu_arch +=3D CPU_ARCH_ARMv3;
-	} else if ((read_cpuid_id() & 0x000f0000) =3D=3D 0x000f0000) {
-		unsigned int mmfr0;
-
-		/* Revised CPUID format. Read the Memory Model Feature
-		 * Register 0 and check for VMSAv7 or PMSAv7 */
-		asm("mrc	p15, 0, %0, c0, c1, 4"
-		    : "=3Dr" (mmfr0));
-		if ((mmfr0 & 0x0000000f) >=3D 0x00000003 ||
-		    (mmfr0 & 0x000000f0) >=3D 0x00000030)
-			cpu_arch =3D CPU_ARCH_ARMv7;
-		else if ((mmfr0 & 0x0000000f) =3D=3D 0x00000002 ||
-			 (mmfr0 & 0x000000f0) =3D=3D 0x00000020)
-			cpu_arch =3D CPU_ARCH_ARMv6;
-		else
-			cpu_arch =3D CPU_ARCH_UNKNOWN;
-	} else
-		cpu_arch =3D CPU_ARCH_UNKNOWN;
+//	if ((read_cpuid_id() & 0x0008f000) =3D=3D 0) {
+//		cpu_arch =3D CPU_ARCH_UNKNOWN;
+//	} else if ((read_cpuid_id() & 0x0008f000) =3D=3D 0x00007000) {
+//		cpu_arch =3D (read_cpuid_id() & (1 << 23)) ? CPU_ARCH_ARMv4T : CPU_ARC=
H_ARMv3;
+//	} else if ((read_cpuid_id() & 0x00080000) =3D=3D 0x00000000) {
+//		cpu_arch =3D (read_cpuid_id() >> 16) & 7;
+//		if (cpu_arch)
+//			cpu_arch +=3D CPU_ARCH_ARMv3;
+//	} else if ((read_cpuid_id() & 0x000f0000) =3D=3D 0x000f0000) {
+//		unsigned int mmfr0;
+//
+//		/* Revised CPUID format. Read the Memory Model Feature
+//		 * Register 0 and check for VMSAv7 or PMSAv7 */
+//		asm("mrc	p15, 0, %0, c0, c1, 4"
+//		    : "=3Dr" (mmfr0));
+//		if ((mmfr0 & 0x0000000f) >=3D 0x00000003 ||
+//		    (mmfr0 & 0x000000f0) >=3D 0x00000030)
+//			cpu_arch =3D CPU_ARCH_ARMv7;
+//		else if ((mmfr0 & 0x0000000f) =3D=3D 0x00000002 ||
+//			 (mmfr0 & 0x000000f0) =3D=3D 0x00000020)
+//			cpu_arch =3D CPU_ARCH_ARMv6;
+//		else
+//			cpu_arch =3D CPU_ARCH_UNKNOWN;
+//	} else
+//		cpu_arch =3D CPU_ARCH_UNKNOWN;
+
+	cpu_arch =3D CPU_ARCH_ARMv8;
 =

 	return cpu_arch;
 }
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index e1c6f5b..5b9d4a5 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -3,24 +3,11 @@ obj-$(CONFIG_BOOTM)	+=3D bootm.o
 obj-$(CONFIG_CMD_BOOTZ)	+=3D bootz.o
 obj-$(CONFIG_CMD_BOOTU)	+=3D bootu.o
 obj-y	+=3D div0.o
-obj-y	+=3D findbit.o
-obj-y	+=3D io.o
-obj-y	+=3D io-readsb.o
-obj-y	+=3D io-readsw-armv4.o
-obj-y	+=3D io-readsl.o
-obj-y	+=3D io-writesb.o
-obj-y	+=3D io-writesw-armv4.o
-obj-y	+=3D io-writesl.o
-obj-y	+=3D lib1funcs.o
-obj-y	+=3D ashrdi3.o
-obj-y	+=3D ashldi3.o
-obj-y	+=3D lshrdi3.o
 obj-y	+=3D runtime-offset.o
 pbl-y	+=3D runtime-offset.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+=3D memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+=3D memset.o
 obj-$(CONFIG_ARM_UNWIND) +=3D unwind.o
-obj-$(CONFIG_ARM_SEMIHOSTING) +=3D semihosting-trap.o semihosting.o
 obj-$(CONFIG_MODULES) +=3D module.o
 extra-y +=3D barebox.lds
 =

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 47b9bd3..21a2292 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -270,12 +270,6 @@ void start_linux(void *adr, int swap, unsigned long in=
itrd_address,
 	architecture =3D armlinux_get_architecture();
 =

 	shutdown_barebox();
-	if (swap) {
-		u32 reg;
-		__asm__ __volatile__("mrc p15, 0, %0, c1, c0" : "=3Dr" (reg));
-		reg ^=3D CR_B; /* swap big-endian flag */
-		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
-	}
 =

 	kernel(0, architecture, params);
 }
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 6dc8bd2..240699f 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -20,8 +20,8 @@
 =

 #include <asm-generic/barebox.lds.h>
 =

-OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
-OUTPUT_ARCH(arm)
+OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littlea=
arch64")
+OUTPUT_ARCH(aarch64)
 ENTRY(start)
 SECTIONS
 {
@@ -43,7 +43,6 @@ SECTIONS
 		__bare_init_start =3D .;
 		*(.text_bare_init*)
 		__bare_init_end =3D .;
-		. =3D ALIGN(4);
 		__exceptions_start =3D .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop =3D .;
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index f6024c8..1913d5f 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -67,55 +67,6 @@ static int sdram_start_and_size(unsigned long *start, un=
signed long *size)
 	return 0;
 }
 =

-static int get_kernel_addresses(size_t image_size,
-				 int verbose, unsigned long *load_address,
-				 unsigned long *mem_free)
-{
-	unsigned long mem_start, mem_size;
-	int ret;
-	size_t image_decomp_size;
-	unsigned long spacing;
-
-	ret =3D sdram_start_and_size(&mem_start, &mem_size);
-	if (ret)
-		return ret;
-
-	/*
-	 * We don't know the exact decompressed size so just use a conservative
-	 * default of 4 times the size of the compressed image.
-	 */
-	image_decomp_size =3D PAGE_ALIGN(image_size * 4);
-
-	/*
-	 * By default put oftree/initrd close behind compressed kernel image to
-	 * avoid placing it outside of the kernels lowmem region.
-	 */
-	spacing =3D SZ_1M;
-
-	if (*load_address =3D=3D UIMAGE_INVALID_ADDRESS) {
-		/*
-		 * Place the kernel at an address where it does not need to
-		 * relocate itself before decompression.
-		 */
-		*load_address =3D mem_start + image_decomp_size;
-		if (verbose)
-			printf("no OS load address, defaulting to 0x%08lx\n",
-				*load_address);
-	} else if (*load_address <=3D mem_start + image_decomp_size) {
-		/*
-		 * If the user/image specified an address where the kernel needs
-		 * to relocate itself before decompression we need to extend the
-		 * spacing to allow this relocation to happen without
-		 * overwriting anything placed behind the kernel.
-		 */
-		spacing +=3D image_decomp_size;
-	}
-
-	*mem_free =3D PAGE_ALIGN(*load_address + image_size + spacing);
-
-	return 0;
-}
-
 static int __do_bootm_linux(struct image_data *data, unsigned long free_me=
m, int swap)
 {
 	unsigned long kernel;
@@ -173,20 +124,38 @@ static int __do_bootm_linux(struct image_data *data, =
unsigned long free_mem, int
 =

 static int do_bootm_linux(struct image_data *data)
 {
-	unsigned long load_address, mem_free;
+	unsigned long load_address, mem_start, mem_size, mem_free;
 	int ret;
 =

-	load_address =3D data->os_address;
-
-	ret =3D get_kernel_addresses(bootm_get_os_size(data),
-			     bootm_verbose(data), &load_address, &mem_free);
+	ret =3D sdram_start_and_size(&mem_start, &mem_size);
 	if (ret)
 		return ret;
 =

+	load_address =3D data->os_address;
+
+	if (load_address =3D=3D UIMAGE_INVALID_ADDRESS) {
+		/*
+		 * Just use a conservative default of 4 times the size of the
+		 * compressed image, to avoid the need for the kernel to
+		 * relocate itself before decompression.
+		 */
+		load_address =3D mem_start + PAGE_ALIGN(
+		               bootm_get_os_size(data) * 4);
+		if (bootm_verbose(data))
+			printf("no OS load address, defaulting to 0x%08lx\n",
+				load_address);
+	}
+
 	ret =3D bootm_load_os(data, load_address);
 	if (ret)
 		return ret;
 =

+	/*
+	 * put oftree/initrd close behind compressed kernel image to avoid
+	 * placing it outside of the kernels lowmem.
+	 */
+	mem_free =3D PAGE_ALIGN(data->os_res->end + SZ_1M);
+
 	return __do_bootm_linux(data, mem_free, 0);
 }
 =

@@ -282,7 +251,11 @@ static int do_bootz_linux(struct image_data *data)
 	u32 end, start;
 	size_t image_size;
 	unsigned long load_address =3D data->os_address;
-	unsigned long mem_free;
+	unsigned long mem_start, mem_size, mem_free;
+
+	ret =3D sdram_start_and_size(&mem_start, &mem_size);
+	if (ret)
+		return ret;
 =

 	fd =3D open(data->os_file, O_RDONLY);
 	if (fd < 0) {
@@ -318,12 +291,20 @@ static int do_bootz_linux(struct image_data *data)
 	}
 =

 	image_size =3D end - start;
-	load_address =3D data->os_address;
 =

-	ret =3D get_kernel_addresses(image_size, bootm_verbose(data),
-			     &load_address, &mem_free);
-	if (ret)
-		return ret;
+	if (load_address =3D=3D UIMAGE_INVALID_ADDRESS) {
+		/*
+		 * Just use a conservative default of 4 times the size of the
+		 * compressed image, to avoid the need for the kernel to
+		 * relocate itself before decompression.
+		 */
+		data->os_address =3D mem_start + PAGE_ALIGN(image_size * 4);
+
+		load_address =3D data->os_address;
+		if (bootm_verbose(data))
+			printf("no OS load address, defaulting to 0x%08lx\n",
+				load_address);
+	}
 =

 	data->os_res =3D request_sdram_region("zimage", load_address, image_size);
 	if (!data->os_res) {
@@ -359,6 +340,12 @@ static int do_bootz_linux(struct image_data *data)
 =

 	close(fd);
 =

+	/*
+	 * put oftree/initrd close behind compressed kernel image to avoid
+	 * placing it outside of the kernels lowmem.
+	 */
+	mem_free =3D PAGE_ALIGN(data->os_res->end + SZ_1M);
+
 	return __do_bootm_linux(data, mem_free, swap);
 =

 err_out:
@@ -575,7 +562,7 @@ static int armlinux_register_image_handler(void)
 		register_image_handler(&aimage_handler);
 		binfmt_register(&binfmt_aimage_hook);
 	}
-	if (IS_BUILTIN(CONFIG_FITIMAGE))
+	if (IS_BUILTIN(CONFIG_CMD_BOOTM_FITIMAGE))
 	        register_image_handler(&arm_fit_handler);
 	binfmt_register(&binfmt_arm_zimage_hook);
 	binfmt_register(&binfmt_barebox_hook);
diff --git a/arch/arm/lib/copy_template.S b/arch/arm/lib/copy_template.S
index d8eb063..cc9a842 100644
--- a/arch/arm/lib/copy_template.S
+++ b/arch/arm/lib/copy_template.S
@@ -1,268 +1,192 @@
 /*
- *  linux/arch/arm/lib/copy_template.s
+ * Copyright (C) 2013 ARM Ltd.
+ * Copyright (C) 2013 Linaro.
  *
- *  Code template for optimized memory copy functions
+ * This code is based on glibc cortex strings work originally authored by =
Linaro
+ * and re-licensed under GPLv2 for the Linux kernel. The original code can
+ * be found @
  *
- *  Author:	Nicolas Pitre
- *  Created:	Sep 28, 2005
- *  Copyright:	MontaVista Software, Inc.
+ * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
+ * files/head:/src/aarch64/
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  published by the Free Software Foundation.
- */
-
-/*
- * Theory of operation
- * -------------------
- *
- * This file provides the core code for a forward memory copy used in
- * the implementation of memcopy(), copy_to_user() and copy_from_user().
- *
- * The including file must define the following accessor macros
- * according to the need of the given function:
- *
- * ldr1w ptr reg abort
- *
- *	This loads one word from 'ptr', stores it in 'reg' and increments
- *	'ptr' to the next word. The 'abort' argument is used for fixup tables.
- *
- * ldr4w ptr reg1 reg2 reg3 reg4 abort
- * ldr8w ptr, reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
- *
- *	This loads four or eight words starting from 'ptr', stores them
- *	in provided registers and increments 'ptr' past those words.
- *	The'abort' argument is used for fixup tables.
- *
- * ldr1b ptr reg cond abort
- *
- *	Similar to ldr1w, but it loads a byte and increments 'ptr' one byte.
- *	It also must apply the condition code if provided, otherwise the
- *	"al" condition is assumed by default.
- *
- * str1w ptr reg abort
- * str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
- * str1b ptr reg cond abort
- *
- *	Same as their ldr* counterparts, but data is stored to 'ptr' location
- *	rather than being loaded.
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
  *
- * enter reg1 reg2
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
  *
- *	Preserve the provided registers on the stack plus any additional
- *	data as needed by the implementation including this code. Called
- *	upon code entry.
- *
- * exit reg1 reg2
- *
- *	Restore registers with the values previously saved with the
- *	'preserv' macro. Called upon code termination.
- *
- * LDR1W_SHIFT
- * STR1W_SHIFT
- *
- *	Correction to be applied to the "ip" register when branching into
- *	the ldr1w or str1w instructions (some of these macros may expand to
- *	than one 32bit instruction in Thumb-2)
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 =

 =

-		enter	r4, lr
-
-		subs	r2, r2, #4
-		blt	8f
-		ands	ip, r0, #3
-	PLD(	pld	[r1, #0]		)
-		bne	9f
-		ands	ip, r1, #3
-		bne	10f
-
-1:		subs	r2, r2, #(28)
-		stmfd	sp!, {r5 - r8}
-		blt	5f
-
-	CALGN(	ands	ip, r0, #31		)
-	CALGN(	rsb	r3, ip, #32		)
-	CALGN(	sbcnes	r4, r3, r2		)  @ C is always set here
-	CALGN(	bcs	2f			)
-	CALGN(	adr	r4, 6f			)
-	CALGN(	subs	r2, r2, r3		)  @ C gets set
-	CALGN(	add	pc, r4, ip		)
-
-	PLD(	pld	[r1, #0]		)
-2:	PLD(	subs	r2, r2, #96		)
-	PLD(	pld	[r1, #28]		)
-	PLD(	blt	4f			)
-	PLD(	pld	[r1, #60]		)
-	PLD(	pld	[r1, #92]		)
-
-3:	PLD(	pld	[r1, #124]		)
-4:		ldr8w	r1, r3, r4, r5, r6, r7, r8, ip, lr, abort=3D20f
-		subs	r2, r2, #32
-		str8w	r0, r3, r4, r5, r6, r7, r8, ip, lr, abort=3D20f
-		bge	3b
-	PLD(	cmn	r2, #96			)
-	PLD(	bge	4b			)
-
-5:		ands	ip, r2, #28
-		rsb	ip, ip, #32
-#if LDR1W_SHIFT > 0
-		lsl	ip, ip, #LDR1W_SHIFT
-#endif
-		addne	pc, pc, ip		@ C is always clear here
-		b	7f
-6:
-		.rept	(1 << LDR1W_SHIFT)
-		W(nop)
-		.endr
-		ldr1w	r1, r3, abort=3D20f
-		ldr1w	r1, r4, abort=3D20f
-		ldr1w	r1, r5, abort=3D20f
-		ldr1w	r1, r6, abort=3D20f
-		ldr1w	r1, r7, abort=3D20f
-		ldr1w	r1, r8, abort=3D20f
-		ldr1w	r1, lr, abort=3D20f
-
-#if LDR1W_SHIFT < STR1W_SHIFT
-		lsl	ip, ip, #STR1W_SHIFT - LDR1W_SHIFT
-#elif LDR1W_SHIFT > STR1W_SHIFT
-		lsr	ip, ip, #LDR1W_SHIFT - STR1W_SHIFT
-#endif
-		add	pc, pc, ip
-		nop
-		.rept	(1 << STR1W_SHIFT)
-		W(nop)
-		.endr
-		str1w	r0, r3, abort=3D20f
-		str1w	r0, r4, abort=3D20f
-		str1w	r0, r5, abort=3D20f
-		str1w	r0, r6, abort=3D20f
-		str1w	r0, r7, abort=3D20f
-		str1w	r0, r8, abort=3D20f
-		str1w	r0, lr, abort=3D20f
-
-	CALGN(	bcs	2b			)
-
-7:		ldmfd	sp!, {r5 - r8}
-
-8:		movs	r2, r2, lsl #31
-		ldr1b	r1, r3, ne, abort=3D21f
-		ldr1b	r1, r4, cs, abort=3D21f
-		ldr1b	r1, ip, cs, abort=3D21f
-		str1b	r0, r3, ne, abort=3D21f
-		str1b	r0, r4, cs, abort=3D21f
-		str1b	r0, ip, cs, abort=3D21f
-
-		exit	r4, pc
-
-9:		rsb	ip, ip, #4
-		cmp	ip, #2
-		ldr1b	r1, r3, gt, abort=3D21f
-		ldr1b	r1, r4, ge, abort=3D21f
-		ldr1b	r1, lr, abort=3D21f
-		str1b	r0, r3, gt, abort=3D21f
-		str1b	r0, r4, ge, abort=3D21f
-		subs	r2, r2, ip
-		str1b	r0, lr, abort=3D21f
-		blt	8b
-		ands	ip, r1, #3
-		beq	1b
-
-10:		bic	r1, r1, #3
-		cmp	ip, #2
-		ldr1w	r1, lr, abort=3D21f
-		beq	17f
-		bgt	18f
-
-
-		.macro	forward_copy_shift pull push
-
-		subs	r2, r2, #28
-		blt	14f
-
-	CALGN(	ands	ip, r0, #31		)
-	CALGN(	rsb	ip, ip, #32		)
-	CALGN(	sbcnes	r4, ip, r2		)  @ C is always set here
-	CALGN(	subcc	r2, r2, ip		)
-	CALGN(	bcc	15f			)
-
-11:		stmfd	sp!, {r5 - r9}
-
-	PLD(	pld	[r1, #0]		)
-	PLD(	subs	r2, r2, #96		)
-	PLD(	pld	[r1, #28]		)
-	PLD(	blt	13f			)
-	PLD(	pld	[r1, #60]		)
-	PLD(	pld	[r1, #92]		)
-
-12:	PLD(	pld	[r1, #124]		)
-13:		ldr4w	r1, r4, r5, r6, r7, abort=3D19f
-		mov	r3, lr, pull #\pull
-		subs	r2, r2, #32
-		ldr4w	r1, r8, r9, ip, lr, abort=3D19f
-		orr	r3, r3, r4, push #\push
-		mov	r4, r4, pull #\pull
-		orr	r4, r4, r5, push #\push
-		mov	r5, r5, pull #\pull
-		orr	r5, r5, r6, push #\push
-		mov	r6, r6, pull #\pull
-		orr	r6, r6, r7, push #\push
-		mov	r7, r7, pull #\pull
-		orr	r7, r7, r8, push #\push
-		mov	r8, r8, pull #\pull
-		orr	r8, r8, r9, push #\push
-		mov	r9, r9, pull #\pull
-		orr	r9, r9, ip, push #\push
-		mov	ip, ip, pull #\pull
-		orr	ip, ip, lr, push #\push
-		str8w	r0, r3, r4, r5, r6, r7, r8, r9, ip, , abort=3D19f
-		bge	12b
-	PLD(	cmn	r2, #96			)
-	PLD(	bge	13b			)
-
-		ldmfd	sp!, {r5 - r9}
-
-14:		ands	ip, r2, #28
-		beq	16f
-
-15:		mov	r3, lr, pull #\pull
-		ldr1w	r1, lr, abort=3D21f
-		subs	ip, ip, #4
-		orr	r3, r3, lr, push #\push
-		str1w	r0, r3, abort=3D21f
-		bgt	15b
-	CALGN(	cmp	r2, #0			)
-	CALGN(	bge	11b			)
-
-16:		sub	r1, r1, #(\push / 8)
-		b	8b
-
-		.endm
-
-
-		forward_copy_shift	pull=3D8	push=3D24
-
-17:		forward_copy_shift	pull=3D16	push=3D16
-
-18:		forward_copy_shift	pull=3D24	push=3D8
-
-
 /*
- * Abort preamble and completion macros.
- * If a fixup handler is required then those macros must surround it.
- * It is assumed that the fixup code will handle the private part of
- * the exit macro.
+ * Copy a buffer from src to dest (alignment handled by the hardware)
+ *
+ * Parameters:
+ *	x0 - dest
+ *	x1 - src
+ *	x2 - n
+ * Returns:
+ *	x0 - dest
  */
-
-	.macro	copy_abort_preamble
-19:	ldmfd	sp!, {r5 - r9}
-	b	21f
-20:	ldmfd	sp!, {r5 - r8}
-21:
-	.endm
-
-	.macro	copy_abort_end
-	ldmfd	sp!, {r4, pc}
-	.endm
-
-
+dstin	.req	x0
+src	.req	x1
+count	.req	x2
+tmp1	.req	x3
+tmp1w	.req	w3
+tmp2	.req	x4
+tmp2w	.req	w4
+dst	.req	x6
+
+A_l	.req	x7
+A_h	.req	x8
+B_l	.req	x9
+B_h	.req	x10
+C_l	.req	x11
+C_h	.req	x12
+D_l	.req	x13
+D_h	.req	x14
+
+	mov	dst, dstin
+	cmp	count, #16
+	/*When memory length is less than 16, the accessed are not aligned.*/
+	b.lo	.Ltiny15
+
+	neg	tmp2, src
+	ands	tmp2, tmp2, #15/* Bytes to reach alignment. */
+	b.eq	.LSrcAligned
+	sub	count, count, tmp2
+	/*
+	* Copy the leading memory data from src to dst in an increasing
+	* address order.By this way,the risk of overwritting the source
+	* memory data is eliminated when the distance between src and
+	* dst is less than 16. The memory accesses here are alignment.
+	*/
+	tbz	tmp2, #0, 1f
+	ldrb1	tmp1w, src, #1
+	strb1	tmp1w, dst, #1
+1:
+	tbz	tmp2, #1, 2f
+	ldrh1	tmp1w, src, #2
+	strh1	tmp1w, dst, #2
+2:
+	tbz	tmp2, #2, 3f
+	ldr1	tmp1w, src, #4
+	str1	tmp1w, dst, #4
+3:
+	tbz	tmp2, #3, .LSrcAligned
+	ldr1	tmp1, src, #8
+	str1	tmp1, dst, #8
+
+.LSrcAligned:
+	cmp	count, #64
+	b.ge	.Lcpy_over64
+	/*
+	* Deal with small copies quickly by dropping straight into the
+	* exit block.
+	*/
+.Ltail63:
+	/*
+	* Copy up to 48 bytes of data. At this point we only need the
+	* bottom 6 bits of count to be accurate.
+	*/
+	ands	tmp1, count, #0x30
+	b.eq	.Ltiny15
+	cmp	tmp1w, #0x20
+	b.eq	1f
+	b.lt	2f
+	ldp1	A_l, A_h, src, #16
+	stp1	A_l, A_h, dst, #16
+1:
+	ldp1	A_l, A_h, src, #16
+	stp1	A_l, A_h, dst, #16
+2:
+	ldp1	A_l, A_h, src, #16
+	stp1	A_l, A_h, dst, #16
+.Ltiny15:
+	/*
+	* Prefer to break one ldp/stp into several load/store to access
+	* memory in an increasing address order,rather than to load/store 16
+	* bytes from (src-16) to (dst-16) and to backward the src to aligned
+	* address,which way is used in original cortex memcpy. If keeping
+	* the original memcpy process here, memmove need to satisfy the
+	* precondition that src address is at least 16 bytes bigger than dst
+	* address,otherwise some source data will be overwritten when memove
+	* call memcpy directly. To make memmove simpler and decouple the
+	* memcpy's dependency on memmove, withdrew the original process.
+	*/
+	tbz	count, #3, 1f
+	ldr1	tmp1, src, #8
+	str1	tmp1, dst, #8
+1:
+	tbz	count, #2, 2f
+	ldr1	tmp1w, src, #4
+	str1	tmp1w, dst, #4
+2:
+	tbz	count, #1, 3f
+	ldrh1	tmp1w, src, #2
+	strh1	tmp1w, dst, #2
+3:
+	tbz	count, #0, .Lexitfunc
+	ldrb1	tmp1w, src, #1
+	strb1	tmp1w, dst, #1
+
+	b	.Lexitfunc
+
+.Lcpy_over64:
+	subs	count, count, #128
+	b.ge	.Lcpy_body_large
+	/*
+	* Less than 128 bytes to copy, so handle 64 here and then jump
+	* to the tail.
+	*/
+	ldp1	A_l, A_h, src, #16
+	stp1	A_l, A_h, dst, #16
+	ldp1	B_l, B_h, src, #16
+	ldp1	C_l, C_h, src, #16
+	stp1	B_l, B_h, dst, #16
+	stp1	C_l, C_h, dst, #16
+	ldp1	D_l, D_h, src, #16
+	stp1	D_l, D_h, dst, #16
+
+	tst	count, #0x3f
+	b.ne	.Ltail63
+	b	.Lexitfunc
+
+	/*
+	* Critical loop.  Start at a new cache line boundary.  Assuming
+	* 64 bytes per line this ensures the entire loop is in one line.
+	*/
+.Lcpy_body_large:
+	/* pre-get 64 bytes data. */
+	ldp1	A_l, A_h, src, #16
+	ldp1	B_l, B_h, src, #16
+	ldp1	C_l, C_h, src, #16
+	ldp1	D_l, D_h, src, #16
+1:
+	/*
+	* interlace the load of next 64 bytes data block with store of the last
+	* loaded 64 bytes data.
+	*/
+	stp1	A_l, A_h, dst, #16
+	ldp1	A_l, A_h, src, #16
+	stp1	B_l, B_h, dst, #16
+	ldp1	B_l, B_h, src, #16
+	stp1	C_l, C_h, dst, #16
+	ldp1	C_l, C_h, src, #16
+	stp1	D_l, D_h, dst, #16
+	ldp1	D_l, D_h, src, #16
+	subs	count, count, #64
+	b.ge	1b
+	stp1	A_l, A_h, dst, #16
+	stp1	B_l, B_h, dst, #16
+	stp1	C_l, C_h, dst, #16
+	stp1	D_l, D_h, dst, #16
+
+	tst	count, #0x3f
+	b.ne	.Ltail63
+.Lexitfunc:
diff --git a/arch/arm/lib/memcpy.S b/arch/arm/lib/memcpy.S
index 5123691..cfed319 100644
--- a/arch/arm/lib/memcpy.S
+++ b/arch/arm/lib/memcpy.S
@@ -1,64 +1,74 @@
 /*
- *  linux/arch/arm/lib/memcpy.S
+ * Copyright (C) 2013 ARM Ltd.
+ * Copyright (C) 2013 Linaro.
  *
- *  Author:	Nicolas Pitre
- *  Created:	Sep 28, 2005
- *  Copyright:	MontaVista Software, Inc.
+ * This code is based on glibc cortex strings work originally authored by =
Linaro
+ * and re-licensed under GPLv2 for the Linux kernel. The original code can
+ * be found @
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  published by the Free Software Foundation.
+ * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
+ * files/head:/src/aarch64/
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 =

 #include <linux/linkage.h>
 #include <asm/assembler.h>
 =

-#define LDR1W_SHIFT	0
-#define STR1W_SHIFT	0
-
-	.macro ldr1w ptr reg abort
-	W(ldr) \reg, [\ptr], #4
-	.endm
-
-	.macro ldr4w ptr reg1 reg2 reg3 reg4 abort
-	ldmia \ptr!, {\reg1, \reg2, \reg3, \reg4}
+/*
+ * Copy a buffer from src to dest (alignment handled by the hardware)
+ *
+ * Parameters:
+ *	x0 - dest
+ *	x1 - src
+ *	x2 - n
+ * Returns:
+ *	x0 - dest
+ */
+	.macro ldrb1 ptr, regB, val
+	ldrb  \ptr, [\regB], \val
 	.endm
 =

-	.macro ldr8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
-	ldmia \ptr!, {\reg1, \reg2, \reg3, \reg4, \reg5, \reg6, \reg7, \reg8}
+	.macro strb1 ptr, regB, val
+	strb \ptr, [\regB], \val
 	.endm
 =

-	.macro ldr1b ptr reg cond=3Dal abort
-	ldr\cond\()b \reg, [\ptr], #1
+	.macro ldrh1 ptr, regB, val
+	ldrh  \ptr, [\regB], \val
 	.endm
 =

-	.macro str1w ptr reg abort
-	W(str) \reg, [\ptr], #4
+	.macro strh1 ptr, regB, val
+	strh \ptr, [\regB], \val
 	.endm
 =

-	.macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
-	stmia \ptr!, {\reg1, \reg2, \reg3, \reg4, \reg5, \reg6, \reg7, \reg8}
+	.macro ldr1 ptr, regB, val
+	ldr \ptr, [\regB], \val
 	.endm
 =

-	.macro str1b ptr reg cond=3Dal abort
-	str\cond\()b \reg, [\ptr], #1
+	.macro str1 ptr, regB, val
+	str \ptr, [\regB], \val
 	.endm
 =

-	.macro enter reg1 reg2
-	stmdb sp!, {r0, \reg1, \reg2}
+	.macro ldp1 ptr, regB, regC, val
+	ldp \ptr, \regB, [\regC], \val
 	.endm
 =

-	.macro exit reg1 reg2
-	ldmfd sp!, {r0, \reg1, \reg2}
+	.macro stp1 ptr, regB, regC, val
+	stp \ptr, \regB, [\regC], \val
 	.endm
 =

-	.text
-
-/* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
-
+	.weak memcpy
 ENTRY(memcpy)
-
 #include "copy_template.S"
-
+	ret
 ENDPROC(memcpy)
-
diff --git a/arch/arm/lib/memset.S b/arch/arm/lib/memset.S
index c4d2672..380a540 100644
--- a/arch/arm/lib/memset.S
+++ b/arch/arm/lib/memset.S
@@ -1,124 +1,215 @@
 /*
- *  linux/arch/arm/lib/memset.S
+ * Copyright (C) 2013 ARM Ltd.
+ * Copyright (C) 2013 Linaro.
  *
- *  Copyright (C) 1995-2000 Russell King
+ * This code is based on glibc cortex strings work originally authored by =
Linaro
+ * and re-licensed under GPLv2 for the Linux kernel. The original code can
+ * be found @
+ *
+ * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
+ * files/head:/src/aarch64/
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License version 2 as
  * published by the Free Software Foundation.
  *
- *  ASM optimised string functions
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
+
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 =

-	.text
-	.align	5
-
-ENTRY(memset)
-	ands	r3, r0, #3		@ 1 unaligned?
-	mov	ip, r0			@ preserve r0 as return value
-	bne	6f			@ 1
 /*
- * we know that the pointer in ip is aligned to a word boundary.
- */
-1:	orr	r1, r1, r1, lsl #8
-	orr	r1, r1, r1, lsl #16
-	mov	r3, r1
-	cmp	r2, #16
-	blt	4f
-
-#if ! CALGN(1)+0
-
-/*
- * We need an 2 extra registers for this loop - use r8 and the LR
- */
-	stmfd	sp!, {r8, lr}
-	mov	r8, r1
-	mov	lr, r1
-
-2:	subs	r2, r2, #64
-	stmgeia	ip!, {r1, r3, r8, lr}	@ 64 bytes at a time.
-	stmgeia	ip!, {r1, r3, r8, lr}
-	stmgeia	ip!, {r1, r3, r8, lr}
-	stmgeia	ip!, {r1, r3, r8, lr}
-	bgt	2b
-	ldmeqfd	sp!, {r8, pc}		@ Now <64 bytes to go.
-/*
- * No need to correct the count; we're only testing bits from now on
+ * Fill in the buffer with character c (alignment handled by the hardware)
+ *
+ * Parameters:
+ *	x0 - buf
+ *	x1 - c
+ *	x2 - n
+ * Returns:
+ *	x0 - buf
  */
-	tst	r2, #32
-	stmneia	ip!, {r1, r3, r8, lr}
-	stmneia	ip!, {r1, r3, r8, lr}
-	tst	r2, #16
-	stmneia	ip!, {r1, r3, r8, lr}
-	ldmfd	sp!, {r8, lr}
-
-#else
 =

+dstin		.req	x0
+val		.req	w1
+count		.req	x2
+tmp1		.req	x3
+tmp1w		.req	w3
+tmp2		.req	x4
+tmp2w		.req	w4
+zva_len_x	.req	x5
+zva_len		.req	w5
+zva_bits_x	.req	x6
+
+A_l		.req	x7
+A_lw		.req	w7
+dst		.req	x8
+tmp3w		.req	w9
+tmp3		.req	x9
+
+	.weak memset
+ENTRY(memset)
+	mov	dst, dstin	/* Preserve return value.  */
+	and	A_lw, val, #255
+	orr	A_lw, A_lw, A_lw, lsl #8
+	orr	A_lw, A_lw, A_lw, lsl #16
+	orr	A_l, A_l, A_l, lsl #32
+
+	cmp	count, #15
+	b.hi	.Lover16_proc
+	/*All store maybe are non-aligned..*/
+	tbz	count, #3, 1f
+	str	A_l, [dst], #8
+1:
+	tbz	count, #2, 2f
+	str	A_lw, [dst], #4
+2:
+	tbz	count, #1, 3f
+	strh	A_lw, [dst], #2
+3:
+	tbz	count, #0, 4f
+	strb	A_lw, [dst]
+4:
+	ret
+
+.Lover16_proc:
+	/*Whether  the start address is aligned with 16.*/
+	neg	tmp2, dst
+	ands	tmp2, tmp2, #15
+	b.eq	.Laligned
 /*
- * This version aligns the destination pointer in order to write
- * whole cache lines at once.
- */
-
-	stmfd	sp!, {r4-r8, lr}
-	mov	r4, r1
-	mov	r5, r1
-	mov	r6, r1
-	mov	r7, r1
-	mov	r8, r1
-	mov	lr, r1
-
-	cmp	r2, #96
-	tstgt	ip, #31
-	ble	3f
-
-	and	r8, ip, #31
-	rsb	r8, r8, #32
-	sub	r2, r2, r8
-	movs	r8, r8, lsl #(32 - 4)
-	stmcsia	ip!, {r4, r5, r6, r7}
-	stmmiia	ip!, {r4, r5}
-	tst	r8, #(1 << 30)
-	mov	r8, r1
-	strne	r1, [ip], #4
-
-3:	subs	r2, r2, #64
-	stmgeia	ip!, {r1, r3-r8, lr}
-	stmgeia	ip!, {r1, r3-r8, lr}
-	bgt	3b
-	ldmeqfd	sp!, {r4-r8, pc}
-
-	tst	r2, #32
-	stmneia	ip!, {r1, r3-r8, lr}
-	tst	r2, #16
-	stmneia	ip!, {r4-r7}
-	ldmfd	sp!, {r4-r8, lr}
-
-#endif
-
-4:	tst	r2, #8
-	stmneia	ip!, {r1, r3}
-	tst	r2, #4
-	strne	r1, [ip], #4
+* The count is not less than 16, we can use stp to store the start 16 byte=
s,
+* then adjust the dst aligned with 16.This process will make the current
+* memory address at alignment boundary.
+*/
+	stp	A_l, A_l, [dst] /*non-aligned store..*/
+	/*make the dst aligned..*/
+	sub	count, count, tmp2
+	add	dst, dst, tmp2
+
+.Laligned:
+	cbz	A_l, .Lzero_mem
+
+.Ltail_maybe_long:
+	cmp	count, #64
+	b.ge	.Lnot_short
+.Ltail63:
+	ands	tmp1, count, #0x30
+	b.eq	3f
+	cmp	tmp1w, #0x20
+	b.eq	1f
+	b.lt	2f
+	stp	A_l, A_l, [dst], #16
+1:
+	stp	A_l, A_l, [dst], #16
+2:
+	stp	A_l, A_l, [dst], #16
 /*
- * When we get here, we've got less than 4 bytes to zero.  We
- * may have an unaligned pointer as well.
- */
-5:	tst	r2, #2
-	strneb	r1, [ip], #1
-	strneb	r1, [ip], #1
-	tst	r2, #1
-	strneb	r1, [ip], #1
-	mov	pc, lr
-
-6:	subs	r2, r2, #4		@ 1 do we have enough
-	blt	5b			@ 1 bytes to align with?
-	cmp	r3, #2			@ 1
-	strltb	r1, [ip], #1		@ 1
-	strleb	r1, [ip], #1		@ 1
-	strb	r1, [ip], #1		@ 1
-	add	r2, r2, r3		@ 1 (r2 =3D r2 - (4 - r3))
-	b	1b
+* The last store length is less than 16,use stp to write last 16 bytes.
+* It will lead some bytes written twice and the access is non-aligned.
+*/
+3:
+	ands	count, count, #15
+	cbz	count, 4f
+	add	dst, dst, count
+	stp	A_l, A_l, [dst, #-16]	/* Repeat some/all of last store. */
+4:
+	ret
+
+	/*
+	* Critical loop. Start at a new cache line boundary. Assuming
+	* 64 bytes per line, this ensures the entire loop is in one line.
+	*/
+.Lnot_short:
+	sub	dst, dst, #16/* Pre-bias.  */
+	sub	count, count, #64
+1:
+	stp	A_l, A_l, [dst, #16]
+	stp	A_l, A_l, [dst, #32]
+	stp	A_l, A_l, [dst, #48]
+	stp	A_l, A_l, [dst, #64]!
+	subs	count, count, #64
+	b.ge	1b
+	tst	count, #0x3f
+	add	dst, dst, #16
+	b.ne	.Ltail63
+.Lexitfunc:
+	ret
+
+	/*
+	* For zeroing memory, check to see if we can use the ZVA feature to
+	* zero entire 'cache' lines.
+	*/
+.Lzero_mem:
+	cmp	count, #63
+	b.le	.Ltail63
+	/*
+	* For zeroing small amounts of memory, it's not worth setting up
+	* the line-clear code.
+	*/
+	cmp	count, #128
+	b.lt	.Lnot_short /*count is at least  128 bytes*/
+
+	mrs	tmp1, dczid_el0
+	tbnz	tmp1, #4, .Lnot_short
+	mov	tmp3w, #4
+	and	zva_len, tmp1w, #15	/* Safety: other bits reserved.  */
+	lsl	zva_len, tmp3w, zva_len
+
+	ands	tmp3w, zva_len, #63
+	/*
+	* ensure the zva_len is not less than 64.
+	* It is not meaningful to use ZVA if the block size is less than 64.
+	*/
+	b.ne	.Lnot_short
+.Lzero_by_line:
+	/*
+	* Compute how far we need to go to become suitably aligned. We're
+	* already at quad-word alignment.
+	*/
+	cmp	count, zva_len_x
+	b.lt	.Lnot_short		/* Not enough to reach alignment.  */
+	sub	zva_bits_x, zva_len_x, #1
+	neg	tmp2, dst
+	ands	tmp2, tmp2, zva_bits_x
+	b.eq	2f			/* Already aligned.  */
+	/* Not aligned, check that there's enough to copy after alignment.*/
+	sub	tmp1, count, tmp2
+	/*
+	* grantee the remain length to be ZVA is bigger than 64,
+	* avoid to make the 2f's process over mem range.*/
+	cmp	tmp1, #64
+	ccmp	tmp1, zva_len_x, #8, ge	/* NZCV=3D0b1000 */
+	b.lt	.Lnot_short
+	/*
+	* We know that there's at least 64 bytes to zero and that it's safe
+	* to overrun by 64 bytes.
+	*/
+	mov	count, tmp1
+1:
+	stp	A_l, A_l, [dst]
+	stp	A_l, A_l, [dst, #16]
+	stp	A_l, A_l, [dst, #32]
+	subs	tmp2, tmp2, #64
+	stp	A_l, A_l, [dst, #48]
+	add	dst, dst, #64
+	b.ge	1b
+	/* We've overrun a bit, so adjust dst downwards.*/
+	add	dst, dst, tmp2
+2:
+	sub	count, count, zva_len_x
+3:
+	dc	zva, dst
+	add	dst, dst, zva_len_x
+	subs	count, count, zva_len_x
+	b.ge	3b
+	ands	count, count, zva_bits_x
+	b.ne	.Ltail_maybe_long
+	ret
 ENDPROC(memset)
-
diff --git a/arch/arm/lib/runtime-offset.S b/arch/arm/lib/runtime-offset.S
index f10c4c8..e368baa 100644
--- a/arch/arm/lib/runtime-offset.S
+++ b/arch/arm/lib/runtime-offset.S
@@ -8,11 +8,11 @@
  * we are currently running at.
  */
 ENTRY(get_runtime_offset)
-1:	adr r0, 1b
-	ldr r1, linkadr
-	subs r0, r1, r0
-THUMB(	subs r0, r0, #1)
-	mov pc, lr
+1:	adr x0, 1b
+	adr x1, get_runtime_offset
+	subs x0, x1, x0
+	subs x0, x0, #1
+	ret
 =

 linkadr:
 .word get_runtime_offset
@@ -28,7 +28,7 @@ __ld_var_base:
  */
 .macro ld_var_entry name
 	ENTRY(__ld_var_\name)
-		ldr r0, __\name
+		ldr x0, __\name
 		b 1f
 	__\name: .word \name - __ld_var_base
 	ENDPROC(__ld_var_\name)
@@ -47,6 +47,6 @@ ld_var_entry __image_end
 #endif
 =

 1:
-	ldr r1, =3D__ld_var_base
-	adds r0, r0, r1
-	mov pc, lr
+	ldr x1, =3D__ld_var_base
+	adds x0, x0, x1
+	ret
diff --git a/arch/arm/mach-virt/Kconfig b/arch/arm/mach-virt/Kconfig
new file mode 100644
index 0000000..1f43606
--- /dev/null
+++ b/arch/arm/mach-virt/Kconfig
@@ -0,0 +1,15 @@
+if ARCH_VIRT
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x40000000
+
+choice
+	prompt "ARM Board type"
+
+config MACH_VIRT
+	bool "ARM QEMU virt"
+
+endchoice
+
+endif
diff --git a/arch/arm/mach-virt/Makefile b/arch/arm/mach-virt/Makefile
new file mode 100644
index 0000000..3924a10
--- /dev/null
+++ b/arch/arm/mach-virt/Makefile
@@ -0,0 +1,3 @@
+obj-y +=3D devices.o reset.o
+
+lwl-y +=3D lowlevel.o
diff --git a/arch/arm/mach-virt/devices.c b/arch/arm/mach-virt/devices.c
new file mode 100644
index 0000000..999f463
--- /dev/null
+++ b/arch/arm/mach-virt/devices.c
@@ -0,0 +1,30 @@
+/*
+ * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <linux/amba/bus.h>
+#include <asm/memory.h>
+#include <mach/devices.h>
+#include <linux/ioport.h>
+
+void virt_add_ddram(u32 size)
+{
+	arm_add_mem_device("ram0", 0x40000000, size);
+}
+
+void virt_register_uart(unsigned id)
+{
+	resource_size_t start;
+
+	switch (id) {
+	case 0:
+		start =3D 0x09000000;
+		break;
+	default:
+		return;
+	}
+	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
+}
diff --git a/arch/arm/mach-virt/include/mach/debug_ll.h b/arch/arm/mach-vir=
t/include/mach/debug_ll.h
new file mode 100644
index 0000000..89b0692
--- /dev/null
+++ b/arch/arm/mach-virt/include/mach/debug_ll.h
@@ -0,0 +1,24 @@
+/*
+ * Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagniol@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#ifndef __MACH_DEBUG_LL_H__
+#define   __MACH_DEBUG_LL_H__
+
+#include <linux/amba/serial.h>
+#include <io.h>
+
+#define DEBUG_LL_PHYS_BASE		0x10000000
+#define DEBUG_LL_PHYS_BASE_RS1		0x1c000000
+
+#ifdef MP
+#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE
+#else
+#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE_RS1
+#endif
+
+#include <asm/debug_ll_pl011.h>
+
+#endif
diff --git a/arch/arm/mach-virt/include/mach/devices.h b/arch/arm/mach-virt=
/include/mach/devices.h
new file mode 100644
index 0000000..9872c61
--- /dev/null
+++ b/arch/arm/mach-virt/include/mach/devices.h
@@ -0,0 +1,13 @@
+/*
+ * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
+ *
+ * GPLv2 only
+ */
+
+#ifndef __ASM_ARCH_DEVICES_H__
+#define __ASM_ARCH_DEVICES_H__
+
+void virt_add_ddram(u32 size);
+void virt_register_uart(unsigned id);
+
+#endif /* __ASM_ARCH_DEVICES_H__ */
diff --git a/arch/arm/mach-virt/lowlevel.c b/arch/arm/mach-virt/lowlevel.c
new file mode 100644
index 0000000..6f695a5
--- /dev/null
+++ b/arch/arm/mach-virt/lowlevel.c
@@ -0,0 +1,19 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.c=
om>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/system_info.h>
+
+void barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	arm_setup_stack(STACK_BASE);
+
+	barebox_arm_entry(0x40000000, SZ_512M, NULL);
+}
diff --git a/arch/arm/mach-virt/reset.c b/arch/arm/mach-virt/reset.c
new file mode 100644
index 0000000..fb895eb
--- /dev/null
+++ b/arch/arm/mach-virt/reset.c
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <restart.h>
+#include <mach/devices.h>
+
+static void virt_reset_soc(struct restart_handler *rst)
+{
+	hang();
+}
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(virt_reset_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
-- =

2.8.0.rc3


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
