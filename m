Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPSdq-0001ZK-Lc
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 07:06:56 +0000
Date: Tue, 9 Apr 2013 09:06:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130409070652.GA1906@pengutronix.de>
References: <1365265917-25480-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365265917-25480-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] highbank: switch to defaultenv-2
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On Sat, Apr 06, 2013 at 06:31:57PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to have boot sequence and later to use PXE
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Rob Herring <rob.herring@calxeda.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/highbank/env/boot.d/010-ahci-boot  |    1 +
>  arch/arm/boards/highbank/env/boot.d/011-ahci       |    1 +
>  arch/arm/boards/highbank/env/boot.d/020-mmc-boot   |    1 +
>  arch/arm/boards/highbank/env/boot.d/021-mmc        |    1 +
>  arch/arm/boards/highbank/env/boot.d/030-net        |    1 +
>  arch/arm/boards/highbank/env/boot.d/031-net-eth1   |    1 +
>  arch/arm/boards/highbank/env/boot/ahci             |   21 +++++++++++++
>  arch/arm/boards/highbank/env/boot/ahci-boot        |   21 +++++++++++++
>  arch/arm/boards/highbank/env/boot/mmc              |   21 +++++++++++++
>  arch/arm/boards/highbank/env/boot/mmc-boot         |   21 +++++++++++++
>  arch/arm/boards/highbank/env/boot/net              |   18 +++++++++++
>  arch/arm/boards/highbank/env/boot/net-eth1         |   18 +++++++++++
>  arch/arm/boards/highbank/env/config                |   33 --------------------
>  arch/arm/boards/highbank/env/config-board          |   11 +++++++
>  arch/arm/boards/highbank/env/data/oftree           |    4 +++
>  .../env/{bin/init_board => init/001-dtb-probe}     |    0
>  arch/arm/boards/highbank/env/init/automount        |   27 ++++++++++++++++
>  arch/arm/boards/highbank/env/init/ps1              |    9 ++++++
>  arch/arm/mach-highbank/Kconfig                     |    1 +
>  19 files changed, 178 insertions(+), 33 deletions(-)
>  create mode 120000 arch/arm/boards/highbank/env/boot.d/010-ahci-boot
>  create mode 120000 arch/arm/boards/highbank/env/boot.d/011-ahci
>  create mode 120000 arch/arm/boards/highbank/env/boot.d/020-mmc-boot
>  create mode 120000 arch/arm/boards/highbank/env/boot.d/021-mmc
>  create mode 120000 arch/arm/boards/highbank/env/boot.d/030-net
>  create mode 120000 arch/arm/boards/highbank/env/boot.d/031-net-eth1
>  create mode 100644 arch/arm/boards/highbank/env/boot/ahci
>  create mode 100644 arch/arm/boards/highbank/env/boot/ahci-boot
>  create mode 100644 arch/arm/boards/highbank/env/boot/mmc
>  create mode 100644 arch/arm/boards/highbank/env/boot/mmc-boot
>  create mode 100644 arch/arm/boards/highbank/env/boot/net
>  create mode 100644 arch/arm/boards/highbank/env/boot/net-eth1
>  delete mode 100644 arch/arm/boards/highbank/env/config
>  create mode 100644 arch/arm/boards/highbank/env/config-board
>  create mode 100644 arch/arm/boards/highbank/env/data/oftree
>  rename arch/arm/boards/highbank/env/{bin/init_board => init/001-dtb-probe} (100%)
>  create mode 100644 arch/arm/boards/highbank/env/init/automount
>  create mode 100644 arch/arm/boards/highbank/env/init/ps1
> 
> diff --git a/arch/arm/boards/highbank/env/boot.d/010-ahci-boot b/arch/arm/boards/highbank/env/boot.d/010-ahci-boot
> new file mode 120000
> index 0000000..3672f04
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot.d/010-ahci-boot
> @@ -0,0 +1 @@
> +../boot/ahci-boot
> \ No newline at end of file
> diff --git a/arch/arm/boards/highbank/env/boot.d/011-ahci b/arch/arm/boards/highbank/env/boot.d/011-ahci
> new file mode 120000
> index 0000000..36b3b28
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot.d/011-ahci
> @@ -0,0 +1 @@
> +../boot/ahci
> \ No newline at end of file
> diff --git a/arch/arm/boards/highbank/env/boot.d/020-mmc-boot b/arch/arm/boards/highbank/env/boot.d/020-mmc-boot
> new file mode 120000
> index 0000000..85c19bb
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot.d/020-mmc-boot
> @@ -0,0 +1 @@
> +../boot/mmc-boot
> \ No newline at end of file
> diff --git a/arch/arm/boards/highbank/env/boot.d/021-mmc b/arch/arm/boards/highbank/env/boot.d/021-mmc
> new file mode 120000
> index 0000000..5af95d0
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot.d/021-mmc
> @@ -0,0 +1 @@
> +../boot/mmc
> \ No newline at end of file
> diff --git a/arch/arm/boards/highbank/env/boot.d/030-net b/arch/arm/boards/highbank/env/boot.d/030-net
> new file mode 120000
> index 0000000..70b8ea3
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot.d/030-net
> @@ -0,0 +1 @@
> +../boot/net
> \ No newline at end of file
> diff --git a/arch/arm/boards/highbank/env/boot.d/031-net-eth1 b/arch/arm/boards/highbank/env/boot.d/031-net-eth1
> new file mode 120000
> index 0000000..5a30a30
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot.d/031-net-eth1
> @@ -0,0 +1 @@
> +../boot/net-eth1
> \ No newline at end of file
> diff --git a/arch/arm/boards/highbank/env/boot/ahci b/arch/arm/boards/highbank/env/boot/ahci
> new file mode 100644
> index 0000000..3bdb809
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot/ahci
> @@ -0,0 +1,21 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "AHCI"
> +	exit
> +fi
> +
> +path="/mnt/ahci"
> +
> +global.bootm.image="${path}/zImage"
> +
> +. /env/data/oftree
> +
> +oftree=${path}/oftree
> +if [ -f $oftree ]; then
> +	global.bootm.oftree="$oftree"
> +fi
> +
> +# The rootdevice may actually be mmcblk1p2 if a card
> +# is inserted to the back MMC slot
> +global.linux.bootargs.dyn.root="root=/dev/sda2"
> diff --git a/arch/arm/boards/highbank/env/boot/ahci-boot b/arch/arm/boards/highbank/env/boot/ahci-boot
> new file mode 100644
> index 0000000..0064a46
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot/ahci-boot
> @@ -0,0 +1,21 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "AHCI (UEFI boot partiton)"
> +	exit
> +fi
> +
> +path="/mnt/ahci-boot"
> +
> +global.bootm.image="${path}/zImage"
> +
> +. /env/data/oftree
> +
> +oftree=${path}/oftree
> +if [ -f $oftree ]; then
> +	global.bootm.oftree="$oftree"
> +fi
> +
> +# The rootdevice may actually be mmcblk1p2 if a card
> +# is inserted to the back MMC slot
> +global.linux.bootargs.dyn.root="root=/dev/sda2"
> diff --git a/arch/arm/boards/highbank/env/boot/mmc b/arch/arm/boards/highbank/env/boot/mmc
> new file mode 100644
> index 0000000..43a04b5
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot/mmc
> @@ -0,0 +1,21 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "MMC slot"
> +	exit
> +fi
> +
> +path="/mnt/mmc"
> +
> +global.bootm.image="${path}/zimage"
> +
> +. /env/data/oftree
> +
> +oftree=${path}/oftree
> +if [ -f $oftree ]; then
> +	global.bootm.oftree="$oftree"
> +fi
> +
> +# The rootdevice may actually be mmcblk1p2 if a card
> +# is inserted to the back MMC slot
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
> diff --git a/arch/arm/boards/highbank/env/boot/mmc-boot b/arch/arm/boards/highbank/env/boot/mmc-boot
> new file mode 100644
> index 0000000..93cd99b
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot/mmc-boot
> @@ -0,0 +1,21 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "MMC slot (UEFI boot partiton)"
> +	exit
> +fi
> +
> +path="/mnt/mmc-boot"
> +
> +global.bootm.image="${path}/zimage"
> +
> +. /env/data/oftree
> +
> +oftree=${path}/oftree
> +if [ -f $oftree ]; then
> +	global.bootm.oftree="$oftree"
> +fi
> +
> +# The rootdevice may actually be mmcblk1p2 if a card
> +# is inserted to the back MMC slot
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
> diff --git a/arch/arm/boards/highbank/env/boot/net b/arch/arm/boards/highbank/env/boot/net
> new file mode 100644
> index 0000000..80862cd
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot/net
> @@ -0,0 +1,18 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "network (tftp, nfs) (eth0)"
> +	exit
> +fi
> +
> +ethact eth0
> +
> +path="/mnt/tftp"
> +
> +. /env/data/oftree
> +
> +global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
> +#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
> +nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> +bootargs-ip
> +global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
> diff --git a/arch/arm/boards/highbank/env/boot/net-eth1 b/arch/arm/boards/highbank/env/boot/net-eth1
> new file mode 100644
> index 0000000..d9e9804
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot/net-eth1
> @@ -0,0 +1,18 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "network (tftp, nfs) (eth1)"
> +	exit
> +fi
> +
> +ethact eth1
> +
> +path="/mnt/tftp"
> +
> +. /env/data/oftree
> +
> +global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
> +#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
> +nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> +bootargs-ip
> +global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
> diff --git a/arch/arm/boards/highbank/env/config b/arch/arm/boards/highbank/env/config
> deleted file mode 100644
> index 1bb2c49..0000000
> --- a/arch/arm/boards/highbank/env/config
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -#!/bin/sh
> -
> -# use 'dhcp' to do dhcp in barebox and in kernel
> -# use 'none' if you want to skip kernel ip autoconfiguration
> -ip=dhcp
> -global.dhcp.vendor_id=barebox-highbank
> -
> -# or set your networking parameters here
> -#eth0.ipaddr=a.b.c.d
> -#eth0.netmask=a.b.c.d
> -#eth0.gateway=a.b.c.d
> -#eth0.serverip=a.b.c.d
> -
> -# can be either 'nfs', 'tftp' or 'nor'
> -kernel_loc=tftp
> -# can be either 'net', 'nor' or 'initrd'
> -rootfs_loc=initrd
> -
> -# can be either 'jffs2' or 'ubifs'
> -rootfs_type=ubifs
> -rootfsimage=root.$rootfs_type
> -
> -kernelimage=zImage
> -#kernelimage=uImage
> -#kernelimage=Image
> -#kernelimage=Image.lzo
> -
> -autoboot_timeout=3
> -
> -bootargs="console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0"
> -
> -# set a fancy prompt (if support is compiled in)
> -PS1="\e[1;31m[barebox@\h]:\w\e[0m\n# "
> diff --git a/arch/arm/boards/highbank/env/config-board b/arch/arm/boards/highbank/env/config-board
> new file mode 100644
> index 0000000..a64d9e3
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/config-board
> @@ -0,0 +1,11 @@
> +#!/bin/sh
> +
> +# board defaults, do not change in running system. Change /env/config
> +# instead
> +
> +global.hostname=highbank
> +global.allow_color=true
> +global.autoboot_timeout=3
> +global.bootm.oftree="/dev/dtb"
> +global.linux.bootargs.base="console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0"
> +global.boot.default=/env/boot.d
> diff --git a/arch/arm/boards/highbank/env/data/oftree b/arch/arm/boards/highbank/env/data/oftree
> new file mode 100644
> index 0000000..9a94b31
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/data/oftree
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +
> +#device tree provided by the firmware
> +global.bootm.oftree="/dev/dtb"
> diff --git a/arch/arm/boards/highbank/env/bin/init_board b/arch/arm/boards/highbank/env/init/001-dtb-probe
> similarity index 100%
> rename from arch/arm/boards/highbank/env/bin/init_board
> rename to arch/arm/boards/highbank/env/init/001-dtb-probe
> diff --git a/arch/arm/boards/highbank/env/init/automount b/arch/arm/boards/highbank/env/init/automount
> new file mode 100644
> index 0000000..2c283c6
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/init/automount
> @@ -0,0 +1,27 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	init-menu-add-entry "$0" "Automountpoints"
> +	exit
> +fi
> +
> +# automount tftp server based on $eth0.serverip
> +
> +mkdir -p /mnt/tftp
> +automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
> +
> +# SD card slot, boot partition
> +mkdir -p /mnt/mmc-boot
> +automount -d /mnt/mmc 'mount /dev/disk0.boot /mnt/mmc-boot'
> +
> +# SD card slot, first partition
> +mkdir -p /mnt/mmc
> +automount -d /mnt/mmc 'mount /dev/disk0.0 /mnt/mmc'
> +
> +# AHCI, boot partition
> +mkdir -p /mnt/ahci-boot
> +automount -d /mnt/ahci 'mount /dev/ata0.boot /mnt/ahci-boot'
> +
> +# AHCI, first partition
> +mkdir -p /mnt/ahci
> +automount -d /mnt/ahci 'mount /dev/ata0.0 /mnt/ahci'
> diff --git a/arch/arm/boards/highbank/env/init/ps1 b/arch/arm/boards/highbank/env/init/ps1
> new file mode 100644
> index 0000000..a94acc1
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/init/ps1
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +
> +/env/config
> +
> +if [ ${global.allow_color} = "true" ]; then
> +	export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m\n# "
> +else
> +	export PS1="barebox@\h:\w\n# "
> +fi
> diff --git a/arch/arm/mach-highbank/Kconfig b/arch/arm/mach-highbank/Kconfig
> index 47c6405..9cfe539 100644
> --- a/arch/arm/mach-highbank/Kconfig
> +++ b/arch/arm/mach-highbank/Kconfig
> @@ -12,6 +12,7 @@ choice
>  
>  config MACH_HIGHBANK
>  	bool "Calxeda Highbank"
> +	select HAVE_DEFAULT_ENVIRONMENT_NEW
>  
>  endchoice
>  
> -- 
> 1.7.10.4
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
