Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.web.de ([212.227.15.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Su8N1-0006oU-95
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 20:39:49 +0000
Message-ID: <50105986.5040300@web.de>
Date: Wed, 25 Jul 2012 22:39:34 +0200
From: Stutz Sven <stutzsven@web.de>
MIME-Version: 1.0
References: <500C4933.8050202@web.de> <500C6C5E.2020604@web.de>
 <20120723054850.GL22657@game.jcrosoft.org>
In-Reply-To: <20120723054850.GL22657@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: AT91SAM9263-ek - Kernel panic
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hello,

I am sorry for my late message.

But
Am 23.07.2012 07:48, schrieb Jean-Christophe PLAGNIOL-VILLARD:

> On 23:10 Sun 22 Jul     , Stutz Sven wrote:
>>     Hello to everybody,
>>
>>     previously I have had some doubts to run a Linux kernel on this eval=
board.
>>     Especially to find a BSP for my board ....
>>
>>     In the meantime I have had some problems which I was able to solve by
>>     myself or reading through different forums.
> the mainline kernel work perfectly on it

I guess it should so and with ptxdist it is also more or less easy to adjus=
t the correct settings.
(I hope so :-) )

>>     But in total I am able to load and start Barebox and then again load=
ing
>>     and starting the kernel.
>>
>>     First I have seen nothing until I switch on the special function
>>     earlyprintk=3Dserial,ttyS0,115200n8
>>     After that I saw that I have mounting/partitioning problem, so I cha=
nged
>>     the board specific init.c
>>     in that way that the first three partitions match exactly to the
>>     definition in the configuration file for the init script of Barebox.
>>
>>         init.c > devfs_add_partition("nand0", 0x00000, SZ_128K,
>>     DEVFS_PARTITION_FIXED,"at91bootstrap_raw");
>>                     dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
>>                     devfs_add_partition("nand0", SZ_128K, SZ_256K,
>>     DEVFS_PARTITION_FIXED, "self_raw");
>>                     dev_add_bb_dev("self_raw", "self0");
>>                     devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_1=
28K,
>>     DEVFS_PARTITION_FIXED, "env_raw");
>>                     dev_add_bb_dev("env_raw", "env0");
>>
>>         env/config >
>>     nand_parts=3D"128k(at91bootstrap),256k(barebox),128k(bareboxenv),4M(=
kernel),80M(rootfs),-(data)"
>>                     rootfs_mtdblock_nand=3D4
>>                     rootfs_mtdblock_type=3Djffs2
>>
>>     After that I was really happy that the kernel is prompting "VFS: Mou=
nted
>>     root (jffs2 filesystem)"
>>     But the next kernel panic is near
>>     It cannot find a init script.
>>     I tried init=3D/bin/init, init=3D/sbin/init init=3Dlinuxrc everythin=
g with out
>>     success each time the same failure occur. I also tried to execute a =
simple
>>     command like init=3D/bin/ls ...
>>
>>     But I see in sysroot-target a softlink linuxrc -> /bin/busybox and a=
lso
>>     in the root-folder root/sbin/ init-> ../bin/busybox
>>     Waht is the difference of those directories? (I thought the root fol=
der is
>>     the result for the target, so everything in there will be contained =
in the
>>     root.jffs2)
>>
>>     I have also changed in busybox between soft and hard links ...
>>     How can I solve this problem?
>>     Has anyone a hint for me, pls?
> it seems you use the wrong ABI to complie your rootfs

But when I mount the rootfs.jffs2 on my Pc I see all directories (bin/, sbi=
n/, etc/ , ....) and all the commands are build in and linked to busybox.

file test/bin/busybox

test/bin/busybox: setuid ELF 32-bit LSB shared object, ARM, version 1 (SYSV=
), dynamically linked (uses shared libs), for GNU/Linux 2.6.23, stripped

>
> Best Regards,
> J.

