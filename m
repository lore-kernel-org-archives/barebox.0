Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k32VW-0001aO-28
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 19:21:55 +0000
Received: by mail-qk1-x734.google.com with SMTP id x69so39519013qkb.1
 for <barebox@lists.infradead.org>; Tue, 04 Aug 2020 12:21:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAKd8=GuMSvfaXiTvx4MSOnkLNvTuZg--deRufN6wDaPr8OxA1g@mail.gmail.com>
 <e29ef420-c914-72b4-5ef2-875d3f9844e7@pengutronix.de>
 <CAKd8=Gsyqhy-bzTdSQTfd8z6=JtkkhP1m00yoC=3uLRr4q1-xg@mail.gmail.com>
 <c726160f-1221-b26e-ccc1-0122f2ac7973@pengutronix.de>
In-Reply-To: <c726160f-1221-b26e-ccc1-0122f2ac7973@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Tue, 4 Aug 2020 21:21:40 +0200
Message-ID: <CAKd8=GsMPPV+zmUFT1j+OnToOU4urCQ4kQR7yYsR-+CcOoNWDw@mail.gmail.com>
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
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 4 Aug 2020 at 18:15, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Lars,
>
> On 8/4/20 3:07 PM, Lars Pedersen wrote:
> > I just go an MCIMX7SABRE board and it now trying to start barebox from
> > the external SD card, which I guess should be possible right?
> >
> > I have taken barebox 2020.07.0 and copied the imx_v7_defconfig and
> > deselected all boards except the "NXP i.MX7 SabreSD board"
> >
> > After compilation i copy the image using:
> >
> > sudo dd if=barebox-freescale-mx7-sabresd.img of=/dev/sdb bs=1024 skip=1 seek=1
> > sync>
> > But still no boot screen for that either. :/
> >
> > Shouldn't this work out of the box??
>
> Works for me.
>
> imx_v7_defconfig
> OSELAS.Toolchain-2019.09.1
> Image written to SD card (offset 0) and booted from.

I'm using 2019.09.1 toolchain too. When you are saying "offset 0" is
that the same as nuking the MBR on the sd card? Like the following?
sudo dd if=barebox-freescale-mx7-sabresd.img of=/dev/sdb bs=1024

Okay I think that I have found the issue:
If are buldiing all the boards selected by the imx_v7_defconfig I get
an much bigger image size:

All boards selected (657570 bytes)
[DOCKER][developer@25071f8c717f ptxdist]$ ll
platform-tqma7/images/barebox-freescale-mx7-sabresd.img
-rw-r--r--. 1 developer developer 657570 Aug  4 19:07
platform-tqma7/images/barebox-freescale-mx7-sabresd.img
[DOCKER][developer@25071f8c717f ptxdist]$ sha256sum
platform-tqma7/images/barebox-freescale-mx7-sabresd.img
e454525846e6fbfbd559c100106e43ef5b1f14112562aeb585ccb0b1d4b1bdfe
platform-tqma7/images/barebox-freescale-mx7-sabresd.img

Only the NXP i.MX7 SabreSD board selected (497548 bytes)
[DOCKER][developer@25071f8c717f ptxdist]$ ll platform-tqma7/images/barebox-*
-rw-r--r--. 1 developer developer     28 Aug  4 19:14
platform-tqma7/images/barebox-default-environment
-rw-r--r--. 1 developer developer 497548 Aug  4 19:14
platform-tqma7/images/barebox-freescale-mx7-sabresd.img
lrwxrwxrwx. 1 developer developer     33 Aug  4 19:14
platform-tqma7/images/barebox-image ->
barebox-freescale-mx7-sabresd.img

A lot of stuff gets deselected, since the board doesn't depend  on it.
Stuff like: CONFIG_MCI_IMX_ESDHC_PBL is suddenly not enabled, which I
think is vital. So I'll test the it tomorrow

/Lars Pedersen

