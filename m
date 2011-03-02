Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PujLC-0002Yv-M1
	for barebox@lists.infradead.org; Wed, 02 Mar 2011 10:31:35 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Wed, 2 Mar 2011 11:31:31 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00EFC@SRV-VS06.TELEVIC.COM>
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
Subject: booting linux
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

My barebox porting on i.MX27 comes in a next phase : booting the kernel. 
I'm using a kernel image from some time ago, an image that worked with redboot (formerly installed bootloader of the board).
I loaded the image to nand-flash :
barebox:/ erase /dev/nand0.kernel.bb
barebox:/ tftp zImage /dev/nand0.kernel.bb
error frame: 0xa7b058f8 0x00000882    <===== ???
TFTP from server 10.0.48.80 ('zImage' -> '/dev/nand0.kernel.bb')
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        ######################
barebox:/

Apart from the "error frame" message, the transfer seems to be successful.

Then I do :

barebox:/ bootz /dev/nand0.kernel.bb
loaded zImage from /dev/nand0.kernel.bb with size 1777792
commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock7 rootfstype=jffs2 mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),5M(kernel),-(root)
arch_number: 1802
Uncompressing Linux........................................................................................................................... done, booting the kernel.

The kernel uncompresses but never starts. Any idea why not ? Does barebox expand the kernel to the right place in SDRAM or do I have to specify that in the bootz command ?
I think the kernel is never started at all because I don't see any output at all. In this phase, even having a kernel crash would be great... because at least then I would know the kernel has been running for a while... ;-) 

I guess the image is OK because it uncompresses successfully. Maybe a problem in the bootargs that are passed to the kernel ?
Should I already have a /dev/mtdblock7 device in barebox's /dev ?

Maybe useful information :

barebox:/ printenv
locals:
machine=imx27pdk
ip=dhcp
kernel_loc=nand
rootfs_loc=nand
rootfs_type=jffs2
rootfsimage=root-jffs2
kernelimage_type=zimage
kernelimage=zImage-imx27pdk
nfsroot=:/path/to/nfs/root
autoboot_timeout=3
bootargs=console=ttymxc0,115200
nand_parts=256k(barebox)ro,128k(bareboxenv),5M(kernel),-(root)
rootfs_mtdblock_nand=7
PS1=\e[1;32mbarebox@\e[1;31m\h:\w\e[0m
bootfile=zImage
nameserver=10.0.0.44
domainname=televic.com
globals:
PATH=/env/bin
barebox:/

Filip


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
