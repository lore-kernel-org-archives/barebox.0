Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from wp303.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8548::])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAAyD-00063i-RS
 for barebox@lists.infradead.org; Mon, 15 May 2017 08:03:11 +0000
Date: Mon, 15 May 2017 10:02:46 +0200 (CEST)
From: Norbert Wiedmann <info@n-wiedmann.de>
Message-ID: <1134464656.20372.1494835367008@ox.hosteurope.de>
MIME-Version: 1.0
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
Subject: Undetected mtd partitions since v2017.05
To: barebox@lists.infradead.org

Hi everyone,

with barebox-2017.04.0 everything works fine on my Phytec phyFlex i-mx6 module.
Since barebox-2017.05.0, I am running into a kernel panic when booting.
(tested with the provided tar-archive, and with the actual version from git)

This is my command line:
commandline: maxcpus=4 console=ttymxc3,115200n8  root=ubi0:root ubi.mtd=root-f
rootfstype=ubifs r

With barebox-2017.05.0, I am missing the output when creating the
mtd-partitions:
[    1.231388] nand: device found, Manufacturer ID: 0xec, Chip ID: 0xd3
[    1.237805] nand: Samsung NAND 1GiB 3,3V 8-bit
[    1.242274] nand: 1024MiB, SLC, page size: 2048, OOB size: 64
[    1.263911] gpmi-nand 112000.gpmi-nand: driver registered.

finally, the boot fails due to the missing partitions:
[    1.883856] UBIFS error (pid 1): ubifs_mount: cannot open "ubi0:root", error
-19
[    1.893234] VFS: Cannot open root device "ubi0:root" or unknown-block(0,0):
error -19
[    1.903126] Please append a correct "root=" boot option; here are the
available partitions:
[    1.913717] 1f00         1048576 mtdblock0  (driver?)
[    1.920123] b300        15558144 mmcblk0  driver: mmcblk
[    1.926879]   b301        15554048 mmcblk0p1 00000000-01
[    1.933610] Kernel panic - not syncing: VFS: Unable to mount root fs on
unknown-block(0,0)
[    1.944020] CPU3: stopping

Going back to barebox-2017.04.0, when starting the kernel, the mtd-partitions
are shown as they are defined in device tree. DTB, kernel, rootfs are left
unchanged.

[    1.241493] nand: device found, Manufacturer ID: 0xec, Chip ID: 0xd3
[    1.247909] nand: Samsung NAND 1GiB 3,3V 8-bit
[    1.252378] nand: 1024MiB, SLC, page size: 2048, OOB size: 64
[    1.272443] 13 ofpart partitions found on MTD device gpmi-nand
[    1.278332] Creating 13 MTD partitions on "gpmi-nand":
[    1.283530] 0x000000000000-0x000000400000 : "barebox"
[    1.290294] 0x000000400000-0x0000004a0000 : "barebox-environment"
[    1.297968] 0x0000004a0000-0x000000500000 : "barebox-states"
[    1.305157] 0x000000500000-0x000004500000 : "config"
[    1.311909] 0x000004500000-0x000004600000 : "oftree-p1"
[    1.318712] 0x000004600000-0x000004e00000 : "kernel-p1"
[    1.325534] 0x000004e00000-0x00001ae00000 : "root-p1"
[    1.333806] 0x00001ae00000-0x00001af00000 : "oftree-p2"
[    1.340590] 0x00001af00000-0x00001b700000 : "kernel-p2"
[    1.347489] 0x00001b700000-0x000031700000 : "root-p2"
[    1.355677] 0x000031700000-0x000031800000 : "oftree-f"
[    1.362321] 0x000031800000-0x000032000000 : "kernel-f"
[    1.369053] 0x000032000000-0x000040000000 : "root-f"
[    1.376507] gpmi-nand 112000.gpmi-nand: driver registered.

and the root-fs can be attached as expected:
[    1.954701] UBI: attaching mtd12 to ubi0
[    3.110545] random: nonblocking pool is initialized
[    4.058208] UBI: scanning is finished
[    4.085570] UBI: attached mtd12 (name "root-f", size 224 MiB) to ubi0


I am using the state framework and bootchooser. The configuration settings
beeing added with the
2017.05 have been left on their default.

I double checked all mtd-configurations in barebox and linux device tree with no
findings.

I can reproduce this error by reflashing barebox from 2017.04 to 2017.05,
but leaving the rest of the system unchanged (kernel, dtb and rootfs).

I have no idea whats going wrong, hopefully someone can help me.
Thanks for your consideration in this matter.

Best regards
Norbert Wiedmann

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
