Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvQDV-00070p-86
	for barebox@lists.infradead.org; Fri, 04 Mar 2011 08:18:31 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Fri, 4 Mar 2011 09:18:26 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0104E@SRV-VS06.TELEVIC.COM>
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
Subject: bootargs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>On Thu, Mar 03, 2011 at 03:23:07PM +0100, Vanalme Filip wrote:
>> List of all partitions:
>> No filesystem could mount root, tried:  jffs2 Kernel panic - not 
>> syncing: VFS: Unable to mount root fs on unknown-block(2,0)
>
>You'll need to register the nand device in your board, i.e. something 
>like this:
>
>static const struct mxc_nand_platform_data pca100_nand_board_info 
>__initconst = {
>        .width = 1,
>        .hw_ecc = 1,
>};
>
>	imx27_add_mxc_nand(&pca100_nand_board_info);
>
>The vanilla kernel does not (yet) support nand on the i.MX27 pdk.
>
>Sascha

[Filip]
Hi Sascha
I accidently removed my yesterday's e-mails. Tried to reconstruct your latest mail to continue on. I don't know if this mail will be appended correctly to the thread... (sorry, if not...)

That was indeed a missing part. After adding the registering part, it detects the 4 partitions and I guess it's trying to mount the rootfs system. At the end, it's writing lots of messages to the console port finally ending with a kernel panic :

loaded zImage from /dev/nand0.kernel.bb with size 1996604
commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock3 rootfstype=jffs2 earlyprintk mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
arch_number: 1430
Uncompressing Linux... done, booting the kernel.
Linux version 2.6.38-rc4-00029-g6148a47-dirty (filip@thc-ubuntu-2) (gcc version 4.1.2) #10 PREEMPT Thu Mar 3 16:55:04 CET 2011
CPU: ARM926EJ-S [41069264] revision 4 (ARMv5TEJ), cr=00053177
CPU: VIVT data cache, VIVT instruction cache
Machine: Freescale MX27PDK
bootconsole [earlycon0] enabled
Memory policy: ECC disabled, Data cache writeback Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 32512 Kernel command line: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock3 rootfstype=jffs2 earlyprintk mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
PID hash table entries: 512 (order: -1, 2048 bytes) Dentry cache hash table entries: 16384 (order: 4, 65536 bytes) Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
Memory: 128MB = 128MB total
Memory: 125808k/125808k available, 5264k reserved, 0K highmem Virtual kernel memory layout:
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
usbcore: registered new device driver usb Advanced Linux Sound Architecture Driver Version 1.0.23.
Switching to clocksource mxc_timer1
Switched to NOHz mode on CPU #0
NET: Registered protocol family 2
IP route cache hash table entries: 1024 (order: 0, 4096 bytes) TCP established hash table entries: 4096 (order: 3, 32768 bytes) TCP bind hash table entries: 4096 (order: 2, 16384 bytes)
TCP: Hash tables configured (established 4096 bind 4096) TCP reno registered UDP hash table entries: 256 (order: 0, 4096 bytes) UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
JFFS2 version 2.2. (NAND) (c) 2001-2006 Red Hat, Inc.
msgmni has been set to 245
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253) io scheduler noop registered io scheduler cfq registered (default)
i2c-core: driver [adp8860_bl] using legacy suspend method
i2c-core: driver [adp8860_bl] using legacy resume method
Serial: 8250/16550 driver, 2 ports, IRQ sharing disabled
Serial: IMX driver
imx-uart.0: ttymxc0 at MMIO 0x1000a000 (irq = 20) is a IMX console [ttymxc0] enabled, bootconsole disabled console [ttymxc0] enabled, bootconsole disabled
brd: module loaded
loop: module loaded
NAND device: Manufacturer ID: 0xec, Chip ID: 0xaa (Samsung NAND 256MiB 1,8V 8-bit) Scanning device for bad blocks Bad eraseblock 2046 at 0x00000ffc0000 Bad eraseblock 2047 at 0x00000ffe0000 Searching for RedBoot partition table in mxc_nand at offset 0x80000 No RedBoot partition table detected in mxc_nand
4 cmdlinepart partitions found on MTD device mxc_nand	<======
Creating 4 MTD partitions on "mxc_nand":			<======
0x000000000000-0x000000040000 : "barebox"		<======
0x000000040000-0x000000060000 : "bareboxenv"		<======
0x000000060000-0x000000260000 : "kernel"			<======
0x000000260000-0x000010000000 : "root"			<======
FEC Ethernet Driver
fec_enet_mii_bus: probed
smsc911x: Driver version 2008-10-21.
smsc911x-mdio: probed
eth1: attached PHY driver [Generic PHY] (mii_bus:phy_addr=0:01, irq=-1) net eth1: MAC Address: 00:11:22:33:44:55 Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage USB Mass Storage support registered.
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
eth0: Freescale FEC PHY driver [Generic PHY] (mii_bus:phy_addr=1:1f, irq=-1) net eth1: SMSC911x/921x identified at 0xc8898000, IRQ: 256 Sending DHCP requests .
PHY: 1:1f - Link is Up - 100/Full
., OK
IP-Config: Got DHCP answer from 0.0.0.0, my address is 10.0.49.70
IP-Config: Complete:
     device=eth0, addr=10.0.49.70, mask=255.255.0.0, gw=10.0.127.254,
     host=10.0.49.70, domain=televic.com, nis-domain=(none),
     bootserver=0.0.0.0, rootserver=0.0.0.0, rootpath=
