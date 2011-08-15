Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qssof-00069G-MB
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 08:46:41 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Qssod-0000bl-45
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 10:46:35 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1Qssod-00019K-1p
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 10:46:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 10:46:25 +0200
Message-Id: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] parent fixups
To: barebox@lists.infradead.org

Hi,

We have a nice devinfo command which can print the devices as a tree.
Let's make more use of it and make spi/network/console devices children
of the corresponding hardware devices.
Also, when a file under /dev/ is associated to a device, print the
start and end with the information.

On a i.MX51 babbage board we change from:

devices:
|----imx_serial0
|----cs0
|----mem0 (ram0)
|----imx_iim0 (imx_iim_bank0, imx_iim_bank1, imx_iim_bank2, imx_iim_bank3, imx_iim_bank4, imx_iim_bank5, imx_iim_bank6, imx_iim_bank7)
|----ramfs0
|----devfs0
|----mem1 (defaultenv)
|----mem2 (mem)
|----fec_imx0
|----miidev0 (phy0)
|----eth0
|----imx-esdhc0
|----mci0
|----disk0
|----imx_spi0
|----mc13892-spi0 (mc13892)

to this:

devices:
`---- imx_serial0
     `---- cs0
`---- mem0
     `---- 0x00000000-0x1fffffff: /dev/ram0
`---- imx_iim0
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank0
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank1
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank2
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank3
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank4
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank5
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank6
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank7
`---- ramfs0
`---- devfs0
`---- mem1
     `---- 0x00000000-0x00001e08: /dev/defaultenv
`---- mem2
     `---- 0x00000000-0xfffffffe: /dev/mem
`---- fec_imx0
     `---- miidev0
          `---- 0x00000000-0x0000003f: /dev/phy0
     `---- eth0
`---- imx-esdhc0
     `---- mci0
          `---- disk0
`---- imx_spi0
     `---- mc13892-spi0
          `---- 0x00000000-0x000000ff: /dev/mc13892


Sascha Hauer (7):
      mci: embed mci_dev into mci_host instead of allocating it seperately
      net: make the ethernet device a child of the hardware device
      net mii: add a parent pointer to miidevs and set it to the hardware device
      console: make console device a child of the hardware device
      mci: parent fixups
      spi: make the spi devices children of the parent bus
      devinfo: beautify output

 common/console.c           |    2 ++
 drivers/base/driver.c      |   27 ++++++++++++++-------------
 drivers/mci/atmel_mci.c    |    1 +
 drivers/mci/imx-esdhc.c    |    1 +
 drivers/mci/imx.c          |    1 +
 drivers/mci/mci-core.c     |    9 +++++----
 drivers/mci/omap_hsmmc.c   |    1 +
 drivers/net/altera_tse.c   |    2 ++
 drivers/net/at91_ether.c   |    1 +
 drivers/net/cs8900.c       |    1 +
 drivers/net/dm9000.c       |    2 ++
 drivers/net/ep93xx.c       |    2 ++
 drivers/net/fec_imx.c      |    2 ++
 drivers/net/fec_mpc5200.c  |    2 ++
 drivers/net/macb.c         |    2 ++
 drivers/net/miidev.c       |    2 ++
 drivers/net/netx_eth.c     |    2 ++
 drivers/net/smc91111.c     |    2 ++
 drivers/net/smc911x.c      |    2 ++
 drivers/net/usb/asix.c     |    1 +
 drivers/net/usb/smsc95xx.c |    1 +
 drivers/net/usb/usbnet.c   |    1 +
 drivers/spi/spi.c          |    1 +
 include/mci.h              |    1 +
 include/miidev.h           |    1 +
 include/net.h              |    1 +
 net/eth.c                  |    4 ++++
 27 files changed, 58 insertions(+), 17 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
