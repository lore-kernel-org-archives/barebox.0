Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f53.google.com ([74.125.82.53])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIKKt-0006mB-Ha
 for barebox@lists.infradead.org; Mon, 02 Feb 2015 16:58:56 +0000
Received: by mail-wg0-f53.google.com with SMTP id a1so39820006wgh.12
 for <barebox@lists.infradead.org>; Mon, 02 Feb 2015 08:58:33 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 2 Feb 2015 09:58:33 -0700
Message-ID: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
From: Doug Brainard <dbrainard@brainardinsight.com>
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
Subject: Passing kernel arguments - SAMA5D4EK
To: barebox@lists.infradead.org

Hello all,

I've been following barebox for a few months and working with the
SAMA5D4EK and barebox for about a week now.  I'm trying to
successfully boot into Android with it.  I am able to do so with
u-boot, and so I'm trying to figure out how to match the bootargs, so
that I can transfer over to barebox.

u-boot sends the following:
Kernel command line: console=ttyS0,115200
mtdparts=atmel_nand:8M(Bootstrap),176M(system),304M(userdata),-(cache)
ubi.mtd=2 ubi.mtd=3 ubi.mtd=4 rw root=ubi0:system systemtype=ubifs
init=/init androidboot.hardware=sama5-pda androidboot.lcd=wvga
androidboot.console=ttyS0

barebox sends the following:
Kernel command line: console=ttyS0,115200 init=/init
androidboot.hardware=sama5-pda androidboot.lcd=wvga
androidboot.console=ttyS0 ip=dhcp root=ubi0:system ubi.mtd=8
rootfstype=ubifs noinitrd
mtdparts=atmel_nand:256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),8M(recovery),176M(system),304M(userdata),-(cache)

The problem has to do with "ubi.mtd=2 ubi.mtd=3 ubi.mtd=4".  Without 3
sections mounted, Android is missing pieces.  I've figured out that
rootfs_mtdblock_nand sets the ubi.mtd, and I changed it to 8, because
I broke up the first 8M that u-boot didn't.  If I just add "ubi.mtd=9
ubi.mtd=10" to the bootargs, they are out order, and that also messes
things up.  Commenting out rootfs_mtdblock_nand leaves a "ubi.mtd=" in
the command line.  Frankly, I'm confused where rootfs_mtdblock_nand is
defined.  I'd love to just define userdata_mtdblock_nand, etc. and
have the information filled in, but I'm not seeing where that is done,
and the documentation (that I've found) doesn't mention anything like
that.

Also, where is "noinitrd" coming from?  If I were to match u-boot, it
should be "rw".

Finally, is there a list of keywords (like rootfs_mtdblock_nand,
ubiroot, etc.) you can use in the config file?  I appreciate you
helping a newbie out.  Below is my current config file:

#!/bin/sh

# use 'dhcp' to do dhcp in barebox and in kernel
# use 'none' if you want to skip kernel ip autoconfiguration
ip=dhcp

# or set your networking parameters here
#eth0.ipaddr=a.b.c.d
#eth0.netmask=a.b.c.d
#eth0.gateway=a.b.c.d
#eth0.serverip=a.b.c.d

# can be either 'nfs', 'tftp', 'nor' or 'nand'
kernel_loc=nand
# can be either 'net', 'nor', 'nand' or 'initrd'
rootfs_loc=nand
# can be either 'nfs', 'tftp', 'nand' or empty
oftree_loc=nand

# can be either 'jffs2' or 'ubifs'
rootfs_type=ubifs
rootfsimage=root.$rootfs_type
ubiroot=system

# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
kernelimage=zImage
#kernelimage=uImage
#kernelimage=Image
#kernelimage=Image.lzo

nand_device=atmel_nand
nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),176M(system),304M(userdata),-(cache)"
rootfs_mtdblock_nand=7

#m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"

autoboot_timeout=3

bootargs="console=ttyS0,115200 init=/init
androidboot.hardware=sama5-pda androidboot.lcd=wvga
androidboot.console=ttyS0"

# set a fancy prompt (if support is compiled in)
PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
