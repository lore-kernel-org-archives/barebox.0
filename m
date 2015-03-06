Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTlwg-0008Lp-Nk
 for barebox@lists.infradead.org; Fri, 06 Mar 2015 06:41:16 +0000
Date: Fri, 6 Mar 2015 07:40:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150306064052.GM11010@pengutronix.de>
References: <1425581119-23045-1-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425581119-23045-1-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH] ARM: Rockchip: Update defconfig
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Thu, Mar 05, 2015 at 09:45:19PM +0300, Andrey Panov wrote:
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  arch/arm/configs/rockchip_defconfig | 91 ++++++++++++++++++++++++++-----------
>  1 file changed, 65 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/arm/configs/rockchip_defconfig b/arch/arm/configs/rockchip_defconfig
> index 40442ac..f95c6c7 100644
> --- a/arch/arm/configs/rockchip_defconfig
> +++ b/arch/arm/configs/rockchip_defconfig
> @@ -1,51 +1,77 @@
>  CONFIG_ARCH_ROCKCHIP=y
>  CONFIG_MACH_RADXA_ROCK=y
> -CONFIG_THUMB2_BAREBOX=y

Why disable thumb2? Thumb2 makes the binary smaller.

> -CONFIG_CMD_ARM_MMUINFO=y
> +CONFIG_AEABI=y
> +CONFIG_ARM_BOARD_APPEND_ATAG=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  CONFIG_ARM_UNWIND=y
> -CONFIG_MMU=y

Why do you disable MMU support? Doesn't this work properly? If it
doesn't this should be fixed since you definitely want to have MMU
support.

Since relocatable barebox is enabled I recommend to set the base address
to 0x0. Also the malloc area size can be specified to 0x0 which means
barebox will automatically find a good value.

Sascha

---------------8<---------------------------

From acd71e52c8835146e361464edce661b0c637eeb8 Mon Sep 17 00:00:00 2001
From: Andrey Panov <rockford@yandex.ru>
Date: Thu, 5 Mar 2015 21:45:19 +0300
Subject: [PATCH] ARM: Rockchip: Update defconfig

Signed-off-by: Andrey Panov <rockford@yandex.ru>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/rockchip_defconfig | 91 +++++++++++++++++++++++++++----------
 1 file changed, 66 insertions(+), 25 deletions(-)

diff --git a/arch/arm/configs/rockchip_defconfig b/arch/arm/configs/rockchip_defconfig
index 40442ac..6733462 100644
--- a/arch/arm/configs/rockchip_defconfig
+++ b/arch/arm/configs/rockchip_defconfig
@@ -1,51 +1,79 @@
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_MACH_RADXA_ROCK=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="radxa-rock:"
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/radxa-rock/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_BOOTM_AIMAGE=y
 CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_LED=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
 CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
@@ -53,8 +81,21 @@ CONFIG_DRIVER_NET_ARC_EMAC=y
 CONFIG_SMSC_PHY=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_DW=y
+CONFIG_MCI_DW_PIO=y
 CONFIG_MFD_ACT8846=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
+CONFIG_GENERIC_PHY=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_BPKFS=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_LZO_DECOMPRESS=y
-- 
2.1.4


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
