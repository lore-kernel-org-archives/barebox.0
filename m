Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUfMq-0007OJ-J3
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 15:10:37 +0000
Received: from mail422.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 425A6FFB5A1
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 16:20:44 +0100 (CET)
Date: Sat, 3 Nov 2012 16:08:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121103150823.GY29599@game.jcrosoft.org>
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
Subject: [PATCH 0/2 v2] add bus device
To: barebox@lists.infradead.org

Hi,

The following changes since commit 37b37cb2bff79f4edbbcaf316149d814e11a358e:

  eth: register device a pure device (2012-11-03 07:48:12 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/bus_device

for you to fetch changes up to 35f8933bf003b5049131487882d8ae57a1a50d3a:

  bus: add bus device (2012-11-03 07:52:49 +0800)

----------------------------------------------------------------
add bus device

This patch serie add a pure device for each bus

And set this device to each bus device as a parent if the device
does not have a parent already

we have now a nice output per bus

barebox@Atmel at91sam9x5-ek:/
devices:
`---- platform
     `---- atmel_usart0
          `---- cs0
     `---- atmel_usart1
          `---- cs1
     `---- mem0
          `---- 0x00000000-0x07ffffff: /dev/ram0
     `---- mem1
          `---- 0x00000000-0x00007fff: /dev/sram0
     `---- mem2
          `---- 0x00000000-0x000037bf: /dev/defaultenv
     `---- mem3
          `---- 0x00000000-0xfffffffe: /dev/mem
     `---- cs2
     `---- w1-gpio
          `---- w1_bus0
               `---- w1-2d-0
                    `---- 0x00000000-0x0000007f: /dev/ds24310
               `---- w1-2d-1
                    `---- 0x00000000-0x0000007f: /dev/ds24311
               `---- w1-23-0
                    `---- 0x00000000-0x000001ff: /dev/ds24330
     `---- at91sam9x5cm
     `---- at91sam9x5ek
     `---- at91sam9x5dm
     `---- atmel_nand0
          `---- nand0
               `---- 0x00000000-0x1fffffff: /dev/nand0
               `---- 0x00000000-0x0003ffff: /dev/at91bootstrap_raw
               `---- 0x00040000-0x0009ffff: /dev/self_raw
               `---- 0x000a0000-0x000bffff: /dev/env_raw
               `---- 0x000c0000-0x000dffff: /dev/env_raw1
               `---- 0x00000000-0x0003ffff: /dev/nand0.at91bootstrap
               `---- 0x00040000-0x0009ffff: /dev/nand0.barebox
               `---- 0x000a0000-0x000bffff: /dev/nand0.bareboxenv
               `---- 0x000c0000-0x000dffff: /dev/nand0.bareboxenv2
               `---- 0x000e0000-0x000fffff: /dev/nand0.oftree
               `---- 0x00100000-0x001fffff: /dev/nand0.free
               `---- 0x00200000-0x007fffff: /dev/nand0.kernel
               `---- 0x00800000-0x07ffffff: /dev/nand0.rootfs
               `---- 0x08000000-0x1fffffff: /dev/nand0.data
     `---- macb0
          `---- miibus0
          `---- eth0
     `---- atmel_spi0
          `---- mtd_dataflash0
                    `---- 0x00000000-0x0041ffff: /dev/dataflash0
     `---- atmel_mci0
          `---- mci0
               `---- 0x00000000-0x1d9bfffff: /dev/disk0
               `---- 0x00100000-0x064fffff: /dev/disk0.0
               `---- 0x06500000-0x1d9bfffff: /dev/disk0.1
     `---- i2c-gpio0
          `---- i2c0
               `---- qt10700
                    `---- cs3
`---- mdio_bus
`---- spi
`---- i2c
`---- w1_bus
`---- fs
     `---- ramfs0
     `---- devfs0
`---- net
`---- global

drivers:
atmel_usart
ramfs
devfs
fat
macb
Generic PHY
atmel_nand
mtd_dataflash
m25p80
atmel_spi
i2c-gpio
mci
atmel_mci
qt1070
w1-gpio
ds2431
ds2433
mem

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      bus_for_each_device/bus_for_each_driver: add () to allow use &bus
      bus: add bus device

 drivers/base/bus.c    |   10 ++++++++++
 drivers/base/driver.c |    5 +++++
 include/driver.h      |    6 ++++--
 3 files changed, 19 insertions(+), 2 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
