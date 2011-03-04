Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvUWn-0000iY-N1
	for barebox@lists.infradead.org; Fri, 04 Mar 2011 12:54:43 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Fri, 4 Mar 2011 13:54:38 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0109C@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0104E@SRV-VS06.TELEVIC.COM>
	<20110304083028.GC29521@pengutronix.de>
In-Reply-To: <20110304083028.GC29521@pengutronix.de>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: bootargs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> Sent: vrijdag 4 maart 2011 9:30
> To: Vanalme Filip
> Cc: barebox@lists.infradead.org
> Subject: Re: bootargs
> 
> On Fri, Mar 04, 2011 at 09:18:26AM +0100, Vanalme Filip wrote:
> >
> > I think it might have something to do with the BI-swapping issue. The
> > BI-swapping is, as far as I know, not yet implemented in the kernel's
> > NAND driver. So, if I flash the rootfs with Barebox (doing the
> > BI-swap) and then read the rootfs from within the kernel (not doing
> > the BI-swap), I will for sure have problem...
> 
> Using 2k NAND flash on the i.MX27 will most likely lead to problems...
> 
> >
> > Remarkable : the Linux version I use is a version we downloaded from
> > Freescale's git repositry. In this version, we could select the
> > i.MX27PDK board. However, that board's code is obviously not
> > registering the NAND flash driver... knowing that the i.MX27PDK only
> > contains NAND-flash, this is very weird...
> 
> Normally we do root over nfs during development, so this is not very
> surprising. As Freescale does not support the i.MX27 anymore the
> i.MX27PDK support in FSLs git kernel is probably identical to mainline.
> 
> Sascha

[Filip] 
Because, as you indicate, it's better to have root over nfs during development, I also tried using NFS to mount the root filesystem.
This is the boot sequence when using NFS :


barebox 2010.12.0-00073-gfad11e8-dirty (Mar  3 2011 - 09:28:01)

Board: Freescale i.MX27 PDK 3Stack
NAND device: Manufacturer ID: 0xec, Chip ID: 0xaa (Samsung NAND 256MiB 1,8V 8-bit)
Bad block table found at page 131008, version 0x01
Bad block table found at page 130944, version 0x01
PMIC Power
Enable FEC
Reset FEC
Malloc space: 0xa7b00000 -> 0xa7f00000 (size  4 MB)
Stack space : 0xa7af8000 -> 0xa7b00000 (size 32 kB)
running /env/bin/init...

