Delivery-date: Sun, 09 Jan 2022 21:12:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6eXw-00FUmN-CQ
	for lore@lore.pengutronix.de; Sun, 09 Jan 2022 21:12:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6eXu-000582-5T
	for lore@pengutronix.de; Sun, 09 Jan 2022 21:12:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dW5ORIPO0/+LrpgCX3mCDCALbFPq+xuof9QHPDbesdA=; b=3DwzK4OzIsQ2hv
	P7qVchPTOR6S2uiBtpVdCHnm+hj2TJAeujnScerRFCaxhTS9f3eLTK5cnpueGIFvwBPjyQILqSM+m
	O8bpr+UDpTXN7nPqWQSIlGpg7M+ib4xk7bsY1akth6UVeUx1tfrDtcz1AnlTFA6lZZFX6Jfn1wAFk
	3A8JSrRDxYAIKXN0hfmsiLBh6NZnN4c2S+55wTewbicaW7Sd17sHSlOM6h/aCsAmqge7NSbsX0EoJ
	9jTmcrKiJondmc7IxnCI/uBOdOEzz5vNxqcJTfPSIpEC848xkhsu6HAfwbL84ntA3Oj9Lz5S5VvVY
	yw7hVHQk6Hoq63qSkrvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6eWC-008Lg0-Gh; Sun, 09 Jan 2022 20:10:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6eW8-008LfV-Cs
 for barebox@bombadil.infradead.org; Sun, 09 Jan 2022 20:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5sBNHANCv40lLvD9eQFrVWa1mbnu0Br5nPjngrbX1vA=; b=MLsKxOP2R10qUDlAvgEypdai12
 mlOwQVZXfofy8qXd1nWMaVaKY5BPu05r33WiT2XE+5VnM42GYLw6owoReu1FhZ5eHchEeG9gcchFo
 j/wbmRWEtF6h8QyXsfPXTfM/LPkuussrnA/HDUkSwCRmXXGnN/rprNz8GoeUKKCR+joA0n5vtou+n
 +uKjYltlfst2Fhv0wDfSZQxIBaZ2/8lG0lz+VACClfh7zZJt3AXssapWYWECpSzoj/XRI5gDHp8Qq
 A5SKAY/MPfk98YBgXTFUbg6MU94ZO0OBwWz4Y1n1/SDM3cRgxq29SMyrSfaZjmzYhzJKGiGa9+oVq
 vEhVnE1Q==;
Received: from mx2.smtp.larsendata.com ([91.221.196.228])
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6eW3-001qCs-OR
 for barebox@lists.infradead.org; Sun, 09 Jan 2022 20:10:14 +0000
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx2.smtp.larsendata.com (Halon) with ESMTPS
 id f7a32a5d-7185-11ec-ac19-0050568cd888;
 Sun, 09 Jan 2022 19:54:34 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 0FB7D194B49;
 Sun,  9 Jan 2022 20:53:56 +0100 (CET)
