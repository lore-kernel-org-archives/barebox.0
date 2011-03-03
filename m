Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pv9Qs-0007Uv-Dl
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 14:23:12 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Thu, 3 Mar 2011 15:23:07 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FEC@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FC6@SRV-VS06.TELEVIC.COM>
	<20110303123324.GK29521@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FE1@SRV-VS06.TELEVIC.COM>
	<20110303141338.GR29521@pengutronix.de>
In-Reply-To: <20110303141338.GR29521@pengutronix.de>
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
> Sent: donderdag 3 maart 2011 15:14
> To: Vanalme Filip
> Cc: barebox@lists.infradead.org
> Subject: Re: bootargs
> 
> On Thu, Mar 03, 2011 at 03:00:07PM +0100, Vanalme Filip wrote:
> > > -----Original Message-----
> > > From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> > > Sent: donderdag 3 maart 2011 13:33
> > > To: Vanalme Filip
> > > Cc: barebox@lists.infradead.org
> > > Subject: Re: bootargs
> > >
> > > On Thu, Mar 03, 2011 at 01:22:41PM +0100, Vanalme Filip wrote:
> > > > In the current phase, I can boot the kernel, but it panics when trying to mount
> the
> > > root filesystem.
> > > > I downloaded a root filesystem from the server into the dedicated NAND
> partition
> > > : tftp rootfs.jffs2 /dev/nand0.root.bb
> > > > This seems to be OK.
> > > >
> > > > However, I have doubts about the bootargs I'm passing to the kernel :
> > > >
> > > > commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock3
> > > rootfstype=jffs2 earlyprintk
> > > mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
> > > >
> > > > Does this look OK ?
> > >
> > > Yes, looks good.
> > >
> > > >
> > > > These are the last lines of the console output when booting the kernel :
> > > >
> > > > IP-Config: Got DHCP answer from 0.0.0.0, my address is 10.0.49.70
> > > > IP-Config: Complete:
> > > >      device=eth0, addr=10.0.49.70, mask=255.255.0.0, gw=10.0.127.254,
> > > >      host=10.0.49.70, domain=televic.com, nis-domain=(none),
> > > >      bootserver=0.0.0.0, rootserver=0.0.0.0, rootpath=
> > > > VFS: Unable to mount root fs via NFS, trying floppy.
> > > > List of all partitions:
> > > > No filesystem could mount root, tried:  jffs2
> > > > Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-
> block(2,0)
> > >
> > > Do you have enabled the mxc_nand driver in the kernel and also mtd
> > > command line partitioning (CONFIG_MTD_CMDLINE_PARTS)?
> >
> > [Filip]
> > I have CONFIG_MTD_CMDLINE_PARTS=y and CONFIG_MTD_NAND_MXC=y.
> 
> Hm. Can you post the complete boot log?
> 
> Sascha

[Filip] 
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

Hit any key to stop autoboot:  0
loaded zImage from /dev/nand0.kernel.bb with size 1996448
commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock3 rootfstype=jffs2 earlyprintk mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
arch_number: 1430
Uncompressing Linux... done, booting the kernel.
Linux version 2.6.38-rc4-00029-g6148a47 (filip@thc-ubuntu-2) (gcc version 4.1.2) #6 PREEMPT Thu Mar 3 14:45:02 CET 2011
CPU: ARM926EJ-S [41069264] revision 4 (ARMv5TEJ), cr=00053177
CPU: VIVT data cache, VIVT instruction cache
Machine: Freescale MX27PDK
bootconsole [earlycon0] enabled
Memory policy: ECC disabled, Data cache writeback
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 32512
Kernel command line: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock3 rootfstype=jffs2 earlyprintk mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
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
      .text : 0xc0028000 - 0xc03bb294   (3661 kB)
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
net eth1: SMSC911x/921x identified at 0xc886e000, IRQ: 256
Sending DHCP requests .
PHY: 1:1f - Link is Up - 100/Full
., OK
IP-Config: Got DHCP answer from 0.0.0.0, my address is 10.0.49.70
IP-Config: Complete:
     device=eth0, addr=10.0.49.70, mask=255.255.0.0, gw=10.0.127.254,
     host=10.0.49.70, domain=televic.com, nis-domain=(none),
     bootserver=0.0.0.0, rootserver=0.0.0.0, rootpath=
VFS: Unable to mount root fs via NFS, trying floppy.
List of all partitions:
No filesystem could mount root, tried:  jffs2
Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(2,0)
> 
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
