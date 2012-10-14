Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVJm-00046L-Ut
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:01:52 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3D5B1FF95AD
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:08:25 +0200 (CEST)
Date: Sun, 14 Oct 2012 22:59:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121014205929.GU13639@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 00/12] add bus device
To: barebox@lists.infradead.org

Hi,

we have now a nice output per bus

barebox@ST SPEARr1340 EVB:/
# devinfo 
devices:
`---- platfrom
     `---- mem0
          `---- 0x00000000-0x3fffffff: /dev/ram0
     `---- smp_twd
     `---- mem1
          `---- 0x00000000-0x0000251f: /dev/defaultenv
     `---- mem2
          `---- 0x00000000-0xfffffffe: /dev/mem
     `---- designware_eth0
          `---- miibus0
          `---- eth0
     `---- fsmc-nand
          `---- nand0
               `---- 0x00000000-0x7fffffff: /dev/nand0
               `---- 0x00000000-0x0000ffff: /dev/xloader
               `---- 0x00010000-0x0004ffff: /dev/self_raw
               `---- 0x00050000-0x0006ffff: /dev/env_raw
               `---- 0x00000000-0x0003ffff: /dev/nand0.xloader
               `---- 0x00040000-0x0007ffff: /dev/nand0.meminit
               `---- 0x00080000-0x0027ffff: /dev/nand0.barebox
               `---- 0x00280000-0x0057ffff: /dev/nand0.kernel
               `---- 0x00580000-0x01b7ffff: /dev/nand0.rootfs
               `---- 0x01b80000-0x07f7ffff: /dev/nand0.userfs
               `---- 0x07f80000-0x07fdffff: /dev/nand0.free
               `---- 0x07fe0000-0x07ffffff: /dev/nand0.bareboxenv
     `---- smi
          `---- smi0
               `---- 0x00000000-0x007fffff: /dev/smi0
     `---- sdhci-spear
          `---- mci0
               `---- 0x00000000-0x1e3dffff: /dev/disk0
               `---- 0x0001da00-0x1e3d1fff: /dev/disk0.0
`---- amba
     `---- uart-pl0110
          `---- cs0
     `---- pl061_gpio0
     `---- pl061_gpio1
     `---- ssp-pl0220
          `---- m25p0
               `---- 0x00000000-0x0000ffff: /dev/m25p0
`---- mdio_bus
`---- usb
`---- spi
`---- i2c
`---- fb
`---- fs
     `---- ramfs0
     `---- devfs0
`---- net
`---- global

drivers:
uart-pl011
   smp_twd
pl061_gpio
     ramfs
     devfs
       fat
Generic PHY
designware_eth
 fsmc-nand
       smi
      m25p
 ssp-pl022
       mci
sdhci-spear
        fb
       mem

The following changes since commit 461e7d7aefb128a63b84687ba7e361473ada91c6:

  mtd-core: add writesize in MEMGETINFO ioctl (2012-10-13 14:30:50 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/bus_device

for you to fetch changes up to 056b5fb309edfb8f16375f84869d3e7993cb9854:

  eth: register device a pure device (2012-10-14 14:04:07 +0800)

----------------------------------------------------------------
add bus device

This patch serie add a pure device for each bus

And set this device to each bus device as a parent if the device
does not have a parent already

This add swith eth_device and mtd to pure device as they have no driver and
does not need to be probed

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (12):
      bus_for_each_device/bus_for_each_driver: add () to allow use &bus
      platform: add bus device
      amba: add bus device
      fs: add bus device
      mdio: add bus device
      i2c: add bus device
      spi: add bus device
      usb: add bus device
      fb: add bus device
      mtd: register device a pure device
      mtd: add parent support
      eth: register device a pure device

 drivers/amba/bus.c                |    8 ++++++++
 drivers/base/platform.c           |   18 ++++++++++++++----
 drivers/i2c/i2c.c                 |   26 +++++++++++++++++++-------
 drivers/mtd/core.c                |    6 +++++-
 drivers/mtd/devices/docg3.c       |    1 +
 drivers/mtd/nand/atmel_nand.c     |    1 +
 drivers/mtd/nand/nand_imx.c       |    2 +-
 drivers/mtd/nand/nand_mxs.c       |    1 +
 drivers/mtd/nand/nand_omap_gpmc.c |    1 +
 drivers/mtd/nand/nand_s3c24xx.c   |    1 +
 drivers/mtd/nand/nomadik_nand.c   |    1 +
 drivers/net/phy/mdio_bus.c        |    6 ++++++
 drivers/spi/spi.c                 |   17 ++++++++++++++---
 drivers/usb/core/usb.c            |   11 +++++++++++
 drivers/video/fb.c                |   17 +++++++++++++----
 fs/fs.c                           |   23 +++++++++++++++--------
 include/driver.h                  |    7 ++++---
 include/fb.h                      |    3 ++-
 include/i2c/i2c.h                 |    5 +++--
 include/linux/mtd/mtd.h           |    2 +-
 include/spi/spi.h                 |    5 +++--
 include/usb/usb.h                 |    1 +
 net/eth.c                         |    2 +-
 23 files changed, 127 insertions(+), 38 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