--- barebox_full    2020-08-04 21:06:31.270363892 +0200
+++ barebox_one_board    2020-08-04 21:09:46.162669378 +0200
@@ -4,7 +4,6 @@
 #
 CONFIG_ARM=y
 CONFIG_ARM_LINUX=y
-CONFIG_ARM_USE_COMPRESSED_DTB=y
 CONFIG_TEXT_BASE=0x0

 #
@@ -49,80 +48,67 @@
 # processor features
 #
 # CONFIG_BOOT_ENDIANNESS_SWITCH is not set
-CONFIG_ARCH_HAS_L2X0=y
-# CONFIG_CACHE_L2X0 is not set
-CONFIG_ARCH_TEXT_BASE=0x97f00000
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xffffffff
 CONFIG_ARCH_IMX_IMXIMAGE=y
-CONFIG_RESET_IMX_SRC=y
-CONFIG_MACH_FREESCALE_MX51_PDK_POWER=y

 #
 # Freescale i.MX System-on-Chip
 #
-CONFIG_ARCH_IMX50=y
-CONFIG_ARCH_IMX51=y
-CONFIG_ARCH_IMX53=y
-CONFIG_ARCH_IMX6=y
-CONFIG_ARCH_IMX6SX=y
-CONFIG_ARCH_IMX6UL=y
 CONFIG_ARCH_IMX7=y
-CONFIG_ARCH_VF610=y
 CONFIG_IMX_MULTI_BOARDS=y
 # CONFIG_MACH_SCB9328 is not set
 # CONFIG_MACH_TX25 is not set
 # CONFIG_MACH_PCA100 is not set
 # CONFIG_MACH_PCM038 is not set
-CONFIG_MACH_KINDLE_MX50=y
-CONFIG_MACH_CCMX51=y
-CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
-CONFIG_MACH_EMBEDSKY_E9=y
-CONFIG_MACH_FREESCALE_MX51_PDK=y
-CONFIG_MACH_CCMX53=y
-CONFIG_MACH_FREESCALE_MX53_LOCO=y
-CONFIG_MACH_GUF_VINCELL=y
-CONFIG_MACH_TQMA53=y
-CONFIG_MACH_FREESCALE_MX53_VMX53=y
-CONFIG_MACH_TX53=y
-CONFIG_MACH_PHYTEC_SOM_IMX6=y
-CONFIG_MACH_KONTRON_SAMX6I=y
-CONFIG_MACH_DFI_FS700_M60=y
-CONFIG_MACH_GUF_SANTARO=y
-CONFIG_MACH_REALQ7=y
-CONFIG_MACH_GK802=y
-CONFIG_MACH_ELTEC_HIPERCAM=y
-CONFIG_MACH_TQMA6X=y
-CONFIG_MACH_TX6X=y
-CONFIG_MACH_SABRELITE=y
-CONFIG_MACH_SABRESD=y
-CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
-CONFIG_MACH_NITROGEN6=y
-CONFIG_MACH_SOLIDRUN_MICROSOM=y
-CONFIG_MACH_TECHNEXION_PICO_HOBBIT=y
-CONFIG_MACH_TECHNEXION_WANDBOARD=y
-CONFIG_MACH_EMBEST_MARSBOARD=y
-CONFIG_MACH_EMBEST_RIOTBOARD=y
-CONFIG_MACH_UDOO=y
+# CONFIG_MACH_KINDLE_MX50 is not set
+# CONFIG_MACH_CCMX51 is not set
+# CONFIG_MACH_EFIKA_MX_SMARTBOOK is not set
+# CONFIG_MACH_EMBEDSKY_E9 is not set
+# CONFIG_MACH_FREESCALE_MX51_PDK is not set
+# CONFIG_MACH_CCMX53 is not set
+# CONFIG_MACH_FREESCALE_MX53_LOCO is not set
+# CONFIG_MACH_GUF_VINCELL is not set
+# CONFIG_MACH_TQMA53 is not set
+# CONFIG_MACH_FREESCALE_MX53_VMX53 is not set
+# CONFIG_MACH_TX53 is not set
+# CONFIG_MACH_PHYTEC_SOM_IMX6 is not set
+# CONFIG_MACH_KONTRON_SAMX6I is not set
+# CONFIG_MACH_DFI_FS700_M60 is not set
+# CONFIG_MACH_GUF_SANTARO is not set
+# CONFIG_MACH_REALQ7 is not set
+# CONFIG_MACH_GK802 is not set
+# CONFIG_MACH_ELTEC_HIPERCAM is not set
+# CONFIG_MACH_TQMA6X is not set
+# CONFIG_MACH_TX6X is not set
+# CONFIG_MACH_SABRELITE is not set
+# CONFIG_MACH_SABRESD is not set
+# CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB is not set
+# CONFIG_MACH_NITROGEN6 is not set
+# CONFIG_MACH_SOLIDRUN_MICROSOM is not set
+# CONFIG_MACH_TECHNEXION_PICO_HOBBIT is not set
+# CONFIG_MACH_TECHNEXION_WANDBOARD is not set
+# CONFIG_MACH_EMBEST_MARSBOARD is not set
+# CONFIG_MACH_EMBEST_RIOTBOARD is not set
+# CONFIG_MACH_UDOO is not set
 # CONFIG_MACH_UDOO_NEO is not set