Unfortunately I have done some bad changes that the rootfs is no longer bee=
n mounted on startup :-(

see ..

> barebox 2012.07.0 #53 Mon Jul 23 11:14:05 CEST 2012 Board: Atmel =

> at91sam9263-ek Just for test 21 Clocks: CPU 199 MHz, master 99 MHz, =

> main 16.367 MHz atmel_nand: Use On Flash BBT NAND device: Manufacturer =

> ID: 0x2c, Chip ID: 0xda (Micron NaND 256MiB 3,3V 8-bit) NAND_ECC_NONE =

> selected by board driver. This is not recommended !! =

I now I try to fix this later ...
> Bad block table found at page 131008, version 0x01 Bad block table =

> found at page 130944, version 0x01 cfi_flash@cfi_flash0: found cfi =

> flash at 10000000, size 4194304 Malloc space: 0x23b00000 -> 0x23efffff =

> (size 4 MB) Stack space : 0x23af8000 -> 0x23b00000 (size 32 kB) Hit =

> any key to stop autoboot: 0 booting kernel from /dev/nand0.kernel.bb =

> Image Name: Linux-3.4.0 Created: 2012-07-25 15:30:15 UTC OS: Linux =

> Architecture: ARM Type: Kernel Image Compression: uncompressed Data =

> Size: 1683440 Bytes =3D 1.6 MB Load Address: 20008000 Entry Point: =

> 20008000 ***************************************** *** LOADING IMAGE =

> TO SDRAM! *** ***************************************** commandline: =

> console=3DttyS0,115200n8 mem=3D64M earlyprintk=3Dserial,ttyS0,115200n8, =

> init=3D/bin/ls root=3D/dev/mtdblock4 rootfstype=3Djffs2 noinitrd =

> mtdparts=3Datmel_nand:128k(at91bootstrap),256k(barebox),128k(bareboxenv),=
4M(kernel)ro,20M(root)ro,-(data) =

> arch_number: 1202 Uncompressing Linux... done, booting the kernel. [ =

> 0.000000] Booting Linux on physical CPU 0 [ 0.000000] Linux version =

> 3.4.0 (user@ubuntu) (gcc version 4.6.2 (OSELAS.Toolchain-2011.11.1) ) =

> #14 Wed Jul 25 17:29:36 CEST 2012 [ 0.000000] bootconsole [earlycon0] =

> enabled [ 0.000000] AT91: Detected soc type: at91sam9263 [ 0.000000] =

> AT91: Detected soc subtype: Unknown [ 0.000000] AT91: sram at 0x300000 =

> of 0x14000 mapped at 0xfef64000 [ 0.000000] AT91: sram at 0x500000 of =

> 0x4000 mapped at 0xfef60000 [ 0.000000] gpiochip_add: registered GPIOs =

> 0 to 31 on device: pioA [ 0.000000] gpiochip_add: registered GPIOs 32 =

> to 63 on device: pioB [ 0.000000] gpiochip_add: registered GPIOs 64 to =

> 95 on device: pioC [ 0.000000] gpiochip_add: registered GPIOs 96 to =

> 127 on device: pioD [ 0.000000] gpiochip_add: registered GPIOs 128 to =

> 159 on device: pioE [ 0.000000] Kernel command line: =

> console=3DttyS0,115200n8 mem=3D64M earlyprintk=3Dserial,ttyS0,115200n8, =

> init=3D/bin/ls root=3D/dev/mtdblock4 rootfstype=3Djffs2 noinitrd =

> mtdparts=3Datmel_nand:128k(at91bootstrap),256k(barebox),128k(bareboxenv),=
4M(kernel)ro,20M(root)ro,-(data) =

> [ 0.000000] PID hash table entries: 256 (order: -2, 1024 bytes) [ =

> 0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 =

> bytes) [ 0.000000] Inode-cache hash table entries: 4096 (order: 2, =

> 16384 bytes) [ 0.000000] Memory: 64MB =3D 64MB total [ 0.000000] Memory: =

> 60964k/60964k available, 4572k reserved, 0K highmem [ 0.000000] =

> Virtual kernel memory layout: [ 0.000000] vector : 0xffff0000 - =

> 0xffff1000 ( 4 kB) [ 0.000000] fixmap : 0xfff00000 - 0xfffe0000 ( 896 =

> kB) [ 0.000000] vmalloc : 0xc4800000 - 0xff000000 ( 936 MB) [ =

> 0.000000] lowmem : 0xc0000000 - 0xc4000000 ( 64 MB) [ 0.000000] =

> modules : 0xbf000000 - 0xc0000000 ( 16 MB) [ 0.000000] .text : =

> 0xc0008000 - 0xc032da1c (3223 kB) [ 0.000000] .init : 0xc032e000 - =

> 0xc0354000 ( 152 kB) [ 0.000000] .data : 0xc0354000 - 0xc0381b40 ( 183 =

> kB) [ 0.000000] .bss : 0xc0381b64 - 0xc03ceafc ( 308 kB) [ 0.000000] =

> NR_IRQS:192 [ 0.000000] AT91: 160 gpio irqs in 5 banks [ 0.000000] =

> sched_clock: 32 bits at 100 Hz, resolution 10000000ns, wraps every =

> 4294967286ms [ 0.010000] Calibrating delay loop... 99.22 BogoMIPS =

> (lpj=3D496128) [ 0.100000] pid_max: default: 32768 minimum: 301 [ =

> 0.110000] Mount-cache hash table entries: 512 [ 0.130000] CPU: Testing =

> write buffer coherency: ok [ 0.140000] ftrace: allocating 9496 entries =

> in 28 pages [ 0.250000] Setting up static identity map for 0x20231900 =

> - 0x2023193c [ 0.270000] devtmpfs: initialized [ 0.410000] NET: =

> Registered protocol family 16 [ 0.420000] AT91: Power Management [ =

> 0.430000] AT91: Starting after software reset [ 0.960000] DMA-API: =

> preallocated 4096 debug entries [ 0.970000] DMA-API: debugging enabled =

> by kernel config [ 0.980000] Switching to clocksource tcb_clksrc [ =

> 1.250000] NET: Registered protocol family 2 [ 1.250000] IP route cache =

> hash table entries: 1024 (order: 0, 4096 bytes) [ 1.270000] TCP =

> established hash table entries: 2048 (order: 2, 16384 bytes) [ =

> 1.280000] TCP bind hash table entries: 2048 (order: 1, 8192 bytes) [ =

> 1.290000] TCP: Hash tables configured (established 2048 bind 2048) [ =

> 1.290000] TCP: reno registered [ 1.300000] UDP hash table entries: 256 =

> (order: 0, 4096 bytes) [ 1.310000] UDP-Lite hash table entries: 256 =

> (order: 0, 4096 bytes) [ 1.320000] NET: Registered protocol family 1 [ =

> 1.350000] VFS: Disk quotas dquot_6.5.2 [ 1.360000] jffs2: version 2.2. =

> (NAND) =A9 2001-2006 Red Hat, Inc. [ 1.380000] fuse init (API version =

> 7.18) [ 1.390000] msgmni has been set to 119 [ 1.420000] crc32: =

> CRC_LE_BITS =3D 64, CRC_BE BITS =3D 64 [ 1.430000] crc32: self tests =

> passed, processed 225944 bytes in 10137617 nsec [ 1.450000] crc32c: =

> CRC_LE_BITS =3D 64 [ 1.450000] crc32c: self tests passed, processed =

> 225944 bytes in 4237472 nsec [ 1.480000] atmel_usart.0: ttyS0 at MMIO =

> 0xffffee00 (irq =3D 1) is a ATMEL_SERIAL [ 1.490000] console [ttyS0] =

> enabled, bootconsole disabled [ 1.490000] console [ttyS0] enabled, =

> bootconsole disabled [ 1.500000] atmel_usart.1: ttyS1 at MMIO =

> 0xfff8c000 (irq =3D 7) is a ATMEL_SERIAL [ 1.540000] atmel_nand: Use On =

> Flash BBT [ 1.550000] atmel_nand atmel_nand: No DMA support for NAND =

> access. =

Is this a problem that I have no DMA support?
> [ 1.550000] NAND device: Manufacturer ID: 0x2c, Chip ID: 0xda (Micron =

> NAND 256MiB 3,3V 8-bit) [ 1.560000] Bad block table found at page =

> 131008, version 0x01 [ 1.570000] Bad block table found at page 130944, =

> version 0x01 [ 1.580000] 6 cmdlinepart partitions found on MTD device =

> atmel_nand [ 1.580000] Creating 6 MTD partitions on "atmel_nand": [ =

> 1.590000] 0x000000000000-0x000000020000 : "at91bootstrap" [ 1.600000] =

> 0x000000020000-0x000000060000 : "barebox" [ 1.610000] =

> 0x000000060000-0x000000080000 : "bareboxenv" [ 1.620000] =

> 0x000000080000-0x000000480000 : "kernel" [ 1.630000] =

> 0x000000480000-0x000001880000 : "root" [ 1.630000] =

> 0x000001880000-0x000010000000 : "data" [ 1.650000] GPIO NAND driver, =A9 =

> 2004 Simtec Electronics [ 1.650000] atmel_spi atmel_spi.0: Atmel SPI =

> Controller at 0xfffa4000 (irq 14) [ 1.660000] atmel_spi atmel_spi.0: =

> master is unqueued, this is deprecated [ 1.680000] TCP: cubic registered =

here I miss mount rootfs
> [ 1.680000] NET: Registered protocol family 17 [ 1.700000] devtmpfs: =

> mounted [ 1.700000] Freeing init memory: 152K [ 1.710000] Failed to =

> execute /bin/ls. Attempting defaults... [ 1.720000] Kernel panic - not =

> syncing: No init found. Try passing init=3D option to kernel. See Linux =

> Documentation/init.txt for guidance. [ 1.730000] [<c000e254>] =

> (unwind_backtrace+0x0/0x128) from [<c02292e0>] (dump_stack+0x20/0x24) =

> [ 1.740000] [<c02292e0>] (dump_stack+0x20/0x24) from [<c02293e8>] =

> (panic+0x80/0x1c8) [ 1.750000] [<c02293e8>] (panic+0x80/0x1c8) from =

> [<c02290a8>] (init_post+0xb0/0xd4) [ 1.750000] [<c02290a8>] =

> (init_post+0xb0/0xd4) from [<c032e998>] (kernel_init+0xcc/0xf0) =




I will report my results ....


best regards
Sven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
