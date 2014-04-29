Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wf27R-0004qy-2y
 for barebox@lists.infradead.org; Tue, 29 Apr 2014 07:06:22 +0000
Date: Tue, 29 Apr 2014 09:05:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140429070557.GB5858@pengutronix.de>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
 <20140428072627.GN5858@pengutronix.de>
 <20140428205452.GA29091@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140428205452.GA29091@gmail.com>
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
Subject: Re: [PATCH 00/11] ARM: add initial support for Rockchip boards
To: Beniamino Galvani <b.galvani@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 28, 2014 at 10:54:53PM +0200, Beniamino Galvani wrote:
> On Mon, Apr 28, 2014 at 09:26:27AM +0200, Sascha Hauer wrote:
> > Hi Beniamino,
> > 
> > On Sun, Apr 27, 2014 at 11:30:33AM +0200, Beniamino Galvani wrote:
> > > This series adds an initial support for Rockchip SoCs and has been
> > > tested on a Radxa Rock board, on which I'm able to load a kernel from
> > > the network and boot it [1].
> > > 
> > > At the moment Barebox must be chainloaded from the Rockchip binary
> > > bootloader which performs low-level initializations and loads Barebox
> > > from the "boot" partition on the NAND.
> > > 
> > > Barebox should be written using the same procedure used for kernels:
> > > it must be prepared with the mkimage tool and then written with
> > > rkflashkit.
> > > 
> > > There is a u-boot code released by Rockchip [2] which probably
> > > includes all the low-level initializations but I'm not brave enough to
> > > try it.
> > > 
> > > The patchset adds ethernet and pinctrl drivers, PLL and clocks
> > > initialization, and code to power on the external PHY of the board
> > > through the PMIC.
> > 
> > Awesome! I'm happy to see barebox support for one of the more popular
> > Linux ARM architectures.
> > 
> > The patches look quite good and there's not much to be done to
> > make them ready for merging.
> > 
> > I'm just on the way to merge the Linux devicetree files into barebox
> > and use them where possible so we do not duplicate the devicetrees in
> > barebox. Could you post a followup once to base the rockchip dts files
> > on the Linux dts files once I have everything in place? I saw that you
> > already use the mainline dts files, but these do not contain the
> > ethernet nodes for example.
> 
> Ok, I will do. Just a question: my series is against -next because it
> requires commit 6720ad6f16db5839a72aa8b53e89918a4f0059bd "clk: move
> of_clk_get_parent_name() to common clk code", while your dts branch
> derives from master and doesn't have this commit. Which branch should
> I base the next version on?

I reshuffled the patches in -next so that your patches have the correct
dependencies.

> 
> > Also I'd like to let rockchip use the multi image mechanism. This is not
> > much work when you know what to do. You could change it yourself or I do
> > the change for you, but in this case, could you give the result a test?
> 
> I'm not familiar with multi-image support but I would be glad to try
> it if you're willing to implement it.

Ok, I pushed everything to -next. The multi image conversion is in the
attached patch (also included in -next). Try building rockchip_defconfig
and start images/barebox-radxa-rock.img. If it works then we are lucky,
if not we'll have to work out a way to debug the patch.

BTW I noticed the upstream radxa rock dts file does not have a board
specific compatible. I added this in my patch, but this should be done
upstream.

Sascha

------------------------8<--------------------------------

From 903b1d430904588ef9f6b2f897b46e3e3cc4516a Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Apr 2014 08:34:54 +0200
Subject: [PATCH] ARM: Rockchip: switch to multiimage support

- Add images/Makefile.rockchip
- Allow multiple boards to be selected
- protect initcalls with appropriate of_machine_is_compatible
- rename board specific config to SoC config
- Add dtb file to compilation
- turn barebox_arm_reset_vectorto ENTRY_FUNCTION
- pass dtb to barebox_arm_entry

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                      |  1 +
 arch/arm/boards/radxa-rock/board.c    |  9 +++++
 arch/arm/boards/radxa-rock/lowlevel.c | 11 +++++--
 arch/arm/configs/radxa-rock_defconfig | 62 -----------------------------------
 arch/arm/configs/rockchip_defconfig   | 60 +++++++++++++++++++++++++++++++++
 arch/arm/dts/Makefile                 |  2 ++
 arch/arm/dts/rk3188-radxarock.dts     |  1 +
 arch/arm/mach-rockchip/Kconfig        |  5 +--
 images/Makefile                       |  1 +
 images/Makefile.rockchip              |  9 +++++
 10 files changed, 93 insertions(+), 68 deletions(-)
 delete mode 100644 arch/arm/configs/radxa-rock_defconfig
 create mode 100644 arch/arm/configs/rockchip_defconfig
 create mode 100644 images/Makefile.rockchip

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 991a411..3710eed 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -134,6 +134,7 @@ config ARCH_ROCKCHIP
 	select COMMON_CLK_OF_PROVIDER
 	select GPIOLIB
 	select PINCTRL_ROCKCHIP
