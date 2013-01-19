Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwZGn-0000pm-09
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 14:19:43 +0000
Date: Sat, 19 Jan 2013 15:19:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130119141937.GN1906@pengutronix.de>
References: <1358472682-14333-1-git-send-email-vicencb@gmail.com>
 <1358472682-14333-2-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358472682-14333-2-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH] feature_list: a way to pass hardware info to the kernel
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

Hi Vicente,

On Fri, Jan 18, 2013 at 02:31:22AM +0100, Vicente Bergas wrote:
> The feature list is a non-standard alternative to the device tree
> to pass the hardware description to the kernel.
> This is the way used by Archos on it's android kernel, so it's required
> to boot such a kernel.

I'm generally fine with such an addition. I only think that the generic
code should be as little affected as possible and that could be done a
bit better.

> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/Kconfig                           |  12 +
>  arch/arm/boards/archosg9/Makefile          |   1 +
>  arch/arm/boards/archosg9/archos_features.c | 196 ++++++++++++++++
>  arch/arm/boards/archosg9/archos_features.h |   6 +
>  arch/arm/boards/archosg9/board.c           |   2 +
>  arch/arm/configs/archosg9_defconfig        |   1 +
>  arch/arm/include/asm/armlinux.h            |   9 +
>  arch/arm/include/asm/feature_list.h        | 346 +++++++++++++++++++++++++++++

This should go to your board directory.

>  arch/arm/include/asm/setup.h               |  23 +-
>  arch/arm/lib/armlinux.c                    |  38 +++-
>  10 files changed, 627 insertions(+), 7 deletions(-)
>  create mode 100644 arch/arm/boards/archosg9/archos_features.c
>  create mode 100644 arch/arm/boards/archosg9/archos_features.h
>  create mode 100644 arch/arm/include/asm/feature_list.h
> 
>  
> +config FEATURE_LIST

How about ARM_BOARD_APPEND_ATAG instead?

Also I'd like a warning in the help text like:

	This option is purely to start some vendor provided kernels.

	** DO NOT USE FOR YOUR OWN DESIGNS! **


> +	bool "Build a list of on-board features to be passed to the kernel"
> +	default n

default n is default already. You can drop this line.