-CONFIG_MACH_VARISCITE_MX6=y
-CONFIG_MACH_GW_VENTANA=y
-CONFIG_MACH_CM_FX6=y
-CONFIG_MACH_ADVANTECH_ROM_742X=y
-CONFIG_MACH_WARP7=y
-CONFIG_MACH_VF610_TWR=y
-CONFIG_MACH_ZII_COMMON=y
-CONFIG_MACH_ZII_RDU1=y
-CONFIG_MACH_ZII_RDU2=y
+# CONFIG_MACH_VARISCITE_MX6 is not set
+# CONFIG_MACH_GW_VENTANA is not set
+# CONFIG_MACH_CM_FX6 is not set
+# CONFIG_MACH_ADVANTECH_ROM_742X is not set
+# CONFIG_MACH_WARP7 is not set
+# CONFIG_MACH_VF610_TWR is not set
+# CONFIG_MACH_ZII_RDU1 is not set
+# CONFIG_MACH_ZII_RDU2 is not set
 # CONFIG_MACH_ZII_IMX8MQ_DEV is not set
-CONFIG_MACH_ZII_VF610_DEV=y
+# CONFIG_MACH_ZII_VF610_DEV is not set
 # CONFIG_MACH_ZII_IMX7D_DEV is not set
-CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
+# CONFIG_MACH_PHYTEC_PHYCORE_IMX7 is not set
 CONFIG_MACH_FREESCALE_MX7_SABRESD=y
-CONFIG_MACH_NXP_IMX6ULL_EVK=y
+# CONFIG_MACH_NXP_IMX6ULL_EVK is not set
 # CONFIG_MACH_NXP_IMX8MM_EVK is not set
 # CONFIG_MACH_NXP_IMX8MQ_EVK is not set
 # CONFIG_MACH_PHYTEC_SOM_IMX8MQ is not set
-CONFIG_MACH_GRINN_LITEBOARD=y
+# CONFIG_MACH_GRINN_LITEBOARD is not set
 # CONFIG_MACH_DIGI_CCIMX6ULSBCPRO is not set

 #
@@ -133,17 +119,14 @@
 #
 # i.MX specific settings
 #
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-# CONFIG_HABV4 is not set
+# CONFIG_IMX_IIM is not set
 # end of i.MX specific settings

 # CONFIG_BOARD_ARM_GENERIC_DT is not set
 CONFIG_ARM_ASM_UNIFIED=y
 CONFIG_AEABI=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
-# CONFIG_ARM_BOARD_PREPEND_ATAG is not set
+# CONFIG_ARM_BOARD_APPEND_ATAG is not set
 # end of System Type

 #
