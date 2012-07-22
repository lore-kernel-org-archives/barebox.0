Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.web.de ([212.227.15.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1St3Qg-0001zW-U5
 for barebox@lists.infradead.org; Sun, 22 Jul 2012 21:11:10 +0000
Received: from [127.0.0.1] ([77.3.115.173]) by smtp.web.de (mrweb103) with
 ESMTPSA (Nemesis) id 0MWB4X-1TLpkd35EP-00Y33V for
 <barebox@lists.infradead.org>; Sun, 22 Jul 2012 23:11:03 +0200
Message-ID: <500C6C5E.2020604@web.de>
Date: Sun, 22 Jul 2012 23:10:54 +0200
From: Stutz Sven <stutzsven@web.de>
MIME-Version: 1.0
References: <500C4933.8050202@web.de>
In-Reply-To: <500C4933.8050202@web.de>
Reply-To: stutzsven@web.de
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4023077655690140655=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AT91SAM9263-ek - Kernel panic
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--===============4023077655690140655==
Content-Type: multipart/alternative;
 boundary="------------040101070808070903000308"

This is a multi-part message in MIME format.
--------------040101070808070903000308
Content-Type: text/plain; charset="iso-8859-15"; format="flowed"
Content-Transfer-Encoding: quoted-printable

Hello to everybody,

previously I have had some doubts to run a Linux kernel on this evalboard.
Especially to find a BSP for my board ....

In the meantime I have had some problems which I was able to solve by=20
myself or reading through different forums.

I still have some problems with Barebox and it's ECC for the NAND-Flash=20
and also the asterix * in this nand -a /dev/nand0.* is not working. (It=20
is working when I am doing it manually).

But in total I am able to load and start Barebox and then again loading=20
and starting the kernel.

First I have seen nothing until I switch on the special function=20
earlyprintk=3Dserial,ttyS0,115200n8
After that I saw that I have mounting/partitioning problem, so I changed=20
the board specific init.c
in that way that the first three partitions match exactly to the=20
definition in the configuration file for the init script of Barebox.

     init.c > devfs_add_partition("nand0", 0x00000, SZ_128K,=20
DEVFS_PARTITION_FIXED,"at91bootstrap_raw");
                 dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
                 devfs_add_partition("nand0", SZ_128K, SZ_256K,=20
DEVFS_PARTITION_FIXED, "self_raw");
                 dev_add_bb_dev("self_raw", "self0");
                 devfs_add_partition("nand0", SZ_256K + SZ_128K,=20
SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
                 dev_add_bb_dev("env_raw", "env0");

     env/config >=20
nand_parts=3D"128k(at91bootstrap),256k(barebox),128k(bareboxenv),4M(kernel)=
,80M(rootfs),-(data)"
                 rootfs_mtdblock_nand=3D4
                 rootfs_mtdblock_type=3Djffs2

After that I was really happy that the kernel is prompting "VFS: Mounted=20
root (jffs2 filesystem)"
But the next kernel panic is near
It cannot find a init script.
I tried init=3D/bin/init, init=3D/sbin/init init=3Dlinuxrc everything with =
out=20
success each time the same failure occur. I also tried to execute a=20
simple command like init=3D/bin/ls ...

But I see in sysroot-target a softlink linuxrc -> /bin/busybox and also
in the root-folder root/sbin/ init-> ../bin/busybox
Waht is the difference of those directories? (I thought the root folder=20
is the result for the target, so everything in there will be contained=20
in the root.jffs2)

I have also changed in busybox between soft and hard links ...
How can I solve this problem?
Has anyone a hint for me, pls?

If it  is helpfull here the last kernel outputs >

>    Image Name:   Linux-3.4.0
>    Created:      2012-07-20  11:10:09 UTC
>    OS:           Linux
>    Architecture: ARM
>    Type:         Kernel Image
>    Compression:  uncompressed
>    Data Size:    1720712 Bytes =3D  1.6 MB
>    Load Address: 20008000
>    Entry Point:  20008000
>
> commandline: console=3DttyS0,115200n8 mem=3D64M=20
> earlyprintk=3Dserial,ttyS0,115200n8 init=3D/sbin/init root=3D/dev/mtdbloc=
k4=20
> rw rootfstype=3Djffs2 noinitrd=20
> mtdparts=3Datmel_nand:128k(at91bootstrap),256k(barebox),128k(bareboxenv),=
4M(kernel),80M(rootfs),-(data)
> arch_number: 1202
> Uncompressing Linux... done, booting the kernel.
> [    0.000000] Booting Linux on physical CPU 0
> [    0.000000] Linux version 3.4.0 (user@ubuntu) (gcc version 4.5.2=20
> (OSELAS.Toolchain-2011.03.1) ) #30 Fri Jul 20 13:09:33 CEST 2012
> [    0.000000] bootconsole [earlycon0] enabled
> [    0.000000] AT91: Detected soc type: at91sam9263
> [    0.000000] AT91: Detected soc subtype: Unknown
> [    0.000000] AT91: sram at 0x300000 of 0x14000 mapped at 0xfef64000
> [    0.000000] AT91: sram at 0x500000 of 0x4000 mapped at 0xfef60000
> [    0.000000] gpiochip_add: registered GPIOs 0 to 31 on device: pioA
> [    0.000000] gpiochip_add: registered GPIOs 32 to 63 on device: pioB
> [    0.000000] gpiochip_add: registered GPIOs 64 to 95 on device: pioC
> [    0.000000] gpiochip_add: registered GPIOs 96 to 127 on device: pioD
> [    0.000000] gpiochip_add: registered GPIOs 128 to 159 on device: pioE
> [    0.000000] Kernel command line: console=3DttyS0,115200n8 mem=3D64M=20
> earlyprintk=3Dserial,ttyS0,115200n8 init=3D/sbin/init root=3D/dev/mtdbloc=
k4=20
> rw rootfstype=3Djffs2 noinitrd=20
> mtdparts=3Datmel_nand:128k(at91bootstrap),256k(barebox),128k(bareboxenv),=
4M(kernel),80M(rootfs),-(data)
> [    0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)
> [    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768=20
> bytes)
> [    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384=20
> bytes)
> [    0.000000] Memory: 64MB =3D 64MB total
> [    0.000000] Memory: 61072k/61072k available, 4464k reserved, 0K highmem
> [    0.000000] Virtual kernel memory layout:
> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> [    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
> [    0.000000]     vmalloc : 0xc4800000 - 0xff000000   ( 936 MB)
> [    0.000000]     lowmem  : 0xc0000000 - 0xc4000000   (  64 MB)
> [    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
> [    0.000000]       .text : 0xc0008000 - 0xc0324000   (3184 kB)
> [    0.000000]       .init : 0xc0324000 - 0xc0349000   ( 148 kB)
> [    0.000000]       .data : 0xc034a000 - 0xc03767a8   ( 178 kB)
> [    0.000000]        .bss : 0xc03767cc - 0xc03c313c   ( 307 kB)
> [    0.000000] SLUB: Genslabs=3D13, HWalign=3D32, Order=3D0-3, MinObjects=
=3D0,=20
> CPUs=3D1, Nodes=3D1
> [    0.000000] NR_IRQS:192
> [    0.000000] AT91: 160 gpio irqs in 5 banks
> [    0.000000] sched_clock: 32 bits at 100 Hz, resolution 10000000ns,=20
> wraps every 4294967286ms
> [    0.000000] Calibrating delay loop... 99.22 BogoMIPS (lpj=3D496128)
> [    0.100000] pid_max: default: 32768 minimum: 301
> [    0.100000] Mount-cache hash table entries: 512
> [    0.110000] CPU: Testing write buffer coherency: ok
> [    0.120000] ftrace: allocating 10076 entries in 30 pages
> [    0.230000] Setting up static identity map for 0x2025add0 - 0x2025ae0c
> [    0.240000] devtmpfs: initialized
> [    0.260000] NET: Registered protocol family 16
> [    0.270000] AT91: Power Management
> [    0.270000] AT91: Starting after user reset
> [    0.290000] bio: create slab <bio-0> at 0
> [    0.290000] Switching to clocksource pit
> [    0.330000] NET: Registered protocol family 2
> [    0.340000] IP route cache hash table entries: 1024 (order: 0, 4096=20
> bytes)
> [    0.350000] TCP established hash table entries: 2048 (order: 2,=20
> 16384 bytes)
> [    0.350000] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)
> [    0.360000] TCP: Hash tables configured (established 2048 bind 2048)
> [    0.370000] TCP: reno registered
> [    0.370000] UDP hash table entries: 256 (order: 0, 4096 bytes)
> [    0.380000] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
> [    0.390000] NET: Registered protocol family 1
> [    0.390000] NetWinder Floating Point Emulator V0.97 (double precision)
> [    0.440000] VFS: Disk quotas dquot_6.5.2
> [    0.440000] jffs2: version 2.2. (NAND) =A9 2001-2006 Red Hat, Inc.
> [    0.450000] msgmni has been set to 119
> [    0.460000] Block layer SCSI generic (bsg) driver version 0.4=20
> loaded (major 254)
> [    0.470000] io scheduler noop registered
> [    0.470000] io scheduler deadline registered
> [    0.480000] io scheduler cfq registered (default)
> [    0.490000] atmel_usart.0: ttyS0 at MMIO 0xffffee00 (irq =3D 1) is a=20
> ATMEL_SERIAL
> [    0.500000] console [ttyS0] enabled, bootconsole disabled
> [    0.500000] console [ttyS0] enabled, bootconsole disabled
> [    0.510000] atmel_usart.1: ttyS1 at MMIO 0xfff8c000 (irq =3D 7) is a=20
> ATMEL_SERIAL
> [    0.540000] atmel_nand: Use On Flash BBT
> [    0.550000] atmel_nand atmel_nand: No DMA support for NAND access.
> [    0.550000] NAND device: Manufacturer ID: 0x2c, Chip ID: 0xda=20
> (Micron NAND 256MiB 3,3V 8-bit)
> [    0.560000] Bad block table found at page 131008, version 0x01
> [    0.570000] Bad block table found at page 130944, version 0x01
> [    0.580000] 6 cmdlinepart partitions found on MTD device atmel_nand
> [    0.580000] Creating 6 MTD partitions on "atmel_nand":
> [    0.590000] 0x000000000000-0x000000020000 : "at91bootstrap"
> [    0.600000] 0x000000020000-0x000000060000 : "barebox"
> [    0.610000] 0x000000060000-0x000000080000 : "bareboxenv"
> [    0.620000] 0x000000080000-0x000000480000 : "kernel"
> [    0.630000] 0x000000480000-0x000005480000 : "rootfs"
> [    0.640000] 0x000005480000-0x000010000000 : "data"
> [    0.650000] GPIO NAND driver, =A9 2004 Simtec Electronics
> [    0.660000] TCP: cubic registered
> [    0.660000] NET: Registered protocol family 17
> [    0.670000] Registering the dns_resolver key type
> [    9.860000] VFS: Mounted root (jffs2 filesystem) on device 31:4.
> [    9.870000] devtmpfs: mounted
> [    9.870000] Freeing init memory: 148K
> [   11.830000] Failed to execute /sbin/init.  Attempting defaults...
> [   11.860000] Kernel panic - not syncing: No init found.  Try passing=20
> init=3D option to kernel. See Linux Documentation/init.txt for guidance.
> [   11.870000] Backtrace:
> [   11.870000] [<c00120f4>] (dump_backtrace+0x0/0x118) from=20
> [<c02587e0>] (dump_stack+0x20/0x24)
> [   11.880000]  r6:c033a44c r5:c033a46c r4:c03767e0
> [   11.890000] [<c02587c0>] (dump_stack+0x0/0x24) from [<c0258864>]=20
> (panic+0x80/0x1c8)
> [   11.890000] [<c02587e4>] (panic+0x0/0x1c8) from [<c0008850>]=20
> (init_post+0xb0/0xd4)
> [   11.900000]  r3:00000001 r2:c04460a8 r1:c04342e0 r0:c02dad7e
> [   11.910000]  r7:c03767e0
> [   11.910000] [<c00087a0>] (init_post+0x0/0xd4) from [<c0324924>]=20
> (kernel_init+0x164/0x1a4)
> [   11.920000]  r4:c03767e0
> [   11.920000] [<c03247c0>] (kernel_init+0x0/0x1a4) from [<c00209f8>]=20
> (do_exit+0x0/0x334)


best regards
Sven



--------------040101070808070903000308
Content-Type: text/html; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DISO-8=
859-15">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-text-flowed" style=3D"font-family: -moz-fixed;
      font-size: 14px;" lang=3D"x-western">Hello to everybody,
      <br>
      <br>
      previously I have had some doubts to run a Linux kernel on this
      evalboard.
      <br>
      Especially to find a BSP for my board ....
      <br>
      <br>
      In the meantime I have had some problems which I was able to solve
      by myself or reading through different forums.
      <br>
      <br>
      I still have some problems with Barebox and it's ECC for the
      NAND-Flash and also the asterix * in this nand -a /dev/nand0.* is
      not working. (It is working when I am doing it manually).
      <br>
      <br>
      But in total I am able to load and start Barebox and then again
      loading and starting the kernel.
      <br>
      <br>
      First I have seen nothing until I switch on the special function
      earlyprintk=3Dserial,ttyS0,115200n8
      <br>
      After that I saw that I have mounting/partitioning problem, so I
      changed the board specific init.c
      <br>
      in that way that the first three partitions match exactly to the
      definition in the configuration file for the init script of
      Barebox.
      <br>
      <br>
      =A0=A0=A0 init.c &gt; devfs_add_partition("nand0", 0x00000, SZ_128K,
      DEVFS_PARTITION_FIXED,"at91bootstrap_raw");
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_add_bb_dev("at91boo=
tstrap_raw",
      "at91bootstrap");
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 devfs_add_partition("na=
nd0", SZ_128K, SZ_256K,
      DEVFS_PARTITION_FIXED, "self_raw");
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_add_bb_dev("self_ra=
w", "self0");
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 devfs_add_partition("na=
nd0", SZ_256K + SZ_128K,
      SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_add_bb_dev("env_raw=
", "env0");
      <br>
      <br>
      =A0=A0=A0 env/config &gt;
nand_parts=3D"128k(at91bootstrap),256k(barebox),128k(bareboxenv),4M(kernel)=
,80M(rootfs),-(data)"<br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rootfs_mtdblock_nand=3D4
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rootfs_mtdblock_type=3D=
jffs2
      <br>
      <br>
      After that I was really happy that the kernel is prompting "VFS:
      Mounted root (jffs2 filesystem)"
      <br>
      But the next kernel panic is near <span class=3D"moz-smiley-s2"
        title=3D":-("></span>
      <br>
      It cannot find a init script.
      <br>
      I tried init=3D/bin/init, init=3D/sbin/init init=3Dlinuxrc everything
      with out success each time the same failure occur. I also tried to
      execute a simple command like init=3D/bin/ls ...
      <br>
      <br>
      But I see in sysroot-target a softlink linuxrc -&gt; /bin/busybox
      and also
      <br>
      in the root-folder root/sbin/ init-&gt; ../bin/busybox
      <br>
      Waht is the difference of those directories? (I thought the root
      folder is the result for the target, so everything in there will
      be contained in the root.jffs2)
      <br>
      <br>
      I have also changed in busybox between soft and hard links ...
      <br>
      How can I solve this problem?
      <br>
      Has anyone a hint for me, pls?
      <br>
      <br>
      If it=A0 is helpfull here the last kernel outputs &gt;<br>
      <br>
      <blockquote type=3D"cite">=A0=A0 Image Name:=A0=A0 Linux-3.4.0<br>
        =A0=A0 Created:=A0=A0=A0=A0=A0 2012-07-20=A0 11:10:09 UTC<br>
        =A0=A0 OS:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Linux<br>
        =A0=A0 Architecture: ARM<br>
        =A0=A0 Type:=A0=A0=A0=A0=A0=A0=A0=A0 Kernel Image<br>
        =A0=A0 Compression:=A0 uncompressed<br>
        =A0=A0 Data Size:=A0=A0=A0 1720712 Bytes =3D=A0 1.6 MB<br>
        =A0=A0 Load Address: 20008000<br>
        =A0=A0 Entry Point:=A0 20008000<br>
        <br>
        commandline: console=3DttyS0,115200n8 mem=3D64M
        earlyprintk=3Dserial,ttyS0,115200n8 init=3D/sbin/init
        root=3D/dev/mtdblock4 rw rootfstype=3Djffs2 noinitrd
mtdparts=3Datmel_nand:128k(at91bootstrap),256k(barebox),128k(bareboxenv),4M=
(kernel),80M(rootfs),-(data)<br>
        arch_number: 1202<br>
        Uncompressing Linux... done, booting the kernel.<br>
        [=A0=A0=A0 0.000000] Booting Linux on physical CPU 0<br>
        [=A0=A0=A0 0.000000] Linux version 3.4.0 (user@ubuntu) (gcc version
        4.5.2 (OSELAS.Toolchain-2011.03.1) ) #30 Fri Jul 20 13:09:33
        CEST 2012<br>
        [=A0=A0=A0 0.000000] bootconsole [earlycon0] enabled<br>
        [=A0=A0=A0 0.000000] AT91: Detected soc type: at91sam9263<br>
        [=A0=A0=A0 0.000000] AT91: Detected soc subtype: Unknown<br>
        [=A0=A0=A0 0.000000] AT91: sram at 0x300000 of 0x14000 mapped at
        0xfef64000<br>
        [=A0=A0=A0 0.000000] AT91: sram at 0x500000 of 0x4000 mapped at
        0xfef60000<br>
        [=A0=A0=A0 0.000000] gpiochip_add: registered GPIOs 0 to 31 on devi=
ce:
        pioA<br>
        [=A0=A0=A0 0.000000] gpiochip_add: registered GPIOs 32 to 63 on
        device: pioB<br>
        [=A0=A0=A0 0.000000] gpiochip_add: registered GPIOs 64 to 95 on
        device: pioC<br>
        [=A0=A0=A0 0.000000] gpiochip_add: registered GPIOs 96 to 127 on
        device: pioD<br>
        [=A0=A0=A0 0.000000] gpiochip_add: registered GPIOs 128 to 159 on
        device: pioE<br>
        [=A0=A0=A0 0.000000] Kernel command line: console=3DttyS0,115200n8
        mem=3D64M earlyprintk=3Dserial,ttyS0,115200n8 init=3D/sbin/init
        root=3D/dev/mtdblock4 rw rootfstype=3Djffs2 noinitrd
mtdparts=3Datmel_nand:128k(at91bootstrap),256k(barebox),128k(bareboxenv),4M=
(kernel),80M(rootfs),-(data)<br>
        [=A0=A0=A0 0.000000] PID hash table entries: 256 (order: -2, 1024
        bytes)<br>
        [=A0=A0=A0 0.000000] Dentry cache hash table entries: 8192 (order: =
3,
        32768 bytes)<br>
        [=A0=A0=A0 0.000000] Inode-cache hash table entries: 4096 (order: 2,
        16384 bytes)<br>
        [=A0=A0=A0 0.000000] Memory: 64MB =3D 64MB total<br>
        [=A0=A0=A0 0.000000] Memory: 61072k/61072k available, 4464k reserve=
d,
        0K highmem<br>
        [=A0=A0=A0 0.000000] Virtual kernel memory layout:<br>
        [=A0=A0=A0 0.000000]=A0=A0=A0=A0 vector=A0 : 0xffff0000 - 0xffff100=
0=A0=A0 (=A0=A0 4 kB)<br>
        [=A0=A0=A0 0.000000]=A0=A0=A0=A0 fixmap=A0 : 0xfff00000 - 0xfffe000=
0=A0=A0 ( 896 kB)<br>
        [=A0=A0=A0 0.000000]=A0=A0=A0=A0 vmalloc : 0xc4800000 - 0xff000000=
=A0=A0 ( 936 MB)<br>
        [=A0=A0=A0 0.000000]=A0=A0=A0=A0 lowmem=A0 : 0xc0000000 - 0xc400000=
0=A0=A0 (=A0 64 MB)<br>
        [=A0=A0=A0 0.000000]=A0=A0=A0=A0 modules : 0xbf000000 - 0xc0000000=
=A0=A0 (=A0 16 MB)<br>
        [=A0=A0=A0 0.000000]=A0=A0=A0=A0=A0=A0 .text : 0xc0008000 - 0xc0324=
000=A0=A0 (3184 kB)<br>
        [=A0=A0=A0 0.000000]=A0=A0=A0=A0=A0=A0 .init : 0xc0324000 - 0xc0349=
000=A0=A0 ( 148 kB)<br>
        [=A0=A0=A0 0.000000]=A0=A0=A0=A0=A0=A0 .data : 0xc034a000 - 0xc0376=
7a8=A0=A0 ( 178 kB)<br>
        [=A0=A0=A0 0.000000]=A0=A0=A0=A0=A0=A0=A0 .bss : 0xc03767cc - 0xc03=
c313c=A0=A0 ( 307 kB)<br>
        [=A0=A0=A0 0.000000] SLUB: Genslabs=3D13, HWalign=3D32, Order=3D0-3,
        MinObjects=3D0, CPUs=3D1, Nodes=3D1<br>
        [=A0=A0=A0 0.000000] NR_IRQS:192<br>
        [=A0=A0=A0 0.000000] AT91: 160 gpio irqs in 5 banks<br>
        [=A0=A0=A0 0.000000] sched_clock: 32 bits at 100 Hz, resolution
        10000000ns, wraps every 4294967286ms<br>
        [=A0=A0=A0 0.000000] Calibrating delay loop... 99.22 BogoMIPS
        (lpj=3D496128)<br>
        [=A0=A0=A0 0.100000] pid_max: default: 32768 minimum: 301<br>
        [=A0=A0=A0 0.100000] Mount-cache hash table entries: 512<br>
        [=A0=A0=A0 0.110000] CPU: Testing write buffer coherency: ok<br>
        [=A0=A0=A0 0.120000] ftrace: allocating 10076 entries in 30 pages<b=
r>
        [=A0=A0=A0 0.230000] Setting up static identity map for 0x2025add0 -
        0x2025ae0c<br>
        [=A0=A0=A0 0.240000] devtmpfs: initialized<br>
        [=A0=A0=A0 0.260000] NET: Registered protocol family 16<br>
        [=A0=A0=A0 0.270000] AT91: Power Management<br>
        [=A0=A0=A0 0.270000] AT91: Starting after user reset<br>
        [=A0=A0=A0 0.290000] bio: create slab &lt;bio-0&gt; at 0<br>
        [=A0=A0=A0 0.290000] Switching to clocksource pit<br>
        [=A0=A0=A0 0.330000] NET: Registered protocol family 2<br>
        [=A0=A0=A0 0.340000] IP route cache hash table entries: 1024 (order:
        0, 4096 bytes)<br>
        [=A0=A0=A0 0.350000] TCP established hash table entries: 2048 (orde=
r:
        2, 16384 bytes)<br>
        [=A0=A0=A0 0.350000] TCP bind hash table entries: 2048 (order: 1, 8=
192
        bytes)<br>
        [=A0=A0=A0 0.360000] TCP: Hash tables configured (established 2048
        bind 2048)<br>
        [=A0=A0=A0 0.370000] TCP: reno registered<br>
        [=A0=A0=A0 0.370000] UDP hash table entries: 256 (order: 0, 4096
        bytes)<br>
        [=A0=A0=A0 0.380000] UDP-Lite hash table entries: 256 (order: 0, 40=
96
        bytes)<br>
        [=A0=A0=A0 0.390000] NET: Registered protocol family 1<br>
        [=A0=A0=A0 0.390000] NetWinder Floating Point Emulator V0.97 (double
        precision)<br>
        [=A0=A0=A0 0.440000] VFS: Disk quotas dquot_6.5.2<br>
        [=A0=A0=A0 0.440000] jffs2: version 2.2. (NAND) =A9 2001-2006 Red H=
at,
        Inc.<br>
        [=A0=A0=A0 0.450000] msgmni has been set to 119<br>
        [=A0=A0=A0 0.460000] Block layer SCSI generic (bsg) driver version =
0.4
        loaded (major 254)<br>
        [=A0=A0=A0 0.470000] io scheduler noop registered<br>
        [=A0=A0=A0 0.470000] io scheduler deadline registered<br>
        [=A0=A0=A0 0.480000] io scheduler cfq registered (default)<br>
        [=A0=A0=A0 0.490000] atmel_usart.0: ttyS0 at MMIO 0xffffee00 (irq =
=3D 1)
        is a ATMEL_SERIAL<br>
        [=A0=A0=A0 0.500000] console [ttyS0] enabled, bootconsole disabled<=
br>
        [=A0=A0=A0 0.500000] console [ttyS0] enabled, bootconsole disabled<=
br>
        [=A0=A0=A0 0.510000] atmel_usart.1: ttyS1 at MMIO 0xfff8c000 (irq =
=3D 7)
        is a ATMEL_SERIAL<br>
        [=A0=A0=A0 0.540000] atmel_nand: Use On Flash BBT<br>
        [=A0=A0=A0 0.550000] atmel_nand atmel_nand: No DMA support for NAND
        access.<br>
        [=A0=A0=A0 0.550000] NAND device: Manufacturer ID: 0x2c, Chip ID: 0=
xda
        (Micron NAND 256MiB 3,3V 8-bit)<br>
        [=A0=A0=A0 0.560000] Bad block table found at page 131008, version
        0x01<br>
        [=A0=A0=A0 0.570000] Bad block table found at page 130944, version
        0x01<br>
        [=A0=A0=A0 0.580000] 6 cmdlinepart partitions found on MTD device
        atmel_nand<br>
        [=A0=A0=A0 0.580000] Creating 6 MTD partitions on "atmel_nand":<br>
        [=A0=A0=A0 0.590000] 0x000000000000-0x000000020000 : "at91bootstrap=
"<br>
        [=A0=A0=A0 0.600000] 0x000000020000-0x000000060000 : "barebox"<br>
        [=A0=A0=A0 0.610000] 0x000000060000-0x000000080000 : "bareboxenv"<b=
r>
        [=A0=A0=A0 0.620000] 0x000000080000-0x000000480000 : "kernel"<br>
        [=A0=A0=A0 0.630000] 0x000000480000-0x000005480000 : "rootfs"<br>
        [=A0=A0=A0 0.640000] 0x000005480000-0x000010000000 : "data"<br>
        [=A0=A0=A0 0.650000] GPIO NAND driver, =A9 2004 Simtec Electronics<=
br>
        [=A0=A0=A0 0.660000] TCP: cubic registered<br>
        [=A0=A0=A0 0.660000] NET: Registered protocol family 17<br>
        [=A0=A0=A0 0.670000] Registering the dns_resolver key type<br>
        [=A0=A0=A0 9.860000] VFS: Mounted root (jffs2 filesystem) on device
        31:4.<br>
        [=A0=A0=A0 9.870000] devtmpfs: mounted<br>
        [=A0=A0=A0 9.870000] Freeing init memory: 148K<br>
        [=A0=A0 11.830000] Failed to execute /sbin/init.=A0 Attempting
        defaults...<br>
        [=A0=A0 11.860000] Kernel panic - not syncing: No init found.=A0 Try
        passing init=3D option to kernel. See Linux Documentation/init.txt
        for guidance.<br>
        [=A0=A0 11.870000] Backtrace:<br>
        [=A0=A0 11.870000] [&lt;c00120f4&gt;] (dump_backtrace+0x0/0x118)
        from [&lt;c02587e0&gt;] (dump_stack+0x20/0x24)<br>
        [=A0=A0 11.880000]=A0 r6:c033a44c r5:c033a46c r4:c03767e0<br>
        [=A0=A0 11.890000] [&lt;c02587c0&gt;] (dump_stack+0x0/0x24) from
        [&lt;c0258864&gt;] (panic+0x80/0x1c8)<br>
        [=A0=A0 11.890000] [&lt;c02587e4&gt;] (panic+0x0/0x1c8) from
        [&lt;c0008850&gt;] (init_post+0xb0/0xd4)<br>
        [=A0=A0 11.900000]=A0 r3:00000001 r2:c04460a8 r1:c04342e0 r0:c02dad=
7e<br>
        [=A0=A0 11.910000]=A0 r7:c03767e0<br>
        [=A0=A0 11.910000] [&lt;c00087a0&gt;] (init_post+0x0/0xd4) from
        [&lt;c0324924&gt;] (kernel_init+0x164/0x1a4)<br>
        [=A0=A0 11.920000]=A0 r4:c03767e0<br>
        [=A0=A0 11.920000] [&lt;c03247c0&gt;] (kernel_init+0x0/0x1a4) from
        [&lt;c00209f8&gt;] (do_exit+0x0/0x334)<br>
      </blockquote>
      <br>
      <br>
      best regards<br>
      Sven<br>
      <br>
      <br>
    </div>
  </body>
</html>

--------------040101070808070903000308--


--===============4023077655690140655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4023077655690140655==--