jffs2_scan_dirent_node(): Name CRC failed on node at 0x000007ac: Read 0x3bdc40ff, calculated 0x3bdc40ce
jffs2_scan_inode_node(): CRC failed on node at 0x00018fac: Read 0x5fa9a19b, calculated 0xc27ef9cf
jffs2_scan_eraseblock(): Node at 0x0001dfc8 {0x1985, 0xe002, 0x00000abc) has invalid CRC 0xd6b240ff (calculated 0xd6b24083)
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x0001dfcc: 0x0abc instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x0001dfd0: 0x40ff instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x0001dfd4: 0x001a instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x0001dfd8: 0x0033 instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x0001dfdc: 0x81ed instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x0001dfe4: 0x1aaa instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x0001dfe8: 0xeab3 instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x0001dfec: 0xeab3 instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x0001dff0: 0xeab3 instead Further such events for this erase block will not be printed
jffs2_scan_inode_node(): CRC failed on node at 0x0002e790: Read 0x7aa832ff, calculated 0x7aa83210
jffs2_scan_inode_node(): CRC failed on node at 0x0003afac: Read 0x511f8b57, calculated 0xccc8d303
jffs2_scan_inode_node(): CRC failed on node at 0x0004879c: Read 0xa129572f, calculated 0x876251c9
jffs2_scan_inode_node(): CRC failed on node at 0x000567c0: Read 0xf8af75d2, calculated 0xe187fc75
jffs2_scan_inode_node(): CRC failed on node at 0x00085fac: Read 0xc7256eb9, calculated 0xfca285df
jffs2_scan_inode_node(): CRC failed on node at 0x0009afa4: Read 0x30431bea, calculated 0x3d32223d
jffs2_scan_dirent_node(): Node CRC failed on node at 0x000ae7b0: Read 0x46fea2ff, calculated 0x46fea28d
jffs2_scan_inode_node(): CRC failed on node at 0x000af7a4: Read 0x9a7b006d, calculated 0x970a39ba
jffs2_scan_inode_node(): CRC failed on node at 0x000bf7b0: Read 0x8904d246, calculated 0xef03899a
jffs2_scan_inode_node(): CRC failed on node at 0x000c07b4: Read 0x1d876368, calculated 0x46d628eb
jffs2_scan_eraseblock(): Node at 0x000c97c8 {0x1985, 0xe002, 0x0000004b) has invalid CRC 0xc094ebff (calculated 0xc094eb4b)
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x000c97cc: 0x004b instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x000c97d0: 0xebff instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x000c97d4: 0x0042 instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x000c97d8: 0x0001 instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x000c97dc: 0xa1ff instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x000c97e4: 0x0007 instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x000c97e8: 0xea9b instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x000c97ec: 0xea9b instead
jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x000c97f0: 0xea9b instead Further such events for this erase block will not be printed
jffs2_scan_dirent_node(): Name CRC failed on node at 0x000cd7a8: Read 0x92fea9c3, calculated 0x2dd59e7d
jffs2_scan_dirent_node(): Name CRC failed on node at 0x000ce7ac: Read 0xbda4afff, calculated 0xbda4af58
jffs2_scan_inode_node(): CRC failed on node at 0x000cf7ac: Read 0x0b09851e, calculated 0x96dedd4a
jffs2_scan_inode_node(): CRC failed on node at 0x000cffa4: Read 0x4d7dcb56, calculated 0x400cf281
jffs2_scan_dirent_node(): Node CRC failed on node at 0x000d07bc: Read 0xa642bab2, calculated 0x7c16e523
jffs2_scan_inode_node(): CRC failed on node at 0x000d0f9c: Read 0x326a483d, calculated 0x560449a6
jffs2_scan_inode_node(): CRC failed on node at 0x000d17c4: Read 0xe4cc8316, calculated 0x8f208786
jffs2_scan_inode_node(): CRC failed on node at 0x000d27b0: Read 0x6eb359dd, calculated 0x5ad2fd5a
jffs2_scan_inode_node(): CRC failed on node at 0x000d2fac: Read 0x9fc52b57, calculated 0xea31887b
jffs2_scan_inode_node(): CRC failed on node at 0x000d77b0: Read 0xc3d09cc7, calculated 0xd09cabb1
jffs2_scan_inode_node(): CRC failed on node at 0x000e67b0: Read 0xcac7a32a, calculated 0xa60d1977
jffs2_scan_inode_node(): CRC failed on node at 0x000e879c: Read 0x4f4aff02, calculated 0xb532265a [...]
JFFS2 notice: (26) check_node_data: wrong data CRC in data node at 0x000049b8: read 0xd9b54246, calculated 0xb65c293f.
JFFS2 notice: (26) check_node_data: wrong data CRC in data node at 0x00004178: read 0x885db891, calculated 0x51bd57e5.
JFFS2 notice: (26) check_node_data: wrong data CRC in data node at 0x00003964: read 0xeccb8c27, calculated 0x5118b054.
JFFS2 notice: (26) check_node_data: wrong data CRC in data node at 0x00003130: read 0x793ed716, calculated 0x4a0e8514.
JFFS2 notice: (26) check_node_data: wrong data CRC in data node at 0x000028f4: read 0x5ff8c7dc, calculated 0xb9cab82e.
JFFS2 notice: (26) check_node_data: wrong data CRC in data node at 0x00002130: read 0xb6f34c29, calculated 0xcdd5eb06.
JFFS2 notice: (26) check_node_data: wrong data CRC in data node at 0x00001c80: read 0xcf8c480f, calculated 0x3b4d8f5.
JFFS2 notice: (26) check_node_data: wrong data CRC in data node at 0x00001464: read 0xbe24cbee, calculated 0x4e7b7cfa.
JFFS2 warning: (26) jffs2_do_read_inode_internal: Truncating ino #26 to 727722 bytes failed because it only had 712704 bytes to start with!
JFFS2 warning: (1) jffs2_do_read_inode_internal: Truncating ino #26 to 727722 bytes failed because it only had 712704 bytes to start with!
Kernel panic - not syncing: No init found.  Try passing init= option to kernel. See Linux Documentation/init.txt for guidance.

I think it might have something to do with the BI-swapping issue. The BI-swapping is, as far as I know, not yet implemented in the kernel's NAND driver. So, if I flash the rootfs with Barebox (doing the BI-swap) and then read the rootfs from within the kernel (not doing the BI-swap), I will for sure have problem...

Remarkable : the Linux version I use is a version we downloaded from Freescale's git repositry. In this version, we could select the i.MX27PDK board. However, that board's code is obviously not registering the NAND flash driver... knowing that the i.MX27PDK only contains NAND-flash, this is very weird...

Filip

>-- 
>Pengutronix e.K.                           |                             |
>Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