@@ -176,7 +159,6 @@
 CONFIG_STDDEV=y
 CONFIG_MENUTREE=y
 CONFIG_FILE_LIST=y
-CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB=y
 CONFIG_UBIFORMAT=y
 CONFIG_USBGADGET_START=y
 CONFIG_BOOT=y
@@ -210,6 +192,7 @@
 # CONFIG_IMAGE_COMPRESSION_NONE is not set
 CONFIG_MMU=y
 CONFIG_MMU_EARLY=y
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_BAREBOX_MAX_PBL_SIZE=0xffffffff
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
 CONFIG_STACK_SIZE=0x8000
@@ -220,7 +203,7 @@
 # CONFIG_MALLOC_DLMALLOC is not set
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
+# CONFIG_RELOCATABLE is not set
 # CONFIG_PANIC_HANG is not set
 CONFIG_PROMPT="barebox:"
 CONFIG_BAUDRATE=115200
@@ -470,7 +453,6 @@
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_NAND=y
 CONFIG_CMD_NANDTEST=y
@@ -537,7 +519,6 @@
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 # CONFIG_DRIVER_SERIAL_CADENCE is not set
-CONFIG_DRIVER_SERIAL_LPUART=y
 # end of serial drivers

 CONFIG_ARCH_HAS_FEC_IMX=y
@@ -597,25 +578,11 @@
 CONFIG_SPI_MEM=y
 # CONFIG_DRIVER_SPI_FSL_QUADSPI is not set
 CONFIG_DRIVER_SPI_GPIO=y
-CONFIG_DRIVER_SPI_IMX=y
-CONFIG_DRIVER_SPI_IMX_0_7=y
+# CONFIG_DRIVER_SPI_IMX is not set
 CONFIG_DRIVER_SPI_IMX_2_3=y
-CONFIG_DRIVER_SPI_DSPI=y
 # end of SPI drivers

-CONFIG_I2C=y
-
-#
-# I2C Hardware Bus support
-#
-# CONFIG_I2C_GPIO is not set
-CONFIG_I2C_IMX=y
-# CONFIG_I2C_DESIGNWARE is not set
-# CONFIG_I2C_MV64XXX is not set
-# CONFIG_I2C_STM32 is not set
-# end of I2C Hardware Bus support
-
-# CONFIG_I2C_MUX is not set
+# CONFIG_I2C is not set
 CONFIG_MTD=y
 CONFIG_MTD_WRITE=y
 CONFIG_MTD_OOB_DEVICE=y
@@ -651,7 +618,6 @@
 CONFIG_NAND_BBT=y
 CONFIG_NAND_ALLOW_ERASE_BAD=y
 CONFIG_NAND_IMX=y
-CONFIG_NAND_MXS=y
 # CONFIG_MTD_NAND_ECC_SMC is not set
 CONFIG_MTD_NAND_IDS=y
 # CONFIG_MTD_NAND_DENALI is not set
@@ -687,7 +653,6 @@
 CONFIG_USB_HOST=y
 CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_IMX_CHIPIDEA_USBMISC=y
-CONFIG_USB_IMX_PHY=y
 # CONFIG_USB_DWC3 is not set
 CONFIG_USB_EHCI=y
 # CONFIG_USB_DWC2_HOST is not set
@@ -699,7 +664,6 @@
 #
 # USB Miscellaneous drivers
 #
-# CONFIG_USB_HUB_USB251XB is not set
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DUALSPEED=y
 CONFIG_USB_GADGET_DRIVER_ARC=y
@@ -714,21 +678,16 @@
 # CONFIG_USB_MUSB is not set
 CONFIG_VIDEO=y
 # CONFIG_FRAMEBUFFER_CONSOLE is not set
-# CONFIG_DRIVER_VIDEO_FB_SSD1307 is not set
 CONFIG_VIDEO_VPL=y
 CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
 CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
-CONFIG_DRIVER_VIDEO_IMX_IPUV3_HDMI=y
 # CONFIG_DRIVER_VIDEO_IMX_IPUV3_PARALLEL is not set
 CONFIG_DRIVER_VIDEO_SIMPLEFB=y
