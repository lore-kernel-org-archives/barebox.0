Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiMue-0004p1-Ei
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 09:13:37 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 56BDCDC42FB
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 10:14:36 +0100 (CET)
Date: Wed, 4 Jan 2012 10:06:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120104090626.GC18008@game.jcrosoft.org>
References: <1325667838-18996-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325667838-18996-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] calao/usb-926x: update usb gadget support
To: barebox@lists.infradead.org

On 10:03 Wed 04 Jan     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> enable serial and dfu at the same time
> 
> senario if the usb device is plugged and the BP is not pressed at boot time
> during 5s the usbserial will be enable
> 
> disable zlib support to fit in the 256K
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> Hi,
> 
apply over this patch

v3 serial gadget: enable/disable on request

Best Regards,
J.
> 	
>  arch/arm/boards/usb-a926x/env/bin/init_board |   24 +++++++++++++++---------
>  arch/arm/configs/usb_a9260_defconfig         |    6 +++++-
>  arch/arm/configs/usb_a9263_128mib_defconfig  |    6 +++++-
>  arch/arm/configs/usb_a9263_defconfig         |    6 +++++-
>  arch/arm/configs/usb_a9g20_128mib_defconfig  |    6 +++++-
>  arch/arm/configs/usb_a9g20_defconfig         |    6 +++++-
>  6 files changed, 40 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/boards/usb-a926x/env/bin/init_board b/arch/arm/boards/usb-a926x/env/bin/init_board
> index 77e5c1a..0a6baf7 100644
> --- a/arch/arm/boards/usb-a926x/env/bin/init_board
> +++ b/arch/arm/boards/usb-a926x/env/bin/init_board
> @@ -8,31 +8,37 @@ vendor_id=0x4321
>  
>  dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
>  
> -gpio_get_value ${dfu_button}
> -if [ $? != 0 ]
> +if [ $at91_udc0.vbus != 1 ]
>  then
> +	echo "No USB Device cable plugged, normal boot"
>  	exit
>  fi
>  
> -if [ $at91_udc0.vbus != 1 ]
> +gpio_get_value ${dfu_button}
> +if [ $? != 0 ]
>  then
> -	echo "No USB Device cable plugged, normal boot"
> +	autoboot_timeout=16
> +	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
> +	usbserial
>  	exit
>  fi
>  
>  echo "${button_name} pressed detected wait ${button_wait}s"
>  timeout -s -a ${button_wait}
>  
> -gpio_get_value ${dfu_button}
> -if [ $? != 0 ]
> +if [ $at91_udc0.vbus != 1 ]
>  then
> -	echo "${button_name} released, normal boot"
> +	echo "No USB Device cable plugged, normal boot"
>  	exit
>  fi
>  
> -if [ $at91_udc0.vbus != 1 ]
> +gpio_get_value ${dfu_button}
> +if [ $? != 0 ]
>  then
> -	echo "No USB Device cable plugged, normal boot"
> +	echo "${button_name} released, normal boot"
> +	autoboot_timeout=16
> +	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
> +	usbserial
>  	exit
>  fi
>  
> diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
> index 6c6eac2..9073d04 100644
> --- a/arch/arm/configs/usb_a9260_defconfig
> +++ b/arch/arm/configs/usb_a9260_defconfig
> @@ -3,6 +3,7 @@ CONFIG_MACH_USB_A9260=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_EXPERIMENTAL=y
>  CONFIG_PROMPT="USB-9G20:"
>  CONFIG_LONGHELP=y
>  CONFIG_GLOB=y
> @@ -11,6 +12,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_MENU=y
> +# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_PARTITION=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
>  CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
> @@ -64,7 +67,8 @@ CONFIG_NAND=y
>  CONFIG_NAND_ATMEL=y
>  CONFIG_UBI=y
>  CONFIG_USB_GADGET=y
> +CONFIG_USB_GADGET_DFU=y
> +CONFIG_USB_GADGET_SERIAL=y
>  CONFIG_LED=y
>  CONFIG_LED_GPIO=y
>  CONFIG_LED_TRIGGERS=y
> -CONFIG_ZLIB=y
> diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
> index 0b0ad80..457b25c 100644
> --- a/arch/arm/configs/usb_a9263_128mib_defconfig
> +++ b/arch/arm/configs/usb_a9263_128mib_defconfig
> @@ -4,6 +4,7 @@ CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_AT91_HAVE_SRAM_128M=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_EXPERIMENTAL=y
>  CONFIG_PROMPT="USB-9G20:"
>  CONFIG_LONGHELP=y
>  CONFIG_GLOB=y
> @@ -12,6 +13,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_MENU=y
> +# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_PARTITION=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
>  CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
> @@ -65,7 +68,8 @@ CONFIG_NAND=y
>  CONFIG_NAND_ATMEL=y
>  CONFIG_UBI=y
>  CONFIG_USB_GADGET=y
> +CONFIG_USB_GADGET_DFU=y
> +CONFIG_USB_GADGET_SERIAL=y
>  CONFIG_LED=y
>  CONFIG_LED_GPIO=y
>  CONFIG_LED_TRIGGERS=y
> -CONFIG_ZLIB=y
> diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
> index 168a5d1..6a7ded7 100644
> --- a/arch/arm/configs/usb_a9263_defconfig
> +++ b/arch/arm/configs/usb_a9263_defconfig
> @@ -3,6 +3,7 @@ CONFIG_MACH_USB_A9263=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_EXPERIMENTAL=y
>  CONFIG_PROMPT="USB-9G20:"
>  CONFIG_LONGHELP=y
>  CONFIG_GLOB=y
> @@ -11,6 +12,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_MENU=y
> +# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_PARTITION=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
>  CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
> @@ -64,7 +67,8 @@ CONFIG_NAND=y
>  CONFIG_NAND_ATMEL=y
>  CONFIG_UBI=y
>  CONFIG_USB_GADGET=y
> +CONFIG_USB_GADGET_DFU=y
> +CONFIG_USB_GADGET_SERIAL=y
>  CONFIG_LED=y
>  CONFIG_LED_GPIO=y
>  CONFIG_LED_TRIGGERS=y
> -CONFIG_ZLIB=y
> diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
> index a02002f..3d44f39 100644
> --- a/arch/arm/configs/usb_a9g20_128mib_defconfig
> +++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
> @@ -4,6 +4,7 @@ CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_AT91_HAVE_SRAM_128M=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_EXPERIMENTAL=y
>  CONFIG_PROMPT="USB-9G20:"
>  CONFIG_LONGHELP=y
>  CONFIG_GLOB=y
> @@ -12,6 +13,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_MENU=y
> +# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_PARTITION=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
>  CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
> @@ -65,7 +68,8 @@ CONFIG_NAND=y
>  CONFIG_NAND_ATMEL=y
>  CONFIG_UBI=y
>  CONFIG_USB_GADGET=y
> +CONFIG_USB_GADGET_DFU=y
> +CONFIG_USB_GADGET_SERIAL=y
>  CONFIG_LED=y
>  CONFIG_LED_GPIO=y
>  CONFIG_LED_TRIGGERS=y
> -CONFIG_ZLIB=y
> diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
> index e4dd424..7abcd95 100644
> --- a/arch/arm/configs/usb_a9g20_defconfig
> +++ b/arch/arm/configs/usb_a9g20_defconfig
> @@ -3,6 +3,7 @@ CONFIG_MACH_USB_A9G20=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_EXPERIMENTAL=y
>  CONFIG_PROMPT="USB-9G20:"
>  CONFIG_LONGHELP=y
>  CONFIG_GLOB=y
> @@ -11,6 +12,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_MENU=y
> +# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_PARTITION=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
>  CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
> @@ -64,7 +67,8 @@ CONFIG_NAND=y
>  CONFIG_NAND_ATMEL=y
>  CONFIG_UBI=y
>  CONFIG_USB_GADGET=y
> +CONFIG_USB_GADGET_DFU=y
> +CONFIG_USB_GADGET_SERIAL=y
>  CONFIG_LED=y
>  CONFIG_LED_GPIO=y
>  CONFIG_LED_TRIGGERS=y
> -CONFIG_ZLIB=y
> -- 
> 1.7.7

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
