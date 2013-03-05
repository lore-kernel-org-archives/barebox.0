Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCpbf-0007dO-Lq
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 11:00:28 +0000
Date: Tue, 5 Mar 2013 12:00:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130305110025.GV1906@pengutronix.de>
References: <1362431430-24286-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362431430-24286-1-git-send-email-plagnioj@jcrosoft.com>
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

On Mon, Mar 04, 2013 at 10:10:30PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> 
> diff --git a/arch/arm/boards/highbank/env/boot/ahci b/arch/arm/boards/highbank/env/boot/ahci
> new file mode 100644
> index 0000000..9a41366
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/boot/ahci
> @@ -0,0 +1,21 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "AHCI (part 0 or boot if UEFI)"
> +	exit
> +fi
> +
> +path="/mnt/ahci"
> +
> +global.bootm.image="${path}/vmlinuz"
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

This seems to copy copy pasted from the Efika Smartbook and I doubt this
is correct for highbank.

> +global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"

The entry is named ahci and it sets the root device to mmcblk?

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

ditto wrong

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
> diff --git a/arch/arm/boards/highbank/env/init/bootseq b/arch/arm/boards/highbank/env/init/bootseq
> new file mode 100644
> index 0000000..7a76759
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/init/bootseq
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +mkdir /env/boot.d
> +ln /env/boot/ahci /env/boot.d/010
> +ln /env/boot/mmc /env/boot.d/011
> +ln /env/boot/net /env/boot.d/012

Doesn't this give ugly errors when the files exist already on a persistent environment?

Also, isn't a bootsequence supposed to be changeable?

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