-CONFIG_DRIVER_VIDEO_EDID=y
 # CONFIG_DRIVER_VIDEO_BACKLIGHT is not set

 #
 # Video encoder chips
 #
-# CONFIG_DRIVER_VIDEO_MTL017 is not set
-# CONFIG_DRIVER_VIDEO_TC358767 is not set
 # CONFIG_DRIVER_VIDEO_SIMPLE_PANEL is not set
 CONFIG_MCI_SDHCI=y
 CONFIG_MCI=y
@@ -749,7 +708,6 @@
 # CONFIG_MCI_IMX_ESDHC_PIO is not set
 # CONFIG_MCI_ARASAN is not set
 # CONFIG_MCI_SPI is not set
-CONFIG_MCI_IMX_ESDHC_PBL=y
 CONFIG_HAVE_CLK=y
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_COMMON_CLK=y
@@ -761,7 +719,6 @@
 CONFIG_ARCH_HAS_IMX_GPT=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=1000
 CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER=y
-CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER=y
 CONFIG_CLOCKSOURCE_IMX_GPT=y
 # CONFIG_CLOCKSOURCE_DW_APB_TIMER is not set
 # end of Clocksource
@@ -769,18 +726,8 @@
 #
 # Multifunction device drivers
 #
-# CONFIG_MFD_ACT8846 is not set
-# CONFIG_MFD_DA9053 is not set
-CONFIG_MFD_DA9063=y
-# CONFIG_MFD_LP3972 is not set
-CONFIG_MFD_MC13XXX=y
-CONFIG_MFD_MC34704=y
-CONFIG_MFD_MC9SDZ60=y
-CONFIG_MFD_STMPE=y
-CONFIG_MFD_SYSCON=y
-# CONFIG_MFD_TWL4030 is not set
-# CONFIG_MFD_TWL6030 is not set
-# CONFIG_MFD_STPMIC1 is not set
+# CONFIG_MFD_MC13XXX is not set
+# CONFIG_MFD_SYSCON is not set
 # CONFIG_FINTEK_SUPERIO is not set
 # CONFIG_SMSC_SUPERIO is not set
 # end of Multifunction device drivers
@@ -801,13 +748,11 @@
 # CONFIG_LED_GPIO_RGB is not set
 # CONFIG_LED_GPIO_BICOLOR is not set
 CONFIG_LED_TRIGGERS=y
-# CONFIG_LED_PCA955X is not set

 #
 # EEPROM support
 #
 CONFIG_EEPROM_AT25=y
-CONFIG_EEPROM_AT24=y
 # end of EEPROM support

 #
@@ -816,7 +761,6 @@
 CONFIG_INPUT=y
 CONFIG_KEYBOARD_GPIO=y
 # CONFIG_KEYBOARD_IMX_KEYPAD is not set
-# CONFIG_KEYBOARD_QT1070 is not set
 # CONFIG_KEYBOARD_USB is not set
 # CONFIG_INPUT_SPECIALKEYS is not set
 # end of Input device support
@@ -833,7 +777,6 @@
 #
 # DMA support
 #
-CONFIG_MXS_APBH_DMA=y
 # end of DMA support

 CONFIG_GPIOLIB=y
@@ -844,12 +787,7 @@
 CONFIG_GPIO_74164=y
 # CONFIG_GPIO_GENERIC_PLATFORM is not set
 CONFIG_GPIO_IMX=y
-CONFIG_GPIO_VF610=y
-# CONFIG_GPIO_PCA953X is not set
-# CONFIG_GPIO_PCF857X is not set
-CONFIG_GPIO_STMPE=y
 # CONFIG_GPIO_DESIGNWARE is not set
-# CONFIG_GPIO_SX150X is not set
 # end of GPIO

 # CONFIG_W1 is not set
