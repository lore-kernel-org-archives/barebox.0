Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrlUY-0001U2-OB
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 06:45:15 +0000
Received: by vws8 with SMTP id 8so2669055vws.36
	for <barebox@lists.infradead.org>; Thu, 11 Aug 2011 23:45:13 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 12 Aug 2011 06:45:13 +0000
Message-ID: <CAK8HZO+mfyaj9CPUB+nOzppz_+=o5xzpgsDOofV=1jF9rcR2yQ@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
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
Subject: at91sam9263ek, few issues
To: barebox@lists.infradead.org

Hi

The following is the gist of issues seen,  namely

 1. unable to saveenv
 2.  ubiattach issue.

I am using NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung
NAND 256MiB 3,3V 8-bit).

Please help

regards

Nataraj

barebox@Atmel at91sam9263-ek:/  eth0.serverip=192.168.0.110
barebox@Atmel at91sam9263-ek:/ eth0.ipaddr=192.168.0.105

barebox@Atmel at91sam9263-ek:/ saveenv
saving environment
could not open /dev/env0: Read-only file system

barebox@Atmel at91sam9263-ek:/ printenv
locals:
ip=dhcp
kernel_loc=tftp
rootfs_loc=net
rootfs_type=ubifs
rootfsimage=root.ubifs
kernelimage_type=uimage
kernelimage=uImage
nand_device=atmel_nand
nand_parts=256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)
rootfs_mtdblock_nand=3
autoboot_timeout=3
bootargs=console=ttyS0,115200
PS1=\e[1;32mbarebox@\e[1;31m\h:\w\e[0m
globals:
PATH=/env/bin




barebox@Atmel at91sam9263-ek:/ ubiattach dev/nand0.root
UBI: attaching mtd0 to ubi0
UBI: physical eraseblock size:   131072 bytes (128 KiB)
UBI: logical eraseblock size:    126976 bytes
UBI: smallest flash I/O unit:    2048
UBI: VID header offset:          2048 (aligned 2048)
UBI: data offset:                4096
UBI error: ubi_io_read: error -74 while reading 64 bytes from PEB 0:0,
read 64 bytes
UBI error: ubi_io_read: error -74 while reading 64 bytes from PEB
476:0, read 64 bytes
UBI error: ubi_io_read: error -74 while reading 64 bytes from PEB
489:0, read 64 bytes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
