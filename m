Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTddC-00034j-6R
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 21:16:18 +0000
Received: by mail-wg0-f45.google.com with SMTP id z12so4453207wgg.4
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 14:15:56 -0700 (PDT)
Message-ID: <54175708.1090306@gmail.com>
Date: Mon, 15 Sep 2014 23:15:52 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
 <1410766873-4393-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410766873-4393-6-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] ARM: Add mvebu_defconfig
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On 09/15/2014 09:41 AM, Sascha Hauer wrote:
> This adds a mvebu_defconfig which enables all mvebu based boards.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha,

we should also select

CONFIG_DRIVER_NET_ORION=y
CONFIG_MDIO_MVEBU=y
CONFIG_MARVELL_PHY=y

and some NET commands would be helpful too.

Also,

CONFIG_DRIVER_NET_MVNETA=y

_if_ Ezequiel reposts mvneta before this gets in.

Sebastian

> ---
>  arch/arm/configs/mvebu_defconfig | 108 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 108 insertions(+)
>  create mode 100644 arch/arm/configs/mvebu_defconfig
> 
> diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
> new file mode 100644
> index 0000000..87b35f0
> --- /dev/null
> +++ b/arch/arm/configs/mvebu_defconfig
> @@ -0,0 +1,108 @@
> +CONFIG_ARCH_MVEBU=y
> +CONFIG_MACH_GLOBALSCALE_MIRABOX=y
> +CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3=y
> +CONFIG_MACH_MARVELL_ARMADA_XP_GP=y
> +CONFIG_MACH_SOLIDRUN_CUBOX=y
> +CONFIG_MACH_GLOBALSCALE_GURUPLUG=y
> +CONFIG_MACH_PLATHOME_OPENBLOCKS_A6=y
> +CONFIG_MACH_USI_TOPKICK=y
> +CONFIG_AEABI=y
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_ARM_UNWIND=y
> +CONFIG_MMU=y
> +CONFIG_TEXT_BASE=0x0
> +CONFIG_MALLOC_SIZE=0x0
> +CONFIG_MALLOC_TLSF=y
> +CONFIG_KALLSYMS=y
> +CONFIG_RELOCATABLE=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_MENU=y
> +CONFIG_BLSPEC=y
> +CONFIG_IMD_TARGET=y
> +CONFIG_CONSOLE_ACTIVATE_NONE=y
> +CONFIG_PARTITION_DISK_EFI=y
> +CONFIG_LONGHELP=y
> +CONFIG_CMD_IOMEM=y
> +CONFIG_CMD_IMD=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_ARM_MMUINFO=y
> +CONFIG_CMD_BOOT=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_BOOTM_VERBOSE=y
> +CONFIG_CMD_BOOTM_INITRD=y
> +CONFIG_CMD_BOOTM_OFTREE=y
> +CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_LOADS=y
> +CONFIG_CMD_LOADY=y
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_UIMAGE=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_AUTOMOUNT=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_GLOBAL=y
> +CONFIG_CMD_LOADENV=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_MAGICVAR=y
> +CONFIG_CMD_MAGICVAR_HELP=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_BASENAME=y
> +CONFIG_CMD_DIRNAME=y
> +CONFIG_CMD_FILETYPE=y
> +CONFIG_CMD_LN=y
> +CONFIG_CMD_MD5SUM=y
> +CONFIG_CMD_READLINK=y
> +CONFIG_CMD_SHA1SUM=y
> +CONFIG_CMD_SHA224SUM=y
> +CONFIG_CMD_SHA256SUM=y
> +CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_CMD_GETOPT=y
> +CONFIG_CMD_LET=y
> +CONFIG_CMD_MSLEEP=y
> +CONFIG_CMD_READF=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_MENU=y
> +CONFIG_CMD_MENU_MANAGEMENT=y
> +CONFIG_CMD_MENUTREE=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_CRC=y
> +CONFIG_CMD_CRC_CMP=y
> +CONFIG_CMD_CLK=y
> +CONFIG_CMD_DETECT=y
> +CONFIG_CMD_I2C=y
> +CONFIG_CMD_LED=y
> +CONFIG_CMD_SPI=y
> +CONFIG_CMD_LED_TRIGGER=y
> +CONFIG_CMD_WD=y
> +CONFIG_CMD_OF_NODE=y
> +CONFIG_CMD_OF_PROPERTY=y
> +CONFIG_CMD_OFTREE=y
> +CONFIG_CMD_TIME=y
> +CONFIG_OFDEVICE=y
> +CONFIG_OF_BAREBOX_DRIVERS=y
> +CONFIG_DRIVER_SERIAL_NS16550=y
> +CONFIG_I2C=y
> +CONFIG_MTD=y
> +CONFIG_MTD_M25P80=y
> +CONFIG_DISK_AHCI=y
> +CONFIG_USB_HOST=y
> +CONFIG_USB_EHCI=y
> +CONFIG_USB_STORAGE=y
> +CONFIG_MCI=y
> +CONFIG_MCI_STARTUP=y
> +CONFIG_MCI_MMC_BOOT_PARTITIONS=y
> +CONFIG_LED=y
> +CONFIG_LED_TRIGGERS=y
> +CONFIG_WATCHDOG=y
> +CONFIG_FS_CRAMFS=y
> +CONFIG_FS_EXT4=y
> +CONFIG_FS_FAT=y
> +CONFIG_FS_FAT_WRITE=y
> +CONFIG_FS_FAT_LFN=y
> +CONFIG_BZLIB=y
> +CONFIG_LZO_DECOMPRESS=y
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
