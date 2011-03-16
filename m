Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ex10.nebula.fi ([217.149.53.201])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pzrge-0005M7-Bs
	for barebox@lists.infradead.org; Wed, 16 Mar 2011 14:26:57 +0000
Message-ID: <4D80C8AB.4040905@nextfour.com>
Date: Wed, 16 Mar 2011 16:26:51 +0200
From: Teemu Peltola <teemu.peltola@nextfour.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: i.MX25 3-stack - over-current change on port 1 - USB host port not
	working
To: barebox@lists.infradead.org

Hi,

I have Freescale i.MX25 3-stack development board + debug board attached 
to it. I have built barebox-2011.03.0 using 
freescale_mx25_3stack_defconfig with some modifications to support NAND 
booting (see below). I have used buildroot-2011.02 to create 2.6.38 
kernel (CONFIG_MACH_MX25_3DS=y etc.) and rootfs images.

When I boot these images from barebox, dmesg displays the following 
error message constantly and USB host port does not work:

mxc-ehci mxc-ehci.1: GetStatus port:1 status cc001020 102  ACK POWER 
sig=se0 OCC
hub 1-0:1.0: over-current change on port 1
hub 1-0:1.0: enabling power on all ports
hub 1-0:1.0: state 7 ports 1 chg 0000 evt 0002

If I try to use Freescale RedBoot (mx25_3stack_redboot_TO1_1.bin from 
L2.6.31_09.12.00_SDK_images_MX25 package) with the same kernel and 
rootfs, USB works. Is there some initialization that is missing from 
barebox?

Here is my barebox diff to freescale_mx25_3stack_defconfig:

--- a/barebox-2011.03.0/arch/arm/configs/freescale_mx25_3stack_defconfig 
  2011-03-03 16:59:35.000000000 +0200
+++ b/barebox-2011.03.0/arch/arm/configs/freescale_mx25_3stack_defconfig 
   2011-03-14 15:30:01.911346340 +0200
@@ -1,4 +1,5 @@
  CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX_INTERNAL_BOOT=y
  CONFIG_ARCH_IMX25=y
  CONFIG_MACH_FREESCALE_MX25_3STACK=y
  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -16,9 +17,14 @@
  CONFIG_CMD_EXPORT=y
  CONFIG_CMD_PRINTENV=y
  CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
  CONFIG_CMD_MEMINFO=y
  CONFIG_CMD_CRC=y
  CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
  CONFIG_CMD_RESET=y
  CONFIG_CMD_GO=y
  CONFIG_CMD_TIMEOUT=y
@@ -30,5 +36,10 @@
  CONFIG_NET_TFTP=y
  CONFIG_DRIVER_NET_FEC_IMX=y
  # CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_IMX=y
  CONFIG_USB=y
  CONFIG_USB_EHCI=y

BR,

Teemu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