Date: Sun, 9 Jan 2022 20:53:49 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Barebox List <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Yds9TY1wPddN1oNT@ravnborg.org>
References: <Ydsrrj76kk6tmD2X@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ydsrrj76kk6tmD2X@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220109_201012_298822_37F922AA 
X-CRM114-Status: GOOD (  18.53  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Q about bootstrap support for at91sam92* boards and proposal for
 retirement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi, 
> 
> Can anyone (Ahmad?) help me a little how to get the bootstrap
> functionality working on the at91sam9263?

To answer the obvious questions - what have I done so far.

- I have an at91bootstrap generated BOOT.BIN that works.
  This ruins out a lot of possible issues with the SD card
  as the board boots from the SD card with the at91bootstrap based
  BOOT.BIN.

- The toolchain used is generated from buildroot, and I do not have any
  proof that it works as I have not had any successes.
  So far I have assumed that it works.

- The configuration used is pasted below.

- The board I use is the skov-arm9cpu which I know works as it boots
  barebox with the at91bootstrap BOOT.BIN

- I have only a limited set of patches - pasted below.

- Latest barebox from the master branch

- I have tried to power cycle and reset of the board - no change

- There is a ">RomBOOT" prompt - but nothing else

	Sam


diff --git a/arch/arm/boards/skov-arm9cpu/lowlevel.c b/arch/arm/boards/skov-arm9cpu/lowlevel.c
index d335953a7..8d5c0b025 100644
--- a/arch/arm/boards/skov-arm9cpu/lowlevel.c
+++ b/arch/arm/boards/skov-arm9cpu/lowlevel.c
@@ -3,14 +3,20 @@
 
 #include <linux/sizes.h>
 
+#include <debug_ll.h>
+
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
 #include <mach/at91sam9263_matrix.h>
+#include <mach/at91_dbgu.h>
+#include <mach/iomux.h>
 
 #define MASTER_PLL_MUL		171
 #define MASTER_PLL_DIV		14
 
+#define MASTER_CLOCK            (200000000/2)
+
 static void __bare_init skovarm9cpu_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
@@ -96,6 +102,18 @@ static void __bare_init skovarm9cpu_board_config(struct at91sam926x_board_cfg *c
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
+static void dbgu_init(void)
+{
+	void __iomem *pio = IOMEM(AT91SAM9263_BASE_PIOC);
+	// Setup DBGU uart
+	at91_mux_pio3_pin(pio, pin_to_mask(AT91_PIN_PC30), AT91_MUX_PERIPH_A, GPIO_PULL_UP); // DRXD
+	at91_mux_pio3_pin(pio, pin_to_mask(AT91_PIN_PC31), AT91_MUX_PERIPH_A, 0); // DTXD
+
+	at91_dbgu_setup_ll(IOMEM(AT91_BASE_DBGU1), MASTER_CLOCK, 115200);
+	pbl_set_putc(at91_dbgu_putc, IOMEM(AT91_BASE_DBGU1));
+	putc_ll('#');
+}
+
 static void __bare_init skov_arm9cpu_init(void *fdt)
 {
 	struct at91sam926x_board_cfg cfg;
@@ -108,6 +126,8 @@ static void __bare_init skov_arm9cpu_init(void *fdt)
 	skovarm9cpu_board_config(&cfg);
 	at91sam9263_board_init(&cfg);
 
+	dbgu_init();
+
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
 			  fdt);
 }

#
# Automatically generated file; DO NOT EDIT.
# Barebox/arm 2021.12.0 Configuration
#
CONFIG_ARM=y
CONFIG_HAVE_MACH_ARM_HEAD=y
CONFIG_ARM_USE_COMPRESSED_DTB=y
CONFIG_TEXT_BASE=0x0

#
# System Type
#
CONFIG_ARCH_AT91=y
# CONFIG_ARCH_BCM283X is not set
# CONFIG_ARCH_CLPS711X is not set
# CONFIG_ARCH_DAVINCI is not set
# CONFIG_ARCH_DIGIC is not set
# CONFIG_ARCH_EP93XX is not set
# CONFIG_ARCH_IMX is not set
# CONFIG_ARCH_LAYERSCAPE is not set
# CONFIG_ARCH_MVEBU is not set
# CONFIG_ARCH_MXS is not set
# CONFIG_ARCH_NOMADIK is not set
# CONFIG_ARCH_OMAP is not set
# CONFIG_ARCH_PXA is not set
# CONFIG_ARCH_ROCKCHIP is not set
# CONFIG_ARCH_SOCFPGA is not set
# CONFIG_ARCH_S3C24xx is not set
# CONFIG_ARCH_S5PCxx is not set
# CONFIG_ARCH_S3C64xx is not set
# CONFIG_ARCH_STM32MP is not set
# CONFIG_ARCH_VERSATILE is not set
# CONFIG_ARCH_VEXPRESS is not set
# CONFIG_ARCH_TEGRA is not set
# CONFIG_ARCH_UEMD is not set
# CONFIG_ARCH_ZYNQ is not set
# CONFIG_ARCH_ZYNQMP is not set
# CONFIG_ARCH_ARM64_VIRT is not set

#
# Processor Type
#
CONFIG_CPU_32=y
CONFIG_CPU_ARM926T=y
CONFIG_CPU_32v5=y

#
# processor features
#
# CONFIG_BOOT_ENDIANNESS_SWITCH is not set
CONFIG_HAVE_AT91_UTMI=y
CONFIG_HAVE_AT91_USB_CLK=y
CONFIG_COMMON_CLK_AT91=y
CONFIG_HAVE_AT91_SMD=y
CONFIG_HAVE_AT91_BOOTSTRAP=y
CONFIG_AT91SAM926X_BOARD_INIT=y
CONFIG_AT91SAM9_SMC=y
CONFIG_HAVE_AT91SAM9_RST=y
CONFIG_SOC_AT91SAM9=y
CONFIG_ARCH_TEXT_BASE=0x23f00000
CONFIG_HAVE_AT91_LOAD_BAREBOX_SRAM=y

#
# Atmel AT91 System-on-Chip
#
CONFIG_SOC_AT91SAM9263=y
CONFIG_AT91_MULTI_BOARDS=y
CONFIG_MACH_SKOV_ARM9CPU=y
# CONFIG_MACH_AT91SAM9263EK is not set
# CONFIG_MACH_AT91SAM9X5EK is not set
# CONFIG_MACH_MICROCHIP_KSZ9477_EVB is not set
# CONFIG_MACH_SAMA5D3_XPLAINED is not set
# CONFIG_MACH_SAMA5D27_SOM1 is not set
# CONFIG_MACH_SAMA5D27_GIANTBOARD is not set

#
# AT91 Board Options
#
CONFIG_AT91_BOOTSTRAP=y
# CONFIG_AT91_LOAD_BAREBOX_SRAM is not set
CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
# CONFIG_BOARD_ARM_GENERIC_DT is not set
# CONFIG_AEABI is not set
# end of System Type

#
# ARM specific settings
#
# CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is not set
CONFIG_ARM_EXCEPTIONS=y
# CONFIG_ARM_SEMIHOSTING is not set
# end of ARM specific settings

CONFIG_GREGORIAN_CALENDER=y
CONFIG_HAS_KALLSYMS=y
CONFIG_HAS_MODULES=y
CONFIG_HAS_CACHE=y
CONFIG_HAS_DMA=y
CONFIG_HAS_ARCH_SJLJ=y
CONFIG_GENERIC_GPIO=y
CONFIG_BLOCK=y
CONFIG_BLOCK_WRITE=y
CONFIG_USE_COMPRESSED_DTB=y
CONFIG_FILETYPE=y

#
# General Settings
#
CONFIG_LOCALVERSION=""
CONFIG_LOCALVERSION_AUTO=y
CONFIG_BANNER=y
CONFIG_MEMINFO=y
# CONFIG_ENVIRONMENT_VARIABLES is not set
# CONFIG_GLOBALVAR is not set

#
# memory layout
#
CONFIG_HAVE_PBL_IMAGE=y
CONFIG_HAVE_PBL_MULTI_IMAGES=y
CONFIG_HAVE_IMAGE_COMPRESSION=y
CONFIG_PBL_IMAGE=y
CONFIG_PBL_MULTI_IMAGES=y
CONFIG_PBL_RELOCATABLE=y
CONFIG_IMAGE_COMPRESSION=y
# CONFIG_IMAGE_COMPRESSION_LZ4 is not set
CONFIG_IMAGE_COMPRESSION_LZO=y
# CONFIG_IMAGE_COMPRESSION_GZIP is not set
# CONFIG_IMAGE_COMPRESSION_XZKERN is not set
# CONFIG_IMAGE_COMPRESSION_NONE is not set
# CONFIG_MMU is not set
CONFIG_BAREBOX_MAX_PBL_SIZE=0xffffffff
CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
CONFIG_STACK_SIZE=0x8000
CONFIG_MALLOC_SIZE=0x400000
# end of memory layout

# CONFIG_EXPERIMENTAL is not set
# CONFIG_MALLOC_DLMALLOC is not set
CONFIG_MALLOC_TLSF=y
# CONFIG_MALLOC_DUMMY is not set
CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
# CONFIG_KALLSYMS is not set
CONFIG_RELOCATABLE=y
# CONFIG_PANIC_HANG is not set
CONFIG_PROMPT="barebox:"
CONFIG_BAUDRATE=115200
CONFIG_SIMPLE_READLINE=y
CONFIG_CBSIZE=1024
# CONFIG_SHELL_HUSH is not set
# CONFIG_SHELL_SIMPLE is not set
CONFIG_SHELL_NONE=y
# CONFIG_GLOB is not set
# CONFIG_PASSWORD is not set
CONFIG_ERRNO_MESSAGES=y
CONFIG_TIMESTAMP=y
# CONFIG_BOOTM is not set
# CONFIG_BAREBOX_UPDATE is not set
# CONFIG_IMD is not set
# CONFIG_CONSOLE_FULL is not set
CONFIG_CONSOLE_SIMPLE=y
# CONFIG_CONSOLE_NONE is not set
# CONFIG_CONSOLE_ALLOW_COLOR is not set
# CONFIG_CONSOLE_DISABLE_INPUT is not set
CONFIG_PBL_CONSOLE=y
CONFIG_PARTITION=y
CONFIG_PARTITION_DISK=y
CONFIG_PARTITION_DISK_DOS=y
# CONFIG_PARTITION_DISK_EFI is not set
# CONFIG_ENV_HANDLING is not set
# CONFIG_DEFAULT_ENVIRONMENT is not set
# CONFIG_DEFAULT_COMPRESSION_GZIP is not set
# CONFIG_DEFAULT_COMPRESSION_LZO is not set
CONFIG_DEFAULT_COMPRESSION_NONE=y
CONFIG_HAS_SCHED=y
CONFIG_POLLER=y
# CONFIG_BTHREAD is not set
# CONFIG_STATE is not set
# CONFIG_BOOTCHOOSER is not set
CONFIG_EXTERNAL_DTS_FRAGMENTS=""

#
# OP-TEE loading
#
# CONFIG_PBL_OPTEE is not set
# end of OP-TEE loading
# end of General Settings

#
# Debugging
#
CONFIG_COMPILE_LOGLEVEL=6
CONFIG_DEFAULT_LOGLEVEL=7
CONFIG_DEBUG_LL=y
CONFIG_DEBUG_AT91_UART=y
CONFIG_DEBUG_AT91_UART_BASE=0xffffee00
# CONFIG_DEBUG_INITCALLS is not set
# CONFIG_DEBUG_PROBES is not set
# CONFIG_PBL_BREAK is not set
# CONFIG_PRINTF_FULL is not set
# CONFIG_UBSAN is not set
CONFIG_HAVE_ARCH_KASAN=y
CONFIG_CC_HAS_KASAN_GENERIC=y
# CONFIG_KASAN is not set
# CONFIG_COMPILE_TEST is not set
# end of Debugging

#
# EFI (Extensible Firmware Interface) Support
#
# end of EFI (Extensible Firmware Interface) Support

CONFIG_HAS_DEBUG_LL=y
# CONFIG_NET is not set

#
# Drivers
#
CONFIG_OFTREE=y
CONFIG_OFTREE_MEM_GENERIC=y
CONFIG_DTC=y
CONFIG_OFDEVICE=y
CONFIG_OF_GPIO=y
# CONFIG_OF_OVERLAY is not set
# CONFIG_AIODEV is not set

#
# serial drivers
#
# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
# CONFIG_DRIVER_SERIAL_NS16550 is not set
CONFIG_DRIVER_SERIAL_ATMEL=y
# CONFIG_DRIVER_SERIAL_CADENCE is not set
# CONFIG_SERIAL_SIFIVE is not set
# end of serial drivers

CONFIG_HAS_MACB=y

#
# SPI drivers
#
# CONFIG_SPI is not set
# end of SPI drivers

# CONFIG_I2C is not set
# CONFIG_MTD is not set
CONFIG_DISK=y
CONFIG_DISK_WRITE=y

#
# drive types
#
# CONFIG_DISK_ATA is not set
# CONFIG_DISK_AHCI is not set

#
# interface types
#
# CONFIG_DISK_INTF_PLATFORM_IDE is not set
# CONFIG_USB_HOST is not set
# CONFIG_USB_GADGET is not set
# CONFIG_USB_MUSB is not set
CONFIG_VIDEO=y
# CONFIG_FRAMEBUFFER_CONSOLE is not set
CONFIG_DRIVER_VIDEO_ATMEL=y
# CONFIG_DRIVER_VIDEO_ATMEL_HLCD is not set
# CONFIG_DRIVER_VIDEO_BOCHS_ISA is not set
# CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT is not set
# CONFIG_DRIVER_VIDEO_SIMPLEFB is not set
# CONFIG_DRIVER_VIDEO_EDID is not set
CONFIG_DRIVER_VIDEO_BACKLIGHT=y

#
# Video encoder chips
#
# CONFIG_DRIVER_VIDEO_SIMPLE_PANEL is not set
# CONFIG_SOUND is not set
CONFIG_MCI=y

#
# --- Feature list ---
#
# CONFIG_MCI_STARTUP is not set
CONFIG_MCI_WRITE=y
CONFIG_MCI_MMC_BOOT_PARTITIONS=y
# CONFIG_MCI_MMC_GPP_PARTITIONS is not set

#
# --- MCI host drivers ---
#
# CONFIG_MCI_DW is not set
# CONFIG_MCI_ROCKCHIP_DWCMSHC is not set
CONFIG_MCI_ATMEL=y
# CONFIG_MCI_ATMEL_SDHCI is not set
# CONFIG_MCI_ARASAN is not set
CONFIG_HAVE_CLK=y
CONFIG_CLKDEV_LOOKUP=y
CONFIG_COMMON_CLK=y
CONFIG_COMMON_CLK_OF_PROVIDER=y

#
# Clocksource
#
CONFIG_CLOCKSOURCE_DUMMY_RATE=1000
CONFIG_CLOCKSOURCE_ATMEL_PIT=y
# CONFIG_CLOCKSOURCE_DW_APB_TIMER is not set
# end of Clocksource

#
# Multifunction device drivers
#
CONFIG_MFD_SYSCON=y
# CONFIG_MFD_ATMEL_FLEXCOM is not set
# end of Multifunction device drivers

#
# Misc devices
#
# CONFIG_JTAG is not set
CONFIG_SRAM=y
# CONFIG_DEV_MEM is not set
# CONFIG_UBOOTVAR is not set
# end of Misc devices

CONFIG_LED=y
CONFIG_LED_GPIO=y
CONFIG_LED_GPIO_OF=y
# CONFIG_LED_GPIO_RGB is not set
# CONFIG_LED_GPIO_BICOLOR is not set
CONFIG_LED_TRIGGERS=y

#
# EEPROM support
#
# end of EEPROM support

#
# Input device support
#
CONFIG_INPUT=y
CONFIG_KEYBOARD_GPIO=y
# CONFIG_INPUT_SPECIALKEYS is not set
# end of Input device support

# CONFIG_WATCHDOG is not set
# CONFIG_PWM is not set
# CONFIG_HWRNG is not set

#
# DMA support
#
# end of DMA support

CONFIG_GPIOLIB=y

#
# GPIO
#
# CONFIG_GPIO_74XX_MMIO is not set
# CONFIG_GPIO_GENERIC_PLATFORM is not set
# CONFIG_GPIO_DESIGNWARE is not set
# CONFIG_GPIO_SIFIVE is not set
# end of GPIO

# CONFIG_W1 is not set

#
# Pin controllers
#
CONFIG_PINCTRL=y
CONFIG_PINCTRL_AT91=y
# CONFIG_PINCTRL_AT91PIO4 is not set
# CONFIG_PINCTRL_SINGLE is not set
# end of Pin controllers

# CONFIG_NVMEM is not set

#
# Bus devices
#
# end of Bus devices

# CONFIG_REGULATOR is not set

#
# Remoteproc drivers
#
# CONFIG_REMOTEPROC is not set
# end of Remoteproc drivers

# CONFIG_RESET_CONTROLLER is not set
# CONFIG_RTC_CLASS is not set

#
# Firmware Drivers
#
# end of Firmware Drivers

#
# FPGA Configuration Support
#
# CONFIG_FPGA is not set
# end of FPGA Configuration Support

# CONFIG_GENERIC_PHY is not set
# CONFIG_CRYPTO_HW is not set

#
# Memory controller drivers
#
# end of Memory controller drivers

#
# i.MX SoC drivers
#
# end of i.MX SoC drivers

#
# NVME Support
#
# end of NVME Support

# CONFIG_SYSCON_REBOOT_MODE is not set
# CONFIG_POWER_RESET_SYSCON is not set
# CONFIG_POWER_RESET_SYSCON_POWEROFF is not set
# CONFIG_POWER_RESET_GPIO is not set
# CONFIG_POWER_RESET_GPIO_RESTART is not set
# CONFIG_VIRTIO_MENU is not set
# end of Drivers

#
# Filesystem support
#
CONFIG_FS=y
CONFIG_FS_LEGACY=y

#
# Some selected filesystems still use the legacy FS API.
#

#
# Consider updating them.
#
# CONFIG_FS_CRAMFS is not set
# CONFIG_FS_EXT4 is not set
# CONFIG_FS_RAMFS is not set
# CONFIG_FS_DEVFS is not set
CONFIG_FS_FAT=y
CONFIG_FS_FAT_WRITE=y
CONFIG_FS_FAT_LFN=y
# CONFIG_FS_BPKFS is not set
# CONFIG_FS_UIMAGEFS is not set
# CONFIG_FS_PSTORE is not set
# CONFIG_FS_SQUASHFS is not set

#
# ZLIB support disabled
#

#
# LZ4 support disabled
#

#
# LZO support disabled
#

#
# XZ support disabled
#

#
# ZSTD support disabled
#
# end of Filesystem support

#
# Library routines
#
CONFIG_UNCOMPRESS=y
CONFIG_ZLIB=y
# CONFIG_BZLIB is not set
# CONFIG_LZ4_DECOMPRESS is not set
# CONFIG_ZSTD_DECOMPRESS is not set
# CONFIG_XZ_DECOMPRESS is not set
# CONFIG_BASE64 is not set
CONFIG_LZO_DECOMPRESS=y
# CONFIG_ALLOW_PRNG_FALLBACK is not set
# CONFIG_CRC_CCITT is not set
# CONFIG_CRC8 is not set

#
# Library gui routines
#
# end of Library gui routines

# CONFIG_BAREBOX_LOGO is not set
CONFIG_BOOTSTRAP=y
CONFIG_BOOTSTRAP_DEVFS=y
CONFIG_BOOTSTRAP_DISK=y
# CONFIG_NLS is not set
# CONFIG_BLOBGEN is not set
CONFIG_ARCH_HAS_DATA_ABORT_MASK=y
# end of Library routines

#
# Crypto support
#
# CONFIG_DIGEST is not set
# CONFIG_CRYPTO_KEYSTORE is not set
# end of Crypto support

#
# Firmware files
#
CONFIG_EXTRA_FIRMWARE_DIR="firmware"
# end of Firmware files

#
# Host Tools
#
# CONFIG_COMPILE_HOST_TOOLS is not set
# end of Host Tools

#
# Target Tools
#
# CONFIG_KERNEL_INSTALL_TARGET is not set
# CONFIG_BAREBOXENV_TARGET is not set
# CONFIG_BAREBOXCRC32_TARGET is not set
# CONFIG_MVEBU_KWBOOT_TARGET is not set
# end of Target Tools

# CONFIG_TEST is not set

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

