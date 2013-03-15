Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGP2e-00022z-Gz
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 07:27:05 +0000
Date: Fri, 15 Mar 2013 08:27:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130315072701.GZ1906@pengutronix.de>
References: <1363257606-23877-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363257606-23877-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] ARM: ccmx51: Migrate to defaultenv-2
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Mar 14, 2013 at 02:40:05PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/ccxmx51/env/boot/nand          |    9 ++++++
>  arch/arm/boards/ccxmx51/env/config             |   37 ------------------------
>  arch/arm/boards/ccxmx51/env/config-board       |   12 ++++++++
>  arch/arm/boards/ccxmx51/env/init/mtdparts-nand |   11 +++++++
>  arch/arm/configs/ccmx51_defconfig              |    9 ++++--
>  5 files changed, 38 insertions(+), 40 deletions(-)
>  create mode 100644 arch/arm/boards/ccxmx51/env/boot/nand
>  delete mode 100644 arch/arm/boards/ccxmx51/env/config
>  create mode 100644 arch/arm/boards/ccxmx51/env/config-board
>  create mode 100644 arch/arm/boards/ccxmx51/env/init/mtdparts-nand

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/ccxmx51/env/boot/nand b/arch/arm/boards/ccxmx51/env/boot/nand
> new file mode 100644
> index 0000000..bb11465
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/env/boot/nand
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "NAND Flash"
> +	exit
> +fi
> +
> +global.bootm.image="/dev/kernel"
> +global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
> diff --git a/arch/arm/boards/ccxmx51/env/config b/arch/arm/boards/ccxmx51/env/config
> deleted file mode 100644
> index bbd43e7..0000000
> --- a/arch/arm/boards/ccxmx51/env/config
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -#!/bin/sh
> -
> -machine=ccmx51
> -
> -# use 'dhcp' to do dhcp in barebox and in kernel
> -# use 'none' if you want to skip kernel ip autoconfiguration
> -ip=none
> -
> -# or set your networking parameters here
> -#eth0.ipaddr=a.b.c.d
> -#eth0.netmask=a.b.c.d
> -#eth0.gateway=a.b.c.d
> -#eth0.serverip=a.b.c.d
> -
> -# can be either 'nfs', 'tftp' or 'nand'
> -kernel_loc=nand
> -# can be either 'net', 'nand' or 'initrd'
> -rootfs_loc=nand
> -
> -# rootfs
> -rootfs_type=cramfs
> -
> -# kernel
> -kernelimage_type=zimage
> -kernel_img=/dev/nand0.kernel
> -
> -autoboot_timeout=3
> -
> -bootargs="console=ttymxc0,115200"
> -
> -device_type="nand"
> -nand_device="mxc_nand"
> -nand_parts="512k(barebox)ro,256k(bareboxenv),3328k(kernel),-(root)"
> -rootfs_mtdblock_nand=3
> -
> -# set a fancy prompt (if support is compiled in)
> -PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
> diff --git a/arch/arm/boards/ccxmx51/env/config-board b/arch/arm/boards/ccxmx51/env/config-board
> new file mode 100644
> index 0000000..26acb4b
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/env/config-board
> @@ -0,0 +1,12 @@
> +#!/bin/sh
> +
> +global.hostname=ccmx51
> +
> +# Timeout in seconds before the default boot entry is started
> +global.autoboot_timeout=2
> +
> +# Default boot entry (one of /env/boot/*)
> +global.boot.default=nand
> +
> +# Board bootargs
> +global.linux.bootargs.base="earlyprintk console=ttymxc0,115200n8"
> diff --git a/arch/arm/boards/ccxmx51/env/init/mtdparts-nand b/arch/arm/boards/ccxmx51/env/init/mtdparts-nand
> new file mode 100644
> index 0000000..a4315cd
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/env/init/mtdparts-nand
> @@ -0,0 +1,11 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	init-menu-add-entry "$0" "NAND partitions"
> +	exit
> +fi
> +
> +mtdparts="512k(barebox)ro,256k(bareboxenv),3328k(kernel),-(root)"
> +kernelname="mxc_nand"
> +
> +mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
> diff --git a/arch/arm/configs/ccmx51_defconfig b/arch/arm/configs/ccmx51_defconfig
> index 67d1dd2..b406686 100644
> --- a/arch/arm/configs/ccmx51_defconfig
> +++ b/arch/arm/configs/ccmx51_defconfig
> @@ -7,13 +7,12 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  CONFIG_MMU=y
>  CONFIG_MALLOC_SIZE=0x2000000
>  CONFIG_LONGHELP=y
> -CONFIG_GLOB=y
>  CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO=y
> -CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
> -CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/ccxmx51/env"
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/ccxmx51/env"
>  CONFIG_CMD_EDIT=y
>  CONFIG_CMD_SLEEP=y
>  CONFIG_CMD_SAVEENV=y
> @@ -22,11 +21,15 @@ CONFIG_CMD_PRINTENV=y
>  CONFIG_CMD_READLINE=y
>  CONFIG_CMD_ECHO_E=y
>  CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_CRC=y
> +CONFIG_CMD_CRC_CMP=y
>  CONFIG_CMD_FLASH=y
>  CONFIG_CMD_BOOTM_SHOW_TYPE=y
>  CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_GO=y
> +CONFIG_CMD_OFTREE=y
> +CONFIG_CMD_OFTREE_PROBE=y
>  CONFIG_CMD_NANDTEST=y
>  CONFIG_CMD_MTEST=y
>  CONFIG_CMD_TIMEOUT=y
> -- 
> 1.7.3.4
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
