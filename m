Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ud04.udmedia.de ([194.117.254.44] helo=mail.ud04.udmedia.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXE9C-00082m-MZ
 for barebox@lists.infradead.org; Wed, 23 May 2012 16:10:52 +0000
Message-ID: <4FBD05B8.40001@crane-soft.de>
Date: Wed, 23 May 2012 17:43:52 +0200
From: "Peter Kuennemann@Crane-Soft" <pkue@crane-soft.de>
MIME-Version: 1.0
Reply-To: pkue@crane-soft.de
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
Subject: Booting PhyTec PCM043/IMX35  from USB/SD-Card
To: barebox@lists.infradead.org

Hi all.

I am trying to setup my PCM043/IMX35 board to boot from the
USB MMC card but til now I do have have any clue how to manage.
Searching the net, did not provide any hints regard that board.

I'ld like to have barebox to allow me to use the USB/MMC card
as boot device. Is there a chance to boot from SD-Card at all?

-- barebox configuration data --

I have enabled USB support (USB_EHCI/OHCI and  USB_STORAGE ) as well as
CONFIG_UBI=y
CONFIG_DISK=y
CONFIG_DISK_WRITE=y
...
CONFIG_USB=y
CONFIG_USB_EHCI=y
CONFIG_USB_OHCI=y
# CONFIG_USB_ULPI is not set
# CONFIG_USB_TWL4030 is not set
CONFIG_USB_STORAGE=y
# CONFIG_USB_GADGET is not set
# CONFIG_VIDEO is not set
CONFIG_MCI=y
...
CONFIG_MCI_STARTUP=y
CONFIG_MCI_INFO=y
CONFIG_MCI_WRITE=y
CONFIG_MCI_IMX_ESDHC=y
CONFIG_MCI_IMX_ESDHC_PIO=y
Device list in bareBox after boot:

---------

barebox@Phytec phyCORE-i.MX35:/ ls /dev
defaultenv             env0                   imx_iim_bank0
imx_iim_bank1          imx_iim_bank2          imx_iim_bank3
imx_iim_bank4          imx_iim_bank5          imx_iim_bank6
imx_iim_bank7          mem                    nand0
nand0.barebox          nand0.barebox.bb       nand0.bareboxenv
nand0.bareboxenv.bb    nand0.kernel           nand0.kernel.bb
nand0.root             nand0.root.bb          nand_oob0
nor0                   nor0.barebox           nor0.bareboxenv
nor0.kernel            nor0.root              phy0
ram0                   self0                  zero

----------

And the environment:

locals:
machine=pcm043
kernel_loc=nor
rootfs_loc=nor
rootfs_type=jffs2
rootfsimage=root.jffs2
kernelimage_type=uimage
kernelimage=uImage-pcm043
nfsroot=192.168.1.161:/tftpboot
autoboot_timeout=3
bootargs=console=ttymxc0,115200
nor_parts=256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
rootfs_mtdblock_nor=3
nand_parts=256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
rootfs_mtdblock_nand=7
PS1=\e[1;32mbarebox@\e[1;31m\h:\w\e[0m
globals:
barebox_loc=nor
armlinux_architecture=2072
PATH=/env/bin

Any comments will be very much appreciated.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
