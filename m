Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pv7YK-0006NO-MG
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 12:22:45 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Thu, 3 Mar 2011 13:22:41 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FC6@SRV-VS06.TELEVIC.COM>
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
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

In the current phase, I can boot the kernel, but it panics when trying to mount the root filesystem.
I downloaded a root filesystem from the server into the dedicated NAND partition : tftp rootfs.jffs2 /dev/nand0.root.bb
This seems to be OK.

However, I have doubts about the bootargs I'm passing to the kernel :

commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock3 rootfstype=jffs2 earlyprintk mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)

Does this look OK ?

These are the last lines of the console output when booting the kernel :

IP-Config: Got DHCP answer from 0.0.0.0, my address is 10.0.49.70
IP-Config: Complete:
     device=eth0, addr=10.0.49.70, mask=255.255.0.0, gw=10.0.127.254,
     host=10.0.49.70, domain=televic.com, nis-domain=(none),
     bootserver=0.0.0.0, rootserver=0.0.0.0, rootpath=
VFS: Unable to mount root fs via NFS, trying floppy.
List of all partitions:
No filesystem could mount root, tried:  jffs2
Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(2,0)

The line " VFS: Unable to mount root fs via NFS, trying floppy." looks incorrect to me. I do not mention NFS in my bootargs, so...
At "List of all partitions:", shouldn't I have a list of the four partitions I mention in the bootargs ?

This may also be useful :

barebox:/ devinfo
devices:
|----imx_serial0
|----cs0
|----ramfs0
|----devfs0
|----mem0 (defaultenv)
|----mem1 (mem)
|----imx_spi1
|----mc137830 (pmic)
|----mem2 (ram0)
|----imx_nand0
|----nand0 (nand0, nand_oob0, self_raw, env_raw, nand0.barebox, nand0.bareboxenv, nand0.kernel, nand0.root) <=======
|----fec_imx0
|----miidev0 (phy0)
|----eth0

drivers:
imx_serial
     ramfs
     devfs
   fec_imx
    miidev
  imx_nand
 cfi_flash
   imx_spi
     imxfb
   mc13783
       mem

(This might as well be a kernel related issue and therefor maybe not fitting in barebox's mailing list - if so, sorry...)


Filip


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