Hit any key to stop autoboot:  3 2 1 0
loaded zImage from /dev/nand0.kernel.bb with size 1996604
commandline: console=ttymxc0,115200 ip=dhcp rootfstype=jffs2 root=/dev/nfs nfsroot=10.0.48.80:/tftpboot/rootfs earlyprintk mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
arch_number: 1430
Uncompressing Linux... done, booting the kernel.
Linux version 2.6.38-rc4-00029-g6148a47-dirty (filip@thc-ubuntu-2) (gcc version 4.1.2) #10 PREEMPT Thu Mar 3 16:55:04 CET 2011
CPU: ARM926EJ-S [41069264] revision 4 (ARMv5TEJ), cr=00053177
CPU: VIVT data cache, VIVT instruction cache
Machine: Freescale MX27PDK
bootconsole [earlycon0] enabled
Memory policy: ECC disabled, Data cache writeback
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 32512
Kernel command line: console=ttymxc0,115200 ip=dhcp rootfstype=jffs2 root=/dev/nfs nfsroot=10.0.48.80:/tftpboot/rootfs earlyprintk mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
PID hash table entries: 512 (order: -1, 2048 bytes)
Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
Memory: 128MB = 128MB total
Memory: 125808k/125808k available, 5264k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    DMA     : 0xffc00000 - 0xffe00000   (   2 MB)
    vmalloc : 0xc8800000 - 0xf4000000   ( 696 MB)
    lowmem  : 0xc0000000 - 0xc8000000   ( 128 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .init : 0xc0008000 - 0xc0028000   ( 128 kB)
      .text : 0xc0028000 - 0xc03bb29c   (3661 kB)
      .data : 0xc03bc000 - 0xc03dff20   ( 144 kB)
Preemptable hierarchical RCU implementation.
NR_IRQS:272
MXC IRQ initialized
MXC GPIO hardware
Console: colour dummy device 80x30
Calibrating delay loop... 199.06 BogoMIPS (lpj=995328)
pid_max: default: 32768 minimum: 301
Mount-cache hash table entries: 512
CPU: Testing write buffer coherency: ok
NET: Registered protocol family 16
3-Stack Debug board detected, rev = 0x0200
bio: create slab <bio-0> at 0
SCSI subsystem initialized
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
Advanced Linux Sound Architecture Driver Version 1.0.23.
Switching to clocksource mxc_timer1
Switched to NOHz mode on CPU #0
NET: Registered protocol family 2
IP route cache hash table entries: 1024 (order: 0, 4096 bytes)
TCP established hash table entries: 4096 (order: 3, 32768 bytes)
TCP bind hash table entries: 4096 (order: 2, 16384 bytes)
TCP: Hash tables configured (established 4096 bind 4096)
TCP reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
JFFS2 version 2.2. (NAND) (c) 2001-2006 Red Hat, Inc.
msgmni has been set to 245
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler cfq registered (default)
i2c-core: driver [adp8860_bl] using legacy suspend method
i2c-core: driver [adp8860_bl] using legacy resume method
Serial: 8250/16550 driver, 2 ports, IRQ sharing disabled
Serial: IMX driver
imx-uart.0: ttymxc0 at MMIO 0x1000a000 (irq = 20) is a IMX
console [ttymxc0] enabled, bootconsole disabled
console [ttymxc0] enabled, bootconsole disabled
brd: module loaded
loop: module loaded
NAND device: Manufacturer ID: 0xec, Chip ID: 0xaa (Samsung NAND 256MiB 1,8V 8-bit)
Scanning device for bad blocks
Bad eraseblock 2046 at 0x00000ffc0000
Bad eraseblock 2047 at 0x00000ffe0000
Searching for RedBoot partition table in mxc_nand at offset 0x80000
No RedBoot partition table detected in mxc_nand
4 cmdlinepart partitions found on MTD device mxc_nand
Creating 4 MTD partitions on "mxc_nand":
0x000000000000-0x000000040000 : "barebox"
0x000000040000-0x000000060000 : "bareboxenv"
0x000000060000-0x000000260000 : "kernel"
0x000000260000-0x000010000000 : "root"
FEC Ethernet Driver
fec_enet_mii_bus: probed
smsc911x: Driver version 2008-10-21.
smsc911x-mdio: probed
eth1: attached PHY driver [Generic PHY] (mii_bus:phy_addr=0:01, irq=-1)
net eth1: MAC Address: 00:11:22:33:44:55
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
input: imx-keypad as /devices/platform/imx-keypad/input/input0
i2c /dev entries driver
i.MX SDHC driver
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
ALSA device list:
  No soundcards found.
TCP cubic registered
NET: Registered protocol family 17
drivers/rtc/hctosys.c: unable to open rtc device (rtc0)
eth0: Freescale FEC PHY driver [Generic PHY] (mii_bus:phy_addr=1:1f, irq=-1)
net eth1: SMSC911x/921x identified at 0xc8898000, IRQ: 256
Sending DHCP requests .
PHY: 1:1f - Link is Up - 100/Full
., OK
IP-Config: Got DHCP answer from 0.0.0.0, my address is 10.0.49.70
IP-Config: Complete:
     device=eth0, addr=10.0.49.70, mask=255.255.0.0, gw=10.0.127.254,
     host=10.0.49.70, domain=televic.com, nis-domain=(none),
     bootserver=0.0.0.0, rootserver=10.0.48.80, rootpath=
VFS: Unable to mount root fs via NFS, trying floppy.   <======== ??
List of all partitions:
1f00             256 mtdblock0  (driver?)
1f01             128 mtdblock1  (driver?)
1f02            2048 mtdblock2  (driver?)
1f03          259712 mtdblock3  (driver?)
No filesystem could mount root, tried:  jffs2
Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(2,0)


I checked the kernel's configuration and I think I have all NFS related items included.
A showmount -e 10.0.48.80 gives me :
/tftpboot/rootfs			10.0.0.0/255.255.0.0
/home/user1/i.MX27/ltib/rootfs	10.0.0.0/255.255.0.0

So, I guess the mounting point is correct. 
The bootargs also look OK to me. However, there's still something I miss here.

Filip
> 
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
