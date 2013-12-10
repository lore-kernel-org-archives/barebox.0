Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqOCu-0000Re-J6
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 14:22:42 +0000
Message-ID: <1386685332.3377.2.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Tue, 10 Dec 2013 15:22:12 +0100
In-Reply-To: <1385484367-15366-5-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
 <1385484367-15366-5-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH 04/17] ARM: am335x phytec phyCORE: Switch to devicetree
 probe support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Dienstag, den 26.11.2013, 17:45 +0100 schrieb Sascha Hauer:
> This switches the am335x Phytec phyCORE to devicetree probe support.
> For now we use a linked in dtb.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/pcm051/Makefile       |   2 +-
>  arch/arm/boards/pcm051/board.c        | 149 ++--------------------------------
>  arch/arm/boards/pcm051/mux.c          |  65 ---------------
>  arch/arm/boards/pcm051/mux.h          |   4 -
>  arch/arm/configs/pcm051_defconfig     |  26 ++++--
>  arch/arm/configs/pcm051_mlo_defconfig |   8 +-
>  6 files changed, 32 insertions(+), 222 deletions(-)
>  delete mode 100644 arch/arm/boards/pcm051/mux.c
>  delete mode 100644 arch/arm/boards/pcm051/mux.h
> 
> ...
> diff --git a/arch/arm/configs/pcm051_defconfig b/arch/arm/configs/pcm051_defconfig
> index 97e0940..e55ac47 100644
> --- a/arch/arm/configs/pcm051_defconfig
> +++ b/arch/arm/configs/pcm051_defconfig
> @@ -1,16 +1,21 @@
> +CONFIG_BUILTIN_DTB=y
> +CONFIG_BUILTIN_DTB_NAME="am335x-phytec-phycore"
>  CONFIG_ARCH_OMAP=y
> -CONFIG_ARCH_AM33XX=y
>  CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
>  CONFIG_MACH_PCM051=y
> -CONFIG_OMAP_UART1=y
> -CONFIG_AEABI=y
> +CONFIG_THUMB2_BAREBOX=y

Is there a reason to use thumb2 now?

Jan
>  CONFIG_ARM_BOARD_APPEND_ATAG=y
>  CONFIG_CMD_ARM_MMUINFO=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  CONFIG_ARM_UNWIND=y
> +CONFIG_PBL_IMAGE=y
> +CONFIG_PBL_RELOCATABLE=y
>  CONFIG_MMU=y
> -CONFIG_TEXT_BASE=0x8f000000
> -CONFIG_MALLOC_SIZE=0x2000000
> +CONFIG_TEXT_BASE=0x0
> +CONFIG_MALLOC_SIZE=0x0
> +CONFIG_MALLOC_TLSF=y
> +CONFIG_KALLSYMS=y
> +CONFIG_RELOCATABLE=y
>  CONFIG_PROMPT="barebox@pcm051>"
>  CONFIG_LONGHELP=y
>  CONFIG_HUSH_FANCY_PROMPT=y
> @@ -21,9 +26,6 @@ CONFIG_MENU=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
>  CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm051/env"
>  CONFIG_DEBUG_INFO=y
> -CONFIG_ENABLE_FLASH_NOISE=y
> -CONFIG_ENABLE_PARTITION_NOISE=y
> -CONFIG_ENABLE_DEVICE_NOISE=y
>  CONFIG_CMD_EDIT=y
>  CONFIG_CMD_SLEEP=y
>  CONFIG_CMD_SAVEENV=y
> @@ -44,6 +46,7 @@ CONFIG_CMD_UBIFORMAT=y
>  CONFIG_CMD_BOOTM_SHOW_TYPE=y
>  CONFIG_CMD_UIMAGE=y
>  CONFIG_CMD_BOOTZ=y
> +# CONFIG_CMD_BOOTU is not set
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_GO=y
>  CONFIG_CMD_BAREBOX_UPDATE=y
> @@ -57,6 +60,8 @@ CONFIG_NET=y
>  CONFIG_NET_DHCP=y
>  CONFIG_NET_NFS=y
>  CONFIG_NET_PING=y
> +CONFIG_OFDEVICE=y
> +CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_DRIVER_NET_CPSW=y
> @@ -67,13 +72,16 @@ CONFIG_MTD=y
>  CONFIG_MTD_M25P80=y
>  CONFIG_NAND=y
>  CONFIG_NAND_OMAP_GPMC=y
> -CONFIG_UBI=y
> +CONFIG_MTD_UBI=y
>  CONFIG_USB=y
>  CONFIG_MCI=y
>  CONFIG_MCI_STARTUP=y
>  CONFIG_MCI_OMAP_HSMMC=y
>  CONFIG_EEPROM_AT24=y
>  CONFIG_GPIO_GENERIC_PLATFORM=y
> +CONFIG_PINCTRL=y
> +CONFIG_PINCTRL_SINGLE=y
> +CONFIG_BUS_OMAP_GPMC=y
>  CONFIG_FS_TFTP=y
>  CONFIG_FS_NFS=y
>  CONFIG_FS_FAT=y
> diff --git a/arch/arm/configs/pcm051_mlo_defconfig b/arch/arm/configs/pcm051_mlo_defconfig
> index ea65979..4f6a7b1 100644
> --- a/arch/arm/configs/pcm051_mlo_defconfig
> +++ b/arch/arm/configs/pcm051_mlo_defconfig
> @@ -1,8 +1,8 @@
> +CONFIG_BUILTIN_DTB=y
> +CONFIG_BUILTIN_DTB_NAME="am335x-phytec-phycore"
>  CONFIG_ARCH_OMAP=y
> -CONFIG_ARCH_AM33XX=y
>  CONFIG_OMAP_BUILD_IFT=y
>  CONFIG_MACH_PCM051=y
> -CONFIG_OMAP_UART1=y
>  CONFIG_THUMB2_BAREBOX=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  # CONFIG_MEMINFO is not set
> @@ -17,6 +17,7 @@ CONFIG_SHELL_NONE=y
>  # CONFIG_TIMESTAMP is not set
>  CONFIG_CONSOLE_SIMPLE=y
>  # CONFIG_DEFAULT_ENVIRONMENT is not set
> +CONFIG_OFDEVICE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_DRIVER_SPI_OMAP3=y
> @@ -27,6 +28,9 @@ CONFIG_NAND_OMAP_GPMC=y
>  CONFIG_MCI=y
>  CONFIG_MCI_STARTUP=y
>  CONFIG_MCI_OMAP_HSMMC=y
> +CONFIG_PINCTRL=y
> +CONFIG_PINCTRL_SINGLE=y
> +CONFIG_BUS_OMAP_GPMC=y
>  # CONFIG_FS_RAMFS is not set
>  # CONFIG_FS_DEVFS is not set
>  CONFIG_FS_FAT=y



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