+	select HAVE_PBL_MULTI_IMAGES
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA cyclone5"
diff --git a/arch/arm/boards/radxa-rock/board.c b/arch/arm/boards/radxa-rock/board.c
index 55b4d23..691f243 100644
--- a/arch/arm/boards/radxa-rock/board.c
+++ b/arch/arm/boards/radxa-rock/board.c
@@ -45,6 +45,9 @@ static void radxa_rock_pmic_init(void)
 
 static int setup_plls(void)
 {
+	if (!of_machine_is_compatible("radxa,rock"))
+		return 0;
+
 	/* Codec PLL frequency: 594 MHz */
 	rk3188_pll_set_parameters(RK3188_CPLL, 2, 198, 4);
 	/* General PLL frequency: 300 MHz */
@@ -56,6 +59,9 @@ coredevice_initcall(setup_plls);
 
 static int devices_init(void)
 {
+	if (!of_machine_is_compatible("radxa,rock"))
+		return 0;
+
 	i2c_register_board_info(0, radxa_rock_i2c_devices,
 				ARRAY_SIZE(radxa_rock_i2c_devices));
 	add_generic_device_res("i2c-gpio", 0, NULL, 0, &i2c_gpio_pdata);
@@ -71,6 +77,9 @@ device_initcall(devices_init);
 
 static int hostname_init(void)
 {
+	if (!of_machine_is_compatible("radxa,rock"))
+		return 0;
+
 	barebox_set_hostname("radxa-rock");
 
 	return 0;
diff --git a/arch/arm/boards/radxa-rock/lowlevel.c b/arch/arm/boards/radxa-rock/lowlevel.c
index c68d229..0b40f10 100644
--- a/arch/arm/boards/radxa-rock/lowlevel.c
+++ b/arch/arm/boards/radxa-rock/lowlevel.c
@@ -16,8 +16,15 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_rk3188_radxarock_start[];
+
+ENTRY_FUNCTION(start_radxa_rock, r0, r1, r2)
 {
+	uint32_t fdt;
+
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x60000000, SZ_2G, 0);
+
+	fdt = (uint32_t)__dtb_rk3188_radxarock_start - get_runtime_offset();
+
+	barebox_arm_entry(0x60000000, SZ_2G, fdt);
 }
diff --git a/arch/arm/configs/radxa-rock_defconfig b/arch/arm/configs/radxa-rock_defconfig
deleted file mode 100644
index ab45cb9..0000000
--- a/arch/arm/configs/radxa-rock_defconfig
+++ /dev/null
@@ -1,62 +0,0 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="rk3188-radxarock"
-CONFIG_ARCH_ROCKCHIP=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MALLOC_SIZE=0x4000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_MMU=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/radxa-rock/env"
-CONFIG_PROMPT="radxa-rock:"
-CONFIG_LONGHELP=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
-CONFIG_NET_CMD_IFUP=y
-CONFIG_CMD_BOOTM=y
-CONFIG_CMD_BOOTU=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_CLK=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_NET=y
-CONFIG_NET_PING=y
-CONFIG_NET_DHCP=y
-CONFIG_PINCTRL=y
-CONFIG_PINCTRL_ROCKCHIP=y
-CONFIG_I2C=y
-CONFIG_I2C_GPIO=y
-CONFIG_MFD_ACT8846=y
-CONFIG_DRIVER_NET_ARC_EMAC=y
-CONFIG_SMSC_PHY=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/rockchip_defconfig b/arch/arm/configs/rockchip_defconfig
new file mode 100644
index 0000000..3bc4a80
--- /dev/null
+++ b/arch/arm/configs/rockchip_defconfig
@@ -0,0 +1,60 @@
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_MACH_RADXA_ROCK=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_PROMPT="radxa-rock:"
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/radxa-rock/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_ARC_EMAC=y
+CONFIG_SMSC_PHY=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MFD_ACT8846=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b45c174..34c5165 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -29,6 +29,7 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-udoo.dtb \
 	imx6q-var-custom.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox-bb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3188-radxarock.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
 dtb-$(CONFIG_ARCH_TEGRA) += \
@@ -54,6 +55,7 @@ pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 pbl-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
+pbl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += imx6dl-hummingboard.dtb.o
diff --git a/arch/arm/dts/rk3188-radxarock.dts b/arch/arm/dts/rk3188-radxarock.dts
index be2a302..2d49d69 100644
--- a/arch/arm/dts/rk3188-radxarock.dts
+++ b/arch/arm/dts/rk3188-radxarock.dts
@@ -17,6 +17,7 @@
 
 / {
 	model = "Radxa Rock";
+	compatible = "radxa,rock", "rockchip,rk3188";
 
 	memory {
 		reg = <0x60000000 0x80000000>;
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 9348651..9c9eed0 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -4,12 +4,9 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x68000000
 
-choice
-	prompt "Board type"
+comment "select Rockchip boards:"
 
 config MACH_RADXA_ROCK
 	bool "Radxa rock board"
 
-endchoice
-
 endif
diff --git a/images/Makefile b/images/Makefile
index 8ec1791..5509a4c 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -99,6 +99,7 @@ $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 include $(srctree)/images/Makefile.am33xx
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.mvebu
+include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.tegra
 
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
new file mode 100644
index 0000000..2444433
--- /dev/null
+++ b/images/Makefile.rockchip
@@ -0,0 +1,9 @@
+#
+# barebox image generation Makefile for Rockchip images
+#
+
+board = $(srctree)/arch/$(ARCH)/boards
+
+pblx-$(CONFIG_MACH_RADXA_ROCK) += start_radxa_rock
+FILE_barebox-radxa-rock.img = start_radxa_rock.pblx
+image-$(CONFIG_MACH_RADXA_ROCK) += barebox-radxa-rock.img
-- 
1.9.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
