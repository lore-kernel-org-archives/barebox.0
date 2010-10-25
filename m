Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PAVY0-0000il-3J
	for barebox@lists.infradead.org; Mon, 25 Oct 2010 22:29:45 +0000
Received: by ywg4 with SMTP id 4so1790325ywg.36
	for <barebox@lists.infradead.org>; Mon, 25 Oct 2010 15:29:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20101022070504.GD22139@pengutronix.de>
References: <AANLkTinosq5jY41=piCX3JaeFy6Z93gnG1Ym_VRqZ_sJ@mail.gmail.com>
	<20101022070504.GD22139@pengutronix.de>
Date: Mon, 25 Oct 2010 17:29:41 -0500
Message-ID: <AANLkTimNiUjRq3GLNNa0gYRGGZjLaTrWbsNRKPU9=1mw@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Beagleboard and barebox problem
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 22, 2010 at 2:05 AM, Sascha Hauer <s.hauer@pengutronix.de> wrot=
e:
> Hi Victor,
>
> On Thu, Oct 21, 2010 at 12:55:16PM -0500, Victor Rodriguez wrote:
>> Hey I am new on bare box I have download it from git repo and when I
>> make the barebox.bin with omap3530_beagle_defconfig this is the output
>>
>> Texas Instruments X-Loader 1.4.2 (Feb 19 2009 - 12:01:24)
>> Reading boot sector
>> Loading u-boot.bin from mmc
>>
>>
>> barebox 2010.10.0-00086-ga14c018 (Oct 21 2010 - 12:19:10)
>>
>> Board: Texas Instrument's Beagle
>> I2C probe
>> i2c-omap@i2c-omap0: bus 0 rev3.12 at 100 kHz
>> ehci@ehci0: USB EHCI 1.00
>> NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba (Micron NAND 256MiB
>> 1,8V 16-bit)
>> Malloc space: 0x80c00000 -> 0x81000000 (size =A04 MB)
>> Stack space : 0x80bf8000 -> 0x80c00000 (size 32 kB)
>> Open /dev/env0 No such file or directory
>> running /env/bin/init...
>> not found
>> barebox> ls
>> . =A0 =A0 =A0.. =A0 =A0 dev
>> barebox> ls /dev/
>> zero =A0 =A0 =A0 =A0 mem =A0 =A0 =A0 =A0 =A0ram0 =A0 =A0 =A0 =A0 twl4030=
 =A0 =A0 =A0nand0
>> nand_oob0
>
> Then it's up and running, congratulations ;)
>
> What the beagle board is missing is currently a place to store the
> environment. You could add an environment to nand by adding something
> like this to the board setup function:
>
> =A0 =A0 =A0 =A0devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_F=
IXED,"env_raw");
> =A0 =A0 =A0 =A0dev_add_bb_dev("env_raw", "env0");
>
> (this adds a partition at offset 0x40000 and size 0x20000 to nand, you
> probably have to adjust the offset to not overwrite the X-loader)


HI Sascha thanks a lot for the help

Well after adding the environment for nand by adding this code :

 arch/arm/boards/omap/board-beagle.c |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c
b/arch/arm/boards/omap/board-beagle.c
index 6de2cce..21b31c2 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -73,6 +73,8 @@
 #include <linux/err.h>
 #include <usb/ehci.h>
 #include "board.h"
+#include <partition.h>
+#include <nand.h>

 /******************** Board Boot Time *******************/

@@ -334,6 +336,16 @@ static int beagle_devices_init(void)
 #endif
 	gpmc_generic_nand_devices_init(0, 16, 1);

+	/* ----------- add some vital partitions -------- */
+#ifdef CONFIG_NAND
+
+	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw"=
);
+	dev_add_bb_dev("env_raw", "env0");
+#endif
+
+
+
+
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
-- =

1.7.0.4

barebox compiles fine

(Hope it could be a patch if you consider I could send this tiny patch
to the mailing list :)  )

And the output for the new boat loader is

Texas Instruments X-Loader 1.4.2 (Feb 19 2009 - 12:01:24)
Reading boot sector
Loading u-boot.bin from mmc


bare box 2010.10.0-00088-gd3ddbec (Oct 25 2010 - 16:36:06)

Board: Texas Instrument's Beagle
I2C probe
i2c-omap@i2c-omap0: bus 0 rev3.12 at 100 kHz
ehci@ehci0: USB EHCI 1.00
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba (Micron NAND 256MiB
1,8V 16-bit)
Malloc space: 0x80c00000 -> 0x81000000 (size  4 MB)
Stack space : 0x80bf8000 -> 0x80c00000 (size 32 kB)
envfs: wrong magic on /dev/env0
running /env/bin/init...
not found
barebox> /

I fix the problem of envfs: wrong magic on /dev/env0 with your thread

http://www.mail-archive.com/u-boot-users@lists.sourceforge.net/msg10197.html

And every thing works fine

uboot> addpart /dev/nand0 256k(uboot),128k(env),2048k(kernel),-(rootfs)
uboot> nand -a /dev/nand0.*
uboot> erase /dev/nand0.kernel.bb


and in the end I have

barebox> /dev ls -la
ls: invalid option -- a
cr-------- 4294967295 zero
crw------- 4294967295 mem
crw-------  134217728 ram0
crw-------       1024 twl4030
crw-------  268435456 nand0
cr--------    8388608 nand_oob0
crw-------     131072 env_raw
crw-------     131072 env0
crw-------     262144 nand0.uboot
crw-------     131072 nand0.env
crw-------    2097152 nand0.kernel
crw-------  265945088 nand0.rootfs
crw-------  265945088 nand0.rootfs.bb
crw-------    2097152 nand0.kernel.bb
crw-------     131072 nand0.env.bb
crw-------     262144 nand0.uboot.bb


So every thing works fine :)

But I have a question how do I save the bootargs

My boot args used to be

setenv bootargs console=3DttyS2,115200n8 noinitrd root=3D/dev/mmcblk0p2
rootfstype=3Dext2 rw rootdelay=3D1 nohz=3Doff

But is not working for bare box

How do you save the boot args ?

The next step will be

uboot> tftp uImage-mx27ads /dev/nand0.kernel.bb

And the same for a ram disk File System in the nand0.rootfs.bb right ?

And

uboot> bootm /dev/nand0.kernel.bb

But my second question is  How the kernel know were is the File
System, where should I set something similar to boot args ?

Thanks for the help it really helps me a lot



> Another possibility would be to add mmc support for omap and put the
> environment there. We recently gained mmc support for barebox, so all
> that's missing is an omap driver. The mmc support is still close to
> U-Boot, so the driver won't need many changes.

I will try to do this hope it could help some one else.


Sincerely yours

Victor Rodriguez



>>
>>
>> And when I compile with omap3530_beagle_per_uart_defconfig
>
> The per_uart_defconfig is more a X-loader replacement. You can use it to
> bootstrap from the serial port. For your case the other config is the
> correct one.
>
> Sascha
>
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