@@ -860,14 +798,9 @@
 CONFIG_PINCTRL=y
 CONFIG_PINCTRL_IMX_IOMUX_V3=y
 # CONFIG_PINCTRL_SINGLE is not set
-CONFIG_PINCTRL_VF610=y
 # end of Pin controllers

-CONFIG_NVMEM=y
-# CONFIG_NVMEM_SNVS_LPGPR is not set
-CONFIG_IMX_OCOTP=y
-# CONFIG_IMX_OCOTP_WRITE is not set
-# CONFIG_EEPROM_93XX46 is not set
+# CONFIG_NVMEM is not set

 #
 # Bus devices
@@ -877,8 +810,6 @@

 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
-# CONFIG_REGULATOR_PFUZE is not set
-# CONFIG_REGULATOR_ANATOP is not set

 #
 # Remoteproc drivers
@@ -992,16 +923,14 @@
 # CONFIG_BASE64 is not set
 CONFIG_PROCESS_ESCAPE_SEQUENCE=y
 CONFIG_LZO_DECOMPRESS=y
-CONFIG_BCH=y
 CONFIG_FNMATCH=y
 CONFIG_QSORT=y
 CONFIG_LIBSCAN=y
 CONFIG_LIBUBIGEN=y
-CONFIG_STMP_DEVICE=y
 # CONFIG_RATP is not set
 # CONFIG_ALLOW_PRNG_FALLBACK is not set
 # CONFIG_CRC_CCITT is not set
-CONFIG_CRC8=y
+# CONFIG_CRC8 is not set