> +	depends on ARM_LINUX
> +	help
> +	  This option allows that specific boards set up a non-standard list
> +	  of on-board features to be passed to the kernel.
> +	  That is something similar to the device tree, which is the standard
> +	  way of defining the list of hardware.
> +	  Currently is only used on Archos G9 boards to boot the
> +	  factory provided android kernel.
> +
>  endmenu
>  
>  menu "Arm specific settings"
> diff --git a/arch/arm/boards/archosg9/Makefile b/arch/arm/boards/archosg9/Makefile
> index 256eaf6..891d6fd 100644
> --- a/arch/arm/boards/archosg9/Makefile
> +++ b/arch/arm/boards/archosg9/Makefile
> @@ -1,3 +1,4 @@
>  obj-y += board.o
> +obj-$(CONFIG_FEATURE_LIST) += archos_features.o
>  obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel.o mux.o
>  pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel.o mux.o
> diff --git a/arch/arm/boards/archosg9/archos_features.c b/arch/arm/boards/archosg9/archos_features.c
> new file mode 100644
> index 0000000..9327345
> --- /dev/null
> +++ b/arch/arm/boards/archosg9/archos_features.c
> @@ -0,0 +1,196 @@
> +/*
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <boot.h>
> +#include <asm/setup.h>
> +#include <asm/feature_list.h>
> +
> +static struct feature_tag *features;
> +
> +static void setup_feature_core(void)
> +{
> +	features->hdr.tag = FTAG_CORE;
> +	features->hdr.size = feature_tag_size(feature_tag_core);
> +
> +	features->u.core.magic = FEATURE_LIST_MAGIC;
> +	features->u.core.list_revision = FEATURE_LIST_REV;
> +	features->u.core.flags = 0;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_product_name(void)
> +{
> +	features->hdr.tag = FTAG_PRODUCT_NAME;
> +	features->hdr.size = feature_tag_size(feature_tag_product_name);
> +
> +	memset(features->u.product_name.name, 0,
> +		sizeof(features->u.product_name.name));
> +	sprintf(features->u.product_name.name, "A80S");
> +	features->u.product_name.id = 0x13A8;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_product_serial_number(void)
> +{
> +	features->hdr.tag = FTAG_PRODUCT_SERIAL_NUMBER;
> +	features->hdr.size = feature_tag_size(feature_tag_product_serial);
> +
> +	features->u.product_serial.serial[0] = 0;
> +	features->u.product_serial.serial[1] = 0;
> +	features->u.product_serial.serial[2] = 0;
> +	features->u.product_serial.serial[3] = 0;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_product_mac_address(void)
> +{
> +	features->hdr.tag = FTAG_PRODUCT_MAC_ADDRESS;
> +	features->hdr.size = feature_tag_size(feature_tag_product_mac_address);
> +
> +	features->u.mac_address.addr[0] = 0x00;
> +	features->u.mac_address.addr[1] = 0x00;
> +	features->u.mac_address.addr[2] = 0x00;
> +	features->u.mac_address.addr[3] = 0x00;
> +	features->u.mac_address.addr[4] = 0x00;
> +	features->u.mac_address.addr[5] = 0x00;
> +	features->u.mac_address.reserved1 = 0;
> +	features->u.mac_address.reserved2 = 0;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_board_pcb_revision(void)
> +{
> +	features->hdr.tag = FTAG_BOARD_PCB_REVISION;
> +	features->hdr.size = feature_tag_size(feature_tag_board_revision);
> +
> +	features->u.board_revision.revision = 5;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_sdram(void)
> +{
> +	features->hdr.tag = FTAG_SDRAM;
> +	features->hdr.size = feature_tag_size(feature_tag_sdram);
> +
> +	memset(features->u.sdram.vendor, 0, sizeof(features->u.sdram.vendor));
> +	memset(features->u.sdram.product, 0,
> +		sizeof(features->u.sdram.product));
> +	sprintf(features->u.sdram.vendor , "elpida");
> +	sprintf(features->u.sdram.product, "EDB8064B1PB"/*"EDB4064B2PB"*/);
> +	features->u.sdram.type     = 0;
> +	features->u.sdram.revision = 0;
> +	features->u.sdram.flags    = 0;
> +	features->u.sdram.clock    = 400;
> +	features->u.sdram.param_0  = 0;
> +	features->u.sdram.param_1  = 0;
> +	features->u.sdram.param_2  = 0;
> +	features->u.sdram.param_3  = 0;
> +	features->u.sdram.param_4  = 0;
> +	features->u.sdram.param_5  = 0;
> +	features->u.sdram.param_6  = 0;
> +	features->u.sdram.param_7  = 0;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_pmic(void)
> +{
> +	features->hdr.tag = FTAG_PMIC;
> +	features->hdr.size = feature_tag_size(feature_tag_pmic);
> +
> +	features->u.pmic.flags = FTAG_PMIC_TPS62361;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_serial_port(void)
> +{
> +	features->hdr.tag = FTAG_SERIAL_PORT;
> +	features->hdr.size = feature_tag_size(feature_tag_serial_port);
> +
> +	features->u.serial_port.uart_id = 1;
> +	features->u.serial_port.speed = 115200;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_has_gpio_volume_keys(void)
> +{
> +	features->hdr.tag = FTAG_HAS_GPIO_VOLUME_KEYS;
> +	features->hdr.size = feature_tag_size(feature_tag_gpio_volume_keys);
> +
> +	features->u.gpio_volume_keys.gpio_vol_up   = 0x2B;
> +	features->u.gpio_volume_keys.gpio_vol_down = 0x2C;
> +	features->u.gpio_volume_keys.flags = 0;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_screen(void)
> +{
> +	features->hdr.tag = FTAG_SCREEN;
> +	features->hdr.size = feature_tag_size(feature_tag_screen);
> +
> +	memset(features->u.screen.vendor, 0,
> +		sizeof(features->u.screen.vendor));
> +	sprintf(features->u.screen.vendor, "CMI");
> +	features->u.screen.type = 0;
> +	features->u.screen.revision = 0;
> +	features->u.screen.vcom = 0;
> +	features->u.screen.backlight = 0xC8;
> +	features->u.screen.reserved[0] = 0;
> +	features->u.screen.reserved[1] = 0;
> +	features->u.screen.reserved[2] = 0;
> +	features->u.screen.reserved[3] = 0;
> +	features->u.screen.reserved[4] = 0;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_turbo(void)
> +{
> +	features->hdr.tag = FTAG_TURBO;
> +	features->hdr.size = feature_tag_size(feature_tag_turbo);
> +
> +	features->u.turbo.flag = 1;
> +
> +	features = feature_tag_next(features);
> +}
> +static void setup_feature_none(void)
> +{
> +	features->hdr.tag = FTAG_NONE;
> +	features->hdr.size = sizeof(struct feature_tag_header) >> 2;
> +
> +	features = feature_tag_next(features);
> +}
> +struct tag *setup_feature_list(struct tag * params)
> +{
> +	features = (struct feature_tag *)params->u.feature_list.data;
> +	setup_feature_core();
> +	setup_feature_product_name();
> +	setup_feature_product_serial_number();
> +	setup_feature_product_mac_address();
> +	setup_feature_board_pcb_revision();
> +	setup_feature_sdram();
> +	setup_feature_pmic();
> +	setup_feature_serial_port();
> +	setup_feature_has_gpio_volume_keys();
> +	setup_feature_screen();
> +	setup_feature_turbo();
> +	setup_feature_none();
> +
> +	params->u.feature_list.size =
> +		((u32)features) - ((u32)(params->u.feature_list.data));
> +
> +	params->hdr.tag = ATAG_FEATURE_LIST;
> +	params->hdr.size = (
> +		sizeof(struct tag_feature_list) + params->u.feature_list.size
> +		) >> 2;
> +
> +	return tag_next(params);
> +}
> +
> diff --git a/arch/arm/boards/archosg9/archos_features.h b/arch/arm/boards/archosg9/archos_features.h
> new file mode 100644
> index 0000000..78d922a
> --- /dev/null
> +++ b/arch/arm/boards/archosg9/archos_features.h
> @@ -0,0 +1,6 @@
> +#ifndef __ARCHOS_FEATURES_H
> +#define __ARCHOS_FEATURES_H
> +
> +struct tag *setup_feature_list(struct tag * params);
> +
> +#endif /* __ARCHOS_FEATURES_H */
> diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
> index 1911c62..a62aad1 100644
> --- a/arch/arm/boards/archosg9/board.c
> +++ b/arch/arm/boards/archosg9/board.c
> @@ -20,6 +20,7 @@
>  #include <sizes.h>
>  #include <i2c/i2c.h>
>  #include <gpio.h>
> +#include "archos_features.h"
>  
>  static int archosg9_console_init(void){
>  	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT))
> @@ -58,6 +59,7 @@ static int archosg9_devices_init(void){
>  	 * So here there is the hardcoded value
>  	 */
>  	armlinux_set_architecture(5032);
> +	armlinux_set_feat_filler(setup_feature_list);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
> index 2a20dd7..724df6b 100644
> --- a/arch/arm/configs/archosg9_defconfig
> +++ b/arch/arm/configs/archosg9_defconfig
> @@ -11,6 +11,7 @@ CONFIG_TEXT_BASE=0xa0000000
>  CONFIG_MALLOC_BASE=0x90000000
>  CONFIG_MALLOC_SIZE=0x10000000
>  CONFIG_KALLSYMS=y
> +CONFIG_FEATURE_LIST=y
>  CONFIG_PROMPT="barebox> "
>  CONFIG_LONGHELP=y
>  CONFIG_GLOB=y
> diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
> index 8ec8c4d..7a3c904 100644
> --- a/arch/arm/include/asm/armlinux.h
> +++ b/arch/arm/include/asm/armlinux.h
> @@ -2,6 +2,7 @@
>  #define __ARCH_ARMLINUX_H
>  
>  #include <asm/memory.h>
> +#include <asm/setup.h>
>  
>  #if defined CONFIG_ARM_LINUX
>  void armlinux_set_bootparams(void *params);
> @@ -26,6 +27,14 @@ static inline void armlinux_set_serial(u64 serial)
>  }
>  #endif
>  
> +#if defined CONFIG_FEATURE_LIST
> +void armlinux_set_feat_filler(struct tag *(*)(struct tag *));
> +#else
> +static inline void armlinux_set_feat_filler(struct tag *(*func)(struct tag *))
> +{
> +}
> +#endif
> +
>  struct image_data;
>  
>  void start_linux(void *adr, int swap, unsigned long initrd_address,
> diff --git a/arch/arm/include/asm/feature_list.h b/arch/arm/include/asm/feature_list.h
> new file mode 100644
> index 0000000..f04f6d6
> --- /dev/null
> +++ b/arch/arm/include/asm/feature_list.h
> @@ -0,0 +1,346 @@
> +#ifndef _FEATURE_LIST_H
> +#define _FEATURE_LIST_H
> +
> +#define FEATURE_LIST_MAGIC		0xFEA01234
> +
> +#define FEATURE_LIST_REV		0x00000001
> +
> +struct feature_tag_header {
> +	u32 size;
> +	u32 tag;
> +};
> +
> +struct feature_tag_generic {
> +	u32 vendor;
> +	u32 product;
> +	u32 type;
> +	u32 revision;
> +	u32 flags;
> +};
> +
> +#define FTAG_NONE			0x00000000
> +
> +#define FTAG_CORE			0x00000001
> +struct feature_tag_core {
> +	u32 magic;
> +	u32 list_revision;
> +	u32 flags;
> +};
> +
> +/* product specific */
> +#define FTAG_PRODUCT_NAME		0x00000002
> +struct feature_tag_product_name {
> +	char name[64];
> +	u32 id;
> +};
> +#define FTAG_PRODUCT_SERIAL_NUMBER	0x00000003
> +struct feature_tag_product_serial {
> +	u32 serial[4];
> +};
> +
> +#define FTAG_PRODUCT_MAC_ADDRESS	0x00000004
> +struct feature_tag_product_mac_address {
> +	u8 addr[6];
> +	u8 reserved1;
> +	u8 reserved2;
> +};
> +
> +#define FTAG_PRODUCT_OEM		0x00000005
> +struct feature_tag_product_oem {
> +	char name[16];
> +	u32 id;
> +};
> +
> +#define FTAG_PRODUCT_ZONE		0x00000006
> +struct feature_tag_product_zone {
> +	char name[16];
> +	u32 id;
> +};
> +
> +/* board pcb specific */
> +#define FTAG_BOARD_PCB_REVISION		0x00000010
> +struct feature_tag_board_revision {
> +	u32 revision;
> +};
> +
> +/* clock and ram setup */
> +#define FTAG_CLOCK			0x00000011
> +struct feature_tag_clock {
> +	u32 clock;
> +};
> +
> +#define FTAG_SDRAM			0x00000012
> +struct feature_tag_sdram {
> +	char vendor[16];
> +	char product[32];
> +	u32 type;
> +	u32 revision;
> +	u32 flags;
> +	u32 clock;
> +	/* custom params */
> +	u32 param_0;
> +	u32 param_1;
> +	u32 param_2;
> +	u32 param_3;
> +	u32 param_4;
> +	u32 param_5;
> +	u32 param_6;
> +	u32 param_7;
> +};
> +
> +/* PMIC */
> +#define FTAG_PMIC			0x00000013
> +#define FTAG_PMIC_TPS62361		0x00000001
> +struct feature_tag_pmic {
> +	u32 flags;
> +};
> +
> +/* serial port */
> +#define FTAG_SERIAL_PORT		0x00000020
> +struct feature_tag_serial_port {
> +	u32 uart_id;
> +	u32 speed;
> +};
> +
> +/* turbo bit */
> +#define FTAG_TURBO			0x00000014
> +struct feature_tag_turbo {
> +	u32 flag;
> +};
> +
> +/*** features ****/
> +#define FTAG_HAS_GPIO_VOLUME_KEYS	0x00010001
> +struct feature_tag_gpio_volume_keys {
> +	u32 gpio_vol_up;
> +	u32 gpio_vol_down;
> +	u32 flags;
> +};
> +
> +#define FTAG_HAS_ELECTRICAL_SHORTCUT	0x00010002
> +#define FTAG_HAS_DCIN			0x00010003
> +struct feature_tag_dcin {
> +	u32 autodetect;
> +};
> +
> +/* external screen support */
> +#define FTAG_HAS_EXT_SCREEN		0x00010004
> +
> +#define EXT_SCREEN_TYPE_TVOUT	0x00000001
> +#define EXT_SCREEN_TYPE_HDMI	0x00000002
> +#define EXT_SCREEN_TYPE_VGA	0x00000004
> +struct feature_tag_ext_screen {
> +	u32 type;
> +	u32 revision;
> +};
> +
> +/* wireless lan */
> +#define FTAG_HAS_WIFI			0x00010005
> +
> +#define WIFI_TYPE_TIWLAN	0x00000001
> +struct feature_tag_wifi {
> +	u32 vendor;
> +	u32 product;
> +	u32 type;
> +	u32 revision;
> +	u32 flags;
> +};
> +
> +/* bluetooth */
> +#define FTAG_HAS_BLUETOOTH		0x00010006
> +
> +#define BLUETOOTH_TYPE_TIWLAN	0x00000001
> +struct feature_tag_bluetooth {
> +	u32 vendor;
> +	u32 product;
> +	u32 type;
> +	u32 revision;
> +	u32 flags;
> +};
> +
> +/* accelerometer */
> +#define FTAG_HAS_ACCELEROMETER		0x00010007
> +struct feature_tag_accelerometer {
> +	u32 vendor;
> +	u32 product;
> +	u32 type;
> +	u32 revision;
> +	u32 flags;
> +};
> +
> +/* gyroscope */
> +#define FTAG_HAS_GYROSCOPE		0x00010008
> +
> +/* compass */
> +#define FTAG_HAS_COMPASS		0x00010009
> +
> +/* gps */
> +#define FTAG_HAS_GPS			0x0001000a
> +#define GPS_FLAG_DISABLED		0x00000001
> +struct feature_tag_gps {
> +	u32 vendor;
> +	u32 product;
> +	u32 revision;
> +	u32 flags;
> +};
> +
> +/* camera */
> +#define FTAG_HAS_CAMERA			0x0001000b
> +
> +/* harddisk controller */
> +#define FTAG_HAS_HARDDISK_CONTROLLER	0x0001000c
> +#define HDCONTROLLER_TYPE_SATA	0x00000001
> +struct feature_tag_harddisk_controller {
> +	u32 vendor;
> +	u32 product;
> +	u32 type;
> +	u32 revision;
> +	u32 flags;
> +};
> +
> +/* harddisk */
> +#define FTAG_HAS_HARDDISK		0x0001000d
> +
> +#define HARDDISK_TYPE_SATA	0x00000001
> +#define HARDDISK_TYPE_PATA	0x00000002
> +struct feature_tag_harddisk {
> +	u32 vendor;
> +	u32 product;
> +	u32 type;
> +	u32 revision;
> +	u32 flags;
> +};
> +
> +/* touchscreen */
> +#define FTAG_HAS_TOUCHSCREEN		0x0001000e
> +
> +#define TOUCHSCREEN_TYPE_CAPACITIVE 0x00000001
> +#define TOUCHSCREEN_TYPE_RESISTIVE  0x00000002
> +
> +#define TOUCHSCREEN_FLAG_MULTITOUCH 0x00000001
> +struct feature_tag_touchscreen {
> +	u32 vendor;
> +	u32 product;
> +	u32 type;
> +	u32 revision;
> +	u32 flags;
> +};
> +
> +/* microphone */
> +#define FTAG_HAS_MICROPHONE		0x0001000f
> +
> +/* external SDMMC slot */
> +#define FTAG_HAS_EXT_MMCSD_SLOT		0x00010010
> +#define MMCSD_FLAG_CARDDETECT    0x00000001
> +#define MMCSD_FLAG_CARDPREDETECT 0x00000002
> +
> +struct feature_tag_mmcsd {
> +	u32 width;
> +	u32 voltagemask;
> +	u32 revision;
> +	u32 flags;
> +};
> +
> +/* ambient light sensor */
> +#define FTAG_HAS_AMBIENT_LIGHT_SENSOR	0x00010011
> +
> +/* proximity sensor */
> +#define FTAG_HAS_PROXIMITY_SENSOR	0x00010012
> +
> +/* gps */
> +#define FTAG_HAS_GSM			0x00010013
> +
> +/* dect */
> +#define FTAG_HAS_DECT			0x00010014
> +
> +/* hsdpa data modem */
> +#define FTAG_HAS_HSDPA			0x00010015
> +
> +/* near field communication */
> +#define FTAG_HAS_NFC			0x00010016
> +
> +#define FTAG_GPIO_KEYS			0x00010017
> +struct feature_tag_gpio_keys {
> +#define GPIO_KEYS_LONG_PRESS		0x00010000
> +	u32 vol_up;
> +	u32 vol_down;
> +	u32 ok;
> +	u32 reserved[5];
> +};
> +
> +#define FTAG_SCREEN			0x00010018
> +struct feature_tag_screen {
> +	char vendor[16];
> +	u32 type;
> +	u32 revision;
> +	u32 vcom;
> +	u32 backlight;
> +	u32 reserved[5];
> +};
> +
> +#define FTAG_WIFI_PA			0x00010019
> +struct feature_tag_wifi_pa {
> +	char vendor[16];
> +	u32 type;
> +};
> +
> +/* loudspeaker */
> +#define FTAG_HAS_SPEAKER		0x0001001a
> +
> +#define SPEAKER_FLAG_STEREO	 0x00000001
> +#define SPEAKER_FLAG_OWN_VOLCTRL 0x00000002
> +struct feature_tag_speaker {
> +	u32 flags;
> +};
> +
> +#define FTAG_BATTERY			0x0001001b
> +struct feature_tag_battery {
> +	u32 type;
> +};
> +#define BATTERY_TYPE_HIGHRS	 0x00000000
> +#define BATTERY_TYPE_LOWRS	 0x00000001
> +
> +
> +#define feature_tag_next(t) \
> +	((struct feature_tag *)((u32 *)(t) + (t)->hdr.size))
> +#define feature_tag_size(type) \
> +	((sizeof(struct feature_tag_header) + sizeof(struct type)) >> 2)
> +#define for_each_feature_tag(t, base) \
> +	for (t = base; t->hdr.size; t = feature_tag_next(t))
> +
> +
> +struct feature_tag {
> +	struct feature_tag_header hdr;
> +	union {
> +		struct feature_tag_core			core;
> +		struct feature_tag_generic		generic;
> +		struct feature_tag_product_name		product_name;
> +		struct feature_tag_product_serial	product_serial;
> +		struct feature_tag_product_oem		product_oem;
> +		struct feature_tag_product_zone		product_zone;
> +		struct feature_tag_product_mac_address	mac_address;
> +		struct feature_tag_board_revision	board_revision;
> +		struct feature_tag_clock		clock;
> +		struct feature_tag_sdram		sdram;
> +		struct feature_tag_pmic			pmic;
> +		struct feature_tag_turbo		turbo;
> +		struct feature_tag_serial_port		serial_port;
> +		struct feature_tag_gpio_volume_keys	gpio_volume_keys;
> +		struct feature_tag_dcin			dcin;
> +		struct feature_tag_ext_screen		ext_screen;
> +		struct feature_tag_wifi			wifi;
> +		struct feature_tag_bluetooth		bluetooth;
> +		struct feature_tag_accelerometer	accelerometer;
> +		struct feature_tag_harddisk_controller	harddisk_controller;
> +		struct feature_tag_harddisk		harddisk;
> +		struct feature_tag_touchscreen		touchscreen;
> +		struct feature_tag_gps			gps;
> +		struct feature_tag_speaker		speaker;
> +		struct feature_tag_mmcsd		mmcsd;
> +		struct feature_tag_gpio_keys		gpio_keys;
> +		struct feature_tag_screen		screen;
> +		struct feature_tag_wifi_pa		wifi_pa;
> +		struct feature_tag_battery		battery;
> +	} u;
> +};
> +
> +#endif /* _FEATURE_LIST_H */
> diff --git a/arch/arm/include/asm/setup.h b/arch/arm/include/asm/setup.h
> index 6ce35fb..db8916f 100644
> --- a/arch/arm/include/asm/setup.h
> +++ b/arch/arm/include/asm/setup.h
> @@ -135,6 +135,23 @@ struct tag_cmdline {
>  	char	cmdline[1];	/* this is the minimum size */
>  };
>  
> +/* bootloader version */
> +#define ATAG_BOOT_VERSION	0x5441000A
> +
> +struct tag_boot_version {
> +	u32		major;
> +	u32		minor;
> +	u32		extra;
> +
> +};

unnecessary blank line.

> +
> +#define ATAG_FEATURE_LIST	0x5441000B
> +
> +struct tag_feature_list {
> +	u32	size;
> +	u8	data[0];
> +};
> +
>  /* acorn RiscPC specific information */
>  #define ATAG_ACORN	0x41000101
>  
> @@ -164,6 +181,8 @@ struct tag {
>  		struct tag_revision	revision;
>  		struct tag_videolfb	videolfb;
>  		struct tag_cmdline	cmdline;
> +		struct tag_boot_version	boot_version;
> +		struct tag_feature_list	feature_list;

We should drop this. The content of the tag could also be accessed with

static inline void *atag_data(struct tag *t)
{
	return t + 1;
}


>  
>  		/*
>  		 * Acorn specific
> @@ -186,14 +205,14 @@ struct tagtable {
>  #define __tagtable(tag, fn) \
>  static struct tagtable __tagtable_##fn __tag = { tag, fn }
>  
> -#define tag_member_present(tag,member)				\
> +#define tag_member_present(tag, member)				\

Please drop this change.

>  	((unsigned long)(&((struct tag *)0L)->member + 1)	\
>  		<= (tag)->hdr.size * 4)
>  
>  #define tag_next(t)	((struct tag *)((u32 *)(t) + (t)->hdr.size))
>  #define tag_size(type)	((sizeof(struct tag_header) + sizeof(struct type)) >> 2)
>  
> -#define for_each_tag(t,base)		\
> +#define for_each_tag(t, base)		\

ditto.

>  	for (t = base; t->hdr.size; t = tag_next(t))
>  
>  /*
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index 9c134ed..c4d0fa1 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -12,7 +12,7 @@
>   *
>   * This program is distributed in the hope that it will be useful,
>   * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the

ditto.

>   * GNU General Public License for more details.
>   */
>  
> @@ -35,12 +35,14 @@
>  
>  #include <asm/byteorder.h>
>  #include <asm/setup.h>
> +#include <asm/feature_list.h>
>  #include <asm/barebox-arm.h>
>  #include <asm/armlinux.h>
>  #include <asm/system.h>
> +#include <generated/version.h>
>  
>  static struct tag *params;
> -static void *armlinux_bootparams = NULL;
> +static void *armlinux_bootparams;
>  
>  #ifndef CONFIG_ENVIRONMENT_VARIABLES
>  static int armlinux_architecture;
> @@ -106,6 +108,14 @@ u64 armlinux_get_serial(void)
>  #endif
>  }
>  
> +#ifdef CONFIG_FEATURE_LIST
> +static struct tag *(*setup_feature_list)(struct tag *);
> +void armlinux_set_feat_filler(struct tag * (*func)(struct tag *))
> +{
> +	setup_feature_list = func;
> +}
> +#endif
> +
>  static void setup_start_tag(void)
>  {
>  	params = (struct tag *)armlinux_bootparams;
> @@ -144,7 +154,8 @@ static void setup_commandline_tag(const char *commandline, int swap)
>  		return;
>  
>  	/* eat leading white space */
> -	for (p = commandline; *p == ' '; p++) ;
> +	for (p = commandline; *p == ' '; p++)
> +		;

Please drop this change.

>  
>  	/*
>  	 * skip non-existent command lines so the kernel will still
> @@ -213,7 +224,19 @@ static void setup_initrd_tag(unsigned long start, unsigned long size)
>  	params = tag_next(params);
>  }
>  
> -static void setup_end_tag (void)
> +static void setup_boot_version(void)
> +{
> +	params->hdr.tag = ATAG_BOOT_VERSION;
> +	params->hdr.size = tag_size(tag_boot_version);
> +
> +	params->u.boot_version.major = (LINUX_VERSION_CODE >> 16);
> +	params->u.boot_version.minor = (LINUX_VERSION_CODE >>  8) & 0xFF;
> +	params->u.boot_version.extra = (LINUX_VERSION_CODE >>  0) & 0xFF;
> +
> +	params = tag_next(params);
> +}
> +
> +static void setup_end_tag(void)
>  {
>  	params->hdr.tag = ATAG_NONE;
>  	params->hdr.size = 0;
> @@ -233,6 +256,11 @@ static void setup_tags(unsigned long initrd_address,
>  
>  	setup_revision_tag();
>  	setup_serial_tag();
> +	setup_boot_version();

This is also a nonstandard tag.

> +#ifdef CONFIG_FEATURE_LIST
> +	if (setup_feature_list != NULL)
> +		params = setup_feature_list(params);

There is no prototype for this function.

> +#endif
>  	setup_end_tag();
>  
>  	printf("commandline: %s\n"
> @@ -266,7 +294,7 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		u32 reg;
>  		__asm__ __volatile__("mrc p15, 0, %0, c1, c0" : "=r" (reg));
>  		reg ^= CR_B; /* swap big-endian flag */
> -		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
> +		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" : : "r" (reg));

Please drop this change

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