>
> Can you try with same toolchain? If that works, it
> might be a compiler issue? What are you using?
>
> >
> > /Lars Pedersen
> >
> > On Mon, 3 Aug 2020 at 12:10, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>
> >> Hi,
> >>
> >> On 7/29/20 6:52 PM, Lars Pedersen wrote:
> >>> I have spent the last couple of days trying to port our bootloader
> >>> from u-boot to barebox 2020.07 but have yet to get any console output.
> >>> Our product is based on tqma7d i.MX7 dual core cpu and uses UART4 for
> >>> serial console and boots from internal eMMC.
> >>>
> >>> I created a new board inspired from "NXP i.MX7 SabreSD board" and
> >>> tried to only add the basic in the first step to get a console output
> >>> working. The image is built using ptxdist and the imx_v7_defconfig
> >>> where the new board is selected. The image is flashed with "dd
> >>> if=barebox-image of=/dev/mmcblk0 bs=1024 skip=1 seek=1 conv=fsync".
> >>> The device works using u-boot 2020.07 with the same device trees but
> >>> we thought it was time to try out barebox since u-boot felt a little
> >>> bloated :)
> >>>
> >>> So can anyone be of assistance and tell me what I'm missing?
> >>
> >> When I looked through your patch the first time, I just looked
> >> for stuff that would cause it to not boot. Some more comments
> >> inline that are unrelated to your boot problems.
> >>
> >>>
> >>> /Lars Pedersen
> >>>
> >>> From: Lars Pedersen <laa@kamstrup.com>
> >>> Date: Tue, 28 Jul 2020 08:57:57 +0000
> >>> Subject: [PATCH] Add kamstrup imx7d dev board
> >>>
> >>> ---
> >>>  arch/arm/boards/Makefile                           |   1 +
> >>>  arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile     |   2 +
> >>>  arch/arm/boards/kamstrup-imx7d-tqma7d/board.c      |  19 ++
> >>>  .../flash-header-kamstrup-imx7d-tqma7d.imxcfg      |  79 ++++++
> >>>  arch/arm/boards/kamstrup-imx7d-tqma7d/lowlevel.c   |  35 +++
> >>>  arch/arm/dts/Makefile                              |   1 +
> >>>  arch/arm/dts/imx7d-flex-concentrator-mfg.dts       |  11 +
> >>>  arch/arm/mach-imx/Kconfig                          |   5 +
> >>>  drivers/regulator/Kconfig                          |   2 +-
> >>>  dts/src/arm/imx7d-flex-concentrator-mfg.dts        |  25 ++
> >>>  dts/src/arm/imx7d-flex-concentrator.dts            | 313 +++++++++++++++++++++
> >>>  images/Makefile.imx                                |   5 +
> >>>  12 files changed, 497 insertions(+), 1 deletion(-)
> >>>  create mode 100644 arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile
> >>>  create mode 100644 arch/arm/boards/kamstrup-imx7d-tqma7d/board.c
> >>>  create mode 100644
> >>> arch/arm/boards/kamstrup-imx7d-tqma7d/flash-header-kamstrup-imx7d-tqma7d.imxcfg
> >>>  create mode 100644 arch/arm/boards/kamstrup-imx7d-tqma7d/lowlevel.c
> >>>  create mode 100644 arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> >>>  create mode 100644 dts/src/arm/imx7d-flex-concentrator-mfg.dts
> >>>  create mode 100644 dts/src/arm/imx7d-flex-concentrator.dts
> >>>
> >>> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> >>> index e9e9163d589b..58bb4cf2adab 100644
> >>> --- a/arch/arm/boards/Makefile
> >>> +++ b/arch/arm/boards/Makefile
> >>> @@ -64,6 +64,7 @@ obj-$(CONFIG_MACH_HIGHBANK)            += highbank/
> >>>  obj-$(CONFIG_MACH_IMX21ADS)            += freescale-mx21-ads/
> >>>  obj-$(CONFIG_MACH_IMX233_OLINUXINO)        += imx233-olinuxino/
> >>>  obj-$(CONFIG_MACH_IMX27ADS)            += freescale-mx27-ads/
> >>> +obj-$(CONFIG_MACH_KAMSTRUP_IMX7D_TQMA7D)    += kamstrup-imx7d-tqma7d/
> >>>  obj-$(CONFIG_MACH_KINDLE3)            += kindle3/
> >>>  obj-$(CONFIG_MACH_KONTRON_SAMX6I)        += kontron-samx6i/
> >>>  obj-$(CONFIG_MACH_LENOVO_IX4_300D)        += lenovo-ix4-300d/
> >>> diff --git a/arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile
> >>> b/arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile
> >>> new file mode 100644
> >>> index 000000000000..01c7a259e9a5
> >>> --- /dev/null
> >>> +++ b/arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile
> >>> @@ -0,0 +1,2 @@
> >>> +obj-y += board.o
> >>> +lwl-y += lowlevel.o
> >>> diff --git a/arch/arm/boards/kamstrup-imx7d-tqma7d/board.c
> >>> b/arch/arm/boards/kamstrup-imx7d-tqma7d/board.c
> >>> new file mode 100644
> >>> index 000000000000..b3ffa851f3e6
> >>> --- /dev/null
> >>> +++ b/arch/arm/boards/kamstrup-imx7d-tqma7d/board.c
> >>> @@ -0,0 +1,19 @@
> >>> +// SPDX-License-Identifier: GPL-2.0-or-later
> >>> +// SPDX-FileCopyrightText: 2020 Kamstrup A/S
> >>> +
> >>> +/* Author: Lars Pedersen <lapeddk@gmail.com> */
> >>> +
> >>> +#include <common.h>
> >>> +#include <init.h>
> >>> +#include <io.h>
> >>> +#include <mach/imx7-regs.h>
> >>> +#include <mfd/imx7-iomuxc-gpr.h>
> >>> +
> >>> +static int kamstrup_mx7_tqma7d_coredevices_init(void)
> >>> +{
> >>> +    if (!of_machine_is_compatible("kam,imx7d-flex-concentrator"))
> >>> +        return 0;
> >>> +
> >>> +    return 0;
> >>> +}
> >>
> >> Function serves no purpose. If you don't have baord code, drop it altogether.
> >>
> >
> > I'll do a cleanup when I have it working :D
> >
> >>> +coredevice_initcall(kamstrup_mx7_tqma7d_coredevices_init);
> >>> diff --git a/arch/arm/boards/kamstrup-imx7d-tqma7d/flash-header-kamstrup-imx7d-tqma7d.imxcfg
> >>> b/arch/arm/boards/kamstrup-imx7d-tqma7d/flash-header-kamstrup-imx7d-tqma7d.imxcfg
> >>> new file mode 100644
> >>> index 000000000000..7656619c1b2e
> >>> --- /dev/null
> >>> +++ b/arch/arm/boards/kamstrup-imx7d-tqma7d/flash-header-kamstrup-imx7d-tqma7d.imxcfg
> >>> @@ -0,0 +1,79 @@
> >>> +soc imx7
> >>> +loadaddr 0x80000000
> >>> +dcdofs 0x400
> >>
> >> Called ivtofs now in barebox next branch now.
> >>
> >
> > Okay thanks.
> >
> >>> diff --git a/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> >>> b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> >>> new file mode 100644
> >>> index 000000000000..746e36a70f4c
> >>> --- /dev/null
> >>> +++ b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> >>> @@ -0,0 +1,11 @@
> >>> +/*
> >>> + * The code contained herein is licensed under the GNU General Public
> >>> + * License. You may obtain a copy of the GNU General Public License
> >>> + * Version 2 or later at the following locations:
> >>> + *
> >>> + * http://www.opensource.org/licenses/gpl-license.html
> >>> + * http://www.gnu.org/copyleft/gpl.html
> >>> + */
> >>> +
> >>> +#include <arm/imx7d-flex-concentrator-mfg.dts>
> >>> +
> >>> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> >>> index 6dd5cb2aca15..d0a9332c7a24 100644
> >>> --- a/arch/arm/mach-imx/Kconfig
> >>> +++ b/arch/arm/mach-imx/Kconfig
> >>> @@ -492,6 +492,11 @@ config MACH_ZII_IMX7D_DEV
> >>>      select ARCH_IMX7
> >>>      select ARM_USE_COMPRESSED_DTB
> >>>
> >>> +config MACH_KAMSTRUP_IMX7D_TQMA7D
> >>> +    bool "Kamstrup TQMa7D based devices"
> >>> +    select ARCH_IMX7
> >>> +    select ARM_USE_COMPRESSED_DTB
> >>> +
> >>>  config MACH_PHYTEC_PHYCORE_IMX7
> >>>      bool "Phytec phyCORE i.MX7"
> >>>      select ARCH_IMX7
> >>> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> >>> index 1ce057180a01..b0bdc48399e3 100644
> >>> --- a/drivers/regulator/Kconfig
> >>> +++ b/drivers/regulator/Kconfig
> >>> @@ -19,7 +19,7 @@ config REGULATOR_BCM283X
> >>>  config REGULATOR_PFUZE
> >>>      bool "Freescale PFUZE100/200/3000 regulator driver"
> >>>      depends on I2C
> >>> -    depends on ARCH_IMX6 || ARCH_IMX8MQ
> >>> +    depends on ARCH_IMX6 || ARCH_IMX7 || ARCH_IMX8MQ
> >>>
> >>>  config REGULATOR_STM32_PWR
> >>>      bool "STMicroelectronics STM32 PWR"
> >>> diff --git a/dts/src/arm/imx7d-flex-concentrator-mfg.dts
> >>> b/dts/src/arm/imx7d-flex-concentrator-mfg.dts
> >>> new file mode 100644
> >>> index 000000000000..789f0837058f
> >>> --- /dev/null
> >>> +++ b/dts/src/arm/imx7d-flex-concentrator-mfg.dts
> >>
> >> Perfectly fine for your patch stack in BSP, but if you want to upstream
> >> it, you need to either:
> >>
> >> 1) upstream your device tree to Linux. dts/ is a sync with Linux and
> >>    shortly after, it will be imported into barebox
> >> 2) put your device tree in arch/arm/dts
> >>
> > The dts will upstreamed soon. Hopefully :D
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
